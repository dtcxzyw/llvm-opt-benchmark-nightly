Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/update?download=true
inline.NumInlined: 2061
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN3gmx6Update4Impl13finish_updateERK10t_inputrecbiNS_8ArrayRefIKtEEP7t_stateP13gmx_wallcycleb.omp_outlined:bb.a
  %xtraiter = and i32 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.q = load i64, ptr %4, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds [12 x i8], ptr %i.r, i64 %indvars.iv.prol
  %i.t = load i64, ptr %3, align 8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds [12 x i8], ptr %i.u, i64 %indvars.iv.prol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !561

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.w = icmp ult i32 %i.p, 3
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.x = load i64, ptr %4, align 8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds [12 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load i64, ptr %3, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds [12 x i8], ptr %i.ab, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = load i64, ptr %4, align 8
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.ag = load i64, ptr %3, align 8
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aj = load i64, ptr %4, align 8
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %indvars.iv.next.1
  %i.am = load i64, ptr %3, align 8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds [12 x i8], ptr %i.an, i64 %indvars.iv.next.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %i.al, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = load i64, ptr %4, align 8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds [12 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  %i.as = load i64, ptr %3, align 8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds [12 x i8], ptr %i.at, i64 %indvars.iv.next.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.m, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(61) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(61) %1) #20 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.b, ptr %i.a, align 8, !tbaa !67
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !176
  %i.f = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.f, ptr %i.c, align 8, !tbaa !177
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !177
  store i8 %i.h, ptr %i.g, align 1, !tbaa !177
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !348
  %i.k = load ptr, ptr %0, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !350  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !177
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !177
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z21update_disres_historyRK12t_disresdataP9history_t(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #8

declare void @_ZN12t_oriresdata13updateHistoryEv(ptr noundef nonnull align 8 dereferenceable(544)) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(888) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %13, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %16, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18) #25 personality ptr @__gxx_personality_v0 {
bb.a:
  %19 = alloca %"class.gmx::ThreeFry2x64", align 8 ; 10 uses
  %20 = alloca %"class.gmx::ThreeFry2x64", align 8 ; 10 uses
  %21 = alloca %"class.gmx::BasicMatrix3x3", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.gmx::InternalError", align 8 ; 6 uses
  %26 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %27 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = alloca [3 x [3 x float]], align 16       ; 8 uses
  %28 = alloca %"class.gmx::BasicMatrix3x3", align 8 ; 6 uses
  %29 = alloca %class.anon, align 8               ; 33 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %30 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.ez

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 %i.h, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 1, ptr %i.d, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 0, ptr %i.e, align 4, !tbaa !68
  %i.i = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, i32 1, i32 1)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !68
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !68
  %i.l = load i32, ptr %i.b, align 4, !tbaa !68   ; 2 uses
  %.not276 = icmp sgt i32 %i.l, %i.k
  br i1 %.not276, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 760
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 840 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 816 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 544
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 552 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %.sroa.74.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i137 = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 212 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %.sroa.74.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 4 uses
  %.sroa.gep45.i = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 196
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 824
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 676 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %29, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %29, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %29, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %29, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %29, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %29, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %29, i64 136
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %29, i64 152
  %i.bm = getelementptr inbounds nuw i8, ptr %29, i64 160 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %29, i64 208 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %29, i64 164
  %i.bp = getelementptr inbounds nuw i8, ptr %29, i64 168
  %i.bq = getelementptr inbounds nuw i8, ptr %29, i64 172
  %i.br = getelementptr inbounds nuw i8, ptr %29, i64 176 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %29, i64 184 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %29, i64 188 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %29, i64 192 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit
  %.0277 = phi i32 [ %i.l, %.lr.ph ], [ %i.cg, %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit ] ; 4 uses
  %i.bz = load i32, ptr %2, align 4, !tbaa !68    ; 3 uses
  %i.ca = load i32, ptr %3, align 4, !tbaa !68    ; 2 uses
  %i.cb = add i32 %i.ca, 15
  %i.cc = sdiv i32 %i.cb, 16                      ; 2 uses
  %i.cd = mul nsw i32 %i.cc, %.0277
  %i.ce = sdiv i32 %i.cd, %i.bz
  %i.cf = shl i32 %i.ce, 4                        ; 35 uses
  %i.cg = add nsw i32 %.0277, 1                   ; 2 uses
  %i.ch = mul nsw i32 %i.cc, %i.cg
  %i.ci = sdiv i32 %i.ch, %i.bz
  %i.cj = shl nsw i32 %i.ci, 4
  %i.ck = add nsw i32 %i.bz, -1
  %i.cl = icmp eq i32 %.0277, %i.ck
  %spec.select.i = select i1 %i.cl, i32 %i.ca, i32 %i.cj ; 41 uses
  %i.cm = load ptr, ptr %4, align 8, !tbaa !72    ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 416
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !238 ; 24 uses
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !16  ; 24 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 456
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !238 ; 25 uses
  %i.cs = load ptr, ptr %6, align 8, !tbaa !352   ; 23 uses
  %i.ct = load i32, ptr %i.n, align 4, !tbaa !172
  switch i32 %i.ct, label %bb.er [
    i32 0, label %bb.d
    i32 9, label %bb.bj
    i32 3, label %bb.ct
    i32 10, label %bb.dr
    i32 11, label %bb.dr
  ]

bb.d:                                             ; preds = %bb.c
  %i.cu = load float, ptr %8, align 4, !tbaa !179 ; 45 uses
  %i.cv = load i64, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.cw = load i32, ptr %i.o, align 8, !tbaa !264 ; 2 uses
  %i.cx = load i32, ptr %i.p, align 4, !tbaa !692
  %i.cy = load i32, ptr %i.al, align 4, !tbaa !693 ; 7 uses
  %i.cz = load i32, ptr %i.ae, align 4, !tbaa !694 ; 3 uses
  %i.da = load ptr, ptr %i.w, align 8, !tbaa !210 ; 15 uses
  %i.db = load ptr, ptr %i.x, align 8, !tbaa !210 ; 5 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.de
  %i.dg = load i32, ptr %i.am, align 8, !tbaa !270 ; 2 uses
  %i.dh = load ptr, ptr %i.t, align 8, !tbaa !210 ; 5 uses
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !210 ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dl
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !695 ; 4 uses
  %i.do = load ptr, ptr %i.an, align 8, !tbaa !696
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dr
  %i.dt = load ptr, ptr %10, align 8, !tbaa !63   ; 2 uses
  %i.du = load ptr, ptr %11, align 8, !tbaa !65   ; 19 uses
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !65
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dy
  %i.ea = load ptr, ptr %12, align 8, !tbaa !74   ; 11 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cm, i64 52 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cm, i64 296
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !277 ; 5 uses
  %i.ee = load i8, ptr %14, align 1, !tbaa !70, !range !268, !noundef !269
  %i.ef = trunc nuw i8 %i.ee to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %.not95.i = icmp eq i32 %i.cw, 0
  %.not.i.i = icmp eq i32 %i.cy, 0
  %or.cond63.i = or i1 %.not95.i, %.not.i.i
  br i1 %or.cond63.i, label %_Z11do_per_stepll.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eg = sext i32 %i.cy to i64                   ; 2 uses
  %i.eh = add i64 %i.cv, -1
  %i.ei = add i64 %i.eh, %i.eg
  %i.ej = srem i64 %i.ei, %i.eg
  %i.ek = icmp eq i64 %i.ej, 0
  br label %_Z11do_per_stepll.exit.i

_Z11do_per_stepll.exit.i:                         ; preds = %bb.e, %bb.d
  %i.el = phi i1 [ false, %bb.d ], [ %i.ek, %bb.e ] ; 4 uses
  %i.em = icmp eq i32 %i.cw, 2
  %i.en = and i1 %i.em, %i.el                     ; 6 uses
  %i.eo = zext i1 %i.en to i8
  %i.ep = icmp ne i32 %i.cx, 2
  %.not.i98.i = icmp eq i32 %i.cz, 0
  %or.cond64.i = or i1 %i.ep, %.not.i98.i
  br i1 %or.cond64.i, label %.critedge.i, label %_Z11do_per_stepll.exit100.i

_Z11do_per_stepll.exit100.i:                      ; preds = %_Z11do_per_stepll.exit.i
  %i.eq = sext i32 %i.cz to i64                   ; 2 uses
  %i.er = add i64 %i.cv, -1
  %i.es = add i64 %i.er, %i.eq
  %i.et = srem i64 %i.es, %i.eq
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_Z11do_per_stepll.exit100.i
  %i.ev = load ptr, ptr %.sroa.gep45.i, align 8, !tbaa !251, !noalias !702 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !179
  %i.ey = fcmp une float %i.ex, 0.000000e+00
  br i1 %i.ey, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ez = getelementptr i8, ptr %i.ev, i64 24
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !179
  %i.fb = fcmp une float %i.fa, 0.000000e+00
  br i1 %i.fb, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fc = getelementptr i8, ptr %i.ev, i64 28
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !179
  %i.fe = fcmp une float %i.fd, 0.000000e+00
  %i.ff = select i1 %i.fe, i32 2, i32 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.g, %bb.f, %_Z11do_per_stepll.exit100.i, %_Z11do_per_stepll.exit.i
  %i.fg = phi i32 [ %i.ff, %bb.h ], [ 0, %_Z11do_per_stepll.exit100.i ], [ 2, %bb.g ], [ 2, %bb.f ], [ 0, %_Z11do_per_stepll.exit.i ] ; 2 uses
  %.not96.i = icmp eq i32 %i.fg, 0                ; 3 uses
  %i.fh = sitofp i32 %i.cz to float
  %i.fi = fmul float %i.cu, %i.fh                 ; 7 uses
  %i.fj = select i1 %.not96.i, float 0.000000e+00, float %i.fi ; 9 uses
  %i.fk = icmp ne i32 %i.dg, 3
  %or.cond.i = or i1 %i.fk, %i.el
  %i.fl = select i1 %or.cond.i, i32 %i.dg, i32 0  ; 4 uses
  %i.fm = icmp eq i32 %i.fg, 2
  %or.cond3.i = select i1 %i.en, i1 true, i1 %i.fm
  %i.fn = icmp ne i32 %i.fl, 0
  %or.cond5.i = or i1 %i.fn, %or.cond3.i
  br i1 %or.cond5.i, label %bb.i, label %bb.aw

bb.i:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20, !noalias !702
  store ptr %28, ptr %i.aq, align 8, !tbaa !251, !noalias !702
  %i.fo = select i1 %.not96.i, ptr %28, ptr %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %28, i8 0, i64 36, i1 false), !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20, !noalias !702
  store i32 %i.cf, ptr %29, align 8, !tbaa !708, !noalias !702
  store i32 %spec.select.i, ptr %i.ar, align 4, !tbaa !709, !noalias !702
  store i8 %i.eo, ptr %i.as, align 8, !tbaa !710, !noalias !702
  store float %i.cu, ptr %i.at, align 4, !tbaa !711, !noalias !702
  store float %i.fj, ptr %i.au, align 8, !tbaa !712, !noalias !702
  store ptr %i.da, ptr %i.av, align 8, !tbaa !210, !noalias !702
  store ptr %i.df, ptr %i.aw, align 8, !tbaa !210, !noalias !702
  store ptr %i.dh, ptr %i.ax, align 8, !tbaa !210, !noalias !702
end_hunk_0
begin_hunk_1_@_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined:bb.a
  %i.anb = load <2 x float>, ptr %i.amt, align 4, !tbaa !179, !alias.scope !898, !noalias !899
  %i.anc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ana, <2 x float> %i.amn, <2 x float> %i.anb)
  store <2 x float> %i.anc, ptr %i.amu, align 4, !tbaa !179, !alias.scope !900, !noalias !901
  %i.and = getelementptr inbounds nuw i8, ptr %i.amq, i64 8 ; 2 uses
  %i.ane = load float, ptr %i.and, align 4, !tbaa !179, !alias.scope !893, !noalias !894
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !179, !alias.scope !895, !noalias !896
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !179, !alias.scope !887, !noalias !897
  %i.anj = fmul float %i.ang, %i.ani
  %i.ank = fmul float %i.cu, %i.anj
  %i.anl = call float @llvm.fmuladd.f32(float %i.ali, float %i.ane, float %i.ank) ; 2 uses
  store float %i.anl, ptr %i.and, align 4, !tbaa !179, !alias.scope !893, !noalias !894
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !179, !alias.scope !898, !noalias !899
  %i.ano = call float @llvm.fmuladd.f32(float %i.anl, float %i.cu, float %i.ann)
  %i.anp = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  store float %i.ano, ptr %i.anp, align 4, !tbaa !179, !alias.scope !900, !noalias !901
  %indvars.iv.next.i.i.i.i.i.i.i.i111.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i110.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i112.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i111.i, %wide.trip.count.i.i.i.i.i.i.i.i109.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i112.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !648

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.anq = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.anq, label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.preheader.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.bi
  %i.anr = sext i32 %i.cf to i64                  ; 4 uses
  %wide.trip.count.i.i.i.i.i.i.i.i.i118.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.ans = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i.i.i118.i, %i.anr ; 2 uses
  %min.iters.check = icmp ult i64 %i.ans, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i.i
  %i.ant = and i64 %wide.trip.count.i.i.i.i.i.i.i.i.i118.i, 7
  %n.vec = sub nuw nsw i64 %i.ans, %i.ant         ; 2 uses
  %i.anu = add nsw i64 %n.vec, %i.anr
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.anv = add i64 %index, %i.anr                 ; 5 uses
  %i.anw = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %i.anv ; 2 uses
  %i.anx = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %i.anv
  %i.any = getelementptr inbounds [12 x i8], ptr %i.du, i64 %i.anv
  %i.anz = getelementptr inbounds [12 x i8], ptr %i.co, i64 %i.anv
  %i.aoa = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %i.anv
  %wide.vec = load <24 x float>, ptr %i.anw, align 4, !tbaa !179, !alias.scope !907, !noalias !908 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec374 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec375 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec376 = load <24 x float>, ptr %i.anx, align 4, !tbaa !179, !alias.scope !909, !noalias !910 ; 3 uses
  %strided.vec377 = shufflevector <24 x float> %wide.vec376, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec378 = shufflevector <24 x float> %wide.vec376, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec379 = shufflevector <24 x float> %wide.vec376, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec380 = load <24 x float>, ptr %i.any, align 4, !tbaa !179, !alias.scope !902, !noalias !911 ; 3 uses
  %strided.vec381 = shufflevector <24 x float> %wide.vec380, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec382 = shufflevector <24 x float> %wide.vec380, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec383 = shufflevector <24 x float> %wide.vec380, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aob = fmul <8 x float> %strided.vec377, %strided.vec381
  %i.aoc = fmul <8 x float> %broadcast.splat, %i.aob
  %i.aod = fadd <8 x float> %strided.vec, %i.aoc  ; 2 uses
  %wide.vec384 = load <24 x float>, ptr %i.anz, align 4, !tbaa !179, !alias.scope !912, !noalias !913 ; 3 uses
  %strided.vec385 = shufflevector <24 x float> %wide.vec384, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec386 = shufflevector <24 x float> %wide.vec384, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec387 = shufflevector <24 x float> %wide.vec384, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aoe = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aod, <8 x float> %broadcast.splat, <8 x float> %strided.vec385)
  %i.aof = fmul <8 x float> %strided.vec378, %strided.vec382
  %i.aog = fmul <8 x float> %broadcast.splat, %i.aof
  %i.aoh = fadd <8 x float> %strided.vec374, %i.aog ; 2 uses
  %i.aoi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aoh, <8 x float> %broadcast.splat, <8 x float> %strided.vec386)
  %i.aoj = fmul <8 x float> %strided.vec379, %strided.vec383
  %i.aok = fmul <8 x float> %broadcast.splat, %i.aoj
  %i.aol = fadd <8 x float> %strided.vec375, %i.aok ; 2 uses
  %i.aom = shufflevector <8 x float> %i.aod, <8 x float> %i.aoh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aon = shufflevector <8 x float> %i.aol, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.aom, <16 x float> %i.aon, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.anw, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.aoo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aol, <8 x float> %broadcast.splat, <8 x float> %strided.vec387)
  %i.aop = shufflevector <8 x float> %i.aoe, <8 x float> %i.aoi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aoq = shufflevector <8 x float> %i.aoo, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec388 = shufflevector <16 x float> %i.aop, <16 x float> %i.aoq, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec388, ptr %i.aoa, align 4, !tbaa !179, !alias.scope !914, !noalias !915
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aor = icmp eq i64 %index.next, %n.vec
  br i1 %i.aor, label %middle.block, label %vector.body, !llvm.loop !655

middle.block:                                     ; preds = %vector.body
  %i.aos = and i32 %spec.select.i, 7
  %cmp.n = icmp eq i32 %i.aos, 0
  br i1 %cmp.n, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.i.i.i.i119.i.ph = phi i64 [ %i.anr, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.anu, %middle.block ]
  %i.aot = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.aou = shufflevector <2 x float> %i.aot, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i119.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i119.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %i.aov = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 3 uses
  %i.aow = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aox = getelementptr inbounds [12 x i8], ptr %i.du, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aoy = getelementptr inbounds [12 x i8], ptr %i.co, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aoz = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.apa = load <2 x float>, ptr %i.aov, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.apb = load <2 x float>, ptr %i.aow, align 4, !tbaa !179, !alias.scope !909, !noalias !910
  %i.apc = load <2 x float>, ptr %i.aox, align 4, !tbaa !179, !alias.scope !902, !noalias !911
  %i.apd = fmul <2 x float> %i.apb, %i.apc
  %i.ape = fmul <2 x float> %i.aou, %i.apd
  %i.apf = fadd <2 x float> %i.apa, %i.ape        ; 2 uses
  store <2 x float> %i.apf, ptr %i.aov, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.apg = load <2 x float>, ptr %i.aoy, align 4, !tbaa !179, !alias.scope !912, !noalias !913
  %i.aph = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apf, <2 x float> %i.aou, <2 x float> %i.apg)
  store <2 x float> %i.aph, ptr %i.aoz, align 4, !tbaa !179, !alias.scope !914, !noalias !915
  %i.api = getelementptr inbounds nuw i8, ptr %i.aov, i64 8 ; 2 uses
  %i.apj = load float, ptr %i.api, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !179, !alias.scope !909, !noalias !910
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !179, !alias.scope !902, !noalias !911
  %i.apo = fmul float %i.apl, %i.apn
  %i.app = fmul float %i.cu, %i.apo
  %i.apq = fadd float %i.apj, %i.app              ; 2 uses
  store float %i.apq, ptr %i.api, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !179, !alias.scope !912, !noalias !913
  %i.apt = call float @llvm.fmuladd.f32(float %i.apq, float %i.cu, float %i.aps)
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  store float %i.apt, ptr %i.apu, align 4, !tbaa !179, !alias.scope !914, !noalias !915
  %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i121.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i, %wide.trip.count.i.i.i.i.i.i.i.i.i118.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i121.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !656

.loopexit265:                                     ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

bb.bj:                                            ; preds = %bb.c
  %i.apv = load float, ptr %8, align 4, !tbaa !179 ; 11 uses
  %i.apw = load i64, ptr %9, align 8, !tbaa !67   ; 3 uses
  %i.apx = load ptr, ptr %i.r, align 8, !tbaa !239 ; 2 uses
  %i.apy = load ptr, ptr %10, align 8, !tbaa !63  ; 2 uses
  %i.apz = load ptr, ptr %15, align 8, !tbaa !61  ; 2 uses
  %i.aqa = load ptr, ptr %5, align 8, !tbaa !210  ; 4 uses
  %i.aqb = load ptr, ptr %i.s, align 8, !tbaa !210 ; 2 uses
  %i.aqc = load ptr, ptr %i.w, align 8, !tbaa !210 ; 2 uses
  %i.aqd = load ptr, ptr %i.x, align 8, !tbaa !210
  %i.aqe = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %i.aqf = load ptr, ptr %i.u, align 8, !tbaa !210 ; 2 uses
  %i.aqg = load ptr, ptr %i.v, align 8, !tbaa !695 ; 2 uses
  %i.aqh = load i64, ptr %i.aa, align 8, !tbaa !319
  %i.aqi = load ptr, ptr %16, align 8, !tbaa !76  ; 2 uses
  %i.aqj = load i8, ptr %17, align 1, !tbaa !70, !range !268, !noundef !269
  %i.aqk = trunc nuw i8 %i.aqj to i1
  %i.aql = load i32, ptr %i.p, align 4, !tbaa !692
  %i.aqm = load i32, ptr %i.ae, align 4, !tbaa !694 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.aqn = icmp ne i32 %i.aql, 2
  %.not.i.i124 = icmp eq i32 %i.aqm, 0
  %or.cond.i125 = or i1 %i.aqn, %.not.i.i124
  br i1 %or.cond.i125, label %_Z11do_per_stepll.exit.i126.thread, label %_Z11do_per_stepll.exit.i126

_Z11do_per_stepll.exit.i126.thread:               ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !920
  store ptr %21, ptr %i.af, align 8, !tbaa !251, !noalias !920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %21, i8 0, i64 36, i1 false), !noalias !920
  br label %bb.bk

_Z11do_per_stepll.exit.i126:                      ; preds = %bb.bj
  %i.aqo = sext i32 %i.aqm to i64                 ; 2 uses
  %i.aqp = add i64 %i.apw, -1
  %i.aqq = add i64 %i.aqp, %i.aqo
  %i.aqr = srem i64 %i.aqq, %i.aqo
  %.fr = freeze i64 %i.aqr
  %i.aqs = icmp eq i64 %.fr, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !920
  store ptr %21, ptr %i.af, align 8, !tbaa !251, !noalias !920
  %i.aqt = sitofp i32 %i.aqm to float
  %i.aqu = fmul float %i.apv, %i.aqt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %21, i8 0, i64 36, i1 false), !noalias !920
  %spec.select251 = select i1 %i.aqs, float %i.aqu, float 0.000000e+00
  %31 = select i1 %i.aqs, ptr %.sroa.gep45.i, ptr %i.af
  br label %bb.bk

bb.bk:                                            ; preds = %_Z11do_per_stepll.exit.i126, %_Z11do_per_stepll.exit.i126.thread
  %cond.fr.i250 = phi ptr [ %i.af, %_Z11do_per_stepll.exit.i126.thread ], [ %31, %_Z11do_per_stepll.exit.i126 ] ; 2 uses
  %i.aqv = phi float [ 0.000000e+00, %_Z11do_per_stepll.exit.i126.thread ], [ %spec.select251, %_Z11do_per_stepll.exit.i126 ] ; 6 uses
  br i1 %i.aqk, label %bb.bl, label %bb.bx

bb.bl:                                            ; preds = %bb.bk
  %.val37.i.a = load ptr, ptr %cond.fr.i250, align 8, !noalias !920 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.aqw = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.aqw, label %.lr.ph.i.i129, label %.loopexit

.lr.ph.i.i129:                                    ; preds = %bb.bl
  %i.aqx = icmp eq ptr %i.aqa, %i.aqb
  %i.aqy = icmp eq ptr %i.aqe, %i.aqf
  %i.aqz = load float, ptr %.val37.i.a, align 4, !tbaa !179, !noalias !926
  %i.ara = getelementptr i8, ptr %.val37.i.a, i64 4
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !179, !noalias !926
  %i.arc = getelementptr i8, ptr %.val37.i.a, i64 8
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !179, !noalias !926
  %i.are = getelementptr i8, ptr %.val37.i.a, i64 12
  %i.arf = load float, ptr %i.are, align 4, !tbaa !179, !noalias !926
  %i.arg = getelementptr i8, ptr %.val37.i.a, i64 16
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !179, !noalias !926
  %i.ari = getelementptr i8, ptr %.val37.i.a, i64 20
  %i.arj = load float, ptr %i.ari, align 4, !tbaa !179, !noalias !926
  %i.ark = getelementptr i8, ptr %.val37.i.a, i64 24
  %i.arl = load float, ptr %i.ark, align 4, !tbaa !179, !noalias !926
  %i.arm = getelementptr i8, ptr %.val37.i.a, i64 28
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !179, !noalias !926
  %i.aro = getelementptr i8, ptr %.val37.i.a, i64 32
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !179, !noalias !926
  %i.arq = sext i32 %i.cf to i64
  %wide.trip.count.i.i = sext i32 %spec.select.i to i64
  br label %bb.bm

bb.bm:                                            ; preds = %.split14.us.i.i, %.lr.ph.i.i129
  %indvars.iv.i.i130 = phi i64 [ %i.arq, %.lr.ph.i.i129 ], [ %indvars.iv.next.i.i131, %.split14.us.i.i ] ; 9 uses
  %i.arr = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %indvars.iv.i.i130
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !179, !noalias !926 ; 5 uses
  %i.art = fcmp olt float %i.ars, 0.000000e+00
  br i1 %i.art, label %cdce.call, label %cdce.end.i.i, !prof !927

cdce.call:                                        ; preds = %bb.bm
  %i.aru = call noundef float @sqrtf(float noundef %i.ars) #20, !noalias !926 ; 0 uses
  br label %cdce.end.i.i

cdce.end.i.i:                                     ; preds = %cdce.call, %bb.bm
  br i1 %i.aqx, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %cdce.end.i.i
  %i.arv = getelementptr inbounds [2 x i8], ptr %i.aqa, i64 %indvars.iv.i.i130
  %i.arw = load i16, ptr %i.arv, align 2, !tbaa !241, !noalias !926
  %i.arx = zext i16 %i.arw to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %cdce.end.i.i
  %i.ary = phi i64 [ %i.arx, %bb.bn ], [ 0, %cdce.end.i.i ]
  br i1 %i.aqy, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.arz = getelementptr inbounds [2 x i8], ptr %i.aqe, i64 %indvars.iv.i.i130
  %i.asa = load i16, ptr %i.arz, align 2, !tbaa !241, !noalias !926
  %i.asb = zext i16 %i.asa to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.asc = phi i64 [ %i.asb, %bb.bp ], [ 0, %bb.bo ]
  %i.asd = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv.i.i130 ; 5 uses
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !179, !alias.scope !928, !noalias !929 ; 4 uses
  %i.asf = call float @llvm.fmuladd.f32(float %i.aqz, float %i.ase, float 0.000000e+00)
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 4 ; 2 uses
  %i.ash = load float, ptr %i.asg, align 4, !tbaa !179, !alias.scope !928, !noalias !929 ; 4 uses
  %i.asi = call float @llvm.fmuladd.f32(float %i.arb, float %i.ash, float %i.asf)
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asd, i64 8 ; 3 uses
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !179, !alias.scope !928, !noalias !929 ; 4 uses
  %i.asl = call float @llvm.fmuladd.f32(float %i.ard, float %i.ask, float %i.asi)
  %i.asm = call float @llvm.fmuladd.f32(float %i.arf, float %i.ase, float 0.000000e+00)
  %i.asn = call float @llvm.fmuladd.f32(float %i.arh, float %i.ash, float %i.asm)
  %i.aso = call float @llvm.fmuladd.f32(float %i.arj, float %i.ask, float %i.asn)
  %i.asp = call float @llvm.fmuladd.f32(float %i.arl, float %i.ase, float 0.000000e+00)
  %i.asq = call float @llvm.fmuladd.f32(float %i.arn, float %i.ash, float %i.asp)
  %i.asr = call float @llvm.fmuladd.f32(float %i.arp, float %i.ask, float %i.asq)
  %i.ass = fmul float %i.aqv, %i.asl
  %i.ast = fmul float %i.aqv, %i.aso
  %i.asu = fmul float %i.aqv, %i.asr
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.apz, i64 %indvars.iv.i.i130
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !325, !noalias !926
  %.not.i40.i = icmp eq i32 %i.asw, 2
  %i.asx = getelementptr inbounds nuw [12 x i8], ptr %i.apx, i64 %i.ary ; 3 uses
  %i.asy = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv.i.i130 ; 3 uses
  %i.asz = getelementptr inbounds nuw [12 x i8], ptr %i.aqg, i64 %i.asc ; 3 uses
  %i.ata = getelementptr [12 x i8], ptr %i.co, i64 %indvars.iv.i.i130 ; 7 uses
  %i.atb = getelementptr [12 x i8], ptr %i.cp, i64 %indvars.iv.i.i130 ; 5 uses
  br i1 %.not.i40.i, label %.split.us.preheader.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.bq
  %i.atc = load i32, ptr %i.asx, align 4, !tbaa !68, !noalias !926
  %.not65.i.i = icmp eq i32 %i.atc, 0
  br i1 %.not65.i.i, label %bb.br, label %bb.bs

.split.us.preheader.i.i:                          ; preds = %bb.bq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.asd, i8 0, i64 12, i1 false), !tbaa !179, !alias.scope !928, !noalias !929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.atb, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ata, i64 12, i1 false), !tbaa !179, !alias.scope !930, !noalias !931
  br label %.split14.us.i.i

.split14.us.i.i:                                  ; preds = %bb.bw, %bb.bv, %.split.us.preheader.i.i
  %indvars.iv.next.i.i131 = add nsw i64 %indvars.iv.i.i130, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i131, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.bm, !llvm.loop !668

bb.br:                                            ; preds = %.split.preheader.i.i
  %i.atd = load float, ptr %i.asy, align 4, !tbaa !179, !alias.scope !932, !noalias !933
  %i.ate = load float, ptr %i.asz, align 4, !tbaa !179, !alias.scope !921, !noalias !934
  %i.atf = call float @llvm.fmuladd.f32(float %i.ars, float %i.atd, float %i.ate)
  %i.atg = call float @llvm.fmuladd.f32(float %i.atf, float %i.apv, float %i.ase)
  %i.ath = fsub float %i.atg, %i.ass              ; 2 uses
  %i.ati = load float, ptr %i.ata, align 4, !tbaa !179, !alias.scope !935, !noalias !936
  %i.atj = call float @llvm.fmuladd.f32(float %i.ath, float %i.apv, float %i.ati)
  br label %.split.1.i.i

bb.bs:                                            ; preds = %.split.preheader.i.i
  %i.atk = load float, ptr %i.ata, align 4, !tbaa !179, !alias.scope !935, !noalias !936
  br label %.split.1.i.i

.split.1.i.i:                                     ; preds = %bb.bs, %bb.br
  %.sink.i = phi float [ %i.ath, %bb.br ], [ 0.000000e+00, %bb.bs ]
  %storemerge.i.i = phi float [ %i.atj, %bb.br ], [ %i.atk, %bb.bs ]
  store float %.sink.i, ptr %i.asd, align 4, !tbaa !179, !alias.scope !928, !noalias !929
  store float %storemerge.i.i, ptr %i.atb, align 4, !tbaa !179, !alias.scope !937, !noalias !938
  %i.atl = getelementptr inbounds nuw i8, ptr %i.asx, i64 4
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !68, !noalias !926
  %.not65.1.i.i = icmp eq i32 %i.atm, 0
  br i1 %.not65.1.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.split.1.i.i
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ata, i64 4
  %i.ato = load float, ptr %i.atn, align 4, !tbaa !179, !alias.scope !935, !noalias !936
  br label %.split.2.i.i

bb.bu:                                            ; preds = %.split.1.i.i
  %i.atp = getelementptr inbounds nuw i8, ptr %i.asy, i64 4
  %i.atq = load float, ptr %i.atp, align 4, !tbaa !179, !alias.scope !932, !noalias !933
  %i.atr = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  %i.ats = load float, ptr %i.atr, align 4, !tbaa !179, !alias.scope !921, !noalias !934
  %i.att = call float @llvm.fmuladd.f32(float %i.ars, float %i.atq, float %i.ats)
  %i.atu = call float @llvm.fmuladd.f32(float %i.att, float %i.apv, float %i.ash)
  %i.atv = fsub float %i.atu, %i.ast              ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ata, i64 4
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !179, !alias.scope !935, !noalias !936
  %i.aty = call float @llvm.fmuladd.f32(float %i.atv, float %i.apv, float %i.atx)
  br label %.split.2.i.i

.split.2.i.i:                                     ; preds = %bb.bu, %bb.bt
  %.sink60.i = phi float [ %i.atv, %bb.bu ], [ 0.000000e+00, %bb.bt ]
  %.sink.i.i = phi float [ %i.aty, %bb.bu ], [ %i.ato, %bb.bt ]
  store float %.sink60.i, ptr %i.asg, align 4, !tbaa !179, !alias.scope !928, !noalias !929
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atb, i64 4
  store float %.sink.i.i, ptr %i.atz, align 4, !tbaa !179, !alias.scope !937, !noalias !938
  %i.aua = getelementptr inbounds nuw i8, ptr %i.asx, i64 8
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !68, !noalias !926
  %.not65.2.i.i = icmp eq i32 %i.aub, 0
  br i1 %.not65.2.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.split.2.i.i
  store float 0.000000e+00, ptr %i.asj, align 4, !tbaa !179, !alias.scope !928, !noalias !929
  %i.auc = getelementptr inbounds nuw i8, ptr %i.ata, i64 8
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !179, !alias.scope !935, !noalias !936
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  store float %i.aud, ptr %i.aue, align 4, !tbaa !179, !alias.scope !937, !noalias !938
  br label %.split14.us.i.i

bb.bw:                                            ; preds = %.split.2.i.i
  %i.auf = getelementptr inbounds nuw i8, ptr %i.asy, i64 8
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !179, !alias.scope !932, !noalias !933
  %i.auh = getelementptr inbounds nuw i8, ptr %i.asz, i64 8
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !179, !alias.scope !921, !noalias !934
  %i.auj = call float @llvm.fmuladd.f32(float %i.ars, float %i.aug, float %i.aui)
  %i.auk = call float @llvm.fmuladd.f32(float %i.auj, float %i.apv, float %i.ask)
  %i.aul = fsub float %i.auk, %i.asu              ; 2 uses
  store float %i.aul, ptr %i.asj, align 4, !tbaa !179, !alias.scope !928, !noalias !929
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ata, i64 8
  %i.aun = load float, ptr %i.aum, align 4, !tbaa !179, !alias.scope !935, !noalias !936
  %i.auo = call float @llvm.fmuladd.f32(float %i.aul, float %i.apv, float %i.aun)
  %i.aup = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  store float %i.auo, ptr %i.aup, align 4, !tbaa !179, !alias.scope !937, !noalias !938
  br label %.split14.us.i.i

bb.bx:                                            ; preds = %bb.bk
  %.not.i128 = icmp eq ptr %i.aqi, null
  br i1 %.not.i128, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aqi, i64 896
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !320, !noalias !920
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.aus = phi ptr [ %i.aur, %bb.by ], [ null, %bb.bx ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !944
  %sext252 = shl i64 %i.aqh, 32
  %i.aut = ashr exact i64 %sext252, 32            ; 2 uses
  store i64 %i.aut, ptr %20, align 8, !noalias !944
  store i64 12288, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !177, !noalias !944
  %i.auu = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.auu, label %.lr.ph.i41.i, label %_ZL17doSDUpdateGeneralIL8SDUpdate2EEvRK12gmx_stochd_tiifN3gmx8ArrayRefIA3_KiEENS5_IKfEENS5_IK12ParticleTypeEENS5_IKtEESF_SF_PKNS4_11BasicVectorIfEESJ_PSH_SK_SJ_liPS6_fRKNS4_14BasicMatrix3x3IfEE.exit.i

.lr.ph.i41.i:                                     ; preds = %bb.bz
  %.not.i42.i = icmp eq ptr %i.aus, null
  %i.auv = icmp eq ptr %i.aqa, %i.aqb
  %i.auw = icmp eq ptr %i.aqe, %i.aqf
  %i.aux = icmp eq ptr %i.aqc, %i.aqd
  %i.auy = fpext float %i.apv to double           ; 3 uses
  %i.auz = sext i32 %i.cf to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.split9.us.i.i, %.lr.ph.i41.i
  %i.ava = phi i64 [ 12288, %.lr.ph.i41.i ], [ %i.bar, %.split9.us.i.i ] ; 9 uses
  %i.avb = phi i64 [ %i.aut, %.lr.ph.i41.i ], [ %i.bas, %.split9.us.i.i ] ; 9 uses
  %indvars.iv17.i.i = phi i64 [ %i.auz, %.lr.ph.i41.i ], [ %indvars.iv.next18.i.i, %.split9.us.i.i ] ; 12 uses
  %.sroa.6.010.i.i = phi i64 [ 0, %.lr.ph.i41.i ], [ %.us-phi.i.i, %.split9.us.i.i ] ; 2 uses
  br i1 %.not.i42.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.avc = getelementptr inbounds [4 x i8], ptr %i.aus, i64 %indvars.iv17.i.i
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !68, !noalias !944
  %i.ave = sext i32 %i.avd to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.avf = phi i64 [ %i.ave, %bb.cb ], [ %indvars.iv17.i.i, %bb.ca ] ; 2 uses
  store i64 %i.apw, ptr %i.ag, align 8, !noalias !944
  store i64 %i.avf, ptr %.sroa.74.0..sroa_idx.i.i.i, align 8, !tbaa !177, !noalias !944
  %i.avg = add i64 %i.avb, %i.apw
  %i.avh = xor i64 %i.ava, %i.avb
  %i.avi = xor i64 %i.avh, 2004413935125273122    ; 4 uses
  %i.avj = add i64 %i.avf, %i.ava                 ; 3 uses
  %i.avk = add i64 %i.avg, %i.avj                 ; 2 uses
  %i.avl = call i64 @llvm.fshl.i64(i64 %i.avj, i64 %i.avj, i64 16)
  %i.avm = xor i64 %i.avl, %i.avk                 ; 3 uses
  %i.avn = add i64 %i.avm, %i.avk                 ; 2 uses
  %i.avo = call i64 @llvm.fshl.i64(i64 %i.avm, i64 %i.avm, i64 42)
  %i.avp = xor i64 %i.avo, %i.avn                 ; 3 uses
  %i.avq = add i64 %i.avp, %i.avn                 ; 2 uses
  %i.avr = call i64 @llvm.fshl.i64(i64 %i.avp, i64 %i.avp, i64 12)
  %i.avs = xor i64 %i.avr, %i.avq                 ; 3 uses
  %i.avt = add i64 %i.avs, %i.avq                 ; 2 uses
  %i.avu = call i64 @llvm.fshl.i64(i64 %i.avs, i64 %i.avs, i64 31)
  %i.avv = xor i64 %i.avu, %i.avt
  %i.avw = add i64 %i.avt, %i.ava
  %i.avx = add i64 %i.avi, 1
  %i.avy = add i64 %i.avx, %i.avv                 ; 3 uses
  %i.avz = add i64 %i.avw, %i.avy                 ; 2 uses
  %i.awa = call i64 @llvm.fshl.i64(i64 %i.avy, i64 %i.avy, i64 16)
  %i.awb = xor i64 %i.awa, %i.avz                 ; 3 uses
  %i.awc = add i64 %i.awb, %i.avz                 ; 2 uses
  %i.awd = call i64 @llvm.fshl.i64(i64 %i.awb, i64 %i.awb, i64 32)
  %i.awe = xor i64 %i.awd, %i.awc                 ; 3 uses
  %i.awf = add i64 %i.awe, %i.awc                 ; 2 uses
  %i.awg = call i64 @llvm.fshl.i64(i64 %i.awe, i64 %i.awe, i64 24)
  %i.awh = xor i64 %i.awg, %i.awf                 ; 3 uses
  %i.awi = add i64 %i.awh, %i.awf                 ; 2 uses
  %i.awj = call i64 @llvm.fshl.i64(i64 %i.awh, i64 %i.awh, i64 21)
  %i.awk = xor i64 %i.awj, %i.awi
  %i.awl = add i64 %i.awi, %i.avi
  %i.awm = add i64 %i.avb, 2
  %i.awn = add i64 %i.awm, %i.awk                 ; 3 uses
  %i.awo = add i64 %i.awl, %i.awn                 ; 2 uses
  %i.awp = call i64 @llvm.fshl.i64(i64 %i.awn, i64 %i.awn, i64 16)
  %i.awq = xor i64 %i.awp, %i.awo                 ; 3 uses
  %i.awr = add i64 %i.awq, %i.awo                 ; 2 uses
  %i.aws = call i64 @llvm.fshl.i64(i64 %i.awq, i64 %i.awq, i64 42)
  %i.awt = xor i64 %i.aws, %i.awr                 ; 3 uses
  %i.awu = add i64 %i.awt, %i.awr                 ; 2 uses
  %i.awv = call i64 @llvm.fshl.i64(i64 %i.awt, i64 %i.awt, i64 12)
  %i.aww = xor i64 %i.awv, %i.awu                 ; 3 uses
  %i.awx = add i64 %i.aww, %i.awu                 ; 2 uses
  %i.awy = call i64 @llvm.fshl.i64(i64 %i.aww, i64 %i.aww, i64 31)
  %i.awz = xor i64 %i.awy, %i.awx
  %i.axa = add i64 %i.awx, %i.avb
  %i.axb = add i64 %i.ava, 3
  %i.axc = add i64 %i.axb, %i.awz                 ; 3 uses
  %i.axd = add i64 %i.axa, %i.axc                 ; 2 uses
  %i.axe = call i64 @llvm.fshl.i64(i64 %i.axc, i64 %i.axc, i64 16)
  %i.axf = xor i64 %i.axe, %i.axd                 ; 3 uses
  %i.axg = add i64 %i.axf, %i.axd                 ; 2 uses
  %i.axh = call i64 @llvm.fshl.i64(i64 %i.axf, i64 %i.axf, i64 32)
  %i.axi = xor i64 %i.axh, %i.axg                 ; 3 uses
  %i.axj = add i64 %i.axi, %i.axg                 ; 2 uses
  %i.axk = call i64 @llvm.fshl.i64(i64 %i.axi, i64 %i.axi, i64 24)
  %i.axl = xor i64 %i.axk, %i.axj                 ; 3 uses
  %i.axm = add i64 %i.axl, %i.axj                 ; 2 uses
  %i.axn = call i64 @llvm.fshl.i64(i64 %i.axl, i64 %i.axl, i64 21)
  %i.axo = xor i64 %i.axn, %i.axm
  %i.axp = add i64 %i.axm, %i.ava
  %i.axq = add i64 %i.avi, 4
  %i.axr = add i64 %i.axq, %i.axo                 ; 3 uses
  %i.axs = add i64 %i.axp, %i.axr                 ; 2 uses
  %i.axt = call i64 @llvm.fshl.i64(i64 %i.axr, i64 %i.axr, i64 16)
  %i.axu = xor i64 %i.axt, %i.axs                 ; 3 uses
  %i.axv = add i64 %i.axu, %i.axs                 ; 2 uses
  %i.axw = call i64 @llvm.fshl.i64(i64 %i.axu, i64 %i.axu, i64 42)
  %i.axx = xor i64 %i.axw, %i.axv                 ; 3 uses
  %i.axy = add i64 %i.axx, %i.axv                 ; 2 uses
  %i.axz = call i64 @llvm.fshl.i64(i64 %i.axx, i64 %i.axx, i64 12)
  %i.aya = xor i64 %i.axz, %i.axy                 ; 3 uses
  %i.ayb = add i64 %i.aya, %i.axy                 ; 2 uses
  %i.ayc = call i64 @llvm.fshl.i64(i64 %i.aya, i64 %i.aya, i64 31)
  %i.ayd = xor i64 %i.ayc, %i.ayb
  %i.aye = add i64 %i.ayb, %i.avi                 ; 3 uses
  %i.ayf = add i64 %i.avb, 5
  %i.ayg = add i64 %i.ayf, %i.ayd
  store i64 %i.aye, ptr %i.ah, align 8, !noalias !944
  store i64 %i.ayg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !177, !noalias !944
  store i32 0, ptr %i.ai, align 8, !tbaa !323, !noalias !944
  %i.ayh = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %indvars.iv17.i.i
  %i.ayi = load float, ptr %i.ayh, align 4, !tbaa !179, !noalias !944 ; 4 uses
  %i.ayj = call noundef float @sqrtf(float noundef %i.ayi) #20, !noalias !944 ; 3 uses
  br i1 %i.auv, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ayk = getelementptr inbounds [2 x i8], ptr %i.aqa, i64 %indvars.iv17.i.i
  %i.ayl = load i16, ptr %i.ayk, align 2, !tbaa !241, !noalias !944
  %i.aym = zext i16 %i.ayl to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.ayn = phi i64 [ %i.aym, %bb.cd ], [ 0, %bb.cc ]
  br i1 %i.auw, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ayo = getelementptr inbounds [2 x i8], ptr %i.aqe, i64 %indvars.iv17.i.i
  %i.ayp = load i16, ptr %i.ayo, align 2, !tbaa !241, !noalias !944
  %i.ayq = zext i16 %i.ayp to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ayr = phi i64 [ %i.ayq, %bb.cf ], [ 0, %bb.ce ]
  br i1 %i.aux, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ays = getelementptr inbounds [2 x i8], ptr %i.aqc, i64 %indvars.iv17.i.i
  %i.ayt = load i16, ptr %i.ays, align 2, !tbaa !241, !noalias !944
  %i.ayu = zext i16 %i.ayt to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ayv = phi i64 [ %i.ayu, %bb.ch ], [ 0, %bb.cg ] ; 6 uses
  %i.ayw = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv17.i.i ; 6 uses
  %i.ayx = load ptr, ptr %cond.fr.i250, align 8, !tbaa !251, !noalias !944 ; 9 uses
  %i.ayy = load float, ptr %i.ayx, align 4, !tbaa !179, !noalias !944
  %i.ayz = load float, ptr %i.ayw, align 4, !tbaa !179, !alias.scope !945, !noalias !946 ; 4 uses
  %i.aza = call float @llvm.fmuladd.f32(float %i.ayy, float %i.ayz, float 0.000000e+00)
  %i.azb = getelementptr i8, ptr %i.ayx, i64 4
  %i.azc = load float, ptr %i.azb, align 4, !tbaa !179, !noalias !944
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayw, i64 4 ; 3 uses
  %i.aze = load float, ptr %i.azd, align 4, !tbaa !179, !alias.scope !945, !noalias !946 ; 4 uses
  %i.azf = call float @llvm.fmuladd.f32(float %i.azc, float %i.aze, float %i.aza)
  %i.azg = getelementptr i8, ptr %i.ayx, i64 8
  %i.azh = load float, ptr %i.azg, align 4, !tbaa !179, !noalias !944
  %i.azi = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8 ; 3 uses
  %i.azj = load float, ptr %i.azi, align 4, !tbaa !179, !alias.scope !945, !noalias !946 ; 4 uses
  %i.azk = call float @llvm.fmuladd.f32(float %i.azh, float %i.azj, float %i.azf)
  %i.azl = getelementptr i8, ptr %i.ayx, i64 12
  %i.azm = load float, ptr %i.azl, align 4, !tbaa !179, !noalias !944
  %i.azn = call float @llvm.fmuladd.f32(float %i.azm, float %i.ayz, float 0.000000e+00)
  %i.azo = getelementptr i8, ptr %i.ayx, i64 16
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !179, !noalias !944
  %i.azq = call float @llvm.fmuladd.f32(float %i.azp, float %i.aze, float %i.azn)
  %i.azr = getelementptr i8, ptr %i.ayx, i64 20
  %i.azs = load float, ptr %i.azr, align 4, !tbaa !179, !noalias !944
  %i.azt = call float @llvm.fmuladd.f32(float %i.azs, float %i.azj, float %i.azq)
  %i.azu = getelementptr i8, ptr %i.ayx, i64 24
  %i.azv = load float, ptr %i.azu, align 4, !tbaa !179, !noalias !944
  %i.azw = call float @llvm.fmuladd.f32(float %i.azv, float %i.ayz, float 0.000000e+00)
  %i.azx = getelementptr i8, ptr %i.ayx, i64 28
  %i.azy = load float, ptr %i.azx, align 4, !tbaa !179, !noalias !944
  %i.azz = call float @llvm.fmuladd.f32(float %i.azy, float %i.aze, float %i.azw)
  %i.baa = getelementptr i8, ptr %i.ayx, i64 32
  %i.bab = load float, ptr %i.baa, align 4, !tbaa !179, !noalias !944
  %i.bac = call float @llvm.fmuladd.f32(float %i.bab, float %i.azj, float %i.azz)
  %i.bad = fmul float %i.aqv, %i.azk
  %i.bae = fmul float %i.aqv, %i.azt
  %i.baf = fmul float %i.aqv, %i.bac
  %i.bag = getelementptr inbounds [4 x i8], ptr %i.apz, i64 %indvars.iv17.i.i
  %i.bah = getelementptr inbounds nuw [12 x i8], ptr %i.apx, i64 %i.ayn ; 3 uses
  %i.bai = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv17.i.i ; 3 uses
  %i.baj = getelementptr inbounds nuw [12 x i8], ptr %i.aqg, i64 %i.ayr ; 3 uses
  %i.bak = getelementptr [12 x i8], ptr %i.co, i64 %indvars.iv17.i.i ; 7 uses
  %i.bal = getelementptr [12 x i8], ptr %i.cp, i64 %indvars.iv17.i.i ; 4 uses
  %i.bam = load i32, ptr %i.bag, align 4, !tbaa !325, !noalias !944
  %i.ban = icmp eq i32 %i.bam, 2
  br i1 %i.ban, label %.split.us.preheader.i49.i, label %.split.i.i.preheader

.split.us.preheader.i49.i:                        ; preds = %bb.ci
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ayw, i8 0, i64 12, i1 false), !tbaa !179, !alias.scope !945, !noalias !946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bal, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bak, i64 12, i1 false), !tbaa !179, !alias.scope !947, !noalias !948
  br label %.split9.us.i.i

.split9.us.i.i.loopexit:                          ; preds = %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.2, %bb.cq
  %.sink.i46.i.2 = phi float [ %i.bhf, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.2 ], [ %i.bhh, %bb.cq ]
  %i.bao = phi i64 [ %i.bgm, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.2 ], [ %i.ava, %bb.cq ]
  %i.bap = phi i64 [ %i.bgn, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.2 ], [ %i.avb, %bb.cq ]
  %.sroa.6.2.i.i.2 = phi i64 [ %i.bgs, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.2 ], [ %.sroa.6.2.i.i.1, %bb.cq ]
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bal, i64 8
  store float %.sink.i46.i.2, ptr %i.baq, align 4, !tbaa !179, !alias.scope !949, !noalias !950
  br label %.split9.us.i.i

.split9.us.i.i:                                   ; preds = %.split9.us.i.i.loopexit, %.split.us.preheader.i49.i
  %i.bar = phi i64 [ %i.ava, %.split.us.preheader.i49.i ], [ %i.bao, %.split9.us.i.i.loopexit ]
  %i.bas = phi i64 [ %i.avb, %.split.us.preheader.i49.i ], [ %i.bap, %.split9.us.i.i.loopexit ]
  %.us-phi.i.i = phi i64 [ %.sroa.6.010.i.i, %.split.us.preheader.i49.i ], [ %.sroa.6.2.i.i.2, %.split9.us.i.i.loopexit ]
  %indvars.iv.next18.i.i = add nsw i64 %indvars.iv17.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next18.i.i to i32
  %exitcond20.not.i.i = icmp eq i32 %spec.select.i, %lftr.wideiv.i.i
  br i1 %exitcond20.not.i.i, label %_ZL17doSDUpdateGeneralIL8SDUpdate2EEvRK12gmx_stochd_tiifN3gmx8ArrayRefIA3_KiEENS5_IKfEENS5_IK12ParticleTypeEENS5_IKtEESF_SF_PKNS4_11BasicVectorIfEESJ_PSH_SK_SJ_liPS6_fRKNS4_14BasicMatrix3x3IfEE.exit.i, label %bb.ca, !llvm.loop !675

bb.cj:                                            ; preds = %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i, %bb.cr
  %.sink.i46.i = phi float [ %i.bil, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i ], [ %i.bim, %bb.cr ]
  %i.bat = phi i32 [ 1, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i ], [ 0, %bb.cr ] ; 4 uses
  %.sroa.6.2.i.i = phi i64 [ %i.bhz, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i ], [ %.sroa.6.010.i.i, %bb.cr ] ; 2 uses
  %.sroa.9.1.i.i = phi i32 [ 50, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i ], [ 0, %bb.cr ] ; 2 uses
  store float %.sink.i46.i, ptr %i.bal, align 4, !tbaa !179, !alias.scope !949, !noalias !950
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bah, i64 4
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !68, !noalias !944
  %.not72.i.i.1 = icmp eq i32 %i.bav, 0
  br i1 %.not72.i.i.1, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bai, i64 4
  %i.bax = load float, ptr %i.baw, align 4, !tbaa !179, !alias.scope !951, !noalias !952
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baj, i64 4
  %i.baz = load float, ptr %i.bay, align 4, !tbaa !179, !alias.scope !939, !noalias !953
  %i.bba = call float @llvm.fmuladd.f32(float %i.ayi, float %i.bax, float %i.baz)
  %i.bbb = call float @llvm.fmuladd.f32(float %i.bba, float %i.apv, float %i.aze)
  %i.bbc = fsub float %i.bbb, %i.bae              ; 2 uses
  %i.bbd = fpext float %i.bbc to double
  %i.bbe = load ptr, ptr %i.aj, align 8, !tbaa !33, !noalias !944
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %i.bbe, i64 %i.ayv
  %i.bbg = load double, ptr %i.bbf, align 8, !tbaa !258, !noalias !944
  %i.bbh = load ptr, ptr %i.ak, align 8, !tbaa !29, !noalias !944
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.bbh, i64 %i.ayv
  %i.bbj = load float, ptr %i.bbi, align 4, !tbaa !260, !noalias !944
  %i.bbk = fmul float %i.ayj, %i.bbj
  br i1 %.not72.i.i.not, label %._crit_edge.i.i.i.i.1, label %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.1

._crit_edge.i.i.i.i.1:                            ; preds = %bb.ck
  %i.bbl = add nsw i32 %.sroa.9.1.i.i, -14
  br label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.1

_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.1: ; preds = %bb.ck
  %i.bbm = add nuw nsw i32 %i.bat, 1              ; 2 uses
  %.phi.trans.insert1.i.i.i.i.i.1 = zext nneg i32 %i.bat to i64
  %.phi.trans.insert2.i.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.phi.trans.insert1.i.i.i.i.i.1
  %.pre.i.i.i.i.i.1 = load i64, ptr %.phi.trans.insert2.i.i.i.i.i.1, align 8, !tbaa !67, !noalias !944
  store i32 %i.bbm, ptr %i.ai, align 8, !tbaa !323, !noalias !944
  br label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.1

_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.1: ; preds = %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.1, %._crit_edge.i.i.i.i.1
  %i.bbn = phi i32 [ %i.bat, %._crit_edge.i.i.i.i.1 ], [ %i.bbm, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.1 ]
  %i.bbo = phi i32 [ %i.bbl, %._crit_edge.i.i.i.i.1 ], [ 50, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.1 ]
  %i.bbp = phi i64 [ %.sroa.6.2.i.i, %._crit_edge.i.i.i.i.1 ], [ %.pre.i.i.i.i.i.1, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.1 ] ; 2 uses
  %i.bbq = and i64 %i.bbp, 16383
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.bbq
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !179, !noalias !944
  %i.bbt = lshr i64 %i.bbp, 14
  %i.bbu = fadd float %i.bbs, 0.000000e+00
  %i.bbv = fmul float %i.bbk, %i.bbu
  %i.bbw = fpext float %i.bbv to double
  %i.bbx = call double @llvm.fmuladd.f64(double %i.bbd, double %i.bbg, double %i.bbw)
  %i.bby = fptrunc double %i.bbx to float         ; 2 uses
  store float %i.bby, ptr %i.azd, align 4, !tbaa !179, !alias.scope !945, !noalias !946
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bak, i64 4
  %i.bca = load float, ptr %i.bbz, align 4, !tbaa !179, !alias.scope !954, !noalias !955
  %i.bcb = fpext float %i.bca to double
  %i.bcc = fadd float %i.bbc, %i.bby
  %i.bcd = fpext float %i.bcc to double
  %i.bce = fmul double %i.bcd, 5.000000e-01
  %i.bcf = call double @llvm.fmuladd.f64(double %i.bce, double %i.auy, double %i.bcb)
  %i.bcg = fptrunc double %i.bcf to float
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  store float 0.000000e+00, ptr %i.azd, align 4, !tbaa !179, !alias.scope !945, !noalias !946
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bak, i64 4
  %i.bci = load float, ptr %i.bch, align 4, !tbaa !179, !alias.scope !954, !noalias !955
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.1, %bb.cl
  %.sink.i46.i.1 = phi float [ %i.bcg, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.1 ], [ %i.bci, %bb.cl ]
  %i.bcj = phi i32 [ %i.bbn, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.1 ], [ %i.bat, %bb.cl ] ; 3 uses
  %.sroa.6.2.i.i.1 = phi i64 [ %i.bbt, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.1 ], [ %.sroa.6.2.i.i, %bb.cl ] ; 2 uses
  %.sroa.9.1.i.i.1 = phi i32 [ %i.bbo, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.1 ], [ %.sroa.9.1.i.i, %bb.cl ]
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bal, i64 4
  store float %.sink.i46.i.1, ptr %i.bck, align 4, !tbaa !179, !alias.scope !949, !noalias !950
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bah, i64 8
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !68, !noalias !944
  %.not72.i.i.2 = icmp eq i32 %i.bcm, 0
  br i1 %.not72.i.i.2, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bai, i64 8
  %i.bco = load float, ptr %i.bcn, align 4, !tbaa !179, !alias.scope !951, !noalias !952
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.baj, i64 8
  %i.bcq = load float, ptr %i.bcp, align 4, !tbaa !179, !alias.scope !939, !noalias !953
  %i.bcr = call float @llvm.fmuladd.f32(float %i.ayi, float %i.bco, float %i.bcq)
  %i.bcs = call float @llvm.fmuladd.f32(float %i.bcr, float %i.apv, float %i.azj)
  %i.bct = fsub float %i.bcs, %i.baf              ; 2 uses
  %i.bcu = fpext float %i.bct to double
  %i.bcv = load ptr, ptr %i.aj, align 8, !tbaa !33, !noalias !944
  %i.bcw = getelementptr inbounds nuw [8 x i8], ptr %i.bcv, i64 %i.ayv
  %i.bcx = load double, ptr %i.bcw, align 8, !tbaa !258, !noalias !944
  %i.bcy = load ptr, ptr %i.ak, align 8, !tbaa !29, !noalias !944
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bcy, i64 %i.ayv
  %i.bda = load float, ptr %i.bcz, align 4, !tbaa !260, !noalias !944
  %i.bdb = fmul float %i.ayj, %i.bda
  %i.bdc = icmp ult i32 %.sroa.9.1.i.i.1, 14
  br i1 %i.bdc, label %bb.co, label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.2

bb.co:                                            ; preds = %bb.cn
  %i.bdd = icmp samesign ugt i32 %i.bcj, 1
  br i1 %i.bdd, label %bb.cp, label %._crit_edge.i.i.i.i.i.2

._crit_edge.i.i.i.i.i.2:                          ; preds = %bb.co
  %.phi.trans.insert1.i.i.i.i.i.2 = zext nneg i32 %i.bcj to i64
  %.phi.trans.insert2.i.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.phi.trans.insert1.i.i.i.i.i.2
  %.pre.i.i.i.i.i.2 = load i64, ptr %.phi.trans.insert2.i.i.i.i.i.2, align 8, !tbaa !67, !noalias !944
  %i.bde = add nuw nsw i32 %i.bcj, 1
  br label %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.2

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.ag)
          to label %.noexc132.2 unwind label %bb.cs

.noexc132.2:                                      ; preds = %bb.cp
  %.sroa.024.0.copyload.i86.i.i.2 = load i64, ptr %i.ag, align 8, !noalias !944
  %.sroa.74.0.copyload.i88.i.i.2 = load i64, ptr %.sroa.74.0..sroa_idx.i.i.i, align 8, !tbaa !177, !noalias !944
  %i.bdf = load i64, ptr %20, align 8, !tbaa !67, !noalias !944 ; 6 uses
  %i.bdg = add i64 %i.bdf, %.sroa.024.0.copyload.i86.i.i.2
  %i.bdh = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !67, !noalias !944 ; 6 uses
  %i.bdi = xor i64 %i.bdf, %i.bdh
  %i.bdj = xor i64 %i.bdi, 2004413935125273122    ; 4 uses
  %i.bdk = add i64 %i.bdh, %.sroa.74.0.copyload.i88.i.i.2 ; 3 uses
  %i.bdl = add i64 %i.bdg, %i.bdk                 ; 2 uses
  %i.bdm = call i64 @llvm.fshl.i64(i64 %i.bdk, i64 %i.bdk, i64 16)
  %i.bdn = xor i64 %i.bdm, %i.bdl                 ; 3 uses
  %i.bdo = add i64 %i.bdn, %i.bdl                 ; 2 uses
  %i.bdp = call i64 @llvm.fshl.i64(i64 %i.bdn, i64 %i.bdn, i64 42)
  %i.bdq = xor i64 %i.bdp, %i.bdo                 ; 3 uses
  %i.bdr = add i64 %i.bdq, %i.bdo                 ; 2 uses
end_hunk_1
