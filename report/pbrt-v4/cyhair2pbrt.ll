Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/cyhair2pbrt?download=true
inline.NumInlined: 422
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6cyhair6CyHair19ToCubicBezierCurvesEPSt6vectorIfSaIfEES4_PKfS6_if:bb.a

bb.g:                                             ; preds = %.lr.ph584, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit
  %.081583 = phi i64 [ 0, %.lr.ph584 ], [ %i.yp, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit ] ; 5 uses
  %i.bb = urem i64 %.081583, 1000
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %.081583) ; 2 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.16, i64 noundef 3) ; 0 uses
  %i.bf = load i32, ptr %i.q, align 4, !tbaa !56
  %i.bg = zext i32 %i.bf to i64
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 noundef %i.bg) ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !15
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33 ; 6 uses
  %.not.i.i.i287 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i287, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i288

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i288: ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !39
  %.not.i1.i.i289 = icmp eq i8 %i.bp, 0
  br i1 %.not.i1.i.i289, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i288
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit291

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i288
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit291

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit291: ; preds = %bb.j, %bb.k
  %.0.i.i.i290 = phi i8 [ %i.br, %bb.j ], [ %i.bv, %bb.k ]
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i8 noundef signext %.0.i.i.i290)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit291, %bb.g
  %i.by = load ptr, ptr %i.aq, align 8, !tbaa !60 ; 2 uses
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !60
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = load i32, ptr %i.as, align 4, !tbaa !61
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.081583
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !64
  %i.ce = zext i16 %i.cd to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cf = phi i32 [ %i.cb, %bb.m ], [ %i.ce, %bb.n ] ; 4 uses
  %i.cg = icmp slt i32 %i.cf, 2
  br i1 %i.cg, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit, label %.preheader469

.preheader469:                                    ; preds = %bb.o
  %i.ch = zext nneg i32 %i.cf to i64
  br label %bb.p

.preheader:                                       ; preds = %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit
  %.not585 = icmp eq i32 %i.cf, 2
  br i1 %.not585, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ci = add nsw i32 %i.cf, -1
  %wide.trip.count = zext nneg i32 %i.ci to i64
  br label %bb.v

bb.p:                                             ; preds = %.preheader469, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit
  %.080581 = phi i64 [ 0, %.preheader469 ], [ %i.dk, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.13.0580 = phi ptr [ null, %.preheader469 ], [ %.sroa.13.1, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.sroa.9.0579 = phi ptr [ null, %.preheader469 ], [ %.sroa.9.1, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.sroa.0321.0578 = phi ptr [ null, %.preheader469 ], [ %.sroa.0321.1, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.081583
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add nuw nsw i64 %.080581, %i.cm
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !58
  %.idx = mul nuw nsw i64 %i.cn, 12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 3 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !11 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.9.0579, %.sroa.13.0580
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store float %i.cq, ptr %.sroa.9.0579, align 4, !tbaa !11
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0579, i64 4
  store float %i.cs, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !11
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0579, i64 8
  store float %i.cu, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !11
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit

bb.r:                                             ; preds = %bb.p
  %i.cv = ptrtoint ptr %.sroa.13.0580 to i64
  %i.cw = ptrtoint ptr %.sroa.0321.0578 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 5 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.s, label %_ZNKSt6vectorIN6cyhair5real3ESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc unwind label %.loopexit.split-lp471

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6cyhair5real3ESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.cz = sdiv exact i64 %i.cx, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 768614336404564650)
  %i.dd = select i1 %i.db, i64 768614336404564650, i64 %i.dc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.de = mul nuw nsw i64 %i.dd, 12
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #21
          to label %.noexc94 unwind label %.loopexit470 ; 5 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorIN6cyhair5real3ESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx ; 3 uses
  store float %i.cq, ptr %i.dg, align 4, !tbaa !11
  %.sroa.6.0..sroa_idx317 = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store float %i.cs, ptr %.sroa.6.0..sroa_idx317, align 4, !tbaa !11
  %.sroa.7.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store float %i.cu, ptr %.sroa.7.0..sroa_idx319, align 4, !tbaa !11
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0321.0578, %.sroa.13.0580
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc94, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %i.df, %.noexc94 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0321.0578, %.noexc94 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !83, !alias.scope !84
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, %.sroa.13.0580
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc94
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.df, %.noexc94 ], [ %i.di, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0321.0578, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0321.0578, i64 noundef %i.cx) #22
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.dd
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6cyhair5real3ESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.q
  %.sroa.0321.1 = phi ptr [ %i.df, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0321.0578, %bb.q ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.0579, %bb.q ]
  %.sroa.13.1 = phi ptr [ %i.dj, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0580, %bb.q ] ; 3 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12
  %i.dk = add nuw nsw i64 %.080581, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.ch
  br i1 %exitcond.not, label %.preheader, label %bb.p, !llvm.loop !78

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243, %.preheader
  %.not.i.i.i95 = icmp eq ptr %.sroa.0321.1, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.dl = ptrtoint ptr %.sroa.13.1 to i64
  %i.dm = ptrtoint ptr %.sroa.0321.1 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0321.1, i64 noundef %i.dn) #22
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243 ] ; 2 uses
  %i.do = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr [12 x i8], ptr %.sroa.0321.1, i64 %i.do ; 4 uses
  %7 = getelementptr i8, ptr %i.dq, i64 -12
  %.sroa.0338.0.copyload = load float, ptr %7, align 4, !tbaa !11
  %.sroa.9343.0..sroa_idx.a = getelementptr i8, ptr %i.dq, i64 -8
  %.sroa.9343.0.copyload = load float, ptr %.sroa.9343.0..sroa_idx.a, align 4, !tbaa !11
  %.sroa.13349.0..sroa_idx = getelementptr i8, ptr %i.dq, i64 -4
  %.sroa.13349.0.copyload = load float, ptr %.sroa.13349.0..sroa_idx, align 4, !tbaa !11
  br label %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit

_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit: ; preds = %bb.v, %bb.w
  %.sroa.9343.0 = phi float [ %.sroa.9343.0.copyload, %bb.w ], [ 0.000000e+00, %bb.v ] ; 4 uses
  %.sroa.13349.0 = phi float [ %.sroa.13349.0.copyload, %bb.w ], [ 0.000000e+00, %bb.v ] ; 4 uses
  %.sroa.17.0.in = phi ptr [ %i.dq, %bb.w ], [ %.sroa.0321.1, %bb.v ] ; 9 uses
  %.sroa.0338.0 = phi float [ %.sroa.0338.0.copyload, %bb.w ], [ 0.000000e+00, %bb.v ] ; 4 uses
  %_ZN6cyhairL6toC2B1E.sink.i = phi ptr [ @_ZN6cyhairL5toC2BE, %bb.w ], [ @_ZN6cyhairL6toC2B0E, %bb.v ] ; 16 uses
  %.sroa.58.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 32
  %.sroa.58.0 = load float, ptr %.sroa.58.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.53.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 28
  %.sroa.53.0 = load float, ptr %.sroa.53.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.47.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 24
  %.sroa.47.0 = load float, ptr %.sroa.47.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.43.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 20
  %.sroa.39.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 16
  %.sroa.32.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 12
  %.sroa.28.0.in = getelementptr inbounds nuw i8, ptr %.sroa.17.0.in, i64 8
  %.sroa.24.0.in = getelementptr inbounds nuw i8, ptr %.sroa.17.0.in, i64 4
  %.sroa.43.0 = load float, ptr %.sroa.43.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.39.0 = load float, ptr %.sroa.39.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.32.0 = load float, ptr %.sroa.32.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.28.0 = load float, ptr %.sroa.28.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.24.0 = load float, ptr %.sroa.24.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.17.0 = load float, ptr %.sroa.17.0.in, align 4, !tbaa !11 ; 4 uses
  %8 = load float, ptr %_ZN6cyhairL6toC2B1E.sink.i, align 16, !tbaa !11 ; 3 uses
  %9 = fmul float %.sroa.0338.0, %8
  %i.dr = fmul float %.sroa.9343.0, %8
  %10 = fmul float %.sroa.13349.0, %8
  %i.ds = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !11 ; 3 uses
  %i.du = fmul float %.sroa.17.0, %i.dt
  %11 = fmul float %.sroa.24.0, %i.dt
  %12 = fmul float %.sroa.28.0, %i.dt
  %13 = fadd float %9, %i.du
  %14 = fadd float %i.dr, %11
  %i.dv = fadd float %10, %12
  %i.dw = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 8
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !11 ; 3 uses
  %i.dy = fmul float %.sroa.32.0, %i.dx
  %i.dz = fmul float %.sroa.39.0, %i.dx
  %i.ea = fmul float %.sroa.43.0, %i.dx
  %15 = fadd float %13, %i.dy
  %16 = fadd float %14, %i.dz
  %i.eb = fadd float %i.dv, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 12
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !11 ; 3 uses
  %i.ee = fmul float %.sroa.47.0, %i.ed
  %17 = fmul float %.sroa.53.0, %i.ed
  %18 = fmul float %.sroa.58.0, %i.ed
  %19 = fadd float %15, %i.ee
  %20 = fadd float %16, %17
  %i.ef = fadd float %i.eb, %18
  %i.eg = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 16
  %i.eh = load float, ptr %i.eg, align 16, !tbaa !11 ; 3 uses
  %i.ei = fmul float %.sroa.0338.0, %i.eh
  %i.ej = fmul float %.sroa.9343.0, %i.eh
  %i.ek = fmul float %.sroa.13349.0, %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 20
  %i.em = load float, ptr %i.el, align 4, !tbaa !11 ; 3 uses
  %i.en = fmul float %.sroa.17.0, %i.em
  %21 = fmul float %.sroa.24.0, %i.em
  %22 = fmul float %.sroa.28.0, %i.em
  %23 = fadd float %i.ei, %i.en
  %24 = fadd float %i.ej, %21
  %i.eo = fadd float %i.ek, %22
  %i.ep = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 24
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !11 ; 3 uses
  %i.er = fmul float %.sroa.32.0, %i.eq
  %25 = fmul float %.sroa.39.0, %i.eq
  %26 = fmul float %.sroa.43.0, %i.eq
  %27 = fadd float %23, %i.er
  %28 = fadd float %24, %25
  %29 = fadd float %i.eo, %26
  %30 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 28
  %31 = load float, ptr %30, align 4, !tbaa !11   ; 3 uses
  %i.es = fmul float %.sroa.47.0, %31
  %32 = fmul float %.sroa.53.0, %31
  %i.et = fmul float %.sroa.58.0, %31
  %i.eu = fadd float %27, %i.es
  %i.ev = fadd float %28, %32
  %33 = fadd float %29, %i.et
  %34 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 32
  %35 = load float, ptr %34, align 16, !tbaa !11  ; 3 uses
  %i.ew = fmul float %.sroa.0338.0, %35
  %i.ex = fmul float %.sroa.9343.0, %35
  %36 = fmul float %.sroa.13349.0, %35
  %37 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 36
  %38 = load float, ptr %37, align 4, !tbaa !11   ; 3 uses
  %39 = fmul float %.sroa.17.0, %38
  %i.ey = fmul float %.sroa.24.0, %38
  %i.ez = fmul float %.sroa.28.0, %38
  %i.fa = fadd float %i.ew, %39
  %i.fb = fadd float %i.ex, %i.ey
  %40 = fadd float %36, %i.ez
  %41 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 40
  %42 = load float, ptr %41, align 8, !tbaa !11   ; 3 uses
  %43 = fmul float %.sroa.32.0, %42
  %i.fc = fmul float %.sroa.39.0, %42
  %i.fd = fmul float %.sroa.43.0, %42
  %i.fe = fadd float %i.fa, %43
  %i.ff = fadd float %i.fb, %i.fc
  %44 = fadd float %40, %i.fd
  %45 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 44
  %46 = load float, ptr %45, align 4, !tbaa !11   ; 3 uses
  %47 = fmul float %.sroa.47.0, %46
  %i.fg = fmul float %.sroa.53.0, %46
  %i.fh = fmul float %.sroa.58.0, %46
  %i.fi = fadd float %i.fe, %47
  %i.fj = fadd float %i.ff, %i.fg
  %48 = fadd float %44, %i.fh
  %49 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 48
  %50 = load float, ptr %49, align 16, !tbaa !11  ; 3 uses
  %51 = fmul float %.sroa.0338.0, %50
  %52 = fmul float %.sroa.9343.0, %50
  %53 = fmul float %.sroa.13349.0, %50
  %54 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 52
  %i.fk = load float, ptr %54, align 4, !tbaa !11 ; 3 uses
  %i.fl = fmul float %.sroa.17.0, %i.fk
  %55 = fmul float %.sroa.24.0, %i.fk
  %56 = fmul float %.sroa.28.0, %i.fk
  %57 = fadd float %51, %i.fl
  %58 = fadd float %52, %55
  %59 = fadd float %53, %56
  %60 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 56
  %61 = load float, ptr %60, align 8, !tbaa !11   ; 3 uses
  %62 = fmul float %.sroa.32.0, %61
  %63 = fmul float %.sroa.39.0, %61
  %i.fm = fmul float %.sroa.43.0, %61
  %64 = fadd float %57, %62
  %65 = fadd float %58, %63
  %66 = fadd float %59, %i.fm
  %67 = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 60
  %68 = load float, ptr %67, align 4, !tbaa !11   ; 3 uses
  %i.fn = fmul float %.sroa.47.0, %68
  %69 = fmul float %.sroa.53.0, %68
  %70 = fmul float %.sroa.58.0, %68
  %71 = fadd float %64, %i.fn
  %i.fo = fadd float %65, %69
  %72 = fadd float %66, %70
  %i.fp = load float, ptr %3, align 4, !tbaa !11
  %i.fq = fmul float %i.fp, %19
  %i.fr = load float, ptr %4, align 4, !tbaa !11
  %i.fs = fadd float %i.fq, %i.fr                 ; 2 uses
  %i.ft = load ptr, ptr %i.l, align 8, !tbaa !57  ; 4 uses
  %i.fu = load ptr, ptr %i.at, align 8, !tbaa !67 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i.i96, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit
  store float %i.fs, ptr %i.ft, align 4, !tbaa !11
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  store ptr %i.fv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.y:                                             ; preds = %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit
  %i.fw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fz = sub i64 %i.fx, %i.fy                    ; 5 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775804
  br i1 %i.ga, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc97 unwind label %.loopexit.split-lp

.noexc97:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.gb = ashr exact i64 %i.fz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = tail call i64 @llvm.umin.i64(i64 %i.gc, i64 2305843009213693951)
  %i.gf = select i1 %i.gd, i64 2305843009213693951, i64 %i.ge ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gg = shl nuw nsw i64 %i.gf, 2
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #21
          to label %.noexc98 unwind label %.loopexit ; 4 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.fz ; 2 uses
  store float %i.fs, ptr %i.gi, align 4, !tbaa !11
  %i.gj = icmp sgt i64 %i.fz, 0
  br i1 %i.gj, label %bb.aa, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.aa:                                            ; preds = %.noexc98
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr align 4 %i.fw, i64 %i.fz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aa, %.noexc98
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.gl = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = sub i64 %i.gm, %i.fy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gh, ptr %1, align 8, !tbaa !58
  store ptr %i.gk, ptr %i.l, align 8, !tbaa !57
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf ; 2 uses
  store ptr %i.go, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.x
  %i.gp = phi ptr [ %i.go, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.fu, %bb.x ] ; 3 uses
  %i.gq = phi ptr [ %i.gk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.fv, %bb.x ] ; 3 uses
  %i.gr = load float, ptr %i.au, align 4, !tbaa !11
  %i.gs = fmul float %i.gr, %20
  %i.gt = load float, ptr %i.av, align 4, !tbaa !11
  %i.gu = fadd float %i.gs, %i.gt                 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.gq, %i.gp
  br i1 %.not.i.i99, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  store float %i.gu, ptr %i.gq, align 4, !tbaa !11
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  store ptr %i.gv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.gw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.gx = ptrtoint ptr %i.gp to i64
  %i.gy = ptrtoint ptr %i.gw to i64               ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 5 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775804
  br i1 %i.ha, label %bb.ae, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc106 unwind label %.loopexit.split-lp410

.noexc106:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100: ; preds = %bb.ad
  %i.hb = ashr exact i64 %i.gz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i101 = tail call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i.i101, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = tail call i64 @llvm.umin.i64(i64 %i.hc, i64 2305843009213693951)
  %i.hf = select i1 %i.hd, i64 2305843009213693951, i64 %i.he ; 3 uses
  %.not.i.i.i.i102 = icmp ne i64 %i.hf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i102)
  %i.hg = shl nuw nsw i64 %i.hf, 2
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #21
          to label %.noexc107 unwind label %.loopexit409 ; 4 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 %i.gz ; 2 uses
  store float %i.gu, ptr %i.hi, align 4, !tbaa !11
  %i.hj = icmp sgt i64 %i.gz, 0
  br i1 %i.hj, label %bb.af, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103

bb.af:                                            ; preds = %.noexc107
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hh, ptr align 4 %i.gw, i64 %i.gz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103: ; preds = %bb.af, %.noexc107
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4 ; 2 uses
  %.not.i17.i.i.i104 = icmp eq ptr %i.gw, null
  br i1 %.not.i17.i.i.i104, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103
  %i.hl = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.gy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105: ; preds = %bb.ag, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103
  store ptr %i.hh, ptr %1, align 8, !tbaa !58
  store ptr %i.hk, ptr %i.l, align 8, !tbaa !57
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hf ; 2 uses
  store ptr %i.ho, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108

_ZNSt6vectorIfSaIfEE9push_backEOf.exit108:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105, %bb.ac
  %i.hp = phi ptr [ %i.ho, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105 ], [ %i.gp, %bb.ac ] ; 3 uses
  %i.hq = phi ptr [ %i.hk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105 ], [ %i.gv, %bb.ac ] ; 3 uses
  %i.hr = load float, ptr %i.aw, align 4, !tbaa !11
  %i.hs = fmul float %i.hr, %i.ef
  %i.ht = load float, ptr %i.ax, align 4, !tbaa !11
  %i.hu = fadd float %i.hs, %i.ht                 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.hq, %i.hp
  br i1 %.not.i.i109, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108
  store float %i.hu, ptr %i.hq, align 4, !tbaa !11
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 2 uses
  store ptr %i.hv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit118

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108
  %i.hw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.hx = ptrtoint ptr %i.hp to i64
  %i.hy = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.hz = sub i64 %i.hx, %i.hy                    ; 5 uses
  %i.ia = icmp eq i64 %i.hz, 9223372036854775804
  br i1 %i.ia, label %bb.aj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i110

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc116 unwind label %.loopexit.split-lp415

.noexc116:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i110: ; preds = %bb.ai
  %i.ib = ashr exact i64 %i.hz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i111 = tail call i64 @llvm.umax.i64(i64 %i.ib, i64 1)
  %i.ic = add nsw i64 %.sroa.speculated.i.i.i.i111, %i.ib ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ib
  %i.ie = tail call i64 @llvm.umin.i64(i64 %i.ic, i64 2305843009213693951)
  %i.if = select i1 %i.id, i64 2305843009213693951, i64 %i.ie ; 3 uses
  %.not.i.i.i.i112 = icmp ne i64 %i.if, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i112)
  %i.ig = shl nuw nsw i64 %i.if, 2
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #21
          to label %.noexc117 unwind label %.loopexit414 ; 4 uses

.noexc117:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i110
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 %i.hz ; 2 uses
  store float %i.hu, ptr %i.ii, align 4, !tbaa !11
  %i.ij = icmp sgt i64 %i.hz, 0
  br i1 %i.ij, label %bb.ak, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i113

bb.ak:                                            ; preds = %.noexc117
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ih, ptr align 4 %i.hw, i64 %i.hz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i113

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i113: ; preds = %bb.ak, %.noexc117
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  %.not.i17.i.i.i114 = icmp eq ptr %i.hw, null
  br i1 %.not.i17.i.i.i114, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i115, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i113
  %i.il = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.im, %i.hy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.in) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i115

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i115: ; preds = %bb.al, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i113
  store ptr %i.ih, ptr %1, align 8, !tbaa !58
  store ptr %i.ik, ptr %i.l, align 8, !tbaa !57
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.if ; 2 uses
  store ptr %i.io, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit118

_ZNSt6vectorIfSaIfEE9push_backEOf.exit118:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i115, %bb.ah
  %i.ip = phi ptr [ %i.io, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i115 ], [ %i.hp, %bb.ah ] ; 3 uses
  %i.iq = phi ptr [ %i.ik, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i115 ], [ %i.hv, %bb.ah ] ; 3 uses
  %i.ir = load float, ptr %3, align 4, !tbaa !11
  %i.is = fmul float %i.ir, %i.eu
  %i.it = load float, ptr %4, align 4, !tbaa !11
  %i.iu = fadd float %i.is, %i.it                 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.iq, %i.ip
  br i1 %.not.i.i119, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit118
  store float %i.iu, ptr %i.iq, align 4, !tbaa !11
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 2 uses
  store ptr %i.iv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit128

bb.an:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit118
  %i.iw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.ix = ptrtoint ptr %i.ip to i64
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = sub i64 %i.ix, %i.iy                    ; 5 uses
  %i.ja = icmp eq i64 %i.iz, 9223372036854775804
  br i1 %i.ja, label %bb.ao, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i120

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc126 unwind label %.loopexit.split-lp420

.noexc126:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i120: ; preds = %bb.an
  %i.jb = ashr exact i64 %i.iz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i121 = tail call i64 @llvm.umax.i64(i64 %i.jb, i64 1)
  %i.jc = add nsw i64 %.sroa.speculated.i.i.i.i121, %i.jb ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.jb
  %i.je = tail call i64 @llvm.umin.i64(i64 %i.jc, i64 2305843009213693951)
  %i.jf = select i1 %i.jd, i64 2305843009213693951, i64 %i.je ; 3 uses
  %.not.i.i.i.i122 = icmp ne i64 %i.jf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i122)
  %i.jg = shl nuw nsw i64 %i.jf, 2
  %i.jh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jg) #21
          to label %.noexc127 unwind label %.loopexit419 ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i120
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 %i.iz ; 2 uses
  store float %i.iu, ptr %i.ji, align 4, !tbaa !11
  %i.jj = icmp sgt i64 %i.iz, 0
  br i1 %i.jj, label %bb.ap, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123

bb.ap:                                            ; preds = %.noexc127
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jh, ptr align 4 %i.iw, i64 %i.iz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123: ; preds = %bb.ap, %.noexc127
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  %.not.i17.i.i.i124 = icmp eq ptr %i.iw, null
  br i1 %.not.i17.i.i.i124, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123
  %i.jl = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.jm, %i.iy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.jn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125: ; preds = %bb.aq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i123
  store ptr %i.jh, ptr %1, align 8, !tbaa !58
  store ptr %i.jk, ptr %i.l, align 8, !tbaa !57
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jf ; 2 uses
  store ptr %i.jo, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit128

_ZNSt6vectorIfSaIfEE9push_backEOf.exit128:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125, %bb.am
  %i.jp = phi ptr [ %i.jo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125 ], [ %i.ip, %bb.am ] ; 3 uses
  %i.jq = phi ptr [ %i.jk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i125 ], [ %i.iv, %bb.am ] ; 3 uses
  %i.jr = load float, ptr %i.au, align 4, !tbaa !11
  %i.js = fmul float %i.jr, %i.ev
  %i.jt = load float, ptr %i.av, align 4, !tbaa !11
  %i.ju = fadd float %i.js, %i.jt                 ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.jq, %i.jp
  br i1 %.not.i.i129, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit128
  store float %i.ju, ptr %i.jq, align 4, !tbaa !11
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 4 ; 2 uses
  store ptr %i.jv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit138

bb.as:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit128
  %i.jw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.jx = ptrtoint ptr %i.jp to i64
  %i.jy = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.jz = sub i64 %i.jx, %i.jy                    ; 5 uses
  %i.ka = icmp eq i64 %i.jz, 9223372036854775804
  br i1 %i.ka, label %bb.at, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i130

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc136 unwind label %.loopexit.split-lp425

.noexc136:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i130: ; preds = %bb.as
  %i.kb = ashr exact i64 %i.jz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i131 = tail call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %i.kc = add nsw i64 %.sroa.speculated.i.i.i.i131, %i.kb ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.kb
  %i.ke = tail call i64 @llvm.umin.i64(i64 %i.kc, i64 2305843009213693951)
  %i.kf = select i1 %i.kd, i64 2305843009213693951, i64 %i.ke ; 3 uses
  %.not.i.i.i.i132 = icmp ne i64 %i.kf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i132)
  %i.kg = shl nuw nsw i64 %i.kf, 2
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #21
          to label %.noexc137 unwind label %.loopexit424 ; 4 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i130
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 %i.jz ; 2 uses
  store float %i.ju, ptr %i.ki, align 4, !tbaa !11
  %i.kj = icmp sgt i64 %i.jz, 0
  br i1 %i.kj, label %bb.au, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i133

bb.au:                                            ; preds = %.noexc137
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kh, ptr align 4 %i.jw, i64 %i.jz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i133

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i133: ; preds = %bb.au, %.noexc137
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 4 ; 2 uses
  %.not.i17.i.i.i134 = icmp eq ptr %i.jw, null
  br i1 %.not.i17.i.i.i134, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i135, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i133
  %i.kl = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.km, %i.jy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.kn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i135

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i135: ; preds = %bb.av, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i133
  store ptr %i.kh, ptr %1, align 8, !tbaa !58
  store ptr %i.kk, ptr %i.l, align 8, !tbaa !57
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kf ; 2 uses
  store ptr %i.ko, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit138

_ZNSt6vectorIfSaIfEE9push_backEOf.exit138:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i135, %bb.ar
  %i.kp = phi ptr [ %i.ko, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i135 ], [ %i.jp, %bb.ar ] ; 3 uses
  %i.kq = phi ptr [ %i.kk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i135 ], [ %i.jv, %bb.ar ] ; 3 uses
  %i.kr = load float, ptr %i.aw, align 4, !tbaa !11
  %i.ks = fmul float %i.kr, %33
  %i.kt = load float, ptr %i.ax, align 4, !tbaa !11
  %i.ku = fadd float %i.ks, %i.kt                 ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.kq, %i.kp
  br i1 %.not.i.i139, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit138
  store float %i.ku, ptr %i.kq, align 4, !tbaa !11
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 2 uses
  store ptr %i.kv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit148

bb.ax:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit138
  %i.kw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.kx = ptrtoint ptr %i.kp to i64
  %i.ky = ptrtoint ptr %i.kw to i64               ; 2 uses
  %i.kz = sub i64 %i.kx, %i.ky                    ; 5 uses
  %i.la = icmp eq i64 %i.kz, 9223372036854775804
  br i1 %i.la, label %bb.ay, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i140

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc146 unwind label %.loopexit.split-lp430

.noexc146:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i140: ; preds = %bb.ax
  %i.lb = ashr exact i64 %i.kz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i141 = tail call i64 @llvm.umax.i64(i64 %i.lb, i64 1)
  %i.lc = add nsw i64 %.sroa.speculated.i.i.i.i141, %i.lb ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.lb
  %i.le = tail call i64 @llvm.umin.i64(i64 %i.lc, i64 2305843009213693951)
  %i.lf = select i1 %i.ld, i64 2305843009213693951, i64 %i.le ; 3 uses
  %.not.i.i.i.i142 = icmp ne i64 %i.lf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i142)
  %i.lg = shl nuw nsw i64 %i.lf, 2
  %i.lh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lg) #21
          to label %.noexc147 unwind label %.loopexit429 ; 4 uses

.noexc147:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i140
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 %i.kz ; 2 uses
  store float %i.ku, ptr %i.li, align 4, !tbaa !11
  %i.lj = icmp sgt i64 %i.kz, 0
  br i1 %i.lj, label %bb.az, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i143

bb.az:                                            ; preds = %.noexc147
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lh, ptr align 4 %i.kw, i64 %i.kz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i143

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i143: ; preds = %bb.az, %.noexc147
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 4 ; 2 uses
  %.not.i17.i.i.i144 = icmp eq ptr %i.kw, null
  br i1 %.not.i17.i.i.i144, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i145, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i143
  %i.ll = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = sub i64 %i.lm, %i.ky
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.ln) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i145

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i145: ; preds = %bb.ba, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i143
  store ptr %i.lh, ptr %1, align 8, !tbaa !58
  store ptr %i.lk, ptr %i.l, align 8, !tbaa !57
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lf ; 2 uses
  store ptr %i.lo, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit148

_ZNSt6vectorIfSaIfEE9push_backEOf.exit148:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i145, %bb.aw
  %i.lp = phi ptr [ %i.lo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i145 ], [ %i.kp, %bb.aw ] ; 3 uses
  %i.lq = phi ptr [ %i.lk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i145 ], [ %i.kv, %bb.aw ] ; 3 uses
  %i.lr = load float, ptr %3, align 4, !tbaa !11
  %i.ls = fmul float %i.lr, %i.fi
  %i.lt = load float, ptr %4, align 4, !tbaa !11
  %i.lu = fadd float %i.ls, %i.lt                 ; 2 uses
  %.not.i.i149 = icmp eq ptr %i.lq, %i.lp
  br i1 %.not.i.i149, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit148
  store float %i.lu, ptr %i.lq, align 4, !tbaa !11
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  store ptr %i.lv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit158

bb.bc:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit148
  %i.lw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.lx = ptrtoint ptr %i.lp to i64
  %i.ly = ptrtoint ptr %i.lw to i64               ; 2 uses
  %i.lz = sub i64 %i.lx, %i.ly                    ; 5 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775804
  br i1 %i.ma, label %bb.bd, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i150

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc156 unwind label %.loopexit.split-lp435

.noexc156:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i150: ; preds = %bb.bc
  %i.mb = ashr exact i64 %i.lz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i151 = tail call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i.i151, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = tail call i64 @llvm.umin.i64(i64 %i.mc, i64 2305843009213693951)
  %i.mf = select i1 %i.md, i64 2305843009213693951, i64 %i.me ; 3 uses
  %.not.i.i.i.i152 = icmp ne i64 %i.mf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i152)
  %i.mg = shl nuw nsw i64 %i.mf, 2
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #21
          to label %.noexc157 unwind label %.loopexit434 ; 4 uses

.noexc157:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i150
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 2 uses
  store float %i.lu, ptr %i.mi, align 4, !tbaa !11
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.be, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i153

bb.be:                                            ; preds = %.noexc157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i153

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i153: ; preds = %bb.be, %.noexc157
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4 ; 2 uses
  %.not.i17.i.i.i154 = icmp eq ptr %i.lw, null
  br i1 %.not.i17.i.i.i154, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i155, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i153
  %i.ml = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = sub i64 %i.mm, %i.ly
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.mn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i155

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i155: ; preds = %bb.bf, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i153
  store ptr %i.mh, ptr %1, align 8, !tbaa !58
  store ptr %i.mk, ptr %i.l, align 8, !tbaa !57
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mf ; 2 uses
  store ptr %i.mo, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit158

_ZNSt6vectorIfSaIfEE9push_backEOf.exit158:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i155, %bb.bb
  %i.mp = phi ptr [ %i.mo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i155 ], [ %i.lp, %bb.bb ] ; 3 uses
  %i.mq = phi ptr [ %i.mk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i155 ], [ %i.lv, %bb.bb ] ; 3 uses
  %i.mr = load float, ptr %i.au, align 4, !tbaa !11
  %i.ms = fmul float %i.mr, %i.fj
  %i.mt = load float, ptr %i.av, align 4, !tbaa !11
  %i.mu = fadd float %i.ms, %i.mt                 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.mq, %i.mp
  br i1 %.not.i.i159, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit158
  store float %i.mu, ptr %i.mq, align 4, !tbaa !11
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 4 ; 2 uses
  store ptr %i.mv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit168

bb.bh:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit158
  %i.mw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.mx = ptrtoint ptr %i.mp to i64
  %i.my = ptrtoint ptr %i.mw to i64               ; 2 uses
  %i.mz = sub i64 %i.mx, %i.my                    ; 5 uses
  %i.na = icmp eq i64 %i.mz, 9223372036854775804
  br i1 %i.na, label %bb.bi, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i160

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc166 unwind label %.loopexit.split-lp440

.noexc166:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i160: ; preds = %bb.bh
  %i.nb = ashr exact i64 %i.mz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i161 = tail call i64 @llvm.umax.i64(i64 %i.nb, i64 1)
  %i.nc = add nsw i64 %.sroa.speculated.i.i.i.i161, %i.nb ; 2 uses
  %i.nd = icmp ult i64 %i.nc, %i.nb
  %i.ne = tail call i64 @llvm.umin.i64(i64 %i.nc, i64 2305843009213693951)
  %i.nf = select i1 %i.nd, i64 2305843009213693951, i64 %i.ne ; 3 uses
  %.not.i.i.i.i162 = icmp ne i64 %i.nf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i162)
  %i.ng = shl nuw nsw i64 %i.nf, 2
  %i.nh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ng) #21
          to label %.noexc167 unwind label %.loopexit439 ; 4 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i160
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 %i.mz ; 2 uses
  store float %i.mu, ptr %i.ni, align 4, !tbaa !11
  %i.nj = icmp sgt i64 %i.mz, 0
  br i1 %i.nj, label %bb.bj, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i163

bb.bj:                                            ; preds = %.noexc167
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nh, ptr align 4 %i.mw, i64 %i.mz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i163

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i163: ; preds = %bb.bj, %.noexc167
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 4 ; 2 uses
  %.not.i17.i.i.i164 = icmp eq ptr %i.mw, null
  br i1 %.not.i17.i.i.i164, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i165, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i163
  %i.nl = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = sub i64 %i.nm, %i.my
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mw, i64 noundef %i.nn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i165

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i165: ; preds = %bb.bk, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i163
  store ptr %i.nh, ptr %1, align 8, !tbaa !58
  store ptr %i.nk, ptr %i.l, align 8, !tbaa !57
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nf ; 2 uses
  store ptr %i.no, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit168

_ZNSt6vectorIfSaIfEE9push_backEOf.exit168:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i165, %bb.bg
  %i.np = phi ptr [ %i.no, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i165 ], [ %i.mp, %bb.bg ] ; 3 uses
  %i.nq = phi ptr [ %i.nk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i165 ], [ %i.mv, %bb.bg ] ; 3 uses
  %i.nr = load float, ptr %i.aw, align 4, !tbaa !11
  %i.ns = fmul float %i.nr, %48
  %i.nt = load float, ptr %i.ax, align 4, !tbaa !11
  %i.nu = fadd float %i.ns, %i.nt                 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.nq, %i.np
  br i1 %.not.i.i169, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit168
  store float %i.nu, ptr %i.nq, align 4, !tbaa !11
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  store ptr %i.nv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit178

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit168
  %i.nw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.nx = ptrtoint ptr %i.np to i64
  %i.ny = ptrtoint ptr %i.nw to i64               ; 2 uses
  %i.nz = sub i64 %i.nx, %i.ny                    ; 5 uses
  %i.oa = icmp eq i64 %i.nz, 9223372036854775804
  br i1 %i.oa, label %bb.bn, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i170

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc176 unwind label %.loopexit.split-lp445

.noexc176:                                        ; preds = %bb.bn
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i170: ; preds = %bb.bm
  %i.ob = ashr exact i64 %i.nz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i171 = tail call i64 @llvm.umax.i64(i64 %i.ob, i64 1)
  %i.oc = add nsw i64 %.sroa.speculated.i.i.i.i171, %i.ob ; 2 uses
  %i.od = icmp ult i64 %i.oc, %i.ob
  %i.oe = tail call i64 @llvm.umin.i64(i64 %i.oc, i64 2305843009213693951)
  %i.of = select i1 %i.od, i64 2305843009213693951, i64 %i.oe ; 3 uses
  %.not.i.i.i.i172 = icmp ne i64 %i.of, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i172)
  %i.og = shl nuw nsw i64 %i.of, 2
  %i.oh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.og) #21
          to label %.noexc177 unwind label %.loopexit444 ; 4 uses

.noexc177:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i170
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 %i.nz ; 2 uses
  store float %i.nu, ptr %i.oi, align 4, !tbaa !11
  %i.oj = icmp sgt i64 %i.nz, 0
  br i1 %i.oj, label %bb.bo, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i173

bb.bo:                                            ; preds = %.noexc177
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oh, ptr align 4 %i.nw, i64 %i.nz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i173

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i173: ; preds = %bb.bo, %.noexc177
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 4 ; 2 uses
  %.not.i17.i.i.i174 = icmp eq ptr %i.nw, null
  br i1 %.not.i17.i.i.i174, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i175, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i173
  %i.ol = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = sub i64 %i.om, %i.ny
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.on) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i175

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i175: ; preds = %bb.bp, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i173
  store ptr %i.oh, ptr %1, align 8, !tbaa !58
  store ptr %i.ok, ptr %i.l, align 8, !tbaa !57
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.of ; 2 uses
  store ptr %i.oo, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit178

_ZNSt6vectorIfSaIfEE9push_backEOf.exit178:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i175, %bb.bl
  %i.op = phi ptr [ %i.oo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i175 ], [ %i.np, %bb.bl ] ; 3 uses
  %i.oq = phi ptr [ %i.ok, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i175 ], [ %i.nv, %bb.bl ] ; 3 uses
  %i.or = load float, ptr %3, align 4, !tbaa !11
  %i.os = fmul float %i.or, %71
  %i.ot = load float, ptr %4, align 4, !tbaa !11
  %i.ou = fadd float %i.os, %i.ot                 ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.oq, %i.op
  br i1 %.not.i.i179, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit178
  store float %i.ou, ptr %i.oq, align 4, !tbaa !11
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 4 ; 2 uses
  store ptr %i.ov, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit188

bb.br:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit178
  %i.ow = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.ox = ptrtoint ptr %i.op to i64
  %i.oy = ptrtoint ptr %i.ow to i64               ; 2 uses
  %i.oz = sub i64 %i.ox, %i.oy                    ; 5 uses
  %i.pa = icmp eq i64 %i.oz, 9223372036854775804
  br i1 %i.pa, label %bb.bs, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i180

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc186 unwind label %.loopexit.split-lp450

.noexc186:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i180: ; preds = %bb.br
  %i.pb = ashr exact i64 %i.oz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i181 = tail call i64 @llvm.umax.i64(i64 %i.pb, i64 1)
  %i.pc = add nsw i64 %.sroa.speculated.i.i.i.i181, %i.pb ; 2 uses
  %i.pd = icmp ult i64 %i.pc, %i.pb
  %i.pe = tail call i64 @llvm.umin.i64(i64 %i.pc, i64 2305843009213693951)
  %i.pf = select i1 %i.pd, i64 2305843009213693951, i64 %i.pe ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.pf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.pg = shl nuw nsw i64 %i.pf, 2
  %i.ph = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pg) #21
          to label %.noexc187 unwind label %.loopexit449 ; 4 uses

.noexc187:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i180
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 %i.oz ; 2 uses
  store float %i.ou, ptr %i.pi, align 4, !tbaa !11
  %i.pj = icmp sgt i64 %i.oz, 0
  br i1 %i.pj, label %bb.bt, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i183

bb.bt:                                            ; preds = %.noexc187
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ph, ptr align 4 %i.ow, i64 %i.oz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i183

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i183: ; preds = %bb.bt, %.noexc187
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 4 ; 2 uses
  %.not.i17.i.i.i184 = icmp eq ptr %i.ow, null
  br i1 %.not.i17.i.i.i184, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i185, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i183
  %i.pl = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = sub i64 %i.pm, %i.oy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ow, i64 noundef %i.pn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i185

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i185: ; preds = %bb.bu, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i183
  store ptr %i.ph, ptr %1, align 8, !tbaa !58
  store ptr %i.pk, ptr %i.l, align 8, !tbaa !57
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.pf ; 2 uses
  store ptr %i.po, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit188

_ZNSt6vectorIfSaIfEE9push_backEOf.exit188:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i185, %bb.bq
  %i.pp = phi ptr [ %i.po, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i185 ], [ %i.op, %bb.bq ] ; 3 uses
  %i.pq = phi ptr [ %i.pk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i185 ], [ %i.ov, %bb.bq ] ; 3 uses
  %i.pr = load float, ptr %i.au, align 4, !tbaa !11
  %i.ps = fmul float %i.pr, %i.fo
  %i.pt = load float, ptr %i.av, align 4, !tbaa !11
  %i.pu = fadd float %i.ps, %i.pt                 ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.pq, %i.pp
  br i1 %.not.i.i189, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit188
  store float %i.pu, ptr %i.pq, align 4, !tbaa !11
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  store ptr %i.pv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit198

bb.bw:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit188
  %i.pw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.px = ptrtoint ptr %i.pp to i64
  %i.py = ptrtoint ptr %i.pw to i64               ; 2 uses
  %i.pz = sub i64 %i.px, %i.py                    ; 5 uses
  %i.qa = icmp eq i64 %i.pz, 9223372036854775804
  br i1 %i.qa, label %bb.bx, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i190

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc196 unwind label %.loopexit.split-lp455

.noexc196:                                        ; preds = %bb.bx
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i190: ; preds = %bb.bw
  %i.qb = ashr exact i64 %i.pz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i191 = tail call i64 @llvm.umax.i64(i64 %i.qb, i64 1)
  %i.qc = add nsw i64 %.sroa.speculated.i.i.i.i191, %i.qb ; 2 uses
  %i.qd = icmp ult i64 %i.qc, %i.qb
  %i.qe = tail call i64 @llvm.umin.i64(i64 %i.qc, i64 2305843009213693951)
  %i.qf = select i1 %i.qd, i64 2305843009213693951, i64 %i.qe ; 3 uses
  %.not.i.i.i.i192 = icmp ne i64 %i.qf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i192)
  %i.qg = shl nuw nsw i64 %i.qf, 2
  %i.qh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qg) #21
          to label %.noexc197 unwind label %.loopexit454 ; 4 uses

.noexc197:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i190
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 %i.pz ; 2 uses
  store float %i.pu, ptr %i.qi, align 4, !tbaa !11
  %i.qj = icmp sgt i64 %i.pz, 0
  br i1 %i.qj, label %bb.by, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i193

bb.by:                                            ; preds = %.noexc197
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qh, ptr align 4 %i.pw, i64 %i.pz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i193

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i193: ; preds = %bb.by, %.noexc197
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 4 ; 2 uses
  %.not.i17.i.i.i194 = icmp eq ptr %i.pw, null
  br i1 %.not.i17.i.i.i194, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i195, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i193
  %i.ql = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = sub i64 %i.qm, %i.py
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pw, i64 noundef %i.qn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i195

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i195: ; preds = %bb.bz, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i193
  store ptr %i.qh, ptr %1, align 8, !tbaa !58
  store ptr %i.qk, ptr %i.l, align 8, !tbaa !57
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.qf ; 2 uses
  store ptr %i.qo, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit198

_ZNSt6vectorIfSaIfEE9push_backEOf.exit198:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i195, %bb.bv
  %i.qp = phi ptr [ %i.qo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i195 ], [ %i.pp, %bb.bv ] ; 2 uses
  %i.qq = phi ptr [ %i.qk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i195 ], [ %i.pv, %bb.bv ] ; 3 uses
  %i.qr = load float, ptr %i.aw, align 4, !tbaa !11
  %i.qs = fmul float %i.qr, %72
  %i.qt = load float, ptr %i.ax, align 4, !tbaa !11
  %i.qu = fadd float %i.qs, %i.qt                 ; 2 uses
  %.not.i.i199 = icmp eq ptr %i.qq, %i.qp
  br i1 %.not.i.i199, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit198
  store float %i.qu, ptr %i.qq, align 4, !tbaa !11
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  store ptr %i.qv, ptr %i.l, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit208

bb.cb:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit198
  %i.qw = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.qx = ptrtoint ptr %i.qp to i64
  %i.qy = ptrtoint ptr %i.qw to i64               ; 2 uses
  %i.qz = sub i64 %i.qx, %i.qy                    ; 5 uses
  %i.ra = icmp eq i64 %i.qz, 9223372036854775804
  br i1 %i.ra, label %bb.cc, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i200

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc206 unwind label %.loopexit.split-lp460

.noexc206:                                        ; preds = %bb.cc
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i200: ; preds = %bb.cb
  %i.rb = ashr exact i64 %i.qz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i201 = tail call i64 @llvm.umax.i64(i64 %i.rb, i64 1)
  %i.rc = add nsw i64 %.sroa.speculated.i.i.i.i201, %i.rb ; 2 uses
  %i.rd = icmp ult i64 %i.rc, %i.rb
  %i.re = tail call i64 @llvm.umin.i64(i64 %i.rc, i64 2305843009213693951)
  %i.rf = select i1 %i.rd, i64 2305843009213693951, i64 %i.re ; 3 uses
  %.not.i.i.i.i202 = icmp ne i64 %i.rf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i202)
  %i.rg = shl nuw nsw i64 %i.rf, 2
  %i.rh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rg) #21
          to label %.noexc207 unwind label %.loopexit459 ; 4 uses

.noexc207:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i200
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 %i.qz ; 2 uses
  store float %i.qu, ptr %i.ri, align 4, !tbaa !11
  %i.rj = icmp sgt i64 %i.qz, 0
  br i1 %i.rj, label %bb.cd, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i203

bb.cd:                                            ; preds = %.noexc207
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rh, ptr align 4 %i.qw, i64 %i.qz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i203

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i203: ; preds = %bb.cd, %.noexc207
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  %.not.i17.i.i.i204 = icmp eq ptr %i.qw, null
  br i1 %.not.i17.i.i.i204, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i205, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i203
  %i.rl = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = sub i64 %i.rm, %i.qy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.rn) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i205

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i205: ; preds = %bb.ce, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i203
  store ptr %i.rh, ptr %1, align 8, !tbaa !58
  store ptr %i.rk, ptr %i.l, align 8, !tbaa !57
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.rf
  store ptr %i.ro, ptr %i.at, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit208

_ZNSt6vectorIfSaIfEE9push_backEOf.exit208:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i205, %bb.ca
  %i.rp = load ptr, ptr %i.o, align 8, !tbaa !57  ; 7 uses
  %i.rq = load ptr, ptr %i.ba, align 8, !tbaa !67 ; 3 uses
  %.not.i209 = icmp eq ptr %i.rp, %i.rq           ; 2 uses
  br i1 %i.ay, label %bb.cf, label %bb.cw

bb.cf:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit208
  br i1 %.not.i209, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store float %6, ptr %i.rp, align 4, !tbaa !11
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 4 ; 2 uses
  store ptr %i.rr, ptr %i.o, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.ch:                                            ; preds = %bb.cf
  %i.rs = load ptr, ptr %2, align 8, !tbaa !58    ; 4 uses
  %i.rt = ptrtoint ptr %i.rp to i64
  %i.ru = ptrtoint ptr %i.rs to i64               ; 2 uses
  %i.rv = sub i64 %i.rt, %i.ru                    ; 5 uses
  %i.rw = icmp eq i64 %i.rv, 9223372036854775804
  br i1 %i.rw, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ct, %bb.cp, %bb.cl, %bb.ch, %bb.dk, %bb.dg, %bb.dc, %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.cont unwind label %.loopexit.split-lp465

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ch
  %i.rx = ashr exact i64 %i.rv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i210 = tail call i64 @llvm.umax.i64(i64 %i.rx, i64 1)
  %i.ry = add nsw i64 %.sroa.speculated.i.i.i210, %i.rx ; 2 uses
  %i.rz = icmp ult i64 %i.ry, %i.rx
  %i.sa = tail call i64 @llvm.umin.i64(i64 %i.ry, i64 2305843009213693951)
  %i.sb = select i1 %i.rz, i64 2305843009213693951, i64 %i.sa ; 3 uses
  %.not.i.i.i211 = icmp ne i64 %i.sb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i211)
  %i.sc = shl nuw nsw i64 %i.sb, 2
  %i.sd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sc) #21
          to label %.noexc213 unwind label %.loopexit464 ; 4 uses

.noexc213:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.se = getelementptr inbounds i8, ptr %i.sd, i64 %i.rv ; 2 uses
  store float %6, ptr %i.se, align 4, !tbaa !11
  %i.sf = icmp sgt i64 %i.rv, 0
  br i1 %i.sf, label %bb.ci, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.ci:                                            ; preds = %.noexc213
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sd, ptr align 4 %i.rs, i64 %i.rv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.ci, %.noexc213
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.sh = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.si = ptrtoint ptr %i.sh to i64
  %i.sj = sub i64 %i.si, %i.ru
  tail call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef %i.sj) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.cj, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.sd, ptr %2, align 8, !tbaa !58
  store ptr %i.sg, ptr %i.o, align 8, !tbaa !57
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.sb ; 2 uses
  store ptr %i.sk, ptr %i.ba, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.cg
  %i.sl = phi ptr [ %i.sk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.rq, %bb.cg ] ; 3 uses
  %i.sm = phi ptr [ %i.sg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.rr, %bb.cg ] ; 3 uses
  %.not.i214 = icmp eq ptr %i.sm, %i.sl
  br i1 %.not.i214, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  store float %6, ptr %i.sm, align 4, !tbaa !11
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 4 ; 2 uses
  store ptr %i.sn, ptr %i.o, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit223

bb.cl:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.so = load ptr, ptr %2, align 8, !tbaa !58    ; 4 uses
  %i.sp = ptrtoint ptr %i.sl to i64
  %i.sq = ptrtoint ptr %i.so to i64               ; 2 uses
  %i.sr = sub i64 %i.sp, %i.sq                    ; 5 uses
  %i.ss = icmp eq i64 %i.sr, 9223372036854775804
  br i1 %i.ss, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i215

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i215: ; preds = %bb.cl
  %i.st = ashr exact i64 %i.sr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i216 = tail call i64 @llvm.umax.i64(i64 %i.st, i64 1)
  %i.su = add nsw i64 %.sroa.speculated.i.i.i216, %i.st ; 2 uses
  %i.sv = icmp ult i64 %i.su, %i.st
  %i.sw = tail call i64 @llvm.umin.i64(i64 %i.su, i64 2305843009213693951)
  %i.sx = select i1 %i.sv, i64 2305843009213693951, i64 %i.sw ; 3 uses
  %.not.i.i.i217 = icmp ne i64 %i.sx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i217)
  %i.sy = shl nuw nsw i64 %i.sx, 2
  %i.sz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sy) #21
          to label %.noexc222 unwind label %.loopexit464 ; 4 uses

.noexc222:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i215
  %i.ta = getelementptr inbounds i8, ptr %i.sz, i64 %i.sr ; 2 uses
  store float %6, ptr %i.ta, align 4, !tbaa !11
  %i.tb = icmp sgt i64 %i.sr, 0
  br i1 %i.tb, label %bb.cm, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i218

bb.cm:                                            ; preds = %.noexc222
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sz, ptr align 4 %i.so, i64 %i.sr, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i218

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i218: ; preds = %bb.cm, %.noexc222
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 2 uses
  %.not.i17.i.i219 = icmp eq ptr %i.so, null
  br i1 %.not.i17.i.i219, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i220, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i218
  %i.td = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = sub i64 %i.te, %i.sq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef %i.tf) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i220

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i220: ; preds = %bb.cn, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i218
  store ptr %i.sz, ptr %2, align 8, !tbaa !58
  store ptr %i.tc, ptr %i.o, align 8, !tbaa !57
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.sx ; 2 uses
  store ptr %i.tg, ptr %i.ba, align 8, !tbaa !67
end_hunk_0
