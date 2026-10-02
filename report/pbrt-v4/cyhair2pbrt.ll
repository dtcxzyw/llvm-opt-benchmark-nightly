Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/cyhair2pbrt?download=true
inline.NumInlined: 422
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6cyhair6CyHair19ToCubicBezierCurvesEPSt6vectorIfSaIfEES4_PKfS6_if:bb.a
  br i1 %.not.i.i.i286, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit93
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit93
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !39
  %.not.i1.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 67
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.ai, %bb.e ], [ %i.am, %bb.f ]
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext %.0.i.i.i)
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) ; 0 uses
  %i.ap = sext i32 %.082 to i64
  %.not = icmp eq i32 %.082, 0
  br i1 %.not, label %.loopexit475, label %.lr.ph584

.lr.ph584:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 25 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ay = fcmp ogt float %6, 0.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 17 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph584, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit
  %.081583 = phi i64 [ 0, %.lr.ph584 ], [ %i.abt, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit ] ; 5 uses
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
  %i.dq = getelementptr [12 x i8], ptr %.sroa.0321.1, i64 %i.do ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 -12
  %.sroa.0338.0.copyload = load float, ptr %i.dr, align 4, !tbaa !11
  %.sroa.9343.0..sroa_idx = getelementptr i8, ptr %i.dq, i64 -8
  %i.ds = load <2 x float>, ptr %.sroa.9343.0..sroa_idx, align 4, !tbaa !11
  br label %_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit

_ZN6cyhairL22CamullRomToCubicBezierEPNS_5real3EPKS0_ii.exit: ; preds = %bb.v, %bb.w
  %.sroa.17.0.in = phi ptr [ %i.dq, %bb.w ], [ %.sroa.0321.1, %bb.v ] ; 6 uses
  %.sroa.0338.0 = phi float [ %.sroa.0338.0.copyload, %bb.w ], [ 0.000000e+00, %bb.v ] ; 4 uses
  %_ZN6cyhairL6toC2B1E.sink.i = phi ptr [ @_ZN6cyhairL5toC2BE, %bb.w ], [ @_ZN6cyhairL6toC2B0E, %bb.v ] ; 16 uses
  %i.dt = phi <2 x float> [ %i.ds, %bb.w ], [ zeroinitializer, %bb.v ] ; 3 uses
  %.sroa.53.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 28
  %.sroa.47.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 24
  %.sroa.47.0 = load float, ptr %.sroa.47.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.39.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 16
  %.sroa.32.0.in = getelementptr i8, ptr %.sroa.17.0.in, i64 12
  %.sroa.24.0.in = getelementptr inbounds nuw i8, ptr %.sroa.17.0.in, i64 4
  %.sroa.32.0 = load float, ptr %.sroa.32.0.in, align 4, !tbaa !11 ; 4 uses
  %.sroa.17.0 = load float, ptr %.sroa.17.0.in, align 4, !tbaa !11 ; 4 uses
  %i.du = load float, ptr %_ZN6cyhairL6toC2B1E.sink.i, align 16, !tbaa !11 ; 3 uses
  %i.dv = fmul float %.sroa.0338.0, %i.du
  %i.dw = extractelement <2 x float> %i.dt, i64 0 ; 3 uses
  %i.dx = fmul float %i.dw, %i.du
  %i.dy = extractelement <2 x float> %i.dt, i64 1 ; 3 uses
  %i.dz = fmul float %i.dy, %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !11 ; 3 uses
  %i.ec = fmul float %.sroa.17.0, %i.eb
  %i.ed = fadd float %i.dv, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 8
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !11 ; 3 uses
  %i.eg = fmul float %.sroa.32.0, %i.ef
  %i.eh = fadd float %i.ed, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !11 ; 3 uses
  %i.ek = fmul float %.sroa.47.0, %i.ej
  %i.el = fadd float %i.eh, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 16
  %i.en = load float, ptr %i.em, align 16, !tbaa !11 ; 3 uses
  %i.eo = fmul float %.sroa.0338.0, %i.en
  %i.ep = fmul float %i.dw, %i.en
  %i.eq = fmul float %i.dy, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 20
  %i.es = load float, ptr %i.er, align 4, !tbaa !11 ; 3 uses
  %i.et = fmul float %.sroa.17.0, %i.es
  %i.eu = fadd float %i.eo, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 24
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !11 ; 3 uses
  %i.ex = fmul float %.sroa.32.0, %i.ew
  %i.ey = fadd float %i.eu, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 28
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !11 ; 3 uses
  %i.fb = fmul float %.sroa.47.0, %i.fa
  %i.fc = fadd float %i.ey, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 32
  %i.fe = load float, ptr %i.fd, align 16, !tbaa !11 ; 3 uses
  %i.ff = fmul float %.sroa.0338.0, %i.fe
  %i.fg = fmul float %i.dw, %i.fe
  %i.fh = fmul float %i.dy, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 36
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !11 ; 3 uses
  %i.fk = fmul float %.sroa.17.0, %i.fj
  %i.fl = fadd float %i.ff, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 40
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !11 ; 3 uses
  %i.fo = fmul float %.sroa.32.0, %i.fn
  %i.fp = fadd float %i.fl, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 44
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !11 ; 3 uses
  %i.fs = fmul float %.sroa.47.0, %i.fr
  %i.ft = fadd float %i.fp, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 48
  %i.fv = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 52
  %i.fw = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 56
  %i.fx = getelementptr inbounds nuw i8, ptr %_ZN6cyhairL6toC2B1E.sink.i, i64 60
  %i.fy = load <2 x float>, ptr %.sroa.53.0.in, align 4, !tbaa !11 ; 3 uses
  %i.fz = load <2 x float>, ptr %.sroa.39.0.in, align 4, !tbaa !11 ; 3 uses
  %i.ga = load <2 x float>, ptr %.sroa.24.0.in, align 4, !tbaa !11 ; 3 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 0 ; 3 uses
  %i.gc = fmul float %i.gb, %i.eb
  %i.gd = extractelement <2 x float> %i.ga, i64 1 ; 3 uses
  %i.ge = fmul float %i.gd, %i.eb
  %i.gf = fadd float %i.dx, %i.gc
  %i.gg = fadd float %i.dz, %i.ge
  %i.gh = extractelement <2 x float> %i.fz, i64 0 ; 3 uses
  %i.gi = fmul float %i.gh, %i.ef
  %i.gj = extractelement <2 x float> %i.fz, i64 1 ; 3 uses
  %i.gk = fmul float %i.gj, %i.ef
  %i.gl = fadd float %i.gf, %i.gi
  %i.gm = fadd float %i.gg, %i.gk
  %i.gn = extractelement <2 x float> %i.fy, i64 0 ; 3 uses
  %i.go = fmul float %i.gn, %i.ej
  %i.gp = extractelement <2 x float> %i.fy, i64 1 ; 3 uses
  %i.gq = fmul float %i.gp, %i.ej
  %i.gr = fadd float %i.gl, %i.go
  %i.gs = fadd float %i.gm, %i.gq
  %i.gt = fmul float %i.gb, %i.es
  %i.gu = fmul float %i.gd, %i.es
  %i.gv = fadd float %i.ep, %i.gt
  %i.gw = fadd float %i.eq, %i.gu
  %i.gx = fmul float %i.gh, %i.ew
  %i.gy = fmul float %i.gj, %i.ew
  %i.gz = fadd float %i.gv, %i.gx
  %i.ha = fadd float %i.gw, %i.gy
  %i.hb = fmul float %i.gn, %i.fa
  %i.hc = fmul float %i.gp, %i.fa
  %i.hd = fadd float %i.gz, %i.hb
  %i.he = fadd float %i.ha, %i.hc
  %i.hf = fmul float %i.gb, %i.fj
  %i.hg = fmul float %i.gd, %i.fj
  %i.hh = fadd float %i.fg, %i.hf
  %i.hi = fadd float %i.fh, %i.hg
  %i.hj = fmul float %i.gh, %i.fn
  %i.hk = fmul float %i.gj, %i.fn
  %i.hl = fadd float %i.hh, %i.hj
  %i.hm = fadd float %i.hi, %i.hk
  %i.hn = fmul float %i.gn, %i.fr
  %i.ho = fmul float %i.gp, %i.fr
  %i.hp = fadd float %i.hl, %i.hn
  %i.hq = fadd float %i.hm, %i.ho
  %i.hr = load float, ptr %i.fu, align 16, !tbaa !11 ; 2 uses
  %i.hs = fmul float %.sroa.0338.0, %i.hr
  %i.ht = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x float> %i.dt, %i.hu
  %i.hw = load float, ptr %i.fv, align 4, !tbaa !11 ; 2 uses
  %i.hx = fmul float %.sroa.17.0, %i.hw
  %i.hy = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x float> %i.ga, %i.hz
  %i.ib = fadd float %i.hs, %i.hx
  %i.ic = fadd <2 x float> %i.hv, %i.ia
  %i.id = load float, ptr %i.fw, align 8, !tbaa !11 ; 2 uses
  %i.ie = fmul float %.sroa.32.0, %i.id
  %i.if = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x float> %i.fz, %i.ig
  %i.ii = fadd float %i.ib, %i.ie
  %i.ij = fadd <2 x float> %i.ic, %i.ih
  %i.ik = load float, ptr %i.fx, align 4, !tbaa !11 ; 2 uses
  %i.il = fmul float %.sroa.47.0, %i.ik
  %i.im = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x float> %i.fy, %i.in
  %i.ip = fadd float %i.ii, %i.il
  %i.iq = fadd <2 x float> %i.ij, %i.io           ; 2 uses
  %i.ir = load float, ptr %3, align 4, !tbaa !11
  %i.is = fmul float %i.ir, %i.el
  %i.it = load float, ptr %4, align 4, !tbaa !11
  %i.iu = fadd float %i.is, %i.it                 ; 2 uses
  %i.iv = load ptr, ptr %i.l, align 8, !tbaa !57  ; 4 uses
  %i.iw = load ptr, ptr %i.at, align 8, !tbaa !67 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.iv, %i.iw
  br i1 %.not.i.i96, label %bb.y, label %bb.x
end_hunk_0
begin_hunk_1_@_ZN6cyhair6CyHair19ToCubicBezierCurvesEPSt6vectorIfSaIfEES4_PKfS6_if:bb.a

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260: ; preds = %bb.de, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i258
  store ptr %i.zo, ptr %2, align 8, !tbaa !58
  store ptr %i.zs, ptr %i.o, align 8, !tbaa !57
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.zm ; 2 uses
  store ptr %i.zw, ptr %i.ba, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit263

_ZNSt6vectorIfSaIfEE9push_backERKf.exit263:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260, %bb.db
  %i.zx = phi ptr [ %i.zw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260 ], [ %i.yz, %bb.db ] ; 3 uses
  %i.zy = phi ptr [ %i.zs, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260 ], [ %i.zc, %bb.db ] ; 3 uses
  %.not.i264 = icmp eq ptr %i.zy, %i.zx
  br i1 %.not.i264, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit263
  %i.zz = load float, ptr %i.az, align 8, !tbaa !11
  store float %i.zz, ptr %i.zy, align 4, !tbaa !11
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 4 ; 2 uses
  store ptr %i.aaa, ptr %i.o, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit273

bb.dg:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit263
  %i.aab = load ptr, ptr %2, align 8, !tbaa !58   ; 4 uses
  %i.aac = ptrtoint ptr %i.zx to i64
  %i.aad = ptrtoint ptr %i.aab to i64             ; 2 uses
  %i.aae = sub i64 %i.aac, %i.aad                 ; 5 uses
  %i.aaf = icmp eq i64 %i.aae, 9223372036854775804
  br i1 %i.aaf, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i265

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i265: ; preds = %bb.dg
  %i.aag = ashr exact i64 %i.aae, 2               ; 3 uses
  %.sroa.speculated.i.i.i266 = tail call i64 @llvm.umax.i64(i64 %i.aag, i64 1)
  %i.aah = add nsw i64 %.sroa.speculated.i.i.i266, %i.aag ; 2 uses
  %i.aai = icmp ult i64 %i.aah, %i.aag
  %i.aaj = tail call i64 @llvm.umin.i64(i64 %i.aah, i64 2305843009213693951)
  %i.aak = select i1 %i.aai, i64 2305843009213693951, i64 %i.aaj ; 3 uses
  %.not.i.i.i267 = icmp ne i64 %i.aak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i267)
  %i.aal = shl nuw nsw i64 %i.aak, 2
  %i.aam = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aal) #21
          to label %.noexc272 unwind label %.loopexit464 ; 4 uses

.noexc272:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i265
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 %i.aae ; 2 uses
  %i.aao = load float, ptr %i.az, align 8, !tbaa !11
  store float %i.aao, ptr %i.aan, align 4, !tbaa !11
  %i.aap = icmp sgt i64 %i.aae, 0
  br i1 %i.aap, label %bb.dh, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268

bb.dh:                                            ; preds = %.noexc272
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aam, ptr align 4 %i.aab, i64 %i.aae, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268: ; preds = %bb.dh, %.noexc272
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 4 ; 2 uses
  %.not.i17.i.i269 = icmp eq ptr %i.aab, null
  br i1 %.not.i17.i.i269, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268
  %i.aar = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.aas = ptrtoint ptr %i.aar to i64
  %i.aat = sub i64 %i.aas, %i.aad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aab, i64 noundef %i.aat) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270: ; preds = %bb.di, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268
  store ptr %i.aam, ptr %2, align 8, !tbaa !58
  store ptr %i.aaq, ptr %i.o, align 8, !tbaa !57
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %i.aak ; 2 uses
  store ptr %i.aau, ptr %i.ba, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit273

_ZNSt6vectorIfSaIfEE9push_backERKf.exit273:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270, %bb.df
  %i.aav = phi ptr [ %i.aau, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270 ], [ %i.zx, %bb.df ] ; 2 uses
  %i.aaw = phi ptr [ %i.aaq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270 ], [ %i.aaa, %bb.df ] ; 3 uses
  %.not.i274 = icmp eq ptr %i.aaw, %i.aav
  br i1 %.not.i274, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit273
  %i.aax = load float, ptr %i.az, align 8, !tbaa !11
  store float %i.aax, ptr %i.aaw, align 4, !tbaa !11
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 4
  store ptr %i.aay, ptr %i.o, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243

bb.dk:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit273
  %i.aaz = load ptr, ptr %2, align 8, !tbaa !58   ; 4 uses
  %i.aba = ptrtoint ptr %i.aav to i64
  %i.abb = ptrtoint ptr %i.aaz to i64             ; 2 uses
  %i.abc = sub i64 %i.aba, %i.abb                 ; 5 uses
  %i.abd = icmp eq i64 %i.abc, 9223372036854775804
  br i1 %i.abd, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i275

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i275: ; preds = %bb.dk
  %i.abe = ashr exact i64 %i.abc, 2               ; 3 uses
  %.sroa.speculated.i.i.i276 = tail call i64 @llvm.umax.i64(i64 %i.abe, i64 1)
  %i.abf = add nsw i64 %.sroa.speculated.i.i.i276, %i.abe ; 2 uses
  %i.abg = icmp ult i64 %i.abf, %i.abe
  %i.abh = tail call i64 @llvm.umin.i64(i64 %i.abf, i64 2305843009213693951)
  %i.abi = select i1 %i.abg, i64 2305843009213693951, i64 %i.abh ; 3 uses
  %.not.i.i.i277 = icmp ne i64 %i.abi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i277)
  %i.abj = shl nuw nsw i64 %i.abi, 2
  %i.abk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abj) #21
          to label %.noexc282 unwind label %.loopexit464 ; 4 uses

.noexc282:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i275
  %i.abl = getelementptr inbounds i8, ptr %i.abk, i64 %i.abc ; 2 uses
  %i.abm = load float, ptr %i.az, align 8, !tbaa !11
  store float %i.abm, ptr %i.abl, align 4, !tbaa !11
  %i.abn = icmp sgt i64 %i.abc, 0
  br i1 %i.abn, label %bb.dl, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278

bb.dl:                                            ; preds = %.noexc282
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.abk, ptr align 4 %i.aaz, i64 %i.abc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278: ; preds = %bb.dl, %.noexc282
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %.not.i17.i.i279 = icmp eq ptr %i.aaz, null
  br i1 %.not.i17.i.i279, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i280, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278
  %i.abp = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.abq = ptrtoint ptr %i.abp to i64
  %i.abr = sub i64 %i.abq, %i.abb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aaz, i64 noundef %i.abr) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i280

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i280: ; preds = %bb.dm, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278
  store ptr %i.abk, ptr %2, align 8, !tbaa !58
  store ptr %i.abo, ptr %i.o, align 8, !tbaa !57
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.abi
  store ptr %i.abs, ptr %i.ba, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243

_ZNSt6vectorIfSaIfEE9push_backERKf.exit243:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i280, %bb.dj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i240, %bb.cs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond661.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond661.not, label %._crit_edge, label %bb.v, !llvm.loop !79

.thread:                                          ; preds = %.loopexit459, %.loopexit.split-lp460, %.loopexit454, %.loopexit.split-lp455, %.loopexit449, %.loopexit.split-lp450, %.loopexit444, %.loopexit.split-lp445, %.loopexit439, %.loopexit.split-lp440, %.loopexit434, %.loopexit.split-lp435, %.loopexit429, %.loopexit.split-lp430, %.loopexit424, %.loopexit.split-lp425, %.loopexit419, %.loopexit.split-lp420, %.loopexit414, %.loopexit.split-lp415, %.loopexit409, %.loopexit.split-lp410, %.loopexit, %.loopexit.split-lp, %.loopexit464, %.loopexit.split-lp465
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp467, %.loopexit.split-lp465 ], [ %lpad.loopexit.split-lp457, %.loopexit.split-lp455 ], [ %lpad.loopexit.split-lp452, %.loopexit.split-lp450 ], [ %lpad.loopexit.split-lp447, %.loopexit.split-lp445 ], [ %lpad.loopexit.split-lp442, %.loopexit.split-lp440 ], [ %lpad.loopexit.split-lp437, %.loopexit.split-lp435 ], [ %lpad.loopexit.split-lp432, %.loopexit.split-lp430 ], [ %lpad.loopexit.split-lp427, %.loopexit.split-lp425 ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ], [ %lpad.loopexit.split-lp417, %.loopexit.split-lp415 ], [ %lpad.loopexit.split-lp412, %.loopexit.split-lp410 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit466, %.loopexit464 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit411, %.loopexit409 ], [ %lpad.loopexit416, %.loopexit414 ], [ %lpad.loopexit421, %.loopexit419 ], [ %lpad.loopexit426, %.loopexit424 ], [ %lpad.loopexit431, %.loopexit429 ], [ %lpad.loopexit436, %.loopexit434 ], [ %lpad.loopexit441, %.loopexit439 ], [ %lpad.loopexit446, %.loopexit444 ], [ %lpad.loopexit451, %.loopexit449 ], [ %lpad.loopexit456, %.loopexit454 ], [ %lpad.loopexit461, %.loopexit459 ], [ %lpad.loopexit.split-lp462, %.loopexit.split-lp460 ]
  %.pre = ptrtoint ptr %.sroa.13.1 to i64
  %.pre663 = ptrtoint ptr %.sroa.0321.1 to i64
  %.pre665 = sub i64 %.pre, %.pre663
  br label %bb.do

_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit:    ; preds = %bb.u, %._crit_edge, %bb.o
  %i.abt = add nuw i64 %.081583, 1                ; 2 uses
  %exitcond662.not = icmp eq i64 %i.abt, %i.ap
  br i1 %exitcond662.not, label %.loopexit475, label %bb.g, !llvm.loop !80

.loopexit470:                                     ; preds = %_ZNKSt6vectorIN6cyhair5real3ESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit472 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

.loopexit.split-lp471:                            ; preds = %bb.s
  %lpad.loopexit.split-lp473 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dn:                                            ; preds = %.loopexit.split-lp471, %.loopexit470
  %lpad.phi474 = phi { ptr, i32 } [ %lpad.loopexit472, %.loopexit470 ], [ %lpad.loopexit.split-lp473, %.loopexit.split-lp471 ] ; 2 uses
  %.not.i.i.i284 = icmp eq ptr %.sroa.0321.0578, null
  br i1 %.not.i.i.i284, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit285, label %bb.do

bb.do:                                            ; preds = %.thread, %bb.dn
  %.pre-phi666 = phi i64 [ %.pre665, %.thread ], [ %i.cx, %bb.dn ]
  %.sroa.0321.0530 = phi ptr [ %.sroa.0321.1, %.thread ], [ %.sroa.0321.0578, %bb.dn ]
  %.pn89407 = phi { ptr, i32 } [ %.pn, %.thread ], [ %lpad.phi474, %bb.dn ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0321.0530, i64 noundef %.pre-phi666) #22
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit285

_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit285: ; preds = %bb.dn, %bb.do
  %.pn89408 = phi { ptr, i32 } [ %lpad.phi474, %bb.dn ], [ %.pn89407, %bb.do ]
  resume { ptr, i32 } %.pn89408

.loopexit475:                                     ; preds = %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a, %bb.b
  %.083 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ true, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit ]
  ret i1 %.083
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cyhair::CyHair", align 8    ; 12 uses
  %3 = alloca %"class.std::vector.0", align 8     ; 11 uses
  %4 = alloca %"class.std::vector.0", align 8     ; 11 uses
  %i.a = alloca [3 x float], align 4              ; 5 uses
  %i.b = icmp slt i32 %0, 3
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 4 uses
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(7) @.str.17) #23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %sub_0

sub_0:                                            ; preds = %bb.b
  %i.g = load i8, ptr %i.d, align 1
  %.not93 = icmp eq i8 %i.g, 45
  br i1 %.not93, label %sub_1, label %sub_083

sub_1:                                            ; preds = %sub_0
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %.not94 = icmp eq i8 %i.i, 104
  br i1 %.not94, label %.tail, label %sub_083

.tail:                                            ; preds = %sub_1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %sub_083

bb.c:                                             ; preds = %.tail, %bb.b, %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !92
  %fwrite67 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 86, i64 1, ptr %i.m) #24 ; 0 uses
  br label %bb.aa

sub_083:                                          ; preds = %sub_1, %sub_0, %.tail
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90   ; 3 uses
  %i.p = load i8, ptr %i.o, align 1
  %.not95 = icmp eq i8 %i.p, 45
  br i1 %.not95, label %.tail82, label %.tail82.thread

.tail82:                                          ; preds = %sub_083
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %.tail82.thread

bb.d:                                             ; preds = %.tail82
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !92
  br label %bb.e

.tail82.thread:                                   ; preds = %sub_083, %.tail82
  %i.u = tail call noalias ptr @fopen(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.21)
  br label %bb.e

bb.e:                                             ; preds = %.tail82.thread, %bb.d
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.u, %.tail82.thread ] ; 20 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !90
  tail call void @perror(ptr noundef %i.w) #24
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %.not63 = icmp eq i32 %0, 3
  br i1 %.not63, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.z = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.y, ptr noundef null, i32 noundef 10) #19, !inline_history !85
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp samesign ugt i32 %0, 4
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !90
  %i.ae = tail call double @strtod(ptr noundef nonnull captures(none) %i.ad, ptr noundef null) #19, !inline_history !86
  %i.af = fptrunc double %i.ae to float
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.h
  %.05980 = phi i32 [ %i.aa, %bb.i ], [ %i.aa, %bb.h ], [ -1, %bb.g ]
  %.058 = phi float [ %i.af, %bb.i ], [ 1.000000e+00, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %i.ag, i8 0, i64 132, i1 false)
  store i32 -1, ptr %i.ah, align 4, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x3C23D70A, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 280
  store float 5.000000e-01, ptr %i.ak, align 8, !tbaa !11
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.am = invoke noundef zeroext i1 @_ZN6cyhair6CyHair4LoadEPKc(ptr noundef nonnull align 8 dereferenceable(312) %2, ptr noundef %i.al)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.thread
  br i1 %i.am, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.22, ptr noundef %i.ao) #25 ; 0 uses
  br label %bb.y

bb.l:                                             ; preds = %.thread
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.ar = invoke noundef zeroext i1 @_ZN6cyhair6CyHair19ToCubicBezierCurvesEPSt6vectorIfSaIfEES4_PKfS6_if(ptr noundef nonnull align 8 dereferenceable(312) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @__const.main.vertex_scale, ptr noundef nonnull %i.a, i32 noundef %.05980, float noundef %.058)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.ar, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !92
  %fwrite = call i64 @fwrite(ptr nonnull @.str.23, i64 30, i64 1, ptr %i.as) #24 ; 0 uses
  %.pre106 = load ptr, ptr %4, align 8, !tbaa !58
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.au = load ptr, ptr %4, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ba = load ptr, ptr %3, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIfSaIfEED2Ev.exit69, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit69

_ZNSt6vectorIfSaIfEED2Ev.exit69:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.z

bb.s:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = load ptr, ptr %3, align 8, !tbaa !58    ; 5 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 3 uses
  %i.bn = udiv i64 %i.bm, 3                       ; 3 uses
  %.not96 = icmp ult i64 %i.bm, 3
  %.pre = load ptr, ptr %4, align 8, !tbaa !58    ; 6 uses
  br i1 %.not96, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %xtraiter = and i64 %i.bn, 1
  %.off = add nsw i64 %i.bm, -3
  %i.bo = icmp ult i64 %.off, 3
  br i1 %i.bo, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bn, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.1.epil.init = phi double [ 1.000000e+30, %.lr.ph.preheader ], [ %.sroa.speculated76.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.23.1.epil.init = phi double [ -1.000000e+30, %.lr.ph.preheader ], [ %.sroa.speculated.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.05587.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ex, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <4 x double> [ <double 1.000000e+30, double 1.000000e+30, double -1.000000e+30, double -1.000000e+30>, %.lr.ph.preheader ], [ %i.et, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i64 %i.bn to i1
  call void @llvm.assume(i1 %lcmp.mod117)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.05587.epil.init
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11
  %i.br = fpext float %i.bq to double             ; 3 uses
  %.idx81.epil = mul nuw i64 %.05587.epil.init, 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx81.epil
  %i.bt = load <3 x float>, ptr %i.bs, align 4, !tbaa !11
  %i.bu = shufflevector <3 x float> %i.bt, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bv = fpext <4 x float> %i.bu to <4 x double> ; 4 uses
  %i.bw = extractelement <4 x double> %i.bv, i64 2
  %i.bx = fsub double %i.bw, %i.br                ; 2 uses
  %i.by = fcmp olt double %i.bx, %.sroa.0.1.epil.init
  %.sroa.speculated76.epil = select i1 %i.by, double %i.bx, double %.sroa.0.1.epil.init
  %i.bz = insertelement <4 x double> poison, double %i.br, i64 0
  %i.ca = shufflevector <4 x double> %i.bz, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = fsub <4 x double> %i.bv, %i.ca          ; 2 uses
  %i.cc = fadd <4 x double> %i.ca, %i.bv          ; 2 uses
  %i.cd = shufflevector <4 x double> %i.cb, <4 x double> %i.cc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ce = shufflevector <4 x double> %i.cb, <4 x double> %.epil.init, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cf = shufflevector <4 x double> %.epil.init, <4 x double> %i.cc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cg = fcmp olt <4 x double> %i.ce, %i.cf
  %i.ch = select <4 x i1> %i.cg, <4 x double> %i.cd, <4 x double> %.epil.init
  %i.ci = extractelement <4 x double> %i.bv, i64 1
  %i.cj = fadd double %i.ci, %i.br                ; 2 uses
  %i.ck = fcmp olt double %.sroa.23.1.epil.init, %i.cj
  %.sroa.speculated.2.epil = select i1 %i.ck, double %i.cj, double %.sroa.23.1.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.s
  %.sroa.0.0 = phi double [ 1.000000e+30, %bb.s ], [ %.sroa.speculated76.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated76.epil, %.lr.ph.epil.preheader ]
  %.sroa.23.0 = phi double [ -1.000000e+30, %bb.s ], [ %.sroa.speculated.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated.2.epil, %.lr.ph.epil.preheader ]
  %i.cl = phi <4 x double> [ <double 1.000000e+30, double 1.000000e+30, double -1.000000e+30, double -1.000000e+30>, %bb.s ], [ %i.et, %._crit_edge.loopexit.unr-lcssa ], [ %i.ch, %.lr.ph.epil.preheader ] ; 4 uses
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.cn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.24, ptr noundef %i.cm) #19 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %.pre to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2
  %i.cu = lshr i64 %i.ct, 2                       ; 3 uses
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = fpext float %.058 to double
  %i.cx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.25, i32 noundef %i.cv, double noundef %i.cw) #19 ; 0 uses
  %i.cy = extractelement <4 x double> %i.cl, i64 0
  %i.cz = extractelement <4 x double> %i.cl, i64 1
  %i.da = extractelement <4 x double> %i.cl, i64 2
  %i.db = extractelement <4 x double> %i.cl, i64 3
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.26, double noundef %.sroa.0.0, double noundef %i.cy, double noundef %i.cz, double noundef %i.da, double noundef %i.db, double noundef %.sroa.23.0) #19 ; 0 uses
  %.not97 = icmp eq i64 %i.cu, 0
  br i1 %.not97, label %._crit_edge92, label %.lr.ph91

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.1 = phi double [ 1.000000e+30, %.lr.ph.preheader.new ], [ %.sroa.speculated76.1, %.lr.ph ] ; 2 uses
  %.sroa.23.1 = phi double [ -1.000000e+30, %.lr.ph.preheader.new ], [ %.sroa.speculated.2.1, %.lr.ph ] ; 2 uses
  %.05587 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ex, %.lr.ph ] ; 4 uses
  %i.dd = phi <4 x double> [ <double 1.000000e+30, double 1.000000e+30, double -1.000000e+30, double -1.000000e+30>, %.lr.ph.preheader.new ], [ %i.et, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.05587
  %i.df = load float, ptr %i.de, align 4, !tbaa !11
  %i.dg = fpext float %i.df to double             ; 3 uses
  %.idx81 = mul nuw i64 %.05587, 12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx81
  %i.di = load <3 x float>, ptr %i.dh, align 4, !tbaa !11
  %i.dj = shufflevector <3 x float> %i.di, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.dk = fpext <4 x float> %i.dj to <4 x double> ; 4 uses
  %i.dl = extractelement <4 x double> %i.dk, i64 2
  %i.dm = fsub double %i.dl, %i.dg                ; 2 uses
  %i.dn = fcmp olt double %i.dm, %.sroa.0.1
  %.sroa.speculated76 = select i1 %i.dn, double %i.dm, double %.sroa.0.1 ; 2 uses
  %i.do = insertelement <4 x double> poison, double %i.dg, i64 0
  %i.dp = shufflevector <4 x double> %i.do, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dq = fsub <4 x double> %i.dk, %i.dp          ; 2 uses
  %i.dr = fadd <4 x double> %i.dp, %i.dk          ; 2 uses
  %i.ds = shufflevector <4 x double> %i.dq, <4 x double> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dt = shufflevector <4 x double> %i.dq, <4 x double> %i.dd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.du = shufflevector <4 x double> %i.dd, <4 x double> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dv = fcmp olt <4 x double> %i.dt, %i.du
  %i.dw = select <4 x i1> %i.dv, <4 x double> %i.ds, <4 x double> %i.dd ; 3 uses
  %i.dx = extractelement <4 x double> %i.dk, i64 1
  %i.dy = fadd double %i.dx, %i.dg                ; 2 uses
  %i.dz = fcmp olt double %.sroa.23.1, %i.dy
  %.sroa.speculated.2 = select i1 %i.dz, double %i.dy, double %.sroa.23.1 ; 2 uses
  %i.ea = or disjoint i64 %.05587, 1              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !11
  %i.ed = fpext float %i.ec to double             ; 3 uses
  %.idx81.1 = mul nuw i64 %i.ea, 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx81.1
  %i.ef = load <3 x float>, ptr %i.ee, align 4, !tbaa !11
  %i.eg = shufflevector <3 x float> %i.ef, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.eh = fpext <4 x float> %i.eg to <4 x double> ; 4 uses
  %i.ei = extractelement <4 x double> %i.eh, i64 2
  %i.ej = fsub double %i.ei, %i.ed                ; 2 uses
  %i.ek = fcmp olt double %i.ej, %.sroa.speculated76
  %.sroa.speculated76.1 = select i1 %i.ek, double %i.ej, double %.sroa.speculated76 ; 3 uses
  %i.el = insertelement <4 x double> poison, double %i.ed, i64 0
  %i.em = shufflevector <4 x double> %i.el, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.en = fsub <4 x double> %i.eh, %i.em          ; 2 uses
  %i.eo = fadd <4 x double> %i.em, %i.eh          ; 2 uses
  %i.ep = shufflevector <4 x double> %i.en, <4 x double> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eq = shufflevector <4 x double> %i.en, <4 x double> %i.dw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.er = shufflevector <4 x double> %i.dw, <4 x double> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.es = fcmp olt <4 x double> %i.eq, %i.er
  %i.et = select <4 x i1> %i.es, <4 x double> %i.ep, <4 x double> %i.dw ; 3 uses
  %i.eu = extractelement <4 x double> %i.eh, i64 1
  %i.ev = fadd double %i.eu, %i.ed                ; 2 uses
  %i.ew = fcmp olt double %.sroa.speculated.2, %i.ev
  %.sroa.speculated.2.1 = select i1 %i.ew, double %i.ev, double %.sroa.speculated.2 ; 3 uses
  %i.ex = add nuw nsw i64 %.05587, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !87

._crit_edge92:                                    ; preds = %.lr.ph91, %._crit_edge
  %i.ey = load ptr, ptr @stdout, align 8, !tbaa !92
  %.not65 = icmp eq ptr %i.v, %i.ey
  br i1 %.not65, label %bb.u, label %bb.t

.lr.ph91:                                         ; preds = %._crit_edge, %.lr.ph91
  %.05389 = phi i64 [ %i.hc, %.lr.ph91 ], [ 0, %._crit_edge ] ; 3 uses
  %fwrite66 = call i64 @fwrite(ptr nonnull @.str.27, i64 56, i64 1, ptr nonnull %i.v) ; 0 uses
  %.idx = mul i64 %.05389, 48
  %i.ez = getelementptr i8, ptr %i.bi, i64 %.idx  ; 12 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !11
  %i.fb = fpext float %i.fa to double
  %i.fc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.fb) #19 ; 0 uses
  %i.fd = getelementptr i8, ptr %i.ez, i64 4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !11
  %i.ff = fpext float %i.fe to double
  %i.fg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.ff) #19 ; 0 uses
  %i.fh = getelementptr i8, ptr %i.ez, i64 8
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !11
  %i.fj = fpext float %i.fi to double
  %i.fk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.fj) #19 ; 0 uses
  %i.fl = getelementptr i8, ptr %i.ez, i64 12
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !11
  %i.fn = fpext float %i.fm to double
  %i.fo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.fn) #19 ; 0 uses
  %i.fp = getelementptr i8, ptr %i.ez, i64 16
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !11
  %i.fr = fpext float %i.fq to double
  %i.fs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.fr) #19 ; 0 uses
  %i.ft = getelementptr i8, ptr %i.ez, i64 20
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !11
  %i.fv = fpext float %i.fu to double
  %i.fw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.fv) #19 ; 0 uses
  %i.fx = getelementptr i8, ptr %i.ez, i64 24
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !11
  %i.fz = fpext float %i.fy to double
  %i.ga = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.fz) #19 ; 0 uses
  %i.gb = getelementptr i8, ptr %i.ez, i64 28
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !11
  %i.gd = fpext float %i.gc to double
  %i.ge = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.gd) #19 ; 0 uses
  %i.gf = getelementptr i8, ptr %i.ez, i64 32
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !11
  %i.gh = fpext float %i.gg to double
  %i.gi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.gh) #19 ; 0 uses
  %i.gj = getelementptr i8, ptr %i.ez, i64 36
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !11
  %i.gl = fpext float %i.gk to double
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.gl) #19 ; 0 uses
  %i.gn = getelementptr i8, ptr %i.ez, i64 40
  %i.go = load float, ptr %i.gn, align 4, !tbaa !11
  %i.gp = fpext float %i.go to double
  %i.gq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.gp) #19 ; 0 uses
  %i.gr = getelementptr i8, ptr %i.ez, i64 44
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !11
  %i.gt = fpext float %i.gs to double
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.gt) #19 ; 0 uses
  %.idx113 = shl nuw i64 %.05389, 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx113 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !11
  %i.gx = fpext float %i.gw to double
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !11
  %i.ha = fpext float %i.gz to double
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.29, double noundef %i.gx, double noundef %i.ha) #19 ; 0 uses
  %i.hc = add nuw nsw i64 %.05389, 1              ; 2 uses
  %exitcond99.not = icmp eq i64 %i.hc, %i.cu
  br i1 %exitcond99.not, label %._crit_edge92, label %.lr.ph91, !llvm.loop !88

bb.t:                                             ; preds = %._crit_edge92
  %i.hd = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge92
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.hf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.he, ptr noundef nonnull @.str.30, i32 noundef %i.cv) #25 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  %i.hg = phi ptr [ %.pre, %bb.u ], [ %.pre106, %bb.o ] ; 3 uses
  %.060 = phi i32 [ 0, %bb.u ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.i.i71 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIfSaIfEED2Ev.exit72, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !67
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit72

_ZNSt6vectorIfSaIfEED2Ev.exit72:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.hm = load ptr, ptr %3, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIfSaIfEED2Ev.exit74, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit72
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !67
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit74

_ZNSt6vectorIfSaIfEED2Ev.exit74:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit72, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit74, %bb.k
  %.1 = phi i32 [ %.060, %_ZNSt6vectorIfSaIfEED2Ev.exit74 ], [ 1, %bb.k ]
  call void @_ZN6cyhair6CyHairD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit69, %bb.l
  %.pn = phi { ptr, i32 } [ %i.at, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ], [ %i.aq, %bb.l ]
  call void @_ZN6cyhair6CyHairD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn

bb.aa:                                            ; preds = %bb.f, %bb.y, %bb.c
  %.3 = phi i32 [ 1, %bb.c ], [ %.1, %bb.y ], [ 1, %bb.f ]
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6cyhair6CyHairD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIfSaIfEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit3

_ZNSt6vectorIfSaIfEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIfSaIfEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit5

_ZNSt6vectorIfSaIfEED2Ev.exit5:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit3, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIfSaIfEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit7

_ZNSt6vectorIfSaIfEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit5, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #22
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit7, %bb.g
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIjSaIjEE17_M_default_appendEm:bb.a
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !66
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !12
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !12
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #22
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold }
attributes #25 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"float", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"_ZTSN6cyhair12CyHairHeaderE", !6, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !10, i64 20, !10, i64 24, !6, i64 28, !6, i64 40}
!14 = !{!"vtable pointer", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !16, i64 8}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!24 = !{!"_ZTSSt6locale", !23, i64 0}
!25 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !20, i64 40, !21, i64 48, !6, i64 64, !7, i64 192, !22, i64 200, !24, i64 208}
!26 = !{!"p1 _ZTSSo", !19, i64 0}
!27 = !{!"bool", !6, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!32 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0, !26, i64 216, !6, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!33 = !{!32, !29, i64 240}
!34 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!35 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!36 = !{!"p1 int", !19, i64 0}
!37 = !{!"p1 short", !19, i64 0}
!38 = !{!"_ZTSSt5ctypeIcE", !34, i64 0, !35, i64 16, !27, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!39 = !{!38, !6, i64 56}
!40 = !{!6, !6, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!42 = !{!41, !37, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !41, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseItSaItEE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorItSaItEE", !44, i64 0}
!46 = !{!"p1 float", !19, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIfSaIfEE", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIjSaIjEE", !53, i64 0}
!55 = !{!"_ZTSN6cyhair6CyHairE", !13, i64 0, !45, i64 128, !50, i64 152, !50, i64 176, !50, i64 200, !50, i64 224, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !10, i64 264, !10, i64 268, !6, i64 272, !7, i64 284, !54, i64 288}
!56 = !{!55, !7, i64 252}
!57 = !{!47, !46, i64 8}
!58 = !{!47, !46, i64 0}
!59 = !{!51, !36, i64 0}
!60 = !{!37, !37, i64 0}
!61 = !{!55, !7, i64 260}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"short", !6, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!41, !37, i64 8}
!66 = !{!51, !36, i64 8}
!67 = !{!47, !46, i64 16}
!68 = !{!51, !36, i64 16}
!69 = !{!41, !37, i64 16}
!70 = distinct !{null}
!71 = distinct !{!71, !62}
!72 = !{!13, !7, i64 4}
!73 = !{!55, !7, i64 256}
!74 = distinct !{!74, i1 false, !"_ZSt19__relocate_object_aIN6cyhair5real3ES1_SaIS1_EEvPT_PT0_RT1_"}
!75 = distinct !{!75, !74, !"_ZSt19__relocate_object_aIN6cyhair5real3ES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!76 = distinct !{!76, !74, !"_ZSt19__relocate_object_aIN6cyhair5real3ES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !62}
!78 = distinct !{!78, !62}
!79 = distinct !{!79, !62}
!80 = distinct !{!80, !62}
!81 = !{!46, !46, i64 0}
!82 = !{!36, !36, i64 0}
!83 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11}
!84 = !{!76, !75}
!85 = distinct !{null}
!86 = distinct !{null}
!87 = distinct !{!87, !62}
!88 = distinct !{!88, !62}
!89 = !{!"p1 omnipotent char", !19, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!92 = !{!91, !91, i64 0}
end_hunk_2
