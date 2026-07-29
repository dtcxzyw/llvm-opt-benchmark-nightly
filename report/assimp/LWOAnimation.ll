inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
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
  %i.co = icmp slt i64 %i.r, 81
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
  %.060121 = phi i32 [ 0, %.lr.ph ], [ %i.cx, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cx = add nuw i32 %.060121, 1
  %i.cy = mul i64 %i.s, %indvars.iv.next
  %i.cz = getelementptr inbounds [40 x i8], ptr %i.cl, i64 %i.cy ; 4 uses
  br i1 %i.cm, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  br i1 %i.cn, label %bb.x, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cz, ptr noundef nonnull align 8 dereferenceable(36) %i.cl, i64 36, i1 false)
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64: ; preds = %bb.v
  %indvars145 = trunc i32 %.060121 to i1
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
  br i1 %i.de, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, !llvm.loop !11

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.x, %bb.w, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ce
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !12

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
  br i1 %i.dr, label %bb.ac, label %._crit_edge126, !llvm.loop !13

._crit_edge126:                                   ; preds = %bb.ae, %bb.ab
  %.sroa.074.1.lcssa = phi ptr [ %.sroa.074.0127, %bb.ab ], [ %i.dq, %bb.ae ]
  %i.ds = fadd double %i.n, %.057128              ; 2 uses
  %i.dt = add i32 %.0129, 1
  %i.du = fcmp ugt double %i.ds, %i.cs
  br i1 %i.du, label %.loopexit, label %bb.y, !llvm.loop !14

.loopexit:                                        ; preds = %._crit_edge126, %._crit_edge, %bb.d, %bb.c, %bb.b
  %.sroa.084.0 = load ptr, ptr %.sroa.084.0134, align 8 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.not = icmp eq ptr %.sroa.084.0, %i.dv
  br i1 %.not, label %._crit_edge137, label %bb.b, !llvm.loop !15
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
  %.sroa.0182.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.i, %bb.d ]
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
  %.sroa.5183.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
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
  %.sroa.0185.0 = phi float [ 1.000000e+00, %bb.o ], [ %i.as, %bb.p ] ; 3 uses
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
  %.sroa.5186.0 = phi float [ 1.000000e+00, %bb.q ], [ %i.ay, %bb.r ] ; 3 uses
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
  %.sroa.8187.0 = phi float [ 1.000000e+00, %bb.s ], [ %i.be, %bb.t ]
  %i.bf = tail call noundef float @cosf(float noundef %.sroa.8190.0) #16 ; 7 uses
  %i.bg = tail call noundef float @sinf(float noundef %.sroa.8190.0) #16 ; 4 uses
  %i.bh = fneg float %i.bg                        ; 4 uses
  %i.bi = tail call noundef float @cosf(float noundef %.sroa.5189.0) #16 ; 5 uses
  %i.bj = tail call noundef float @sinf(float noundef %.sroa.5189.0) #16 ; 5 uses
  %i.bk = fneg float %i.bj                        ; 2 uses
  %i.bl = tail call noundef float @cosf(float noundef %.sroa.0188.0) #16 ; 2 uses
  %i.bm = tail call noundef float @sinf(float noundef %.sroa.0188.0) #16 ; 3 uses
  %i.bn = fneg float %i.bm                        ; 2 uses
  %2 = insertelement <2 x float> poison, float %.sroa.0182.0, i64 0
  %3 = insertelement <2 x float> %2, float %.sroa.5183.0, i64 1 ; 2 uses
  %4 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00>) ; 5 uses
  %5 = tail call float @llvm.fmuladd.f32(float %.sroa.8184.0, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %6 = extractelement <2 x float> %4, i64 1
  %7 = fmul float %6, %i.bk
  %i.bo = fmul float %5, 0.000000e+00             ; 2 uses
  %i.bp = fmul float %i.bi, 0.000000e+00
  %8 = fmul float %i.bj, -0.000000e+00
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bl, i64 2 ; 2 uses
  %9 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %10 = fmul <2 x float> %4, zeroinitializer      ; 2 uses
  %11 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bi, i64 0 ; 2 uses
  %12 = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %13 = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x float> %4, %13
  %15 = insertelement <2 x float> poison, float %i.bj, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = extractelement <2 x float> %10, i64 1
  %.sroa.18101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.30105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %17 = insertelement <2 x float> poison, float %i.bm, i64 0
  %18 = insertelement <2 x float> %17, float %i.bl, i64 1 ; 2 uses
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 4 uses
  %20 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %21 = fadd <2 x float> %19, %20
  %22 = fsub <2 x float> %19, %20
  %23 = shufflevector <2 x float> %21, <2 x float> %22, <2 x i32> <i32 0, i32 3>
  %24 = insertelement <2 x float> poison, float %.sroa.8184.0, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %23) ; 4 uses
  %27 = extractelement <2 x float> %26, i64 1
  %i.bu = fadd float %i.bo, %27
  %28 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <4 x float> %i.br, <4 x float> %28, <4 x i32> <i32 0, i32 0, i32 2, i32 4>
  %30 = fadd <4 x float> %29, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %31 = shufflevector <4 x float> %i.br, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %32 = insertelement <2 x float> %31, float %i.bn, i64 1
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> zeroinitializer, <4 x float> %30) ; 2 uses
  %35 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> zeroinitializer, <4 x float> %34) ; 6 uses
  %36 = shufflevector <4 x float> %9, <4 x float> %35, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %37 = fadd <4 x float> %36, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 4 uses
  %38 = shufflevector <4 x float> %35, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %39 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %40 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %41 = extractelement <4 x float> %35, i64 3
  %42 = extractelement <4 x float> %37, i64 3
  %i.bv = insertelement <2 x float> %26, float %i.bn, i64 1
  %i.bw = insertelement <2 x float> %19, float %i.bu, i64 0
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> zeroinitializer, <2 x float> %i.bw) ; 2 uses
  %43 = shufflevector <2 x float> %4, <2 x float> %i.bx, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %44 = insertelement <4 x float> poison, float %5, i64 0
  %45 = shufflevector <4 x float> %44, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %46 = shufflevector <4 x float> %45, <4 x float> %43, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %47 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bi, i64 0
  %48 = insertelement <4 x float> %47, float %i.bk, i64 1
  %49 = shufflevector <4 x float> %48, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %50 = fmul <4 x float> %46, %49
  %51 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %52 = shufflevector <4 x float> %51, <4 x float> %35, <4 x i32> <i32 1, i32 1, i32 6, i32 poison>
  %53 = insertelement <4 x float> %52, float %.sroa.5183.0, i64 3
  %54 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> zeroinitializer, <4 x float> %50) ; 5 uses
  %55 = shufflevector <4 x float> %54, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %56 = shufflevector <4 x float> %55, <4 x float> %11, <4 x i32> <i32 0, i32 poison, i32 4, i32 poison>
  %57 = insertelement <4 x float> %34, float %.sroa.8184.0, i64 0
  %58 = shufflevector <4 x float> %57, <4 x float> %51, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %59 = fadd <4 x float> %58, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 4 uses
  %60 = extractelement <4 x float> %54, i64 3     ; 2 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %60, float 0.000000e+00, float %7)
  %61 = insertelement <4 x float> %56, float %i.by, i64 3
  %62 = fmul <4 x float> %61, <float 1.000000e+00, float poison, float 0.000000e+00, float 1.000000e+00>
  %63 = shufflevector <4 x float> %62, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %64 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %35, <4 x float> %63)
  %65 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> zeroinitializer, <4 x float> %64) ; 7 uses
  %66 = shufflevector <4 x float> %54, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %67 = shufflevector <4 x float> %35, <4 x float> %54, <2 x i32> <i32 2, i32 7> ; 2 uses
  %68 = fadd <2 x float> %10, %67
  %69 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> zeroinitializer, <2 x float> %68)
  %70 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> zeroinitializer, <2 x float> %69) ; 4 uses
  %71 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> zeroinitializer, <2 x float> %14)
  %72 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %38, <2 x float> %71)
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> zeroinitializer, <2 x float> %72) ; 3 uses
  %73 = fadd <4 x float> %40, %65                 ; 3 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %60, float 0.000000e+00, float %i.bt)
  %i.cb = tail call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %i.ca)
  %i.cc = fadd float %42, %i.cb                   ; 4 uses
  %74 = fadd <2 x float> %i.bx, <float -0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.cd = insertelement <4 x float> poison, float %i.bi, i64 0
  %75 = shufflevector <4 x float> %i.cd, <4 x float> %51, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %76 = shufflevector <2 x float> %74, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %77 = shufflevector <4 x float> %75, <4 x float> %76, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %78 = shufflevector <4 x float> %75, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 6, i32 7>
  %79 = shufflevector <4 x float> %54, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %80 = insertelement <4 x float> %79, float %i.bo, i64 2
  %i.ce = insertelement <4 x float> %80, float %8, i64 3
  %81 = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> %78, <4 x float> %81)
  %82 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.bi, i64 3
  %83 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> %59, <4 x float> %i.cf) ; 4 uses
  %84 = shufflevector <4 x float> %59, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %85 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %84, <2 x float> zeroinitializer, <2 x float> %74) ; 3 uses
  %86 = fadd <2 x float> %85, <float -0.000000e+00, float 0.000000e+00> ; 3 uses
  %87 = insertelement <2 x float> %74, float %i.bj, i64 0
  %i.cg = insertelement <2 x float> %26, float 0.000000e+00, i64 1
  %i.ch = insertelement <2 x float> %66, float %i.bp, i64 1
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %87, <2 x float> %i.cg, <2 x float> %i.ch)
  %88 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bj, i64 1
  %89 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %88, <2 x float> %84, <2 x float> %i.ci) ; 3 uses
  %90 = fadd <2 x float> %89, <float -0.000000e+00, float 0.000000e+00> ; 3 uses
  %91 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %59, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %92 = fadd <4 x float> %91, %83                 ; 7 uses
  %93 = extractelement <2 x float> %74, i64 1
  %94 = tail call float @llvm.fmuladd.f32(float %93, float 0.000000e+00, float 0.000000e+00)
  %95 = extractelement <4 x float> %59, i64 3
  %96 = tail call float @llvm.fmuladd.f32(float %95, float 0.000000e+00, float %94)
  %97 = fadd float %96, 1.000000e+00              ; 4 uses
  %98 = extractelement <2 x float> %i.bz, i64 0   ; 2 uses
  %99 = fmul float %i.bg, %98
  %100 = extractelement <2 x float> %70, i64 0
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bf, float %100, float %99)
  %101 = extractelement <4 x float> %65, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %101, float 0.000000e+00, float %i.cj)
  %102 = fmul float %i.bf, %98
  %103 = fmul <2 x float> %i.bz, zeroinitializer
  %104 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> zeroinitializer, <2 x float> %103)
  %105 = shufflevector <2 x float> %104, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %106 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %65, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %107 = fadd <4 x float> %105, %106
  %108 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %73, <4 x float> zeroinitializer, <4 x float> %107) ; 3 uses
  %109 = extractelement <2 x float> %i.bz, i64 1  ; 2 uses
  %110 = fmul float %i.bg, %109
  %111 = extractelement <2 x float> %70, i64 1    ; 2 uses
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.bf, float %111, float %110)
  %112 = extractelement <4 x float> %65, i64 3
  %i.cm = tail call float @llvm.fmuladd.f32(float %112, float 0.000000e+00, float %i.cl)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.cm) ; 3 uses
  %113 = fmul float %i.bf, %109
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bh, float %111, float %113)
  %foldExtExtBinop = fadd <4 x float> %65, %105
  %114 = shufflevector <4 x float> %73, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 poison>
  %115 = insertelement <4 x float> %114, float %i.cc, i64 3
  %116 = fadd <4 x float> %115, %108              ; 5 uses
  %117 = extractelement <2 x float> %89, i64 0
  %118 = extractelement <2 x float> %85, i64 0
  %119 = extractelement <4 x float> %83, i64 0
  %120 = extractelement <4 x float> %92, i64 2
  %121 = fmul float %i.bf, %117
  %122 = tail call float @llvm.fmuladd.f32(float %i.bh, float %118, float %121)
  %i.cp = tail call float @llvm.fmuladd.f32(float %119, float 0.000000e+00, float %122)
  %i.cq = tail call float @llvm.fmuladd.f32(float %120, float 0.000000e+00, float %i.cp)
  %123 = fmul <2 x float> %90, zeroinitializer
  %124 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %86, <2 x float> zeroinitializer, <2 x float> %123)
  %125 = shufflevector <2 x float> %124, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %126 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %83, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %127 = fadd <4 x float> %125, %126
  %128 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %92, <4 x float> zeroinitializer, <4 x float> %127) ; 2 uses
  %129 = extractelement <2 x float> %90, i64 1
  %130 = extractelement <2 x float> %86, i64 1
  %131 = extractelement <4 x float> %92, i64 3
  %i.cr = fmul float %i.bf, %129
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bh, float %130, float %i.cr)
  %i.ct = tail call float @llvm.fmuladd.f32(float %131, float 0.000000e+00, float %i.cs)
  %i.cu = tail call float @llvm.fmuladd.f32(float %97, float 0.000000e+00, float %i.ct)
  %foldExtExtBinop205 = fadd <4 x float> %92, %125
  %132 = extractelement <4 x float> %foldExtExtBinop205, i64 3
  %i.cv = tail call float @llvm.fmuladd.f32(float %97, float 0.000000e+00, float %132)
  %133 = shufflevector <4 x float> %92, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 poison>
  %134 = insertelement <4 x float> %133, float %97, i64 3
  %135 = fadd <4 x float> %134, %128              ; 5 uses
  %136 = extractelement <4 x float> %108, i64 2
  %137 = extractelement <4 x float> %116, i64 0
  %138 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bh, i64 0
  %139 = shufflevector <2 x float> %70, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %140 = shufflevector <4 x float> %139, <4 x float> %65, <2 x i32> <i32 0, i32 7>
  %141 = insertelement <2 x float> poison, float %102, i64 0
  %i.cw = insertelement <2 x float> %141, float %i.co, i64 1
  %142 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %138, <2 x float> %140, <2 x float> %i.cw)
  %143 = shufflevector <4 x float> %65, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cx = insertelement <2 x float> %143, float %i.cc, i64 1
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> zeroinitializer, <2 x float> %142) ; 2 uses
  %144 = shufflevector <4 x float> %73, <4 x float> poison, <2 x i32> <i32 2, i32 poison> ; 2 uses
  %145 = insertelement <2 x float> %144, float %i.cc, i64 1
  %146 = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %147 = insertelement <2 x float> %146, float %i.ck, i64 0
  %148 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %145, <2 x float> zeroinitializer, <2 x float> %147) ; 4 uses
  %149 = fmul <2 x float> %i.cy, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %150 = insertelement <2 x float> %144, float %.sroa.0185.0, i64 1
  %151 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cn, i64 1
  %152 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %150, <2 x float> %151, <2 x float> %149) ; 2 uses
  %153 = fmul <2 x float> %152, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %154 = extractelement <2 x float> %148, i64 0
  %155 = extractelement <2 x float> %153, i64 0
  %156 = tail call float @llvm.fmuladd.f32(float %.sroa.0185.0, float %154, float %155)
  %157 = tail call float @llvm.fmuladd.f32(float %136, float 0.000000e+00, float %156)
  %158 = tail call float @llvm.fmuladd.f32(float %137, float 0.000000e+00, float %157)
  %159 = extractelement <2 x float> %152, i64 0
  %160 = fmul float %.sroa.5186.0, %159
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %148, <2 x float> zeroinitializer, <2 x float> %153) ; 2 uses
  %161 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.8187.0, i64 1 ; 4 uses
  %162 = shufflevector <4 x float> %108, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %163 = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %164 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %116, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %165 = extractelement <2 x float> %i.cy, i64 1
  %166 = fmul float %.sroa.5186.0, %165
  %i.da = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.5186.0, i64 0 ; 2 uses
  %i.db = insertelement <2 x float> poison, float %i.cq, i64 0
  %167 = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %168 = fmul <2 x float> %i.da, %167             ; 2 uses
  %169 = shufflevector <4 x float> %128, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %170 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %135, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %171 = extractelement <4 x float> %135, i64 3
  store float %158, ptr %1, align 4
  %172 = insertelement <2 x float> %169, float %i.cn, i64 0
  %173 = shufflevector <2 x float> %149, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %174 = shufflevector <2 x float> %148, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %175 = shufflevector <4 x float> %116, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 poison, i32 poison>
  %176 = shufflevector <2 x float> %148, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %177 = shufflevector <4 x float> %175, <4 x float> %176, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %178 = shufflevector <4 x float> %177, <4 x float> %135, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %179 = shufflevector <4 x float> %116, <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 3, i32 7>
  %.sroa.42109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %180 = insertelement <2 x float> poison, float %i.cu, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  %182 = fmul <2 x float> %i.da, %181             ; 2 uses
  %183 = insertelement <2 x float> poison, float %i.bg, i64 0
  %184 = shufflevector <2 x float> %183, <2 x float> poison, <2 x i32> zeroinitializer
  %185 = shufflevector <2 x float> %89, <2 x float> %90, <2 x i32> <i32 0, i32 3>
  %186 = fmul <2 x float> %184, %185
  %187 = insertelement <2 x float> poison, float %i.bf, i64 0
  %188 = shufflevector <2 x float> %187, <2 x float> poison, <2 x i32> zeroinitializer
  %189 = shufflevector <2 x float> %85, <2 x float> %86, <2 x i32> <i32 0, i32 3>
  %190 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %188, <2 x float> %189, <2 x float> %186)
  %191 = shufflevector <4 x float> %83, <4 x float> %92, <2 x i32> <i32 0, i32 7>
  %192 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %191, <2 x float> zeroinitializer, <2 x float> %190)
  %193 = shufflevector <4 x float> %92, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %194 = insertelement <2 x float> %193, float %97, i64 1
  %195 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %194, <2 x float> zeroinitializer, <2 x float> %192) ; 3 uses
  %196 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %.sroa.0185.0, i64 2
  %197 = shufflevector <4 x float> %196, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %198 = insertelement <4 x float> %176, float %i.cn, i64 1
  %199 = shufflevector <2 x float> %195, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %200 = shufflevector <4 x float> %198, <4 x float> %199, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %201 = shufflevector <2 x float> %168, <2 x float> %182, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %202 = insertelement <4 x float> %201, float %160, i64 0
  %i.dc = insertelement <4 x float> %202, float %166, i64 1
  %203 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %197, <4 x float> %200, <4 x float> %i.dc) ; 3 uses
  %204 = shufflevector <4 x float> %203, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %205 = shufflevector <2 x float> %204, <2 x float> %163, <2 x i32> <i32 0, i32 3>
  %206 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %161, <2 x float> %162, <2 x float> %205)
  %207 = shufflevector <2 x float> %206, <2 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %116, <4 x float> zeroinitializer, <4 x float> %207)
  %208 = fadd <4 x float> %164, %i.dd
  %209 = shufflevector <2 x float> %195, <2 x float> poison, <2 x i32> zeroinitializer
  %210 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %209, <2 x float> zeroinitializer, <2 x float> %168) ; 2 uses
  %211 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %161, <2 x float> %169, <2 x float> %210)
  %212 = shufflevector <2 x float> %211, <2 x float> %210, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  store <4 x float> %208, ptr %.sroa.697.0..sroa_idx, align 4
  %213 = shufflevector <2 x float> %173, <2 x float> %204, <2 x i32> <i32 0, i32 3>
  %214 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %172, <2 x float> zeroinitializer, <2 x float> %213) ; 2 uses
  %215 = shufflevector <2 x float> %214, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %216 = shufflevector <4 x float> %215, <4 x float> %203, <2 x i32> <i32 5, i32 1>
  %217 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %161, <2 x float> %174, <2 x float> %216)
  %218 = shufflevector <2 x float> %217, <2 x float> %214, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %219 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %178, <4 x float> zeroinitializer, <4 x float> %218)
  %220 = fadd <4 x float> %179, %219
  store <4 x float> %220, ptr %.sroa.18101.0..sroa_idx, align 4
  %221 = shufflevector <2 x float> %195, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %221, <2 x float> zeroinitializer, <2 x float> %182) ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %161, <2 x float> %i.dg, <2 x float> %i.de)
  %222 = shufflevector <4 x float> %135, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %223 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %222, <2 x float> zeroinitializer, <2 x float> %i.dh)
  %224 = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %225 = shufflevector <4 x float> %203, <4 x float> %224, <2 x i32> <i32 3, i32 5>
  %226 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> zeroinitializer, <2 x float> %225) ; 2 uses
  %227 = shufflevector <2 x float> %226, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %228 = shufflevector <4 x float> %212, <4 x float> %227, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %229 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %135, <4 x float> zeroinitializer, <4 x float> %228)
  %230 = fadd <4 x float> %170, %229
  %231 = extractelement <2 x float> %226, i64 1
  %232 = fadd float %171, %231
  store <4 x float> %230, ptr %.sroa.30105.0..sroa_idx, align 4
  store <2 x float> %223, ptr %.sroa.42109.0..sroa_idx, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.sink = phi float [ %232, %bb.u ], [ 1.000000e+00, %bb.b ]
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
  %i.q = tail call float @llvm.fmuladd.f32(float %i.m, float %i.p, float %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %storemerge6 = phi float [ %i.d, %bb.b ], [ %i.q, %bb.d ], [ %i.j, %bb.c ]
  store float %storemerge6, ptr %4, align 4
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm:bb.a

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store double 0.000000e+00, ptr %.08.i.i.i.prol, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store float 0.000000e+00, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 12
  store i32 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !45

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store double 0.000000e+00, ptr %.08.i.i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store float 0.000000e+00, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 12
  store i32 1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store double 0.000000e+00, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store float 0.000000e+00, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 52
  store i32 1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store double 0.000000e+00, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store float 0.000000e+00, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 92
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.af, i8 0, i64 20, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  store double 0.000000e+00, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  store float 0.000000e+00, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 132
  store i32 1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, i8 0, i64 20, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 230584300921369395) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 40
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ]
  store double 0.000000e+00, ptr %.08.i.i.i31.prol, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  store float 0.000000e+00, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 12
  store i32 1, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  %i.av = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !47

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store double 0.000000e+00, ptr %.08.i.i.i31, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store float 0.000000e+00, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 12
  store i32 1, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ba, i8 0, i64 20, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store double 0.000000e+00, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store float 0.000000e+00, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 52
  store i32 1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, i8 0, i64 20, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store double 0.000000e+00, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store float 0.000000e+00, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 92
  store i32 1, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bi, i8 0, i64 20, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  store double 0.000000e+00, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  store float 0.000000e+00, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 132
  store i32 1, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bm, i8 0, i64 20, i1 false)
  %i.bn = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !46

_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !alias.scope !48
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !52

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.br = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.br) #19
  br label %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %1
  store ptr %i.bs, ptr %i.a, align 8
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bt, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{}
!6 = !{i64 8}
!7 = distinct !{!7, !4}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6rbeginEv: argument 0"}
!18 = distinct !{!18, !"_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6rbeginEv"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6rbeginEv: argument 0"}
!21 = distinct !{!21, !"_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6rbeginEv"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6rbeginEv: argument 0"}
!24 = distinct !{!24, !"_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6rbeginEv"}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!27 = distinct !{!27, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!28 = distinct !{!28, !27, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!29 = distinct !{!29, !4}
!30 = !{i8 0, i8 2}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!33 = distinct !{!33, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!34 = distinct !{!34, !33, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !37}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !37}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!50 = distinct !{!50, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_"}
!51 = distinct !{!51, !50, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!52 = distinct !{!52, !4}
end_hunk_1
