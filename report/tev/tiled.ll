Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tiled?download=true
inline.NumInlined: 3664
inline.NumDeleted: 2093
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN11TiledHeader22read_full_offset_tableERKNSt3__110shared_ptrI8HeifFileEEjPK20heif_security_limits:bb.a
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6ResultImE5errorEv.exit
  %i.g = trunc i64 %i.c to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.sroa.phi, i64 24, i1 false), !tbaa.struct !38
  br label %_ZN5ErrorC2ERKS_.exit

bb.c:                                             ; preds = %_ZNK6ResultImE5errorEv.exit
  %i.h = load ptr, ptr %.0.i.sroa.phi10, align 8, !tbaa !37
  %i.i = load i64, ptr %.0.i.sroa.phi12, align 8, !tbaa !37
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, i64 noundef %i.i)
          to label %._ZN5ErrorC2ERKS_.exit_crit_edge unwind label %bb.d

._ZN5ErrorC2ERKS_.exit_crit_edge:                 ; preds = %bb.c
  %.pre = load i32, ptr %0, align 8, !tbaa !99
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %._ZN5ErrorC2ERKS_.exit_crit_edge, %bb.b
  %i.j = phi i32 [ %.pre, %._ZN5ErrorC2ERKS_.exit_crit_edge ], [ %i.g, %bb.b ]
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %.critedge

bb.d:                                             ; preds = %.invoke, %bb.c, %_ZN6ResultImEdeEv.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6ResultImED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %_ZN5ErrorC2ERKS_.exit
  %i.l = load i8, ptr %i.d, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %_ZN5ErrorD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = load i64, ptr %i.d, align 8
  %i.q = and i64 %i.p, -2
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.q) #27
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.e, %bb.f
  %i.r = load i32, ptr %i.a, align 8, !tbaa !40
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN6ResultImEdeEv.exit, label %.invoke

.invoke:                                          ; preds = %bb.a, %_ZN5ErrorD2Ev.exit
  invoke void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() #28
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

_ZN6ResultImEdeEv.exit:                           ; preds = %_ZN5ErrorD2Ev.exit
  %i.t = load i64, ptr %6, align 8, !tbaa !103
  invoke void @_ZN11TiledHeader23read_offset_table_rangeERKNSt3__110shared_ptrI8HeifFileEEjmm(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, i64 noundef 0, i64 noundef %i.t)
          to label %.critedge unwind label %bb.d

.critedge:                                        ; preds = %_ZN5ErrorC2ERKS_.exit, %_ZN6ResultImEdeEv.exit
  %i.u = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %_ZN6ResultImED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJm5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRS9_EEEDcOSA_DpOT0_.__fmatrix, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !112
  invoke void %i.y(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJm5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRS9_EEEDcOSA_DpOT0_.exit.i.i.i.i unwind label %bb.h, !inline_history !0

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJm5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRS9_EEEDcOSA_DpOT0_.exit.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN6ResultImED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

_ZN6ResultImED2Ev.exit:                           ; preds = %.critedge, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJm5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRS9_EEEDcOSA_DpOT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11TiledHeader23read_offset_table_rangeERKNSt3__110shared_ptrI8HeifFileEEjmm(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.thread.i.i:
  %6 = alloca %class.Error, align 8               ; 12 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__1::vector", align 8  ; 18 uses
  %9 = alloca %class.Error, align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !37
  store i64 33, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 27, ptr %i.c, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.21, i64 27, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  store i8 0, ptr %i.d, align 1, !tbaa !37
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %.thread.i.i
  %i.e = load i8, ptr %7, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = load i64, ptr %7, align 8
  %i.i = and i64 %i.h, -2
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.i) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.j = sub i64 %5, %4                           ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !114
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !115
  %i.p = zext i8 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, %i.m               ; 2 uses
  %i.r = mul i64 %i.q, %i.j
  %i.s = lshr i64 %i.r, 3                         ; 2 uses
  %i.t = mul i64 %i.q, %4
  %i.u = lshr i64 %i.t, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.v = load ptr, ptr %2, align 8, !tbaa !118
  invoke void @_ZNK8HeifFile21append_data_from_ilocEjRNSt3__16vectorIhNS0_9allocatorIhEEEEmm(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %9, ptr noundef nonnull align 8 dereferenceable(404) %i.v, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.u, i64 noundef %i.s)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.w = load i32, ptr %9, align 8, !tbaa !99
  %.not44 = icmp eq i32 %i.w, 0
  br i1 %.not44, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %9, align 8
  store i64 %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  br label %_ZN5ErrorC2ERKS_.exit

bb.e:                                             ; preds = %.thread.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i8, ptr %7, align 8
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.ae = load i64, ptr %7, align 8
  %i.af = and i64 %i.ae, -2
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.af) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN5ErrorD2Ev.exit41

bb.g:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit38

bb.h:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.ak = load ptr, ptr %8, align 8, !tbaa !120
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, %i.s
  br i1 %i.ao, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ap = icmp ult i64 %4, %5
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aq = load i8, ptr %i.k, align 8, !tbaa !114  ; 4 uses
  %i.ar = lshr i8 %i.aq, 3                        ; 4 uses
  %i.as = zext nneg i8 %i.ar to i32               ; 7 uses
  %.not1.i = icmp eq i8 %i.ar, 0                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !109 ; 14 uses
  %i.av = load i8, ptr %i.n, align 1, !tbaa !115  ; 4 uses
  %.not = icmp eq i8 %i.av, 0
  %i.aw = lshr i8 %i.av, 3                        ; 3 uses
  %i.ax = zext nneg i8 %i.aw to i32               ; 5 uses
  %.not1.i28 = icmp eq i8 %i.aw, 0                ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not1.i, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.preheader, label %.lr.ph.i.preheader.us.preheader

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter164 = and i64 %i.j, 3                  ; 2 uses
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol.loopexit, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol: ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.preheader, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol
  %.049.us.us.prol = phi i64 [ %i.az, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol ], [ %4, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.preheader ] ; 2 uses
  %prol.iter166 = phi i64 [ %prol.iter166.next, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol ], [ 0, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.preheader ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us.us.prol
  store i64 0, ptr %i.ay, align 8, !tbaa !111
  %i.az = add nuw i64 %.049.us.us.prol, 1         ; 2 uses
  %prol.iter166.next = add i64 %prol.iter166, 1   ; 2 uses
  %prol.iter166.cmp.not = icmp eq i64 %prol.iter166.next, %xtraiter164
  br i1 %prol.iter166.cmp.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol.loopexit, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol, !llvm.loop !403

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol.loopexit: ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.preheader
  %.049.us.us.unr = phi i64 [ %4, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.preheader ], [ %i.az, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol ]
  %i.ba = sub i64 %4, %5
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %i.bc = zext nneg i8 %i.ar to i64
  %xtraiter155 = and i32 %i.as, 3                 ; 3 uses
  %i.bd = icmp ult i8 %i.aq, 32
  %unroll_iter162 = and i32 %i.as, 28
  %lcmp.mod159.not = icmp eq i32 %xtraiter155, 0
  %lcmp.mod161 = icmp ne i32 %xtraiter155, 0
  br label %.lr.ph.i.preheader.us

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us: ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol.loopexit, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us
  %.049.us.us = phi i64 [ %i.bl, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us ], [ %.049.us.us.unr, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol.loopexit ] ; 5 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us.us
  store i64 0, ptr %i.be, align 8, !tbaa !111
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 0, ptr %i.bg, align 8, !tbaa !111
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i64 0, ptr %i.bi, align 8, !tbaa !111
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store i64 0, ptr %i.bk, align 8, !tbaa !111
  %i.bl = add nuw i64 %.049.us.us, 4              ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %i.bl, %5
  br i1 %exitcond89.not.3, label %._crit_edge, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us, !llvm.loop !404

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us
  %.049.us = phi i64 [ %i.cu, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us ], [ %4, %.lr.ph.i.preheader.us.preheader ] ; 2 uses
  %.04348.us = phi i64 [ %i.cs, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ] ; 3 uses
  %.val24.us = load ptr, ptr %8, align 8          ; 5 uses
  br i1 %i.bd, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.03.i.us = phi i64 [ %i.ck, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.bm = phi i64 [ %i.cf, %.lr.ph.i.us ], [ %.04348.us, %.lr.ph.i.preheader.us ] ; 5 uses
  %niter163 = phi i32 [ %niter163.next.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.val24.us, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl i64 %.03.i.us, 16
  %i.br = shl nuw nsw i64 %i.bp, 8
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = getelementptr i8, ptr %.val24.us, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37
  %i.bw = zext i8 %i.bv to i64
  %i.bx = or disjoint i64 %i.bs, %i.bw
  %i.by = getelementptr i8, ptr %.val24.us, i64 %i.bm
  %i.bz = getelementptr i8, ptr %i.by, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !37
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl i64 %i.bx, 16
  %i.cd = shl nuw nsw i64 %i.cb, 8
  %i.ce = or disjoint i64 %i.cc, %i.cd
  %i.cf = add i64 %i.bm, 4                        ; 2 uses
  %i.cg = getelementptr i8, ptr %.val24.us, i64 %i.bm
  %i.ch = getelementptr i8, ptr %i.cg, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !37
  %i.cj = zext i8 %i.ci to i64
  %i.ck = or disjoint i64 %i.ce, %i.cj            ; 3 uses
  %niter163.next.3 = add i32 %niter163, 4         ; 2 uses
  %niter163.ncmp.3 = icmp eq i32 %niter163.next.3, %unroll_iter162
  br i1 %niter163.ncmp.3, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !405

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod159.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us.unr-lcssa, %.lr.ph.i.preheader.us
  %.03.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us ], [ %i.ck, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us.unr-lcssa ]
  %.epil.init158 = phi i64 [ %.04348.us, %.lr.ph.i.preheader.us ], [ %i.cf, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %.03.i.us.epil = phi i64 [ %i.cr, %.lr.ph.i.us.epil ], [ %.03.i.us.epil.init, %.lr.ph.i.us.epil.preheader ]
  %i.cl = phi i64 [ %i.cn, %.lr.ph.i.us.epil ], [ %.epil.init158, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %epil.iter156 = phi i32 [ %epil.iter156.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.cm = shl i64 %.03.i.us.epil, 8
  %i.cn = add i64 %i.cl, 1
  %i.co = getelementptr inbounds nuw i8, ptr %.val24.us, i64 %i.cl
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !37
  %i.cq = zext i8 %i.cp to i64
  %i.cr = or disjoint i64 %i.cm, %i.cq            ; 2 uses
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us, label %.lr.ph.i.us.epil, !llvm.loop !406

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us: ; preds = %.lr.ph.i.us.epil, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us.unr-lcssa
  %.lcssa = phi i64 [ %i.ck, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us.unr-lcssa ], [ %i.cr, %.lr.ph.i.us.epil ]
  %i.cs = add i64 %.04348.us, %i.bc
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us
  store i64 %.lcssa, ptr %i.ct, align 8, !tbaa !111
  %i.cu = add nuw i64 %.049.us, 1                 ; 2 uses
  %exitcond88.not = icmp eq i64 %i.cu, %5
  br i1 %exitcond88.not, label %._crit_edge, label %.lr.ph.i.preheader.us, !llvm.loop !404

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not1.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not1.i28, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.preheader, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.preheader

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.preheader: ; preds = %.lr.ph.split.split.us
  %xtraiter153 = and i64 %i.j, 3                  ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol.loopexit, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol: ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.preheader, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol
  %.049.us50.us.prol = phi i64 [ %i.cx, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol ], [ %4, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol ], [ 0, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.preheader ]
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us50.us.prol ; 2 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !111
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 0, ptr %i.cw, align 8, !tbaa !122
  %i.cx = add nuw i64 %.049.us50.us.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter153
  br i1 %prol.iter.cmp.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol.loopexit, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol, !llvm.loop !407

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol.loopexit: ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.preheader
  %.049.us50.us.unr = phi i64 [ %4, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.preheader ], [ %i.cx, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol ]
  %i.cy = sub i64 %4, %5
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %._crit_edge, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.preheader: ; preds = %.lr.ph.split.split.us
  %i.da = zext nneg i8 %i.aw to i64
  %xtraiter144 = and i32 %i.ax, 3                 ; 3 uses
  %i.db = icmp ult i8 %i.av, 32
  %unroll_iter151 = and i32 %i.ax, 28
  %lcmp.mod148.not = icmp eq i32 %xtraiter144, 0
  %lcmp.mod150 = icmp ne i32 %xtraiter144, 0
  br label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us: ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol.loopexit, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us
  %.049.us50.us = phi i64 [ %i.dn, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us ], [ %.049.us50.us.unr, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol.loopexit ] ; 5 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us50.us ; 2 uses
  store i64 0, ptr %i.dc, align 8, !tbaa !111
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 0, ptr %i.dd, align 8, !tbaa !122
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us50.us ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 0, ptr %i.df, align 8, !tbaa !111
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i32 0, ptr %i.dg, align 8, !tbaa !122
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us50.us ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i64 0, ptr %i.di, align 8, !tbaa !111
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i32 0, ptr %i.dj, align 8, !tbaa !122
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us50.us ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store i64 0, ptr %i.dl, align 8, !tbaa !111
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  store i32 0, ptr %i.dm, align 8, !tbaa !122
  %i.dn = add nuw i64 %.049.us50.us, 4            ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %i.dn, %5
  br i1 %exitcond87.not.3, label %._crit_edge, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us, !llvm.loop !404

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53: ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.preheader, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us
  %.049.us50 = phi i64 [ %i.ev, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us ], [ %4, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.preheader ] ; 2 uses
  %.04348.us51 = phi i64 [ %i.et, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us ], [ 0, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.preheader ] ; 3 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us50 ; 2 uses
  store i64 0, ptr %i.do, align 8, !tbaa !111
  %.val.us = load ptr, ptr %8, align 8            ; 5 uses
  br i1 %i.db, label %.lr.ph.i31.us.epil.preheader, label %.lr.ph.i31.us

.lr.ph.i31.us:                                    ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53, %.lr.ph.i31.us
  %i.dp = phi i64 [ %i.dq, %.lr.ph.i31.us ], [ %.04348.us51, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53 ] ; 5 uses
  %niter152 = phi i32 [ %niter152.next.3, %.lr.ph.i31.us ], [ 0, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53 ]
  %i.dq = add i64 %i.dp, 4                        ; 2 uses
  %niter152.next.3 = add i32 %niter152, 4         ; 2 uses
  %niter152.ncmp.3 = icmp eq i32 %niter152.next.3, %unroll_iter151
  br i1 %niter152.ncmp.3, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us.unr-lcssa, label %.lr.ph.i31.us, !llvm.loop !405

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i31.us
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.dp
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !37
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 16
  %i.dv = getelementptr i8, ptr %.val.us, i64 %i.dp
  %i.dw = getelementptr i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !37
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = or disjoint i32 %i.du, %i.dz
  %i.eb = getelementptr i8, ptr %.val.us, i64 %i.dp
  %i.ec = getelementptr i8, ptr %i.eb, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !37
  %i.ee = zext i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.ea, %i.ee
  %i.eg = shl nuw i32 %i.ef, 8
  %i.eh = getelementptr i8, ptr %.val.us, i64 %i.dp
  %i.ei = getelementptr i8, ptr %i.eh, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !37
  %i.ek = zext i8 %i.ej to i32
  %i.el = or disjoint i32 %i.eg, %i.ek            ; 2 uses
  br i1 %lcmp.mod148.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us, label %.lr.ph.i31.us.epil.preheader

.lr.ph.i31.us.epil.preheader:                     ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us.unr-lcssa, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53
  %.03.i32.us.epil.init = phi i32 [ 0, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53 ], [ %i.el, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us.unr-lcssa ]
  %.epil.init147 = phi i64 [ %.04348.us51, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53 ], [ %i.dq, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod150)
  br label %.lr.ph.i31.us.epil

.lr.ph.i31.us.epil:                               ; preds = %.lr.ph.i31.us.epil, %.lr.ph.i31.us.epil.preheader
  %.03.i32.us.epil = phi i32 [ %i.es, %.lr.ph.i31.us.epil ], [ %.03.i32.us.epil.init, %.lr.ph.i31.us.epil.preheader ]
  %i.em = phi i64 [ %i.eo, %.lr.ph.i31.us.epil ], [ %.epil.init147, %.lr.ph.i31.us.epil.preheader ] ; 2 uses
  %epil.iter145 = phi i32 [ %epil.iter145.next, %.lr.ph.i31.us.epil ], [ 0, %.lr.ph.i31.us.epil.preheader ]
  %i.en = shl i32 %.03.i32.us.epil, 8
  %i.eo = add i64 %i.em, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.em
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !37
  %i.er = zext i8 %i.eq to i32
  %i.es = or disjoint i32 %i.en, %i.er            ; 2 uses
  %epil.iter145.next = add i32 %epil.iter145, 1   ; 2 uses
  %epil.iter145.cmp.not = icmp eq i32 %epil.iter145.next, %xtraiter144
  br i1 %epil.iter145.cmp.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us, label %.lr.ph.i31.us.epil, !llvm.loop !408

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us: ; preds = %.lr.ph.i31.us.epil, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us.unr-lcssa
  %.lcssa118 = phi i32 [ %i.el, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us.unr-lcssa ], [ %i.es, %.lr.ph.i31.us.epil ]
  %i.et = add i64 %.04348.us51, %i.da
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 %.lcssa118, ptr %i.eu, align 8, !tbaa !122
  %i.ev = add nuw i64 %.049.us50, 1               ; 2 uses
  %exitcond86.not = icmp eq i64 %i.ev, %5
  br i1 %exitcond86.not, label %._crit_edge, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53, !llvm.loop !404

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %10 = zext nneg i8 %i.ar to i64                 ; 2 uses
  br i1 %.not1.i28, label %.lr.ph.i.preheader.preheader.a, label %.lr.ph.i.preheader.us56.preheader

.lr.ph.i.preheader.preheader.a:                   ; preds = %.lr.ph.split.split
  %xtraiter.a = and i32 %i.as, 3                  ; 3 uses
  %i.ew = icmp ult i8 %i.aq, 32
  %unroll_iter.a = and i32 %i.as, 28
  %lcmp.mod130.not.a = icmp eq i32 %xtraiter.a, 0
  %lcmp.mod132.a = icmp ne i32 %xtraiter.a, 0
  br label %.lr.ph.i.preheader.us56

.lr.ph.i.preheader.us56.preheader:                ; preds = %.lr.ph.split.split
  %11 = add nuw nsw i32 %i.as, %i.ax
  %i.ex = zext nneg i32 %11 to i64
  %xtraiter135 = and i32 %i.as, 3                 ; 3 uses
  %i.ey = icmp ult i8 %i.aq, 32
  %unroll_iter142 = and i32 %i.as, 28
  %lcmp.mod.not = icmp eq i32 %xtraiter135, 0
  %lcmp.mod125 = icmp ne i32 %xtraiter135, 0
  %xtraiter126 = and i32 %i.ax, 3                 ; 3 uses
  %12 = icmp ult i8 %i.av, 32
  %unroll_iter133 = and i32 %i.ax, 28
  %lcmp.mod139.not = icmp eq i32 %xtraiter126, 0
  %lcmp.mod141 = icmp ne i32 %xtraiter126, 0
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader.us56:                          ; preds = %.lr.ph.i.preheader.preheader.a, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64
  %.049.us57 = phi i64 [ %i.gi, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64 ], [ %4, %.lr.ph.i.preheader.preheader.a ] ; 2 uses
  %.04348.us58 = phi i64 [ %i.gf, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64 ], [ 0, %.lr.ph.i.preheader.preheader.a ] ; 3 uses
  %.val24.us59 = load ptr, ptr %8, align 8        ; 5 uses
  br i1 %i.ew, label %.lr.ph.i.us60.epil.preheader, label %.lr.ph.i.us60

.lr.ph.i.us60:                                    ; preds = %.lr.ph.i.preheader.us56, %.lr.ph.i.us60
  %.03.i.us61 = phi i64 [ %i.fx, %.lr.ph.i.us60 ], [ 0, %.lr.ph.i.preheader.us56 ]
  %i.ez = phi i64 [ %i.fs, %.lr.ph.i.us60 ], [ %.04348.us58, %.lr.ph.i.preheader.us56 ] ; 5 uses
  %niter143 = phi i32 [ %niter143.next.3, %.lr.ph.i.us60 ], [ 0, %.lr.ph.i.preheader.us56 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.val24.us59, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !37
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl i64 %.03.i.us61, 16
  %i.fe = shl nuw nsw i64 %i.fc, 8
  %i.ff = or disjoint i64 %i.fd, %i.fe
  %i.fg = getelementptr i8, ptr %.val24.us59, i64 %i.ez
  %i.fh = getelementptr i8, ptr %i.fg, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !37
  %i.fj = zext i8 %i.fi to i64
  %i.fk = or disjoint i64 %i.ff, %i.fj
  %i.fl = getelementptr i8, ptr %.val24.us59, i64 %i.ez
  %i.fm = getelementptr i8, ptr %i.fl, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !37
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl i64 %i.fk, 16
  %i.fq = shl nuw nsw i64 %i.fo, 8
  %i.fr = or disjoint i64 %i.fp, %i.fq
  %i.fs = add i64 %i.ez, 4                        ; 2 uses
  %i.ft = getelementptr i8, ptr %.val24.us59, i64 %i.ez
  %i.fu = getelementptr i8, ptr %i.ft, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !37
  %i.fw = zext i8 %i.fv to i64
  %i.fx = or disjoint i64 %i.fr, %i.fw            ; 3 uses
  %niter143.next.3 = add i32 %niter143, 4         ; 2 uses
  %niter143.ncmp.3 = icmp eq i32 %niter143.next.3, %unroll_iter.a
  br i1 %niter143.ncmp.3, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64.unr-lcssa, label %.lr.ph.i.us60, !llvm.loop !405

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64.unr-lcssa: ; preds = %.lr.ph.i.us60
  br i1 %lcmp.mod130.not.a, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64, label %.lr.ph.i.us60.epil.preheader

.lr.ph.i.us60.epil.preheader:                     ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64.unr-lcssa, %.lr.ph.i.preheader.us56
  %.03.i.us61.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us56 ], [ %i.fx, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64.unr-lcssa ]
  %.epil.init138 = phi i64 [ %.04348.us58, %.lr.ph.i.preheader.us56 ], [ %i.fs, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod132.a)
  br label %.lr.ph.i.us60.epil

.lr.ph.i.us60.epil:                               ; preds = %.lr.ph.i.us60.epil, %.lr.ph.i.us60.epil.preheader
  %.03.i.us61.epil = phi i64 [ %i.ge, %.lr.ph.i.us60.epil ], [ %.03.i.us61.epil.init, %.lr.ph.i.us60.epil.preheader ]
  %i.fy = phi i64 [ %i.ga, %.lr.ph.i.us60.epil ], [ %.epil.init138, %.lr.ph.i.us60.epil.preheader ] ; 2 uses
  %epil.iter136 = phi i32 [ %epil.iter136.next, %.lr.ph.i.us60.epil ], [ 0, %.lr.ph.i.us60.epil.preheader ]
  %i.fz = shl i64 %.03.i.us61.epil, 8
  %i.ga = add i64 %i.fy, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %.val24.us59, i64 %i.fy
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !37
  %i.gd = zext i8 %i.gc to i64
  %i.ge = or disjoint i64 %i.fz, %i.gd            ; 2 uses
  %epil.iter136.next = add i32 %epil.iter136, 1   ; 2 uses
  %epil.iter136.cmp.not = icmp eq i32 %epil.iter136.next, %xtraiter.a
  br i1 %epil.iter136.cmp.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64, label %.lr.ph.i.us60.epil, !llvm.loop !409

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64: ; preds = %.lr.ph.i.us60.epil, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64.unr-lcssa
  %.lcssa120 = phi i64 [ %i.fx, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64.unr-lcssa ], [ %i.ge, %.lr.ph.i.us60.epil ]
  %i.gf = add i64 %.04348.us58, %10
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049.us57 ; 2 uses
  store i64 %.lcssa120, ptr %i.gg, align 8, !tbaa !111
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 0, ptr %i.gh, align 8, !tbaa !122
  %i.gi = add nuw i64 %.049.us57, 1               ; 2 uses
  %exitcond85.not = icmp eq i64 %i.gi, %5
  br i1 %exitcond85.not, label %._crit_edge, label %.lr.ph.i.preheader.us56, !llvm.loop !404

bb.j:                                             ; preds = %bb.i
  %i.gj = load i64, ptr %6, align 8
  store i64 %i.gj, ptr %0, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 8
  %i.gn = trunc i8 %i.gm to i1
  br i1 %i.gn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i64 24, i1 false), !tbaa.struct !38
  br label %_ZN5ErrorC2ERKS_.exit

bb.l:                                             ; preds = %bb.j
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !37
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !37
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef %i.gp, i64 noundef %i.gr)
          to label %_ZN5ErrorC2ERKS_.exit unwind label %bb.h

._crit_edge:                                      ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us64, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.us, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us.prol.loopexit, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us53.us, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.us, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us.prol.loopexit, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.us.us, %.preheader
  %i.gs = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.gs, ptr %0, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.gv = trunc i8 %i.gu to i1
  br i1 %i.gv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !38
  br label %_ZN5ErrorC2ERKS_.exit

bb.n:                                             ; preds = %._crit_edge
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !37
  %i.gx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !37
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef %i.gw, i64 noundef %i.gx)
          to label %_ZN5ErrorC2ERKS_.exit unwind label %bb.o

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.us56.preheader, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit
  %.049 = phi i64 [ %i.jm, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit ], [ %4, %.lr.ph.i.preheader.us56.preheader ] ; 2 uses
  %.04348 = phi i64 [ %i.jk, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit ], [ 0, %.lr.ph.i.preheader.us56.preheader ] ; 4 uses
  %.val24 = load ptr, ptr %8, align 8             ; 5 uses
  br i1 %i.ey, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi i64 [ %i.hw, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.gy = phi i64 [ %i.hr, %.lr.ph.i ], [ %.04348, %.lr.ph.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !37
  %i.hb = zext i8 %i.ha to i64
  %i.hc = shl i64 %.03.i, 16
  %i.hd = shl nuw nsw i64 %i.hb, 8
  %i.he = or disjoint i64 %i.hc, %i.hd
  %i.hf = getelementptr i8, ptr %.val24, i64 %i.gy
  %i.hg = getelementptr i8, ptr %i.hf, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !37
  %i.hi = zext i8 %i.hh to i64
  %i.hj = or disjoint i64 %i.he, %i.hi
  %i.hk = getelementptr i8, ptr %.val24, i64 %i.gy
  %i.hl = getelementptr i8, ptr %i.hk, i64 2
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !37
  %i.hn = zext i8 %i.hm to i64
  %i.ho = shl i64 %i.hj, 16
  %i.hp = shl nuw nsw i64 %i.hn, 8
  %i.hq = or disjoint i64 %i.ho, %i.hp
  %i.hr = add i64 %i.gy, 4                        ; 2 uses
  %i.hs = getelementptr i8, ptr %.val24, i64 %i.gy
  %i.ht = getelementptr i8, ptr %i.hs, i64 3
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !37
  %i.hv = zext i8 %i.hu to i64
  %i.hw = or disjoint i64 %i.hq, %i.hv            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter142
  br i1 %niter.ncmp.3, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !405

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.hw, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ %.04348, %.lr.ph.i.preheader ], [ %i.hr, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.id, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.hx = phi i64 [ %i.hz, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.hy = shl i64 %.03.i.epil, 8
  %i.hz = add i64 %i.hx, 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.hx
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !37
  %i.ic = zext i8 %i.ib to i64
  %i.id = or disjoint i64 %i.hy, %i.ic            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter135
  br i1 %epil.iter.cmp.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !410

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit: ; preds = %.lr.ph.i.epil, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.unr-lcssa
  %.lcssa122 = phi i64 [ %i.hw, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit.unr-lcssa ], [ %i.id, %.lr.ph.i.epil ]
  %i.ie = add i64 %.04348, %10                    ; 2 uses
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.049 ; 2 uses
  store i64 %.lcssa122, ptr %i.if, align 8, !tbaa !111
  %.val = load ptr, ptr %8, align 8               ; 5 uses
  br i1 %12, label %.lr.ph.i31.epil.preheader, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit, %.lr.ph.i31
  %i.ig = phi i64 [ %i.ih, %.lr.ph.i31 ], [ %i.ie, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit ] ; 5 uses
  %niter134 = phi i32 [ %niter134.next.3, %.lr.ph.i31 ], [ 0, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit ]
  %i.ih = add i64 %i.ig, 4                        ; 2 uses
  %niter134.next.3 = add i32 %niter134, 4         ; 2 uses
  %niter134.ncmp.3 = icmp eq i32 %niter134.next.3, %unroll_iter133
  br i1 %niter134.ncmp.3, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.unr-lcssa, label %.lr.ph.i31, !llvm.loop !405

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.unr-lcssa: ; preds = %.lr.ph.i31
  %i.ii = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ig
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !37
  %i.ik = zext i8 %i.ij to i32
  %i.il = shl nuw nsw i32 %i.ik, 16
  %i.im = getelementptr i8, ptr %.val, i64 %i.ig
  %i.in = getelementptr i8, ptr %i.im, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !37
  %i.ip = zext i8 %i.io to i32
  %i.iq = shl nuw nsw i32 %i.ip, 8
  %i.ir = or disjoint i32 %i.il, %i.iq
  %i.is = getelementptr i8, ptr %.val, i64 %i.ig
  %i.it = getelementptr i8, ptr %i.is, i64 2
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !37
  %i.iv = zext i8 %i.iu to i32
  %i.iw = or disjoint i32 %i.ir, %i.iv
  %i.ix = shl nuw i32 %i.iw, 8
  %i.iy = getelementptr i8, ptr %.val, i64 %i.ig
  %i.iz = getelementptr i8, ptr %i.iy, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !37
  %i.jb = zext i8 %i.ja to i32
  %i.jc = or disjoint i32 %i.ix, %i.jb            ; 2 uses
  br i1 %lcmp.mod139.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit, label %.lr.ph.i31.epil.preheader

.lr.ph.i31.epil.preheader:                        ; preds = %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.unr-lcssa, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit
  %.03.i32.epil.init = phi i32 [ 0, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit ], [ %i.jc, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.unr-lcssa ]
  %.epil.init129 = phi i64 [ %i.ie, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit.loopexit ], [ %i.ih, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod141)
  br label %.lr.ph.i31.epil

.lr.ph.i31.epil:                                  ; preds = %.lr.ph.i31.epil, %.lr.ph.i31.epil.preheader
  %.03.i32.epil = phi i32 [ %i.jj, %.lr.ph.i31.epil ], [ %.03.i32.epil.init, %.lr.ph.i31.epil.preheader ]
  %i.jd = phi i64 [ %i.jf, %.lr.ph.i31.epil ], [ %.epil.init129, %.lr.ph.i31.epil.preheader ] ; 2 uses
  %epil.iter127 = phi i32 [ %epil.iter127.next, %.lr.ph.i31.epil ], [ 0, %.lr.ph.i31.epil.preheader ]
  %i.je = shl i32 %.03.i32.epil, 8
  %i.jf = add i64 %i.jd, 1
  %i.jg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.jd
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !37
  %i.ji = zext i8 %i.jh to i32
  %i.jj = or disjoint i32 %i.je, %i.ji            ; 2 uses
  %epil.iter127.next = add i32 %epil.iter127, 1   ; 2 uses
  %epil.iter127.cmp.not = icmp eq i32 %epil.iter127.next, %xtraiter126
  br i1 %epil.iter127.cmp.not, label %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit, label %.lr.ph.i31.epil, !llvm.loop !411

_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit: ; preds = %.lr.ph.i31.epil, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.unr-lcssa
  %.lcssa123 = phi i32 [ %i.jc, %_ZL7readvecRKNSt3__16vectorIhNS_9allocatorIhEEEERmi.exit36.loopexit.unr-lcssa ], [ %i.jj, %.lr.ph.i31.epil ]
  %i.jk = add i64 %.04348, %i.ex
  %i.jl = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i32 %.lcssa123, ptr %i.jl, align 8, !tbaa !122
  %i.jm = add nuw i64 %.049, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.jm, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !404

bb.o:                                             ; preds = %bb.n
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.n, %bb.m, %bb.k, %bb.l, %bb.d
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 8
  %i.jq = trunc i8 %i.jp to i1
  br i1 %i.jq, label %bb.p, label %_ZN5ErrorD2Ev.exit

bb.p:                                             ; preds = %_ZN5ErrorC2ERKS_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !37
  %i.jt = load i64, ptr %i.jo, align 8
  %i.ju = and i64 %i.jt, -2
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.ju) #27
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %_ZN5ErrorC2ERKS_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.jv = load ptr, ptr %8, align 8, !tbaa !120   ; 4 uses
  %.not.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !119
  %i.jx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !95
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jv to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.kb) #27
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %_ZN5ErrorD2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 8
  %i.ke = trunc i8 %i.kd to i1
  br i1 %i.ke, label %bb.r, label %_ZN5ErrorD2Ev.exit37

bb.r:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !37
  %i.kh = load i64, ptr %i.kc, align 8
  %i.ki = and i64 %i.kh, -2
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.ki) #27
  br label %_ZN5ErrorD2Ev.exit37

_ZN5ErrorD2Ev.exit37:                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.s:                                             ; preds = %bb.o, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.jn, %bb.o ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 8
  %i.kl = trunc i8 %i.kk to i1
  br i1 %i.kl, label %bb.t, label %_ZN5ErrorD2Ev.exit38

bb.t:                                             ; preds = %bb.s
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !37
  %i.ko = load i64, ptr %i.kj, align 8
  %i.kp = and i64 %i.ko, -2
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kp) #27
  br label %_ZN5ErrorD2Ev.exit38

_ZN5ErrorD2Ev.exit38:                             ; preds = %bb.t, %bb.s, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %.pn, %bb.s ], [ %.pn, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.kq = load ptr, ptr %8, align 8, !tbaa !120   ; 4 uses
  %.not.i.i39 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i39, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit40, label %bb.u

bb.u:                                             ; preds = %_ZN5ErrorD2Ev.exit38
  %i.kr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !119
  %i.ks = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !95
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.kq to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.kw) #27
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit40

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit40: ; preds = %_ZN5ErrorD2Ev.exit38, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.kx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 8
  %i.kz = trunc i8 %i.ky to i1
  br i1 %i.kz, label %bb.v, label %_ZN5ErrorD2Ev.exit41

bb.v:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit40
  %i.la = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !37
  %i.lc = load i64, ptr %i.kx, align 8
  %i.ld = and i64 %i.lc, -2
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.ld) #27
  br label %_ZN5ErrorD2Ev.exit41

_ZN5ErrorD2Ev.exit41:                             ; preds = %bb.v, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit40, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25 ], [ %.pn.pn, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit40 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNK8HeifFile21append_data_from_ilocEjRNSt3__16vectorIhNS0_9allocatorIhEEEEmm(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(404), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK11TiledHeader15get_header_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !123
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 64) i32 @_ZNK11TiledHeader27get_offset_table_entry_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !114
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !115
  %i.f = zext i8 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, %i.c
  %i.h = lshr i32 %i.g, 3
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZNK11TiledHeader35get_tile_offset_table_range_to_readEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !109  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %.not = icmp ugt i64 %i.i, %i.a
  br i1 %.not, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a, %bb.b
  %storemerge.in = phi i32 [ %storemerge, %bb.b ], [ %1, %bb.a ]
  %storemerge = add i32 %storemerge.in, 1         ; 7 uses
  %i.j = zext i32 %storemerge to i64              ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  %i.l = sub i32 %storemerge, %1                  ; 2 uses
  %i.m = icmp ult i32 %i.l, %2
  %or.cond28 = and i1 %i.k, %i.m
  br i1 %or.cond28, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j
  %i.o = load i64, ptr %i.n, align 8, !tbaa !111
  %i.p = icmp eq i64 %i.o, 10
  br i1 %i.p, label %.preheader, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %.preheader, %bb.b
  %i.q = zext i32 %2 to i64
  %umin = tail call i32 @llvm.umin.i32(i32 %2, i32 %1) ; 3 uses
  %i.r = sub i32 %1, %umin                        ; 2 uses
  %.not1542 = icmp ne i32 %1, 0
  %i.s = icmp ne i32 %2, 0
  %or.cond43 = and i1 %.not1542, %i.s
  br i1 %or.cond43, label %.lr.ph, label %.critedge2

bb.c:                                             ; preds = %.lr.ph
  %.not15 = icmp ne i64 %i.w, 0
  %i.t = sub nuw nsw i64 %i.a, %i.w               ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.q
  %or.cond = and i1 %.not15, %i.u
  br i1 %or.cond, label %.lr.ph, label %.critedge2, !llvm.loop !2

.lr.ph:                                           ; preds = %.critedge, %bb.c
  %i.v = phi i64 [ %i.t, %bb.c ], [ 0, %.critedge ]
  %indvars.iv44 = phi i64 [ %i.w, %bb.c ], [ %i.a, %.critedge ] ; 2 uses
  %i.w = add nsw i64 %indvars.iv44, -1            ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !111
  %i.z = icmp eq i64 %i.y, 10
  br i1 %i.z, label %bb.c, label %.critedge2.split.loop.exit34, !llvm.loop !2

.critedge2.split.loop.exit34:                     ; preds = %.lr.ph
  %i.aa = trunc nuw i64 %indvars.iv44 to i32
  %i.ab = trunc nuw i64 %i.v to i32
  br label %.critedge2

end_hunk_0
