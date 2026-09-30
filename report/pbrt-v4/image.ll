Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRmJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72
  %i.fa = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.eh
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75
  %i.fc = load i64, ptr %i.eh, align 8, !tbaa !37
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72, %bb.ab
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eh
  br i1 %i.fg, label %.body69, label %.body69.sink.split

.body69.sink.split:                               ; preds = %bb.ac, %bb.aa
  %.sink131 = phi ptr [ %i.er, %bb.aa ], [ %i.ff, %bb.ac ]
  %.pn.ph = phi { ptr, i32 } [ %i.eq, %bb.aa ], [ %i.fe, %bb.ac ]
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !37
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %.sink131, i64 noundef %i.fi) #35
  br label %.body69

.body69:                                          ; preds = %.body69.sink.split, %bb.ac, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.aa ], [ %i.fe, %bb.ac ], [ %.pn.ph, %.body69.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.af

bb.ad:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !197
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.fj)
          to label %bb.ae unwind label %bb.b

bb.ae:                                            ; preds = %bb.ad
  %i.fk = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ae
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !37
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.af:                                            ; preds = %.body69, %bb.w, %.body, %bb.b
  %.pn31 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn29, %.body ], [ %.pn24.pn.pn.pn, %bb.w ], [ %.pn, %.body69 ]
  %i.fp = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.af
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !37
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn31
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E9_M_invokeERKSt9_Any_dataOlSG_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 10 uses
  %4 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 8 uses
  %5 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 10 uses
  %6 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !111   ; 8 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !47
  %.val4 = load i64, ptr %2, align 8, !tbaa !47   ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !2378 ; 5 uses
  %sext.i.i.i = shl i64 %.val3, 32
  %i.d = ashr exact i64 %sext.i.i.i, 32           ; 2 uses
  %i.e = icmp sgt i64 %.val4, %i.d
  br i1 %i.e, label %.preheader124.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image20JointBilateralFilterERKNS0_16ImageChannelDescEiPKfS4_RKNS0_18ImageChannelValuesEE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.preheader124.lr.ph.i.i.i:                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !74  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.preheader124.i.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image20JointBilateralFilterERKNS0_16ImageChannelDescEiPKfS4_RKNS0_18ImageChannelValuesEE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.preheader124.i.i.i:                              ; preds = %.preheader124.lr.ph.i.i.i, %._crit_edge190.i.i.i
  %i.ag = phi i32 [ %i.aj, %._crit_edge190.i.i.i ], [ %i.ae, %.preheader124.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv209.i.i.i = phi i64 [ %indvars.iv.next210.i.i.i, %._crit_edge190.i.i.i ], [ %i.d, %.preheader124.lr.ph.i.i.i ] ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph189.i.i.i, label %._crit_edge190.i.i.i

.lr.ph189.i.i.i:                                  ; preds = %.preheader124.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv209.i.i.i to i32
  %.sroa.2119.0.insert.ext.i.i.i = shl i64 %indvars.iv209.i.i.i, 32
  br label %bb.b

._crit_edge190.i.i.i:                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit103.i.i.i, %.preheader124.i.i.i
  %i.aj = phi i32 [ %i.ag, %.preheader124.i.i.i ], [ %i.kc, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit103.i.i.i ]
  %indvars.iv.next210.i.i.i = add i64 %indvars.iv209.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next210.i.i.i, %.val4
  br i1 %exitcond.not.i.i, label %"_ZSt10__invoke_rIvRZNK4pbrt5Image20JointBilateralFilterERKNS0_16ImageChannelDescEiPKfS4_RKNS0_18ImageChannelValuesEE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %.preheader124.i.i.i, !llvm.loop !2361

bb.b:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit103.i.i.i, %.lr.ph189.i.i.i
  %indvars.iv206.i.i.i = phi i64 [ 0, %.lr.ph189.i.i.i ], [ %indvars.iv.next207.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit103.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !2379, !nonnull !53, !align !214
  %.sroa.0118.0.insert.insert.i.i.i = add nuw nsw i64 %indvars.iv206.i.i.i, %.sroa.2119.0.insert.ext.i.i.i ; 2 uses
  call void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 %.sroa.0118.0.insert.insert.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 4294967297)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !2380, !nonnull !53, !align !214
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !101 ; 18 uses
  %i.ao = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 7 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  store i64 %i.ap, ptr %4, align 8, !tbaa !139
  store ptr null, ptr %i.i, align 8, !tbaa !160
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.an, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aq = shl i64 %i.an, 2                        ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef %i.aq, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i unwind label %bb.d, !inline_history !17

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i, %bb.c
  %.0.i.i.i.i1418.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %i.av, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.an, ptr %i.j, align 8, !tbaa !161
  store ptr %.0.i.i.i.i1418.i.i.i.i.i, ptr %i.i, align 8, !tbaa !160
  br label %.lr.ph.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit123.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i: ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %.pre216.i.i.i = shl nuw nsw i64 %i.an, 2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre216.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.aq, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.aw = phi i64 [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %i.aq, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ]
  %i.ax = phi ptr [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge.i.i.i ], [ %.0.i.i.i.i1418.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ] ; 3 uses
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ax, null
  %i.ay = select i1 %.not.i9.i.i.i.i.i, ptr %i.l, ptr %i.ax
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ay, i8 0, i64 %.pre-phi.i.i.i, i1 false), !tbaa !79
  br label %.loopexit123.i.i.i

.loopexit123.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  %i.az = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %i.ba = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i ], [ 0, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !2381, !nonnull !53, !align !244
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !38 ; 3 uses
  %i.bd = sub i32 1, %i.bc                        ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.bc
  br i1 %i.be, label %.lr.ph183.preheader.i.i.i, label %._crit_edge184.thread.i.i.i

._crit_edge184.thread.i.i.i:                      ; preds = %.loopexit123.i.i.i
  %7 = icmp ne i64 %i.an, 0
  br label %.loopexit122.i.i.i

.lr.ph183.preheader.i.i.i:                        ; preds = %.loopexit123.i.i.i
  %i.bf = trunc nuw nsw i64 %indvars.iv206.i.i.i to i32
  br label %.lr.ph183.i.i.i

._crit_edge184.i.i.i:                             ; preds = %.loopexit.i.i.i
  %i.bg = fcmp ogt float %.4.i.i.i, 0.000000e+00
  %i.bh = icmp ne i64 %i.an, 0                    ; 2 uses
  %or.cond.i.i.i = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond.i.i.i, label %iter.check, label %.loopexit122.i.i.i

iter.check:                                       ; preds = %._crit_edge184.i.i.i
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !160 ; 5 uses
  %.not.i.i95.i.i.i = icmp eq ptr %i.bi, null
  %i.bj = select i1 %.not.i.i95.i.i.i, ptr %i.l, ptr %i.bi ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check182 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %i.an, 28
  %n.vec = and i64 %i.an, -32                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.4.i.i.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.bl, align 4, !tbaa !79
  %wide.load183 = load <8 x float>, ptr %i.bm, align 4, !tbaa !79
  %wide.load184 = load <8 x float>, ptr %i.bn, align 4, !tbaa !79
  %wide.load185 = load <8 x float>, ptr %i.bo, align 4, !tbaa !79
  %i.bp = fdiv <8 x float> %wide.load, %broadcast.splat
  %i.bq = fdiv <8 x float> %wide.load183, %broadcast.splat
  %i.br = fdiv <8 x float> %wide.load184, %broadcast.splat
  %i.bs = fdiv <8 x float> %wide.load185, %broadcast.splat
  store <8 x float> %i.bp, ptr %i.bl, align 4, !tbaa !79
  store <8 x float> %i.bq, ptr %i.bm, align 4, !tbaa !79
  store <8 x float> %i.br, ptr %i.bn, align 4, !tbaa !79
  store <8 x float> %i.bs, ptr %i.bo, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !2362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %.loopexit122.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec186 = and i64 %i.an, -4                   ; 3 uses
  %broadcast.splatinsert187 = insertelement <4 x float> poison, float %.4.i.i.i, i64 0
  %broadcast.splat188 = shufflevector <4 x float> %broadcast.splatinsert187, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index189 ; 2 uses
  %wide.load190 = load <4 x float>, ptr %i.bu, align 4, !tbaa !79
  %i.bv = fdiv <4 x float> %wide.load190, %broadcast.splat188
  store <4 x float> %i.bv, ptr %i.bu, align 4, !tbaa !79
  %index.next191 = add nuw i64 %index189, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2363

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n192 = icmp eq i64 %i.an, %n.vec186
  br i1 %cmp.n192, label %.loopexit122.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv202.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec186, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.d:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit105.i.i.i

.lr.ph183.i.i.i:                                  ; preds = %.loopexit.i.i.i, %.lr.ph183.preheader.i.i.i
  %i.by = phi ptr [ %i.iw, %.loopexit.i.i.i ], [ %i.az, %.lr.ph183.preheader.i.i.i ] ; 4 uses
  %i.bz = phi i32 [ %i.ix, %.loopexit.i.i.i ], [ %i.bc, %.lr.ph183.preheader.i.i.i ] ; 7 uses
  %.059181.i.i.i = phi i32 [ %i.iy, %.loopexit.i.i.i ], [ %i.bd, %.lr.ph183.preheader.i.i.i ] ; 3 uses
  %.060180.i.i.i = phi float [ %.4.i.i.i, %.loopexit.i.i.i ], [ 0.000000e+00, %.lr.ph183.preheader.i.i.i ] ; 4 uses
  %i.ca = add nsw i32 %.059181.i.i.i, %i.ai       ; 3 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph183.i.i.i
  %i.cc = load i32, ptr %i.n, align 4, !tbaa !73
  %.not.i.i.i = icmp slt i32 %i.ca, %i.cc
  br i1 %.not.i.i.i, label %bb.f, label %.loopexit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.cd = sub i32 1, %i.bz                        ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.bz
  br i1 %i.ce, label %.lr.ph178.i.i.i, label %.loopexit.i.i.i

.lr.ph178.i.i.i:                                  ; preds = %bb.f
  %.sroa.2115.0.insert.ext.i.i.i = zext nneg i32 %i.ca to i64
  %.sroa.2115.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2115.0.insert.ext.i.i.i, 32
  %i.cf = call i32 @llvm.abs.i32(i32 %.059181.i.i.i, i1 true)
  %i.cg = zext nneg i32 %i.cf to i64
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge173.i.i.i, %.lr.ph178.i.i.i
  %i.ch = phi ptr [ %i.by, %.lr.ph178.i.i.i ], [ %i.co, %._crit_edge173.i.i.i ]
  %i.ci = phi i32 [ %i.bz, %.lr.ph178.i.i.i ], [ %i.cp, %._crit_edge173.i.i.i ] ; 2 uses
  %i.cj = phi i32 [ %i.bz, %.lr.ph178.i.i.i ], [ %i.cq, %._crit_edge173.i.i.i ] ; 5 uses
  %.058176.i.i.i = phi i32 [ %i.cd, %.lr.ph178.i.i.i ], [ %i.cr, %._crit_edge173.i.i.i ]
  %.1175.i.i.i = phi float [ %.060180.i.i.i, %.lr.ph178.i.i.i ], [ %.2.lcssa.i.i.i, %._crit_edge173.i.i.i ] ; 2 uses
  %i.ck = sub i32 1, %i.cj                        ; 2 uses
  %i.cl = icmp slt i32 %i.ck, %i.cj
  br i1 %i.cl, label %.lr.ph172.i.i.i, label %._crit_edge173.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %bb.g
  %i.cm = load ptr, ptr %i.i, align 8             ; 4 uses
  %.not.i.i92.i.i.i = icmp eq ptr %i.cm, null
  %i.cn = select i1 %.not.i.i92.i.i.i, ptr %i.l, ptr %i.cm ; 9 uses
  br label %bb.h

._crit_edge173.i.i.i:                             ; preds = %bb.v, %bb.g
  %i.co = phi ptr [ %i.ch, %bb.g ], [ %i.cm, %bb.v ] ; 2 uses
  %i.cp = phi i32 [ %i.ci, %bb.g ], [ %i.ij, %bb.v ] ; 2 uses
  %i.cq = phi i32 [ %i.cj, %bb.g ], [ %i.ik, %bb.v ] ; 2 uses
  %.2.lcssa.i.i.i = phi float [ %.1175.i.i.i, %bb.g ], [ %.3.i.i.i, %bb.v ] ; 2 uses
  %i.cr = add nsw i32 %.058176.i.i.i, 1           ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %i.cq
  br i1 %i.cs, label %bb.g, label %.loopexit.i.i.i, !llvm.loop !2364

bb.h:                                             ; preds = %bb.v, %.lr.ph172.i.i.i
  %i.ct = phi i32 [ %i.ci, %.lr.ph172.i.i.i ], [ %i.ij, %bb.v ] ; 2 uses
  %i.cu = phi i32 [ %i.cj, %.lr.ph172.i.i.i ], [ %i.ik, %bb.v ] ; 2 uses
  %i.cv = phi i32 [ %i.cj, %.lr.ph172.i.i.i ], [ %i.il, %bb.v ] ; 2 uses
  %.057170.i.i.i = phi i32 [ %i.ck, %.lr.ph172.i.i.i ], [ %i.im, %bb.v ] ; 3 uses
  %.2169.i.i.i = phi float [ %.1175.i.i.i, %.lr.ph172.i.i.i ], [ %.3.i.i.i, %bb.v ] ; 3 uses
  %i.cw = add nsw i32 %.057170.i.i.i, %i.bf       ; 3 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !74
  %.not78.i.i.i = icmp slt i32 %i.cw, %i.cy
  br i1 %.not78.i.i.i, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !2379, !nonnull !53, !align !214
  %.sroa.0114.0.insert.ext.i.i.i = zext nneg i32 %i.cw to i64
  %.sroa.0114.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2115.0.insert.shift.i.i.i, %.sroa.0114.0.insert.ext.i.i.i ; 2 uses
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %5, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 %.sroa.0114.0.insert.insert.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 4294967297)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.da = load ptr, ptr %i.o, align 8, !tbaa !2382, !nonnull !53, !align !214
  %i.db = call i32 @llvm.abs.i32(i32 %.057170.i.i.i, i1 true)
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !87
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load float, ptr %i.de, align 4, !tbaa !79
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !2383, !nonnull !53, !align !214
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !87
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.cg
  %i.dj = load float, ptr %i.di, align 4, !tbaa !79
  %i.dk = fmul float %i.df, %i.dj                 ; 2 uses
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !2379, !nonnull !53, !align !214
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !101 ; 2 uses
  %.not193.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not193.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !160 ; 2 uses
  %.not.i.i85.i.i.i = icmp eq ptr %i.do, null
  %i.dp = select i1 %.not.i.i85.i.i.i, ptr %i.r, ptr %i.do
  %i.dq = load ptr, ptr %i.s, align 8, !tbaa !160 ; 2 uses
  %.not.i.i86.i.i.i = icmp eq ptr %i.dq, null
  %i.dr = select i1 %.not.i.i86.i.i.i, ptr %i.t, ptr %i.dq
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !2384, !nonnull !53, !align !214 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !160 ; 2 uses
  %.not.i.i87.i.i.i = icmp eq ptr %i.du, null
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = select i1 %.not.i.i87.i.i.i, ptr %i.dv, ptr %i.du
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit94.i.i.i

bb.m:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.p ] ; 4 uses
  %.056164.i.i.i = phi float [ %i.dk, %.lr.ph.i.i.i ], [ %i.fh, %bb.p ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !79
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !79
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E9_M_invokeERKSt9_Any_dataOlSG_":bb.a
  br i1 %min.epilog.iters.check218, label %vec.epilog.scalar.ph216.preheader, label %vec.epilog.ph219, !prof !156

vec.epilog.ph219:                                 ; preds = %vector.main.loop.iter.check195, %vec.epilog.iter.check217
  %vec.epilog.resume.val214 = phi i64 [ %n.vec198, %vec.epilog.iter.check217 ], [ 0, %vector.main.loop.iter.check195 ]
  %n.vec220 = and i64 %i.fk, -4                   ; 3 uses
  %broadcast.splatinsert221 = insertelement <4 x float> poison, float %.056.lcssa.i.i.i, i64 0
  %broadcast.splat222 = shufflevector <4 x float> %broadcast.splatinsert221, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body223

vec.epilog.vector.body223:                        ; preds = %vec.epilog.vector.body223, %vec.epilog.ph219
  %index224 = phi i64 [ %vec.epilog.resume.val214, %vec.epilog.ph219 ], [ %index.next227, %vec.epilog.vector.body223 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %index224
  %wide.load225 = load <4 x float>, ptr %i.gf, align 4, !tbaa !79, !alias.scope !2385
  %i.gg = fmul <4 x float> %broadcast.splat222, %wide.load225
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index224 ; 2 uses
  %wide.load226 = load <4 x float>, ptr %i.gh, align 4, !tbaa !79, !alias.scope !2386, !noalias !2385
  %i.gi = fadd <4 x float> %i.gg, %wide.load226
  store <4 x float> %i.gi, ptr %i.gh, align 4, !tbaa !79, !alias.scope !2386, !noalias !2385
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.gj, label %vec.epilog.middle.block228, label %vec.epilog.vector.body223, !llvm.loop !2370

vec.epilog.middle.block228:                       ; preds = %vec.epilog.vector.body223
  %cmp.n229 = icmp eq i64 %i.fk, %n.vec220
  br i1 %cmp.n229, label %._crit_edge168.i.i.i, label %vec.epilog.scalar.ph216.preheader

vec.epilog.scalar.ph216.preheader:                ; preds = %iter.check215, %vector.memcheck, %vec.epilog.iter.check217, %vec.epilog.middle.block228
  %indvars.iv198.i.i.i.ph = phi i64 [ 0, %iter.check215 ], [ 0, %vector.memcheck ], [ %n.vec198, %vec.epilog.iter.check217 ], [ %n.vec220, %vec.epilog.middle.block228 ] ; 3 uses
  %xtraiter = and i64 %i.fk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph216.prol.loopexit, label %vec.epilog.scalar.ph216.prol

vec.epilog.scalar.ph216.prol:                     ; preds = %vec.epilog.scalar.ph216.preheader, %vec.epilog.scalar.ph216.prol
  %indvars.iv198.i.i.i.prol = phi i64 [ %indvars.iv.next199.i.i.i.prol, %vec.epilog.scalar.ph216.prol ], [ %indvars.iv198.i.i.i.ph, %vec.epilog.scalar.ph216.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph216.prol ], [ 0, %vec.epilog.scalar.ph216.preheader ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv198.i.i.i.prol
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !79
  %i.gm = fmul float %.056.lcssa.i.i.i, %i.gl
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv198.i.i.i.prol ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !79
  %i.gp = fadd float %i.gm, %i.go
  store float %i.gp, ptr %i.gn, align 4, !tbaa !79
  %indvars.iv.next199.i.i.i.prol = add nuw nsw i64 %indvars.iv198.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph216.prol.loopexit, label %vec.epilog.scalar.ph216.prol, !llvm.loop !2371

vec.epilog.scalar.ph216.prol.loopexit:            ; preds = %vec.epilog.scalar.ph216.prol, %vec.epilog.scalar.ph216.preheader
  %indvars.iv198.i.i.i.unr = phi i64 [ %indvars.iv198.i.i.i.ph, %vec.epilog.scalar.ph216.preheader ], [ %indvars.iv.next199.i.i.i.prol, %vec.epilog.scalar.ph216.prol ]
  %i.gq = sub i64 %indvars.iv198.i.i.i.ph, %i.fk
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge168.i.i.i, label %vec.epilog.scalar.ph216

._crit_edge168.i.i.i:                             ; preds = %vec.epilog.scalar.ph216.prol.loopexit, %vec.epilog.scalar.ph216, %middle.block212, %vec.epilog.middle.block228, %.preheader.i.i.i
  store i64 0, ptr %i.v, align 8, !tbaa !162
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge168.i.i.i
  %i.gs = load i64, ptr %i.y, align 8, !tbaa !161
  %i.gt = shl i64 %i.gs, 2
  %i.gu = load ptr, ptr %6, align 8, !tbaa !118   ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !120
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.gt, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.r, !inline_history !1

bb.r:                                             ; preds = %bb.q
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #37
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.q, %._crit_edge168.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i64 0, ptr %i.z, align 8, !tbaa !162
  %i.ha = load ptr, ptr %i.s, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i89.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i89.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit90.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i
  %i.hb = load i64, ptr %i.aa, align 8, !tbaa !161
  %i.hc = shl i64 %i.hb, 2
  %i.hd = load ptr, ptr %5, align 8, !tbaa !118   ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !120
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  invoke void %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef nonnull %i.ha, i64 noundef %i.hc, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit90.i.i.i unwind label %bb.t, !inline_history !1

bb.t:                                             ; preds = %bb.s
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #37
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit90.i.i.i: ; preds = %bb.s, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %.pre212.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !2381
  %.pre213.i.i.i = load i32, ptr %.pre212.i.i.i, align 4, !tbaa !38 ; 3 uses
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i64 0, ptr %i.z, align 8, !tbaa !162
  %i.hk = load ptr, ptr %i.s, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i93.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i93.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit94.i.i.i, label %bb.w

vec.epilog.scalar.ph216:                          ; preds = %vec.epilog.scalar.ph216.prol.loopexit, %vec.epilog.scalar.ph216
  %indvars.iv198.i.i.i = phi i64 [ %indvars.iv.next199.i.i.i.3, %vec.epilog.scalar.ph216 ], [ %indvars.iv198.i.i.i.unr, %vec.epilog.scalar.ph216.prol.loopexit ] ; 6 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv198.i.i.i
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !79
  %i.hn = fmul float %.056.lcssa.i.i.i, %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv198.i.i.i ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !79
  %i.hq = fadd float %i.hn, %i.hp
  store float %i.hq, ptr %i.ho, align 4, !tbaa !79
  %indvars.iv.next199.i.i.i = add nuw nsw i64 %indvars.iv198.i.i.i, 1 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next199.i.i.i
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !79
  %i.ht = fmul float %.056.lcssa.i.i.i, %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next199.i.i.i ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !79
  %i.hw = fadd float %i.ht, %i.hv
  store float %i.hw, ptr %i.hu, align 4, !tbaa !79
  %indvars.iv.next199.i.i.i.1 = add nuw nsw i64 %indvars.iv198.i.i.i, 2 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next199.i.i.i.1
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !79
  %i.hz = fmul float %.056.lcssa.i.i.i, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next199.i.i.i.1 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !79
  %i.ic = fadd float %i.hz, %i.ib
  store float %i.ic, ptr %i.ia, align 4, !tbaa !79
  %indvars.iv.next199.i.i.i.2 = add nuw nsw i64 %indvars.iv198.i.i.i, 3 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next199.i.i.i.2
  %i.ie = load float, ptr %i.id, align 4, !tbaa !79
  %i.if = fmul float %.056.lcssa.i.i.i, %i.ie
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next199.i.i.i.2 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !79
  %i.ii = fadd float %i.if, %i.ih
  store float %i.ii, ptr %i.ig, align 4, !tbaa !79
  %indvars.iv.next199.i.i.i.3 = add nuw nsw i64 %indvars.iv198.i.i.i, 4 ; 2 uses
  %exitcond201.not.i.i.i.3 = icmp eq i64 %indvars.iv.next199.i.i.i.3, %i.fk
  br i1 %exitcond201.not.i.i.i.3, label %._crit_edge168.i.i.i, label %vec.epilog.scalar.ph216, !llvm.loop !2372

bb.v:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit90.i.i.i, %bb.i, %bb.h
  %i.ij = phi i32 [ %i.ct, %bb.h ], [ %i.ct, %bb.i ], [ %.pre213.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit90.i.i.i ] ; 2 uses
  %i.ik = phi i32 [ %i.cu, %bb.h ], [ %i.cu, %bb.i ], [ %.pre213.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit90.i.i.i ] ; 2 uses
  %i.il = phi i32 [ %i.cv, %bb.h ], [ %i.cv, %bb.i ], [ %.pre213.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit90.i.i.i ] ; 2 uses
  %.3.i.i.i = phi float [ %.2169.i.i.i, %bb.h ], [ %.2169.i.i.i, %bb.i ], [ %i.fi, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit90.i.i.i ] ; 2 uses
  %i.im = add nsw i32 %.057170.i.i.i, 1           ; 2 uses
  %i.in = icmp slt i32 %i.im, %i.il
  br i1 %i.in, label %bb.h, label %._crit_edge173.i.i.i, !llvm.loop !2373

bb.w:                                             ; preds = %bb.u
  %i.io = load i64, ptr %i.aa, align 8, !tbaa !161
  %i.ip = shl i64 %i.io, 2
  %i.iq = load ptr, ptr %5, align 8, !tbaa !118   ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !120
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  invoke void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull %i.hk, i64 noundef %i.ip, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit94.i.i.i unwind label %bb.x, !inline_history !1

bb.x:                                             ; preds = %bb.w
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #37
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit94.i.i.i: ; preds = %bb.w, %bb.u, %bb.l
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.l ], [ %i.hj, %bb.u ], [ %i.hj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ae

.loopexit.i.i.i:                                  ; preds = %._crit_edge173.i.i.i, %bb.f, %bb.e, %.lr.ph183.i.i.i
  %i.iw = phi ptr [ %i.by, %.lr.ph183.i.i.i ], [ %i.by, %bb.e ], [ %i.by, %bb.f ], [ %i.co, %._crit_edge173.i.i.i ] ; 2 uses
  %i.ix = phi i32 [ %i.bz, %.lr.ph183.i.i.i ], [ %i.bz, %bb.e ], [ %i.bz, %bb.f ], [ %i.cp, %._crit_edge173.i.i.i ] ; 2 uses
  %.4.i.i.i = phi float [ %.060180.i.i.i, %.lr.ph183.i.i.i ], [ %.060180.i.i.i, %bb.e ], [ %.060180.i.i.i, %bb.f ], [ %.2.lcssa.i.i.i, %._crit_edge173.i.i.i ] ; 5 uses
  %i.iy = add nsw i32 %.059181.i.i.i, 1           ; 2 uses
  %i.iz = icmp slt i32 %i.iy, %i.ix
  br i1 %i.iz, label %.lr.ph183.i.i.i, label %._crit_edge184.i.i.i, !llvm.loop !2374

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv202.i.i.i = phi i64 [ %indvars.iv.next203.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv202.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv202.i.i.i ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !79
  %i.jc = fdiv float %i.jb, %.4.i.i.i
  store float %i.jc, ptr %i.ja, align 4, !tbaa !79
  %indvars.iv.next203.i.i.i = add nuw nsw i64 %indvars.iv202.i.i.i, 1 ; 2 uses
  %exitcond205.not.i.i.i = icmp eq i64 %indvars.iv.next203.i.i.i, %i.an
  br i1 %exitcond205.not.i.i.i, label %.loopexit122.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !2375

.loopexit122.i.i.i:                               ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge184.i.i.i, %._crit_edge184.thread.i.i.i
  %8 = phi i1 [ %7, %._crit_edge184.thread.i.i.i ], [ %i.bh, %._crit_edge184.i.i.i ], [ true, %middle.block ], [ true, %vec.epilog.middle.block ], [ true, %vec.epilog.scalar.ph ]
  %i.jd = phi ptr [ %i.az, %._crit_edge184.thread.i.i.i ], [ %i.iw, %._crit_edge184.i.i.i ], [ %i.bi, %middle.block ], [ %i.bi, %vec.epilog.middle.block ], [ %i.bi, %vec.epilog.scalar.ph ]
  %i.je = load ptr, ptr %i.ab, align 8, !tbaa !2387, !nonnull !53, !align !214 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.an, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !75 ; 2 uses
  %i.jh = trunc i64 %i.jg to i32
  store i32 %i.jh, ptr %i.b, align 4, !tbaa !38
  %sext.i.i.i.i = shl i64 %i.jg, 32
  %i.ji = ashr exact i64 %sext.i.i.i.i, 32
  %.not.i.i.i.i = icmp ugt i64 %i.an, %i.ji
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit122.i.i.i
  invoke void @_ZN4pbrt8LogFatalIJRA14_KcRA12_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 785, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #34
          to label %.noexc98.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc98.i.i.i:                                   ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %.loopexit122.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.pre215.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !160 ; 5 uses
  br i1 %8, label %.lr.ph.preheader.i.i.i.i, label %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.z
  %.not.i.i96.i.i.i = icmp eq ptr %.pre215.i.i.i, null
  %i.jj = select i1 %.not.i.i96.i.i.i, ptr %i.l, ptr %.pre215.i.i.i ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.an
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc99.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.014.i.i.i.i = phi i32 [ %i.jn, %.noexc99.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0913.i.i.i.i = phi ptr [ %i.jm, %.noexc99.i.i.i ], [ %i.jj, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.jl = load float, ptr %.0913.i.i.i.i, align 4, !tbaa !79
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %i.je, i64 %.sroa.0118.0.insert.insert.i.i.i, i32 noundef %.014.i.i.i.i, float noundef %i.jl)
          to label %.noexc99.i.i.i unwind label %.loopexit120.i.i.i

.noexc99.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 4 ; 2 uses
  %i.jn = add nuw nsw i32 %.014.i.i.i.i, 1
  %.not10.i.i.i.i = icmp eq ptr %i.jm, %i.jk
  br i1 %.not10.i.i.i.i, label %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i: ; preds = %.noexc99.i.i.i, %bb.z
  %.not.i.i.i.i100.i.i.i = icmp eq ptr %.pre215.i.i.i, null
  br i1 %.not.i.i.i.i100.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i
  %i.jo = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8
  invoke void %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %.pre215.i.i.i, i64 noundef %i.ba, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101.i.i.i unwind label %bb.ab, !inline_history !1

bb.ab:                                            ; preds = %bb.aa
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #37
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101.i.i.i: ; preds = %bb.aa, %_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store i64 0, ptr %i.ac, align 8, !tbaa !162
  %i.jt = load ptr, ptr %i.q, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i102.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i102.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit103.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101.i.i.i
  %i.ju = load i64, ptr %i.ad, align 8, !tbaa !161
  %i.jv = shl i64 %i.ju, 2
  %i.jw = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !120
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  invoke void %i.jz(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull %i.jt, i64 noundef %i.jv, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit103.i.i.i unwind label %bb.ad, !inline_history !1

bb.ad:                                            ; preds = %bb.ac
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #37
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit103.i.i.i: ; preds = %bb.ac, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit101.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %indvars.iv.next207.i.i.i = add nuw nsw i64 %indvars.iv206.i.i.i, 1 ; 2 uses
  %i.kc = load i32, ptr %i.f, align 4, !tbaa !74  ; 2 uses
  %i.kd = sext i32 %i.kc to i64
  %i.ke = icmp slt i64 %indvars.iv.next207.i.i.i, %i.kd
  br i1 %i.ke, label %bb.b, label %._crit_edge190.i.i.i, !llvm.loop !2376

.loopexit120.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp.i.i.i:                         ; preds = %bb.y
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit120.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit94.i.i.i
  %i.kf = phi ptr [ %i.cm, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit94.i.i.i ], [ %.pre215.i.i.i, %.loopexit120.i.i.i ], [ %i.jd, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit94.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit120.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !162
  %.not.i.i.i.i104.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i104.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit105.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kg = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8
  invoke void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.kf, i64 noundef %i.ba, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit105.i.i.i unwind label %bb.ag, !inline_history !1

bb.ag:                                            ; preds = %bb.af
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #37
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit105.i.i.i: ; preds = %bb.af, %bb.ae, %bb.d
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bx, %bb.d ], [ %.pn.pn.pn.i.i.i, %bb.ae ], [ %.pn.pn.pn.i.i.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store i64 0, ptr %i.ac, align 8, !tbaa !162
  %i.kl = load ptr, ptr %i.q, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i106.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i106.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit107.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit105.i.i.i
  %i.km = load i64, ptr %i.ad, align 8, !tbaa !161
  %i.kn = shl i64 %i.km, 2
  %i.ko = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !120
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull %i.kl, i64 noundef %i.kn, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit107.i.i.i unwind label %bb.ai, !inline_history !1

bb.ai:                                            ; preds = %bb.ah
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #37
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit107.i.i.i: ; preds = %bb.ah, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit105.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZNK4pbrt5Image20JointBilateralFilterERKNS0_16ImageChannelDescEiPKfS4_RKNS0_18ImageChannelValuesEE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %._crit_edge190.i.i.i, %bb.a, %.preheader124.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK4pbrt5Image20JointBilateralFilterERKNS_16ImageChannelDescEiPKfS3_RKNS_18ImageChannelValuesEE3$_0", ptr %0, align 8, !tbaa !216
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %.val, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !2388
  store ptr %i.a, ptr %0, align 8, !tbaa !111
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #35
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4pbrt5Image20JointBilateralFilterERKNS1_16ImageChannelDescEiPKfS5_RKNS1_18ImageChannelValuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRiEEEvPS7_PKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 42, i64 noundef 0) #32
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 115, i64 noundef 0) #32
  %.not17 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 100, i64 noundef 0) #32
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v
end_hunk_1
