inline.NumInlined: 2498
inline.NumDeleted: 992
begin_hunk_0_@_ZN14arrow_vendored4date9time_zone9init_implEv:bb.a
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.gk = load ptr, ptr %i.fj, align 8, !tbaa !73 ; 2 uses
  %i.gl = ptrtoint ptr %.sroa.067.0117 to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.gk, i64 %i.gn ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 4 uses
  %i.gq = load ptr, ptr %i.fk, align 8, !tbaa !73 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 3 uses
  %i.gv = icmp sgt i64 %i.gu, 16
  br i1 %i.gv, label %bb.am, label %bb.an, !prof !89

bb.am:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.go, ptr nonnull align 8 %i.gp, i64 %i.gu, i1 false)
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.gw = icmp eq i64 %i.gu, 16
  br i1 %i.gw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !tbaa.struct !90
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %i.gx = load ptr, ptr %i.fk, align 8, !tbaa !92
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -16
  store ptr %i.gy, ptr %i.fk, align 8, !tbaa !92
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102: ; preds = %bb.ai, %.lr.ph118, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.ap
  %.sroa.067.1 = phi ptr [ %i.go, %bb.ap ], [ %.sroa.067.0117, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.sroa.067.0117, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.sroa.067.0117, %.lr.ph118 ], [ %.sroa.067.0117, %bb.ai ] ; 2 uses
  %.sroa.067.0 = getelementptr inbounds i8, ptr %.sroa.067.1, i64 -16 ; 2 uses
  %i.gz = icmp eq ptr %.sroa.067.0, %i.fi
  br i1 %i.gz, label %.loopexit, label %.lr.ph118, !llvm.loop !93

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread102, %.loopexit104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ha = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.s
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %.loopexit
  %i.hc = load i64, ptr %i.s, align 8, !tbaa !31
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

.body:                                            ; preds = %bb.ae, %bb.v
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %i.ed, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.u, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.p, %bb.n
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.at, %bb.n ], [ %.pn101, %bb.p ], [ %.pn22.pn.pn, %.body ], [ %i.cl, %bb.u ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.m
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn, %bb.aq ], [ %i.as, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.he = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.s
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ar
  %i.hg = load i64, ptr %i.s, align 8, !tbaa !31
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

bb.as:                                            ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.b = load ptr, ptr %2, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.std::vector.76", align 8    ; 9 uses
  %7 = alloca %"class.std::vector.81", align 8    ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::vector.3", align 16    ; 8 uses
  %10 = alloca %"struct.arrow_vendored::date::detail::expanded_ttinfo", align 8 ; 10 uses
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.b = zext i32 %3 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 4
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #32, !noalias !94 ; 6 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.b ; 3 uses
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph.i, label %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i, %bb.g
  %.sroa.12.0 = phi ptr [ %.sroa.12.1171, %bb.g ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
  %.sroa.085.0 = phi ptr [ %.sroa.085.1172, %bb.g ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
  %i.g = phi ptr [ %i.ah, %bb.g ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 7 uses
  %i.h = phi ptr [ %i.ag, %bb.g ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 6 uses
  %i.i = phi ptr [ %.sroa.8.0173, %bb.g ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.0819.i = phi i32 [ %i.ai, %bb.g ], [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !94
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.b unwind label %bb.f, !noalias !94 ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = load i32, ptr %i.a, align 4, !tbaa !3, !noalias !94
  %i.l = call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !3, !noalias !94
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i64 %i.m, ptr %i.i, align 8, !tbaa !75, !noalias !94
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !81, !noalias !94
  %.sroa.8.0170 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc13.i unwind label %.loopexit.split-lp.i, !noalias !94

.noexc13.i:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %i.w = select i1 %i.u, i64 576460752303423487, i64 %i.v ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #32
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !94 ; 8 uses

.noexc14.i:                                       ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q ; 2 uses
  store i64 %i.m, ptr %i.z, align 8, !tbaa !75, !noalias !94
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !81, !noalias !94
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %.loopexit175, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %.noexc14.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %.noexc14.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !97, !noalias !94
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit175, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

.loopexit175:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc14.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.q) #28, !noalias !94
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %.sroa.0.0.copyload.i.i15.i.pre = load i64, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !75, !noalias !94
  %i.ae = icmp slt i64 %.sroa.0.0.copyload.i.i15.i.pre, -1096193779200
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit175
  store i64 -1096193779200, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !75, !noalias !94
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.e, %.loopexit175
  %.sroa.8.0173 = phi ptr [ %.sroa.8.0170, %.thread ], [ %.sroa.8.0, %bb.e ], [ %.sroa.8.0, %.loopexit175 ] ; 2 uses
  %i.ag = phi ptr [ %i.h, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %.loopexit175 ]
  %i.ah = phi ptr [ %i.g, %.thread ], [ %i.y, %bb.e ], [ %i.y, %.loopexit175 ]
  %.sroa.085.1172 = phi ptr [ %.sroa.085.0, %.thread ], [ %i.y, %bb.e ], [ %i.y, %.loopexit175 ] ; 2 uses
  %.sroa.12.1171 = phi ptr [ %.sroa.12.0, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %.loopexit175 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !94
  %i.ai = add nuw nsw i32 %.0819.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, %3
  br i1 %exitcond.not.i, label %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit, label %.lr.ph.i, !llvm.loop !102

bb.h:                                             ; preds = %bb.f, %.loopexit.i, %.loopexit.split-lp.i
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.f ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !94
  %i.aj = ptrtoint ptr %i.h to i64
  %i.ak = ptrtoint ptr %i.g to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.al) #28, !noalias !94
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNSt6vectorIhSaIhEED2Ev.exit75
  %common.resume.op = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit75 ], [ %.pn.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit: ; preds = %bb.g, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i
  %.sroa.12.2 = phi ptr [ null, %bb.a ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.12.1171, %bb.g ]
  %.sroa.8.1 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.8.0173, %bb.g ]
  %.sroa.085.2 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.085.1172, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  store ptr %.sroa.085.2, ptr %i.am, align 8, !tbaa !45
  store ptr %.sroa.8.1, ptr %i.ao, align 8, !tbaa !92
  store ptr %.sroa.12.2, ptr %i.ap, align 8, !tbaa !48
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.at) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %bb.i, %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN14arrow_vendored4dateL12load_indicesERSii(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL11load_ttinfoERSii(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %4)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.au, ptr %8, align 8, !tbaa !38, !alias.scope !103
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.av, align 8, !tbaa !39, !alias.scope !103
  store i8 0, ptr %i.au, align 8, !tbaa !31, !alias.scope !103
  %i.aw = zext i32 %5 to i64                      ; 4 uses
  %.not.i47 = icmp eq i32 %5, 0
  br i1 %.not.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.j
  %.not.i.i.i.i48 = icmp ugt i32 %5, 15
  br i1 %.not.i.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 30) ; 2 uses
  %i.ax = add nuw nsw i64 %spec.select.i, 1
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i unwind label %bb.l ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  store ptr %i.ay, ptr %8, align 8, !tbaa !30, !alias.scope !103
  store i64 %spec.select.i, ptr %i.au, align 8, !tbaa !31, !alias.scope !103
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i32 %5, 1
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i
  %i.az = phi ptr [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.aw, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.ba = phi ptr [ %i.az, %bb.k ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !39, !alias.scope !103
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  store i8 0, ptr %i.bb, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i: ; preds = %.sink.split.i.i, %bb.j
  %i.bc = phi ptr [ %.pre.i, %.sink.split.i.i ], [ %i.au, %bb.j ]
  %i.bd = sext i32 %5 to i64
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bc, i64 noundef %i.bd)
          to label %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !103 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.au
  br i1 %i.bh, label %.body, label %.body.sink.split

_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i
  %i.bi = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.m, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, !prof !36

bb.m:                                             ; preds = %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i49 = icmp eq i32 %i.bk, 0
  br i1 %.not.i49, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = call i32 @__cxa_atexit(ptr nonnull @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %.body50

_ZN14arrow_vendored4date13get_tzdb_listEv.exit:   ; preds = %bb.o, %bb.m, %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bn = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.bs = icmp eq ptr %i.bp, %i.br
  %i.bt = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.bt, %i.bs
  br i1 %or.cond, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL10load_leapsIiEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %.sroa.076.0, ptr %i.gr, align 8, !tbaa !81
  %.pre125 = load ptr, ptr %i.ao, align 8, !tbaa !92
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.aj
  %i.gs = phi ptr [ %i.gq, %bb.av ], [ %i.cz, %bb.aj ] ; 2 uses
  %i.gt = phi ptr [ %.pre125, %bb.av ], [ %i.da, %bb.aj ]
  %.037 = phi i32 [ 1, %bb.av ], [ 0, %bb.aj ]    ; 2 uses
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 4                 ; 2 uses
  %i.gy = zext nneg i32 %.037 to i64              ; 2 uses
  %i.gz = icmp ugt i64 %i.gx, %i.gy
  br i1 %i.gz, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.aw
  %i.ha = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.hb = load ptr, ptr %6, align 8, !tbaa !114
  br label %bb.az

._crit_edge110:                                   ; preds = %bb.az, %bb.aw
  %i.hc = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.au
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge110
  %i.he = load i64, ptr %i.au, align 8, !tbaa !31
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.not.i.i.i67 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !116
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.hj) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.hk = load ptr, ptr %6, align 8, !tbaa !114   ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !117
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.az:                                            ; preds = %.lr.ph109, %bb.az
  %i.hq = phi i64 [ %i.gy, %.lr.ph109 ], [ %i.ia, %bb.az ]
  %.0107 = phi i32 [ 0, %.lr.ph109 ], [ %i.hz, %bb.az ] ; 2 uses
  %.138106 = phi i32 [ %.037, %.lr.ph109 ], [ %i.hy, %bb.az ]
  %i.hr = zext i32 %.0107 to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !31
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [48 x i8], ptr %i.ha, i64 %i.hu
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.hq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.hv, ptr %i.hx, align 8, !tbaa !81
  %i.hy = add i32 %.138106, 1                     ; 2 uses
  %i.hz = add i32 %.0107, 1
  %i.ia = zext i32 %i.hy to i64                   ; 2 uses
  %i.ib = icmp ugt i64 %i.gx, %i.ia
  br i1 %i.ib, label %bb.az, label %._crit_edge110, !llvm.loop !118

.body50:                                          ; preds = %bb.u, %bb.p, %bb.au, %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit65, %bb.v
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit65 ], [ %i.cj, %bb.v ], [ %i.gp, %bb.au ], [ %i.bm, %bb.p ], [ %i.ci, %bb.u ] ; 2 uses
  %i.ic = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.au
  br i1 %i.id, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body50, %bb.l
  %.sink = phi ptr [ %i.bg, %bb.l ], [ %i.ic, %.body50 ]
  %.pn42.pn.pn.ph = phi { ptr, i32 } [ %i.bf, %bb.l ], [ %.pn42.pn, %.body50 ]
  %i.ie = load i64, ptr %i.au, align 8, !tbaa !31
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.if) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body50, %bb.l
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.l ], [ %.pn42.pn, %.body50 ], [ %.pn42.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ig = load ptr, ptr %7, align 8, !tbaa !109   ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73, label %bb.ba

bb.ba:                                            ; preds = %.body
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !116
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.il) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73: ; preds = %bb.ba, %.body, %bb.t
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.t ], [ %.pn42.pn.pn, %.body ], [ %.pn42.pn.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.im = load ptr, ptr %6, align 8, !tbaa !114   ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIhSaIhEED2Ev.exit75, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !117
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit75

_ZNSt6vectorIhSaIhEED2Ev.exit75:                  ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date9time_zone9load_dataIlEEvRSiiiii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.76", align 8    ; 9 uses
  %7 = alloca %"class.std::vector.81", align 8    ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::vector.3", align 16    ; 8 uses
  %10 = alloca %"struct.arrow_vendored::date::detail::expanded_ttinfo", align 8 ; 10 uses
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.b = zext i32 %3 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 4
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #32, !noalias !119 ; 6 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.b ; 3 uses
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph.i, label %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i, %bb.i
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %bb.i ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
  %.sroa.085.0 = phi ptr [ %.sroa.085.1, %bb.i ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
  %i.g = phi ptr [ %i.ad, %bb.i ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 7 uses
  %i.h = phi ptr [ %i.ae, %bb.i ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 6 uses
  %i.i = phi ptr [ %.sroa.8.0, %bb.i ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.0819.i = phi i32 [ %i.ah, %bb.i ], [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !119
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.b unwind label %bb.h, !noalias !119 ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !75, !noalias !119
  %i.l = call noundef i64 @llvm.bswap.i64(i64 %i.k) ; 4 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !75, !noalias !119
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.l, ptr %i.i, align 8, !tbaa !75, !noalias !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !81, !noalias !119
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775792
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc13.i unwind label %.loopexit.split-lp.i, !noalias !119

.noexc13.i:                                       ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 576460752303423487)
  %i.v = select i1 %i.t, i64 576460752303423487, i64 %i.u ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !119 ; 6 uses

.noexc14.i:                                       ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  store i64 %i.l, ptr %i.y, align 8, !tbaa !75, !noalias !119
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !81, !noalias !119
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %.noexc14.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %.noexc14.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !122, !noalias !119
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc14.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.p) #28, !noalias !119
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.i.i15.i.pre = load i64, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !75, !noalias !119
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c
  %.sroa.0.0.copyload.i.i15.i = phi i64 [ %.sroa.0.0.copyload.i.i15.i.pre, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.l, %bb.c ]
  %.sroa.12.1 = phi ptr [ %i.ac, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.12.0, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.085.1 = phi ptr [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.085.0, %bb.c ] ; 2 uses
  %i.ad = phi ptr [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.ae = phi ptr [ %i.ac, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.af = icmp slt i64 %.sroa.0.0.copyload.i.i15.i, -1096193779200
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i64 -1096193779200, ptr %.0.lcssa.i.i.i.i.i.i.pn, align 8, !tbaa !75, !noalias !119
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !119
  %i.ah = add nuw nsw i32 %.0819.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ah, %3
  br i1 %exitcond.not.i, label %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit, label %.lr.ph.i, !llvm.loop !126

bb.j:                                             ; preds = %bb.h, %.loopexit.i, %.loopexit.split-lp.i
  %.pn.i = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !119
  %i.ai = ptrtoint ptr %i.h to i64
  %i.aj = ptrtoint ptr %i.g to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.ak) #28, !noalias !119
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %_ZNSt6vectorIhSaIhEED2Ev.exit75
  %common.resume.op = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit75 ], [ %.pn.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit: ; preds = %bb.i, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i
  %.sroa.12.2 = phi ptr [ null, %bb.a ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.12.1, %bb.i ]
  %.sroa.8.1 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.8.0, %bb.i ]
  %.sroa.085.2 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.085.1, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  store ptr %.sroa.085.2, ptr %i.al, align 8, !tbaa !45
  store ptr %.sroa.8.1, ptr %i.an, align 8, !tbaa !92
  store ptr %.sroa.12.2, ptr %i.ao, align 8, !tbaa !48
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.as) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %bb.k, %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN14arrow_vendored4dateL12load_indicesERSii(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL11load_ttinfoERSii(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %4)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.at, ptr %8, align 8, !tbaa !38, !alias.scope !127
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.au, align 8, !tbaa !39, !alias.scope !127
  store i8 0, ptr %i.at, align 8, !tbaa !31, !alias.scope !127
  %i.av = zext i32 %5 to i64                      ; 4 uses
  %.not.i47 = icmp eq i32 %5, 0
  br i1 %.not.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.l
  %.not.i.i.i.i48 = icmp ugt i32 %5, 15
  br i1 %.not.i.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.av, i64 30) ; 2 uses
  %i.aw = add nuw nsw i64 %spec.select.i, 1
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i unwind label %bb.n ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  store ptr %i.ax, ptr %8, align 8, !tbaa !30, !alias.scope !127
  store i64 %spec.select.i, ptr %i.at, align 8, !tbaa !31, !alias.scope !127
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i32 %5, 1
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i
  %i.ay = phi ptr [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ay, i8 0, i64 %i.av, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.az = phi ptr [ %i.ay, %bb.m ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.av, ptr %i.au, align 8, !tbaa !39, !alias.scope !127
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  store i8 0, ptr %i.ba, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i: ; preds = %.sink.split.i.i, %bb.l
  %i.bb = phi ptr [ %.pre.i, %.sink.split.i.i ], [ %i.at, %bb.l ]
  %i.bc = sext i32 %5 to i64
  %i.bd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bb, i64 noundef %i.bc)
          to label %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !127 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.at
  br i1 %i.bg, label %.body, label %.body.sink.split

_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i
  %i.bh = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, !prof !36

bb.o:                                             ; preds = %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i49 = icmp eq i32 %i.bj, 0
  br i1 %.not.i49, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = call i32 @__cxa_atexit(ptr nonnull @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %.body50

_ZN14arrow_vendored4date13get_tzdb_listEv.exit:   ; preds = %bb.q, %bb.o, %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bm = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !74
  %i.br = icmp eq ptr %i.bo, %i.bq
  %i.bs = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.bs, %i.br
  br i1 %or.cond, label %bb.s, label %bb.y

bb.s:                                             ; preds = %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  %bcmp.i.i.i56.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 176), i64 %.sroa.speculated.i.i.i54.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i57.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i56.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i57.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i
  %bcmp.i.i.i63.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 208), i64 %.sroa.speculated.i.i.i54.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i
  %.sroa.speculated.i.i.i68.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 6)
  %bcmp.i.i.i70.i.i.i.1.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 240), i64 %.sroa.speculated.i.i.i68.i.i.i.1.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i71.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i
  %.sroa.speculated.i.i.i.i.i.i.2.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 9)
  %bcmp.i.i.i.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 272), i64 %.sroa.speculated.i.i.i.i.i.i.2.i.i), !noalias !245
  %.not.i.i.i.i.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i
  %bcmp.i.i.i56.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 304), i64 %.sroa.speculated.i.i.i.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i57.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i56.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i57.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i
  %bcmp.i.i.i63.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 336), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i
  %bcmp.i.i.i70.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 368), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.2.i.i, 0
  %spec.select.i.i = select i1 %.not.i.i.i.i71.i.i.i.2.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 352), ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 384)
  br label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"

"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i, %.noexc103.i
  %.val1543.i.i = phi ptr [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i ], [ %.val15.pre.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i ], [ %i.ld, %.noexc103.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i ], [ %.val.pre.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ] ; 2 uses
  %.028.i.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 32), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 256), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 96), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 192), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 64), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 288), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %.noexc103.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 224), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 128), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i ], [ %spec.select.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 160), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 320), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ]
  %i.oy = ptrtoint ptr %.028.i.i.i.i.i to i64
  %i.oz = sub i64 %i.oy, ptrtoint (ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11 to i64) ; 2 uses
  %.not.i100.i = icmp slt i64 %i.oz, 384
  br i1 %.not.i100.i, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"
  %i.pa = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !245 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !245
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, !noalias !245

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.cw unwind label %bb.cx, !noalias !245

bb.cw:                                            ; preds = %bb.cv
  invoke void @__cxa_throw(ptr nonnull %i.pa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.db unwind label %bb.cx, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.cu
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.0.i.i = phi i1 [ false, %bb.cw ], [ true, %bb.cv ] ; 2 uses
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pd = load ptr, ptr %9, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cx
  %i.pg = load i64, ptr %i.pe, align 8, !tbaa !31, !noalias !245
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #28, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br i1 %.0.i.i, label %bb.cy, label %bb.da

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br i1 %.0.i.i, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn26.i.i = phi { ptr, i32 } [ %i.pb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.pa) #30, !noalias !245
  br label %bb.da

bb.cz:                                            ; preds = %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"
  %i.pi = icmp eq ptr %.val1543.i.i, %i.ld
  br i1 %i.pi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %bb.cz
  %i.pj = load i64, ptr %i.ld, align 8, !tbaa !31, !noalias !245
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %.val1543.i.i, i64 noundef %i.pk) #28, !noalias !245
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i

bb.da:                                            ; preds = %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn26.i.i, %bb.cy ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  %i.pl = load ptr, ptr %8, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.ld
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i: ; preds = %bb.da
  %i.pn = load i64, ptr %i.ld, align 8, !tbaa !31, !noalias !245
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.po) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !245
  br label %.body.i

bb.db:                                            ; preds = %bb.cw
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !245
  %i.pp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.dc unwind label %bb.dp, !noalias !245 ; 0 uses

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i
  %i.pq = trunc i64 %i.oz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30, !noalias !245
  %i.pr = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !245
  %i.ps = shl i32 %i.pq, 11
  %i.pt = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !245
  %.sroa.0320.2.extract.shift328.i = add i32 %i.ps, 65536
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.0320.2.extract.shift328.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8 ; 2 uses
  %sext.i = shl i32 %i.pr, 16
  %i.pu = ashr exact i32 %sext.i, 16
  %i.pv = icmp ult i8 %.sroa.5.0.extract.trunc.i, 3
  %.neg.i.i.i = sext i1 %i.pv to i32
  %i.pw = add nsw i32 %i.pu, %.neg.i.i.i          ; 4 uses
  %i.px = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.py = and i32 %i.pt, 255
  %i.pz = add nsw i32 %i.pw, -399
  %i.qa = icmp slt i32 %i.pw, 0
  %i.qb = select i1 %i.qa, i32 %i.pz, i32 %i.pw
  %i.qc = sdiv i32 %i.qb, 400                     ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %i.qc, -400
  %i.qd = add nsw i32 %.neg15.i.i.i, %i.pw        ; 3 uses
  %i.qe = icmp ugt i8 %.sroa.5.0.extract.trunc.i, 2
  %.v.i.i.i = select i1 %i.qe, i32 -3, i32 9
  %i.qf = add nsw i32 %.v.i.i.i, %i.px
  %i.qg = mul nsw i32 %i.qf, 153
  %i.qh = add nsw i32 %i.qg, 2
  %i.qi = udiv i32 %i.qh, 5
  %i.qj = mul nsw i32 %i.qd, 365
  %i.qk = lshr i32 %i.qd, 2
  %i.ql = udiv i32 %i.qd, 100
  %i.qm = mul nsw i32 %i.qc, 146097
  %i.qn = add nsw i32 %i.qi, -719468
  %i.qo = add nsw i32 %i.qn, %i.py
  %i.qp = add nsw i32 %i.qo, %i.qm
  %i.qq = add nsw i32 %i.qp, %i.qk
  %i.qr = add nsw i32 %i.qq, %i.qj
  %i.qs = sub nsw i32 %i.qr, %i.ql
  %i.qt = sext i32 %i.qs to i64
  %i.qu = mul nsw i64 %i.qt, 86400
  store i64 %i.qu, ptr %19, align 8, !tbaa !78, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.dd unwind label %.loopexit329.i, !noalias !245

bb.dd:                                            ; preds = %bb.dc
  %.not.i.i107.i = icmp eq ptr %i.lv, %i.lu
  br i1 %.not.i.i107.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qv = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.qv, ptr %i.lv, align 8, !tbaa !75, !noalias !245
  %i.qw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  store ptr %i.qw, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.qx = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.qy = ptrtoint ptr %i.lt to i64               ; 3 uses
  %i.qz = sub i64 %i.qx, %i.qy                    ; 4 uses
  %i.ra = icmp eq i64 %i.qz, 9223372036854775800
  br i1 %i.ra, label %bb.dg, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc108.i unwind label %.loopexit.split-lp330.i, !noalias !245

.noexc108.i:                                      ; preds = %bb.dg
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.df
  %i.rb = ashr exact i64 %i.qz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rb, i64 1)
  %i.rc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.rb ; 2 uses
  %i.rd = icmp ult i64 %i.rc, %i.rb
  %i.re = call i64 @llvm.umin.i64(i64 %i.rc, i64 1152921504606846975)
  %i.rf = select i1 %i.rd, i64 1152921504606846975, i64 %i.re ; 2 uses
  %i.rg = shl nuw nsw i64 %i.rf, 3
  %i.rh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rg) #32
          to label %.noexc109.i unwind label %.loopexit329.i, !noalias !245 ; 9 uses

.noexc109.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.qz
  %i.rj = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.rj, ptr %i.ri, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.lt, %i.lu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc109.i
  %i.rk = ptrtoaddr ptr %i.rh to i64
  %i.rl = add i64 %i.qx, -8
  %i.rm = sub i64 %i.rl, %i.qy                    ; 2 uses
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = add nuw nsw i64 %i.rn, 1                ; 2 uses
  %min.iters.check499 = icmp ult i64 %i.rm, 24
  %i.rp = sub i64 %i.rk, %i.qy
  %diff.check497 = icmp ult i64 %i.rp, 32
  %or.cond = or i1 %min.iters.check499, %diff.check497
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader515, label %vector.ph500

vector.ph500:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec502 = and i64 %i.ro, 4611686018427387900  ; 3 uses
  %i.rq = shl i64 %n.vec502, 3                    ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rh, i64 %i.rq  ; 2 uses
  %i.rs = getelementptr i8, ptr %i.lt, i64 %i.rq
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph500
  %index504 = phi i64 [ 0, %vector.ph500 ], [ %index.next509, %vector.body503 ] ; 2 uses
  %i.rt = shl i64 %index504, 3                    ; 2 uses
  %next.gep505.a = getelementptr i8, ptr %i.rh, i64 %i.rt ; 2 uses
  %next.gep506 = getelementptr i8, ptr %i.lt, i64 %i.rt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.ru = getelementptr i8, ptr %next.gep506, i64 16
  %wide.load507.a = load <2 x i64>, ptr %next.gep506, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  %wide.load508 = load <2 x i64>, ptr %i.ru, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  %i.rv = getelementptr i8, ptr %next.gep505.a, i64 16
  store <2 x i64> %wide.load507.a, ptr %next.gep505.a, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  store <2 x i64> %wide.load508, ptr %i.rv, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %index.next509 = add nuw i64 %index504, 4       ; 2 uses
  %i.rw = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.rw, label %middle.block510, label %vector.body503, !llvm.loop !268

middle.block510:                                  ; preds = %vector.body503
  %cmp.n511 = icmp eq i64 %i.ro, %n.vec502
  br i1 %cmp.n511, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader515

.lr.ph.i.i.i.i.i.i.i.preheader515:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block510
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.rh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.rr, %middle.block510 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.rs, %middle.block510 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader515, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.rz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader515 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader515 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.rx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  store i64 %i.rx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %i.ry = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ry, %i.lu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !271

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block510, %.noexc109.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.rh, %.noexc109.i ], [ %i.rr, %middle.block510 ], [ %i.rz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.sa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.qz) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.dh, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.rh, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.sa, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %i.rf ; 2 uses
  store ptr %i.sb, ptr %i.lg, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.de
  %i.sc = phi ptr [ %i.rh, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lt, %bb.de ]
  %i.sd = phi ptr [ %i.sb, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lu, %bb.de ]
  %i.se = phi ptr [ %i.sa, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.qw, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.du

bb.di:                                            ; preds = %bb.bt
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

bb.dj:                                            ; preds = %bb.bz, %bb.bw
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i

bb.dk:                                            ; preds = %bb.cb
  %i.sh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.si = load ptr, ptr %11, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.jp
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i: ; preds = %bb.dk
  %i.sk = load i64, ptr %i.jp, align 8, !tbaa !31, !noalias !245
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i, %bb.dj
  %.pn.i = phi { ptr, i32 } [ %i.sg, %bb.dj ], [ %i.sh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i ], [ %i.sh, %bb.dk ] ; 2 uses
  %i.sm = load ptr, ptr %12, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.is
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i
  %i.so = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !245
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i, %bb.di
  %.pn.pn.i = phi { ptr, i32 } [ %i.sf, %bb.di ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i ]
  %i.sq = load ptr, ptr %13, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sr = icmp eq ptr %i.sq, %i.im
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i
  %i.ss = load i64, ptr %i.im, align 8, !tbaa !31, !noalias !245
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.st) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !245
  br label %bb.hk

bb.dl:                                            ; preds = %.noexc147, %.noexc146.a, %.noexc145.a, %.noexc144.a, %.noexc143.a, %.noexc142.a, %.noexc141.a, %.noexc140.a, %bb.hf, %.noexc138, %bb.he, %.noexc136.a, %.noexc135.a, %.noexc134.a, %.noexc133.a, %.noexc132.a, %.noexc131.a, %.noexc130.a, %.noexc129.a, %.noexc128.a, %.noexc127.a, %.noexc126.a, %.invoke.i, %bb.gn, %bb.ft, %bb.eb
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc90.i, %bb.ch
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp.i:                             ; preds = %bb.cf
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dm:                                            ; preds = %bb.cj
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dn:                                            ; preds = %bb.ck
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.do:                                            ; preds = %bb.dt, %bb.ds, %bb.dr, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, %bb.cn, %bb.cm
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit329.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.dc
  %lpad.loopexit331.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.loopexit.split-lp330.i:                          ; preds = %bb.dg
  %lpad.loopexit.split-lp332.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dq:                                            ; preds = %.loopexit.split-lp330.i, %.loopexit329.i
  %lpad.phi333.i = phi { ptr, i32 } [ %lpad.loopexit331.i, %.loopexit329.i ], [ %lpad.loopexit.split-lp332.i, %.loopexit.split-lp330.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  br label %.body.i

.body.i:                                          ; preds = %bb.ct, %bb.dq, %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  %i.yr = phi i64 [ %i.xv, %.lr.ph.i ], [ %i.ack, %.backedge.i ]
  %i.ys = getelementptr inbounds i8, ptr %10, i64 %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 240
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !191, !noalias !245 ; 6 uses
  %.not.i.i.i174.i = icmp eq ptr %i.yu, null
  br i1 %.not.i.i.i174.i, label %bb.eu, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175.i

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc179.i unwind label %.loopexit.split-lp335.i, !noalias !245

.noexc179.i:                                      ; preds = %bb.eu
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175.i: ; preds = %bb.et
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 56
  %i.yw = load i8, ptr %i.yv, align 8, !tbaa !198, !noalias !245
  %.not.i1.i.i176.i = icmp eq i8 %i.yw, 0
  br i1 %.not.i1.i.i176.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175.i
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 67
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !31, !noalias !245
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i

bb.ew:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yu)
          to label %.noexc180.i unwind label %.loopexit334.i, !noalias !245

.noexc180.i:                                      ; preds = %bb.ew
  %i.yz = load ptr, ptr %i.yu, align 8, !tbaa !61, !noalias !245
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 48
  %i.zb = load ptr, ptr %i.za, align 8, !noalias !245
  %i.zc = invoke noundef signext i8 %i.zb(ptr noundef nonnull align 8 dereferenceable(570) %i.yu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i unwind label %.loopexit334.i, !noalias !245, !inline_history !204

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i: ; preds = %.noexc180.i, %bb.ev
  %.0.i.i.i178.i = phi i8 [ %i.yy, %bb.ev ], [ %i.zc, %.noexc180.i ]
  %i.zd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %23, i8 noundef signext %.0.i.i.i178.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i unwind label %.loopexit334.i, !noalias !245 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i
  %i.ze = load i64, ptr %i.xu, align 8, !tbaa !39, !noalias !245
  %i.zf = icmp eq i64 %i.ze, 0
  br i1 %i.zf, label %.backedge.i, label %bb.ex

bb.ex:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i
  %i.zg = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !31, !noalias !245
  %.not.i87 = icmp eq i8 %i.zh, 35
  br i1 %.not.i87, label %.backedge.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30, !noalias !245
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %24, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 8)
          to label %bb.ez unwind label %bb.fd, !noalias !245

bb.ez:                                            ; preds = %bb.ey
  %i.zi = load ptr, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.zj = getelementptr i8, ptr %i.zi, i64 -24
  %i.zk = load i64, ptr %i.zj, align 8, !noalias !245
  %i.zl = getelementptr inbounds i8, ptr %24, i64 %i.zk ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 28
  store i32 5, ptr %i.zm, align 4, !tbaa !63, !noalias !245
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 32
  %i.zo = load i32, ptr %i.zn, align 8, !tbaa !72, !noalias !245
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.zl, i32 noundef %i.zo)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i unwind label %bb.fe, !noalias !245

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i: ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30, !noalias !245
  %i.zp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNSirsERl.exit.i unwind label %bb.ff, !noalias !245 ; 0 uses

_ZNSirsERl.exit.i:                                ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i
  %i.zq = load i64, ptr %i.j, align 8, !tbaa !75, !noalias !245 ; 2 uses
  %.not327.i = icmp eq i64 %i.zq, 2272060800
  br i1 %.not327.i, label %bb.fm, label %bb.fg, !llvm.loop !283

bb.fa:                                            ; preds = %bb.eh
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

bb.fb:                                            ; preds = %bb.en, %bb.ek
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i

bb.fc:                                            ; preds = %bb.er, %bb.ep
  %i.zt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zu = load ptr, ptr %20, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.zv = icmp eq ptr %i.zu, %i.wh
  br i1 %i.zv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i: ; preds = %bb.fc
  %i.zw = load i64, ptr %i.wh, align 8, !tbaa !31, !noalias !245
  %i.zx = add i64 %i.zw, 1
  call void @_ZdlPvm(ptr noundef %i.zu, i64 noundef %i.zx) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i, %bb.fb
  %.pn39.i = phi { ptr, i32 } [ %i.zs, %bb.fb ], [ %i.zt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i ], [ %i.zt, %bb.fc ] ; 2 uses
  %i.zy = load ptr, ptr %21, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.zz = icmp eq ptr %i.zy, %i.vk
  br i1 %i.zz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i
  %i.aaa = load i64, ptr %i.vk, align 8, !tbaa !31, !noalias !245
  %i.aab = add i64 %i.aaa, 1
  call void @_ZdlPvm(ptr noundef %i.zy, i64 noundef %i.aab) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i, %bb.fa
  %.pn39.pn.i = phi { ptr, i32 } [ %i.zr, %bb.fa ], [ %.pn39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i ], [ %.pn39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i ]
  %i.aac = load ptr, ptr %22, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.ve
  br i1 %i.aad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i
  %i.aae = load i64, ptr %i.ve, align 8, !tbaa !31, !noalias !245
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aaf) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !245
  br label %.body141.i

.body141.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, %bb.eg
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ %i.vd, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit334.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i, %.noexc180.i, %bb.ew
  %lpad.loopexit336.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp335.i:                          ; preds = %bb.eu
  %lpad.loopexit.split-lp337.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fd:                                            ; preds = %bb.ey
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fe:                                            ; preds = %bb.ez
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.ff:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fg:                                            ; preds = %_ZNSirsERl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30, !noalias !245
  %i.aaj = add i64 %i.zq, -2208988800
  store i64 %i.aaj, ptr %26, align 8, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.fh unwind label %.loopexit339.i, !noalias !245

bb.fh:                                            ; preds = %bb.fg
  %.not.i.i198.i = icmp eq ptr %i.yq, %i.yp
  br i1 %.not.i.i198.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aak = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aak, ptr %i.yq, align 8, !tbaa !75, !noalias !245
  %i.aal = getelementptr inbounds nuw i8, ptr %i.yq, i64 8 ; 2 uses
  store ptr %i.aal, ptr %i.ya, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i

bb.fj:                                            ; preds = %bb.fh
  %i.aam = ptrtoint ptr %i.yp to i64              ; 2 uses
  %i.aan = ptrtoint ptr %i.yo to i64              ; 3 uses
  %i.aao = sub i64 %i.aam, %i.aan                 ; 4 uses
  %i.aap = icmp eq i64 %i.aao, 9223372036854775800
  br i1 %i.aap, label %bb.fk, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc211.i.a unwind label %.loopexit.split-lp340.i, !noalias !245

.noexc211.i.a:                                    ; preds = %bb.fk
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i: ; preds = %bb.fj
  %i.aaq = ashr exact i64 %i.aao, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i200.i = call i64 @llvm.umax.i64(i64 %i.aaq, i64 1)
  %i.aar = add nsw i64 %.sroa.speculated.i.i.i.i200.i, %i.aaq ; 2 uses
  %i.aas = icmp ult i64 %i.aar, %i.aaq
  %i.aat = call i64 @llvm.umin.i64(i64 %i.aar, i64 1152921504606846975)
  %i.aau = select i1 %i.aas, i64 1152921504606846975, i64 %i.aat ; 2 uses
  %i.aav = shl nuw nsw i64 %i.aau, 3
  %i.aaw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aav) #32
          to label %.noexc212.i unwind label %.loopexit339.i, !noalias !245 ; 9 uses

.noexc212.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.aao
  %i.aay = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aay, ptr %i.aax, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i202.i = icmp eq ptr %i.yo, %i.yp
  br i1 %.not10.i.i.i.i.i.i202.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i.preheader

.lr.ph.i.i.i.i.i.i203.i.preheader:                ; preds = %.noexc212.i
  %i.aaz = ptrtoaddr ptr %i.aaw to i64
  %i.aba = add i64 %i.aam, -8
  %i.abb = sub i64 %i.aba, %i.aan                 ; 2 uses
  %i.abc = lshr i64 %i.abb, 3
  %i.abd = add nuw nsw i64 %i.abc, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.abb, 24
  %i.abe = sub i64 %i.aaz, %i.aan
  %diff.check = icmp ult i64 %i.abe, 32
  %or.cond514 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond514, label %.lr.ph.i.i.i.i.i.i203.i.preheader516, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader
  %n.vec = and i64 %i.abd, 4611686018427387900    ; 3 uses
  %i.abf = shl i64 %n.vec, 3                      ; 2 uses
  %i.abg = getelementptr i8, ptr %i.aaw, i64 %i.abf ; 2 uses
  %i.abh = getelementptr i8, ptr %i.yo, i64 %i.abf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abi = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aaw, i64 %i.abi ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.yo, i64 %i.abi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abj = getelementptr i8, ptr %next.gep493, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep493, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %wide.load494 = load <2 x i64>, ptr %i.abj, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %i.abk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  store <2 x i64> %wide.load494, ptr %i.abk, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abl = icmp eq i64 %index.next, %n.vec
  br i1 %i.abl, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i.preheader516

.lr.ph.i.i.i.i.i.i203.i.preheader516:             ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader, %middle.block
  %.012.i.i.i.i.i.i204.i.ph = phi ptr [ %i.aaw, %.lr.ph.i.i.i.i.i.i203.i.preheader ], [ %i.abg, %middle.block ]
  %.0911.i.i.i.i.i.i205.i.ph = phi ptr [ %i.yo, %.lr.ph.i.i.i.i.i.i203.i.preheader ], [ %i.abh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i203.i

.lr.ph.i.i.i.i.i.i203.i:                          ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader516, %.lr.ph.i.i.i.i.i.i203.i
  %.012.i.i.i.i.i.i204.i = phi ptr [ %i.abo, %.lr.ph.i.i.i.i.i.i203.i ], [ %.012.i.i.i.i.i.i204.i.ph, %.lr.ph.i.i.i.i.i.i203.i.preheader516 ] ; 2 uses
  %.0911.i.i.i.i.i.i205.i = phi ptr [ %i.abn, %.lr.ph.i.i.i.i.i.i203.i ], [ %.0911.i.i.i.i.i.i205.i.ph, %.lr.ph.i.i.i.i.i.i203.i.preheader516 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abm = load i64, ptr %.0911.i.i.i.i.i.i205.i, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  store i64 %i.abm, ptr %.012.i.i.i.i.i.i204.i, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %i.abn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i205.i, i64 8 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i204.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i206.i = icmp eq ptr %i.abn, %i.yp
  br i1 %.not.i.i.i.i.i.i206.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i, !llvm.loop !292

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i: ; preds = %.lr.ph.i.i.i.i.i.i203.i, %middle.block, %.noexc212.i
  %.0.lcssa.i.i.i.i.i.i208.i = phi ptr [ %i.aaw, %.noexc212.i ], [ %i.abg, %middle.block ], [ %i.abo, %.lr.ph.i.i.i.i.i.i203.i ]
  %i.abp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i208.i, i64 8 ; 2 uses
  %.not.i23.i.i.i209.i = icmp eq ptr %i.yo, null
  br i1 %.not.i23.i.i.i209.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yo, i64 noundef %i.aao) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i: ; preds = %bb.fl, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i
  store ptr %i.aaw, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.abp, ptr %i.ya, align 8, !tbaa !260, !alias.scope !245
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.aaw, i64 %i.aau ; 2 uses
  store ptr %i.abq, ptr %i.yb, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i, %bb.fi
  %i.abr = phi ptr [ %i.aaw, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.yo, %bb.fi ]
  %i.abs = phi ptr [ %i.abq, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.yp, %bb.fi ]
  %i.abt = phi ptr [ %i.abp, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.aal, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i, %_ZNSirsERl.exit.i
  %i.abu = phi ptr [ %i.abr, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.yo, %_ZNSirsERl.exit.i ]
  %i.abv = phi ptr [ %i.abs, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.yp, %_ZNSirsERl.exit.i ]
  %i.abw = phi ptr [ %i.abt, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.yq, %_ZNSirsERl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  store ptr %i.yc, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.abx = load i64, ptr %i.ye, align 8, !noalias !245
  %i.aby = getelementptr inbounds i8, ptr %24, i64 %i.abx
  store ptr %i.yd, ptr %i.aby, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yf, align 8, !tbaa !61, !noalias !245
  %i.abz = load ptr, ptr %i.yg, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aca = icmp eq ptr %i.abz, %i.yh
  br i1 %i.aca, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i: ; preds = %bb.fm
  %i.acb = load i64, ptr %i.yh, align 8, !tbaa !31, !noalias !245
  %i.acc = add i64 %i.acb, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acc) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yf, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.yi) #30, !noalias !245
  store ptr %i.yj, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.acd = load i64, ptr %i.yl, align 8, !noalias !245
  %i.ace = getelementptr inbounds i8, ptr %24, i64 %i.acd
  store ptr %i.yk, ptr %i.ace, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.ym, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.yn) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i, %bb.ex, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i
  %i.acf = phi ptr [ %i.abu, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.yo, %bb.ex ], [ %i.yo, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.acg = phi ptr [ %i.abv, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.yp, %bb.ex ], [ %i.yp, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.ach = phi ptr [ %i.abw, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.yq, %bb.ex ], [ %i.yq, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.aci = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.acj = getelementptr i8, ptr %i.aci, i64 -24
  %i.ack = load i64, ptr %i.acj, align 8, !noalias !245 ; 2 uses
  %i.acl = getelementptr inbounds i8, ptr %10, i64 %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !72, !noalias !245
  %i.aco = and i32 %i.acn, 5
  %.not.i173.i = icmp eq i32 %i.aco, 0
  br i1 %.not.i173.i, label %bb.et, label %._crit_edge.i, !llvm.loop !283

.loopexit339.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i, %bb.fg
  %lpad.loopexit341.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.loopexit.split-lp340.i:                          ; preds = %bb.fk
  %lpad.loopexit.split-lp342.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fn:                                            ; preds = %.loopexit.split-lp340.i, %.loopexit339.i
  %lpad.phi343.i = phi { ptr, i32 } [ %lpad.loopexit341.i, %.loopexit339.i ], [ %lpad.loopexit.split-lp342.i, %.loopexit.split-lp340.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.ff
  %.pn54.i = phi { ptr, i32 } [ %lpad.phi343.i, %bb.fn ], [ %i.aai, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fe
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %bb.fo ], [ %i.aah, %bb.fe ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %24) #30, !noalias !245
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fd
  %.pn54.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.i, %bb.fp ], [ %i.aag, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %bb.fr

._crit_edge.i:                                    ; preds = %.backedge.i
  %.pre.i88 = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.acp = icmp eq ptr %.pre.i88, %i.xt
  br i1 %i.acp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i: ; preds = %._crit_edge.i
  %i.acq = load i64, ptr %i.xt, align 8, !tbaa !31, !noalias !245
  %i.acr = add i64 %i.acq, 1
  call void @_ZdlPvm(ptr noundef %.pre.i88, i64 noundef %i.acr) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i: ; preds = %bb.es, %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  br label %bb.hl

bb.fr:                                            ; preds = %bb.fq, %.loopexit.split-lp335.i, %.loopexit334.i
  %.pn54.pn.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.pn.i, %bb.fq ], [ %lpad.loopexit336.i, %.loopexit334.i ], [ %lpad.loopexit.split-lp337.i, %.loopexit.split-lp335.i ] ; 2 uses
  %i.acs = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.xt
  br i1 %i.act, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i: ; preds = %bb.fr
  %i.acu = load i64, ptr %i.xt, align 8, !tbaa !31, !noalias !245
  %i.acv = add i64 %i.acu, 1
  call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acv) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  %i.acw = load ptr, ptr %41, align 16, !tbaa !25, !alias.scope !245 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !31
  store i8 %i.o, ptr %i.k, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !30
  store i64 %.0, ptr %i.b, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !40

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !31
  store i8 %i.t, ptr %i.s, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !31
  store i8 %i.x, ptr %i.w, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !31
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !30
  store i64 %.0, ptr %i.h, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 88                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 104811045873349725)
  %i.l = select i1 %i.j, i64 104811045873349725, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 88                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN14arrow_vendored4date9time_zoneC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !335, !noalias !338
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !30, !alias.scope !338, !noalias !335 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39, !alias.scope !338, !noalias !335 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !340
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !30, !alias.scope !335, !noalias !338
  %i.z = load i64, ptr %i.t, align 8, !tbaa !31, !alias.scope !338, !noalias !335
  store i64 %i.z, ptr %i.r, align 8, !tbaa !31, !alias.scope !335, !noalias !338
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !39, !alias.scope !338, !noalias !335
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !39, !alias.scope !335, !noalias !338
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !30, !alias.scope !338, !noalias !335
  store i64 0, ptr %i.ab, align 8, !tbaa !39, !alias.scope !338, !noalias !335
  store i8 0, ptr %i.t, align 8, !tbaa !31, !alias.scope !338, !noalias !335
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !73, !alias.scope !338, !noalias !335
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !73, !alias.scope !335, !noalias !338
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48, !alias.scope !338, !noalias !335
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !48, !alias.scope !335, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !335
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !91, !alias.scope !338, !noalias !335
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !91, !alias.scope !335, !noalias !338
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54, !alias.scope !338, !noalias !335
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !54, !alias.scope !335, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !335
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !43, !alias.scope !338, !noalias !335
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !43, !alias.scope !335, !noalias !338
  store ptr null, ptr %i.aq, align 8, !tbaa !43, !alias.scope !338, !noalias !335
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !341

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ], [ %i.at, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34
  %.012.i.i.i29 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.au, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 10 uses
  %.0911.i.i.i30 = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.av, ptr %.012.i.i.i29, align 8, !tbaa !38, !alias.scope !342, !noalias !345
  %i.aw = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !30, !alias.scope !345, !noalias !342 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

bb.d:                                             ; preds = %.lr.ph.i.i.i28
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !39, !alias.scope !345, !noalias !342 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !347
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.aw, ptr %.012.i.i.i29, align 8, !tbaa !30, !alias.scope !342, !noalias !345
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !31, !alias.scope !345, !noalias !342
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !31, !alias.scope !342, !noalias !345
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !39, !alias.scope !345, !noalias !342
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34

_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31, %bb.d
  %i.be = phi i64 [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31 ], [ %i.ba, %bb.d ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !39, !alias.scope !342, !noalias !345
  store ptr %i.ax, ptr %.0911.i.i.i30, align 8, !tbaa !30, !alias.scope !345, !noalias !342
  store i64 0, ptr %i.bf, align 8, !tbaa !39, !alias.scope !345, !noalias !342
  store i8 0, ptr %i.ax, align 8, !tbaa !31, !alias.scope !345, !noalias !342
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !73, !alias.scope !345, !noalias !342
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !73, !alias.scope !342, !noalias !345
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !48, !alias.scope !345, !noalias !342
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !48, !alias.scope !342, !noalias !345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false), !alias.scope !345, !noalias !342
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 56 ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !91, !alias.scope !345, !noalias !342
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !91, !alias.scope !342, !noalias !345
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !54, !alias.scope !345, !noalias !342
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !54, !alias.scope !342, !noalias !345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !alias.scope !345, !noalias !342
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 80 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !43, !alias.scope !345, !noalias !342
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !43, !alias.scope !342, !noalias !345
  store ptr null, ptr %i.bu, align 8, !tbaa !43, !alias.scope !345, !noalias !342
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 88 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 88 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bw, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, label %.lr.ph.i.i.i28, !llvm.loop !341

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.au, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bx, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !29
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cb) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !27
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !28
  %i.cc = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !29
  ret void

bb.f:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  %i.cg = tail call ptr @__cxa_begin_catch(ptr %i.cf) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.cd

bb.i:                                             ; preds = %bb.f
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #29
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN14arrow_vendored4date9time_zoneESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bh = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !31
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #28
  br label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit

_ZN14arrow_vendored4date9time_zoneD2Ev.exit:      ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #21

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #22

declare noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL10load_leapsIiEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 6 uses
  %4 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not22 = icmp eq i32 %2, 0
  br i1 %.not22, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  store ptr %i.i, ptr %i.e, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit
  %.017 = phi i32 [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i ], [ %i.w, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 4, !tbaa !3
  %i.n = call noundef i32 @llvm.bswap.i32(i32 %i.m) ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.neg16 = add i32 %i.n, 1
  %i.q = sub i32 %.neg16, %i.p
  %i.r = sext i32 %i.q to i64
  store i64 %i.r, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !260  ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.f
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.j, align 8, !tbaa !260
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit unwind label %bb.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit: ; preds = %bb.g, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.w = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !360

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !260  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !25     ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = shl nuw nsw i64 %i.m, 3                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #32 ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %i.t = add i64 %i.a, -8
  %i.u = sub i64 %i.t, %i.f                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 56
  %i.x = sub i64 %i.r, %i.f
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.d, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.d, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ac = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %wide.load49 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  store <2 x i64> %wide.load49, ptr %i.ad, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.af = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  store i64 %i.af, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !367

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i52 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader

.lr.ph.i.i.i28.preheader:                         ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aj = add i64 %i.e, -8
  %i.ak = sub i64 %i.aj, %i.a                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.ak, 72
  br i1 %min.iters.check55, label %.lr.ph.i.i.i28.preheader70, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.i.i.i28.preheader
  %i.an = add i64 %.0.lcssa.i.i.i52, 8
  %i.ao = sub i64 %i.an, %i.a
  %diff.check53 = icmp ult i64 %i.ao, 32
  br i1 %diff.check53, label %.lr.ph.i.i.i28.preheader70, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck51
  %n.vec58 = and i64 %i.am, 4611686018427387900   ; 3 uses
  %i.ap = shl i64 %n.vec58, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ai, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %i.ap
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.as = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ai, i64 %i.as ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.at = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %wide.load64 = load <2 x i64>, ptr %i.at, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %i.au = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x i64> %wide.load63, ptr %next.gep61, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  store <2 x i64> %wide.load64, ptr %i.au, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.av, label %middle.block66, label %vector.body59, !llvm.loop !373

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %i.am, %n.vec58
  br i1 %cmp.n67, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader70

.lr.ph.i.i.i28.preheader70:                       ; preds = %vector.memcheck51, %.lr.ph.i.i.i28.preheader, %middle.block66
  %.012.i.i.i29.ph = phi ptr [ %i.ai, %vector.memcheck51 ], [ %i.ai, %.lr.ph.i.i.i28.preheader ], [ %i.aq, %middle.block66 ]
  %.0911.i.i.i30.ph = phi ptr [ %1, %vector.memcheck51 ], [ %1, %.lr.ph.i.i.i28.preheader ], [ %i.ar, %middle.block66 ]
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28.preheader70, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ay, %.lr.ph.i.i.i28 ], [ %.012.i.i.i29.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.ax, %.lr.ph.i.i.i28 ], [ %.0911.i.i.i30.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.aw = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  store i64 %i.aw, ptr %.012.i.i.i29, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !374

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %middle.block66, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ai, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.aq, %middle.block66 ], [ %i.ay, %.lr.ph.i.i.i28 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.d, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !25
  store ptr %.0.lcssa.i.i.i32, ptr %i.b, align 8, !tbaa !260
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !26
  ret void

bb.d:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = tail call ptr @__cxa_begin_catch(ptr %i.bg) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #28
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.be

bb.g:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL10load_leapsIlEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 6 uses
  %4 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev:bb.a
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #29
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 225 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !398, !range !87, !noundef !88
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !198
  %.not.i1.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 32)
          to label %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.i, !inline_history !399 ; 0 uses

.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc8
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.e, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.i, align 1, !tbaa !398
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.t = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store i8 48, ptr %i.u, align 8, !tbaa !400
  %i.v = getelementptr i8, ptr %i.t, i64 -24      ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 130, ptr %i.y, align 8, !tbaa !401
  %i.z = load i64, ptr %i.v, align 8
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 2, ptr %i.ab, align 8, !tbaa !158
  %i.ac = load i64, ptr %0, align 8, !tbaa !78
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ac)
          to label %_ZNSolsEl.exit unwind label %bb.i ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %._crit_edge.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !410
  %i.ag = and i32 %i.af, 8192
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSolsEl.exit
  %i.ah = call noundef i32 @_ZSt19uncaught_exceptionsv() #33
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %2, align 8, !tbaa !413, !nonnull !88, !align !414 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !72
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !415 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(64) %i.ao)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit unwind label %bb.h, !inline_history !416 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit: ; preds = %_ZNSolsEl.exit, %bb.e, %bb.f, %bb.g
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %1

bb.i:                                             ; preds = %._crit_edge.i.i, %.noexc8, %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL12load_indicesERSii(ptr dead_on_unwind noalias nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !114
  store ptr %i.d, ptr %i.e, align 8, !tbaa !422
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store ptr %i.f, ptr %i.b, align 8, !tbaa !117
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ] ; 4 uses
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.c unwind label %.loopexit  ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !117
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.a, align 1, !tbaa !31
  store i8 %i.l, ptr %i.i, align 1, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !422
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !114    ; 5 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 8 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775807
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.s = add i64 %.sroa.speculated.i.i.i, %i.q    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807)
  %i.v = select i1 %i.t, i64 9223372036854775807, i64 %i.u ; 2 uses
  %3 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i unwind label %.loopexit ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.q ; 2 uses
  %i.x = load i8, ptr %i.a, align 1, !tbaa !31
  store i8 %i.x, ptr %i.w, align 1, !tbaa !31
  %i.y = icmp sgt i64 %i.q, 0
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %3, ptr %0, align 8, !tbaa !114
  store ptr %i.z, ptr %i.h, align 8, !tbaa !422
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !117
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.d
  %i.ab = phi ptr [ %i.z, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ac = add nuw nsw i32 %.013, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !423

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !114
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit, %bb.a, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pre = phi ptr [ %.pre.pre, %.loopexit ], [ %i.n, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %.pre to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ag) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL11load_ttinfoERSii(ptr dead_on_unwind noalias nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::detail::ttinfo", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !109
  store ptr %i.d, ptr %i.e, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.b
  store ptr %i.f, ptr %i.a, align 8, !tbaa !116
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_M_allocateEm.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 4 uses
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i64 noundef 6)
          to label %bb.c unwind label %.loopexit  ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %3, align 8, !tbaa !3
  %i.l = call noundef i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %3, align 8, !tbaa !3
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.i, %i.m
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %3, align 8
  store i64 %i.n, ptr %i.i, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.h, align 8, !tbaa !106
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !109    ; 5 uses
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #32
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  %i.ac = load i64, ptr %3, align 8
  store i64 %i.ac, ptr %i.ab, align 4
  %i.ad = icmp sgt i64 %i.s, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.g:                                             ; preds = %.noexc11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.g, %.noexc11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !109
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.af, ptr %i.a, align 8, !tbaa !116
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d
  %i.ag = phi ptr [ %i.ae, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ah = add nuw nsw i32 %.013, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !424

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_M_allocateEm.exit.i
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pre = phi ptr [ %.pre.pre, %.loopexit ], [ %i.p, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.pre to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.al) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.p = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !428, !noalias !425
  store i64 %i.p, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !425, !noalias !428
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !38, !alias.scope !425, !noalias !428
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !30, !alias.scope !428, !noalias !425 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39, !alias.scope !428, !noalias !425 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false), !alias.scope !430
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.t, ptr %i.q, align 8, !tbaa !30, !alias.scope !425, !noalias !428
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !31, !alias.scope !428, !noalias !425
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !31, !alias.scope !425, !noalias !428
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !39, !alias.scope !428, !noalias !425
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !39, !alias.scope !425, !noalias !428
  store ptr %i.u, ptr %i.r, align 8, !tbaa !30, !alias.scope !428, !noalias !425
  store i64 0, ptr %i.ac, align 8, !tbaa !39, !alias.scope !428, !noalias !425
  store i8 0, ptr %i.u, align 8, !tbaa !31, !alias.scope !428, !noalias !425
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !84, !range !87, !alias.scope !428, !noalias !425, !noundef !88
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !84, !alias.scope !425, !noalias !428
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.ah, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !431

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit
  %i.aj = phi ptr [ %.pre, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.aj, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !75
  store i64 %i.r, ptr %i.q, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !38
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !30
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !31
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !39
  store ptr %i.w, ptr %i.t, align 8, !tbaa !30
  store i64 0, ptr %i.ae, align 8, !tbaa !39
  store i8 0, ptr %i.w, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !84, !range !87, !noundef !88
  store i8 %i.ai, ptr %i.ag, align 8, !tbaa !84
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !435, !noalias !432
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !432, !noalias !435
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !38, !alias.scope !432, !noalias !435
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !30, !alias.scope !435, !noalias !432 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39, !alias.scope !435, !noalias !432 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false), !alias.scope !437
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !30, !alias.scope !432, !noalias !435
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !31, !alias.scope !435, !noalias !432
  store i64 %i.au, ptr %i.am, align 8, !tbaa !31, !alias.scope !432, !noalias !435
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !39, !alias.scope !435, !noalias !432
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.av = phi i64 [ %i.ar, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !39, !alias.scope !432, !noalias !435
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !30, !alias.scope !435, !noalias !432
  store i64 0, ptr %i.aw, align 8, !tbaa !39, !alias.scope !435, !noalias !432
  store i8 0, ptr %i.ao, align 8, !tbaa !31, !alias.scope !435, !noalias !432
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !84, !range !87, !alias.scope !435, !noalias !432, !noundef !88
  store i8 %i.ba, ptr %i.ay, align 8, !tbaa !84, !alias.scope !432, !noalias !435
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !431

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ], [ %i.bc, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bd, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.be = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !75, !alias.scope !441, !noalias !438
  store i64 %i.be, ptr %.012.i.i.i18, align 8, !tbaa !75, !alias.scope !438, !noalias !441
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !38, !alias.scope !438, !noalias !441
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !30, !alias.scope !441, !noalias !438 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39, !alias.scope !441, !noalias !438 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false), !alias.scope !443
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !30, !alias.scope !438, !noalias !441
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !31, !alias.scope !441, !noalias !438
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !31, !alias.scope !438, !noalias !441
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !39, !alias.scope !441, !noalias !438
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bq = phi i64 [ %i.bm, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !39, !alias.scope !438, !noalias !441
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !30, !alias.scope !441, !noalias !438
  store i64 0, ptr %i.br, align 8, !tbaa !39, !alias.scope !441, !noalias !438
  store i8 0, ptr %i.bj, align 8, !tbaa !31, !alias.scope !441, !noalias !438
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !84, !range !87, !alias.scope !441, !noalias !438, !noundef !88
  store i8 %i.bv, ptr %i.bt, align 8, !tbaa !84, !alias.scope !438, !noalias !441
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bw, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !431

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bd, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bx, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cb) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !49
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !52
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE14_M_emplace_auxIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENSJ_IPKS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 8 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !75 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.copyload.i, ptr %i.f, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.k, ptr %i.e, align 8, !tbaa !92
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !90
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.e, align 8, !tbaa !92
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 4                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f, !prof !89

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.l, i64 %i.r, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.r, 16
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !90
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i64 %.sroa.0.0.copyload.i, ptr %i.l, align 8, !tbaa !75
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.7.8..sroa_idx, align 8, !tbaa !91
  %.pre = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.y = ptrtoint ptr %i.f to i64
  %i.z = sub i64 %i.y, %i.c                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775792
  br i1 %i.aa, label %bb.j, label %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ab = ashr exact i64 %i.z, 4                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 576460752303423487)
  %i.af = select i1 %i.ad, i64 576460752303423487, i64 %i.ae ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %2, align 8, !tbaa !75
  store i64 %.sroa.0.0.copyload.i.i9, ptr %i.ai, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !81
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.a, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !444
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i26.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i26.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, label %.lr.ph.i.i.i27.i

.lr.ph.i.i.i27.i:                                 ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, %.lr.ph.i.i.i27.i
  %.012.i.i.i28.i = phi ptr [ %i.ao, %.lr.ph.i.i.i27.i ], [ %i.am, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ] ; 2 uses
  %.0911.i.i.i29.i = phi ptr [ %i.an, %.lr.ph.i.i.i27.i ], [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i28.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i29.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !448
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i28.i, i64 16 ; 2 uses
  %.not.i.i.i30.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i30.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, label %.lr.ph.i.i.i27.i, !llvm.loop !101

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i: ; preds = %.lr.ph.i.i.i27.i, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.0.lcssa.i.i.i31.i = phi ptr [ %i.am, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ], [ %i.ao, %.lr.ph.i.i.i27.i ]
  %.not.i33.i = icmp eq ptr %i.a, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, %bb.k
  store ptr %i.ah, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i31.i, ptr %i.e, align 8, !tbaa !92
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.as, ptr %i.g, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.h, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit
  %i.at = phi ptr [ %i.a, %bb.c ], [ %.pre, %bb.h ], [ %i.ah, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.d
  ret ptr %i.au
}

declare void @__once_proxy() #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK14arrow_vendored4date9time_zone4initEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_8__invokeEv"() #8 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !452
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !132
  tail call void @_ZN14arrow_vendored4date9time_zone9init_implEv(ptr noundef nonnull align 8 dereferenceable(88) %.val.val.i)
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !24, i64 80}
!8 = !{!"_ZTSN14arrow_vendored4date4tzdbE", !9, i64 0, !14, i64 32, !19, i64 56, !24, i64 80}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !5, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE", !15, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE12_Vector_implE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 _ZTSN14arrow_vendored4date9time_zoneE", !12, i64 0}
!19 = !{!"_ZTSSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN14arrow_vendored4date11leap_secondE", !12, i64 0}
!24 = !{!"p1 _ZTSN14arrow_vendored4date4tzdbE", !12, i64 0}
!25 = !{!22, !23, i64 0}
!26 = !{!22, !23, i64 16}
!27 = !{!17, !18, i64 0}
!28 = !{!17, !18, i64 8}
!29 = !{!17, !18, i64 16}
!30 = !{!9, !11, i64 0}
!31 = !{!5, !5, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !24, i64 0}
!35 = !{!"_ZTSSt13__atomic_baseIPN14arrow_vendored4date4tzdbEE", !24, i64 0}
!36 = !{!"branch_weights", i32 1, i32 1048575}
!37 = !{!24, !24, i64 0}
!38 = !{!10, !11, i64 0}
!39 = !{!9, !13, i64 8}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!42, !4, i64 0}
!42 = !{!"_ZTSSt9once_flag", !4, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTSSt9once_flag", !12, i64 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
end_hunk_6
