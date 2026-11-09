Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pixelimage?download=true
inline.NumInlined: 4522
inline.NumDeleted: 2364
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN14HeifPixelImage10rotate_ccwEiPK20heif_security_limits:bb.a
  br i1 %.not.i.i.i142, label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit143, label %bb.ci

bb.ci:                                            ; preds = %.critedge96
  store ptr %i.lr, ptr %i.ea, align 8, !tbaa !43
  %i.ls = load ptr, ptr %i.eb, align 8, !tbaa !44
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = sub i64 %i.lt, %i.lu
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lv) #29
  br label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit143

_ZN14HeifPixelImage16ComponentStorageD2Ev.exit143: ; preds = %.critedge96, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.cp

.critedge98:                                      ; preds = %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit137, %bb.y
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !34 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !35 ; 2 uses
  %.not9.i = icmp eq ptr %i.lx, %i.lz
  br i1 %.not9.i, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit148, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.critedge98
  %i.ma = getelementptr inbounds nuw i8, ptr %i.dd, i64 432 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.dd, i64 440
  %i.mc = getelementptr inbounds nuw i8, ptr %i.dd, i64 424
  %.pre.i = load ptr, ptr %i.ma, align 8, !tbaa !35
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i, %.lr.ph.i144
  %i.md = phi ptr [ %.pre.i, %.lr.ph.i144 ], [ %.0.i.i, %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ] ; 5 uses
  %.sroa.05.010.i = phi ptr [ %i.lx, %.lr.ph.i144 ], [ %i.ms, %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ] ; 6 uses
  %i.me = load ptr, ptr %i.mb, align 8, !tbaa !37
  %i.mf = icmp ult ptr %i.md, %i.me
  br i1 %i.mf, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.mg = load i64, ptr %.sroa.05.010.i, align 8
  store i64 %i.mg, ptr %i.md, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 8 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 8
  %i.mk = trunc i8 %i.mj to i1
  br i1 %i.mk, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mh, ptr noundef nonnull align 8 dereferenceable(24) %i.mi, i64 24, i1 false), !tbaa.struct !165
  br label %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !36
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 16
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !36
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.mh, ptr noundef %i.mm, i64 noundef %i.mo)
          to label %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.md, ptr %i.ma, align 8, !tbaa !35
  br label %.body

_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i.i: ; preds = %bb.cm, %bb.cl
  %i.mq = getelementptr inbounds nuw i8, ptr %i.md, i64 32 ; 2 uses
  store ptr %i.mq, ptr %i.ma, align 8, !tbaa !35
  br label %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.co:                                            ; preds = %bb.cj
  %i.mr = invoke noundef ptr @_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJRKS1_EEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.010.i)
          to label %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i: ; preds = %bb.co, %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i.i
  %.0.i.i = phi ptr [ %i.mq, %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i.i ], [ %i.mr, %bb.co ] ; 2 uses
  store ptr %.0.i.i, ptr %i.ma, align 8, !tbaa !35
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 32 ; 2 uses
  %.not.i145 = icmp eq ptr %i.ms, %i.lz
  br i1 %.not.i145, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit148.loopexit, label %bb.cj

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit148.loopexit: ; preds = %_ZNSt3__16vectorI5ErrorNS_9allocatorIS1_EEE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i
  %.pre246 = load ptr, ptr %9, align 8, !tbaa !211
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit148

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit148: ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit148.loopexit, %.critedge98
  %i.mt = phi ptr [ %.pre246, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit148.loopexit ], [ %i.dd, %.critedge98 ]
  %i.mu = load ptr, ptr %i.ct, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr %i.mt, ptr %0, align 8, !tbaa !211
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !214
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.mw, align 8, !tbaa !216
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit143, %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit148
  %i.mx = load ptr, ptr %i.ct, align 8, !tbaa !214 ; 5 uses
  %.not.i149 = icmp eq ptr %i.mx, null
  br i1 %.not.i149, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit150, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = atomicrmw add ptr %i.my, i64 -1 acq_rel, align 8
  %i.na = icmp eq i64 %i.mz, 0
  br i1 %i.na, label %bb.cr, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit150

bb.cr:                                            ; preds = %bb.cq
  %i.nb = load ptr, ptr %i.mx, align 8, !tbaa !22
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(24) %i.mx) #31, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mx) #31
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit150

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit150: ; preds = %bb.cp, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.cs

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cn, %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit141
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit141 ], [ %i.mp, %bb.cn ], [ %lpad.loopexit.split-lp323, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit150, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit109, %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEED2Ev.exit
  ret void

bb.ct:                                            ; preds = %.body, %bb.t
  %.pn87.pn = phi { ptr, i32 } [ %.pn87, %bb.t ], [ %.pn83.pn.pn, %.body ]
  resume { ptr, i32 } %.pn87.pn
}

declare void @heif_color_conversion_options_set_defaults(ptr noundef) local_unnamed_addr #9

declare void @_Z18convert_colorspaceRKNSt3__110shared_ptrI14HeifPixelImageEE15heif_colorspace11heif_chromaRK12nclx_profileiRK29heif_color_conversion_optionsPK33heif_color_conversion_options_extPK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Result) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef nonnull align 2 dereferenceable(7), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.273, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !216  ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZNSt3__17variantIJNS_10shared_ptrI14HeifPixelImageEE5ErrorEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI14HeifPixelImageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.__fmatrix, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  invoke void %i.f(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI14HeifPixelImageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i unwind label %bb.c, !inline_history !3

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI14HeifPixelImageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %_ZNSt3__17variantIJNS_10shared_ptrI14HeifPixelImageEE5ErrorEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #30
  unreachable

_ZNSt3__17variantIJNS_10shared_ptrI14HeifPixelImageEE5ErrorEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI14HeifPixelImageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i
  ret void
}

declare void @_ZN16ImageDescription18copy_metadata_fromERKS_(ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(316)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK14HeifPixelImage16ComponentStorage10rotate_ccwIhEEviRS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !172  ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !173  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179  ; 8 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !177  ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !179  ; 8 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  switch i32 %1, label %.loopexit [
    i32 270, label %.preheader60
    i32 180, label %.preheader62
    i32 90, label %.preheader65
  ]

.preheader65:                                     ; preds = %bb.a
  %i.o = icmp ne i32 %i.d, 0
  %i.p = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %wide.trip.count85 = zext i32 %i.d to i64       ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 11 uses
  %i.q = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.r = add i32 %i.b, -1                         ; 2 uses
  %i.s = add nsw i64 %wide.trip.count85, -1
  %i.t = mul i64 %i.f, %i.s
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr i8, ptr %i.h, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.w, i64 1
  %i.x = zext i32 %i.b to i64
  %i.y = sub nsw i64 %i.x, %wide.trip.count
  %scevgep116 = getelementptr i8, ptr %i.h, i64 %i.y
  %i.z = getelementptr i8, ptr %i.m, i64 %wide.trip.count85
  %i.aa = getelementptr i8, ptr %i.z, i64 %wide.trip.count
  %scevgep117 = getelementptr i8, ptr %i.aa, i64 -1
  %min.iters.check = icmp ult i32 %i.b, 8
  %ident.check = icmp ne i64 %i.k, 1
  %i.ab = trunc i64 %i.q to i32
  %i.ac = icmp ult i32 %i.r, %i.ab
  %i.ad = icmp ugt i64 %i.q, 4294967295
  %i.ae = or i1 %i.ac, %i.ad
  %i.af = or i1 %ident.check, %i.ae
  %bound0 = icmp ult ptr %i.m, %scevgep
  %bound1 = icmp ult ptr %scevgep116, %scevgep117
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.f, 0
  %i.ag = or i1 %found.conflict, %stride.check
  %min.iters.check118 = icmp ult i32 %i.b, 32
  %i.ah = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  %n.vec121 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec121, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ai = add nsw i64 %wide.trip.count, -1
  br label %iter.check

.preheader62:                                     ; preds = %bb.a
  %i.aj = icmp ne i32 %i.d, 0
  %i.ak = icmp ne i32 %i.b, 0
  %or.cond77 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond77, label %.preheader61.preheader, label %.loopexit

.preheader61.preheader:                           ; preds = %.preheader62
  %wide.trip.count95 = zext i32 %i.d to i64       ; 2 uses
  %wide.trip.count90 = zext i32 %i.b to i64       ; 11 uses
  %i.al = add nsw i64 %wide.trip.count90, -1      ; 2 uses
  %i.am = add i32 %i.b, -1                        ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = add nsw i64 %wide.trip.count95, -1
  %i.ap = mul i64 %i.k, %i.ao
  %i.aq = getelementptr i8, ptr %i.m, i64 %i.ap
  %scevgep138 = getelementptr i8, ptr %i.aq, i64 %wide.trip.count90
  %min.iters.check139 = icmp ult i32 %i.b, 8
  %i.ar = trunc i64 %i.al to i32
  %i.as = icmp ult i32 %i.am, %i.ar
  %i.at = icmp ugt i64 %i.al, 4294967295
  %i.au = or i1 %i.as, %i.at
  %invariant.op = add i64 %i.an, 1
  %stride.check144 = icmp slt i64 %i.k, 0
  %min.iters.check146 = icmp ult i32 %i.b, 32
  %i.av = and i64 %wide.trip.count90, 24
  %n.vec148 = and i64 %wide.trip.count90, 4294967264 ; 4 uses
  %cmp.n157 = icmp eq i64 %n.vec148, %wide.trip.count90
  %min.epilog.iters.check161 = icmp eq i64 %i.av, 0
  %n.vec164 = and i64 %wide.trip.count90, 4294967288 ; 3 uses
  %cmp.n171 = icmp eq i64 %n.vec164, %wide.trip.count90
  %xtraiter206 = and i64 %wide.trip.count90, 3    ; 2 uses
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br label %iter.check158

.preheader60:                                     ; preds = %bb.a
  %i.aw = icmp ne i32 %i.d, 0
  %i.ax = icmp ne i32 %i.b, 0
  %or.cond78 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond78, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader60
  %wide.trip.count105 = zext i32 %i.d to i64
  %wide.trip.count100 = zext i32 %i.b to i64      ; 8 uses
  %min.iters.check176 = icmp ugt i32 %i.b, 3
  %ident.check174.not = icmp eq i64 %i.k, 1
  %or.cond203 = select i1 %min.iters.check176, i1 %ident.check174.not, i1 false
  %min.iters.check179 = icmp ult i32 %i.b, 32
  %i.ay = and i64 %wide.trip.count100, 28
  %n.vec181 = and i64 %wide.trip.count100, 4294967264 ; 4 uses
  %cmp.n188 = icmp eq i64 %n.vec181, %wide.trip.count100
  %min.epilog.iters.check192 = icmp eq i64 %i.ay, 0
  %n.vec195 = and i64 %wide.trip.count100, 4294967292 ; 3 uses
  %cmp.n201 = icmp eq i64 %n.vec195, %wide.trip.count100
  %xtraiter208 = and i64 %wide.trip.count100, 3   ; 2 uses
  %lcmp.mod209.not = icmp eq i64 %xtraiter208, 0
  br label %iter.check189

iter.check189:                                    ; preds = %.preheader.preheader, %._crit_edge73
  %indvars.iv102 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next103, %._crit_edge73 ] ; 4 uses
  %i.az = trunc nuw i64 %indvars.iv102 to i32
  %i.ba = xor i32 %i.az, -1
  %i.bb = add i32 %i.d, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul i64 %i.f, %i.bc                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.h, i64 %i.bd   ; 7 uses
  %invariant.gep74 = getelementptr i8, ptr %i.m, i64 %indvars.iv102 ; 7 uses
  br i1 %or.cond203, label %vector.memcheck177, label %vec.epilog.scalar.ph191.preheader

vector.memcheck177:                               ; preds = %iter.check189
  %i.bf = add i64 %indvars.iv102, %i.n
  %i.bg = add i64 %i.bd, %i.i
  %i.bh = sub i64 %i.bg, %i.bf
  %diff.check = icmp ugt i64 %i.bh, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph191.preheader, label %vector.main.loop.iter.check178

vector.main.loop.iter.check178:                   ; preds = %vector.memcheck177
  br i1 %min.iters.check179, label %vec.epilog.ph193, label %vector.body182

vector.body182:                                   ; preds = %vector.main.loop.iter.check178, %vector.body182
  %index183 = phi i64 [ %index.next186, %vector.body182 ], [ 0, %vector.main.loop.iter.check178 ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 %index183 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %wide.load184 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !36
  %wide.load185 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !36
  %i.bk = getelementptr i8, ptr %invariant.gep74, i64 %index183 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store <16 x i8> %wide.load184, ptr %i.bk, align 1, !tbaa !36
  store <16 x i8> %wide.load185, ptr %i.bl, align 1, !tbaa !36
  %index.next186 = add nuw i64 %index183, 32      ; 2 uses
  %i.bm = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.bm, label %middle.block187, label %vector.body182, !llvm.loop !461

middle.block187:                                  ; preds = %vector.body182
  br i1 %cmp.n188, label %._crit_edge73, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block187
  br i1 %min.epilog.iters.check192, label %vec.epilog.scalar.ph191.preheader, label %vec.epilog.ph193, !prof !481

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check178, %vec.epilog.iter.check190
  %vec.epilog.resume.val194 = phi i64 [ %n.vec181, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check178 ]
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph193 ], [ %index.next199, %vec.epilog.vector.body196 ] ; 3 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %index197
  %wide.load198 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !36
  %i.bo = getelementptr i8, ptr %invariant.gep74, i64 %index197
  store <4 x i8> %wide.load198, ptr %i.bo, align 1, !tbaa !36
  %index.next199 = add nuw i64 %index197, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next199, %n.vec195
  br i1 %i.bp, label %vec.epilog.middle.block200, label %vec.epilog.vector.body196, !llvm.loop !462

vec.epilog.middle.block200:                       ; preds = %vec.epilog.vector.body196
  br i1 %cmp.n201, label %._crit_edge73, label %vec.epilog.scalar.ph191.preheader

vec.epilog.scalar.ph191.preheader:                ; preds = %iter.check189, %vector.memcheck177, %vec.epilog.iter.check190, %vec.epilog.middle.block200
  %indvars.iv97.ph = phi i64 [ 0, %iter.check189 ], [ 0, %vector.memcheck177 ], [ %n.vec181, %vec.epilog.iter.check190 ], [ %n.vec195, %vec.epilog.middle.block200 ] ; 3 uses
  br i1 %lcmp.mod209.not, label %vec.epilog.scalar.ph191.prol.loopexit, label %vec.epilog.scalar.ph191.prol

vec.epilog.scalar.ph191.prol:                     ; preds = %vec.epilog.scalar.ph191.preheader, %vec.epilog.scalar.ph191.prol
  %indvars.iv97.prol = phi i64 [ %indvars.iv.next98.prol, %vec.epilog.scalar.ph191.prol ], [ %indvars.iv97.ph, %vec.epilog.scalar.ph191.preheader ] ; 3 uses
  %prol.iter210 = phi i64 [ %prol.iter210.next, %vec.epilog.scalar.ph191.prol ], [ 0, %vec.epilog.scalar.ph191.preheader ]
  %i.bq = getelementptr i8, ptr %i.be, i64 %indvars.iv97.prol
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !36
  %i.bs = mul i64 %i.k, %indvars.iv97.prol
  %gep75.prol = getelementptr i8, ptr %invariant.gep74, i64 %i.bs
  store i8 %i.br, ptr %gep75.prol, align 1, !tbaa !36
  %indvars.iv.next98.prol = add nuw nsw i64 %indvars.iv97.prol, 1 ; 2 uses
  %prol.iter210.next = add i64 %prol.iter210, 1   ; 2 uses
  %prol.iter210.cmp.not = icmp eq i64 %prol.iter210.next, %xtraiter208
  br i1 %prol.iter210.cmp.not, label %vec.epilog.scalar.ph191.prol.loopexit, label %vec.epilog.scalar.ph191.prol, !llvm.loop !463

vec.epilog.scalar.ph191.prol.loopexit:            ; preds = %vec.epilog.scalar.ph191.prol, %vec.epilog.scalar.ph191.preheader
  %indvars.iv97.unr = phi i64 [ %indvars.iv97.ph, %vec.epilog.scalar.ph191.preheader ], [ %indvars.iv.next98.prol, %vec.epilog.scalar.ph191.prol ]
  %i.bt = sub nsw i64 %indvars.iv97.ph, %wide.trip.count100
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %._crit_edge73, label %vec.epilog.scalar.ph191

._crit_edge73:                                    ; preds = %vec.epilog.scalar.ph191.prol.loopexit, %vec.epilog.scalar.ph191, %vec.epilog.middle.block200, %middle.block187
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %iter.check189, !llvm.loop !464

vec.epilog.scalar.ph191:                          ; preds = %vec.epilog.scalar.ph191.prol.loopexit, %vec.epilog.scalar.ph191
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.3, %vec.epilog.scalar.ph191 ], [ %indvars.iv97.unr, %vec.epilog.scalar.ph191.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr i8, ptr %i.be, i64 %indvars.iv97
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !36
  %i.bx = mul i64 %i.k, %indvars.iv97
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %i.bx
  store i8 %i.bw, ptr %gep75, align 1, !tbaa !36
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.by = getelementptr i8, ptr %i.be, i64 %indvars.iv.next98
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !36
  %i.ca = mul i64 %i.k, %indvars.iv.next98
  %gep75.1 = getelementptr i8, ptr %invariant.gep74, i64 %i.ca
  store i8 %i.bz, ptr %gep75.1, align 1, !tbaa !36
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.be, i64 %indvars.iv.next98.1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !36
  %i.cd = mul i64 %i.k, %indvars.iv.next98.1
  %gep75.2 = getelementptr i8, ptr %invariant.gep74, i64 %i.cd
  store i8 %i.cc, ptr %gep75.2, align 1, !tbaa !36
  %indvars.iv.next98.2 = add nuw nsw i64 %indvars.iv97, 3 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.be, i64 %indvars.iv.next98.2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !36
  %i.cg = mul i64 %i.k, %indvars.iv.next98.2
  %gep75.3 = getelementptr i8, ptr %invariant.gep74, i64 %i.cg
  store i8 %i.cf, ptr %gep75.3, align 1, !tbaa !36
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %exitcond101.not.3 = icmp eq i64 %indvars.iv.next98.3, %wide.trip.count100
  br i1 %exitcond101.not.3, label %._crit_edge73, label %vec.epilog.scalar.ph191, !llvm.loop !465

iter.check158:                                    ; preds = %.preheader61.preheader, %._crit_edge70
  %indvars.iv92 = phi i64 [ 0, %.preheader61.preheader ], [ %indvars.iv.next93, %._crit_edge70 ] ; 3 uses
  %i.ch = trunc nuw i64 %indvars.iv92 to i32
  %i.ci = xor i32 %i.ch, -1
  %i.cj = add i32 %i.d, %i.ci
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul i64 %i.f, %i.ck                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.h, i64 %i.cl   ; 7 uses
  %i.cn = mul i64 %i.k, %indvars.iv92
  %i.co = getelementptr i8, ptr %i.m, i64 %i.cn   ; 7 uses
  %brmerge = select i1 %min.iters.check139, i1 true, i1 %i.au
  br i1 %brmerge, label %vec.epilog.scalar.ph160.preheader, label %vector.memcheck140

vector.memcheck140:                               ; preds = %iter.check158
  %.reass = add i64 %i.cl, %invariant.op          ; 2 uses
  %3 = sub i64 %.reass, %wide.trip.count90
  %i.cp = getelementptr i8, ptr %i.h, i64 %3
  %i.cq = getelementptr i8, ptr %i.h, i64 %.reass
  %bound0141 = icmp ult ptr %i.m, %i.cq
  %bound1142 = icmp ult ptr %i.cp, %scevgep138
  %found.conflict143 = and i1 %bound0141, %bound1142
  %i.cr = or i1 %found.conflict143, %stride.check144
  br i1 %i.cr, label %vec.epilog.scalar.ph160.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %vector.memcheck140
  br i1 %min.iters.check146, label %vec.epilog.ph162, label %vector.body149

vector.body149:                                   ; preds = %vector.main.loop.iter.check145, %vector.body149
  %index150 = phi i64 [ %index.next155, %vector.body149 ], [ 0, %vector.main.loop.iter.check145 ] ; 3 uses
  %i.cs = trunc nuw i64 %index150 to i32
  %i.ct = xor i32 %i.cs, -1
  %i.cu = add i32 %i.b, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.cm, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -15
  %i.cy = getelementptr i8, ptr %i.cw, i64 -31
  %wide.load151 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !36, !alias.scope !482
  %wide.load152 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !36, !alias.scope !482
  %reverse153 = shufflevector <16 x i8> %wide.load151, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse154 = shufflevector <16 x i8> %wide.load152, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cz = getelementptr i8, ptr %i.co, i64 %index150 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <16 x i8> %reverse153, ptr %i.cz, align 1, !tbaa !36, !alias.scope !483, !noalias !482
  store <16 x i8> %reverse154, ptr %i.da, align 1, !tbaa !36, !alias.scope !483, !noalias !482
  %index.next155 = add nuw i64 %index150, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.db, label %middle.block156, label %vector.body149, !llvm.loop !469

middle.block156:                                  ; preds = %vector.body149
  br i1 %cmp.n157, label %._crit_edge70, label %vec.epilog.iter.check159

vec.epilog.iter.check159:                         ; preds = %middle.block156
  br i1 %min.epilog.iters.check161, label %vec.epilog.scalar.ph160.preheader, label %vec.epilog.ph162, !prof !484

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check159
  %vec.epilog.resume.val163 = phi i64 [ %n.vec148, %vec.epilog.iter.check159 ], [ 0, %vector.main.loop.iter.check145 ]
  br label %vec.epilog.vector.body165

vec.epilog.vector.body165:                        ; preds = %vec.epilog.vector.body165, %vec.epilog.ph162
  %index166 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph162 ], [ %index.next169, %vec.epilog.vector.body165 ] ; 3 uses
  %i.dc = trunc nuw i64 %index166 to i32
  %i.dd = xor i32 %i.dc, -1
  %i.de = add i32 %i.b, %i.dd
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.cm, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 -7
  %wide.load167 = load <8 x i8>, ptr %i.dh, align 1, !tbaa !36, !alias.scope !482
  %reverse168 = shufflevector <8 x i8> %wide.load167, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.di = getelementptr i8, ptr %i.co, i64 %index166
  store <8 x i8> %reverse168, ptr %i.di, align 1, !tbaa !36, !alias.scope !483, !noalias !482
  %index.next169 = add nuw i64 %index166, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.dj, label %vec.epilog.middle.block170, label %vec.epilog.vector.body165, !llvm.loop !470

vec.epilog.middle.block170:                       ; preds = %vec.epilog.vector.body165
  br i1 %cmp.n171, label %._crit_edge70, label %vec.epilog.scalar.ph160.preheader

vec.epilog.scalar.ph160.preheader:                ; preds = %iter.check158, %vector.memcheck140, %vec.epilog.iter.check159, %vec.epilog.middle.block170
  %indvars.iv87.ph = phi i64 [ 0, %iter.check158 ], [ %n.vec164, %vec.epilog.middle.block170 ], [ 0, %vector.memcheck140 ], [ %n.vec148, %vec.epilog.iter.check159 ] ; 3 uses
  br i1 %lcmp.mod207.not, label %vec.epilog.scalar.ph160.prol.loopexit, label %vec.epilog.scalar.ph160.prol

vec.epilog.scalar.ph160.prol:                     ; preds = %vec.epilog.scalar.ph160.preheader, %vec.epilog.scalar.ph160.prol
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %vec.epilog.scalar.ph160.prol ], [ %indvars.iv87.ph, %vec.epilog.scalar.ph160.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph160.prol ], [ 0, %vec.epilog.scalar.ph160.preheader ]
  %i.dk = trunc nuw i64 %indvars.iv87.prol to i32
  %i.dl = xor i32 %i.dk, -1
  %i.dm = add i32 %i.b, %i.dl
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr i8, ptr %i.cm, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !36
  %i.dq = getelementptr i8, ptr %i.co, i64 %indvars.iv87.prol
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !36
  %indvars.iv.next88.prol = add nuw nsw i64 %indvars.iv87.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter206
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph160.prol.loopexit, label %vec.epilog.scalar.ph160.prol, !llvm.loop !471

vec.epilog.scalar.ph160.prol.loopexit:            ; preds = %vec.epilog.scalar.ph160.prol, %vec.epilog.scalar.ph160.preheader
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %vec.epilog.scalar.ph160.preheader ], [ %indvars.iv.next88.prol, %vec.epilog.scalar.ph160.prol ]
  %i.dr = sub nsw i64 %indvars.iv87.ph, %wide.trip.count90
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge70, label %vec.epilog.scalar.ph160

._crit_edge70:                                    ; preds = %vec.epilog.scalar.ph160.prol.loopexit, %vec.epilog.scalar.ph160, %vec.epilog.middle.block170, %middle.block156
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.loopexit, label %iter.check158, !llvm.loop !472

vec.epilog.scalar.ph160:                          ; preds = %vec.epilog.scalar.ph160.prol.loopexit, %vec.epilog.scalar.ph160
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %vec.epilog.scalar.ph160 ], [ %indvars.iv87.unr, %vec.epilog.scalar.ph160.prol.loopexit ] ; 6 uses
  %i.dt = trunc nuw i64 %indvars.iv87 to i32
  %i.du = xor i32 %i.dt, -1
  %i.dv = add i32 %i.b, %i.du
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr i8, ptr %i.cm, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !36
  %i.dz = getelementptr i8, ptr %i.co, i64 %indvars.iv87
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !36
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.ea = trunc nuw i64 %indvars.iv.next88 to i32
  %i.eb = xor i32 %i.ea, -1
  %i.ec = add i32 %i.b, %i.eb
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr i8, ptr %i.cm, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !36
  %i.eg = getelementptr i8, ptr %i.co, i64 %indvars.iv.next88
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !36
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %i.eh = trunc nuw i64 %indvars.iv.next88.1 to i32
  %i.ei = xor i32 %i.eh, -1
  %i.ej = add i32 %i.b, %i.ei
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %i.cm, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !36
  %i.en = getelementptr i8, ptr %i.co, i64 %indvars.iv.next88.1
  store i8 %i.em, ptr %i.en, align 1, !tbaa !36
  %indvars.iv.next88.2 = add nuw nsw i64 %indvars.iv87, 3 ; 2 uses
  %i.eo = trunc nuw i64 %indvars.iv.next88.2 to i32
  %i.ep = xor i32 %i.eo, -1
  %i.eq = add i32 %i.b, %i.ep
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.cm, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !36
  %i.eu = getelementptr i8, ptr %i.co, i64 %indvars.iv.next88.2
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !36
  %indvars.iv.next88.3 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %exitcond91.not.3 = icmp eq i64 %indvars.iv.next88.3, %wide.trip.count90
  br i1 %exitcond91.not.3, label %._crit_edge70, label %vec.epilog.scalar.ph160, !llvm.loop !473

iter.check:                                       ; preds = %.preheader64.preheader, %._crit_edge
  %indvars.iv82 = phi i64 [ 0, %.preheader64.preheader ], [ %indvars.iv.next83, %._crit_edge ] ; 3 uses
  %i.ev = mul i64 %i.f, %indvars.iv82
  %i.ew = getelementptr i8, ptr %i.h, i64 %i.ev   ; 5 uses
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %indvars.iv82 ; 5 uses
  %brmerge211 = select i1 %min.iters.check, i1 true, i1 %i.af
  %brmerge212 = select i1 %brmerge211, i1 true, i1 %i.ag
  br i1 %brmerge212, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ex = trunc nuw i64 %index to i32
  %i.ey = xor i32 %i.ex, -1
  %i.ez = add i32 %i.b, %i.ey
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %i.ew, i64 %i.fa  ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -15
  %i.fd = getelementptr i8, ptr %i.fb, i64 -31
  %wide.load = load <16 x i8>, ptr %i.fc, align 1, !tbaa !36, !alias.scope !485
  %wide.load119 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !36, !alias.scope !485
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse120 = shufflevector <16 x i8> %wide.load119, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fe = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  store <16 x i8> %reverse, ptr %i.fe, align 1, !tbaa !36, !alias.scope !486, !noalias !485
  store <16 x i8> %reverse120, ptr %i.ff, align 1, !tbaa !36, !alias.scope !486, !noalias !485
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !484

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.fh = trunc nuw i64 %index122 to i32
  %i.fi = xor i32 %i.fh, -1
  %i.fj = add i32 %i.b, %i.fi
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr i8, ptr %i.ew, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -7
  %wide.load123 = load <8 x i8>, ptr %i.fm, align 1, !tbaa !36, !alias.scope !485
  %reverse124 = shufflevector <8 x i8> %wide.load123, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fn = getelementptr i8, ptr %invariant.gep, i64 %index122
  store <8 x i8> %reverse124, ptr %i.fn, align 1, !tbaa !36, !alias.scope !486, !noalias !485
  %index.next125 = add nuw i64 %index122, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.fo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !478

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec121, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fp = trunc nuw i64 %indvars.iv.ph to i32
  %i.fq = xor i32 %i.fp, -1
  %i.fr = add i32 %i.b, %i.fq
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr i8, ptr %i.ew, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !36
  %i.fv = mul i64 %i.k, %indvars.iv.ph
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.fv
  store i8 %i.fu, ptr %gep.prol, align 1, !tbaa !36
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.fw = icmp eq i64 %indvars.iv.ph, %i.ai
  br i1 %i.fw, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.loopexit, label %iter.check, !llvm.loop !479

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.fx = trunc nuw i64 %indvars.iv to i32
  %i.fy = xor i32 %i.fx, -1
  %i.fz = add i32 %i.b, %i.fy
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr i8, ptr %i.ew, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !36
  %i.gd = mul i64 %i.k, %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gd
  store i8 %i.gc, ptr %gep, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ge = trunc nuw i64 %indvars.iv.next to i32
  %i.gf = xor i32 %i.ge, -1
  %i.gg = add i32 %i.b, %i.gf
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr i8, ptr %i.ew, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !36
  %i.gk = mul i64 %i.k, %indvars.iv.next
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.gk
  store i8 %i.gj, ptr %gep.1, align 1, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !480

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge70, %._crit_edge73, %.preheader65, %.preheader62, %.preheader60, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK14HeifPixelImage16ComponentStorage10rotate_ccwItEEviRS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !172  ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !173  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = lshr i64 %i.f, 1                         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !179  ; 5 uses
  switch i32 %1, label %.loopexit [
    i32 270, label %.preheader60
    i32 180, label %.preheader62
    i32 90, label %.preheader65
  ]

.preheader65:                                     ; preds = %bb.a
  %i.o = icmp ne i32 %i.d, 0
  %i.p = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %wide.trip.count85 = zext i32 %i.d to i64
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = trunc i32 %i.b to i1
  br label %.preheader64

.preheader62:                                     ; preds = %bb.a
  %i.r = icmp ne i32 %i.d, 0
  %i.s = icmp ne i32 %i.b, 0
  %or.cond77 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond77, label %.preheader61.preheader, label %.loopexit

.preheader61.preheader:                           ; preds = %.preheader62
  %wide.trip.count95 = zext i32 %i.d to i64       ; 2 uses
  %wide.trip.count90 = zext i32 %i.b to i64       ; 11 uses
  %i.t = add nsw i64 %wide.trip.count90, -1       ; 2 uses
  %i.u = add i32 %i.b, -1                         ; 2 uses
  %i.v = shl nuw nsw i64 %wide.trip.count90, 1
  %3 = zext i32 %i.u to i64
  %i.w = add nuw i64 %wide.trip.count95, 9223372036854775807
  %i.x = mul i64 %i.l, %i.w
  %i.y = add i64 %i.x, %wide.trip.count90
  %i.z = shl i64 %i.y, 1
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.z
  %min.iters.check = icmp ult i32 %i.b, 4
  %i.aa = trunc i64 %i.t to i32
  %i.ab = icmp ult i32 %i.u, %i.aa
  %i.ac = icmp ugt i64 %i.t, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  %stride.check = icmp slt i64 %i.k, 0
  %min.iters.check118 = icmp ult i32 %i.b, 16
  %i.ae = and i64 %wide.trip.count90, 12
  %n.vec = and i64 %wide.trip.count90, 4294967280 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count90
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  %n.vec121 = and i64 %wide.trip.count90, 4294967292 ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec121, %wide.trip.count90
  %xtraiter130 = and i64 %wide.trip.count90, 3    ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br label %iter.check

.preheader60:                                     ; preds = %bb.a
  %i.af = icmp ne i32 %i.d, 0
  %i.ag = icmp ne i32 %i.b, 0
  %or.cond78 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond78, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader60
  %wide.trip.count105 = zext i32 %i.d to i64
  %wide.trip.count100 = zext i32 %i.b to i64      ; 2 uses
  %xtraiter133 = and i64 %wide.trip.count100, 3   ; 3 uses
  %i.ah = icmp ult i32 %i.b, 4
  %unroll_iter136 = and i64 %wide.trip.count100, 4294967292
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  %lcmp.mod135 = icmp ne i64 %xtraiter133, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge73
  %indvars.iv102 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next103, %._crit_edge73 ] ; 3 uses
  %i.ai = trunc nuw i64 %indvars.iv102 to i32
  %i.aj = xor i32 %i.ai, -1
  %i.ak = add i32 %i.d, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = mul i64 %i.g, %i.al
  %i.an = getelementptr [2 x i8], ptr %i.i, i64 %i.am ; 5 uses
  %invariant.gep74 = getelementptr [2 x i8], ptr %i.n, i64 %indvars.iv102 ; 5 uses
  br i1 %i.ah, label %.epil.preheader132, label %.preheader.new

._crit_edge73.unr-lcssa:                          ; preds = %.preheader.new
  br i1 %lcmp.mod134.not, label %._crit_edge73, label %.epil.preheader132

.epil.preheader132:                               ; preds = %._crit_edge73.unr-lcssa, %.preheader
  %indvars.iv97.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next98.3, %._crit_edge73.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader132
  %indvars.iv97.epil = phi i64 [ %indvars.iv97.epil.init, %.epil.preheader132 ], [ %indvars.iv.next98.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader132 ], [ %epil.iter.next, %bb.b ]
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv97.epil
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !139
  %i.aq = mul i64 %i.l, %indvars.iv97.epil
  %gep75.epil = getelementptr [2 x i8], ptr %invariant.gep74, i64 %i.aq
  store i16 %i.ap, ptr %gep75.epil, align 2, !tbaa !139
  %indvars.iv.next98.epil = add nuw nsw i64 %indvars.iv97.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter133
  br i1 %epil.iter.cmp.not, label %._crit_edge73, label %bb.b, !llvm.loop !487

._crit_edge73:                                    ; preds = %bb.b, %._crit_edge73.unr-lcssa
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.preheader, !llvm.loop !488

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter137 = phi i64 [ %niter137.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.ar = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv97
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !139
  %i.at = mul i64 %i.l, %indvars.iv97
  %gep75 = getelementptr [2 x i8], ptr %invariant.gep74, i64 %i.at
  store i16 %i.as, ptr %gep75, align 2, !tbaa !139
  %indvars.iv.next98 = or disjoint i64 %indvars.iv97, 1 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv.next98
  %i.av = load i16, ptr %i.au, align 2, !tbaa !139
  %i.aw = mul i64 %i.l, %indvars.iv.next98
  %gep75.1 = getelementptr [2 x i8], ptr %invariant.gep74, i64 %i.aw
  store i16 %i.av, ptr %gep75.1, align 2, !tbaa !139
  %indvars.iv.next98.1 = or disjoint i64 %indvars.iv97, 2 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv.next98.1
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !139
  %i.az = mul i64 %i.l, %indvars.iv.next98.1
  %gep75.2 = getelementptr [2 x i8], ptr %invariant.gep74, i64 %i.az
  store i16 %i.ay, ptr %gep75.2, align 2, !tbaa !139
  %indvars.iv.next98.2 = or disjoint i64 %indvars.iv97, 3 ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv.next98.2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !139
  %i.bc = mul i64 %i.l, %indvars.iv.next98.2
  %gep75.3 = getelementptr [2 x i8], ptr %invariant.gep74, i64 %i.bc
  store i16 %i.bb, ptr %gep75.3, align 2, !tbaa !139
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %niter137.next.3 = add i64 %niter137, 4         ; 2 uses
  %niter137.ncmp.3 = icmp eq i64 %niter137.next.3, %unroll_iter136
  br i1 %niter137.ncmp.3, label %._crit_edge73.unr-lcssa, label %.preheader.new, !llvm.loop !489

iter.check:                                       ; preds = %.preheader61.preheader, %._crit_edge70
  %indvars.iv92 = phi i64 [ 0, %.preheader61.preheader ], [ %indvars.iv.next93, %._crit_edge70 ] ; 3 uses
  %i.bd = trunc nuw i64 %indvars.iv92 to i32
  %i.be = xor i32 %i.bd, -1
  %i.bf = add i32 %i.d, %i.be
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = mul i64 %i.g, %i.bg
  %i.bi = getelementptr [2 x i8], ptr %i.i, i64 %i.bh ; 7 uses
  %i.bj = mul i64 %i.l, %indvars.iv92
  %i.bk = getelementptr [2 x i8], ptr %i.n, i64 %i.bj ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ad
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bl = mul i64 %i.g, %i.bg
  %4 = add i64 %i.bl, %3
  %i.bm = shl i64 %4, 1
  %5 = add i64 %i.bm, 2                           ; 2 uses
  %6 = sub i64 %5, %i.v
  %i.bn = getelementptr i8, ptr %i.i, i64 %6
  %i.bo = getelementptr i8, ptr %i.i, i64 %5
  %bound0 = icmp ult ptr %i.n, %i.bo
  %bound1 = icmp ult ptr %i.bn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bp = or i1 %found.conflict, %stride.check
  br i1 %i.bp, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bq = trunc nuw i64 %index to i32
  %i.br = xor i32 %i.bq, -1
  %i.bs = add i32 %i.b, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr [2 x i8], ptr %i.bi, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -14
  %i.bw = getelementptr i8, ptr %i.bu, i64 -30
  %wide.load = load <8 x i16>, ptr %i.bv, align 2, !tbaa !139, !alias.scope !500
  %wide.load119 = load <8 x i16>, ptr %i.bw, align 2, !tbaa !139, !alias.scope !500
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse120 = shufflevector <8 x i16> %wide.load119, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bx = getelementptr [2 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  store <8 x i16> %reverse, ptr %i.bx, align 2, !tbaa !139, !alias.scope !501, !noalias !500
  store <8 x i16> %reverse120, ptr %i.by, align 2, !tbaa !139, !alias.scope !501, !noalias !500
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !493

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !209

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = trunc nuw i64 %index122 to i32
  %i.cb = xor i32 %i.ca, -1
  %i.cc = add i32 %i.b, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr [2 x i8], ptr %i.bi, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -6
  %wide.load123 = load <4 x i16>, ptr %i.cf, align 2, !tbaa !139, !alias.scope !500
  %reverse124 = shufflevector <4 x i16> %wide.load123, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cg = getelementptr [2 x i8], ptr %i.bk, i64 %index122
  store <4 x i16> %reverse124, ptr %i.cg, align 2, !tbaa !139, !alias.scope !501, !noalias !500
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !494

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ 0, %iter.check ], [ %n.vec121, %vec.epilog.middle.block ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod131.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv87.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ci = trunc nuw i64 %indvars.iv87.prol to i32
  %i.cj = xor i32 %i.ci, -1
  %i.ck = add i32 %i.b, %i.cj
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr [2 x i8], ptr %i.bi, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !139
  %i.co = getelementptr [2 x i8], ptr %i.bk, i64 %indvars.iv87.prol
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !139
  %indvars.iv.next88.prol = add nuw nsw i64 %indvars.iv87.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter130
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !495

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next88.prol, %vec.epilog.scalar.ph.prol ]
  %i.cp = sub nsw i64 %indvars.iv87.ph, %wide.trip.count90
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %._crit_edge70, label %vec.epilog.scalar.ph

._crit_edge70:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.loopexit, label %iter.check, !llvm.loop !496

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %vec.epilog.scalar.ph ], [ %indvars.iv87.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cr = trunc nuw i64 %indvars.iv87 to i32
  %i.cs = xor i32 %i.cr, -1
  %i.ct = add i32 %i.b, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr [2 x i8], ptr %i.bi, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !139
  %i.cx = getelementptr [2 x i8], ptr %i.bk, i64 %indvars.iv87
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !139
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.cy = trunc nuw i64 %indvars.iv.next88 to i32
  %i.cz = xor i32 %i.cy, -1
  %i.da = add i32 %i.b, %i.cz
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr [2 x i8], ptr %i.bi, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !139
  %i.de = getelementptr [2 x i8], ptr %i.bk, i64 %indvars.iv.next88
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !139
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv.next88.1 to i32
  %i.dg = xor i32 %i.df, -1
  %i.dh = add i32 %i.b, %i.dg
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr [2 x i8], ptr %i.bi, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !139
  %i.dl = getelementptr [2 x i8], ptr %i.bk, i64 %indvars.iv.next88.1
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !139
  %indvars.iv.next88.2 = add nuw nsw i64 %indvars.iv87, 3 ; 2 uses
  %i.dm = trunc nuw i64 %indvars.iv.next88.2 to i32
  %i.dn = xor i32 %i.dm, -1
  %i.do = add i32 %i.b, %i.dn
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr [2 x i8], ptr %i.bi, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !139
  %i.ds = getelementptr [2 x i8], ptr %i.bk, i64 %indvars.iv.next88.2
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !139
  %indvars.iv.next88.3 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %exitcond91.not.3 = icmp eq i64 %indvars.iv.next88.3, %wide.trip.count90
  br i1 %exitcond91.not.3, label %._crit_edge70, label %vec.epilog.scalar.ph, !llvm.loop !497

.preheader64:                                     ; preds = %.preheader64.preheader, %._crit_edge
  %indvars.iv82 = phi i64 [ 0, %.preheader64.preheader ], [ %indvars.iv.next83, %._crit_edge ] ; 3 uses
  %i.dt = mul i64 %i.g, %indvars.iv82
  %i.du = getelementptr [2 x i8], ptr %i.i, i64 %i.dt ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.n, i64 %indvars.iv82 ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.preheader64.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader64.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader64
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader64 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.dv = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.dw = xor i32 %i.dv, -1
  %i.dx = add i32 %i.b, %i.dw
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr [2 x i8], ptr %i.du, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !139
  %i.eb = mul i64 %i.l, %indvars.iv.epil.init
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.eb
  store i16 %i.ea, ptr %gep.epil, align 2, !tbaa !139
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.loopexit, label %.preheader64, !llvm.loop !498

.preheader64.new:                                 ; preds = %.preheader64, %.preheader64.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader64.new ], [ 0, %.preheader64 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.new ], [ 0, %.preheader64 ]
  %i.ec = trunc nuw i64 %indvars.iv to i32
  %i.ed = xor i32 %i.ec, -1
  %i.ee = add i32 %i.b, %i.ed
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr [2 x i8], ptr %i.du, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !139
  %i.ei = mul i64 %i.l, %indvars.iv
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ei
  store i16 %i.eh, ptr %gep, align 2, !tbaa !139
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ej = trunc nuw i64 %indvars.iv.next to i32
  %i.ek = xor i32 %i.ej, -1
  %i.el = add i32 %i.b, %i.ek
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr [2 x i8], ptr %i.du, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !139
  %i.ep = mul i64 %i.l, %indvars.iv.next
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ep
  store i16 %i.eo, ptr %gep.1, align 2, !tbaa !139
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader64.new, !llvm.loop !499

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge70, %._crit_edge73, %.preheader65, %.preheader62, %.preheader60, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK14HeifPixelImage16ComponentStorage10rotate_ccwIjEEviRS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !172  ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !173  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = lshr i64 %i.f, 2                         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %i.l = lshr i64 %i.k, 2                         ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !179  ; 5 uses
  switch i32 %1, label %.loopexit [
    i32 270, label %.preheader60
    i32 180, label %.preheader62
    i32 90, label %.preheader65
  ]

.preheader65:                                     ; preds = %bb.a
  %i.o = icmp ne i32 %i.d, 0
  %i.p = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %wide.trip.count85 = zext i32 %i.d to i64
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.b to i1
  br label %.preheader64

.preheader62:                                     ; preds = %bb.a
  %i.r = icmp ne i32 %i.d, 0
  %i.s = icmp ne i32 %i.b, 0
  %or.cond77 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond77, label %.preheader61.preheader, label %.loopexit

.preheader61.preheader:                           ; preds = %.preheader62
  %wide.trip.count95 = zext i32 %i.d to i64       ; 2 uses
  %wide.trip.count90 = zext i32 %i.b to i64       ; 8 uses
  %i.t = add nsw i64 %wide.trip.count90, -1       ; 2 uses
  %i.u = add i32 %i.b, -1                         ; 2 uses
  %i.v = shl nuw nsw i64 %wide.trip.count90, 2
  %3 = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %wide.trip.count95, 4611686018427387903
  %i.x = mul i64 %i.l, %i.w
  %i.y = add i64 %i.x, %wide.trip.count90
  %i.z = shl i64 %i.y, 2
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.z
  %min.iters.check = icmp ult i32 %i.b, 12
  %i.aa = trunc i64 %i.t to i32
  %i.ab = icmp ult i32 %i.u, %i.aa
  %i.ac = icmp ugt i64 %i.t, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  %stride.check = icmp slt i64 %i.k, 0
  %n.vec = and i64 %wide.trip.count90, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count90
  %xtraiter123 = and i64 %wide.trip.count90, 3    ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br label %.preheader61

.preheader60:                                     ; preds = %bb.a
  %i.ae = icmp ne i32 %i.d, 0
  %i.af = icmp ne i32 %i.b, 0
  %or.cond78 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond78, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader60
  %wide.trip.count105 = zext i32 %i.d to i64
  %wide.trip.count100 = zext i32 %i.b to i64      ; 2 uses
  %xtraiter126 = and i64 %wide.trip.count100, 3   ; 3 uses
  %i.ag = icmp ult i32 %i.b, 4
  %unroll_iter129 = and i64 %wide.trip.count100, 4294967292
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  %lcmp.mod128 = icmp ne i64 %xtraiter126, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge73
  %indvars.iv102 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next103, %._crit_edge73 ] ; 3 uses
  %i.ah = trunc nuw i64 %indvars.iv102 to i32
  %i.ai = xor i32 %i.ah, -1
  %i.aj = add i32 %i.d, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul i64 %i.g, %i.ak
  %i.am = getelementptr [4 x i8], ptr %i.i, i64 %i.al ; 5 uses
  %invariant.gep74 = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv102 ; 5 uses
  br i1 %i.ag, label %.epil.preheader125, label %.preheader.new

._crit_edge73.unr-lcssa:                          ; preds = %.preheader.new
  br i1 %lcmp.mod127.not, label %._crit_edge73, label %.epil.preheader125

.epil.preheader125:                               ; preds = %._crit_edge73.unr-lcssa, %.preheader
  %indvars.iv97.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next98.3, %._crit_edge73.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader125
  %indvars.iv97.epil = phi i64 [ %indvars.iv97.epil.init, %.epil.preheader125 ], [ %indvars.iv.next98.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader125 ], [ %epil.iter.next, %bb.b ]
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv97.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !141
  %i.ap = mul i64 %i.l, %indvars.iv97.epil
  %gep75.epil = getelementptr [4 x i8], ptr %invariant.gep74, i64 %i.ap
  store i32 %i.ao, ptr %gep75.epil, align 4, !tbaa !141
  %indvars.iv.next98.epil = add nuw nsw i64 %indvars.iv97.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter126
  br i1 %epil.iter.cmp.not, label %._crit_edge73, label %bb.b, !llvm.loop !502

._crit_edge73:                                    ; preds = %bb.b, %._crit_edge73.unr-lcssa
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.preheader, !llvm.loop !503

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter130 = phi i64 [ %niter130.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.aq = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv97
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !141
  %i.as = mul i64 %i.l, %indvars.iv97
  %gep75 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %i.as
  store i32 %i.ar, ptr %gep75, align 4, !tbaa !141
  %indvars.iv.next98 = or disjoint i64 %indvars.iv97, 1 ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next98
  %i.au = load i32, ptr %i.at, align 4, !tbaa !141
  %i.av = mul i64 %i.l, %indvars.iv.next98
  %gep75.1 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %i.av
  store i32 %i.au, ptr %gep75.1, align 4, !tbaa !141
  %indvars.iv.next98.1 = or disjoint i64 %indvars.iv97, 2 ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next98.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !141
  %i.ay = mul i64 %i.l, %indvars.iv.next98.1
  %gep75.2 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %i.ay
  store i32 %i.ax, ptr %gep75.2, align 4, !tbaa !141
  %indvars.iv.next98.2 = or disjoint i64 %indvars.iv97, 3 ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next98.2
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !141
  %i.bb = mul i64 %i.l, %indvars.iv.next98.2
  %gep75.3 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %i.bb
  store i32 %i.ba, ptr %gep75.3, align 4, !tbaa !141
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %niter130.next.3 = add i64 %niter130, 4         ; 2 uses
  %niter130.ncmp.3 = icmp eq i64 %niter130.next.3, %unroll_iter129
  br i1 %niter130.ncmp.3, label %._crit_edge73.unr-lcssa, label %.preheader.new, !llvm.loop !504

.preheader61:                                     ; preds = %.preheader61.preheader, %._crit_edge70
  %indvars.iv92 = phi i64 [ 0, %.preheader61.preheader ], [ %indvars.iv.next93, %._crit_edge70 ] ; 3 uses
  %i.bc = trunc nuw i64 %indvars.iv92 to i32
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %i.d, %i.bd
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = mul i64 %i.g, %i.bf
  %i.bh = getelementptr [4 x i8], ptr %i.i, i64 %i.bg ; 6 uses
  %i.bi = mul i64 %i.l, %indvars.iv92
  %i.bj = getelementptr [4 x i8], ptr %i.n, i64 %i.bi ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ad
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader61
  %i.bk = mul i64 %i.g, %i.bf
  %4 = add i64 %i.bk, %3
  %i.bl = shl i64 %4, 2
  %5 = add i64 %i.bl, 4                           ; 2 uses
  %6 = sub i64 %5, %i.v
  %i.bm = getelementptr i8, ptr %i.i, i64 %6
  %i.bn = getelementptr i8, ptr %i.i, i64 %5
  %bound0 = icmp ult ptr %i.n, %i.bn
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bo = or i1 %found.conflict, %stride.check
  br i1 %i.bo, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bp = trunc nuw i64 %index to i32
  %i.bq = xor i32 %i.bp, -1
  %i.br = add i32 %i.b, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -12
  %i.bv = getelementptr i8, ptr %i.bt, i64 -28
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !141, !alias.scope !514
  %wide.load118 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !141, !alias.scope !514
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse119 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bw = getelementptr [4 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <4 x i32> %reverse, ptr %i.bw, align 4, !tbaa !141, !alias.scope !515, !noalias !514
  store <4 x i32> %reverse119, ptr %i.bx, align 4, !tbaa !141, !alias.scope !515, !noalias !514
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !508

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader61, %vector.memcheck, %middle.block
  %indvars.iv87.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.preheader61 ] ; 3 uses
  br i1 %lcmp.mod124.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %scalar.ph.prol ], [ %indvars.iv87.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bz = trunc nuw i64 %indvars.iv87.prol to i32
  %i.ca = xor i32 %i.bz, -1
  %i.cb = add i32 %i.b, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr %i.bh, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !141
  %i.cf = getelementptr [4 x i8], ptr %i.bj, i64 %indvars.iv87.prol
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !141
  %indvars.iv.next88.prol = add nuw nsw i64 %indvars.iv87.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter123
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !509

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %scalar.ph.preheader ], [ %indvars.iv.next88.prol, %scalar.ph.prol ]
  %i.cg = sub nsw i64 %indvars.iv87.ph, %wide.trip.count90
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %._crit_edge70, label %scalar.ph

._crit_edge70:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.loopexit, label %.preheader61, !llvm.loop !510

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %scalar.ph ], [ %indvars.iv87.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ci = trunc nuw i64 %indvars.iv87 to i32
  %i.cj = xor i32 %i.ci, -1
  %i.ck = add i32 %i.b, %i.cj
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr [4 x i8], ptr %i.bh, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !141
  %i.co = getelementptr [4 x i8], ptr %i.bj, i64 %indvars.iv87
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !141
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next88 to i32
  %i.cq = xor i32 %i.cp, -1
  %i.cr = add i32 %i.b, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr [4 x i8], ptr %i.bh, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !141
  %i.cv = getelementptr [4 x i8], ptr %i.bj, i64 %indvars.iv.next88
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !141
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %i.cw = trunc nuw i64 %indvars.iv.next88.1 to i32
  %i.cx = xor i32 %i.cw, -1
  %i.cy = add i32 %i.b, %i.cx
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr [4 x i8], ptr %i.bh, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !141
  %i.dc = getelementptr [4 x i8], ptr %i.bj, i64 %indvars.iv.next88.1
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !141
  %indvars.iv.next88.2 = add nuw nsw i64 %indvars.iv87, 3 ; 2 uses
  %i.dd = trunc nuw i64 %indvars.iv.next88.2 to i32
  %i.de = xor i32 %i.dd, -1
  %i.df = add i32 %i.b, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.bh, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !141
  %i.dj = getelementptr [4 x i8], ptr %i.bj, i64 %indvars.iv.next88.2
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !141
  %indvars.iv.next88.3 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %exitcond91.not.3 = icmp eq i64 %indvars.iv.next88.3, %wide.trip.count90
  br i1 %exitcond91.not.3, label %._crit_edge70, label %scalar.ph, !llvm.loop !511

.preheader64:                                     ; preds = %.preheader64.preheader, %._crit_edge
  %indvars.iv82 = phi i64 [ 0, %.preheader64.preheader ], [ %indvars.iv.next83, %._crit_edge ] ; 3 uses
  %i.dk = mul i64 %i.g, %indvars.iv82
  %i.dl = getelementptr [4 x i8], ptr %i.i, i64 %i.dk ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv82 ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.preheader64.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader64.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader64
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader64 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.dm = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.dn = xor i32 %i.dm, -1
  %i.do = add i32 %i.b, %i.dn
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr [4 x i8], ptr %i.dl, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !141
  %i.ds = mul i64 %i.l, %indvars.iv.epil.init
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ds
  store i32 %i.dr, ptr %gep.epil, align 4, !tbaa !141
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.loopexit, label %.preheader64, !llvm.loop !512

.preheader64.new:                                 ; preds = %.preheader64, %.preheader64.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader64.new ], [ 0, %.preheader64 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.new ], [ 0, %.preheader64 ]
  %i.dt = trunc nuw i64 %indvars.iv to i32
  %i.du = xor i32 %i.dt, -1
  %i.dv = add i32 %i.b, %i.du
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr [4 x i8], ptr %i.dl, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !141
  %i.dz = mul i64 %i.l, %indvars.iv
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dz
  store i32 %i.dy, ptr %gep, align 4, !tbaa !141
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ea = trunc nuw i64 %indvars.iv.next to i32
  %i.eb = xor i32 %i.ea, -1
  %i.ec = add i32 %i.b, %i.eb
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr [4 x i8], ptr %i.dl, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !141
  %i.eg = mul i64 %i.l, %indvars.iv.next
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eg
  store i32 %i.ef, ptr %gep.1, align 4, !tbaa !141
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader64.new, !llvm.loop !513

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge70, %._crit_edge73, %.preheader65, %.preheader62, %.preheader60, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK14HeifPixelImage16ComponentStorage10rotate_ccwImEEviRS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !172  ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !173  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = lshr i64 %i.f, 3                         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %i.l = lshr i64 %i.k, 3                         ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !179  ; 5 uses
  switch i32 %1, label %.loopexit [
    i32 270, label %.preheader60
    i32 180, label %.preheader62
    i32 90, label %.preheader65
  ]

.preheader65:                                     ; preds = %bb.a
  %i.o = icmp ne i32 %i.d, 0
  %i.p = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %wide.trip.count85 = zext i32 %i.d to i64
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.b to i1
  br label %.preheader64

.preheader62:                                     ; preds = %bb.a
  %i.r = icmp ne i32 %i.d, 0
  %i.s = icmp ne i32 %i.b, 0
  %or.cond77 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond77, label %.preheader61.preheader, label %.loopexit

.preheader61.preheader:                           ; preds = %.preheader62
  %wide.trip.count95 = zext i32 %i.d to i64       ; 2 uses
  %wide.trip.count90 = zext i32 %i.b to i64       ; 8 uses
  %i.t = add nsw i64 %wide.trip.count90, -1       ; 2 uses
  %i.u = add i32 %i.b, -1                         ; 2 uses
  %i.v = shl nuw nsw i64 %wide.trip.count90, 3
  %3 = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %wide.trip.count95, 2305843009213693951
  %i.x = mul i64 %i.l, %i.w
  %i.y = add i64 %i.x, %wide.trip.count90
  %i.z = shl i64 %i.y, 3
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.z
  %min.iters.check = icmp ult i32 %i.b, 10
  %i.aa = trunc i64 %i.t to i32
  %i.ab = icmp ult i32 %i.u, %i.aa
  %i.ac = icmp ugt i64 %i.t, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  %stride.check = icmp slt i64 %i.k, 0
  %n.vec = and i64 %wide.trip.count90, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count90
  %xtraiter123 = and i64 %wide.trip.count90, 3    ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br label %.preheader61

.preheader60:                                     ; preds = %bb.a
  %i.ae = icmp ne i32 %i.d, 0
  %i.af = icmp ne i32 %i.b, 0
  %or.cond78 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond78, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader60
  %wide.trip.count105 = zext i32 %i.d to i64
  %wide.trip.count100 = zext i32 %i.b to i64      ; 2 uses
  %xtraiter126 = and i64 %wide.trip.count100, 3   ; 3 uses
  %i.ag = icmp ult i32 %i.b, 4
  %unroll_iter129 = and i64 %wide.trip.count100, 4294967292
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  %lcmp.mod128 = icmp ne i64 %xtraiter126, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge73
  %indvars.iv102 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next103, %._crit_edge73 ] ; 3 uses
  %i.ah = trunc nuw i64 %indvars.iv102 to i32
  %i.ai = xor i32 %i.ah, -1
  %i.aj = add i32 %i.d, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul i64 %i.g, %i.ak
  %i.am = getelementptr [8 x i8], ptr %i.i, i64 %i.al ; 5 uses
  %invariant.gep74 = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv102 ; 5 uses
  br i1 %i.ag, label %.epil.preheader125, label %.preheader.new

._crit_edge73.unr-lcssa:                          ; preds = %.preheader.new
  br i1 %lcmp.mod127.not, label %._crit_edge73, label %.epil.preheader125

.epil.preheader125:                               ; preds = %._crit_edge73.unr-lcssa, %.preheader
  %indvars.iv97.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next98.3, %._crit_edge73.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader125
  %indvars.iv97.epil = phi i64 [ %indvars.iv97.epil.init, %.epil.preheader125 ], [ %indvars.iv.next98.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader125 ], [ %epil.iter.next, %bb.b ]
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv97.epil
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !205
  %i.ap = mul i64 %i.l, %indvars.iv97.epil
  %gep75.epil = getelementptr [8 x i8], ptr %invariant.gep74, i64 %i.ap
  store i64 %i.ao, ptr %gep75.epil, align 8, !tbaa !205
  %indvars.iv.next98.epil = add nuw nsw i64 %indvars.iv97.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter126
  br i1 %epil.iter.cmp.not, label %._crit_edge73, label %bb.b, !llvm.loop !516

._crit_edge73:                                    ; preds = %bb.b, %._crit_edge73.unr-lcssa
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.preheader, !llvm.loop !517

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter130 = phi i64 [ %niter130.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.aq = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv97
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !205
  %i.as = mul i64 %i.l, %indvars.iv97
  %gep75 = getelementptr [8 x i8], ptr %invariant.gep74, i64 %i.as
  store i64 %i.ar, ptr %gep75, align 8, !tbaa !205
  %indvars.iv.next98 = or disjoint i64 %indvars.iv97, 1 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.next98
  %i.au = load i64, ptr %i.at, align 8, !tbaa !205
  %i.av = mul i64 %i.l, %indvars.iv.next98
  %gep75.1 = getelementptr [8 x i8], ptr %invariant.gep74, i64 %i.av
  store i64 %i.au, ptr %gep75.1, align 8, !tbaa !205
  %indvars.iv.next98.1 = or disjoint i64 %indvars.iv97, 2 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.next98.1
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !205
  %i.ay = mul i64 %i.l, %indvars.iv.next98.1
  %gep75.2 = getelementptr [8 x i8], ptr %invariant.gep74, i64 %i.ay
  store i64 %i.ax, ptr %gep75.2, align 8, !tbaa !205
  %indvars.iv.next98.2 = or disjoint i64 %indvars.iv97, 3 ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.next98.2
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !205
  %i.bb = mul i64 %i.l, %indvars.iv.next98.2
  %gep75.3 = getelementptr [8 x i8], ptr %invariant.gep74, i64 %i.bb
  store i64 %i.ba, ptr %gep75.3, align 8, !tbaa !205
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %niter130.next.3 = add i64 %niter130, 4         ; 2 uses
  %niter130.ncmp.3 = icmp eq i64 %niter130.next.3, %unroll_iter129
  br i1 %niter130.ncmp.3, label %._crit_edge73.unr-lcssa, label %.preheader.new, !llvm.loop !518

.preheader61:                                     ; preds = %.preheader61.preheader, %._crit_edge70
  %indvars.iv92 = phi i64 [ 0, %.preheader61.preheader ], [ %indvars.iv.next93, %._crit_edge70 ] ; 3 uses
  %i.bc = trunc nuw i64 %indvars.iv92 to i32
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %i.d, %i.bd
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = mul i64 %i.g, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.i, i64 %i.bg ; 6 uses
  %i.bi = mul i64 %i.l, %indvars.iv92
  %i.bj = getelementptr [8 x i8], ptr %i.n, i64 %i.bi ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ad
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader61
  %i.bk = mul i64 %i.g, %i.bf
  %4 = add i64 %i.bk, %3
  %i.bl = shl i64 %4, 3
  %5 = add i64 %i.bl, 8                           ; 2 uses
  %6 = sub i64 %5, %i.v
  %i.bm = getelementptr i8, ptr %i.i, i64 %6
  %i.bn = getelementptr i8, ptr %i.i, i64 %5
  %bound0 = icmp ult ptr %i.n, %i.bn
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bo = or i1 %found.conflict, %stride.check
  br i1 %i.bo, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bp = trunc nuw i64 %index to i32
  %i.bq = xor i32 %i.bp, -1
  %i.br = add i32 %i.b, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bu, align 8, !tbaa !205, !alias.scope !528
  %wide.load118 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !205, !alias.scope !528
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse119 = shufflevector <2 x i64> %wide.load118, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = getelementptr [8 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <2 x i64> %reverse, ptr %i.bw, align 8, !tbaa !205, !alias.scope !529, !noalias !528
  store <2 x i64> %reverse119, ptr %i.bx, align 8, !tbaa !205, !alias.scope !529, !noalias !528
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !522

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader61, %vector.memcheck, %middle.block
  %indvars.iv87.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.preheader61 ] ; 3 uses
  br i1 %lcmp.mod124.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %scalar.ph.prol ], [ %indvars.iv87.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bz = trunc nuw i64 %indvars.iv87.prol to i32
  %i.ca = xor i32 %i.bz, -1
  %i.cb = add i32 %i.b, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr %i.bh, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !205
  %i.cf = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv87.prol
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !205
  %indvars.iv.next88.prol = add nuw nsw i64 %indvars.iv87.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter123
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !523

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %scalar.ph.preheader ], [ %indvars.iv.next88.prol, %scalar.ph.prol ]
  %i.cg = sub nsw i64 %indvars.iv87.ph, %wide.trip.count90
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %._crit_edge70, label %scalar.ph

._crit_edge70:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.loopexit, label %.preheader61, !llvm.loop !524

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %scalar.ph ], [ %indvars.iv87.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ci = trunc nuw i64 %indvars.iv87 to i32
  %i.cj = xor i32 %i.ci, -1
  %i.ck = add i32 %i.b, %i.cj
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %i.bh, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !205
  %i.co = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv87
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !205
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next88 to i32
  %i.cq = xor i32 %i.cp, -1
  %i.cr = add i32 %i.b, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.bh, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !205
  %i.cv = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv.next88
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !205
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %i.cw = trunc nuw i64 %indvars.iv.next88.1 to i32
  %i.cx = xor i32 %i.cw, -1
  %i.cy = add i32 %i.b, %i.cx
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %i.bh, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !205
  %i.dc = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv.next88.1
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !205
  %indvars.iv.next88.2 = add nuw nsw i64 %indvars.iv87, 3 ; 2 uses
  %i.dd = trunc nuw i64 %indvars.iv.next88.2 to i32
  %i.de = xor i32 %i.dd, -1
  %i.df = add i32 %i.b, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.bh, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !205
  %i.dj = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv.next88.2
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !205
  %indvars.iv.next88.3 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %exitcond91.not.3 = icmp eq i64 %indvars.iv.next88.3, %wide.trip.count90
  br i1 %exitcond91.not.3, label %._crit_edge70, label %scalar.ph, !llvm.loop !525

.preheader64:                                     ; preds = %.preheader64.preheader, %._crit_edge
  %indvars.iv82 = phi i64 [ 0, %.preheader64.preheader ], [ %indvars.iv.next83, %._crit_edge ] ; 3 uses
  %i.dk = mul i64 %i.g, %indvars.iv82
  %i.dl = getelementptr [8 x i8], ptr %i.i, i64 %i.dk ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv82 ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.preheader64.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader64.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader64
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader64 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.dm = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.dn = xor i32 %i.dm, -1
  %i.do = add i32 %i.b, %i.dn
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr [8 x i8], ptr %i.dl, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !205
  %i.ds = mul i64 %i.l, %indvars.iv.epil.init
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ds
  store i64 %i.dr, ptr %gep.epil, align 8, !tbaa !205
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.loopexit, label %.preheader64, !llvm.loop !526

.preheader64.new:                                 ; preds = %.preheader64, %.preheader64.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader64.new ], [ 0, %.preheader64 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.new ], [ 0, %.preheader64 ]
  %i.dt = trunc nuw i64 %indvars.iv to i32
  %i.du = xor i32 %i.dt, -1
  %i.dv = add i32 %i.b, %i.du
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr [8 x i8], ptr %i.dl, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !205
  %i.dz = mul i64 %i.l, %indvars.iv
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dz
  store i64 %i.dy, ptr %gep, align 8, !tbaa !205
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ea = trunc nuw i64 %indvars.iv.next to i32
  %i.eb = xor i32 %i.ea, -1
  %i.ec = add i32 %i.b, %i.eb
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr [8 x i8], ptr %i.dl, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !205
  %i.eg = mul i64 %i.l, %indvars.iv.next
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eg
  store i64 %i.ef, ptr %gep.1, align 8, !tbaa !205
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader64.new, !llvm.loop !527

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge70, %._crit_edge73, %.preheader65, %.preheader62, %.preheader60, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK14HeifPixelImage16ComponentStorage10rotate_ccwI14heif_complex64EEviRS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !172  ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !173  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = lshr i64 %i.f, 4                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !177
  %i.l = lshr i64 %i.k, 4                         ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !179  ; 3 uses
  switch i32 %1, label %.loopexit [
    i32 270, label %.preheader60
    i32 180, label %.preheader62
    i32 90, label %.preheader65
  ]

.preheader65:                                     ; preds = %bb.a
  %i.o = icmp ne i32 %i.d, 0
  %i.p = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %.preheader64.preheader, label %.loopexit

.preheader64.preheader:                           ; preds = %.preheader65
  %wide.trip.count85 = zext i32 %i.d to i64
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod116 = trunc i32 %i.b to i1
  br label %.preheader64
end_hunk_0
begin_hunk_1_@_ZN14HeifPixelImage14fill_RGB_16bitEtttt:bb.a
  %.not15.i.3 = icmp eq ptr %i.co, %i.cm
  br i1 %.not15.i.3, label %.split72.us, label %.lr.ph.i.3

_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.3: ; preds = %.lr.ph.i.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.3, i64 36
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !146
  %.not50.3 = icmp eq i16 %i.cq, 8
  br i1 %.not50.3, label %bb.t, label %.thread.i.i53

bb.t:                                             ; preds = %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.3
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.3, i64 44
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !173 ; 2 uses
  %i.ct = zext i32 %i.cs to i64                   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.3, i64 80
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !177 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.3, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !179 ; 2 uses
  %i.cy = lshr i16 %5, 8
  %i.cz = trunc nuw i16 %i.cy to i8               ; 2 uses
  %i.da = udiv i64 -1, %i.cv
  %i.db = icmp ugt i64 %i.da, %i.ct
  br i1 %i.db, label %bb.u, label %.preheader.3

.preheader.3:                                     ; preds = %bb.t
  %.not73.3 = icmp eq i32 %i.cs, 0
  br i1 %.not73.3, label %.split72.us, label %.lr.ph.preheader.3

.lr.ph.preheader.3:                               ; preds = %.preheader.3
  %i.dc = mul nuw i64 %i.cv, %i.ct
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cx, i8 %i.cz, i64 %i.dc, i1 false)
  br label %.split72.us

bb.u:                                             ; preds = %bb.t
  %i.dd = mul i64 %i.cv, %i.ct
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cx, i8 %i.cz, i64 %i.dd, i1 false)
  br label %.split72.us

bb.v:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit59, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit52
  %.pn = phi { ptr, i32 } [ %i.ag, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit59 ], [ %i.o, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn

.split72.us:                                      ; preds = %bb.s, %.preheader.3, %.lr.ph.preheader.3, %bb.u, %.loopexit.2
  %i.de = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.de, ptr %0, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.split72.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !165
  br label %_ZN5ErrorC2ERKS_.exit

bb.x:                                             ; preds = %.split72.us
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !36
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !36
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef %i.di, i64 noundef %i.dj)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit58, %bb.x, %bb.w
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_Z21negate_negative_int32i(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 0, %0
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN14HeifPixelImage7overlayERNSt3__110shared_ptrIS_EEii(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__1::set", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.b = load i32, ptr %i.a, align 4, !tbaa !132
  %i.c = add i32 %i.b, -1
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !211    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 380
  %i.g = load i32, ptr %i.f, align 4, !tbaa !132
  %i.h = add i32 %i.g, -1
  %i.i = icmp ult i32 %i.h, 2
  br i1 %i.i, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.j = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !36
  store i64 65, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 57, ptr %i.l, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.j, ptr noundef nonnull align 1 dereferenceable(57) @.str.22, i64 57, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 57
  store i8 0, ptr %i.m, align 1, !tbaa !36
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread.i.i
  %i.n = load i8, ptr %5, align 8
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.q = load i64, ptr %5, align 8
  %i.r = and i64 %i.q, -2
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.r) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.y

bb.e:                                             ; preds = %.thread.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load i8, ptr %5, align 8
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit128

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.w = load i64, ptr %5, align 8
  %i.x = and i64 %i.w, -2
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit128

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit128: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @_ZNK14HeifPixelImage15get_channel_setEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::set") align 8 %6, ptr noundef nonnull align 8 dereferenceable(448) %i.e)
  %i.y = load ptr, ptr %2, align 8, !tbaa !211    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 384
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 392
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 3 uses
  %.not1516.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not1516.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.010.017.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ad = load i32, ptr %.sroa.010.017.i.i, align 8, !tbaa !57
  %.not.i.i = icmp eq i32 %i.ad, 6                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 88 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ae, %i.ac
  %or.cond212 = select i1 %.not.i.i, i1 true, i1 %.not15.i.i
  br i1 %or.cond212, label %.lr.ph.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.010.017.i.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.aa, %.lr.ph.i.i ] ; 4 uses
  %i.af = load i32, ptr %.sroa.010.017.i.i.i, align 8, !tbaa !57
  %.not.i.i.i = icmp eq i32 %i.af, 6
  br i1 %.not.i.i.i, label %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i, i64 88 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.ag, %i.ac
  br i1 %.not15.i.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %.lr.ph.i.i.i

_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !177
  %i.aj = shl i64 %i.ai, 32
  %i.ak = ashr exact i64 %i.aj, 32
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !179
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.h, %bb.g, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i
  %i.an = phi i1 [ %.not.i.i, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i ], [ false, %bb.g ], [ %.not.i.i, %bb.h ]
  %.0201 = phi i64 [ %i.ak, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ] ; 4 uses
  %.0.i.i = phi ptr [ %i.am, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i ], [ null, %bb.g ], [ null, %bb.h ] ; 3 uses
  %i.ao = load ptr, ptr %6, align 8, !tbaa !197   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.not211228 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not211228, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.as = icmp slt i32 %3, 1
  %i.at = icmp sgt i32 %3, -1                     ; 4 uses
  %i.au = sub i32 0, %3                           ; 2 uses
  %i.av = icmp slt i32 %4, 1
  %i.aw = icmp sgt i32 %4, -1                     ; 3 uses
  %i.ax = sub i32 0, %4                           ; 2 uses
  %i.ay = sext i32 %3 to i64
  %i.az = sext i32 %4 to i64
  %i.ba = select i1 %i.at, i32 0, i32 %3
  %.0103 = select i1 %i.at, i32 0, i32 %i.au      ; 2 uses
  %narrow = select i1 %i.at, i32 %3, i32 0
  %.0101 = zext nneg i32 %narrow to i64           ; 2 uses
  %i.bb = select i1 %i.aw, i32 0, i32 %4
  %.0102 = select i1 %i.aw, i32 0, i32 %i.ax      ; 3 uses
  %i.bc = zext i32 %.0103 to i64                  ; 13 uses
  %invariant.gep226 = getelementptr i8, ptr %.0.i.i, i64 %i.bc
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bg = zext i32 %.0102 to i64                  ; 8 uses
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.bc
  %i.bh = mul nsw i64 %.0201, %i.bg
  %i.bi = shl nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bj = getelementptr i8, ptr %.0.i.i, i64 %i.bh
  %scevgep309 = getelementptr i8, ptr %i.bj, i64 %i.bi
  %i.bk = add i32 %4, %.0102
  %i.bl = zext i32 %i.bk to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.bg, 1
  %stride.check317 = icmp slt i64 %.0201, 0
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNSt3__121__tree_const_iteratorI12heif_channelPNS_11__tree_nodeIS1_PvEElEppB8ne180100Ev.exit
  %.sroa.0195.0229 = phi ptr [ %.06.i.i, %_ZNSt3__121__tree_const_iteratorI12heif_channelPNS_11__tree_nodeIS1_PvEElEppB8ne180100Ev.exit ], [ %i.ao, %.lr.ph.split.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0195.0229, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !200 ; 7 uses
  %i.bo = load ptr, ptr %i.aq, align 8, !tbaa !28 ; 5 uses
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 5 uses
  %.not1516.i.i129 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not1516.i.i129, label %_ZN5ErrorC2ERKS_.exit, label %.lr.ph.i.i130

.lr.ph.i.i130:                                    ; preds = %.lr.ph.split, %bb.i
  %.sroa.010.017.i.i131 = phi ptr [ %i.br, %bb.i ], [ %i.bo, %.lr.ph.split ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.010.017.i.i131, align 8, !tbaa !57
  %.not.i.i132 = icmp eq i32 %i.bq, %i.bn
  br i1 %.not.i.i132, label %_ZNK14HeifPixelImage11has_channelE12heif_channel.exit134, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i130
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i131, i64 88 ; 2 uses
  %.not15.i.i133 = icmp eq ptr %i.br, %i.bp
  br i1 %.not15.i.i133, label %_ZN5ErrorC2ERKS_.exit, label %.lr.ph.i.i130

_ZNK14HeifPixelImage11has_channelE12heif_channel.exit134: ; preds = %.lr.ph.i.i130
  %i.bs = load ptr, ptr %2, align 8, !tbaa !211   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 384
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !28 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 392
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 4 uses
  %.not1516.i.i.i135 = icmp eq ptr %i.bu, %i.bw   ; 2 uses
  br i1 %.not1516.i.i.i135, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit143, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %_ZNK14HeifPixelImage11has_channelE12heif_channel.exit134, %bb.j
  %.sroa.010.017.i.i.i137 = phi ptr [ %i.by, %bb.j ], [ %i.bu, %_ZNK14HeifPixelImage11has_channelE12heif_channel.exit134 ] ; 4 uses
  %i.bx = load i32, ptr %.sroa.010.017.i.i.i137, align 8, !tbaa !57
  %.not.i.i.i138 = icmp eq i32 %i.bx, %i.bn
  br i1 %.not.i.i.i138, label %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i142, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i136
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i137, i64 88 ; 2 uses
  %.not15.i.i.i139 = icmp eq ptr %i.by, %i.bw
  br i1 %.not15.i.i.i139, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit143, label %.lr.ph.i.i.i136

_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i142: ; preds = %.lr.ph.i.i.i136
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i137, i64 80
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !177
  %i.cb = shl i64 %i.ca, 32
  %i.cc = ashr exact i64 %i.cb, 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i137, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !179
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit143

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit143: ; preds = %bb.j, %_ZNK14HeifPixelImage11has_channelE12heif_channel.exit134, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i142
  %.0200 = phi i64 [ %i.cc, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i142 ], [ 0, %_ZNK14HeifPixelImage11has_channelE12heif_channel.exit134 ], [ 0, %bb.j ] ; 7 uses
  %.0.i.i141 = phi ptr [ %i.ce, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i142 ], [ null, %_ZNK14HeifPixelImage11has_channelE12heif_channel.exit134 ], [ null, %bb.j ] ; 3 uses
  br label %.lr.ph.i.i.i145

.lr.ph.i.i.i145:                                  ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit143, %bb.k
  %.sroa.010.017.i.i.i146 = phi ptr [ %i.cg, %bb.k ], [ %i.bo, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit143 ] ; 4 uses
  %i.cf = load i32, ptr %.sroa.010.017.i.i.i146, align 8, !tbaa !57
  %.not.i.i.i147 = icmp eq i32 %i.cf, %i.bn
  br i1 %.not.i.i.i147, label %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i151, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i145
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i146, i64 88 ; 2 uses
  %.not15.i.i.i148 = icmp eq ptr %i.cg, %i.bp
  br i1 %.not15.i.i.i148, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit152, label %.lr.ph.i.i.i145

_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i151: ; preds = %.lr.ph.i.i.i145
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i146, i64 80
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !177
  %i.cj = shl i64 %i.ci, 32
  %i.ck = ashr exact i64 %i.cj, 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i146, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !179
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit152

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit152: ; preds = %bb.k, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i151
  %.0 = phi i64 [ %i.ck, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i151 ], [ 0, %bb.k ] ; 4 uses
  %.0.i.i150 = phi ptr [ %i.cm, %_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i.i151 ], [ null, %bb.k ] ; 3 uses
  br i1 %.not1516.i.i.i135, label %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit152, %bb.l
  %.sroa.010.017.i.i155 = phi ptr [ %i.co, %bb.l ], [ %i.bu, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit152 ] ; 3 uses
  %i.cn = load i32, ptr %.sroa.010.017.i.i155, align 8, !tbaa !57
  %.not.i.i156 = icmp eq i32 %i.cn, %i.bn
  br i1 %.not.i.i156, label %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i154
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i155, i64 88 ; 2 uses
  %.not15.i.i157 = icmp eq ptr %i.co, %i.bw
  br i1 %.not15.i.i157, label %_ZNK14HeifPixelImage9get_widthE12heif_channel.exit, label %.lr.ph.i.i154

_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i: ; preds = %.lr.ph.i.i154
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i155, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !172
  br label %_ZNK14HeifPixelImage9get_widthE12heif_channel.exit

_ZNK14HeifPixelImage9get_widthE12heif_channel.exit: ; preds = %bb.l, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i
  %.0.i = phi i32 [ %i.cq, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i ], [ 0, %bb.l ] ; 2 uses
  br label %.lr.ph.i.i159

.lr.ph.i.i159:                                    ; preds = %_ZNK14HeifPixelImage9get_widthE12heif_channel.exit, %bb.m
  %.sroa.010.017.i.i160 = phi ptr [ %i.cs, %bb.m ], [ %i.bu, %_ZNK14HeifPixelImage9get_widthE12heif_channel.exit ] ; 3 uses
  %i.cr = load i32, ptr %.sroa.010.017.i.i160, align 8, !tbaa !57
  %.not.i.i161 = icmp eq i32 %i.cr, %i.bn
  br i1 %.not.i.i161, label %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i164, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i159
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i160, i64 88 ; 2 uses
  %.not15.i.i162 = icmp eq ptr %i.cs, %i.bw
  br i1 %.not15.i.i162, label %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit, label %.lr.ph.i.i159

_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i164: ; preds = %.lr.ph.i.i159
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i160, i64 44
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !173
  br label %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit

_ZNK14HeifPixelImage10get_heightE12heif_channel.exit: ; preds = %bb.m, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit152, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i164
  %.0.i203 = phi i32 [ %.0.i, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i164 ], [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit152 ], [ %.0.i, %bb.m ] ; 3 uses
  %.0.i163 = phi i32 [ %i.cu, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i164 ], [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit152 ], [ 0, %bb.m ] ; 3 uses
  br label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit, %bb.n
  %.sroa.010.017.i.i167 = phi ptr [ %i.cw, %bb.n ], [ %i.bo, %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit ] ; 3 uses
  %i.cv = load i32, ptr %.sroa.010.017.i.i167, align 8, !tbaa !57
  %.not.i.i168 = icmp eq i32 %i.cv, %i.bn
  br i1 %.not.i.i168, label %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i171, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i166
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i167, i64 88 ; 2 uses
  %.not15.i.i169 = icmp eq ptr %i.cw, %i.bp
  br i1 %.not15.i.i169, label %_ZNK14HeifPixelImage9get_widthE12heif_channel.exit172, label %.lr.ph.i.i166

_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i171: ; preds = %.lr.ph.i.i166
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i167, i64 40
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !172
  br label %_ZNK14HeifPixelImage9get_widthE12heif_channel.exit172

_ZNK14HeifPixelImage9get_widthE12heif_channel.exit172: ; preds = %bb.n, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i171
  %.0.i170 = phi i32 [ %i.cy, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i171 ], [ 0, %bb.n ] ; 3 uses
  br label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %_ZNK14HeifPixelImage9get_widthE12heif_channel.exit172, %bb.o
  %.sroa.010.017.i.i175 = phi ptr [ %i.da, %bb.o ], [ %i.bo, %_ZNK14HeifPixelImage9get_widthE12heif_channel.exit172 ] ; 3 uses
  %i.cz = load i32, ptr %.sroa.010.017.i.i175, align 8, !tbaa !57
  %.not.i.i176 = icmp eq i32 %i.cz, %i.bn
  br i1 %.not.i.i176, label %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i179, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i174
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i175, i64 88 ; 2 uses
  %.not15.i.i177 = icmp eq ptr %i.da, %i.bp
  br i1 %.not15.i.i177, label %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit180, label %.lr.ph.i.i174

_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i179: ; preds = %.lr.ph.i.i174
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i175, i64 44
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !173
  br label %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit180

_ZNK14HeifPixelImage10get_heightE12heif_channel.exit180: ; preds = %bb.o, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i179
  %.0.i178 = phi i32 [ %i.dc, %_ZNK14HeifPixelImage24find_storage_for_channelE12heif_channel.exit.i179 ], [ 0, %bb.o ] ; 3 uses
  %.not = icmp ult i32 %3, %.0.i170
  %or.cond = or i1 %i.as, %.not
  br i1 %or.cond, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit180
  %i.dd = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.dd, ptr %0, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.df = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %.invoke, label %_ZN5ErrorC2ERKS_.exit191.sink.split

bb.q:                                             ; preds = %.invoke
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %i.ap, align 8, !tbaa !204
  call void @_ZNSt3__16__treeI12heif_channelNS_4lessIS1_EENS_9allocatorIS1_EEE7destroyEPNS_11__tree_nodeIS1_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.di) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.z

bb.r:                                             ; preds = %_ZNK14HeifPixelImage10get_heightE12heif_channel.exit180
  %.not118 = icmp ugt i32 %.0.i203, %i.au
  %or.cond208 = select i1 %i.at, i1 true, i1 %.not118
  br i1 %or.cond208, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.dj, ptr %0, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.dm = trunc i8 %i.dl to i1
  br i1 %i.dm, label %.invoke, label %_ZN5ErrorC2ERKS_.exit191.sink.split

bb.t:                                             ; preds = %bb.r
  %.not119 = icmp ult i32 %4, %.0.i178
  %or.cond127 = or i1 %i.av, %.not119
  br i1 %or.cond127, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.dn, ptr %0, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %.invoke, label %_ZN5ErrorC2ERKS_.exit191.sink.split

bb.v:                                             ; preds = %bb.t
  %.not120 = icmp ugt i32 %.0.i163, %i.ax
  %or.cond210 = select i1 %i.aw, i1 true, i1 %.not120
  br i1 %or.cond210, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.dr, ptr %0, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.du = trunc i8 %i.dt to i1
  br i1 %i.du, label %.invoke, label %_ZN5ErrorC2ERKS_.exit191.sink.split

bb.x:                                             ; preds = %bb.v
  %i.dv = zext i32 %.0.i203 to i64
  %i.dw = add nsw i64 %i.dv, %i.ay
  %i.dx = zext i32 %.0.i170 to i64
  %i.dy = icmp sgt i64 %i.dw, %i.dx
  %i.dz = sub i32 %.0.i170, %3
  %spec.select = select i1 %i.dy, i32 %i.dz, i32 %.0.i203
  %i.ea = zext i32 %.0.i163 to i64
  %i.eb = add nsw i64 %i.ea, %i.az
  %i.ec = zext i32 %.0.i178 to i64
  %i.ed = icmp sgt i64 %i.eb, %i.ec
  %i.ee = sub i32 %.0.i178, %4
  %.0104 = select i1 %i.ed, i32 %i.ee, i32 %.0.i163
  %.1107 = add i32 %spec.select, %i.ba            ; 2 uses
  %.1105 = add i32 %.0104, %i.bb                  ; 3 uses
  %i.ef = icmp ult i32 %.0102, %.1105
  br i1 %i.ef, label %.lr.ph225, label %_ZN5ErrorC2ERKS_.exit

.lr.ph225:                                        ; preds = %bb.x
  %i.eg = getelementptr i8, ptr %.0.i.i150, i64 %.0101 ; 4 uses
  %i.eh = getelementptr i8, ptr %.0.i.i141, i64 %i.bc ; 4 uses
  %i.ei = zext i32 %.1107 to i64                  ; 8 uses
  br i1 %i.an, label %.lr.ph225.split.us, label %.lr.ph225.split.preheader

.lr.ph225.split.preheader:                        ; preds = %.lr.ph225
  %wide.trip.count = zext i32 %.1105 to i64       ; 3 uses
  %i.ej = sub nsw i64 %wide.trip.count, %i.bg
  %xtraiter = and i64 %i.ej, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph225.split.prol.loopexit, label %.lr.ph225.split.prol

.lr.ph225.split.prol:                             ; preds = %.lr.ph225.split.preheader
  %i.ek = mul nsw i64 %.0, %i.bl
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ek
  %i.em = mul nsw i64 %.0200, %i.bg
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.en, i64 %i.ei, i1 false)
  br label %.lr.ph225.split.prol.loopexit

.lr.ph225.split.prol.loopexit:                    ; preds = %.lr.ph225.split.prol, %.lr.ph225.split.preheader
  %indvars.iv.unr = phi i64 [ %i.bg, %.lr.ph225.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph225.split.prol ]
  %i.eo = add nsw i64 %wide.trip.count, -1
  %i.ep = icmp eq i64 %i.eo, %i.bg
  br i1 %i.ep, label %_ZN5ErrorC2ERKS_.exit, label %.lr.ph225.split

.lr.ph225.split.us:                               ; preds = %.lr.ph225
  %i.eq = icmp ult i32 %.0103, %.1107
  br i1 %i.eq, label %.preheader.us.preheader, label %_ZN5ErrorC2ERKS_.exit

.preheader.us.preheader:                          ; preds = %.lr.ph225.split.us
  %wide.trip.count252 = zext i32 %.1105 to i64    ; 2 uses
  %i.er = add nsw i64 %wide.trip.count252, -1     ; 2 uses
  %i.es = mul i64 %.0201, %i.er
  %i.et = getelementptr i8, ptr %scevgep, i64 %i.es
  %scevgep308 = getelementptr i8, ptr %i.et, i64 %i.ei
  %scevgep310 = getelementptr i8, ptr %.0.i.i141, i64 %i.bc
  %i.eu = mul i64 %.0200, %i.er
  %i.ev = getelementptr i8, ptr %scevgep310, i64 %i.eu
  %scevgep311 = getelementptr i8, ptr %i.ev, i64 %i.ei
  %scevgep312 = getelementptr i8, ptr %.0.i.i141, i64 %i.bi
  %i.ew = mul nsw i64 %.0200, %i.bg
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.ew
  %i.ex = sub nsw i64 %i.ei, %i.bc                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ex, 4
  %invariant.gep = getelementptr i8, ptr %.0.i.i150, i64 %i.bc
  %invariant.gep345 = getelementptr i8, ptr %.0.i.i150, i64 %i.ei
  %stride.check = icmp slt i64 %.0200, 0
  %min.iters.check318 = icmp ult i64 %i.ex, 16
  %i.ey = and i64 %i.ex, 12
  %n.vec = and i64 %i.ex, -16                     ; 4 uses
  %i.ez = add nsw i64 %n.vec, %i.bc
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ey, 0
  %n.vec321 = and i64 %i.ex, -4                   ; 3 uses
  %i.fa = add nsw i64 %n.vec321, %i.bc
  %cmp.n327 = icmp eq i64 %i.ex, %n.vec321
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv249 = phi i64 [ %i.bg, %.preheader.us.preheader ], [ %indvars.iv.next250, %..loopexit_crit_edge.us ] ; 4 uses
  %i.fb = trunc nuw i64 %indvars.iv249 to i32
  %i.fc = add i32 %4, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = mul nsw i64 %.0, %i.fd                  ; 2 uses
  %i.ff = getelementptr i8, ptr %i.eg, i64 %i.fe  ; 3 uses
  %i.fg = mul nsw i64 %.0200, %indvars.iv249
  %gep.us = getelementptr i8, ptr %i.eh, i64 %i.fg ; 3 uses
  %i.fh = mul nsw i64 %.0201, %indvars.iv249
  %gep227.us = getelementptr i8, ptr %invariant.gep226, i64 %i.fh ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %7 = add i64 %i.fe, %.0101                      ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %7 ; 2 uses
  %gep346 = getelementptr i8, ptr %invariant.gep345, i64 %7 ; 2 uses
  %bound0 = icmp ult ptr %gep, %scevgep311
  %bound1 = icmp ult ptr %scevgep313, %gep346
  %found.conflict = and i1 %bound0, %bound1
  %i.fi = or i1 %found.conflict, %stride.check
  %bound0314 = icmp ult ptr %gep, %scevgep308
  %bound1315 = icmp ult ptr %scevgep309, %gep346
  %found.conflict316 = and i1 %bound0314, %bound1315
  %i.fj = or i1 %found.conflict316, %stride.check317
  %conflict.rdx = or i1 %i.fi, %i.fj
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check318, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fk = add nuw i64 %index, %i.bc               ; 3 uses
  %i.fl = getelementptr i8, ptr %i.ff, i64 %i.fk  ; 2 uses
  %i.fm = getelementptr i8, ptr %gep.us, i64 %i.fk
  %wide.load = load <16 x i8>, ptr %i.fm, align 1, !tbaa !36, !alias.scope !626
  %i.fn = getelementptr i8, ptr %gep227.us, i64 %i.fk
  %wide.load319 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !36, !alias.scope !627
  %i.fo = zext <16 x i8> %wide.load to <16 x i16>
  %i.fp = zext <16 x i8> %wide.load319 to <16 x i16> ; 2 uses
  %i.fq = mul nuw <16 x i16> %i.fp, %i.fo
  %wide.load320 = load <16 x i8>, ptr %i.fl, align 1, !tbaa !36, !alias.scope !628, !noalias !629
  %i.fr = zext <16 x i8> %wide.load320 to <16 x i16>
  %i.fs = xor <16 x i16> %i.fp, splat (i16 255)
  %i.ft = mul nuw <16 x i16> %i.fs, %i.fr
  %i.fu = add <16 x i16> %i.ft, %i.fq
  %i.fv = udiv <16 x i16> %i.fu, splat (i16 255)
  %i.fw = trunc <16 x i16> %i.fv to <16 x i8>
  store <16 x i8> %i.fw, ptr %i.fl, align 1, !tbaa !36, !alias.scope !628, !noalias !629
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !209

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index322 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next326, %vec.epilog.vector.body ] ; 2 uses
  %i.fy = add nuw i64 %index322, %i.bc            ; 3 uses
  %i.fz = getelementptr i8, ptr %i.ff, i64 %i.fy  ; 2 uses
  %i.ga = getelementptr i8, ptr %gep.us, i64 %i.fy
  %wide.load323 = load <4 x i8>, ptr %i.ga, align 1, !tbaa !36, !alias.scope !626
  %i.gb = getelementptr i8, ptr %gep227.us, i64 %i.fy
  %wide.load324 = load <4 x i8>, ptr %i.gb, align 1, !tbaa !36, !alias.scope !627
  %i.gc = zext <4 x i8> %wide.load323 to <4 x i16>
  %i.gd = zext <4 x i8> %wide.load324 to <4 x i16> ; 2 uses
  %i.ge = mul nuw <4 x i16> %i.gd, %i.gc
  %wide.load325 = load <4 x i8>, ptr %i.fz, align 1, !tbaa !36, !alias.scope !628, !noalias !629
  %i.gf = zext <4 x i8> %wide.load325 to <4 x i16>
  %i.gg = xor <4 x i16> %i.gd, splat (i16 255)
  %i.gh = mul nuw <4 x i16> %i.gg, %i.gf
  %i.gi = add <4 x i16> %i.gh, %i.ge
  %i.gj = udiv <4 x i16> %i.gi, splat (i16 255)
  %i.gk = trunc <4 x i16> %i.gj to <4 x i8>
  store <4 x i8> %i.gk, ptr %i.fz, align 1, !tbaa !36, !alias.scope !628, !noalias !629
  %index.next326 = add nuw i64 %index322, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next326, %n.vec321
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !622

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n327, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv244.ph = phi i64 [ %i.bc, %iter.check ], [ %i.bc, %vector.memcheck ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %vec.epilog.scalar.ph ], [ %indvars.iv244.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.gm = getelementptr i8, ptr %i.ff, i64 %indvars.iv244 ; 2 uses
  %i.gn = getelementptr i8, ptr %gep.us, i64 %indvars.iv244
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !36
  %i.gp = getelementptr i8, ptr %gep227.us, i64 %indvars.iv244
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !36
  %i.gr = zext i8 %i.go to i16
  %i.gs = zext i8 %i.gq to i16                    ; 2 uses
  %i.gt = mul nuw i16 %i.gs, %i.gr
  %i.gu = load i8, ptr %i.gm, align 1, !tbaa !36
  %i.gv = zext i8 %i.gu to i16
  %i.gw = xor i16 %i.gs, 255
  %i.gx = mul nuw i16 %i.gw, %i.gv
  %i.gy = add i16 %i.gx, %i.gt
  %i.gz = udiv i16 %i.gy, 255
  %i.ha = trunc i16 %i.gz to i8
  store i8 %i.ha, ptr %i.gm, align 1, !tbaa !36
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %i.ei
  br i1 %exitcond248.not, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !623

..loopexit_crit_edge.us:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %_ZN5ErrorC2ERKS_.exit, label %iter.check, !llvm.loop !624

.lr.ph225.split:                                  ; preds = %.lr.ph225.split.prol.loopexit, %.lr.ph225.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph225.split ], [ %indvars.iv.unr, %.lr.ph225.split.prol.loopexit ] ; 4 uses
  %i.hb = trunc nuw i64 %indvars.iv to i32
  %i.hc = add i32 %4, %i.hb
  %i.hd = zext i32 %i.hc to i64
  %i.he = mul nsw i64 %.0, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.he
  %i.hg = mul nsw i64 %.0200, %indvars.iv
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.hg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 1 %i.hh, i64 %i.ei, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hi = trunc nuw i64 %indvars.iv.next to i32
  %i.hj = add i32 %4, %i.hi
  %i.hk = zext i32 %i.hj to i64
  %i.hl = mul nsw i64 %.0, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hl
  %i.hn = mul nsw i64 %.0200, %indvars.iv.next
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.hn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.ho, i64 %i.ei, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %_ZN5ErrorC2ERKS_.exit, label %.lr.ph225.split, !llvm.loop !624

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.i, %.lr.ph225.split.prol.loopexit, %.lr.ph225.split, %..loopexit_crit_edge.us, %bb.x, %.lr.ph225.split.us, %.lr.ph.split
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0195.0229, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !212 ; 2 uses
  %.not.i.i187 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i187, label %.preheader.i.i, label %.preheader8.i.i

.preheader8.i.i:                                  ; preds = %_ZN5ErrorC2ERKS_.exit, %.preheader8.i.i
  %.0.i.i.i = phi ptr [ %i.hr, %.preheader8.i.i ], [ %i.hq, %_ZN5ErrorC2ERKS_.exit ] ; 2 uses
  %i.hr = load ptr, ptr %.0.i.i.i, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i188 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i188, label %_ZNSt3__121__tree_const_iteratorI12heif_channelPNS_11__tree_nodeIS1_PvEElEppB8ne180100Ev.exit, label %.preheader8.i.i, !llvm.loop !0

.preheader.i.i:                                   ; preds = %_ZN5ErrorC2ERKS_.exit, %.preheader.i.i
  %.0.i.i189 = phi ptr [ %i.ht, %.preheader.i.i ], [ %.sroa.0195.0229, %_ZN5ErrorC2ERKS_.exit ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i189, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !203 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !204
  %i.hv = icmp eq ptr %.0.i.i189, %i.hu
  br i1 %i.hv, label %_ZNSt3__121__tree_const_iteratorI12heif_channelPNS_11__tree_nodeIS1_PvEElEppB8ne180100Ev.exit, label %.preheader.i.i, !llvm.loop !1

_ZNSt3__121__tree_const_iteratorI12heif_channelPNS_11__tree_nodeIS1_PvEElEppB8ne180100Ev.exit: ; preds = %.preheader8.i.i, %.preheader.i.i
  %.06.i.i = phi ptr [ %i.ht, %.preheader.i.i ], [ %.0.i.i.i, %.preheader8.i.i ] ; 2 uses
  %.not211 = icmp eq ptr %.06.i.i, %i.ap
  br i1 %.not211, label %.critedge, label %.lr.ph.split, !llvm.loop !625

.critedge:                                        ; preds = %_ZNSt3__121__tree_const_iteratorI12heif_channelPNS_11__tree_nodeIS1_PvEElEppB8ne180100Ev.exit, %.lr.ph, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %i.hw = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.hw, ptr %0, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.hz = trunc i8 %i.hy to i1
  br i1 %i.hz, label %.invoke, label %_ZN5ErrorC2ERKS_.exit191.sink.split

.invoke:                                          ; preds = %.critedge, %bb.w, %bb.u, %bb.s, %bb.p
  %i.ia = phi ptr [ %i.ds, %bb.w ], [ %i.do, %bb.u ], [ %i.dk, %bb.s ], [ %i.de, %bb.p ], [ %i.hx, %.critedge ]
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !36
  %i.ic = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !36
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, ptr noundef %i.ib, i64 noundef %i.ic)
          to label %_ZN5ErrorC2ERKS_.exit191 unwind label %bb.q

_ZN5ErrorC2ERKS_.exit191.sink.split:              ; preds = %.critedge, %bb.w, %bb.u, %bb.s, %bb.p
  %.sink = phi ptr [ %i.ds, %bb.w ], [ %i.do, %bb.u ], [ %i.de, %bb.p ], [ %i.dk, %bb.s ], [ %i.hx, %.critedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false)
  br label %_ZN5ErrorC2ERKS_.exit191

_ZN5ErrorC2ERKS_.exit191:                         ; preds = %_ZN5ErrorC2ERKS_.exit191.sink.split, %.invoke
  %i.id = load ptr, ptr %i.ap, align 8, !tbaa !204
  call void @_ZNSt3__16__treeI12heif_channelNS_4lessIS1_EENS_9allocatorIS1_EEE7destroyEPNS_11__tree_nodeIS1_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.id) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.y

bb.y:                                             ; preds = %_ZN5ErrorC2ERKS_.exit191, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.z:                                             ; preds = %bb.q, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit128
  %.pn125 = phi { ptr, i32 } [ %i.s, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit128 ], [ %i.dh, %bb.q ]
  resume { ptr, i32 } %.pn125
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK14HeifPixelImage22scale_nearest_neighborERNSt3__110shared_ptrIS_EEjjPK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(472) ptr @_Znwm(i64 noundef 472) #32, !noalias !645 ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !645
end_hunk_1
