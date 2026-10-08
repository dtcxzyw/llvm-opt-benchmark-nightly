Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FunctionInvocation?download=true
inline.NumInlined: 600
inline.NumDeleted: 288
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK18FunctionInvocation19permute_param_odersEv:bb.a
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020244
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !94
  %i.ds = invoke noundef i32 @_ZNK10Expression10func_countEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %.not = icmp eq i32 %i.ds, 0
  %.pre295 = trunc i64 %.020244 to i32            ; 4 uses
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit89, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i80 = icmp eq ptr %.sroa.11.0242, %.sroa.16.0243
  br i1 %.not.i.i80, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %.pre295, ptr %.sroa.11.0242, align 4, !tbaa !93
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.11.0242, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit89

bb.ah:                                            ; preds = %bb.af
  %i.du = ptrtoint ptr %.sroa.16.0243 to i64
  %i.dv = ptrtoint ptr %.sroa.0155.0241 to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 6 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775804
  br i1 %i.dx, label %bb.ai, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i81

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc87 unwind label %.loopexit.split-lp187

.noexc87:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i81: ; preds = %bb.ah
  %i.dy = ashr exact i64 %i.dw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i82 = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i82, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 2305843009213693951)
  %i.ec = select i1 %i.ea, i64 2305843009213693951, i64 %i.eb ; 3 uses
  %.not.i.i.i.i83 = icmp ne i64 %i.ec, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i83)
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #22
          to label %.noexc88 unwind label %.loopexit186 ; 4 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i81
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 2 uses
  store i32 %.pre295, ptr %i.ef, align 4, !tbaa !93
  %i.eg = icmp sgt i64 %i.dw, 0
  br i1 %i.eg, label %bb.aj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i84

bb.aj:                                            ; preds = %.noexc88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ee, ptr align 4 %.sroa.0155.0241, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i84

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i84: ; preds = %bb.aj, %.noexc88
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %.not.i17.i.i.i85 = icmp eq ptr %.sroa.0155.0241, null
  br i1 %.not.i17.i.i.i85, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i86, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i84
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.0241, i64 noundef %i.dw) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i86

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i86: ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i84
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit89

bb.al:                                            ; preds = %bb.ad
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit186:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i81
  %lpad.loopexit188 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp187:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp189 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt6vectorIiSaIiEE9push_backEOi.exit89:         ; preds = %bb.ae, %bb.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i86
  %.sroa.0155.1 = phi ptr [ %i.ee, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i86 ], [ %.sroa.0155.0241, %bb.ag ], [ %.sroa.0155.0241, %bb.ae ] ; 12 uses
  %.sroa.11.1 = phi ptr [ %i.eh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i86 ], [ %i.dt, %bb.ag ], [ %.sroa.11.0242, %bb.ae ] ; 3 uses
  %.sroa.16.1 = phi ptr [ %i.ei, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i86 ], [ %.sroa.16.0243, %bb.ag ], [ %.sroa.16.0243, %bb.ae ] ; 8 uses
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !117 ; 4 uses
  %i.el = load ptr, ptr %i.j, align 8, !tbaa !118
  %.not.i.i90 = icmp eq ptr %i.ek, %i.el
  br i1 %.not.i.i90, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit89
  store i32 %.pre295, ptr %i.ek, align 4, !tbaa !93
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store ptr %i.em, ptr %i.i, align 8, !tbaa !117
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit99

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit89
  %i.en = load ptr, ptr %2, align 8, !tbaa !116   ; 4 uses
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 6 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775804
  br i1 %i.er, label %bb.ao, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i91

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc97 unwind label %.loopexit.split-lp192

.noexc97:                                         ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i91: ; preds = %bb.an
  %i.es = ashr exact i64 %i.eq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i92 = tail call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i.i.i92, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = tail call i64 @llvm.umin.i64(i64 %i.et, i64 2305843009213693951)
  %i.ew = select i1 %i.eu, i64 2305843009213693951, i64 %i.ev ; 3 uses
  %.not.i.i.i.i93 = icmp ne i64 %i.ew, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i93)
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #22
          to label %.noexc98 unwind label %.loopexit191 ; 4 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i91
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %i.eq ; 2 uses
  store i32 %.pre295, ptr %i.ez, align 4, !tbaa !93
  %i.fa = icmp sgt i64 %i.eq, 0
  br i1 %i.fa, label %bb.ap, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94

bb.ap:                                            ; preds = %.noexc98
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ey, ptr align 4 %i.en, i64 %i.eq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94: ; preds = %bb.ap, %.noexc98
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %.not.i17.i.i.i95 = icmp eq ptr %i.en, null
  br i1 %.not.i17.i.i.i95, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94
  tail call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.eq) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96: ; preds = %bb.aq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94
  store ptr %i.ey, ptr %2, align 8, !tbaa !116
  store ptr %i.fb, ptr %i.i, align 8, !tbaa !117
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fc, ptr %i.j, align 8, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit99

_ZNSt6vectorIiSaIiEE9push_backEOi.exit99:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96, %bb.am
  %i.fd = add nuw i64 %.020244, 1                 ; 2 uses
  %i.fe = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = ashr exact i64 %i.fi, 3
  %i.fk = icmp ult i64 %i.fd, %i.fj
  br i1 %i.fk, label %bb.ad, label %._crit_edge, !llvm.loop !152

.loopexit191:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i91
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp192:                            ; preds = %bb.ao
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ar:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %.thread
  %i.fl = phi i64 [ %i.dc, %bb.aa ], [ %i.dc, %bb.ab ], [ %i.dc, %bb.ac ], [ %i.de, %.thread ]
  %.sroa.16.0.lcssa359 = phi ptr [ %.sroa.16.1, %bb.aa ], [ %.sroa.16.1, %bb.ab ], [ %.sroa.16.1, %bb.ac ], [ %.sroa.16.0.lcssa360, %.thread ] ; 4 uses
  %.sroa.0155.0.lcssa356 = phi ptr [ %.sroa.0155.1, %bb.aa ], [ %.sroa.0155.1, %bb.ab ], [ %.sroa.0155.1, %bb.ac ], [ %.sroa.0155.0.lcssa357, %.thread ] ; 10 uses
  %i.fm = phi ptr [ %i.dl, %bb.aa ], [ %i.dl, %bb.ab ], [ %i.dl, %bb.ac ], [ %i.dg, %.thread ] ; 2 uses
  %i.fn = phi ptr [ %i.dk, %bb.aa ], [ %i.dk, %bb.ab ], [ %i.dk, %bb.ac ], [ null, %.thread ]
  %i.fo = phi ptr [ %i.dj, %bb.aa ], [ %i.dj, %bb.ab ], [ %i.dj, %bb.ac ], [ %i.df, %.thread ]
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !117
  invoke void @_Z7permuteSt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.83") align 8 %3, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.fp = load ptr, ptr %4, align 8, !tbaa !116   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !118
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.ft) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.as, %bb.at
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !122
  %i.fw = load ptr, ptr %3, align 8, !tbaa !125   ; 3 uses
  %.not257 = icmp eq ptr %i.fv, %i.fw
  br i1 %.not257, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph252

.lr.ph252:                                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.az

._crit_edge253:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit127
  %.not4.i.i.i = icmp eq ptr %i.kr, %i.kq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge253, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gi, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.kr, %._crit_edge253 ] ; 3 uses
  %i.gc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !118
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.au, %.lr.ph.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.gi, %i.kq
  br i1 %.not.i.i.i100, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !125
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge253
  %6 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.kr, %._crit_edge253 ], [ %i.fw, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %6, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit76, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !121
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %6 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.gn) #23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit76

bb.aw:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit102

bb.ax:                                            ; preds = %bb.ar
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %4, align 8, !tbaa !116   ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIiSaIiEED2Ev.exit102, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gr = load ptr, ptr %i.fm, align 8, !tbaa !118
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gu) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit102

bb.az:                                            ; preds = %.lr.ph252, %_ZNSt6vectorIiSaIiEED2Ev.exit127
  %i.gv = phi ptr [ %i.fw, %.lr.ph252 ], [ %i.kr, %_ZNSt6vectorIiSaIiEED2Ev.exit127 ]
  %.019251 = phi i64 [ 0, %.lr.ph252 ], [ %i.kp, %_ZNSt6vectorIiSaIiEED2Ev.exit127 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %.019251 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !117 ; 2 uses
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !116 ; 4 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 7 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.gy, %i.gz
  br i1 %.not.i.i.i.i103, label %.thread165, label %bb.ba

.thread165:                                       ; preds = %bb.az
  %i.hd = getelementptr inbounds i8, ptr null, i64 %i.hc
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit108

bb.ba:                                            ; preds = %bb.az
  %i.he = icmp ugt i64 %i.hc, 9223372036854775804
  br i1 %i.he, label %.noexc.i.i105, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i104, !prof !111

.noexc.i.i105:                                    ; preds = %bb.ba
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %.noexc.i.i105
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i104: ; preds = %bb.ba
  %i.hf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #22
          to label %.noexc107 unwind label %.loopexit ; 6 uses

.noexc107:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i104
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hc ; 3 uses
  %i.hh = icmp samesign ugt i64 %i.hc, 4
  br i1 %i.hh, label %bb.bb, label %bb.bc, !prof !124

bb.bb:                                            ; preds = %.noexc107
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hf, ptr align 4 %i.gz, i64 %i.hc, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit108

bb.bc:                                            ; preds = %.noexc107
  %i.hi = icmp eq i64 %i.hc, 4
  br i1 %i.hi, label %bb.bd, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit108

bb.bd:                                            ; preds = %bb.bc
  %i.hj = load i32, ptr %i.gz, align 4, !tbaa !93
  store i32 %i.hj, ptr %i.hf, align 4, !tbaa !93
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit108

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit108:             ; preds = %bb.bd, %bb.bc, %bb.bb, %.thread165
  %i.hk = phi ptr [ %i.hg, %bb.bb ], [ %i.hg, %bb.bc ], [ %i.hg, %bb.bd ], [ %i.hd, %.thread165 ] ; 3 uses
  %i.hl = phi ptr [ %i.hf, %bb.bb ], [ %i.hf, %bb.bc ], [ %i.hf, %bb.bd ], [ null, %.thread165 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.hm = load ptr, ptr %i.fx, align 8, !tbaa !117 ; 2 uses
  %i.hn = load ptr, ptr %2, align 8, !tbaa !116   ; 4 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i109 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i.i.i.i109, label %.thread166, label %bb.be

.thread166:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit108
  %i.hr = getelementptr inbounds i8, ptr null, i64 %i.hq ; 2 uses
  store i64 0, ptr %5, align 8
  store ptr %i.hr, ptr %i.fz, align 8, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit114

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit108
  %i.hs = icmp ugt i64 %i.hq, 9223372036854775804
  br i1 %i.hs, label %.noexc.i.i111, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i110, !prof !111

.noexc.i.i111:                                    ; preds = %bb.be
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc112 unwind label %.loopexit.split-lp177

.noexc112:                                        ; preds = %.noexc.i.i111
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i110: ; preds = %bb.be
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #22
          to label %.noexc113 unwind label %.loopexit176 ; 8 uses

.noexc113:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i110
  store ptr %i.ht, ptr %5, align 8, !tbaa !116
  store ptr %i.ht, ptr %i.fy, align 8, !tbaa !117
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hq ; 4 uses
  store ptr %i.hu, ptr %i.fz, align 8, !tbaa !118
  %i.hv = icmp samesign ugt i64 %i.hq, 4
  br i1 %i.hv, label %bb.bf, label %bb.bg, !prof !124

bb.bf:                                            ; preds = %.noexc113
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ht, ptr align 4 %i.hn, i64 %i.hq, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit114

bb.bg:                                            ; preds = %.noexc113
  %i.hw = icmp eq i64 %i.hq, 4
  br i1 %i.hw, label %bb.bh, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit114

bb.bh:                                            ; preds = %bb.bg
  %i.hx = load i32, ptr %i.hn, align 4, !tbaa !93
  store i32 %i.hx, ptr %i.ht, align 4, !tbaa !93
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit114

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit114:             ; preds = %.thread166, %bb.bf, %bb.bg, %bb.bh
  %i.hy = phi ptr [ %i.hu, %bb.bf ], [ %i.hu, %bb.bg ], [ %i.hu, %bb.bh ], [ %i.hr, %.thread166 ] ; 3 uses
  %i.hz = phi ptr [ %i.ht, %bb.bf ], [ %i.ht, %bb.bg ], [ %i.ht, %bb.bh ], [ null, %.thread166 ] ; 7 uses
  store ptr %i.hy, ptr %i.fy, align 8, !tbaa !117
  %i.ia = ptrtoint ptr %i.hk to i64
  %i.ib = ptrtoint ptr %i.hl to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 2 uses
  %.not258 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not258, label %._crit_edge249, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit114
  %i.id = ashr exact i64 %i.ic, 2                 ; 3 uses
  %xtraiter = and i64 %i.id, 3                    ; 3 uses
  %i.ie = icmp ult i64 %i.id, 4
  br i1 %i.ie, label %.lr.ph248.epil.preheader, label %.lr.ph248.preheader.new

.lr.ph248.preheader.new:                          ; preds = %.lr.ph248.preheader
  %unroll_iter = and i64 %i.id, -4
  br label %.lr.ph248

._crit_edge249.loopexit.unr-lcssa:                ; preds = %.lr.ph248
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge249, label %.lr.ph248.epil.preheader

.lr.ph248.epil.preheader:                         ; preds = %._crit_edge249.loopexit.unr-lcssa, %.lr.ph248.preheader
  %.018247.epil.init = phi i64 [ 0, %.lr.ph248.preheader ], [ %i.kj, %._crit_edge249.loopexit.unr-lcssa ]
  %lcmp.mod446 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod446)
  br label %.lr.ph248.epil

.lr.ph248.epil:                                   ; preds = %.lr.ph248.epil, %.lr.ph248.epil.preheader
  %.018247.epil = phi i64 [ %i.il, %.lr.ph248.epil ], [ %.018247.epil.init, %.lr.ph248.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph248.epil ], [ 0, %.lr.ph248.epil.preheader ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.lcssa356, i64 %.018247.epil
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !93
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.018247.epil
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !93
  %i.ij = sext i32 %i.ig to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ij
  store i32 %i.ii, ptr %i.ik, align 4, !tbaa !93
  %i.il = add nuw i64 %.018247.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge249, label %.lr.ph248.epil, !llvm.loop !153

._crit_edge249:                                   ; preds = %._crit_edge249.loopexit.unr-lcssa, %.lr.ph248.epil, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit114
  %i.im = load ptr, ptr %i.ga, align 8, !tbaa !122 ; 6 uses
  %i.in = load ptr, ptr %i.gb, align 8, !tbaa !121
  %.not.i115 = icmp eq ptr %i.im, %i.in
  br i1 %.not.i115, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge249
  %i.io = ptrtoint ptr %i.hy to i64
  %i.ip = ptrtoint ptr %i.hz to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i116 = icmp eq ptr %i.hy, %i.hz
  br i1 %.not.i.i.i.i.i.i116, label %.noexc121, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ir = icmp ugt i64 %i.iq, 9223372036854775804
  br i1 %i.ir, label %.noexc.i.i.i.i119, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i117, !prof !111

.noexc.i.i.i.i119:                                ; preds = %bb.bj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc120 unwind label %.loopexit.split-lp182

.noexc120:                                        ; preds = %.noexc.i.i.i.i119
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i117: ; preds = %bb.bj
  %i.is = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #22
          to label %.noexc121 unwind label %.loopexit181

.noexc121:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i117, %bb.bi
  %i.it = phi ptr [ null, %bb.bi ], [ %i.is, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i117 ] ; 6 uses
  store ptr %i.it, ptr %i.im, align 8, !tbaa !116
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !117
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iq
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !118
  %i.ix = load ptr, ptr %5, align 8, !tbaa !123   ; 4 uses
  %i.iy = load ptr, ptr %i.fy, align 8, !tbaa !123
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.ix to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 4 uses
  %i.jc = icmp sgt i64 %i.jb, 4
  br i1 %i.jc, label %bb.bk, label %bb.bl, !prof !112

bb.bk:                                            ; preds = %.noexc121
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.it, ptr align 4 %i.ix, i64 %i.jb, i1 false)
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i118

bb.bl:                                            ; preds = %.noexc121
  %i.jd = icmp eq i64 %i.jb, 4
  br i1 %i.jd, label %bb.bm, label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i118

bb.bm:                                            ; preds = %bb.bl
  %i.je = load i32, ptr %i.ix, align 4, !tbaa !93
  store i32 %i.je, ptr %i.it, align 4, !tbaa !93
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i118

_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i118: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.jf = getelementptr inbounds i8, ptr %i.it, i64 %i.jb
  store ptr %i.jf, ptr %i.iu, align 8, !tbaa !117
  %i.jg = load ptr, ptr %i.ga, align 8, !tbaa !122
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  store ptr %i.jh, ptr %i.ga, align 8, !tbaa !122
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123

bb.bn:                                            ; preds = %._crit_edge249
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.im, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123_crit_edge unwind label %.loopexit181

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123_crit_edge: ; preds = %bb.bn
  %.pre = load ptr, ptr %5, align 8, !tbaa !116
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i104
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

.loopexit.split-lp:                               ; preds = %.noexc.i.i105
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

.loopexit176:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i110
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit129

.loopexit.split-lp177:                            ; preds = %.noexc.i.i111
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit129

.lr.ph248:                                        ; preds = %.lr.ph248, %.lr.ph248.preheader.new
  %.018247 = phi i64 [ 0, %.lr.ph248.preheader.new ], [ %i.kj, %.lr.ph248 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph248.preheader.new ], [ %niter.next.3, %.lr.ph248 ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.lcssa356, i64 %.018247
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !93
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.018247
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !93
  %i.jm = sext i32 %i.jj to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jm
  store i32 %i.jl, ptr %i.jn, align 4, !tbaa !93
  %i.jo = or disjoint i64 %.018247, 1             ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.lcssa356, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !93
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.jo
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !93
  %i.jt = sext i32 %i.jq to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jt
  store i32 %i.js, ptr %i.ju, align 4, !tbaa !93
  %i.jv = or disjoint i64 %.018247, 2             ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.lcssa356, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !93
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.jv
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !93
  %i.ka = sext i32 %i.jx to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ka
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !93
  %i.kc = or disjoint i64 %.018247, 3             ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.lcssa356, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !93
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.kc
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !93
  %i.kh = sext i32 %i.ke to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.kh
  store i32 %i.kg, ptr %i.ki, align 4, !tbaa !93
  %i.kj = add nuw i64 %.018247, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge249.loopexit.unr-lcssa, label %.lr.ph248, !llvm.loop !154

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123_crit_edge, %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i118
  %i.kk = phi ptr [ %.pre, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123_crit_edge ], [ %i.ix, %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i118 ] ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIiSaIiEED2Ev.exit125, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123
  %i.kl = load ptr, ptr %i.fz, align 8, !tbaa !118
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kk to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.ko) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit125

_ZNSt6vectorIiSaIiEED2Ev.exit125:                 ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit123, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.not.i.i.i126 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIiSaIiEED2Ev.exit127, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit125
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.ic) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit127

_ZNSt6vectorIiSaIiEED2Ev.exit127:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit125, %bb.bp
  %i.kp = add nuw i64 %.019251, 1                 ; 2 uses
  %i.kq = load ptr, ptr %i.fu, align 8, !tbaa !122 ; 3 uses
  %i.kr = load ptr, ptr %3, align 8, !tbaa !125   ; 5 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = sdiv exact i64 %i.ku, 24
  %i.kw = icmp ult i64 %i.kp, %i.kv
  br i1 %i.kw, label %bb.az, label %._crit_edge253, !llvm.loop !155

.loopexit181:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i117, %bb.bn
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp182:                            ; preds = %.noexc.i.i.i.i119
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp182, %.loopexit181
  %lpad.phi185 = phi { ptr, i32 } [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ] ; 2 uses
  %i.kx = load ptr, ptr %5, align 8, !tbaa !116   ; 3 uses
  %.not.i.i.i128 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIiSaIiEED2Ev.exit129, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ky = load ptr, ptr %i.fz, align 8, !tbaa !118
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lb) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit129

_ZNSt6vectorIiSaIiEED2Ev.exit129:                 ; preds = %.loopexit176, %.loopexit.split-lp177, %bb.br, %bb.bq
  %.pn = phi { ptr, i32 } [ %lpad.phi185, %bb.br ], [ %lpad.phi185, %bb.bq ], [ %lpad.loopexit178, %.loopexit176 ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp177 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.not.i.i.i130 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIiSaIiEED2Ev.exit131, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit129
  %i.lc = ptrtoint ptr %i.hk to i64
  %i.ld = ptrtoint ptr %i.hl to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.le) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.bs, %_ZNSt6vectorIiSaIiEED2Ev.exit129
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bs ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit129 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit102

_ZNSt6vectorIiSaIiEED2Ev.exit102:                 ; preds = %bb.ay, %bb.ax, %_ZNSt6vectorIiSaIiEED2Ev.exit131, %bb.aw
  %.sroa.16.0.lcssa358 = phi ptr [ %.sroa.16.0.lcssa359, %_ZNSt6vectorIiSaIiEED2Ev.exit131 ], [ %.sroa.16.1, %bb.aw ], [ %.sroa.16.0.lcssa359, %bb.ax ], [ %.sroa.16.0.lcssa359, %bb.ay ]
  %.sroa.0155.0.lcssa355 = phi ptr [ %.sroa.0155.0.lcssa356, %_ZNSt6vectorIiSaIiEED2Ev.exit131 ], [ %.sroa.0155.1, %bb.aw ], [ %.sroa.0155.0.lcssa356, %bb.ax ], [ %.sroa.0155.0.lcssa356, %bb.ay ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit131 ], [ %i.go, %bb.aw ], [ %i.gp, %bb.ax ], [ %i.gp, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bv

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit76: ; preds = %bb.av, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.not.i.i.i132 = icmp eq ptr %.sroa.0155.0.lcssa356, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIiSaIiEED2Ev.exit133, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit76
  %i.lf = ptrtoint ptr %.sroa.16.0.lcssa359 to i64
  %i.lg = sub i64 %i.lf, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.0.lcssa356, i64 noundef %i.lg) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit133

_ZNSt6vectorIiSaIiEED2Ev.exit133:                 ; preds = %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i71, %bb.u, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit76, %bb.bt
  %i.lh = load ptr, ptr %2, align 8, !tbaa !116   ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIiSaIiEED2Ev.exit135, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit133
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !118
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.lh to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.lm) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit135

_ZNSt6vectorIiSaIiEED2Ev.exit135:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit133, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.bv:                                            ; preds = %.loopexit191, %.loopexit.split-lp192, %.loopexit186, %.loopexit.split-lp187, %bb.al, %_ZNSt6vectorIiSaIiEED2Ev.exit102
  %.sroa.0155.3 = phi ptr [ %.sroa.0155.0.lcssa355, %_ZNSt6vectorIiSaIiEED2Ev.exit102 ], [ %.sroa.0155.0241, %.loopexit.split-lp187 ], [ %.sroa.0155.0241, %bb.al ], [ %.sroa.0155.0241, %.loopexit186 ], [ %.sroa.0155.1, %.loopexit191 ], [ %.sroa.0155.1, %.loopexit.split-lp192 ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.0.lcssa358, %_ZNSt6vectorIiSaIiEED2Ev.exit102 ], [ %.sroa.16.0243, %.loopexit.split-lp187 ], [ %.sroa.16.0243, %bb.al ], [ %.sroa.16.0243, %.loopexit186 ], [ %.sroa.16.1, %.loopexit191 ], [ %.sroa.16.1, %.loopexit.split-lp192 ]
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit102 ], [ %lpad.loopexit.split-lp189, %.loopexit.split-lp187 ], [ %i.ej, %bb.al ], [ %lpad.loopexit188, %.loopexit186 ], [ %lpad.loopexit193, %.loopexit191 ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp192 ] ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %.sroa.0155.3, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIiSaIiEED2Ev.exit137, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ln = ptrtoint ptr %.sroa.16.3 to i64
  %i.lo = ptrtoint ptr %.sroa.0155.3 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.3, i64 noundef %i.lp) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit137

_ZNSt6vectorIiSaIiEED2Ev.exit137:                 ; preds = %bb.w, %bb.y, %bb.x, %bb.v, %bb.bv, %bb.bw
  %.pn31175.ph = phi { ptr, i32 } [ %i.cy, %bb.w ], [ %i.da, %bb.y ], [ %i.cz, %bb.x ], [ %i.cw, %bb.v ], [ %.pn31, %bb.bv ], [ %.pn31, %bb.bw ] ; 2 uses
  %.pr = load ptr, ptr %2, align 8, !tbaa !116    ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIiSaIiEED2Ev.exit139, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit137.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit137
  %.pn31175363 = phi { ptr, i32 } [ %i.cx, %_ZNSt6vectorIiSaIiEED2Ev.exit137.thread ], [ %.pn31175.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit137 ]
  %i.lq = phi ptr [ %i.m, %_ZNSt6vectorIiSaIiEED2Ev.exit137.thread ], [ %.pr, %_ZNSt6vectorIiSaIiEED2Ev.exit137 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !118
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lq to i64
  %i.lv = sub i64 %i.lt, %i.lu
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.lv) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit139

_ZNSt6vectorIiSaIiEED2Ev.exit139:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit137, %bb.bx
  %.pn31175364 = phi { ptr, i32 } [ %.pn31175.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit137 ], [ %.pn31175363, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %.pn31175364
}

declare void @_Z7permuteSt6vectorIiSaIiEE(ptr dead_on_unwind writable sret(%"class.std::vector.83") align 8, ptr nofreeobj noundef align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !125
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK18FunctionInvocation22visit_unordered_paramsERSt6vectorIPK4FactSaIS3_EER9CGContext(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(216) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.47", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.47", align 8    ; 11 uses
  %5 = alloca %"class.std::vector.83", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !101    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread55, label %bb.b

.thread55:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds i8, ptr null, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !102
  br label %_ZNSt6vectorIPK4FactSaIS2_EEC2ERKS4_.exit
end_hunk_0
