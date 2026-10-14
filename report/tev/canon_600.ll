Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/canon_600?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6LibRaw17canon_600_auto_wbEv:bb.a
  %.not38.i.1 = icmp samesign ult i32 %i.im, %i.y
  br i1 %.not38.i.1, label %bb.x, label %_ZN6LibRaw15canon_600_colorEPii.exit.1

bb.x:                                             ; preds = %bb.w
  %spec.store.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.il, i32 -20)
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i.1, i32 %spec.select)
  %i.in = sub nsw i32 %i.ig, %spec.select.i.1
  br label %_ZN6LibRaw15canon_600_colorEPii.exit.1

_ZN6LibRaw15canon_600_colorEPii.exit.1:           ; preds = %bb.x, %bb.w, %bb.v, %bb.o
  %i.io = phi ptr [ %i.id, %bb.x ], [ %i.id, %bb.w ], [ %i.id, %bb.v ], [ %i.hl, %bb.o ]
  %i.ip = phi ptr [ %i.if, %bb.x ], [ %i.if, %bb.w ], [ %i.if, %bb.v ], [ %i.hn, %bb.o ]
  %.033.i171 = phi i32 [ %.033.i168, %bb.x ], [ %.033.i168, %bb.w ], [ %.033.i168, %bb.v ], [ %.033.i172, %bb.o ]
  %.not84166 = phi i1 [ %.not84163, %bb.x ], [ %.not84163, %bb.w ], [ %.not84163, %bb.v ], [ %.not84167, %bb.o ]
  %.sroa.0121.0161 = phi i32 [ %.sroa.0121.0158, %bb.x ], [ %.sroa.0121.0158, %bb.w ], [ %.sroa.0121.0158, %bb.v ], [ %.sroa.0121.0162, %bb.o ]
  %.sroa.6.3156 = phi i32 [ %.sroa.6.3153, %bb.x ], [ %.sroa.6.3153, %bb.w ], [ %.sroa.6.3153, %bb.v ], [ %.sroa.6.3157, %bb.o ]
  %.sroa.15.3 = phi i32 [ %.sroa.15.2, %bb.x ], [ %.sroa.15.2, %bb.w ], [ %.sroa.15.2, %bb.v ], [ %i.hk, %bb.o ]
  %.sroa.11.0 = phi i32 [ %i.in, %bb.x ], [ %i.ie, %bb.w ], [ %i.ie, %bb.v ], [ %i.hm, %bb.o ]
  %.not84.1 = phi i1 [ false, %bb.x ], [ false, %bb.w ], [ true, %bb.v ], [ false, %bb.o ]
  %.033.i.1 = phi i32 [ 1, %bb.x ], [ 2, %bb.w ], [ 0, %bb.v ], [ 2, %bb.o ]
  %i.iq = or i32 %.033.i.1, %.033.i171            ; 2 uses
  %i.ir = icmp samesign ugt i32 %i.iq, 1
  br i1 %i.ir, label %.loopexit93, label %.preheader90.preheader

.preheader90.preheader:                           ; preds = %_ZN6LibRaw15canon_600_colorEPii.exit.1
  br i1 %.not84166, label %.loopexit87, label %.preheader

.preheader:                                       ; preds = %.preheader90.preheader
  %i.is = add nsw i32 %.sroa.0121.0161, 1024
  %i.it = mul nsw i32 %i.is, %i.ew
  %i.iu = ashr i32 %i.it, 10                      ; 2 uses
  store i32 %i.iu, ptr %i.ai, align 4, !tbaa !74
  %i.iv = add nsw i32 %.sroa.6.3156, 1024
  %i.iw = mul nsw i32 %i.iv, %i.fa
  %i.ix = ashr i32 %i.iw, 10                      ; 2 uses
  store i32 %i.ix, ptr %i.ap, align 4, !tbaa !74
  br label %.loopexit87

.loopexit87:                                      ; preds = %.preheader, %.preheader90.preheader
  %i.iy = phi i32 [ %i.ix, %.preheader ], [ %i.fc, %.preheader90.preheader ]
  %i.iz = phi i32 [ %i.iu, %.preheader ], [ %i.ey, %.preheader90.preheader ]
  br i1 %.not84.1, label %.loopexit87.1, label %.preheader.1

.preheader.1:                                     ; preds = %.loopexit87
  %i.ja = add nsw i32 %.sroa.11.0, 1024
  %i.jb = mul nsw i32 %i.ja, %i.fe
  %i.jc = ashr i32 %i.jb, 10                      ; 2 uses
  store i32 %i.jc, ptr %i.ip, align 4, !tbaa !74
  %i.jd = add nsw i32 %.sroa.15.3, 1024
  %i.je = mul nsw i32 %i.jd, %i.fi
  %i.jf = ashr i32 %i.je, 10                      ; 2 uses
  store i32 %i.jf, ptr %i.io, align 4, !tbaa !74
  br label %.loopexit87.1

.loopexit87.1:                                    ; preds = %.preheader.1, %.loopexit87
  %i.jg = phi i32 [ %i.jf, %.preheader.1 ], [ %i.fk, %.loopexit87 ]
  %i.jh = phi i32 [ %i.jc, %.preheader.1 ], [ %i.fg, %.loopexit87 ]
  %i.ji = zext nneg i32 %i.iq to i64              ; 2 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ji ; 3 uses
  %i.jk = load <4 x i32>, ptr %i.jj, align 16, !tbaa !74
  %i.jl = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %i.jm = insertelement <4 x i32> %i.jl, i32 %i.iz, i64 1
  %i.jn = insertelement <4 x i32> %i.jm, i32 %i.fa, i64 2
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.iy, i64 3
  %i.jp = add nsw <4 x i32> %i.jk, %i.jo
  store <4 x i32> %i.jp, ptr %i.jj, align 16, !tbaa !74
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jr = load <4 x i32>, ptr %i.jq, align 16, !tbaa !74
  %i.js = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %i.jt = insertelement <4 x i32> %i.js, i32 %i.jh, i64 1
  %i.ju = insertelement <4 x i32> %i.jt, i32 %i.fi, i64 2
  %i.jv = insertelement <4 x i32> %i.ju, i32 %i.jg, i64 3
  %i.jw = add nsw <4 x i32> %i.jr, %i.jv
  store <4 x i32> %i.jw, ptr %i.jq, align 16, !tbaa !74
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ji ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !74
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !74
  br label %.loopexit93

.loopexit93:                                      ; preds = %.preheader96, %.preheader94.1, %.preheader94.2, %.preheader94.3, %.preheader94.4, %.preheader94.5, %.preheader94.6, %.preheader94.7, %.preheader92.preheader, %.preheader92.1, %.preheader92.2, %.preheader92.3, %.loopexit87.1, %_ZN6LibRaw15canon_600_colorEPii.exit.1
  %i.ka = add nuw nsw i32 %.075106, 2             ; 2 uses
  %i.kb = icmp samesign ult i32 %i.ka, %i.w
  br i1 %i.kb, label %.preheader96, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %.loopexit93
  %i.kc = add nuw nsw i32 %.076107, 4             ; 2 uses
  %i.kd = icmp slt i32 %i.kc, %i.s
  br i1 %i.kd, label %.preheader97, label %._crit_edge108.split.loopexit, !llvm.loop !86

._crit_edge108.split.loopexit:                    ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre136 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  br label %._crit_edge108.split

._crit_edge108.split:                             ; preds = %._crit_edge108.split.loopexit, %.preheader97.lr.ph, %bb.d
  %i.ke = phi i32 [ %.pre136, %._crit_edge108.split.loopexit ], [ 0, %.preheader97.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.kf = phi i32 [ %.pre, %._crit_edge108.split.loopexit ], [ 0, %.preheader97.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.kg = or i32 %i.ke, %i.kf
  %.not = icmp eq i32 %i.kg, 0
  br i1 %.not, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %._crit_edge108.split
  %i.kh = mul nsw i32 %i.kf, 200
  %i.ki = icmp slt i32 %i.kh, %i.ke               ; 8 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 16
  %.val = load i32, ptr %i.c, align 16
  %i.kj = select i1 %i.ki, i32 %.sroa.gep.val, i32 %.val
  %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v = select i1 %i.ki, i64 48, i64 16
  %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v
  %i.kk = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel, align 16, !tbaa !74
  %i.kl = add nsw i32 %i.kk, %i.kj                ; 2 uses
  %.not83 = icmp eq i32 %i.kl, 0
  br i1 %.not83, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.kn = sitofp i32 %i.kl to float
  %i.ko = fdiv float 1.000000e+00, %i.kn
  store float %i.ko, ptr %i.km, align 4, !tbaa !12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sroa.gep.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %.sroa.gep126.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.gep.sroa.gep133.val = load i32, ptr %.sroa.gep.sroa.gep133, align 4
  %.sroa.gep126.sroa.gep134.val = load i32, ptr %.sroa.gep126.sroa.gep134, align 4
  %i.kp = select i1 %i.ki, i32 %.sroa.gep.sroa.gep133.val, i32 %.sroa.gep126.sroa.gep134.val
  %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel.v = select i1 %i.ki, i64 52, i64 20
  %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel.v
  %i.kq = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel, align 4, !tbaa !74
  %i.kr = add nsw i32 %i.kq, %i.kp                ; 2 uses
  %.not83.1 = icmp eq i32 %i.kr, 0
  br i1 %.not83.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ks = sitofp i32 %i.kr to float
  %i.kt = fdiv float 1.000000e+00, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 153272
  store float %i.kt, ptr %i.ku, align 8, !tbaa !12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.gep.sroa.gep130 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.gep126.sroa.gep131 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.gep.sroa.gep130.val = load i32, ptr %.sroa.gep.sroa.gep130, align 8
  %.sroa.gep126.sroa.gep131.val = load i32, ptr %.sroa.gep126.sroa.gep131, align 8
  %i.kv = select i1 %i.ki, i32 %.sroa.gep.sroa.gep130.val, i32 %.sroa.gep126.sroa.gep131.val
  %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel.v = select i1 %i.ki, i64 56, i64 24
  %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel.v
  %i.kw = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel, align 8, !tbaa !74
  %i.kx = add nsw i32 %i.kw, %i.kv                ; 2 uses
  %.not83.2 = icmp eq i32 %i.kx, 0
  br i1 %.not83.2, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ky = sitofp i32 %i.kx to float
  %i.kz = fdiv float 1.000000e+00, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 153276
  store float %i.kz, ptr %i.la, align 4, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.gep.sroa.gep127 = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.gep126.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.gep.sroa.gep127.val = load i32, ptr %.sroa.gep.sroa.gep127, align 4
  %.sroa.gep126.sroa.gep128.val = load i32, ptr %.sroa.gep126.sroa.gep128, align 4
  %i.lb = select i1 %i.ki, i32 %.sroa.gep.sroa.gep127.val, i32 %.sroa.gep126.sroa.gep128.val
  %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel.v = select i1 %i.ki, i64 60, i64 28
  %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel.v
  %i.lc = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel, align 4, !tbaa !74
  %i.ld = add nsw i32 %i.lc, %i.lb                ; 2 uses
  %.not83.3 = icmp eq i32 %i.ld, 0
  br i1 %.not83.3, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.le = sitofp i32 %i.ld to float
  %i.lf = fdiv float 1.000000e+00, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store float %i.lf, ptr %i.lg, align 8, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.af, %._crit_edge108.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw15canon_600_coeffEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) initializes((381660, 381664)) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %i.b = load float, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %1 = load <1 x float>, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 153280
  %2 = load <2 x float>, ptr %i.d, align 8
  %i.e = insertelement <2 x float> %2, float %i.b, i64 1
  %i.f = shufflevector <1 x float> %1, <1 x float> poison, <2 x i32> zeroinitializer
  %i.g = fdiv <2 x float> %i.e, %i.f              ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 1   ; 2 uses
  %i.i = fcmp ogt float %i.h, 1.000000e+00
  %i.j = fpext float %i.h to double               ; 2 uses
  %i.k = fcmp ole double %i.j, 1.280000e+00
  %or.cond22.not27 = and i1 %i.i, %i.k
  %i.l = extractelement <2 x float> %i.g, i64 0
  %i.m = fpext float %i.l to double
  %i.n = fcmp olt double %i.m, 8.789000e-01       ; 2 uses
  %or.cond24 = select i1 %or.cond22.not27, i1 %i.n, i1 false
  %.019 = zext i1 %or.cond24 to i64               ; 2 uses
  %i.o = fcmp ule double %i.j, 1.280000e+00
  %i.p = fcmp ugt <2 x float> %i.g, splat (float 2.000000e+00) ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 1
  %or.cond.not29 = or i1 %i.q, %i.o
  %i.r = extractelement <2 x i1> %i.p, i64 0
  %spec.select = select i1 %i.r, i64 %.019, i64 4
  %.019.mux = select i1 %i.n, i64 3, i64 %spec.select
  %.1 = select i1 %or.cond.not29, i64 %.019, i64 %.019.mux
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 153512
  %i.t = load float, ptr %i.s, align 8, !tbaa !73
  %i.u = fcmp une float %i.t, 0.000000e+00
  %spec.select25 = select i1 %i.u, i64 5, i64 %.1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 381660
  store i32 0, ptr %i.v, align 4, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.x = load i32, ptr %i.w, align 4, !tbaa !83   ; 7 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6LibRaw15canon_600_coeffEvE5table, i64 %spec.select25 ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 153380
  br i1 %i.y, label %.preheader.preheader, label %.split32

.preheader.preheader:                             ; preds = %bb.a
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.x, i32 4)
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 4 uses
  %i.ac = load i16, ptr %i.z, align 8, !tbaa !10
  %i.ad = sitofp i16 %i.ac to float
  %i.ae = fmul nnan float %i.ad, f0x3A800000
  store float %i.ae, ptr %i.aa, align 4, !tbaa !12
  %exitcond.not = icmp eq i32 %i.x, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !10
  %i.ah = sitofp i16 %i.ag to float
  %i.ai = fmul nnan float %i.ah, f0x3A800000
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 153384
  store float %i.ai, ptr %i.aj, align 8, !tbaa !12
  %exitcond.not.1 = icmp eq i32 %i.x, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !10
  %i.am = sitofp i16 %i.al to float
  %i.an = fmul nnan float %i.am, f0x3A800000
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 153388
  store float %i.an, ptr %i.ao, align 4, !tbaa !12
  %exitcond.not.2 = icmp eq i32 %i.x, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !10
  %i.ar = sitofp i16 %i.aq to float
  %i.as = fmul nnan float %i.ar, f0x3A800000
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 153392
  store float %i.as, ptr %i.at, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.b, %.preheader.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 153396 ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.av = icmp ult i32 %i.x, 4
  br i1 %i.av, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %wide.trip.count, 4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.new
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.1.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.3, %bb.e ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !10
  %i.az = sitofp i16 %i.ay to float
  %i.ba = fmul nnan float %i.az, f0x3A800000
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.1
  store float %i.ba, ptr %i.bb, align 4, !tbaa !12
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.next.1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !10
  %i.bf = sitofp i16 %i.be to float
  %i.bg = fmul nnan float %i.bf, f0x3A800000
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.1
  store float %i.bg, ptr %i.bh, align 8, !tbaa !12
  %indvars.iv.next.1.1 = or disjoint i64 %indvars.iv.1, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.next.1.1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !10
  %i.bl = sitofp i16 %i.bk to float
  %i.bm = fmul nnan float %i.bl, f0x3A800000
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.1.1
  store float %i.bm, ptr %i.bn, align 4, !tbaa !12
  %indvars.iv.next.1.2 = or disjoint i64 %indvars.iv.1, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.next.1.2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !10
  %i.br = sitofp i16 %i.bq to float
  %i.bs = fmul nnan float %i.br, f0x3A800000
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.1.2
  store float %i.bs, ptr %i.bt, align 8, !tbaa !12
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.1.unr-lcssa, label %bb.e, !llvm.loop !0

._crit_edge.1.unr-lcssa:                          ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.1.unr-lcssa, %._crit_edge
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.1.3, %._crit_edge.1.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.1.epil.init, %.epil.preheader ], [ %indvars.iv.next.1.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.1.epil
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !10
  %i.bx = sitofp i16 %i.bw to float
  %i.by = fmul nnan float %i.bx, f0x3A800000
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.1.epil
  store float %i.by, ptr %i.bz, align 4, !tbaa !12
  %indvars.iv.next.1.epil = add nuw nsw i64 %indvars.iv.1.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.1, label %bb.f, !llvm.loop !88

._crit_edge.1:                                    ; preds = %bb.f, %._crit_edge.1.unr-lcssa
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 153412 ; 5 uses
  %xtraiter44 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.cb = icmp ult i32 %i.x, 4
  br i1 %i.cb, label %.epil.preheader43, label %._crit_edge.1.new

._crit_edge.1.new:                                ; preds = %._crit_edge.1
  %unroll_iter48 = and i64 %wide.trip.count, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.1.new
  %indvars.iv.2 = phi i64 [ 0, %._crit_edge.1.new ], [ %indvars.iv.next.2.3, %bb.g ] ; 6 uses
  %niter49 = phi i64 [ 0, %._crit_edge.1.new ], [ %niter49.next.3, %bb.g ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !10
  %i.cf = sitofp i16 %i.ce to float
  %i.cg = fmul nnan float %i.cf, f0x3A800000
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.2
  store float %i.cg, ptr %i.ch, align 4, !tbaa !12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.next.2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !10
  %i.cl = sitofp i16 %i.ck to float
  %i.cm = fmul nnan float %i.cl, f0x3A800000
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next.2
  store float %i.cm, ptr %i.cn, align 8, !tbaa !12
  %indvars.iv.next.2.1 = or disjoint i64 %indvars.iv.2, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.next.2.1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !10
  %i.cr = sitofp i16 %i.cq to float
  %i.cs = fmul nnan float %i.cr, f0x3A800000
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next.2.1
  store float %i.cs, ptr %i.ct, align 4, !tbaa !12
  %indvars.iv.next.2.2 = or disjoint i64 %indvars.iv.2, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.next.2.2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !10
  %i.cx = sitofp i16 %i.cw to float
  %i.cy = fmul nnan float %i.cx, f0x3A800000
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next.2.2
  store float %i.cy, ptr %i.cz, align 8, !tbaa !12
  %indvars.iv.next.2.3 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %niter49.next.3 = add i64 %niter49, 4           ; 2 uses
  %niter49.ncmp.3 = icmp eq i64 %niter49.next.3, %unroll_iter48
  br i1 %niter49.ncmp.3, label %.split32.loopexit.unr-lcssa, label %bb.g, !llvm.loop !0

.split32.loopexit.unr-lcssa:                      ; preds = %bb.g
  %lcmp.mod46.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %.split32, label %.epil.preheader43

.epil.preheader43:                                ; preds = %.split32.loopexit.unr-lcssa, %._crit_edge.1
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1 ], [ %indvars.iv.next.2.3, %.split32.loopexit.unr-lcssa ]
end_hunk_0
begin_hunk_1_@_ZN6LibRaw18canon_600_load_rawEv:bb.a

bb.e:                                             ; preds = %bb.d, %bb.e
  %.03235 = phi ptr [ %i.r, %bb.d ], [ %i.cq, %bb.e ] ; 9 uses
  %.033.idx34 = phi i64 [ 0, %bb.d ], [ %.033.add, %bb.e ] ; 3 uses
  %.033.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033.idx34 ; 10 uses
  %i.s = load i8, ptr %.033.ptr, align 2, !tbaa !97
  %i.t = zext i8 %i.s to i16
  %i.u = shl nuw nsw i16 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 1 ; 4 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !97
  %i.x = lshr i8 %i.w, 6
  %i.y = zext nneg i8 %i.x to i16
  %i.z = or disjoint i16 %i.u, %i.y
  store i16 %i.z, ptr %.03235, align 2, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 2
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !97
  %i.ac = zext i8 %i.ab to i16
  %i.ad = shl nuw nsw i16 %i.ac, 2
  %i.ae = load i8, ptr %i.v, align 1, !tbaa !97
  %i.af = lshr i8 %i.ae, 4
  %i.ag = and i8 %i.af, 3
  %i.ah = zext nneg i8 %i.ag to i16
  %i.ai = or disjoint i16 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.03235, i64 2
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !97
  %i.am = zext i8 %i.al to i16
  %i.an = shl nuw nsw i16 %i.am, 2
  %i.ao = load i8, ptr %i.v, align 1, !tbaa !97
  %i.ap = lshr i8 %i.ao, 2
  %i.aq = and i8 %i.ap, 3
  %i.ar = zext nneg i8 %i.aq to i16
  %i.as = or disjoint i16 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.03235, i64 4
  store i16 %i.as, ptr %i.at, align 2, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 4
  %i.av = load i8, ptr %i.au, align 2, !tbaa !97
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw nsw i16 %i.aw, 2
  %i.ay = load i8, ptr %i.v, align 1, !tbaa !97
  %i.az = and i8 %i.ay, 3
  %i.ba = zext nneg i8 %i.az to i16
  %i.bb = or disjoint i16 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.03235, i64 6
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !97
  %i.bf = zext i8 %i.be to i16
  %i.bg = shl nuw nsw i16 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 9 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !97
  %i.bj = and i8 %i.bi, 3
  %i.bk = zext nneg i8 %i.bj to i16
  %i.bl = or disjoint i16 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.03235, i64 8
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 6
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !97
  %i.bp = zext i8 %i.bo to i16
  %i.bq = shl nuw nsw i16 %i.bp, 2
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !97
  %i.bs = lshr i8 %i.br, 2
  %i.bt = and i8 %i.bs, 3
  %i.bu = zext nneg i8 %i.bt to i16
  %i.bv = or disjoint i16 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.03235, i64 10
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 7
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !97
  %i.bz = zext i8 %i.by to i16
  %i.ca = shl nuw nsw i16 %i.bz, 2
  %i.cb = load i8, ptr %i.bh, align 1, !tbaa !97
  %i.cc = lshr i8 %i.cb, 4
  %i.cd = and i8 %i.cc, 3
  %i.ce = zext nneg i8 %i.cd to i16
  %i.cf = or disjoint i16 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.03235, i64 12
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 8
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !97
  %i.cj = zext i8 %i.ci to i16
  %i.ck = shl nuw nsw i16 %i.cj, 2
  %i.cl = load i8, ptr %i.bh, align 1, !tbaa !97
  %i.cm = lshr i8 %i.cl, 6
  %i.cn = zext nneg i8 %i.cm to i16
  %i.co = or disjoint i16 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.03235, i64 14
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !10
  %.033.add = add nuw nsw i64 %.033.idx34, 10
  %i.cq = getelementptr inbounds nuw i8, ptr %.03235, i64 16
  %i.cr = icmp samesign ult i64 %.033.idx34, 1110
  br i1 %i.cr, label %bb.e, label %bb.f, !llvm.loop !90

bb.f:                                             ; preds = %bb.e
  %i.cs = add nsw i32 %.037, 2                    ; 2 uses
  %i.ct = load i16, ptr %i.b, align 4, !tbaa !75
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cs, %i.cu
  %spec.store.select = select i1 %i.cv, i32 1, i32 %i.cs
  %i.cw = add nuw nsw i32 %.03136, 1              ; 2 uses
  %i.cx = icmp samesign ult i32 %i.cw, %i.cu
  br i1 %i.cx, label %bb.b, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #8

declare void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17canon_600_correctEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !75
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 153088
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph20, %._crit_edge
  %.01618 = phi i32 [ 0, %.lr.ph20 ], [ %i.aw, %._crit_edge ] ; 4 uses
  tail call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = load i16, ptr %i.d, align 2, !tbaa !76
  %.not22 = icmp eq i16 %i.i, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.k = load i32, ptr %i.g, align 8, !tbaa !80
  %i.l = shl nuw nsw i32 %.01618, 1
  %i.m = and i32 %i.l, 14
  %i.n = load i32, ptr %i.h, align 8, !tbaa !102
  %i.o = and i32 %.01618, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw17canon_600_correctEvE3mul, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.017 = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.c ] ; 3 uses
  %i.r = load i16, ptr %i.e, align 4, !tbaa !78
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = lshr i32 %.01618, %i.s
  %i.u = load i16, ptr %i.f, align 2, !tbaa !79
  %i.v = zext i16 %i.u to i32
  %i.w = mul nuw nsw i32 %i.t, %i.v
  %i.x = lshr i32 %.017, %i.s
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z
  %i.ab = and i32 %.017, 1                        ; 2 uses
  %i.ac = or disjoint i32 %i.ab, %i.m
  %i.ad = shl nuw nsw i32 %i.ac, 1
  %i.ae = lshr i32 %i.k, %i.ad
  %i.af = and i32 %i.ae, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ag ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !10
  %i.aj = zext i16 %i.ai to i32
  %i.ak = sub i32 %i.aj, %i.n
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 0)
  %i.al = zext nneg i32 %i.ab to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !10
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %spec.store.select, %i.ao
  %i.aq = lshr i32 %i.ap, 9
  %i.ar = trunc i32 %i.aq to i16
  store i16 %i.ar, ptr %i.ah, align 2, !tbaa !10
  %i.as = add nuw nsw i32 %.017, 1                ; 2 uses
  %i.at = load i16, ptr %i.d, align 2, !tbaa !76
  %i.au = zext i16 %i.at to i32
  %i.av = icmp samesign ult i32 %i.as, %i.au
  br i1 %i.av, label %bb.c, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.aw = add nuw nsw i32 %.01618, 1              ; 2 uses
  %i.ax = load i16, ptr %i.b, align 4, !tbaa !75
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp samesign ult i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.b, label %._crit_edge21, !llvm.loop !99

._crit_edge21:                                    ; preds = %._crit_edge, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store <4 x float> <float f0x3B0F6557, float f0x3B21D9FF, float f0x3B05FB37, float f0x3ACCA05E>, ptr %i.ba, align 4, !tbaa !12
  tail call void @_ZN6LibRaw17canon_600_auto_wbEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.be = load float, ptr %i.bb, align 8, !tbaa !12
  %1 = load <1 x float>, ptr %i.bc, align 4
  %2 = load <2 x float>, ptr %i.bd, align 8
  %i.bf = insertelement <2 x float> %2, float %i.be, i64 1
  %i.bg = shufflevector <1 x float> %1, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fdiv <2 x float> %i.bf, %i.bg           ; 3 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, 1.000000e+00
  %i.bk = fpext float %i.bi to double             ; 2 uses
  %i.bl = fcmp ole double %i.bk, 1.280000e+00
  %or.cond22.not27.i = and i1 %i.bj, %i.bl
  %i.bm = extractelement <2 x float> %i.bh, i64 0
  %i.bn = fpext float %i.bm to double
  %i.bo = fcmp olt double %i.bn, 8.789000e-01     ; 2 uses
  %or.cond24.i = select i1 %or.cond22.not27.i, i1 %i.bo, i1 false
  %.019.i = zext i1 %or.cond24.i to i64           ; 2 uses
  %i.bp = fcmp ule double %i.bk, 1.280000e+00
  %i.bq = fcmp ugt <2 x float> %i.bh, splat (float 2.000000e+00) ; 2 uses
  %i.br = extractelement <2 x i1> %i.bq, i64 1
  %or.cond.not29.i = or i1 %i.br, %i.bp
  %i.bs = extractelement <2 x i1> %i.bq, i64 0
  %spec.select.i = select i1 %i.bs, i64 %.019.i, i64 4
  %.019.mux.i = select i1 %i.bo, i64 3, i64 %spec.select.i
  %.1.i = select i1 %or.cond.not29.i, i64 %.019.i, i64 %.019.mux.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 153512
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !73
  %i.bv = fcmp une float %i.bu, 0.000000e+00
  %spec.select25.i = select i1 %i.bv, i64 5, i64 %.1.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 381660
  store i32 0, ptr %i.bw, align 4, !tbaa !82
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !83 ; 7 uses
  %i.bz = icmp sgt i32 %i.by, 0
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6LibRaw15canon_600_coeffEvE5table, i64 %spec.select25.i ; 14 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 153380
  br i1 %i.bz, label %.preheader.preheader.i, label %_ZN6LibRaw15canon_600_coeffEv.exit

.preheader.preheader.i:                           ; preds = %._crit_edge21
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.by, i32 4)
  %wide.trip.count.i = zext nneg i32 %i.cc to i64 ; 4 uses
  %i.cd = load i16, ptr %i.ca, align 8, !tbaa !10
  %i.ce = sitofp i16 %i.cd to float
  %i.cf = fmul nnan float %i.ce, f0x3A800000
  store float %i.cf, ptr %i.cb, align 4, !tbaa !12
  %exitcond.not.i = icmp eq i32 %i.by, 1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !10
  %i.ci = sitofp i16 %i.ch to float
  %i.cj = fmul nnan float %i.ci, f0x3A800000
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 153384
  store float %i.cj, ptr %i.ck, align 8, !tbaa !12
  %exitcond.not.i.1 = icmp eq i32 %i.by, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cm = load i16, ptr %i.cl, align 4, !tbaa !10
  %i.cn = sitofp i16 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x3A800000
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 153388
  store float %i.co, ptr %i.cp, align 4, !tbaa !12
  %exitcond.not.i.2 = icmp eq i32 %i.by, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !10
  %i.cs = sitofp i16 %i.cr to float
  %i.ct = fmul nnan float %i.cs, f0x3A800000
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 153392
  store float %i.ct, ptr %i.cu, align 8, !tbaa !12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e, %bb.d, %.preheader.preheader.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 153396 ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cw = icmp ult i32 %i.by, 4
  br i1 %i.cw, label %.epil.preheader, label %._crit_edge.i.new

._crit_edge.i.new:                                ; preds = %._crit_edge.i
  %unroll_iter = and i64 %wide.trip.count.i, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.i.new
  %indvars.iv.1.i = phi i64 [ 0, %._crit_edge.i.new ], [ %indvars.iv.next.1.i.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %._crit_edge.i.new ], [ %niter.next.3, %bb.g ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.1.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !10
  %i.da = sitofp i16 %i.cz to float
  %i.db = fmul nnan float %i.da, f0x3A800000
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.1.i
  store float %i.db, ptr %i.dc, align 4, !tbaa !12
  %indvars.iv.next.1.i = or disjoint i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.next.1.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i16, ptr %i.de, align 2, !tbaa !10
  %i.dg = sitofp i16 %i.df to float
  %i.dh = fmul nnan float %i.dg, f0x3A800000
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.1.i
  store float %i.dh, ptr %i.di, align 8, !tbaa !12
  %indvars.iv.next.1.i.1 = or disjoint i64 %indvars.iv.1.i, 2 ; 2 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.next.1.i.1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i16, ptr %i.dk, align 4, !tbaa !10
  %i.dm = sitofp i16 %i.dl to float
  %i.dn = fmul nnan float %i.dm, f0x3A800000
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.1.i.1
  store float %i.dn, ptr %i.do, align 4, !tbaa !12
  %indvars.iv.next.1.i.2 = or disjoint i64 %indvars.iv.1.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.next.1.i.2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !10
  %i.ds = sitofp i16 %i.dr to float
  %i.dt = fmul nnan float %i.ds, f0x3A800000
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.1.i.2
  store float %i.dt, ptr %i.du, align 8, !tbaa !12
  %indvars.iv.next.1.i.3 = add nuw nsw i64 %indvars.iv.1.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.1.i.unr-lcssa, label %bb.g, !llvm.loop !0

._crit_edge.1.i.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.1.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.1.i.unr-lcssa, %._crit_edge.i
  %indvars.iv.1.i.epil.init = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next.1.i.3, %._crit_edge.1.i.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.1.i.epil = phi i64 [ %indvars.iv.1.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.1.i.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.1.i.epil
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !10
  %i.dy = sitofp i16 %i.dx to float
  %i.dz = fmul nnan float %i.dy, f0x3A800000
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.1.i.epil
  store float %i.dz, ptr %i.ea, align 4, !tbaa !12
  %indvars.iv.next.1.i.epil = add nuw nsw i64 %indvars.iv.1.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.1.i, label %bb.h, !llvm.loop !100

._crit_edge.1.i:                                  ; preds = %bb.h, %._crit_edge.1.i.unr-lcssa
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 153412 ; 5 uses
  %xtraiter26 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.ec = icmp ult i32 %i.by, 4
  br i1 %i.ec, label %.epil.preheader25, label %._crit_edge.1.i.new

._crit_edge.1.i.new:                              ; preds = %._crit_edge.1.i
  %unroll_iter30 = and i64 %wide.trip.count.i, 4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge.1.i.new
  %indvars.iv.2.i = phi i64 [ 0, %._crit_edge.1.i.new ], [ %indvars.iv.next.2.i.3, %bb.i ] ; 6 uses
  %niter31 = phi i64 [ 0, %._crit_edge.1.i.new ], [ %niter31.next.3, %bb.i ]
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.2.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i16, ptr %i.ee, align 8, !tbaa !10
  %i.eg = sitofp i16 %i.ef to float
  %i.eh = fmul nnan float %i.eg, f0x3A800000
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.2.i
  store float %i.eh, ptr %i.ei, align 4, !tbaa !12
  %indvars.iv.next.2.i = or disjoint i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.next.2.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !10
  %i.em = sitofp i16 %i.el to float
  %i.en = fmul nnan float %i.em, f0x3A800000
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.2.i
  store float %i.en, ptr %i.eo, align 8, !tbaa !12
  %indvars.iv.next.2.i.1 = or disjoint i64 %indvars.iv.2.i, 2 ; 2 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.next.2.i.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i16, ptr %i.eq, align 4, !tbaa !10
  %i.es = sitofp i16 %i.er to float
  %i.et = fmul nnan float %i.es, f0x3A800000
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.2.i.1
  store float %i.et, ptr %i.eu, align 4, !tbaa !12
  %indvars.iv.next.2.i.2 = or disjoint i64 %indvars.iv.2.i, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.next.2.i.2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !10
  %i.ey = sitofp i16 %i.ex to float
  %i.ez = fmul nnan float %i.ey, f0x3A800000
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.2.i.2
  store float %i.ez, ptr %i.fa, align 8, !tbaa !12
  %indvars.iv.next.2.i.3 = add nuw nsw i64 %indvars.iv.2.i, 4 ; 2 uses
  %niter31.next.3 = add i64 %niter31, 4           ; 2 uses
  %niter31.ncmp.3 = icmp eq i64 %niter31.next.3, %unroll_iter30
  br i1 %niter31.ncmp.3, label %_ZN6LibRaw15canon_600_coeffEv.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !0

_ZN6LibRaw15canon_600_coeffEv.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %_ZN6LibRaw15canon_600_coeffEv.exit, label %.epil.preheader25

.epil.preheader25:                                ; preds = %_ZN6LibRaw15canon_600_coeffEv.exit.loopexit.unr-lcssa, %._crit_edge.1.i
  %indvars.iv.2.i.epil.init = phi i64 [ 0, %._crit_edge.1.i ], [ %indvars.iv.next.2.i.3, %_ZN6LibRaw15canon_600_coeffEv.exit.loopexit.unr-lcssa ]
end_hunk_1
