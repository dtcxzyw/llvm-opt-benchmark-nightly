Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/stats?download=true
inline.NumInlined: 1559
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7xgboost6common4MeanEPKNS_7ContextENS_6linalg10TensorViewIKfLi1EEEPNS4_6TensorIfLi1EEE:bb.a

.loopexit.loopexit86.unr-lcssa:                   ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit86.unr-lcssa, %.lr.ph118.i.i
  %.epil.init = phi float [ %.pre147.i.i, %.lr.ph118.i.i ], [ %i.db, %.loopexit.loopexit86.unr-lcssa ]
  %.041117.i.i.epil.init = phi i64 [ 0, %.lr.ph118.i.i ], [ %i.dc, %.loopexit.loopexit86.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader
  %i.dm = phi float [ %.epil.init, %.epil.preheader ], [ %i.dr, %bb.ab ]
  %.041117.i.i.epil = phi i64 [ %.041117.i.i.epil.init, %.epil.preheader ], [ %i.ds, %bb.ab ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ab ]
  %i.dn = mul i64 %.041117.i.i.epil, %.sroa.0.0.copyload
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.673.0.copyload, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !58
  %i.dq = fdiv float %i.dp, %i.z
  %i.dr = fadd float %i.dm, %i.dq                 ; 2 uses
  store float %i.dr, ptr %.pre, align 4, !tbaa !58
  %i.ds = add nuw i64 %.041117.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.ab, !llvm.loop !146

.loopexit:                                        ; preds = %.loopexit.loopexit86.unr-lcssa, %bb.ab, %.loopexit.loopexit.unr-lcssa, %bb.aa, %.preheader108.i.i, %.preheader.i.i
  %i.dt = phi ptr [ %.pre77, %.loopexit.loopexit.unr-lcssa ], [ %.pre77, %.preheader.i.i ], [ %.pre, %.preheader108.i.i ], [ %.pre77, %bb.aa ], [ %.pre, %bb.ab ], [ %.pre, %.loopexit.loopexit86.unr-lcssa ] ; 3 uses
  %i.du = load i64, ptr %i.ac, align 8, !tbaa !156 ; 2 uses
  %.idx = shl i64 %i.du, 2                        ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx
  %.not7.i = icmp eq i64 %i.du, 0
  br i1 %.not7.i, label %_ZSt10accumulateIPffET0_T_S2_S1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.dw = add i64 %.idx, -4                       ; 2 uses
  %i.dx = lshr exact i64 %i.dw, 2
  %i.dy = add nuw nsw i64 %i.dx, 1
  %xtraiter97 = and i64 %i.dy, 7                  ; 2 uses
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi float [ %i.ea, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.068.i.prol = phi ptr [ %i.eb, %.lr.ph.i.prol ], [ %i.dt, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dz = load float, ptr %.068.i.prol, align 4, !tbaa !58
  %i.ea = fadd float %.09.i.prol, %i.dz           ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter97
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !147

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.i.preheader ], [ %i.ea, %.lr.ph.i.prol ]
  %.09.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.ea, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %i.dt, %.lr.ph.i.preheader ], [ %i.eb, %.lr.ph.i.prol ]
  %i.ec = icmp ult i64 %i.dw, 28
  br i1 %i.ec, label %_ZSt10accumulateIPffET0_T_S2_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi float [ %i.ez, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ]
  %.068.i = phi ptr [ %i.fa, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ed = load float, ptr %.068.i, align 4, !tbaa !58
  %i.ee = fadd float %.09.i, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !58
  %i.eh = fadd float %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !58
  %i.ek = fadd float %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %.068.i, i64 12
  %i.em = load float, ptr %i.el, align 4, !tbaa !58
  %i.en = fadd float %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.068.i, i64 16
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !58
  %i.eq = fadd float %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %.068.i, i64 20
  %i.es = load float, ptr %i.er, align 4, !tbaa !58
  %i.et = fadd float %i.eq, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %.068.i, i64 24
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !58
  %i.ew = fadd float %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.068.i, i64 28
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !58
  %i.ez = fadd float %i.ew, %i.ey                 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.068.i, i64 32 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.fa, %i.dv
  br i1 %.not.i.7, label %_ZSt10accumulateIPffET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !148

_ZSt10accumulateIPffET0_T_S2_S1_.exit:            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit
  %.0.lcssa.i = phi float [ 0.000000e+00, %.loopexit ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ez, %.lr.ph.i ]
  %i.fb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(17) %2)
          to label %.noexc38 unwind label %bb.af, !noalias !159

.noexc38:                                         ; preds = %_ZSt10accumulateIPffET0_T_S2_S1_.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !33, !noalias !159
  %switch.i.i.i = icmp ult i8 %i.fd, 2
  br i1 %switch.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc38
  call void @_ZSt9terminatev() #29, !noalias !159
  unreachable

bb.ad:                                            ; preds = %.noexc38
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !24, !noalias !159
  store float %.0.lcssa.i, ptr %i.fe, align 4, !tbaa !58
  %i.ff = load i64, ptr %i.ac, align 8, !tbaa !156
  %i.fg = icmp ugt i64 %i.ff, 128
  br i1 %i.fg, label %bb.ae, label %_ZN7xgboost6common17MemStackAllocatorIfLm128EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fh = load ptr, ptr %7, align 8, !tbaa !157
  call void @free(ptr noundef %i.fh) #8
  br label %_ZN7xgboost6common17MemStackAllocatorIfLm128EED2Ev.exit

_ZN7xgboost6common17MemStackAllocatorIfLm128EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.ah

bb.af:                                            ; preds = %_ZN7xgboost6common17MemStackAllocatorIfLm128EEC2Emf.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, %_ZSt10accumulateIPffET0_T_S2_S1_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.af, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.af ], [ %.pn.i.i, %bb.v ]
  %i.fj = load i64, ptr %i.ac, align 8, !tbaa !156
  %i.fk = icmp ugt i64 %i.fj, 128
  br i1 %i.fk, label %bb.ag, label %_ZN7xgboost6common17MemStackAllocatorIfLm128EED2Ev.exit39

bb.ag:                                            ; preds = %.body
  %i.fl = load ptr, ptr %7, align 8, !tbaa !157
  call void @free(ptr noundef %i.fl) #8
  br label %_ZN7xgboost6common17MemStackAllocatorIfLm128EED2Ev.exit39

_ZN7xgboost6common17MemStackAllocatorIfLm128EED2Ev.exit39: ; preds = %.body, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %common.resume

bb.ah:                                            ; preds = %_ZN7xgboost6common9sycl_impl4MeanEPKNS_7ContextENS_6linalg10TensorViewIKfLi1EEENS6_IfLi1EEE.exit, %_ZN7xgboost6common17MemStackAllocatorIfLm128EED2Ev.exit, %_ZN7xgboost6common9cuda_impl4MeanEPKNS_7ContextENS_6linalg10TensorViewIKfLi1EEENS6_IfLi1EEE.exit
  ret void
}

declare noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost6common10SampleMeanEPKNS_7ContextERKNS_6linalg6TensorIfLi2EEEPNS5_IfLi1EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.xgboost::linalg::TensorView.2", align 8 ; 10 uses
  %7 = alloca %"class.xgboost::linalg::TensorView.20", align 8 ; 10 uses
  %8 = alloca %"class.xgboost::linalg::Tensor.0", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %10 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %11 = alloca %"class.xgboost::common::MemStackAllocator.23", align 8 ; 10 uses
  %12 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %13 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 1, ptr %i.d, align 8, !tbaa !31
  %i.i = icmp eq i64 %i.h, 0
  %..i = select i1 %i.i, ptr %i.d, ptr %i.c
  call void @_ZN7xgboost6linalg8ConstantIfJRKmEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::Tensor.0") align 8 %8, ptr noundef %0, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %..i)
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost16HostDeviceVectorIfEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(17) %8)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.k, ptr noundef nonnull align 8 dereferenceable(9) %i.l, i64 9, i1 false)
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.m, align 8 ; 2 uses
  %i.n = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %1), !noalias !186
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24, !noalias !186 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !29, !noalias !186
  %14 = load i64, ptr %i.f, align 8, !tbaa !31, !noalias !186 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !tbaa !31, !noalias !186 ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 0, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i
    i8 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @_ZSt9terminatev() #29, !noalias !186
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i: ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %14, %bb.d ], [ 1, %bb.c ]     ; 3 uses
  %i.v = phi i64 [ 1, %bb.d ], [ %i.t, %bb.c ]    ; 11 uses
  %.not4.i.i.a = icmp eq i64 %i.v, %i.t
  %.not4.i.i.1 = icmp eq i64 %i.u, 1
  %spec.select = select i1 %.not4.i.i.a, i1 %.not4.i.i.1, i1 false
  br i1 %spec.select, label %bb.j, label %bb.f, !prof !35

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.w = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.w, ptr noundef nonnull @.str, i32 noundef 72)
  %i.x = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.h ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.f
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.4, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %.pre = load i64, ptr %i.f, align 8, !tbaa !31
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %common.resume

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %bb.at

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %common.resume

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i
  %15 = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 ], [ %14, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 %15, ptr %i.e, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 1, ptr %7, align 8
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %.sroa.268.0..sroa_idx, align 8
  %.sroa.369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 1, ptr %.sroa.369.0..sroa_idx, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.e, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.e, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 1, ptr %.sroa.672.0..sroa_idx, align 8
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 -65536, ptr %.sroa.773.0..sroa_idx, align 8
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost10collective15GlobalCommGroupEv(), !noalias !187
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66, !noalias !187
  call void @_ZN7xgboost10collective9AllreduceIlLi1EEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %10, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.20") align 8 %7, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str, i32 noundef 74)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %10, align 8, !tbaa !68   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %bb.k
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ae) #8, !inline_history !1
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 56) #30, !inline_history !1
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %bb.k, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.af = load i64, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(17) %2), !noalias !188 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23, !noalias !188 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !24, !noalias !188 ; 6 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !33, !noalias !188
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !31, !noalias !188 ; 2 uses
  %switch.i.i.i = icmp ult i8 %i.ap, 2
  br i1 %switch.i.i.i, label %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  call void @_ZSt9terminatev() #29, !noalias !188
  unreachable

_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.ar = icmp eq ptr %i.ai, %i.aj
  %.sink.i.i.i.i36 = select i1 %i.ar, i64 0, i64 %i.aq
  %i.as = load i64, ptr %i.e, align 8, !tbaa !31
  %i.at = sitofp i64 %i.as to double              ; 10 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit, %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 1, ptr %6, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %.sroa.260.0..sroa_idx, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.an, ptr %.sroa.361.0..sroa_idx, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.aj, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.aj, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %.sink.i.i.i.i36, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 -65536, ptr %.sroa.765.0..sroa_idx, align 8
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost10collective15GlobalCommGroupEv(), !noalias !189
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !66, !noalias !189
  call void @_ZN7xgboost10collective9AllreduceIfLi1EEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %12, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.2") align 8 %6, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str, i32 noundef 86)
          to label %bb.ah unwind label %bb.ai

bb.m:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.aj

bb.n:                                             ; preds = %.lr.ph, %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit
  %storemerge95 = phi i64 [ 0, %.lr.ph ], [ %i.gf, %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.az = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %0) ; 3 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !71
  %i.bb = icmp ult i32 %i.az, 129
  br i1 %i.bb, label %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = shl nsw i64 %i.ba, 3                    ; 2 uses
  %i.bd = call noalias ptr @malloc(i64 noundef %i.bc) #33 ; 3 uses
  store ptr %i.bd, ptr %11, align 8, !tbaa !72
  %.not.i.i37 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i37, label %bb.p, label %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.be = call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.be, align 8, !tbaa !63
  call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit.i: ; preds = %bb.n
  store ptr %i.av, ptr %11, align 8, !tbaa !72
  %i.bf = icmp eq i32 %i.az, 0
  br i1 %i.bf, label %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Emd.exit, label %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit._crit_edge.i

_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit._crit_edge.i: ; preds = %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit.i
  %.pre.i = shl nuw nsw i64 %i.ba, 3
  br label %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit.thread.i

_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit.thread.i: ; preds = %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit._crit_edge.i, %bb.o
  %.idx.i.i.pre-phi.i = phi i64 [ %.pre.i, %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit._crit_edge.i ], [ %i.bc, %bb.o ]
  %i.bg = phi ptr [ %i.av, %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit._crit_edge.i ], [ %i.bd, %bb.o ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bg, i8 0, i64 %.idx.i.i.pre-phi.i, i1 false), !tbaa !61
  br label %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Emd.exit

_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Emd.exit: ; preds = %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit.thread.i, %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Em.exit.i
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !31  ; 8 uses
  %i.bi = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %0)
          to label %bb.q unwind label %bb.af      ; 3 uses

bb.q:                                             ; preds = %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Emd.exit
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %.preheader.i.i, label %bb.s

.preheader.i.i:                                   ; preds = %bb.q
  %.not156.i.i = icmp eq i64 %i.bh, 0
  %.pre99 = load ptr, ptr %11, align 8, !tbaa !72 ; 4 uses
  br i1 %.not156.i.i, label %bb.ad, label %.lr.ph147.i.i

.lr.ph147.i.i:                                    ; preds = %.preheader.i.i
  %i.bk = mul i64 %storemerge95, %i.u
  %invariant.gep148.i.i = getelementptr [4 x i8], ptr %i.q, i64 %i.bk ; 5 uses
  %.pre174.i.i = load double, ptr %.pre99, align 8, !tbaa !61 ; 2 uses
  %xtraiter119 = and i64 %i.bh, 3                 ; 3 uses
  %i.bl = icmp ult i64 %i.bh, 4
  br i1 %i.bl, label %.epil.preheader118, label %.lr.ph147.i.i.new

.lr.ph147.i.i.new:                                ; preds = %.lr.ph147.i.i
  %unroll_iter126 = and i64 %i.bh, -4
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph147.i.i.new
  %i.bm = phi double [ %.pre174.i.i, %.lr.ph147.i.i.new ], [ %i.cj, %bb.r ]
  %.049146.i.i = phi i64 [ 0, %.lr.ph147.i.i.new ], [ %i.ck, %bb.r ] ; 5 uses
  %niter127 = phi i64 [ 0, %.lr.ph147.i.i.new ], [ %niter127.next.3, %bb.r ]
  %i.bn = mul i64 %.049146.i.i, %i.v
  %gep149.i.i = getelementptr [4 x i8], ptr %invariant.gep148.i.i, i64 %i.bn
  %i.bo = load float, ptr %gep149.i.i, align 4, !tbaa !58
  %i.bp = fpext float %i.bo to double
  %i.bq = fdiv double %i.bp, %i.at
  %i.br = fadd double %i.bm, %i.bq
  %i.bs = or disjoint i64 %.049146.i.i, 1
  %i.bt = mul i64 %i.bs, %i.v
  %gep149.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep148.i.i, i64 %i.bt
  %i.bu = load float, ptr %gep149.i.i.1, align 4, !tbaa !58
  %i.bv = fpext float %i.bu to double
  %i.bw = fdiv double %i.bv, %i.at
  %i.bx = fadd double %i.br, %i.bw
  %i.by = or disjoint i64 %.049146.i.i, 2
  %i.bz = mul i64 %i.by, %i.v
  %gep149.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep148.i.i, i64 %i.bz
  %i.ca = load float, ptr %gep149.i.i.2, align 4, !tbaa !58
  %i.cb = fpext float %i.ca to double
  %i.cc = fdiv double %i.cb, %i.at
  %i.cd = fadd double %i.bx, %i.cc
  %i.ce = or disjoint i64 %.049146.i.i, 3
  %i.cf = mul i64 %i.ce, %i.v
  %gep149.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep148.i.i, i64 %i.cf
  %i.cg = load float, ptr %gep149.i.i.3, align 4, !tbaa !58
  %i.ch = fpext float %i.cg to double
  %i.ci = fdiv double %i.ch, %i.at
  %i.cj = fadd double %i.cd, %i.ci                ; 3 uses
  %i.ck = add nuw i64 %.049146.i.i, 4             ; 2 uses
  %niter127.next.3 = add nuw i64 %niter127, 4     ; 2 uses
  %niter127.ncmp.3 = icmp eq i64 %niter127.next.3, %unroll_iter126
  br i1 %niter127.ncmp.3, label %.loopexit87.unr-lcssa, label %bb.r, !llvm.loop !176

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common10SampleMeanEPKNS_7ContextERKNS_6linalg6TensorIfLi2EEEPNS5_IfLi1EEE:bb.a
  %.041130.i.i.epil = phi i64 [ %.041130.i.i.epil.init, %.epil.preheader ], [ %i.es, %bb.ac ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.en = mul i64 %.041130.i.i.epil, %i.v
  %gep133.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep132.i.i, i64 %i.en
  %i.eo = load float, ptr %gep133.i.i.epil, align 4, !tbaa !58
  %i.ep = fpext float %i.eo to double
  %i.eq = fdiv double %i.ep, %i.at
  %i.er = fadd double %i.em, %i.eq                ; 2 uses
  %i.es = add nuw i64 %.041130.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit88, label %bb.ac, !llvm.loop !181

.loopexit88:                                      ; preds = %bb.ac, %.loopexit88.unr-lcssa
  %.lcssa = phi double [ %i.eb, %.loopexit88.unr-lcssa ], [ %i.er, %bb.ac ]
  store double %.lcssa, ptr %.pre98, align 8, !tbaa !61
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit88, %.loopexit87, %.preheader119.i.i, %.preheader.i.i
  %i.et = phi ptr [ %.pre98, %.loopexit88 ], [ %.pre99, %.loopexit87 ], [ %.pre98, %.preheader119.i.i ], [ %.pre99, %.preheader.i.i ] ; 4 uses
  %i.eu = load i64, ptr %i.au, align 8, !tbaa !71 ; 3 uses
  %.idx = shl i64 %i.eu, 3                        ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx
  %.not7.i = icmp eq i64 %i.eu, 0
  br i1 %.not7.i, label %.loopexit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ad
  %i.ew = add i64 %.idx, -8                       ; 2 uses
  %i.ex = lshr exact i64 %i.ew, 3
  %i.ey = add nuw nsw i64 %i.ex, 1
  %xtraiter128 = and i64 %i.ey, 7                 ; 2 uses
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi double [ %i.fa, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.068.i.prol = phi ptr [ %i.fb, %.lr.ph.i.prol ], [ %i.et, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ez = load double, ptr %.068.i.prol, align 8, !tbaa !61
  %i.fa = fadd double %.09.i.prol, %i.ez          ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter128
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !182

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa115.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.fa, %.lr.ph.i.prol ]
  %.09.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.fa, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %i.et, %.lr.ph.i.preheader ], [ %i.fb, %.lr.ph.i.prol ]
  %i.fc = icmp ult i64 %i.ew, 56
  br i1 %i.fc, label %.loopexit, label %.lr.ph.i

.loopexit.thread:                                 ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %storemerge95
  store float 0.000000e+00, ptr %i.fd, align 4, !tbaa !58
  br label %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi double [ %i.ga, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ]
  %.068.i = phi ptr [ %i.gb, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.fe = load double, ptr %.068.i, align 8, !tbaa !61
  %i.ff = fadd double %.09.i, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !61
  %i.fi = fadd double %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %.068.i, i64 16
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !61
  %i.fl = fadd double %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.068.i, i64 24
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !61
  %i.fo = fadd double %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %.068.i, i64 32
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !61
  %i.fr = fadd double %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.068.i, i64 40
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !61
  %i.fu = fadd double %i.fr, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %.068.i, i64 48
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !61
  %i.fx = fadd double %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.068.i, i64 56
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !61
  %i.ga = fadd double %i.fx, %i.fz                ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.068.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.gb, %i.ev
  br i1 %.not.i.7, label %.loopexit, label %.lr.ph.i, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa115 = phi double [ %.lcssa115.unr, %.lr.ph.i.prol.loopexit ], [ %i.ga, %.lr.ph.i ]
  %i.gc = fptrunc double %.lcssa115 to float
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %storemerge95
  store float %i.gc, ptr %i.gd, align 4, !tbaa !58
  %i.ge = icmp ugt i64 %i.eu, 128
  br i1 %i.ge, label %bb.ae, label %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit

bb.ae:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.et) #8
  br label %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit

_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit: ; preds = %.loopexit.thread, %.loopexit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.gf = add nuw i64 %storemerge95, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gf, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !183

bb.af:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, %_ZN7xgboost6common17MemStackAllocatorIdLm128EEC2Emd.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.af
  %.pn = phi { ptr, i32 } [ %i.gg, %bb.af ], [ %.pn.i.i, %bb.w ]
  %i.gh = load i64, ptr %i.au, align 8, !tbaa !71
  %i.gi = icmp ugt i64 %i.gh, 128
  br i1 %i.gi, label %bb.ag, label %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit39

bb.ag:                                            ; preds = %.body
  %i.gj = load ptr, ptr %11, align 8, !tbaa !72
  call void @free(ptr noundef %i.gj) #8
  br label %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit39

_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit39: ; preds = %.body, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.aj

bb.ah:                                            ; preds = %._crit_edge
  %i.gk = load ptr, ptr %12, align 8, !tbaa !68   ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i40, label %_ZN7xgboost10collective6ResultD2Ev.exit42, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i41

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i41: ; preds = %bb.ah
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.gk) #8, !inline_history !1
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 56) #30, !inline_history !1
  br label %_ZN7xgboost10collective6ResultD2Ev.exit42

_ZN7xgboost10collective6ResultD2Ev.exit42:        ; preds = %bb.ah, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.as

bb.ai:                                            ; preds = %._crit_edge
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit39, %bb.ai, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %.pn, %_ZN7xgboost6common17MemStackAllocatorIdLm128EED2Ev.exit39 ], [ %i.gl, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %common.resume

bb.ak:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %13, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 %.sroa.0.0.copyload.i.i)
  %.sroa.0.0.copyload.i43 = load i32, ptr %i.m, align 8 ; 2 uses
  %i.gm = and i32 %.sroa.0.0.copyload.i43, 65535
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.go = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(17) %2), !noalias !191 ; 0 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !33, !noalias !191
  %switch.i.i = icmp ult i8 %i.gq, 2
  br i1 %switch.i.i, label %_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZSt9terminatev() #29, !noalias !191
  unreachable

bb.an:                                            ; preds = %bb.ak
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(17) %2, i32 %.sroa.0.0.copyload.i43), !noalias !191
  %i.gr = call { i64, ptr } @_ZN7xgboost16HostDeviceVectorIfE10DeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(17) %2), !noalias !191 ; 0 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !33, !noalias !191
  %switch.i10.i = icmp ult i8 %i.gt, 2
  br i1 %switch.i10.i, label %_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt9terminatev() #29, !noalias !191
  unreachable

_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit: ; preds = %bb.an, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.gu = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gu, ptr noundef nonnull @.str.8, i32 noundef 187)
  %i.gv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i44 unwind label %bb.ap

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i44: ; preds = %_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.9, i64 noundef 46)
          to label %_ZN7xgboost6common9cuda_impl10SampleMeanEPKNS_7ContextENS_6linalg10TensorViewIKfLi2EEENS6_IfLi1EEE.exit unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i44, %_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aq unwind label %bb.ar

common.resume:                                    ; preds = %bb.i, %bb.aj, %bb.g, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %i.gx, %bb.aq ], [ %i.aa, %bb.g ], [ %.pn.pn.pn, %bb.aj ], [ %i.ab, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %common.resume

bb.ar:                                            ; preds = %bb.ap
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #29
  unreachable

_ZN7xgboost6common9cuda_impl10SampleMeanEPKNS_7ContextENS_6linalg10TensorViewIKfLi2EEENS6_IfLi1EEE.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i44
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %bb.as

bb.as:                                            ; preds = %_ZN7xgboost6common9cuda_impl10SampleMeanEPKNS_7ContextENS_6linalg10TensorViewIKfLi2EEENS6_IfLi1EEE.exit, %_ZN7xgboost10collective6ResultD2Ev.exit42
  ret void

bb.at:                                            ; preds = %bb.h
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #29
  unreachable
}

declare void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7xgboost10collective6detail10ResultImplESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #8, !inline_history !1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !inline_history !1
  br label %_ZNSt10unique_ptrIN7xgboost10collective6detail10ResultImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN7xgboost10collective6detail10ResultImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost6common18WeightedSampleMeanEPKNS_7ContextERKNS_6linalg6TensorIfLi2EEERKNS_16HostDeviceVectorIfEEPNS5_IfLi1EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.xgboost::linalg::TensorView.2", align 8 ; 10 uses
  %8 = alloca %"class.xgboost::linalg::TensorView.25", align 8 ; 10 uses
  %9 = alloca %"class.xgboost::linalg::Tensor.0", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.g = alloca double, align 8                   ; 10 uses
  %12 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %15 = alloca %"class.xgboost::common::MemStackAllocator.23", align 8 ; 11 uses
  %16 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %17 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 1, ptr %i.d, align 8, !tbaa !31
  %i.l = icmp eq i64 %i.k, 0
  %..i = select i1 %i.l, ptr %i.d, ptr %i.c
  call void @_ZN7xgboost6linalg8ConstantIfJRKmEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::Tensor.0") align 8 %9, ptr noundef %0, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %..i)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost16HostDeviceVectorIfEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(17) %9)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.n, ptr noundef nonnull align 8 dereferenceable(9) %i.o, i64 9, i1 false)
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.p = load i64, ptr %i.i, align 8, !tbaa !31
  store i64 %i.p, ptr %i.e, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.q = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  store i64 %i.q, ptr %i.f, align 8, !tbaa !31
  %i.r = load i64, ptr %i.e, align 8, !tbaa !31, !noalias !221
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.b
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pr = load ptr, ptr %10, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.t = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.t, ptr noundef nonnull @.str, i32 noundef 97)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.5, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = load ptr, ptr %10, align 8, !tbaa !40    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.y, i64 noundef %i.aa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.h unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %common.resume

bb.e:                                             ; preds = %.noexc, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.g unwind label %bb.az

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %common.resume

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %.pr144 = load ptr, ptr %10, align 8, !tbaa !40 ; 4 uses
  %.not.i = icmp eq ptr %.pr144, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %.pr144, align 8, !tbaa !44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pr144, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !36
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #30
end_hunk_1
