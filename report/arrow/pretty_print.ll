Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/pretty_print?download=true
inline.NumInlined: 4037
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitERKNS_10UnionArrayE:_ZN5arrow6StatusD2Ev.exit
bb.v:                                             ; preds = %bb.t
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i83 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i83, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

bb.x:                                             ; preds = %bb.v
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i85 = phi i32 [ %i.da, %bb.w ], [ %i.dk, %bb.x ]
  %i.dl = icmp eq i32 %.0.i.i.i.i85, 1
  br i1 %i.dl, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, !prof !69

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.dm = load ptr, ptr %1, align 8, !tbaa !120, !noalias !932, !nonnull !85, !align !119
  invoke void @_ZN5arrow18PrettyPrintOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %13, ptr noundef nonnull align 8 dereferenceable(248) %i.dm)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86
  %i.dn = load i32, ptr %i.g, align 8, !tbaa !56, !noalias !932
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !44, !alias.scope !932
  %i.dq = add nsw i32 %i.dp, %i.dn                ; 2 uses
  store i32 %i.dq, ptr %13, align 8, !tbaa !51, !alias.scope !932
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !933
  store ptr %13, ptr %3, align 8, !tbaa !53, !noalias !933
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.dq, ptr %i.ds, align 8, !tbaa !56, !noalias !933
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !57, !noalias !933
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter5PrintERKNS_5ArrayE(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN5arrow6StatusD2Ev.exit92 unwind label %bb.ac, !inline_history !87

_ZN5arrow6StatusD2Ev.exit92:                      ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !933
  %i.du = load ptr, ptr %12, align 8, !tbaa !72   ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !72
  store ptr null, ptr %12, align 8, !tbaa !72
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.dv = icmp eq ptr %i.du, null
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %10, align 8, !tbaa !68
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !63 ; 15 uses
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
  store i32 0, ptr %i.eb, align 8, !tbaa !65
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !66
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !68
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !4
  %i.ej = load ptr, ptr %i.dx, align 8, !tbaa !68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !4
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
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
  br i1 %i.ep, label %bb.aj, label %_ZN5arrow5ArrayD2Ev.exit, !prof !69

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !177
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
  %i.eq = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !167
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !168
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
  store ptr %i.fd, ptr %14, align 8, !tbaa !175
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !172
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ez ; 2 uses
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !173
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %.pre161 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !167
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre163 = load ptr, ptr %.phi.trans.insert162, align 8, !tbaa !168
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
  br i1 %i.fi, label %.lr.ph, label %._crit_edge.a

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.ap

._crit_edge.a:                                    ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit
  %i.fl = phi ptr [ %.promoted137, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit ], [ %i.gh, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %i.fm = phi ptr [ %.promoted, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit ], [ %i.gi, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  store ptr %i.fm, ptr %i.fb, align 8
  store ptr %i.fl, ptr %14, align 8
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter13PrintChildrenERKSt6vectorIPKNS_5ArrayESaIS5_EEll(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.bf unwind label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.a, %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i, %bb.am
  %i.fn = phi ptr [ null, %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.am ], [ %i.fm, %._crit_edge.a ]
  %i.fo = phi ptr [ null, %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.am ], [ %i.fl, %._crit_edge.a ]
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ap:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0142 = phi i32 [ 0, %.lr.ph ], [ %i.gz, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.fq = phi ptr [ %.promoted, %.lr.ph ], [ %i.gi, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 7 uses
  %i.fr = phi ptr [ %.promoted137, %.lr.ph ], [ %i.gh, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNK5arrow10UnionArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %.0142)
          to label %bb.aq unwind label %bb.bc

bb.aq:                                            ; preds = %bb.ap
  %16 = load ptr, ptr %15, align 8, !tbaa !76     ; 2 uses
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !172 ; 3 uses
  %.not.i100 = icmp eq ptr %i.fs, %i.fq
  br i1 %.not.i100, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %16, ptr %i.fs, align 8, !tbaa !174
  %17 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %17, ptr %i.fj, align 8, !tbaa !172
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit

bb.as:                                            ; preds = %bb.aq
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 6 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775800
  br i1 %i.fw, label %bb.at, label %_ZNKSt6vectorIPKN5arrow5ArrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.at:                                            ; preds = %bb.as
  store ptr %i.fq, ptr %i.fb, align 8
  store ptr %i.fr, ptr %14, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #20
          to label %.noexc103 unwind label %.loopexit.split-lp

.noexc103:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIPKN5arrow5ArrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.fx = ashr exact i64 %i.fv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i101 = call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i101, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i.i102 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i102)
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #21
          to label %.noexc104 unwind label %.loopexit ; 4 uses

.noexc104:                                        ; preds = %_ZNKSt6vectorIPKN5arrow5ArrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.fv ; 2 uses
  store ptr %16, ptr %i.ge, align 8, !tbaa !174
  %i.gf = icmp sgt i64 %i.fv, 0
  br i1 %i.gf, label %bb.au, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.au:                                            ; preds = %.noexc104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %i.fr, i64 %i.fv, i1 false)
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.au, %.noexc104
  %18 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fv) #19
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.av, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %18, ptr %i.fj, align 8, !tbaa !172
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ar
  %i.gh = phi ptr [ %i.gd, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.fr, %bb.ar ] ; 2 uses
  %i.gi = phi ptr [ %i.gg, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.fq, %bb.ar ] ; 2 uses
  %i.gj = load ptr, ptr %i.fk, align 8, !tbaa !63 ; 8 uses
  %.not.i.i105 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i105, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 4 uses
  %i.gl = load atomic i64, ptr %i.gk acquire, align 8 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 4294967297
  %i.gn = trunc i64 %i.gl to i32                  ; 2 uses
  br i1 %i.gm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.gk, align 8, !tbaa !65
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 0, ptr %i.go, align 4, !tbaa !66
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !68
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #18, !inline_history !0
  %i.gs = load ptr, ptr %i.gj, align 8, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #18, !inline_history !0
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i106 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i106, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gw = add nsw i32 %i.gn, -1
  store i32 %i.gw, ptr %i.gk, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107

bb.ba:                                            ; preds = %bb.ay
  %i.gx = atomicrmw volatile add ptr %i.gk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i108 = phi i32 [ %i.gn, %bb.az ], [ %i.gx, %bb.ba ]
  %i.gy = icmp eq i32 %.0.i.i.i.i108, 1
  br i1 %i.gy, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #18
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE12emplace_backIJPS1_EEERS3_DpOT_.exit, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.gz = add nuw nsw i32 %.0142, 1               ; 2 uses
  %i.ha = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !167
  %i.he = load ptr, ptr %i.hb, align 8, !tbaa !168
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = lshr exact i64 %i.hh, 4
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = icmp slt i32 %i.gz, %i.hj
  br i1 %i.hk, label %bb.ap, label %._crit_edge.a, !llvm.loop !919

bb.bc:                                            ; preds = %bb.ap
  %i.hl = landingpad { ptr, i32 }
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
  %.pn50 = phi { ptr, i32 } [ %lpad.phi, %bb.bd ], [ %i.hl, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bh

bb.bf:                                            ; preds = %._crit_edge.a
  %.not.i.i.i109 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hm = ptrtoint ptr %i.fm to i64
  %i.hn = ptrtoint ptr %i.fl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.ho) #19
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit:   ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.critedge

bb.bh:                                            ; preds = %bb.be, %bb.ao
  %i.hp = phi ptr [ %i.fq, %bb.be ], [ %i.fn, %bb.ao ]
  %i.hq = phi ptr [ %i.fr, %bb.be ], [ %i.fo, %bb.ao ] ; 3 uses
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.be ], [ %i.fp, %bb.ao ]
  %.not.i.i.i110 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit111, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ht) #19
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit111

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit111: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.loopexit.split-lp126

.critedge57:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit92
  br i1 %.not.i.i.i97, label %_ZN5arrow5ArrayD2Ev.exit116, label %bb.bj

bb.bj:                                            ; preds = %.critedge57
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.hu, align 8, !tbaa !65
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !66
  %i.hz = load ptr, ptr %i.dx, align 8, !tbaa !68
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !4
  %i.ic = load ptr, ptr %i.dx, align 8, !tbaa !68
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !4
  br label %_ZN5arrow5ArrayD2Ev.exit116

bb.bl:                                            ; preds = %bb.bj
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i.i113 = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i.i113, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114

bb.bn:                                            ; preds = %bb.bl
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i115 = phi i32 [ %i.hx, %bb.bm ], [ %i.ih, %bb.bn ]
  %i.ii = icmp eq i32 %.0.i.i.i.i.i115, 1
  br i1 %i.ii, label %bb.bo, label %_ZN5arrow5ArrayD2Ev.exit116, !prof !69

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !177
  br label %_ZN5arrow5ArrayD2Ev.exit116

_ZN5arrow5ArrayD2Ev.exit116:                      ; preds = %.critedge57, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit66, %_ZN5arrow5ArrayD2Ev.exit116, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %6, align 8, !tbaa !68
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i117 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i117, label %_ZN5arrow5ArrayD2Ev.exit121, label %bb.bp

bb.bp:                                            ; preds = %.critedge
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.il, align 8, !tbaa !65
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !66
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !68
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #18, !inline_history !4
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !68
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #18, !inline_history !4
  br label %_ZN5arrow5ArrayD2Ev.exit121

bb.br:                                            ; preds = %bb.bp
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i.i118 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i118, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i119

bb.bt:                                            ; preds = %bb.br
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i119

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i119: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i120 = phi i32 [ %i.io, %bb.bs ], [ %i.iy, %bb.bt ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i120, 1
  br i1 %i.iz, label %bb.bu, label %_ZN5arrow5ArrayD2Ev.exit121, !prof !69

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i119
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #18, !inline_history !177
  br label %_ZN5arrow5ArrayD2Ev.exit121

_ZN5arrow5ArrayD2Ev.exit121:                      ; preds = %.critedge, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i119, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bw

.loopexit.split-lp126:                            ; preds = %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit111, %bb.ak, %bb.o
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EED2Ev.exit111 ], [ %.pn46.pn.pn, %bb.ak ], [ %.pn.pn, %bb.o ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp126, %bb.l
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %.loopexit.split-lp126 ], [ %i.bk, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn50.pn.pn.pn

bb.bw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow5ArrayD2Ev.exit121
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare void @_ZNK5arrow5Array8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113PrettyPrinter9OpenArrayERKNS_5ArrayE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120, !nonnull !85, !align !119 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i8, ptr %i.b, align 8, !tbaa !93, !range !84, !noundef !85
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.02.i = phi i32 [ 0, %.lr.ph.i ], [ %i.k, %bb.c ]
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.k = add nuw nsw i32 %.02.i, 1                ; 2 uses
  %i.l = load i32, ptr %i.e, align 8, !tbaa !56
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit, !llvm.loop !2

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit: ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !120
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit, %bb.b, %bb.a
  %i.n = phi ptr [ %.pre, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit.loopexit ], [ %i.a, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.r, i64 noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !142
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.aa = getelementptr i8, ptr %.val, i64 48
  %.val.val = load i8, ptr %i.aa, align 8, !tbaa !93, !range !84, !noundef !85
  %i.ab = trunc nuw i8 %.val.val to i1
  br i1 %i.ab, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter7NewlineEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val2 = load ptr, ptr %i.o, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val2, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
end_hunk_0
