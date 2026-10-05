Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOAnimation?download=true
inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver20UpdateAnimRangeSetupEv:bb.a
  %i.ce = zext i32 %i.bx to i64                   ; 2 uses
  %i.cf = mul i64 %i.s, %i.ce                     ; 2 uses
  %i.cg = add i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, %i.cd
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  call void @_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.cf)
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ci = icmp ult i64 %i.cg, %i.cd
  br i1 %i.ci, label %bb.u, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.cg ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, %i.cj
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.cj, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit: ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ck = phi ptr [ %.pre, %bb.s ], [ %i.bz, %bb.t ], [ %i.bz, %bb.u ], [ %i.bz, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.cl = getelementptr inbounds [40 x i8], ptr %i.ck, i64 %.058 ; 3 uses
  %.not138 = icmp eq i32 %i.bx, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit
  %i.cm = icmp sgt i64 %i.r, 40
  %i.cn = icmp eq i64 %i.r, 40
  %i.co = icmp samesign ult i64 %i.r, 81
  br label %bb.v

._crit_edge:                                      ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit
  %i.cp = xor i64 %i.s, -1                        ; 2 uses
  %i.cq = add i32 %i.bx, 1
  %i.cr = uitofp i32 %i.cq to double
  %i.cs = fmul double %i.n, %i.cr                 ; 3 uses
  %i.ct = fcmp ugt double %i.n, %i.cs
  br i1 %i.ct, label %.loopexit, label %.lr.ph131

.lr.ph131:                                        ; preds = %._crit_edge
  %i.cu = load ptr, ptr %i.h, align 8
  %i.cv = getelementptr inbounds [40 x i8], ptr %i.cu, i64 %i.cp
  %i.cw = fcmp oeq double %i.n, %i.cs
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ]
  %.059122 = phi i32 [ 0, %.lr.ph ], [ %i.cx, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cx = add nuw i32 %.059122, 1
  %i.cy = mul i64 %i.s, %indvars.iv.next
  %i.cz = getelementptr inbounds [40 x i8], ptr %i.cl, i64 %i.cy ; 4 uses
  br i1 %i.cm, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  br i1 %i.cn, label %bb.x, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cz, ptr noundef nonnull align 8 dereferenceable(36) %i.cl, i64 36, i1 false)
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64: ; preds = %bb.v
  %indvars145 = trunc i32 %.059122 to i1
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %i.cl, i64 %i.r, i1 false)
  %i.da = load i32, ptr %i.y, align 8
  %i.db = icmp ne i32 %i.da, 3
  %or.cond.not = select i1 %i.db, i1 true, i1 %indvars145
  %or.cond.not140 = or i1 %i.co, %or.cond.not
  br i1 %or.cond.not140, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.r
  %.sroa.0.08.i.i = getelementptr i8, ptr %i.dc, i64 -80
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %i.cz, %.lr.ph.i.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.09.i.i, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.010.i.i, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 40 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -40 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %.sroa.0.0.i.i
  br i1 %i.de, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, !llvm.loop !14

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.x, %bb.w, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ce
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !15

bb.y:                                             ; preds = %.lr.ph131, %._crit_edge126
  %.0129 = phi i32 [ 1, %.lr.ph131 ], [ %i.dt, %._crit_edge126 ] ; 2 uses
  %.057128 = phi double [ %i.n, %.lr.ph131 ], [ %i.ds, %._crit_edge126 ] ; 2 uses
  %.sroa.074.0127 = phi ptr [ %i.cv, %.lr.ph131 ], [ %.sroa.074.1.lcssa, %._crit_edge126 ] ; 4 uses
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = load ptr, ptr %i.f, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds [40 x i8], ptr %.sroa.074.0127, i64 %i.cp
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0.0 = phi ptr [ %i.df, %bb.z ], [ %i.dg, %bb.aa ] ; 2 uses
  %i.dh = icmp ult ptr %.sroa.0.0, %.sroa.074.0127
  br i1 %i.dh, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %bb.ab
  %i.di = uitofp i32 %.0129 to float
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph125, %bb.ae
  %.sroa.074.1123 = phi ptr [ %.sroa.074.0127, %.lr.ph125 ], [ %i.dq, %bb.ae ] ; 4 uses
  %i.dj = load double, ptr %.sroa.074.1123, align 8
  %i.dk = fsub double %i.dj, %.057128
  store double %i.dk, ptr %.sroa.074.1123, align 8
  %i.dl = load i32, ptr %i.y, align 8
  %i.dm = icmp eq i32 %i.dl, 4
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.074.1123, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 8
  %i.dp = call float @llvm.fmuladd.f32(float %i.di, float %i.x, float %i.do)
  store float %i.dp, ptr %i.dn, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dq = getelementptr inbounds i8, ptr %.sroa.074.1123, i64 -40 ; 3 uses
  %i.dr = icmp ult ptr %.sroa.0.0, %i.dq
  br i1 %i.dr, label %bb.ac, label %._crit_edge126, !llvm.loop !16

._crit_edge126:                                   ; preds = %bb.ae, %bb.ab
  %.sroa.074.1.lcssa = phi ptr [ %.sroa.074.0127, %bb.ab ], [ %i.dq, %bb.ae ]
  %i.ds = fadd double %i.n, %.057128              ; 2 uses
  %i.dt = add i32 %.0129, 1
  %i.du = fcmp ugt double %i.ds, %i.cs
  br i1 %i.du, label %.loopexit, label %bb.y, !llvm.loop !17

.loopexit:                                        ; preds = %._crit_edge126, %._crit_edge, %bb.d, %bb.c, %bb.b
  %.sroa.084.0 = load ptr, ptr %.sroa.084.0134, align 8 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.not = icmp eq ptr %.sroa.084.0, %i.dv
  br i1 %.not, label %._crit_edge137, label %bb.b, !llvm.loop !18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15ExtractBindPoseER12aiMatrix4x4tIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 1.000000e+00, ptr %.sroa.5192.0..sroa_idx, align 4
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6193.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8194.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0182.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load float, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.5183.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.o, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load float, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.8184.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.w, null
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load float, ptr %i.z, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0188.0 = phi float [ 0.000000e+00, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not14 = icmp eq ptr %i.ac, null
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load float, ptr %i.af, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.5189.0 = phi float [ 0.000000e+00, %bb.k ], [ %i.ag, %bb.l ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not15 = icmp eq ptr %i.ai, null
  br i1 %.not15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.8190.0 = phi float [ 0.000000e+00, %bb.m ], [ %i.am, %bb.n ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not16 = icmp eq ptr %i.ao, null
  br i1 %.not16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load float, ptr %i.ar, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0185.0 = phi float [ 1.000000e+00, %bb.o ], [ %i.as, %bb.p ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not17 = icmp eq ptr %i.au, null
  br i1 %.not17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.ax, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.5186.0 = phi float [ 1.000000e+00, %bb.q ], [ %i.ay, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not18 = icmp eq ptr %i.ba, null
  br i1 %.not18, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.8187.0 = phi float [ 1.000000e+00, %bb.s ], [ %i.be, %bb.t ] ; 2 uses
  %i.bf = tail call noundef float @cosf(float noundef %.sroa.8190.0) #16 ; 2 uses
  %i.bg = tail call noundef float @sinf(float noundef %.sroa.8190.0) #16 ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = tail call noundef float @cosf(float noundef %.sroa.5189.0) #16 ; 8 uses
  %i.bj = tail call noundef float @sinf(float noundef %.sroa.5189.0) #16 ; 6 uses
  %i.bk = fneg float %i.bj                        ; 3 uses
  %i.bl = tail call noundef float @cosf(float noundef %.sroa.0188.0) #16 ; 4 uses
  %i.bm = tail call noundef float @sinf(float noundef %.sroa.0188.0) #16 ; 4 uses
  %i.bn = fneg float %i.bm                        ; 2 uses
  %i.bo = fadd float %i.bl, 0.000000e+00
  %i.bp = fadd float %i.bm, 0.000000e+00
  %i.bq = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %.sroa.0182.0, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bl, i64 2
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.bo, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.bp, i64 2
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> zeroinitializer, <4 x float> %i.bv) ; 3 uses
  %i.bx = insertelement <4 x float> poison, float %.sroa.0182.0, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.bn, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %.sroa.5183.0, i64 3
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cb = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 2, i32 3, i32 7>
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> zeroinitializer, <4 x float> %i.cb) ; 5 uses
  %2 = tail call float @llvm.fmuladd.f32(float %i.bm, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %3 = tail call float @llvm.fmuladd.f32(float %.sroa.8184.0, float 0.000000e+00, float 0.000000e+00) ; 3 uses
  %i.cd = extractelement <4 x float> %i.bw, i64 1 ; 3 uses
  %i.ce = fmul float %i.cd, 0.000000e+00          ; 2 uses
  %i.cf = extractelement <4 x float> %i.cc, i64 0 ; 4 uses
  %4 = fadd float %i.ce, %i.cf
  %5 = extractelement <4 x float> %i.cc, i64 1    ; 4 uses
  %6 = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %4)
  %7 = fmul float %i.cd, %i.bi
  %8 = tail call float @llvm.fmuladd.f32(float %i.cf, float 0.000000e+00, float %7)
  %9 = tail call float @llvm.fmuladd.f32(float %i.bj, float %5, float %8)
  %10 = fmul float %i.cd, %i.bk
  %11 = tail call float @llvm.fmuladd.f32(float %i.cf, float 0.000000e+00, float %10)
  %12 = tail call float @llvm.fmuladd.f32(float %i.bi, float %5, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %i.cf, float 0.000000e+00, float %i.ce)
  %14 = extractelement <4 x float> %i.cc, i64 3   ; 3 uses
  %15 = fmul float %14, 0.000000e+00              ; 2 uses
  %16 = fmul float %14, %i.bi
  %17 = fmul float %14, %i.bk
  %i.cg = fmul float %3, 0.000000e+00             ; 2 uses
  %18 = fmul float %3, %i.bi
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %2) ; 2 uses
  %19 = fadd float %i.bl, %2
  %20 = shufflevector <4 x float> %i.cc, <4 x float> %i.bw, <4 x i32> <i32 poison, i32 poison, i32 2, i32 7>
  %i.ci = insertelement <4 x float> %20, float %i.ch, i64 0
  %21 = insertelement <4 x float> %i.ci, float %19, i64 1
  %i.cj = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.bm, i64 3
  %22 = fsub <4 x float> %21, %i.cj
  %23 = insertelement <4 x float> poison, float %.sroa.5183.0, i64 0
  %24 = insertelement <4 x float> %23, float %.sroa.8184.0, i64 1
  %25 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> zeroinitializer, <4 x float> %22) ; 8 uses
  %27 = extractelement <4 x float> %26, i64 2     ; 2 uses
  %28 = extractelement <4 x float> %26, i64 0     ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %16)
  %29 = tail call float @llvm.fmuladd.f32(float %i.bj, float %28, float %i.ck)
  %30 = tail call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %17)
  %i.cl = extractelement <4 x float> %26, i64 3   ; 2 uses
  %31 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bi, i64 0
  %32 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.bj, i64 3
  %33 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.cm = fmul float %3, %i.bk
  %34 = tail call float @llvm.fmuladd.f32(float %i.cl, float 0.000000e+00, float %i.cm)
  %35 = tail call float @llvm.fmuladd.f32(float %i.cl, float 0.000000e+00, float %i.cg)
  %36 = fmul float %i.bi, 0.000000e+00
  %37 = fmul float %i.bj, -0.000000e+00
  %38 = extractelement <4 x float> %26, i64 1
  %39 = shufflevector <4 x float> %26, <4 x float> %i.cc, <4 x i32> <i32 1, i32 poison, i32 6, i32 6>
  %40 = insertelement <4 x float> %39, float %i.ch, i64 1
  %41 = fadd <4 x float> %40, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 4 uses
  %42 = tail call float @llvm.fmuladd.f32(float %i.bi, float %38, float %34)
  %i.cn = insertelement <4 x float> poison, float %35, i64 0
  %43 = shufflevector <4 x float> %i.cn, <4 x float> %41, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.co = insertelement <4 x float> %43, float %36, i64 2
  %44 = insertelement <4 x float> %i.co, float %37, i64 3
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> zeroinitializer, <4 x float> %44) ; 3 uses
  %46 = extractelement <4 x float> %41, i64 1
  %i.cp = insertelement <3 x float> <float 0.000000e+00, float poison, float poison>, float %i.bg, i64 1
  %47 = insertelement <3 x float> %i.cp, float %i.bf, i64 2 ; 4 uses
  %48 = insertelement <3 x float> <float 0.000000e+00, float poison, float poison>, float %i.bf, i64 1
  %49 = insertelement <3 x float> %48, float %i.bh, i64 2 ; 4 uses
  %50 = shufflevector <4 x float> %41, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 poison>
  %51 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.bj, i64 0
  %52 = insertelement <4 x float> %51, float %i.bi, i64 1
  %53 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %15, i64 0
  %54 = insertelement <4 x float> %53, float %i.cg, i64 1
  %55 = shufflevector <4 x float> %26, <4 x float> %45, <4 x i32> <i32 2, i32 3, i32 5, i32 poison>
  %56 = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %.sroa.5186.0, i64 1 ; 3 uses
  %i.cq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.0185.0, i64 0 ; 3 uses
  %i.cr = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.8187.0, i64 2 ; 3 uses
  %.sroa.15100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.27104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.39108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %57 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.5186.0, i64 1
  %58 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.0185.0, i64 0
  %59 = fadd float %.sroa.0182.0, 0.000000e+00    ; 4 uses
  %60 = fadd float %.sroa.5183.0, 0.000000e+00    ; 4 uses
  %61 = fadd float %.sroa.8184.0, 0.000000e+00    ; 4 uses
  %62 = tail call float @llvm.fmuladd.f32(float %59, float 0.000000e+00, float %6)
  %63 = tail call float @llvm.fmuladd.f32(float %59, float 0.000000e+00, float %9)
  %i.cs = tail call float @llvm.fmuladd.f32(float %59, float 0.000000e+00, float %12) ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %13)
  %64 = tail call float @llvm.fmuladd.f32(float %60, float 0.000000e+00, float %29)
  %65 = insertelement <4 x float> %33, float %60, i64 0
  %66 = insertelement <4 x float> %65, float %61, i64 1
  %67 = tail call float @llvm.fmuladd.f32(float %61, float 0.000000e+00, float %42) ; 2 uses
  %68 = insertelement <3 x float> poison, float %63, i64 0
  %69 = shufflevector <3 x float> %68, <3 x float> poison, <3 x i32> zeroinitializer
  %70 = fmul <3 x float> %47, %69
  %71 = insertelement <3 x float> poison, float %62, i64 0
  %72 = shufflevector <3 x float> %71, <3 x float> poison, <3 x i32> zeroinitializer
  %73 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %49, <3 x float> %72, <3 x float> %70) ; 2 uses
  %74 = insertelement <3 x float> poison, float %i.cs, i64 0
  %75 = shufflevector <3 x float> %74, <3 x float> poison, <3 x i32> zeroinitializer
  %76 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %75, <3 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <3 x float> %73)
  %77 = insertelement <4 x float> %50, float %i.cs, i64 3
  %78 = shufflevector <3 x float> %73, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %79 = shufflevector <4 x float> %45, <4 x float> %78, <4 x i32> <i32 2, i32 3, i32 poison, i32 4>
  %80 = insertelement <4 x float> %79, float 0.000000e+00, i64 2
  %81 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> %52, <4 x float> %80) ; 4 uses
  %82 = shufflevector <4 x float> %55, <4 x float> %81, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %83 = fadd <4 x float> %54, %82                 ; 4 uses
  %84 = insertelement <4 x float> %83, float %30, i64 0
  %85 = insertelement <4 x float> %84, float %15, i64 2
  %86 = insertelement <4 x float> %85, float %18, i64 3
  %87 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> %26, <4 x float> %86)
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %66, <4 x float> %87) ; 5 uses
  %i.cv = extractelement <4 x float> %81, i64 1
  %i.cw = fadd float %i.cv, 0.000000e+00          ; 2 uses
  %i.cx = extractelement <4 x float> %81, i64 2
  %i.cy = tail call float @llvm.fmuladd.f32(float %46, float 0.000000e+00, float %i.cx)
  %88 = fadd float %i.cy, 1.000000e+00            ; 2 uses
  %89 = shufflevector <4 x float> %83, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %90 = fmul <3 x float> %47, %89
  %91 = shufflevector <4 x float> %83, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %92 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %49, <3 x float> %91, <3 x float> %90) ; 2 uses
  %93 = extractelement <3 x float> %92, i64 0
  %94 = tail call float @llvm.fmuladd.f32(float %i.cw, float 0.000000e+00, float %93)
  %95 = insertelement <4 x float> poison, float %59, i64 0
  %96 = insertelement <4 x float> %95, float %60, i64 1
  %97 = insertelement <4 x float> %96, float %61, i64 2
  %98 = insertelement <4 x float> %97, float %88, i64 3
  %99 = shufflevector <4 x float> %i.cu, <4 x float> %45, <4 x i32> <i32 poison, i32 2, i32 4, i32 poison>
  %100 = insertelement <4 x float> %99, float %i.ct, i64 0
  %101 = insertelement <4 x float> %100, float %94, i64 3
  %102 = fadd <4 x float> %98, %101               ; 6 uses
  %103 = shufflevector <4 x float> %102, <4 x float> poison, <3 x i32> zeroinitializer
  %104 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %103, <3 x float> zeroinitializer, <3 x float> %76) ; 3 uses
  %105 = extractelement <4 x float> %83, i64 0
  %106 = tail call float @llvm.fmuladd.f32(float %28, float 0.000000e+00, float %105)
  %107 = tail call float @llvm.fmuladd.f32(float %60, float 0.000000e+00, float %106)
  %108 = extractelement <4 x float> %i.cu, i64 3
  %109 = tail call float @llvm.fmuladd.f32(float %61, float 0.000000e+00, float %108)
  %i.cz = shufflevector <3 x float> %104, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.da = fmul <4 x float> %56, %i.cz
  %i.db = shufflevector <3 x float> %104, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.db, <4 x float> %i.da)
  %i.dd = shufflevector <3 x float> %104, <3 x float> poison, <4 x i32> zeroinitializer
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.dd, <4 x float> %i.dc)
  %i.df = insertelement <3 x float> poison, float %64, i64 0
  %i.dg = shufflevector <3 x float> %i.df, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dh = fmul <3 x float> %47, %i.dg
  %i.di = insertelement <3 x float> poison, float %107, i64 0
  %i.dj = shufflevector <3 x float> %i.di, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dk = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %49, <3 x float> %i.dj, <3 x float> %i.dh) ; 2 uses
  %110 = extractelement <3 x float> %i.dk, i64 0
  %111 = extractelement <4 x float> %i.cu, i64 0
  %112 = tail call float @llvm.fmuladd.f32(float %111, float 0.000000e+00, float %110)
  %i.dl = insertelement <3 x float> poison, float %109, i64 0
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <3 x i32> zeroinitializer
  %113 = fmul <3 x float> %47, %i.dm
  %114 = shufflevector <4 x float> %i.cu, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %49, <3 x float> %114, <3 x float> %113) ; 2 uses
  %i.do = extractelement <3 x float> %i.dn, i64 0
  %115 = tail call float @llvm.fmuladd.f32(float %67, float 0.000000e+00, float %i.do)
  %116 = insertelement <3 x float> poison, float %i.cw, i64 0
  %117 = shufflevector <3 x float> %116, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %117, <3 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <3 x float> %92)
  %118 = insertelement <3 x float> poison, float %88, i64 0
  %119 = shufflevector <3 x float> %118, <3 x float> poison, <3 x i32> zeroinitializer
  %120 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %119, <3 x float> zeroinitializer, <3 x float> %i.dp) ; 5 uses
  %121 = shufflevector <3 x float> %120, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %122 = fmul <2 x float> %57, %121               ; 2 uses
  %i.dq = extractelement <2 x float> %122, i64 0
  %123 = extractelement <3 x float> %120, i64 1
  %124 = tail call float @llvm.fmuladd.f32(float %123, float 0.000000e+00, float %i.dq) ; 2 uses
  %125 = extractelement <3 x float> %120, i64 0   ; 2 uses
  %126 = tail call float @llvm.fmuladd.f32(float %125, float 0.000000e+00, float %124)
  %127 = shufflevector <4 x float> %81, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.dr = insertelement <4 x float> %127, float %112, i64 1
  %i.ds = insertelement <4 x float> %i.dr, float %115, i64 2
  %128 = insertelement <4 x float> %i.ds, float %126, i64 3
  %i.dt = fadd <4 x float> %102, %128             ; 4 uses
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.de)
  store <4 x float> %i.dv, ptr %1, align 4
  %129 = shufflevector <4 x float> %i.cu, <4 x float> poison, <3 x i32> zeroinitializer
  %i.dw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %129, <3 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <3 x float> %i.dk)
  %i.dx = shufflevector <4 x float> %102, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dy = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dx, <3 x float> zeroinitializer, <3 x float> %i.dw) ; 3 uses
  %i.dz = shufflevector <3 x float> %i.dy, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ea = fmul <4 x float> %56, %i.dz
  %i.eb = shufflevector <3 x float> %i.dy, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.eb, <4 x float> %i.ea)
  %i.ed = shufflevector <3 x float> %i.dy, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.ed, <4 x float> %i.ec)
  %i.ef = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ee)
  store <4 x float> %i.eg, ptr %.sroa.15100.0..sroa_idx, align 4
  %130 = insertelement <3 x float> poison, float %67, i64 0
  %i.eh = shufflevector <3 x float> %130, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ei = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eh, <3 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <3 x float> %i.dn)
  %i.ej = shufflevector <4 x float> %102, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.ek = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ej, <3 x float> zeroinitializer, <3 x float> %i.ei) ; 3 uses
  %i.el = shufflevector <3 x float> %i.ek, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.em = fmul <4 x float> %56, %i.el
  %i.en = shufflevector <3 x float> %i.ek, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.en, <4 x float> %i.em)
  %i.ep = shufflevector <3 x float> %i.ek, <3 x float> poison, <4 x i32> zeroinitializer
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.ep, <4 x float> %i.eo)
  %i.er = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.eq)
  store <4 x float> %i.es, ptr %.sroa.27104.0..sroa_idx, align 4
  %i.et = shufflevector <3 x float> %120, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %i.et, <2 x float> %122)
  %i.ev = shufflevector <3 x float> %120, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> zeroinitializer, <2 x float> %i.eu)
  %i.ex = shufflevector <4 x float> %102, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> zeroinitializer, <2 x float> %i.ew)
  %i.ez = tail call float @llvm.fmuladd.f32(float %.sroa.8187.0, float %125, float %124)
  %i.fa = extractelement <4 x float> %102, i64 3
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.fa, float 0.000000e+00, float %i.ez)
  store <2 x float> %i.ey, ptr %.sroa.39108.0..sroa_idx, align 4
  %.sroa.45110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.fb, ptr %.sroa.45110.0..sroa_idx, align 4
  %i.fc = extractelement <4 x float> %i.dt, i64 3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.sink = phi float [ %i.fc, %bb.u ], [ 1.000000e+00, %bb.b ]
  %.sroa.48111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %.sink, ptr %.sroa.48111.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15DoInterpolationEN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEEPNS0_8EnvelopeEdRf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 40
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load float, ptr %i.i, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, %i.d
  br i1 %i.k, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %bb.i [
    i32 5, label %bb.e
    i32 0, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.o = load i32, ptr %i.n, align 4
  %cond.i = icmp eq i32 %i.o, 0
  br i1 %cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load double, ptr %i.r, align 8
  %i.t = load double, ptr %1, align 8             ; 2 uses
  %i.u = fsub double %i.s, %i.t                   ; 2 uses
  %i.v = fcmp ogt double %i.u, 0.000000e+00
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load float, ptr %i.w, align 8            ; 3 uses
  br i1 %i.v, label %bb.h, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load float, ptr %i.y, align 8
  %i.aa = fsub float %i.z, %i.x
  %i.ab = fsub double %3, %i.t
  %i.ac = fdiv double %i.ab, %i.u
  %i.ad = fptrunc double %i.ac to float
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ad, float %i.x)
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.i:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds i8, ptr %i.c, i64 -40 ; 2 uses
  %i.ai = icmp eq ptr %1, %i.ah
  br i1 %i.ai, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aj = load double, ptr %i.ah, align 8
  %i.ak = fcmp ogt double %3, %i.aj
  br i1 %i.ak, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i32, ptr %i.al, align 4
  switch i32 %i.am, label %bb.q [
    i32 5, label %bb.m
    i32 0, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds i8, ptr %1, i64 -28
  %i.ao = load i32, ptr %i.an, align 4
  %cond.i25 = icmp eq i32 %i.ao, 0
  br i1 %cond.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load float, ptr %i.ap, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds i8, ptr %1, i64 -40
  %i.as = load double, ptr %i.ar, align 8
  %i.at = load double, ptr %1, align 8            ; 2 uses
  %i.au = fsub double %i.as, %i.at                ; 2 uses
  %i.av = fcmp ogt double %i.au, 0.000000e+00
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load float, ptr %i.aw, align 8          ; 3 uses
  br i1 %i.av, label %bb.p, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds i8, ptr %1, i64 -32
  %i.az = load float, ptr %i.ay, align 8
  %i.ba = fsub float %i.az, %i.ax
  %i.bb = fsub double %3, %i.at
  %i.bc = fdiv double %i.bb, %i.au
  %i.bd = fptrunc double %i.bc to float
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bd, float %i.ax)
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.q:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load float, ptr %i.bf, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

.critedge:                                        ; preds = %bb.j, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bi = load i32, ptr %i.bh, align 4
  %cond.i28 = icmp eq i32 %i.bi, 0
  br i1 %cond.i28, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bk = load float, ptr %i.bj, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.s:                                             ; preds = %.critedge
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -40
  %i.bm = load double, ptr %1, align 8
  %i.bn = load double, ptr %i.bl, align 8         ; 2 uses
  %i.bo = fsub double %i.bm, %i.bn                ; 2 uses
  %i.bp = fcmp ogt double %i.bo, 0.000000e+00
  %i.bq = getelementptr inbounds i8, ptr %1, i64 -32
  %i.br = load float, ptr %i.bq, align 8          ; 3 uses
  br i1 %i.bp, label %bb.t, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load float, ptr %i.bs, align 8
  %i.bu = fsub float %i.bt, %i.br
  %i.bv = fsub double %3, %i.bn
  %i.bw = fdiv double %i.bv, %i.bo
  %i.bx = fptrunc double %i.bw to float
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bx, float %i.br)
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.l, %bb.p, %bb.o, %bb.n, %bb.d, %bb.h, %bb.g, %bb.f, %bb.q, %bb.i, %bb.b
  %storemerge6.i29.sink = phi float [ 0.000000e+00, %bb.l ], [ %i.bg, %bb.q ], [ %i.ax, %bb.o ], [ 0.000000e+00, %bb.d ], [ %i.ag, %bb.i ], [ %i.x, %bb.g ], [ %i.j, %bb.b ], [ %i.q, %bb.f ], [ %i.ae, %bb.h ], [ %i.aq, %bb.n ], [ %i.be, %bb.p ], [ %i.bk, %bb.r ], [ %i.by, %bb.t ], [ %i.br, %bb.s ]
  store float %storemerge6.i29.sink, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load double, ptr %2, align 8
  %i.f = load double, ptr %1, align 8             ; 2 uses
  %i.g = fsub double %i.e, %i.f                   ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 8            ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load float, ptr %i.k, align 8
  %i.m = fsub float %i.l, %i.j
  %i.n = fsub double %3, %i.f
  %i.o = fdiv double %i.n, %i.g
  %i.p = fptrunc double %i.o to float
end_hunk_0
