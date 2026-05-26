inline.NumInlined: 2498
inline.NumDeleted: 992
begin_hunk_0_@_ZN14arrow_vendored4date9time_zone9init_implEv:bb.a
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !84, !range !87, !noundef !88
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !84, !range !87, !noundef !88
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
  %i.g = phi ptr [ %i.af, %bb.g ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 7 uses
  %i.h = phi ptr [ %i.ae, %bb.g ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 6 uses
  %i.i = phi ptr [ %.sroa.8.0173, %bb.g ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.0819.i = phi i32 [ %i.ag, %bb.g ], [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
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
  %11 = icmp ult i64 %i.t, %i.s
  %i.u = call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %12 = select i1 %11, i64 576460752303423487, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %12, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %12, 4
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !94 ; 8 uses

.noexc14.i:                                       ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q ; 2 uses
  store i64 %i.m, ptr %i.x, align 8, !tbaa !75, !noalias !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !81, !noalias !94
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %.loopexit175, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.noexc14.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %.noexc14.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !97, !noalias !94
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit175, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

.loopexit175:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc14.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.q) #28, !noalias !94
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %12 ; 4 uses
  %.sroa.0.0.copyload.i.i15.i.pre = load i64, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !75, !noalias !94
  %i.ac = icmp slt i64 %.sroa.0.0.copyload.i.i15.i.pre, -1096193779200
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit175
  store i64 -1096193779200, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !75, !noalias !94
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ad = landingpad { ptr, i32 }
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
  %i.ae = phi ptr [ %i.h, %.thread ], [ %i.ab, %bb.e ], [ %i.ab, %.loopexit175 ]
  %i.af = phi ptr [ %i.g, %.thread ], [ %i.w, %bb.e ], [ %i.w, %.loopexit175 ]
  %.sroa.085.1172 = phi ptr [ %.sroa.085.0, %.thread ], [ %i.w, %bb.e ], [ %i.w, %.loopexit175 ] ; 2 uses
  %.sroa.12.1171 = phi ptr [ %.sroa.12.0, %.thread ], [ %i.ab, %bb.e ], [ %i.ab, %.loopexit175 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !94
  %i.ag = add nuw nsw i32 %.0819.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ag, %3
  br i1 %exitcond.not.i, label %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit, label %.lr.ph.i, !llvm.loop !102

bb.h:                                             ; preds = %bb.f, %.loopexit.i, %.loopexit.split-lp.i
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !94
  %i.ah = ptrtoint ptr %i.h to i64
  %i.ai = ptrtoint ptr %i.g to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.aj) #28, !noalias !94
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNSt6vectorIhSaIhEED2Ev.exit75
  %common.resume.op = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit75 ], [ %.pn.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit: ; preds = %bb.g, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i
  %.sroa.12.2 = phi ptr [ null, %bb.a ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.12.1171, %bb.g ]
  %.sroa.8.1 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.8.0173, %bb.g ]
  %.sroa.085.2 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.085.1172, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  store ptr %.sroa.085.2, ptr %i.ak, align 8, !tbaa !45
  store ptr %.sroa.8.1, ptr %i.am, align 8, !tbaa !92
  store ptr %.sroa.12.2, ptr %i.an, align 8, !tbaa !48
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %bb.i, %_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN14arrow_vendored4dateL12load_indicesERSii(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL11load_ttinfoERSii(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %4)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.as, ptr %8, align 8, !tbaa !38, !alias.scope !103
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !39, !alias.scope !103
  store i8 0, ptr %i.as, align 8, !tbaa !31, !alias.scope !103
  %i.au = zext i32 %5 to i64                      ; 4 uses
  %.not.i47 = icmp eq i32 %5, 0
  br i1 %.not.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.j
  %.not.i.i.i.i48 = icmp ugt i32 %5, 15
  br i1 %.not.i.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.au, i64 30) ; 2 uses
  %i.av = add nuw nsw i64 %spec.select.i, 1
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i unwind label %bb.l ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  store ptr %i.aw, ptr %8, align 8, !tbaa !30, !alias.scope !103
  store i64 %spec.select.i, ptr %i.as, align 8, !tbaa !31, !alias.scope !103
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i32 %5, 1
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i
  %i.ax = phi ptr [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 0, i64 %i.au, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.ay = phi ptr [ %i.ax, %bb.k ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.au, ptr %i.at, align 8, !tbaa !39, !alias.scope !103
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.au
  store i8 0, ptr %i.az, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i: ; preds = %.sink.split.i.i, %bb.j
  %i.ba = phi ptr [ %.pre.i, %.sink.split.i.i ], [ %i.as, %bb.j ]
  %i.bb = sext i32 %5 to i64
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
          to label %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !103 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.as
  br i1 %i.bf, label %.body, label %.body.sink.split

_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i
  %i.bg = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, !prof !36

bb.m:                                             ; preds = %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bi = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i49 = icmp eq i32 %i.bi, 0
  br i1 %.not.i49, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = call i32 @__cxa_atexit(ptr nonnull @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit

bb.p:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %.body50

_ZN14arrow_vendored4date13get_tzdb_listEv.exit:   ; preds = %bb.o, %bb.m, %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bl = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !74
  %i.bq = icmp eq ptr %i.bn, %i.bp
  %i.br = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.br, %i.bq
  br i1 %or.cond, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL10load_leapsIiEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !25 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26
  %i.bv = load <2 x ptr>, ptr %9, align 16, !tbaa !74
  store <2 x ptr> %i.bv, ptr %i.bm, align 8, !tbaa !74
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !26
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !26
  %.not.i.i.i.i.i52 = icmp eq ptr %i.bs, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i52, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit: ; preds = %bb.r
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ca) #28
  %.pr = load ptr, ptr %9, align 16, !tbaa !25    ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit
  %i.cb = load ptr, ptr %i.bw, align 16, !tbaa !26
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %.pr to i64
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  br label %.body50

bb.av:                                            ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail15expanded_ttinfoESt6vectorIS5_SaIS5_EEEEZNS3_9time_zone9load_dataIiEEvRSiiiiiEUlRKS5_E_ET_SH_SH_T0_.exit.thread, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail15expanded_ttinfoESt6vectorIS5_SaIS5_EEEEZNS3_9time_zone9load_dataIiEEvRSiiiiiEUlRKS5_E_ET_SH_SH_T0_.exit
  %.sroa.076.0 = phi ptr [ %i.ey, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail15expanded_ttinfoESt6vectorIS5_SaIS5_EEEEZNS3_9time_zone9load_dataIiEEvRSiiiiiEUlRKS5_E_ET_SH_SH_T0_.exit.thread ], [ %.sroa.08.0.in.sroa.speculated.i.i.i, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date6detail15expanded_ttinfoESt6vectorIS5_SaIS5_EEEEZNS3_9time_zone9load_dataIiEEvRSiiiiiEUlRKS5_E_ET_SH_SH_T0_.exit ]
  %i.go = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %.sroa.076.0, ptr %i.gp, align 8, !tbaa !81
  %.pre125 = load ptr, ptr %i.am, align 8, !tbaa !92
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.aj
  %i.gq = phi ptr [ %i.go, %bb.av ], [ %i.cx, %bb.aj ] ; 2 uses
  %i.gr = phi ptr [ %.pre125, %bb.av ], [ %i.cy, %bb.aj ]
  %.037 = phi i32 [ 1, %bb.av ], [ 0, %bb.aj ]    ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = ashr exact i64 %i.gu, 4                 ; 2 uses
  %i.gw = zext nneg i32 %.037 to i64              ; 2 uses
  %i.gx = icmp ugt i64 %i.gv, %i.gw
  br i1 %i.gx, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.aw
  %i.gy = load ptr, ptr %i.ci, align 8, !tbaa !49
  %i.gz = load ptr, ptr %6, align 8, !tbaa !114
  br label %bb.az

._crit_edge110:                                   ; preds = %bb.az, %bb.aw
  %i.ha = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.as
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge110
  %i.hc = load i64, ptr %i.as, align 8, !tbaa !31
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.not.i.i.i67 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !116
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.hh) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.hi = load ptr, ptr %6, align 8, !tbaa !114   ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !117
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.az:                                            ; preds = %.lr.ph109, %bb.az
  %i.ho = phi i64 [ %i.gw, %.lr.ph109 ], [ %i.hy, %bb.az ]
  %.0107 = phi i32 [ 0, %.lr.ph109 ], [ %i.hx, %bb.az ] ; 2 uses
  %.138106 = phi i32 [ %.037, %.lr.ph109 ], [ %i.hw, %bb.az ]
  %i.hp = zext i32 %.0107 to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !31
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [48 x i8], ptr %i.gy, i64 %i.hs
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.ho
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.ht, ptr %i.hv, align 8, !tbaa !81
  %i.hw = add i32 %.138106, 1                     ; 2 uses
  %i.hx = add i32 %.0107, 1
  %i.hy = zext i32 %i.hw to i64                   ; 2 uses
  %i.hz = icmp ugt i64 %i.gv, %i.hy
  br i1 %i.hz, label %bb.az, label %._crit_edge110, !llvm.loop !118

.body50:                                          ; preds = %bb.u, %bb.p, %bb.au, %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit65, %bb.v
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_ZN14arrow_vendored4date6detail15expanded_ttinfoD2Ev.exit65 ], [ %i.ch, %bb.v ], [ %i.gn, %bb.au ], [ %i.bk, %bb.p ], [ %i.cg, %bb.u ] ; 2 uses
  %i.ia = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.as
  br i1 %i.ib, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body50, %bb.l
  %.sink = phi ptr [ %i.be, %bb.l ], [ %i.ia, %.body50 ]
  %.pn42.pn.pn.ph = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %.pn42.pn, %.body50 ]
  %i.ic = load i64, ptr %i.as, align 8, !tbaa !31
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.id) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body50, %bb.l
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %.pn42.pn, %.body50 ], [ %.pn42.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ie = load ptr, ptr %7, align 8, !tbaa !109   ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73, label %bb.ba

bb.ba:                                            ; preds = %.body
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !116
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ij) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73: ; preds = %bb.ba, %.body, %bb.t
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.t ], [ %.pn42.pn.pn, %.body ], [ %.pn42.pn.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ik = load ptr, ptr %6, align 8, !tbaa !114   ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIhSaIhEED2Ev.exit75, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit73
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !117
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #28
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
  %i.g = phi ptr [ %i.ab, %bb.i ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 7 uses
  %i.h = phi ptr [ %i.ac, %bb.i ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 6 uses
  %i.i = phi ptr [ %.sroa.8.0, %bb.i ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.0819.i = phi i32 [ %i.af, %bb.i ], [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
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
  %11 = icmp ult i64 %i.s, %i.r
  %i.t = call i64 @llvm.umin.i64(i64 %i.s, i64 576460752303423487)
  %12 = select i1 %11, i64 576460752303423487, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %12, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %12, 4
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #32
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !119 ; 6 uses

.noexc14.i:                                       ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p ; 2 uses
  store i64 %i.l, ptr %i.w, align 8, !tbaa !75, !noalias !119
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !81, !noalias !119
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.noexc14.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %.noexc14.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !122, !noalias !119
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc14.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.p) #28, !noalias !119
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %12 ; 2 uses
  %.sroa.0.0.copyload.i.i15.i.pre = load i64, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !75, !noalias !119
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c
  %.sroa.0.0.copyload.i.i15.i = phi i64 [ %.sroa.0.0.copyload.i.i15.i.pre, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.l, %bb.c ]
  %.sroa.12.1 = phi ptr [ %i.aa, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.12.0, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.085.1 = phi ptr [ %i.v, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.085.0, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.v, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.ac = phi ptr [ %i.aa, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.ad = icmp slt i64 %.sroa.0.0.copyload.i.i15.i, -1096193779200
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i64 -1096193779200, ptr %.0.lcssa.i.i.i.i.i.i.pn, align 8, !tbaa !75, !noalias !119
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ae = landingpad { ptr, i32 }
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
  %i.af = add nuw nsw i32 %.0819.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.af, %3
  br i1 %exitcond.not.i, label %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit, label %.lr.ph.i, !llvm.loop !126

bb.j:                                             ; preds = %bb.h, %.loopexit.i, %.loopexit.split-lp.i
  %.pn.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !119
  %i.ag = ptrtoint ptr %i.h to i64
  %i.ah = ptrtoint ptr %i.g to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.ai) #28, !noalias !119
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %_ZNSt6vectorIhSaIhEED2Ev.exit75
  %common.resume.op = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit75 ], [ %.pn.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit: ; preds = %bb.i, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i
  %.sroa.12.2 = phi ptr [ null, %bb.a ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.12.1, %bb.i ]
  %.sroa.8.1 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.8.0, %bb.i ]
  %.sroa.085.2 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.085.1, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  store ptr %.sroa.085.2, ptr %i.aj, align 8, !tbaa !45
  store ptr %.sroa.8.1, ptr %i.al, align 8, !tbaa !92
  store ptr %.sroa.12.2, ptr %i.am, align 8, !tbaa !48
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.aq) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %bb.k, %_ZN14arrow_vendored4dateL16load_transitionsIlEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN14arrow_vendored4dateL12load_indicesERSii(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL11load_ttinfoERSii(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %4)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.ar, ptr %8, align 8, !tbaa !38, !alias.scope !127
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !39, !alias.scope !127
  store i8 0, ptr %i.ar, align 8, !tbaa !31, !alias.scope !127
  %i.at = zext i32 %5 to i64                      ; 4 uses
  %.not.i47 = icmp eq i32 %5, 0
  br i1 %.not.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.l
  %.not.i.i.i.i48 = icmp ugt i32 %5, 15
  br i1 %.not.i.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.at, i64 30) ; 2 uses
  %i.au = add nuw nsw i64 %spec.select.i, 1
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #32
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i unwind label %bb.n ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  store ptr %i.av, ptr %8, align 8, !tbaa !30, !alias.scope !127
  store i64 %spec.select.i, ptr %i.ar, align 8, !tbaa !31, !alias.scope !127
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i32 %5, 1
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i
  %i.aw = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.thread.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.at, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.ax = phi ptr [ %i.aw, %bb.m ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.at, ptr %i.as, align 8, !tbaa !39, !alias.scope !127
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  store i8 0, ptr %i.ay, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i: ; preds = %.sink.split.i.i, %bb.l
  %i.az = phi ptr [ %.pre.i, %.sink.split.i.i ], [ %i.ar, %bb.l ]
  %i.ba = sext i32 %5 to i64
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.az, i64 noundef %i.ba)
          to label %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !127 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ar
  br i1 %i.be, label %.body, label %.body.sink.split

_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.i
  %i.bf = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, !prof !36

bb.o:                                             ; preds = %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i49 = icmp eq i32 %i.bh, 0
  br i1 %.not.i49, label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = call i32 @__cxa_atexit(ptr nonnull @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date13get_tzdb_listEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %.body50

_ZN14arrow_vendored4date13get_tzdb_listEv.exit:   ; preds = %bb.q, %bb.o, %_ZN14arrow_vendored4dateL18load_abbreviationsB5cxx11ERSii.exit
  %i.bk = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !74
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74
  %i.bp = icmp eq ptr %i.bm, %i.bo
  %i.bq = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.bq, %i.bp
  br i1 %or.cond, label %bb.s, label %bb.y

bb.s:                                             ; preds = %_ZN14arrow_vendored4date13get_tzdb_listEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke fastcc void @_ZN14arrow_vendored4dateL10load_leapsIlEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.bu = load <2 x ptr>, ptr %9, align 16, !tbaa !74
  store <2 x ptr> %i.bu, ptr %i.bl, align 8, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !26
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !26
  %.not.i.i.i.i.i52 = icmp eq ptr %i.br, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i52, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EEaSEOS4_.exit: ; preds = %bb.t
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bz) #28
  %.pr = load ptr, ptr %9, align 16, !tbaa !25    ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.u

end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i
  %.sroa.speculated.i.i.i54.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 4) ; 2 uses
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
  %43 = icmp ult i64 %i.rc, %i.rb
  %i.rd = call i64 @llvm.umin.i64(i64 %i.rc, i64 1152921504606846975)
  %44 = select i1 %43, i64 1152921504606846975, i64 %i.rd ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %44, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.re = shl nuw nsw i64 %44, 3
  %i.rf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.re) #32
          to label %.noexc109.i unwind label %.loopexit329.i, !noalias !245 ; 9 uses

.noexc109.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.qz
  %i.rh = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.rh, ptr %i.rg, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.lt, %i.lu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc109.i
  %i.ri = ptrtoaddr ptr %i.rf to i64
  %i.rj = add i64 %i.qx, -8
  %i.rk = sub i64 %i.rj, %i.qy                    ; 2 uses
  %i.rl = lshr i64 %i.rk, 3
  %i.rm = add nuw nsw i64 %i.rl, 1                ; 2 uses
  %min.iters.check499 = icmp ult i64 %i.rk, 24
  %i.rn = sub i64 %i.ri, %i.qy
  %diff.check497 = icmp ult i64 %i.rn, 32
  %or.cond = or i1 %min.iters.check499, %diff.check497
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader515, label %vector.ph500

vector.ph500:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec502 = and i64 %i.rm, 4611686018427387900  ; 3 uses
  %i.ro = shl i64 %n.vec502, 3                    ; 2 uses
  %i.rp = getelementptr i8, ptr %i.rf, i64 %i.ro  ; 2 uses
  %i.rq = getelementptr i8, ptr %i.lt, i64 %i.ro
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph500
  %index504 = phi i64 [ 0, %vector.ph500 ], [ %index.next509, %vector.body503 ] ; 2 uses
  %i.rr = shl i64 %index504, 3                    ; 2 uses
  %next.gep505 = getelementptr i8, ptr %i.rf, i64 %i.rr ; 2 uses
  %next.gep506 = getelementptr i8, ptr %i.lt, i64 %i.rr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.rs = getelementptr i8, ptr %next.gep506, i64 16
  %wide.load507 = load <2 x i64>, ptr %next.gep506, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  %wide.load508 = load <2 x i64>, ptr %i.rs, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  %i.rt = getelementptr i8, ptr %next.gep505, i64 16
  store <2 x i64> %wide.load507, ptr %next.gep505, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  store <2 x i64> %wide.load508, ptr %i.rt, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %index.next509 = add nuw i64 %index504, 4       ; 2 uses
  %i.ru = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.ru, label %middle.block510, label %vector.body503, !llvm.loop !268

middle.block510:                                  ; preds = %vector.body503
  %cmp.n511 = icmp eq i64 %i.rm, %n.vec502
  br i1 %cmp.n511, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader515

.lr.ph.i.i.i.i.i.i.i.preheader515:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block510
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.rf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.rp, %middle.block510 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.rq, %middle.block510 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader515, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader515 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.rw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader515 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.rv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  store i64 %i.rv, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %i.rw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.rw, %i.lu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !271

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block510, %.noexc109.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.rf, %.noexc109.i ], [ %i.rp, %middle.block510 ], [ %i.rx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.qz) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.dh, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.rf, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.ry, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %44 ; 2 uses
  store ptr %i.rz, ptr %i.lg, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.de
  %i.sa = phi ptr [ %i.rf, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lt, %bb.de ]
  %i.sb = phi ptr [ %i.rz, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lu, %bb.de ]
  %i.sc = phi ptr [ %i.ry, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.qw, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.du

bb.di:                                            ; preds = %bb.bt
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

bb.dj:                                            ; preds = %bb.bz, %bb.bw
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i

bb.dk:                                            ; preds = %bb.cb
  %i.sf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sg = load ptr, ptr %11, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.jp
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i: ; preds = %bb.dk
  %i.si = load i64, ptr %i.jp, align 8, !tbaa !31, !noalias !245
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i, %bb.dj
  %.pn.i = phi { ptr, i32 } [ %i.se, %bb.dj ], [ %i.sf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i ], [ %i.sf, %bb.dk ] ; 2 uses
  %i.sk = load ptr, ptr %12, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.is
  br i1 %i.sl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i
  %i.sm = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !245
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.sn) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i, %bb.di
  %.pn.pn.i = phi { ptr, i32 } [ %i.sd, %bb.di ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i ]
  %i.so = load ptr, ptr %13, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.im
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i
  %i.sq = load i64, ptr %i.im, align 8, !tbaa !31, !noalias !245
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !245
  br label %bb.hk

bb.dl:                                            ; preds = %.noexc147, %.noexc146, %.noexc145, %.noexc144, %.noexc143, %.noexc142, %.noexc141, %.noexc140, %bb.hf, %.noexc138, %bb.he, %.noexc136, %.noexc135, %.noexc134, %.noexc133, %.noexc132, %.noexc131, %.noexc130, %.noexc129, %.noexc128, %.noexc127, %.noexc126, %.invoke.i, %bb.gn, %bb.ft, %bb.eb
  %i.ss = landingpad { ptr, i32 }
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
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dn:                                            ; preds = %bb.ck
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.do:                                            ; preds = %bb.dt, %bb.ds, %bb.dr, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, %bb.cn, %bb.cm
  %i.sw = landingpad { ptr, i32 }
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
  %.pn62.i = phi { ptr, i32 } [ %lpad.phi333.i, %bb.dq ], [ %i.sw, %bb.dp ], [ %.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i ], [ %i.ok, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92 ], [ %i.ok, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.dv

bb.dr:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !245
  %i.sx = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245
  %i.sy = load i64, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  %i.sz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.sx, i64 noundef %i.sy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.do, !noalias !245 ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !245
  store i8 10, ptr %i.g, align 1, !tbaa !31, !noalias !245
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !61, !noalias !245
  %i.tb = getelementptr i8, ptr %i.ta, i64 -24
  %i.tc = load i64, ptr %i.tb, align 8, !noalias !245
  %i.td = getelementptr inbounds i8, ptr %i.sz, i64 %i.tc
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !158, !noalias !245
  %.not.i123.i = icmp eq i64 %i.tf, 0
  br i1 %.not.i123.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.tg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sz, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.do, !noalias !245 ; 0 uses

bb.dt:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.th = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.sz, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.do, !noalias !245 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.dt, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !245
  br label %bb.du

bb.du:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i
  %i.ti = phi ptr [ %i.lt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.sa, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.tj = phi ptr [ %i.lu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.sb, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.tk = phi ptr [ %i.lv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.sc, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.tl = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.ky
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i: ; preds = %bb.du
  %i.tn = load i64, ptr %i.ky, align 8, !tbaa !31, !noalias !245
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.to) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30, !noalias !245
  store ptr %i.lh, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.tp = load i64, ptr %i.lj, align 8, !noalias !245
  %i.tq = getelementptr inbounds i8, ptr %15, i64 %i.tp
  store ptr %i.li, ptr %i.tq, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.lk, align 8, !tbaa !61, !noalias !245
  %i.tr = load ptr, ptr %i.ll, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.lm
  br i1 %i.ts, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i
  %i.tt = load i64, ptr %i.lm, align 8, !tbaa !31, !noalias !245
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tu) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.lk, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ln) #30, !noalias !245
  store ptr %i.lo, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.tv = load i64, ptr %i.lq, align 8, !noalias !245
  %i.tw = getelementptr inbounds i8, ptr %15, i64 %i.tv
  store ptr %i.lp, ptr %i.tw, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.lr, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ls) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !245
  br label %bb.dy

bb.dv:                                            ; preds = %.body.i, %bb.do
  %.pn62.pn.i = phi { ptr, i32 } [ %.pn62.i, %.body.i ], [ %i.sv, %bb.do ]
  %i.tx = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a

bb.et:                                            ; preds = %.backedge.i, %.lr.ph.i
  %i.ym = phi ptr [ null, %.lr.ph.i ], [ %i.acb, %.backedge.i ] ; 11 uses
  %i.yn = phi ptr [ null, %.lr.ph.i ], [ %i.acc, %.backedge.i ] ; 8 uses
  %i.yo = phi ptr [ null, %.lr.ph.i ], [ %i.acd, %.backedge.i ] ; 6 uses
  %i.yp = phi i64 [ %i.xt, %.lr.ph.i ], [ %i.acg, %.backedge.i ]
  %i.yq = getelementptr inbounds i8, ptr %10, i64 %i.yp
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 240
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !191, !noalias !245 ; 6 uses
  %.not.i.i.i174.i = icmp eq ptr %i.ys, null
  br i1 %.not.i.i.i174.i, label %bb.eu, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175.i

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc179.i unwind label %.loopexit.split-lp335.i, !noalias !245

.noexc179.i:                                      ; preds = %bb.eu
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175.i: ; preds = %bb.et
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 56
  %i.yu = load i8, ptr %i.yt, align 8, !tbaa !198, !noalias !245
  %.not.i1.i.i176.i = icmp eq i8 %i.yu, 0
  br i1 %.not.i1.i.i176.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175.i
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 67
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !31, !noalias !245
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i

bb.ew:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ys)
          to label %.noexc180.i unwind label %.loopexit334.i, !noalias !245

.noexc180.i:                                      ; preds = %bb.ew
  %i.yx = load ptr, ptr %i.ys, align 8, !tbaa !61, !noalias !245
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 48
  %i.yz = load ptr, ptr %i.yy, align 8, !noalias !245
  %i.za = invoke noundef signext i8 %i.yz(ptr noundef nonnull align 8 dereferenceable(570) %i.ys, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i unwind label %.loopexit334.i, !noalias !245, !inline_history !204

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i: ; preds = %.noexc180.i, %bb.ev
  %.0.i.i.i178.i = phi i8 [ %i.yw, %bb.ev ], [ %i.za, %.noexc180.i ]
  %i.zb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %23, i8 noundef signext %.0.i.i.i178.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i unwind label %.loopexit334.i, !noalias !245 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i177.i
  %i.zc = load i64, ptr %i.xs, align 8, !tbaa !39, !noalias !245
  %i.zd = icmp eq i64 %i.zc, 0
  br i1 %i.zd, label %.backedge.i, label %bb.ex

bb.ex:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i
  %i.ze = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !31, !noalias !245
  %.not.i87 = icmp eq i8 %i.zf, 35
  br i1 %.not.i87, label %.backedge.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30, !noalias !245
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %24, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 8)
          to label %bb.ez unwind label %bb.fd, !noalias !245

bb.ez:                                            ; preds = %bb.ey
  %i.zg = load ptr, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.zh = getelementptr i8, ptr %i.zg, i64 -24
  %i.zi = load i64, ptr %i.zh, align 8, !noalias !245
  %i.zj = getelementptr inbounds i8, ptr %24, i64 %i.zi ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 28
  store i32 5, ptr %i.zk, align 4, !tbaa !63, !noalias !245
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 32
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !72, !noalias !245
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.zj, i32 noundef %i.zm)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i unwind label %bb.fe, !noalias !245

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i: ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30, !noalias !245
  %i.zn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNSirsERl.exit.i unwind label %bb.ff, !noalias !245 ; 0 uses

_ZNSirsERl.exit.i:                                ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i
  %i.zo = load i64, ptr %i.j, align 8, !tbaa !75, !noalias !245 ; 2 uses
  %.not327.i = icmp eq i64 %i.zo, 2272060800
  br i1 %.not327.i, label %bb.fm, label %bb.fg, !llvm.loop !283

bb.fa:                                            ; preds = %bb.eh
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

bb.fb:                                            ; preds = %bb.en, %bb.ek
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i

bb.fc:                                            ; preds = %bb.er, %bb.ep
  %i.zr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zs = load ptr, ptr %20, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.zt = icmp eq ptr %i.zs, %i.wf
  br i1 %i.zt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i: ; preds = %bb.fc
  %i.zu = load i64, ptr %i.wf, align 8, !tbaa !31, !noalias !245
  %i.zv = add i64 %i.zu, 1
  call void @_ZdlPvm(ptr noundef %i.zs, i64 noundef %i.zv) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i, %bb.fb
  %.pn39.i = phi { ptr, i32 } [ %i.zq, %bb.fb ], [ %i.zr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i ], [ %i.zr, %bb.fc ] ; 2 uses
  %i.zw = load ptr, ptr %21, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.vi
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i
  %i.zy = load i64, ptr %i.vi, align 8, !tbaa !31, !noalias !245
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i, %bb.fa
  %.pn39.pn.i = phi { ptr, i32 } [ %i.zp, %bb.fa ], [ %.pn39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i ], [ %.pn39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i ]
  %i.aaa = load ptr, ptr %22, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, %i.vc
  br i1 %i.aab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i
  %i.aac = load i64, ptr %i.vc, align 8, !tbaa !31, !noalias !245
  %i.aad = add i64 %i.aac, 1
  call void @_ZdlPvm(ptr noundef %i.aaa, i64 noundef %i.aad) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !245
  br label %.body141.i

.body141.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, %bb.eg
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ %i.vb, %bb.eg ]
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
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fe:                                            ; preds = %bb.ez
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.ff:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit185.i
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fg:                                            ; preds = %_ZNSirsERl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30, !noalias !245
  %i.aah = add i64 %i.zo, -2208988800
  store i64 %i.aah, ptr %26, align 8, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.fh unwind label %.loopexit339.i, !noalias !245

bb.fh:                                            ; preds = %bb.fg
  %.not.i.i198.i = icmp eq ptr %i.yo, %i.yn
  br i1 %.not.i.i198.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aai = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aai, ptr %i.yo, align 8, !tbaa !75, !noalias !245
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.yo, i64 8 ; 2 uses
  store ptr %i.aaj, ptr %i.xy, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i

bb.fj:                                            ; preds = %bb.fh
  %i.aak = ptrtoint ptr %i.yn to i64              ; 2 uses
  %i.aal = ptrtoint ptr %i.ym to i64              ; 3 uses
  %i.aam = sub i64 %i.aak, %i.aal                 ; 4 uses
  %i.aan = icmp eq i64 %i.aam, 9223372036854775800
  br i1 %i.aan, label %bb.fk, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc211.i unwind label %.loopexit.split-lp340.i, !noalias !245

.noexc211.i:                                      ; preds = %bb.fk
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i: ; preds = %bb.fj
  %i.aao = ashr exact i64 %i.aam, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i200.i = call i64 @llvm.umax.i64(i64 %i.aao, i64 1)
  %i.aap = add nsw i64 %.sroa.speculated.i.i.i.i200.i, %i.aao ; 2 uses
  %45 = icmp ult i64 %i.aap, %i.aao
  %i.aaq = call i64 @llvm.umin.i64(i64 %i.aap, i64 1152921504606846975)
  %46 = select i1 %45, i64 1152921504606846975, i64 %i.aaq ; 3 uses
  %.not.i.i.i.i201.i = icmp ne i64 %46, 0
  call void @llvm.assume(i1 %.not.i.i.i.i201.i)
  %i.aar = shl nuw nsw i64 %46, 3
  %i.aas = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aar) #32
          to label %.noexc212.i unwind label %.loopexit339.i, !noalias !245 ; 9 uses

.noexc212.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199.i
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aam
  %i.aau = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aau, ptr %i.aat, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i202.i = icmp eq ptr %i.ym, %i.yn
  br i1 %.not10.i.i.i.i.i.i202.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i.preheader

.lr.ph.i.i.i.i.i.i203.i.preheader:                ; preds = %.noexc212.i
  %i.aav = ptrtoaddr ptr %i.aas to i64
  %i.aaw = add i64 %i.aak, -8
  %i.aax = sub i64 %i.aaw, %i.aal                 ; 2 uses
  %i.aay = lshr i64 %i.aax, 3
  %i.aaz = add nuw nsw i64 %i.aay, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.aax, 24
  %i.aba = sub i64 %i.aav, %i.aal
  %diff.check = icmp ult i64 %i.aba, 32
  %or.cond514 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond514, label %.lr.ph.i.i.i.i.i.i203.i.preheader516, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader
  %n.vec = and i64 %i.aaz, 4611686018427387900    ; 3 uses
  %i.abb = shl i64 %n.vec, 3                      ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aas, i64 %i.abb ; 2 uses
  %i.abd = getelementptr i8, ptr %i.ym, i64 %i.abb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abe = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aas, i64 %i.abe ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.ym, i64 %i.abe ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abf = getelementptr i8, ptr %next.gep493, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep493, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %wide.load494 = load <2 x i64>, ptr %i.abf, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %i.abg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  store <2 x i64> %wide.load494, ptr %i.abg, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abh = icmp eq i64 %index.next, %n.vec
  br i1 %i.abh, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aaz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i.preheader516

.lr.ph.i.i.i.i.i.i203.i.preheader516:             ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader, %middle.block
  %.012.i.i.i.i.i.i204.i.ph = phi ptr [ %i.aas, %.lr.ph.i.i.i.i.i.i203.i.preheader ], [ %i.abc, %middle.block ]
  %.0911.i.i.i.i.i.i205.i.ph = phi ptr [ %i.ym, %.lr.ph.i.i.i.i.i.i203.i.preheader ], [ %i.abd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i203.i

.lr.ph.i.i.i.i.i.i203.i:                          ; preds = %.lr.ph.i.i.i.i.i.i203.i.preheader516, %.lr.ph.i.i.i.i.i.i203.i
  %.012.i.i.i.i.i.i204.i = phi ptr [ %i.abk, %.lr.ph.i.i.i.i.i.i203.i ], [ %.012.i.i.i.i.i.i204.i.ph, %.lr.ph.i.i.i.i.i.i203.i.preheader516 ] ; 2 uses
  %.0911.i.i.i.i.i.i205.i = phi ptr [ %i.abj, %.lr.ph.i.i.i.i.i.i203.i ], [ %.0911.i.i.i.i.i.i205.i.ph, %.lr.ph.i.i.i.i.i.i203.i.preheader516 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abi = load i64, ptr %.0911.i.i.i.i.i.i205.i, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  store i64 %i.abi, ptr %.012.i.i.i.i.i.i204.i, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %i.abj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i205.i, i64 8 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i204.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i206.i = icmp eq ptr %i.abj, %i.yn
  br i1 %.not.i.i.i.i.i.i206.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i, label %.lr.ph.i.i.i.i.i.i203.i, !llvm.loop !292

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i: ; preds = %.lr.ph.i.i.i.i.i.i203.i, %middle.block, %.noexc212.i
  %.0.lcssa.i.i.i.i.i.i208.i = phi ptr [ %i.aas, %.noexc212.i ], [ %i.abc, %middle.block ], [ %i.abk, %.lr.ph.i.i.i.i.i.i203.i ]
  %i.abl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i208.i, i64 8 ; 2 uses
  %.not.i23.i.i.i209.i = icmp eq ptr %i.ym, null
  br i1 %.not.i23.i.i.i209.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ym, i64 noundef %i.aam) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i: ; preds = %bb.fl, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i207.i
  store ptr %i.aas, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.abl, ptr %i.xy, align 8, !tbaa !260, !alias.scope !245
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.aas, i64 %46 ; 2 uses
  store ptr %i.abm, ptr %i.xz, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i, %bb.fi
  %i.abn = phi ptr [ %i.aas, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.ym, %bb.fi ]
  %i.abo = phi ptr [ %i.abm, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.yn, %bb.fi ]
  %i.abp = phi ptr [ %i.abl, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i210.i ], [ %i.aaj, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i, %_ZNSirsERl.exit.i
  %i.abq = phi ptr [ %i.abn, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.ym, %_ZNSirsERl.exit.i ]
  %i.abr = phi ptr [ %i.abo, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.yn, %_ZNSirsERl.exit.i ]
  %i.abs = phi ptr [ %i.abp, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit213.i ], [ %i.yo, %_ZNSirsERl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  store ptr %i.ya, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.abt = load i64, ptr %i.yc, align 8, !noalias !245
  %i.abu = getelementptr inbounds i8, ptr %24, i64 %i.abt
  store ptr %i.yb, ptr %i.abu, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yd, align 8, !tbaa !61, !noalias !245
  %i.abv = load ptr, ptr %i.ye, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.yf
  br i1 %i.abw, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i: ; preds = %bb.fm
  %i.abx = load i64, ptr %i.yf, align 8, !tbaa !31, !noalias !245
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.aby) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yd, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.yg) #30, !noalias !245
  store ptr %i.yh, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.abz = load i64, ptr %i.yj, align 8, !noalias !245
  %i.aca = getelementptr inbounds i8, ptr %24, i64 %i.abz
  store ptr %i.yi, ptr %i.aca, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.yk, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.yl) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i, %bb.ex, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i
  %i.acb = phi ptr [ %i.abq, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.ym, %bb.ex ], [ %i.ym, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.acc = phi ptr [ %i.abr, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.yn, %bb.ex ], [ %i.yn, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.acd = phi ptr [ %i.abs, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit216.i ], [ %i.yo, %bb.ex ], [ %i.yo, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit183.i ]
  %i.ace = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.acf = getelementptr i8, ptr %i.ace, i64 -24
  %i.acg = load i64, ptr %i.acf, align 8, !noalias !245 ; 2 uses
  %i.ach = getelementptr inbounds i8, ptr %10, i64 %i.acg
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 32
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !72, !noalias !245
  %i.ack = and i32 %i.acj, 5
  %.not.i173.i = icmp eq i32 %i.ack, 0
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
  %.pn54.i = phi { ptr, i32 } [ %lpad.phi343.i, %bb.fn ], [ %i.aag, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fe
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %bb.fo ], [ %i.aaf, %bb.fe ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %24) #30, !noalias !245
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fd
  %.pn54.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.i, %bb.fp ], [ %i.aae, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %bb.fr

._crit_edge.i:                                    ; preds = %.backedge.i
  %.pre.i88 = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.acl = icmp eq ptr %.pre.i88, %i.xr
  br i1 %i.acl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i: ; preds = %._crit_edge.i
  %i.acm = load i64, ptr %i.xr, align 8, !tbaa !31, !noalias !245
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %.pre.i88, i64 noundef %i.acn) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i: ; preds = %bb.es, %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  br label %bb.hl

bb.fr:                                            ; preds = %bb.fq, %.loopexit.split-lp335.i, %.loopexit334.i
  %.pn54.pn.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.pn.i, %bb.fq ], [ %lpad.loopexit336.i, %.loopexit334.i ], [ %lpad.loopexit.split-lp337.i, %.loopexit.split-lp335.i ] ; 2 uses
  %i.aco = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.acp = icmp eq ptr %i.aco, %i.xr
  br i1 %i.acp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i: ; preds = %bb.fr
  %i.acq = load i64, ptr %i.xr, align 8, !tbaa !31, !noalias !245
  %i.acr = add i64 %i.acq, 1
  call void @_ZdlPvm(ptr noundef %i.aco, i64 noundef %i.acr) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  %i.acs = load ptr, ptr %41, align 16, !tbaa !25, !alias.scope !245 ; 3 uses
  %.not.i.i.i223.i = icmp eq ptr %i.acs, null
  br i1 %.not.i.i.i223.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i
  %i.act = load ptr, ptr %i.xz, align 16, !tbaa !26, !alias.scope !245
  %i.acu = ptrtoint ptr %i.act to i64
  %i.acv = ptrtoint ptr %i.acs to i64
  %i.acw = sub i64 %i.acu, %i.acv
  call void @_ZdlPvm(ptr noundef nonnull %i.acs, i64 noundef %i.acw) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

bb.ft:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i170.i
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.xn, i32 noundef 0)
          to label %bb.fu unwind label %bb.dl, !noalias !245

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30, !noalias !245
  %i.acx = load atomic i8, ptr @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11 acquire, align 8, !noalias !245
  %i.acy = icmp eq i8 %i.acx, 0
  br i1 %i.acy, label %bb.fv, label %bb.fz, !prof !36

bb.fv:                                            ; preds = %bb.fu
  %i.acz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  %.not.i225.i = icmp eq i32 %i.acz, 0
  br i1 %.not.i225.i, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  invoke fastcc void @_ZN14arrow_vendored4dateL15discover_tz_dirB5cxx11Ev()
          to label %bb.fx unwind label %bb.fy, !noalias !245

bb.fx:                                            ; preds = %bb.fw
  %i.ada = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, ptr nonnull @__dso_handle) #30, !noalias !245 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %i.adb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %.body226.i

bb.fz:                                            ; preds = %bb.fx, %bb.fv, %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30, !noalias !245
  %i.adc = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.adc, ptr %29, align 8, !tbaa !38, !noalias !245
  store i8 47, ptr %i.adc, align 8, !tbaa !31, !noalias !245
  %i.add = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 1, ptr %i.add, align 8, !tbaa !39, !noalias !245
  %i.ade = getelementptr inbounds nuw i8, ptr %29, i64 17
  store i8 0, ptr %i.ade, align 1, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.adf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, i64 8), align 8, !tbaa !39, !noalias !296
  %i.adg = load ptr, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, align 8, !tbaa !30, !noalias !296
  %i.adh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef 0, ptr noundef %i.adg, i64 noundef %i.adf)
          to label %.noexc232.i unwind label %bb.gk, !noalias !245 ; 6 uses

.noexc232.i:                                      ; preds = %bb.fz
  %i.adi = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 14 uses
  store ptr %i.adi, ptr %28, align 8, !tbaa !38, !alias.scope !293, !noalias !245
  %i.adj = load ptr, ptr %i.adh, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adh, i64 16 ; 5 uses
  %i.adl = icmp eq ptr %i.adj, %i.adk
  br i1 %i.adl, label %bb.ga, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i

bb.ga:                                            ; preds = %.noexc232.i
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !39, !noalias !245 ; 3 uses
  %i.ado = icmp ult i64 %i.adn, 16
  call void @llvm.assume(i1 %i.ado)
  %i.adp = add nuw nsw i64 %i.adn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adi, ptr noundef nonnull align 8 dereferenceable(1) %i.adk, i64 %i.adp, i1 false), !noalias !245
  br label %bb.gb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i: ; preds = %.noexc232.i
  store ptr %i.adj, ptr %28, align 8, !tbaa !30, !alias.scope !293, !noalias !245
  %i.adq = load i64, ptr %i.adk, align 8, !tbaa !31, !noalias !245
  store i64 %i.adq, ptr %i.adi, align 8, !tbaa !31, !alias.scope !293, !noalias !245
  %.phi.trans.insert.i230.i = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %.pre.i231.i = load i64, ptr %.phi.trans.insert.i230.i, align 8, !tbaa !39, !noalias !245
  br label %bb.gb

end_hunk_3
begin_hunk_4_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
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
  %4 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 104811045873349725)
  %5 = select i1 %4, i64 104811045873349725, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %5, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %5, 88                   ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #32 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  invoke void @_ZN14arrow_vendored4date9time_zoneC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !335, !noalias !338
  %i.q = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !30, !alias.scope !338, !noalias !335 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39, !alias.scope !338, !noalias !335 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !340
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %.012.i.i.i, align 8, !tbaa !30, !alias.scope !335, !noalias !338
  %i.x = load i64, ptr %i.r, align 8, !tbaa !31, !alias.scope !338, !noalias !335
  store i64 %i.x, ptr %i.p, align 8, !tbaa !31, !alias.scope !335, !noalias !338
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !39, !alias.scope !338, !noalias !335
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.y = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.u, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !39, !alias.scope !335, !noalias !338
  store ptr %i.r, ptr %.0911.i.i.i, align 8, !tbaa !30, !alias.scope !338, !noalias !335
  store i64 0, ptr %i.z, align 8, !tbaa !39, !alias.scope !338, !noalias !335
  store i8 0, ptr %i.r, align 8, !tbaa !31, !alias.scope !338, !noalias !335
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !73, !alias.scope !338, !noalias !335
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !73, !alias.scope !335, !noalias !338
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48, !alias.scope !338, !noalias !335
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !48, !alias.scope !335, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !335
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !91, !alias.scope !338, !noalias !335
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !91, !alias.scope !335, !noalias !338
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54, !alias.scope !338, !noalias !335
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !54, !alias.scope !335, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !335
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43, !alias.scope !338, !noalias !335
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !43, !alias.scope !335, !noalias !338
  store ptr null, ptr %i.ao, align 8, !tbaa !43, !alias.scope !338, !noalias !335
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !341

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date9time_zoneEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ], [ %i.ar, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34
  %.012.i.i.i29 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.as, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 10 uses
  %.0911.i.i.i30 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i29, align 8, !tbaa !38, !alias.scope !342, !noalias !345
  %i.au = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !30, !alias.scope !345, !noalias !342 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

bb.d:                                             ; preds = %.lr.ph.i.i.i28
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !39, !alias.scope !345, !noalias !342 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !347
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.au, ptr %.012.i.i.i29, align 8, !tbaa !30, !alias.scope !342, !noalias !345
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !31, !alias.scope !345, !noalias !342
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !31, !alias.scope !342, !noalias !345
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !39, !alias.scope !345, !noalias !342
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34

_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31, %bb.d
  %i.bc = phi i64 [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31 ], [ %i.ay, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !39, !alias.scope !342, !noalias !345
  store ptr %i.av, ptr %.0911.i.i.i30, align 8, !tbaa !30, !alias.scope !345, !noalias !342
  store i64 0, ptr %i.bd, align 8, !tbaa !39, !alias.scope !345, !noalias !342
  store i8 0, ptr %i.av, align 8, !tbaa !31, !alias.scope !345, !noalias !342
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !73, !alias.scope !345, !noalias !342
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !73, !alias.scope !342, !noalias !345
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48, !alias.scope !345, !noalias !342
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !48, !alias.scope !342, !noalias !345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false), !alias.scope !345, !noalias !342
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 56 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !91, !alias.scope !345, !noalias !342
  store <2 x ptr> %i.bn, ptr %i.bl, align 8, !tbaa !91, !alias.scope !342, !noalias !345
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54, !alias.scope !345, !noalias !342
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !54, !alias.scope !342, !noalias !345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false), !alias.scope !345, !noalias !342
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 80 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !43, !alias.scope !345, !noalias !342
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !43, !alias.scope !342, !noalias !345
  store ptr null, ptr %i.bs, align 8, !tbaa !43, !alias.scope !345, !noalias !342
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 88 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 88 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, label %.lr.ph.i.i.i28, !llvm.loop !341

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.as, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN14arrow_vendored4date9time_zoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37, %bb.e
  store ptr %i.n, ptr %0, align 8, !tbaa !27
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %5
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !29
  ret void

bb.f:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #28
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.cb

bb.i:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #29
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN14arrow_vendored4date9time_zoneESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 88
  %i.h = icmp ugt i64 %i.g, 104811045873349725
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #31
          to label %.noexc unwind label %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE11_M_allocateEm.exit.thread.i, label %.lr.ph.i.i.i.i.preheader.i

_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE11_M_allocateEm.exit.thread.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32
          to label %.lr.ph.i.i.i.i.i unwind label %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.preheader.i, %_ZSt10_ConstructIN14arrow_vendored4date9time_zoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.am, %_ZSt10_ConstructIN14arrow_vendored4date9time_zoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.preheader.i ] ; 10 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.al, %_ZSt10_ConstructIN14arrow_vendored4date9time_zoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i ] ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.k, ptr %.08.i.i.i.i.i, align 8, !tbaa !38
  %i.l = load ptr, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %_ZSt10_ConstructIN14arrow_vendored4date9time_zoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.l, ptr %.08.i.i.i.i.i, align 8, !tbaa !30
  %i.s = load i64, ptr %i.m, align 8, !tbaa !31
  store i64 %i.s, ptr %i.k, align 8, !tbaa !31
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !39
  br label %_ZSt10_ConstructIN14arrow_vendored4date9time_zoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN14arrow_vendored4date9time_zoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.t = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.p, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !39
  store ptr %i.m, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !30
  store i64 0, ptr %i.u, align 8, !tbaa !39
  store i8 0, ptr %i.m, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !73
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 56 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !91
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !91
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 80 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !43
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !43
  store ptr null, ptr %i.aj, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 88 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.c
  br i1 %i.an, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !348

_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ao, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %.09) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit unwind label %bb.f

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit.loopexit: ; preds = %_ZSt10_ConstructIN14arrow_vendored4date9time_zoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !27
  %.pre20 = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit.loopexit, %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE11_M_allocateEm.exit.thread.i
  %i.ar = phi ptr [ %i.c, %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE11_M_allocateEm.exit.thread.i ], [ %.pre20, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit.loopexit ]
  %i.as = phi ptr [ %i.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE11_M_allocateEm.exit.thread.i ], [ %.pre, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit.loopexit ] ; 4 uses
  %.sroa.15.0 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE11_M_allocateEm.exit.thread.i ], [ %i.aq, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit.loopexit ]
  %.sroa.013.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE11_M_allocateEm.exit.thread.i ], [ %i.j, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit.loopexit ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE11_M_allocateEm.exit.thread.i ], [ %i.am, %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29
  store ptr %.sroa.013.0, ptr %0, align 8, !tbaa !27
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.b, align 8, !tbaa !28
  store ptr %.sroa.15.0, ptr %i.at, align 8, !tbaa !29
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14arrow_vendored4date9time_zoneEEEvT_S6_(ptr noundef %i.as, ptr noundef %i.ar)
          to label %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.e

_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit
  %.not.i.i.i10 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #29
  unreachable

_ZNSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPN14arrow_vendored4date9time_zoneES2_EvT_S4_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EED2Ev.exit.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1408
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = icmp eq i64 %2, 0
end_hunk_4
begin_hunk_5_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #28
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
  %4 = icmp ult i64 %i.j, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %5 = select i1 %4, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp ne i64 %5, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %5, 3                    ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 9 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %i.r = add i64 %i.a, -8
  %i.s = sub i64 %i.r, %i.f                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 56
  %i.v = sub i64 %i.p, %i.f
  %diff.check = icmp ult i64 %i.v, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.o, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.d, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.d, i64 %i.z ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.aa = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %wide.load49 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  store <2 x i64> %wide.load49, ptr %i.ab, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !367

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i52 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader

.lr.ph.i.i.i28.preheader:                         ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ah = add i64 %i.e, -8
  %i.ai = sub i64 %i.ah, %i.a                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.ai, 72
  br i1 %min.iters.check55, label %.lr.ph.i.i.i28.preheader70, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.i.i.i28.preheader
  %i.al = add i64 %.0.lcssa.i.i.i52, 8
  %i.am = sub i64 %i.al, %i.a
  %diff.check53 = icmp ult i64 %i.am, 32
  br i1 %diff.check53, label %.lr.ph.i.i.i28.preheader70, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck51
  %n.vec58 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec58, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ag, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 %i.an
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.aq = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ag, i64 %i.aq ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ar = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %wide.load64 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %i.as = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x i64> %wide.load63, ptr %next.gep61, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  store <2 x i64> %wide.load64, ptr %i.as, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.at, label %middle.block66, label %vector.body59, !llvm.loop !373

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %i.ak, %n.vec58
  br i1 %cmp.n67, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader70

.lr.ph.i.i.i28.preheader70:                       ; preds = %vector.memcheck51, %.lr.ph.i.i.i28.preheader, %middle.block66
  %.012.i.i.i29.ph = phi ptr [ %i.ag, %vector.memcheck51 ], [ %i.ag, %.lr.ph.i.i.i28.preheader ], [ %i.ao, %middle.block66 ]
  %.0911.i.i.i30.ph = phi ptr [ %1, %vector.memcheck51 ], [ %1, %.lr.ph.i.i.i28.preheader ], [ %i.ap, %middle.block66 ]
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28.preheader70, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.aw, %.lr.ph.i.i.i28 ], [ %.012.i.i.i29.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %.0911.i.i.i30.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.au = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  store i64 %i.au, ptr %.012.i.i.i29, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.av, %i.c
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !374

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %middle.block66, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ag, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ao, %middle.block66 ], [ %i.aw, %.lr.ph.i.i.i28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.d, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ba) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !25
  store ptr %.0.lcssa.i.i.i32, ptr %i.b, align 8, !tbaa !260
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %5
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !26
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #28
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bc

bb.g:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #29
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
  %.not21 = icmp eq i32 %2, 0
  br i1 %.not21, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i

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
  %.016 = phi i32 [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i ], [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !75
  %i.n = call noundef i64 @llvm.bswap.i64(i64 %i.m) ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !75
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.q = add nsw i32 %i.p, -1
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 %i.n, %i.r
  store i64 %i.s, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !260  ; 3 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.j, align 8, !tbaa !260
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit unwind label %bb.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit: ; preds = %bb.g, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.x = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !375

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %.pre to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ae) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !228, !noalias !376
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !228
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !tbaa !134, !noalias !376
  store <2 x ptr> %i.i, ptr %i.h, align 16, !tbaa !134
  %i.j = load <2 x ptr>, ptr %i.d, align 8, !tbaa !228, !noalias !379
  store <2 x ptr> %i.j, ptr %2, align 16, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.e, align 8, !tbaa !134, !noalias !379
  store <2 x ptr> %i.l, ptr %i.k, align 16, !tbaa !134
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.m = load ptr, ptr %0, align 8, !tbaa !328    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !226  ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !334  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !228
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #28
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.t = icmp ult ptr %.06.i.i, %i.o
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i, !llvm.loop !330

end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored4dateL12load_indicesERSii:bb.a
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
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ] ; 4 uses
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ]
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
  %i.v = select i1 %i.t, i64 9223372036854775807, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i unwind label %.loopexit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.x = phi ptr [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i ], [ %i.w, %bb.g ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q ; 2 uses
  %i.z = load i8, ptr %i.a, align 1, !tbaa !31
  store i8 %i.z, ptr %i.y, align 1, !tbaa !31
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.h, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !114
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !422
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !117
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.d
  %i.ad = phi ptr [ %i.ab, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ae = add nuw nsw i32 %.013, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !423

.loopexit:                                        ; preds = %bb.b, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !114
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit, %bb.a, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  ret void

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pre = phi ptr [ %.pre.pre, %.loopexit ], [ %i.n, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %.pre to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ai) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.j, %bb.k
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
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 4 uses
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.af, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ]
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
  %4 = icmp ult i64 %i.v, %i.u
  %i.w = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %5 = select i1 %4, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %5, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %5, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #32
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.s ; 2 uses
  %i.aa = load i64, ptr %3, align 8
  store i64 %i.aa, ptr %i.z, align 4
  %i.ab = icmp sgt i64 %i.s, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.g:                                             ; preds = %.noexc11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.g, %.noexc11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.y, ptr %0, align 8, !tbaa !109
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %5
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !116
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d
  %i.ae = phi ptr [ %i.ac, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.af = add nuw nsw i32 %.013, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %2
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
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %.pre to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.aj) #28
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
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %4 = select i1 %3, i64 192153584101141162, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 48
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #32 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 5 uses
  %i.p = load i64, ptr %2, align 8, !tbaa !75
  store i64 %i.p, ptr %i.o, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !38
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit
  store ptr %i.t, ptr %i.q, align 8, !tbaa !30
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !31
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ab = phi i64 [ %i.x, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !39
  store ptr %i.u, ptr %i.r, align 8, !tbaa !30
  store i64 0, ptr %i.ac, align 8, !tbaa !39
  store i8 0, ptr %i.u, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !84, !range !87, !noundef !88
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !84
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.az, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !435, !noalias !432
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !432, !noalias !435
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !38, !alias.scope !432, !noalias !435
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !30, !alias.scope !435, !noalias !432 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !39, !alias.scope !435, !noalias !432 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false), !alias.scope !437
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !30, !alias.scope !432, !noalias !435
  %i.as = load i64, ptr %i.am, align 8, !tbaa !31, !alias.scope !435, !noalias !432
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !31, !alias.scope !432, !noalias !435
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !39, !alias.scope !435, !noalias !432
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.at = phi i64 [ %i.ap, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.at, ptr %i.av, align 8, !tbaa !39, !alias.scope !432, !noalias !435
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !30, !alias.scope !435, !noalias !432
  store i64 0, ptr %i.au, align 8, !tbaa !39, !alias.scope !435, !noalias !432
  store i8 0, ptr %i.am, align 8, !tbaa !31, !alias.scope !435, !noalias !432
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !84, !range !87, !alias.scope !435, !noalias !432, !noundef !88
  store i8 %i.ay, ptr %i.aw, align 8, !tbaa !84, !alias.scope !432, !noalias !435
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !431

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ], [ %i.ba, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bb, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !75, !alias.scope !441, !noalias !438
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !tbaa !75, !alias.scope !438, !noalias !441
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !38, !alias.scope !438, !noalias !441
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !30, !alias.scope !441, !noalias !438 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !39, !alias.scope !441, !noalias !438 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !443
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !30, !alias.scope !438, !noalias !441
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !31, !alias.scope !441, !noalias !438
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !31, !alias.scope !438, !noalias !441
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !39, !alias.scope !441, !noalias !438
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bo = phi i64 [ %i.bk, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !39, !alias.scope !438, !noalias !441
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !30, !alias.scope !441, !noalias !438
  store i64 0, ptr %i.bp, align 8, !tbaa !39, !alias.scope !441, !noalias !438
  store i8 0, ptr %i.bh, align 8, !tbaa !31, !alias.scope !441, !noalias !438
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !84, !range !87, !alias.scope !441, !noalias !438, !noundef !88
  store i8 %i.bt, ptr %i.br, align 8, !tbaa !84, !alias.scope !438, !noalias !441
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !431

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bb, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, %bb.f
  store ptr %i.n, ptr %0, align 8, !tbaa !49
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %4
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !54
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
  %3 = icmp ult i64 %i.ac, %i.ab
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 576460752303423487)
  %4 = select i1 %3, i64 576460752303423487, i64 %i.ad ; 3 uses
  %.not.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ae = shl nuw nsw i64 %4, 4
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %2, align 8, !tbaa !75
  store i64 %.sroa.0.0.copyload.i.i9, ptr %i.ag, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ah, align 8, !tbaa !81
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.af, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.a, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !444
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %i.aj, %.lr.ph.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i26.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i26.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, label %.lr.ph.i.i.i27.i

.lr.ph.i.i.i27.i:                                 ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, %.lr.ph.i.i.i27.i
  %.012.i.i.i28.i = phi ptr [ %i.am, %.lr.ph.i.i.i27.i ], [ %i.ak, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ] ; 2 uses
  %.0911.i.i.i29.i = phi ptr [ %i.al, %.lr.ph.i.i.i27.i ], [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i28.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i29.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !448
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i28.i, i64 16 ; 2 uses
  %.not.i.i.i30.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i30.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, label %.lr.ph.i.i.i27.i, !llvm.loop !101

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i: ; preds = %.lr.ph.i.i.i27.i, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.0.lcssa.i.i.i31.i = phi ptr [ %i.ak, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ], [ %i.am, %.lr.ph.i.i.i27.i ]
  %.not.i33.i = icmp eq ptr %i.a, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ap) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, %bb.k
  store ptr %i.af, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i31.i, ptr %i.e, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %4
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.h, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit
  %i.ar = phi ptr [ %i.a, %bb.c ], [ %.pre, %bb.h ], [ %i.af, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit ]
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.d
  ret ptr %i.as
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
attributes #3 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
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
!47 = !{!"p1 _ZTSN14arrow_vendored4date6detail10transitionE", !12, i64 0}
!48 = !{!46, !47, i64 16}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSN14arrow_vendored4date6detail15expanded_ttinfoE", !12, i64 0}
!52 = !{!50, !51, i64 8}
!53 = distinct !{!53, !33}
!54 = !{!50, !51, i64 16}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!57 = distinct !{!57, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!60 = distinct !{!60, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !6, i64 0}
!63 = !{!64, !66, i64 28}
!64 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !65, i64 24, !66, i64 28, !66, i64 32, !67, i64 40, !68, i64 48, !5, i64 64, !4, i64 192, !69, i64 200, !70, i64 208}
!65 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!66 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!67 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!68 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !13, i64 8}
!69 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!70 = !{!"_ZTSSt6locale", !71, i64 0}
!71 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!72 = !{!64, !66, i64 32}
!73 = !{!47, !47, i64 0}
!74 = !{!23, !23, i64 0}
!75 = !{!13, !13, i64 0}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !33}
!78 = !{!79, !13, i64 0}
!79 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !13, i64 0}
!80 = distinct !{!80, !33}
!81 = !{!82, !51, i64 8}
!82 = !{!"_ZTSN14arrow_vendored4date6detail10transitionE", !83, i64 0, !51, i64 8}
!83 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1EEEEEE", !79, i64 0}
!84 = !{!85, !86, i64 40}
!85 = !{!"_ZTSN14arrow_vendored4date6detail15expanded_ttinfoE", !79, i64 0, !9, i64 8, !86, i64 40}
!86 = !{!"bool", !5, i64 0}
!87 = !{i8 0, i8 2}
!88 = !{}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{i64 0, i64 8, !75, i64 8, i64 8, !91}
!91 = !{!51, !51, i64 0}
!92 = !{!46, !47, i64 8}
!93 = distinct !{!93, !33}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii: argument 0"}
!96 = distinct !{!96, !"_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii"}
end_hunk_6
