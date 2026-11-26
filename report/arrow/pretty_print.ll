Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/pretty_print?download=true
inline.NumInlined: 4037
inline.NumDeleted: 1050
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitERKNS_10UnionArrayE:_ZN5arrow6StatusD2Ev.exit
  store i32 %i.dq, ptr %13, align 8, !tbaa !107, !alias.scope !1026
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1027
  store ptr %13, ptr %3, align 8, !tbaa !109, !noalias !1027
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.dq, ptr %i.ds, align 8, !tbaa !112, !noalias !1027
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !113, !noalias !1027
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter5PrintERKNS_5ArrayE(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN5arrow6StatusD2Ev.exit92 unwind label %bb.ac, !inline_history !143

_ZN5arrow6StatusD2Ev.exit92:                      ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1027
  %i.du = load ptr, ptr %12, align 8, !tbaa !128  ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !128
  store ptr null, ptr %12, align 8, !tbaa !128
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.dv = icmp eq ptr %i.du, null
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %10, align 8, !tbaa !124
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !119 ; 15 uses
  %.not.i.i.i97 = icmp eq ptr %i.dx, null         ; 2 uses
  br i1 %i.dv, label %_ZN5arrow6StatusD2Ev.exit96, label %.critedge57

.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i72, %.noexc79, %.noexc78, %bb.r, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit75, %bb.q, %_ZN5arrow6StatusD2Ev.exit70
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp126

bb.aa:                                            ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit81
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ak

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %13) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn46.pn = phi { ptr, i32 } [ %i.ea, %bb.ac ], [ %i.dz, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #18
  br label %bb.ak

_ZN5arrow6StatusD2Ev.exit96:                      ; preds = %_ZN5arrow6StatusD2Ev.exit92
  br i1 %.not.i.i.i97, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.eb, align 8, !tbaa !121
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !122
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !124
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !4
  %i.ej = load ptr, ptr %i.dx, align 8, !tbaa !124
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !4
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i = phi i32 [ %i.ee, %bb.ah ], [ %i.eo, %bb.ai ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ep, label %bb.aj, label %_ZN5arrow5ArrayD2Ev.exit, !prof !125

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !233
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %_ZN5arrow6StatusD2Ev.exit96, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.al

bb.ak:                                            ; preds = %bb.ad, %bb.aa
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.ad ], [ %i.dy, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.loopexit.split-lp126

bb.al:                                            ; preds = %_ZN5arrow5ArrayD2Ev.exit, %_ZNK5arrow10UnionArray4modeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.eq = load ptr, ptr %i.aa, align 8, !tbaa !118 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !223
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !224
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = shl i64 %i.ex, 28
  %i.ez = ashr i64 %i.ey, 32                      ; 4 uses
  %i.fa = icmp ugt i64 %i.ez, 1152921504606846975
  br i1 %i.fa, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc98 unwind label %bb.ao

.noexc98:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %.not = icmp eq i64 %i.ez, 0
  br i1 %.not, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.an
  %i.fc = shl nuw nsw i64 %i.ez, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #21
          to label %.noexc99 unwind label %bb.ao  ; 4 uses

.noexc99:                                         ; preds = %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.fd, ptr %14, align 8, !tbaa !231
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !228
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ez ; 2 uses
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !229
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !118 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %.pre161 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !223
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre163 = load ptr, ptr %.phi.trans.insert162, align 8, !tbaa !224
  %.pre164 = ptrtoint ptr %.pre161 to i64
  %.pre165 = ptrtoint ptr %.pre163 to i64
  %.pre167 = sub i64 %.pre164, %.pre165
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit: ; preds = %bb.an, %.noexc99
  %.pre-phi168 = phi i64 [ %i.ex, %bb.an ], [ %.pre167, %.noexc99 ]
  %.promoted137 = phi ptr [ null, %bb.an ], [ %i.fd, %.noexc99 ] ; 2 uses
  %.promoted = phi ptr [ null, %bb.an ], [ %i.ff, %.noexc99 ] ; 2 uses
  %i.fg = lshr exact i64 %.pre-phi168, 4
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit
  %i.fl = phi ptr [ %.promoted137, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit ], [ %i.gk, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %i.fm = phi ptr [ %.promoted, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit ], [ %i.gl, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  store ptr %i.fm, ptr %i.fb, align 8
  store ptr %i.fl, ptr %14, align 8
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter13PrintChildrenERKSt6vectorIPKNS_5ArrayESaIS5_EEll(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.bf unwind label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i, %bb.am
  %i.fn = phi ptr [ null, %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.am ], [ %i.fm, %._crit_edge ]
  %i.fo = phi ptr [ null, %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.am ], [ %i.fl, %._crit_edge ]
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ap:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0142 = phi i32 [ 0, %.lr.ph ], [ %i.hc, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.fq = phi ptr [ %.promoted, %.lr.ph ], [ %i.gl, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 7 uses
  %i.fr = phi ptr [ %.promoted137, %.lr.ph ], [ %i.gk, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNK5arrow10UnionArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %.0142)
          to label %bb.aq unwind label %bb.bc

bb.aq:                                            ; preds = %bb.ap
  %i.fs = load ptr, ptr %15, align 8, !tbaa !132  ; 2 uses
  %i.ft = load ptr, ptr %i.fj, align 8, !tbaa !228 ; 4 uses
  %.not.i100 = icmp eq ptr %i.ft, %i.fq
  br i1 %.not.i100, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !230
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.fj, align 8, !tbaa !228
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit

bb.as:                                            ; preds = %bb.aq
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fx = sub i64 %i.fv, %i.fw                    ; 5 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775800
  br i1 %i.fy, label %bb.at, label %_ZNKSt6vectorIPKN5arrow5ArrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.at:                                            ; preds = %bb.as
  store ptr %i.fq, ptr %i.fb, align 8
  store ptr %i.fr, ptr %14, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #20
          to label %.noexc103 unwind label %.loopexit.split-lp

.noexc103:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIPKN5arrow5ArrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.fz = ashr exact i64 %i.fx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i101 = call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.ga = add nsw i64 %.sroa.speculated.i.i.i101, %i.fz ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.fz
  %i.gc = call i64 @llvm.umin.i64(i64 %i.ga, i64 1152921504606846975)
  %i.gd = select i1 %i.gb, i64 1152921504606846975, i64 %i.gc ; 3 uses
  %.not.i.i.i102 = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %.not.i.i.i102)
  %i.ge = shl nuw nsw i64 %i.gd, 3
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #21
          to label %.noexc104 unwind label %.loopexit ; 4 uses

.noexc104:                                        ; preds = %_ZNKSt6vectorIPKN5arrow5ArrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fx ; 2 uses
  store ptr %i.fs, ptr %i.gg, align 8, !tbaa !230
  %i.gh = icmp sgt i64 %i.fx, 0
  br i1 %i.gh, label %bb.au, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.au:                                            ; preds = %.noexc104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gf, ptr align 8 %i.fr, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.au, %.noexc104
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %16 = ptrtoint ptr %i.fq to i64
  %17 = sub i64 %16, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %17) #19
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.av, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.gi, ptr %i.fj, align 8, !tbaa !228
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gd
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ar
  %i.gk = phi ptr [ %i.gf, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.fr, %bb.ar ] ; 2 uses
  %i.gl = phi ptr [ %i.gj, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.fq, %bb.ar ] ; 2 uses
  %i.gm = load ptr, ptr %i.fk, align 8, !tbaa !119 ; 8 uses
  %.not.i.i105 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i105, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 4 uses
  %i.go = load atomic i64, ptr %i.gn acquire, align 8 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 4294967297
  %i.gq = trunc i64 %i.go to i32                  ; 2 uses
  br i1 %i.gp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.gn, align 8, !tbaa !121
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store i32 0, ptr %i.gr, align 4, !tbaa !122
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !124
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #18, !inline_history !0
  %i.gv = load ptr, ptr %i.gm, align 8, !tbaa !124
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #18, !inline_history !0
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i106 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i106, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = add nsw i32 %i.gq, -1
  store i32 %i.gz, ptr %i.gn, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107

bb.ba:                                            ; preds = %bb.ay
  %i.ha = atomicrmw volatile add ptr %i.gn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i108 = phi i32 [ %i.gq, %bb.az ], [ %i.ha, %bb.ba ]
  %i.hb = icmp eq i32 %.0.i.i.i.i108, 1
  br i1 %i.hb, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #18
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.hc = add nuw nsw i32 %.0142, 1               ; 2 uses
  %i.hd = load ptr, ptr %i.aa, align 8, !tbaa !118 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 72
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !223
  %i.hh = load ptr, ptr %i.he, align 8, !tbaa !224
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = lshr exact i64 %i.hk, 4
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = icmp slt i32 %i.hc, %i.hm
  br i1 %i.hn, label %bb.ap, label %._crit_edge, !llvm.loop !1012

bb.bc:                                            ; preds = %bb.ap
  %i.ho = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fq, ptr %i.fb, align 8
  store ptr %i.fr, ptr %14, align 8
  br label %bb.be

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN5arrow5ArrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fq, ptr %i.fb, align 8
  store ptr %i.fr, ptr %14, align 8
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #18
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn50 = phi { ptr, i32 } [ %lpad.phi, %bb.bd ], [ %i.ho, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bh

bb.bf:                                            ; preds = %._crit_edge
  %.not.i.i.i109 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hp = ptrtoint ptr %i.fm to i64
  %i.hq = ptrtoint ptr %i.fl to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.hr) #19
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit:   ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.critedge

bb.bh:                                            ; preds = %bb.be, %bb.ao
  %i.hs = phi ptr [ %i.fq, %bb.be ], [ %i.fn, %bb.ao ]
  %i.ht = phi ptr [ %i.fr, %bb.be ], [ %i.fo, %bb.ao ] ; 3 uses
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.be ], [ %i.fp, %bb.ao ]
  %.not.i.i.i110 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit111, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hw) #19
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit111

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit111: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.loopexit.split-lp126

.critedge57:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit92
  br i1 %.not.i.i.i97, label %_ZN5arrow5ArrayD2Ev.exit116, label %bb.bj

bb.bj:                                            ; preds = %.critedge57
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.hy = load atomic i64, ptr %i.hx acquire, align 8 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 4294967297
  %i.ia = trunc i64 %i.hy to i32                  ; 2 uses
  br i1 %i.hz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.hx, align 8, !tbaa !121
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !122
  %i.ic = load ptr, ptr %i.dx, align 8, !tbaa !124
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !4
  %i.if = load ptr, ptr %i.dx, align 8, !tbaa !124
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !4
  br label %_ZN5arrow5ArrayD2Ev.exit116

bb.bl:                                            ; preds = %bb.bj
  %i.ii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i.i113 = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i.i113, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ij = add nsw i32 %i.ia, -1
  store i32 %i.ij, ptr %i.hx, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114

bb.bn:                                            ; preds = %bb.bl
  %i.ik = atomicrmw volatile add ptr %i.hx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i115 = phi i32 [ %i.ia, %bb.bm ], [ %i.ik, %bb.bn ]
  %i.il = icmp eq i32 %.0.i.i.i.i.i115, 1
  br i1 %i.il, label %bb.bo, label %_ZN5arrow5ArrayD2Ev.exit116, !prof !125

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !233
  br label %_ZN5arrow5ArrayD2Ev.exit116

_ZN5arrow5ArrayD2Ev.exit116:                      ; preds = %.critedge57, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit66, %_ZN5arrow5ArrayD2Ev.exit116, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %6, align 8, !tbaa !124
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !119 ; 8 uses
  %.not.i.i.i117 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i117, label %_ZN5arrow5ArrayD2Ev.exit121, label %bb.bp

bb.bp:                                            ; preds = %.critedge
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.bq, label %bb.br
end_hunk_0
