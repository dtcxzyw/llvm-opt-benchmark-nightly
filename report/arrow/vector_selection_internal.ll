inline.NumInlined: 7390
inline.NumDeleted: 1611
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_15SparseUnionTypeEE11TakeAdapterImEEEENS_6StatusEv:bb.a
  br i1 %lcmp.mod.not, label %.critedge79.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader

_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader:     ; preds = %.critedge79.i.i.loopexit34.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i
  %.epil.init = phi i64 [ %.pre.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.ca, %.critedge79.i.i.loopexit34.unr-lcssa ]
  %.166131.i.i.epil.init = phi i64 [ %.065141.i.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.cb, %.critedge79.i.i.loopexit34.unr-lcssa ] ; 2 uses
  %lcmp.mod37 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.166131.i.i.epil.init
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !174, !noalias !3144
  %.val87.val.i.i.epil = load ptr, ptr %i.av, align 8, !tbaa !816, !noalias !3144
  %i.fb = getelementptr inbounds i8, ptr %.val87.val.i.i.epil, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !78, !noalias !3149
  %i.fd = load ptr, ptr %i.aw, align 8, !tbaa !235, !noalias !3149
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.epil.init
  store i8 %i.fc, ptr %i.fe, align 1, !noalias !3149
  %i.ff = load i64, ptr %i.ax, align 8, !tbaa !284, !noalias !3149
  %i.fg = add nsw i64 %i.ff, 1
  store i64 %i.fg, ptr %i.ax, align 8, !tbaa !284, !noalias !3149
  %i.fh = add nsw i64 %.166131.i.i.epil.init, 1
  br label %.critedge79.i.i

.critedge79.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader, %.critedge79.i.i.loopexit34.unr-lcssa, %bb.m, %.critedge82.i.i, %.preheader.i.i, %.noexc15
  %.469.i.i = phi i64 [ %i.ea, %bb.m ], [ %i.ex, %.critedge82.i.i ], [ %.065141.i.i, %.preheader.i.i ], [ %.065141.i.i, %.noexc15 ], [ %i.cb, %.critedge79.i.i.loopexit34.unr-lcssa ], [ %i.fh, %_ZN5arrow6StatusD2Ev.exit.i.i.epil.preheader ] ; 2 uses
  %i.fi = load ptr, ptr %i.t, align 8, !tbaa !1148, !noalias !3144, !nonnull !129, !align !242
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !135, !noalias !3144
  %i.fl = icmp slt i64 %.469.i.i, %i.fk
  br i1 %i.fl, label %bb.i, label %.critedge, !llvm.loop !3158

bb.o:                                             ; preds = %bb.a
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %bb.q

.loopexit:                                        ; preds = %bb.i, %bb.j, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5arrow16SparseUnionArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #25
  br label %bb.q

.critedge:                                        ; preds = %.critedge79.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !3144
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !3159
  call void @_ZN5arrow16SparseUnionArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.p ], [ %i.fm, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEED2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(120) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEEE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !1289
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !1289
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !80

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImplD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEEE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3162
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3162
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEED2Ev.exit, !prof !80

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !1191
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEED2Ev.exit

_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEE4InitEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !3163
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl6FinishEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.445, align 1            ; 3 uses
  %3 = alloca %class.anon.445, align 1            ; 3 uses
  %4 = alloca %class.anon.445, align 1            ; 3 uses
  %5 = alloca %class.anon.445, align 1            ; 3 uses
  %6 = alloca %"class.arrow::StructArray", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.113", align 8 ; 7 uses
  %8 = alloca %"class.arrow::Result.87", align 8  ; 13 uses
  %9 = alloca %"struct.arrow::Datum", align 8     ; 7 uses
  %10 = alloca %"class.std::shared_ptr.191", align 8 ; 7 uses
  %11 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %12 = alloca %"class.std::shared_ptr.113", align 16 ; 5 uses
  %13 = alloca %"class.arrow::compute::TakeOptions", align 8 ; 5 uses
  %14 = alloca %"struct.arrow::Datum", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1184, !nonnull !129, !align !242
  call void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.113") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  invoke void @_ZN5arrow11StructArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !44
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !1272
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !1272
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1168 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1184, !nonnull !129, !align !242
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !142  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3166
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !143
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %sext = shl i64 %i.ae, 28
  %i.af = ashr i64 %sext, 32                      ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1445 ; 3 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !1443 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4                 ; 3 uses
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ao = sub nuw nsw i64 %i.af, %i.am
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.ao)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit unwind label %bb.t

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ap = icmp ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.k, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.af ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i35, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i ], [ %i.aq, %bb.k ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.at, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !44
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #25, !inline_history !3167
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #25, !inline_history !3167
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.o ], [ %i.bg, %bb.p ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.q, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, !prof !80

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, %i.ah
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1447

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !1445
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit: ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !1184, !nonnull !129, !align !242
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !142 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !3166
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !143
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 4
  %i.bt = trunc i64 %i.bs to i32
  %.not58 = icmp sgt i32 %i.bt, 0
  br i1 %.not58, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  br label %bb.u

bb.r:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !1184, !nonnull !129, !align !242
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !142 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !3166
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !143
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %sext77 = shl i64 %i.cl, 28
  %i.cm = ashr i64 %sext77, 32
  %.not = icmp slt i64 %indvars.iv.next, %i.cm
  br i1 %.not, label %bb.u, label %.critedge, !llvm.loop !3168

bb.s:                                             ; preds = %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.br

bb.t:                                             ; preds = %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.u:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.cp = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.191") align 8 %10, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.cp)
          to label %bb.v unwind label %bb.ao

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cq = load ptr, ptr %i.bu, align 8, !tbaa !1180, !nonnull !129, !align !242
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.113") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %i.cq)
          to label %bb.x unwind label %bb.aq

bb.x:                                             ; preds = %bb.w
  %i.cr = load <2 x ptr>, ptr %12, align 16, !tbaa !89
  store ptr null, ptr %i.bv, align 8, !tbaa !47
  store <2 x ptr> %i.cr, ptr %11, align 16, !tbaa !89
  store ptr null, ptr %12, align 16, !tbaa !496
  store i8 2, ptr %i.bw, align 16, !tbaa !3068
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN5arrow7compute11TakeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(17) %13, i1 noundef zeroext false)
          to label %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit unwind label %bb.ar

_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit: ; preds = %bb.x
  %i.cs = load ptr, ptr %i.bx, align 8, !tbaa !1165
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !498
  invoke void @_ZN5arrow7compute4TakeERKNS_5DatumES3_RKNS0_11TakeOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.87") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(17) %13, ptr noundef %i.ct)
          to label %bb.y unwind label %bb.as

bb.y:                                             ; preds = %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cw = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41, label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cx, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !44
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !45
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #25, !inline_history !1272
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !45
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #25, !inline_history !1272
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41

bb.ac:                                            ; preds = %bb.aa
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i38 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i38, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.ae:                                            ; preds = %bb.ac
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i40 = phi i32 [ %i.da, %bb.ad ], [ %i.dk, %bb.ae ]
  %i.dl = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.dl, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41, !prof !80

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5arrow5DatumD2Ev.exit42 unwind label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit42:                       ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.do = load ptr, ptr %15, align 8, !tbaa !47   ; 8 uses
  %.not.i.i43 = icmp eq ptr %i.do, null
  br i1 %.not.i.i43, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit42
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dp, align 8, !tbaa !42
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !44
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !45
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25, !inline_history !1284
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !45
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25, !inline_history !1284
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i44 = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i44, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45

bb.al:                                            ; preds = %bb.aj
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i46 = phi i32 [ %i.ds, %bb.ak ], [ %i.ec, %bb.al ]
  %i.ed = icmp eq i32 %.0.i.i.i.i46, 1
  br i1 %i.ed, label %bb.am, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit42, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ee = load ptr, ptr %8, align 8, !tbaa !115
  %i.ef = icmp eq ptr %i.ee, null                 ; 2 uses
  br i1 %i.ef, label %bb.ay, label %bb.an, !prof !118

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !115
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.ax

bb.ao:                                            ; preds = %bb.u
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ap:                                            ; preds = %bb.v
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aq:                                            ; preds = %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ar:                                            ; preds = %bb.x
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.as ], [ %i.ej, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #25
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.ei, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.au ], [ %i.eh, %bb.ap ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ao
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.av ], [ %i.eg, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bq

bb.ax:                                            ; preds = %bb.an
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  %i.em = load i8, ptr %i.by, align 8, !tbaa !3068, !noalias !3175 ; 3 uses
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %.thread, label %bb.az

.thread:                                          ; preds = %bb.ay
  store i8 0, ptr %i.cc, align 8, !tbaa !3068, !alias.scope !3175
  br label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %16 = load ptr, ptr %i.bz, align 8, !tbaa !89, !noalias !3175 ; 2 uses
  store ptr %16, ptr %14, align 8, !tbaa !89, !alias.scope !3175
  %17 = load ptr, ptr %i.cb, align 8, !tbaa !47, !noalias !3175 ; 5 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !47, !noalias !3175
  store ptr %17, ptr %i.ca, align 8, !tbaa !47, !alias.scope !3175
  store ptr null, ptr %i.bz, align 8, !tbaa !89, !noalias !3175
  store i8 %i.em, ptr %i.cc, align 8, !tbaa !3068, !alias.scope !3175
  %.not.i.i.i48 = icmp eq i8 %i.em, 2
  br i1 %.not.i.i.i48, label %_ZNK5arrow5Datum5arrayEv.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.az, %.thread
  %i.eo = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.eo, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr @.str.3, ptr %i.ep, align 8, !tbaa !493
  invoke void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
          to label %.noexc49 unwind label %bb.bo

.noexc49:                                         ; preds = %.loopexit
  unreachable

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %bb.az
  %i.eq = load ptr, ptr %i.t, align 8, !tbaa !1168
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1443
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv ; 2 uses
  store ptr %16, ptr %i.et, align 8, !tbaa !496
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %17, %i.ev
  br i1 %.not.i.i.i50, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %.not7.i.i.i = icmp eq ptr %17, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i51 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i51, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.fa = atomicrmw volatile add ptr %i.ew, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.eu, align 8, !tbaa !47
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.fb = phi ptr [ %i.ev, %bb.ba ], [ %i.ev, %bb.bc ], [ %.pr.pre.i.i.i, %bb.bd ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.fc, align 8, !tbaa !42
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !44
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !45
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #25, !inline_history !3176
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !45
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #25, !inline_history !3176
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i9.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i9.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i = phi i32 [ %i.ff, %bb.bh ], [ %i.fp, %bb.bi ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fq, label %bb.bj, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !80

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bf, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %17, ptr %i.eu, align 8, !tbaa !47
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit: ; preds = %_ZNK5arrow5Datum5arrayEv.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZN5arrow5DatumD2Ev.exit52 unwind label %bb.bk

bb.bk:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit52:                       ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.an, %_ZN5arrow5DatumD2Ev.exit52
  %i.ft = load ptr, ptr %8, align 8, !tbaa !115   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.bl, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !118

bb.bl:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #28
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !115  ; 2 uses
  %.not.i.i53 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i53, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !1286

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.fx = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.ft, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !119, !range !128, !noundef !129
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.ef, label %bb.r, label %.loopexit55

bb.bo:                                            ; preds = %.loopexit
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ax
  %.pn30 = phi { ptr, i32 } [ %i.el, %bb.ax ], [ %i.gb, %bb.bo ]
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bq

.critedge:                                        ; preds = %bb.r, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !3177
  br label %.loopexit55

.loopexit55:                                      ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %.critedge
  call void @_ZN5arrow11StructArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.bq:                                            ; preds = %bb.aw, %bb.bp, %bb.t
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.co, %bb.t ], [ %.pn30, %bb.bp ], [ %.pn.pn.pn.pn, %bb.aw ]
  call void @_ZN5arrow11StructArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.s
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %bb.bq ], [ %i.cn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn30.pn.pn.pn
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_19StructSelectionImplENS_10StructTypeEED0Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(120) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

declare void @_ZN5arrow11StructArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.191") align 8, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

declare void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5arrow11StructArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1445 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1443   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1442
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow9ArrayDataEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow9ArrayDataEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !1445
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #29
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !89, !alias.scope !3183, !noalias !3180
  store ptr null, ptr %i.x, align 8, !tbaa !47, !alias.scope !3183, !noalias !3180
  store <2 x ptr> %i.y, ptr %.012.i.i.i, align 8, !tbaa !89, !alias.scope !3180, !noalias !3183
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !496, !alias.scope !3183, !noalias !3180
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1902

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ab = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !1443
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !1445
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !1442
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow9ArrayDataEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_119StructSelectionImpl14GenerateOutputINS2_9SelectionIS3_NS_10StructTypeEE11TakeAdapterIhEEEENS_6StatusEv(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(120) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %3 = alloca %"class.arrow::StructArray", align 8 ; 6 uses
  %4 = alloca %"class.std::shared_ptr.113", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1184, !nonnull !129, !align !242
  call void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.113") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  invoke void @_ZN5arrow11StructArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !44
end_hunk_0
