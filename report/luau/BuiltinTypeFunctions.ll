inline.NumInlined: 5309
inline.NumDeleted: 1489
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4Luau24getmetatableTypeFunctionEPKNS_4TypeERKSt6vectorIS2_SaIS2_EERKS3_IPKNS_11TypePackVarESaISA_EENS_7NotNullINS_19TypeFunctionContextEEE:bb.a
  %i.ds = ptrtoint ptr %.sroa.24.0283 to i64
  %i.dt = ptrtoint ptr %.sroa.0128.0281 to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 6 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.av, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i109

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #32
          to label %.noexc115 unwind label %.loopexit.split-lp238

.noexc115:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i109: ; preds = %bb.au
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i110 = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i110, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i111 = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i111)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #33
          to label %.noexc116 unwind label %.loopexit237 ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i109
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  %i.ee = load ptr, ptr %0, align 8, !tbaa !47
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !47
  %i.ef = icmp sgt i64 %i.du, 0
  br i1 %i.ef, label %bb.aw, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i112

bb.aw:                                            ; preds = %.noexc116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %.sroa.0128.0281, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i112

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i112: ; preds = %bb.aw, %.noexc116
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.not.i17.i.i113 = icmp eq ptr %.sroa.0128.0281, null
  br i1 %.not.i17.i.i113, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i114, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i112
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0281, i64 noundef %i.du) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i114

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i114: ; preds = %bb.ax, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i112
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit117.thread

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit117.thread: ; preds = %bb.ap, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i114, %bb.at
  %.162191.ph = phi i1 [ %.061285, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i114 ], [ %.061285, %bb.at ], [ true, %bb.ap ] ; 2 uses
  %.sroa.24.1189.ph = phi ptr [ %i.eh, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i114 ], [ %.sroa.24.0283, %bb.at ], [ %.sroa.24.0283, %bb.ap ] ; 3 uses
  %.sroa.16.1187.ph = phi ptr [ %i.eg, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i114 ], [ %i.dr, %bb.at ], [ %.sroa.16.0282, %bb.ap ] ; 3 uses
  %.sroa.0128.1185.ph = phi ptr [ %i.ec, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i114 ], [ %.sroa.0128.0281, %bb.at ], [ %.sroa.0128.0281, %bb.ap ] ; 4 uses
  tail call void @_ZN4Luau27TypeFunctionReductionResultIPKNS_4TypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #29
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0125.0284, i64 8 ; 2 uses
  %.not234 = icmp eq ptr %i.ei, %i.df
  br i1 %.not234, label %._crit_edge, label %bb.al

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit117.thread
  %i.ej = icmp eq ptr %.sroa.0128.1185.ph, %.sroa.16.1187.ph
  %or.cond = select i1 %.162191.ph, i1 %i.ej, i1 false
  br i1 %or.cond, label %bb.ay, label %._crit_edge.thread

bb.ay:                                            ; preds = %._crit_edge
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ek, align 8, !tbaa !52
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.el, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.en, align 8, !tbaa !77
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.em, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false)
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit106, %._crit_edge
  %.sroa.24.0.lcssa355 = phi ptr [ %.sroa.24.1189.ph, %._crit_edge ], [ %.sroa.24.5, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit106 ] ; 2 uses
  %.sroa.16.0.lcssa354 = phi ptr [ %.sroa.16.1187.ph, %._crit_edge ], [ %.sroa.0128.5, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit106 ] ; 2 uses
  %.sroa.0128.0.lcssa353 = phi ptr [ %.sroa.0128.1185.ph, %._crit_edge ], [ %.sroa.0128.5, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit106 ] ; 4 uses
  %i.ep = ptrtoint ptr %.sroa.16.0.lcssa354 to i64
  %i.eq = ptrtoint ptr %.sroa.0128.0.lcssa353 to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = icmp eq i64 %i.er, 8
  br i1 %i.es, label %_ZN4Luau16IntersectionTypeD2Ev.exit.thread, label %bb.az

_ZN4Luau16IntersectionTypeD2Ev.exit.thread:       ; preds = %._crit_edge.thread
  %i.et = load ptr, ptr %.sroa.0128.0.lcssa353, align 8, !tbaa !47
  store ptr %i.et, ptr %0, align 8, !tbaa !46
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.eu, align 8, !tbaa !52
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ev, align 8, !tbaa !54
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.ex, align 8, !tbaa !77
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i8 0, i64 24, i1 false)
  br label %bb.be

bb.az:                                            ; preds = %._crit_edge.thread
  %i.ez = load ptr, ptr %4, align 8, !tbaa !152
  store ptr %.sroa.0128.0.lcssa353, ptr %9, align 8, !tbaa !35
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.16.0.lcssa354, ptr %i.fa, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %.sroa.24.0.lcssa355, ptr %i.fb, align 8, !tbaa !98
  %i.fc = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_16IntersectionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.ez, ptr noundef nonnull align 8 %9)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  store ptr %i.fc, ptr %0, align 8, !tbaa !46
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fd, align 8, !tbaa !52
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.fe, align 8, !tbaa !54
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.fg, align 8, !tbaa !77
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ff, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  %i.fi = load ptr, ptr %9, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i.i118 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i118, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fj = load ptr, ptr %i.fb, align 8, !tbaa !98
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fm) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.bc:                                            ; preds = %bb.az
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %9, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i.i119 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i119, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit98, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fp = load ptr, ptr %i.fb, align 8, !tbaa !98
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fs) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit98

_ZN4Luau16IntersectionTypeD2Ev.exit:              ; preds = %bb.ap, %bb.ao, %bb.ay
  %.sroa.0128.0277 = phi ptr [ %.sroa.0128.1185.ph, %bb.ay ], [ %.sroa.0128.0281, %bb.ao ], [ %.sroa.0128.0281, %bb.ap ] ; 2 uses
  %.sroa.24.0266 = phi ptr [ %.sroa.24.1189.ph, %bb.ay ], [ %.sroa.24.0283, %bb.ao ], [ %.sroa.24.0283, %bb.ap ]
  %.not.i.i.i121 = icmp eq ptr %.sroa.0128.0277, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN4Luau16IntersectionTypeD2Ev.exit.thread, %_ZN4Luau16IntersectionTypeD2Ev.exit
  %.sroa.24.0266360 = phi ptr [ %.sroa.24.0.lcssa355, %_ZN4Luau16IntersectionTypeD2Ev.exit.thread ], [ %.sroa.24.0266, %_ZN4Luau16IntersectionTypeD2Ev.exit ]
  %.sroa.0128.0277359 = phi ptr [ %.sroa.0128.0.lcssa353, %_ZN4Luau16IntersectionTypeD2Ev.exit.thread ], [ %.sroa.0128.0277, %_ZN4Luau16IntersectionTypeD2Ev.exit ] ; 2 uses
  %i.ft = ptrtoint ptr %.sroa.24.0266360 to i64
  %i.fu = ptrtoint ptr %.sroa.0128.0277359 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0277359, i64 noundef %i.fv) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZN4Luau16IntersectionTypeD2Ev.exit120:           ; preds = %bb.aq, %bb.ar
  %.pn75.pn = phi { ptr, i32 } [ %lpad.phi241, %bb.ar ], [ %i.dp, %bb.aq ] ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %.sroa.0128.0281, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit98, label %bb.bf

bb.bf:                                            ; preds = %_ZN4Luau16IntersectionTypeD2Ev.exit120
  %i.fw = ptrtoint ptr %.sroa.24.0283 to i64
  %i.fx = ptrtoint ptr %.sroa.0128.0281 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0281, i64 noundef %i.fy) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit98

.critedge89:                                      ; preds = %bb.o, %bb.n
  call fastcc void @_ZN4LuauL18getmetatableHelperEPKNS_4TypeERKNS_8LocationENS_7NotNullINS_19TypeFunctionContextEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %i.x, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr nonnull %4)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.bb, %bb.ba, %bb.ad, %bb.ac, %bb.be, %_ZN4Luau16IntersectionTypeD2Ev.exit, %bb.ag, %.critedge83, %.critedge89, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit98:   ; preds = %bb.bd, %bb.bc, %bb.ak, %bb.af, %bb.ae, %bb.r, %bb.bf, %_ZN4Luau16IntersectionTypeD2Ev.exit120, %bb.ah, %_ZN4Luau9UnionTypeD2Ev.exit95, %bb.m
  %.pn78 = phi { ptr, i32 } [ %i.al, %bb.m ], [ %.pn69, %bb.ah ], [ %.pn75.pn, %bb.bf ], [ %.pn69, %_ZN4Luau9UnionTypeD2Ev.exit95 ], [ %i.ba, %bb.r ], [ %.pn75.pn, %_ZN4Luau16IntersectionTypeD2Ev.exit120 ], [ %i.ck, %bb.af ], [ %i.ck, %bb.ae ], [ %i.fn, %bb.bd ], [ %i.fn, %bb.bc ], [ %i.di, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn78, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit98 ]
  resume { ptr, i32 } %.pn80.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4LuauL18getmetatableHelperEPKNS_4TypeERKNS_8LocationENS_7NotNullINS_19TypeFunctionContextEEE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree readonly captures(none) %3) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.17 = alloca [7 x i8], align 1            ; 7 uses
  %4 = alloca %"struct.Luau::UnionType", align 8  ; 6 uses
  %5 = alloca %"class.std::vector.146", align 8   ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %1) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %.thread193, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = icmp ne i32 %i.b, 9
  switch i32 %i.b, label %.thread132 [
    i32 10, label %.thread214
    i32 11, label %.thread113
    i32 4, label %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit
  ]

.thread214:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %.critedge

.thread113:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.064.0.copyload = load ptr, ptr %i.f, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17.0..sroa_idx, i64 7, i1 false)
  br label %.critedge

_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !405
  %i.i = icmp eq i32 %i.h, 7
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit
  %i.j = load ptr, ptr %3, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !491
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !492
  %i.q = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 4 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !98
  store ptr %i.n, ptr %i.q, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.558.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !31
  %i.u = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_9UnionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.j, ptr noundef nonnull align 8 %4)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %4, align 8, !tbaa !35     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %.thread132thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #31
  br label %.thread132thread-pre-split

bb.f:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i.i40 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i40, label %_ZN4Luau9UnionTypeD2Ev.exit41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #31
  br label %_ZN4Luau9UnionTypeD2Ev.exit41

bb.h:                                             ; preds = %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.064.0.copyload65 = load ptr, ptr %i.ag, align 8
  %.sroa.11.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.11.0.copyload69 = load i8, ptr %.sroa.11.0..sroa_idx68, align 8
  %.sroa.17.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17.0..sroa_idx74, i64 7, i1 false)
  br label %.thread132thread-pre-split

.thread132thread-pre-split:                       ; preds = %bb.e, %bb.d, %bb.h
  %.sroa.11.2138.ph = phi i8 [ %.sroa.11.0.copyload69, %bb.h ], [ 1, %bb.d ], [ 1, %bb.e ]
  %.sroa.064.2136.ph = phi ptr [ %.sroa.064.0.copyload65, %bb.h ], [ %i.u, %bb.d ], [ %i.u, %bb.e ]
  %.pr197 = load i32, ptr %i.a, align 8, !tbaa !113
  br label %.thread132

.thread132:                                       ; preds = %bb.b, %.thread132thread-pre-split
  %.pr198 = phi i32 [ %.pr197, %.thread132thread-pre-split ], [ %i.b, %bb.b ] ; 2 uses
  %.3140 = phi i1 [ false, %.thread132thread-pre-split ], [ %i.c, %bb.b ]
  %.sroa.11.2138 = phi i8 [ %.sroa.11.2138.ph, %.thread132thread-pre-split ], [ 0, %bb.b ] ; 2 uses
  %.sroa.064.2136 = phi ptr [ %.sroa.064.2136.ph, %.thread132thread-pre-split ], [ undef, %bb.b ] ; 2 uses
  switch i32 %.pr198, label %bb.i [
    i32 5, label %_ZN4Luau3getINS_15StringSingletonEEEPKT_PKNS_13SingletonTypeE.exit
    i32 12, label %.critedge
  ]

_ZN4Luau3getINS_15StringSingletonEEEPKT_PKNS_13SingletonTypeE.exit: ; preds = %.thread132
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !448
  %.not = icmp eq i32 %i.ai, 1
  br i1 %.not, label %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit44, label %.critedge

_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit44: ; preds = %_ZN4Luau3getINS_15StringSingletonEEEPKT_PKNS_13SingletonTypeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !493, !nonnull !102, !noundef !102 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.064.0.copyload66 = load ptr, ptr %i.an, align 8
  %.sroa.11.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.11.0.copyload71 = load i8, ptr %.sroa.11.0..sroa_idx70, align 8
  %.sroa.17.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.am, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17.0..sroa_idx75, i64 7, i1 false)
  br label %.critedge

bb.i:                                             ; preds = %.thread132
  %i.ao = icmp ne i32 %.pr198, 1                  ; 3 uses
  %brmerge.not = and i1 %i.ao, %.3140
  %.mux = select i1 %i.ao, ptr %.sroa.064.2136, ptr %i.a
  br i1 %brmerge.not, label %.thread193, label %.critedge

.thread193:                                       ; preds = %bb.i, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.aq, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.as, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  br label %bb.s

.critedge:                                        ; preds = %.thread214, %.thread113, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit44, %_ZN4Luau3getINS_15StringSingletonEEEPKT_PKNS_13SingletonTypeE.exit, %.thread132, %bb.i
  %.mux241 = phi ptr [ %.mux, %bb.i ], [ %.sroa.064.0.copyload, %.thread113 ], [ %.sroa.064.2136, %_ZN4Luau3getINS_15StringSingletonEEEPKT_PKNS_13SingletonTypeE.exit ], [ %.sroa.064.0.copyload66, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit44 ], [ %i.e, %.thread214 ], [ %i.a, %.thread132 ]
  %i.au = phi i1 [ %i.ao, %bb.i ], [ true, %.thread113 ], [ true, %_ZN4Luau3getINS_15StringSingletonEEEPKT_PKNS_13SingletonTypeE.exit ], [ true, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit44 ], [ true, %.thread214 ], [ true, %.thread132 ]
  %.sroa.11.4177240 = phi i8 [ %.sroa.11.2138, %bb.i ], [ %.sroa.11.0.copyload, %.thread113 ], [ %.sroa.11.2138, %_ZN4Luau3getINS_15StringSingletonEEEPKT_PKNS_13SingletonTypeE.exit ], [ %.sroa.11.0.copyload71, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit44 ], [ 1, %.thread214 ], [ 1, %.thread132 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.av, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.aw, ptr noundef nonnull align 1 dereferenceable(11) @.str.105, i64 11, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.ax, align 8, !tbaa !111
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.ay, align 1, !tbaa !46
  %.sroa.0.0.copyload = load i64, ptr %2, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %i.az = invoke { ptr, i8 } @_ZN4Luau18findMetatableEntryENS_7NotNullINS_12BuiltinTypesEEERSt6vectorINS_9TypeErrorESaIS4_EEPKNS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8LocationE(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %.critedge
  %i.ba = extractvalue { ptr, i8 } %i.az, 0
  %i.bb = extractvalue { ptr, i8 } %i.az, 1
  %i.bc = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aw
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bg = trunc nuw i8 %i.bb to i1
  br i1 %i.bg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ba, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.p

bb.l:                                             ; preds = %.critedge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aw
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.l
  %i.bk = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZN4Luau9UnionTypeD2Ev.exit41

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = trunc nuw i8 %.sroa.11.4177240 to i1
  %not. = xor i1 %i.au, true
  %i.bn = select i1 %not., i1 true, i1 %i.bm
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %.mux241, ptr %0, align 8
  %.sroa.11.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %.sroa.11.0..sroa_idx72, align 8
  %.sroa.17.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17.0..sroa_idx76, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17, i64 7, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.av, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47
  store ptr %i.bq, ptr %0, align 8, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.br, align 8, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.bs, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.bu, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %i.bw = load ptr, ptr %5, align 8, !tbaa !255   ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !258 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bw, %i.by
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i ], [ %i.bw, %bb.p ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !259
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  invoke void %i.cd(ptr noundef nonnull %i.ce)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy unwind label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #30
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %.lr.ph.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !46
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #31
  br label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i:  ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, %i.by
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !261

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !255
  br label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.co = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bw, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !262
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #31
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit, %.thread193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  ret void

_ZN4Luau9UnionTypeD2Ev.exit41:                    ; preds = %bb.f, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn34.pn = phi { ptr, i32 } [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.aa, %bb.g ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau27TypeFunctionReductionResultIPKNS_4TypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !46
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !106
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !77, !range !101, !noundef !102
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !77
  br i1 %i.s, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !46
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #31
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20objectofTypeFunctionEPKNS_4TypeERKSt6vectorIS2_SaIS2_EERKS3_IPKNS_11TypePackVarESaISA_EENS_7NotNullINS_19TypeFunctionContextEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::TypeFunctionReductionResult") align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree readonly captures(none) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.107, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %5) #32
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !41     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !46
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.m

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE2atEm.exit:   ; preds = %bb.b
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.t = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.s) ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.w = tail call noundef zeroext i1 @_ZN4Luau9isPendingEPKNS_4TypeEPNS_16ConstraintSolverE(ptr noundef %i.t, ptr noundef %i.v)
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE2atEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.x, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 3 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !98
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.af, align 8, !tbaa !77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  br label %bb.k

bb.g:                                             ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE2atEm.exit
  %.not.i.i27 = icmp eq ptr %i.t, null
  br i1 %.not.i.i27, label %.critedge26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.t, align 8, !tbaa !113
  %i.ah = icmp eq i32 %i.ag, 11
  br i1 %i.ah, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit, label %.critedge26

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !494, !range !101, !noundef !102
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %.critedge26

bb.i:                                             ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 248
end_hunk_0
