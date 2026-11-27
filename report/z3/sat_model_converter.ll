Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_model_converter?download=true
inline.NumInlined: 438
inline.NumDeleted: 201
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK3sat15model_converterclER7svectorI5lbooljE:bb.a
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.eh, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.2, i32 noundef 105, ptr noundef nonnull @.str.13)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit

bb.at:                                            ; preds = %bb.as
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.ei = select i1 %i.dp, i32 -1, i32 1
  %i.ej = load ptr, ptr %1, align 8, !tbaa !54
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.dz
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !56
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit75

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit75:   ; preds = %bb.ao, %bb.y, %_ZNK3sat15model_converter13process_stackER7svectorI5lbooljERKS1_INS_7literalEjERKS1_ISt4pairIjS5_EjE.exit, %bb.ap, %bb.au, %bb.al
  %i.el = phi ptr [ %i.di, %bb.ao ], [ %i.di, %bb.al ], [ %i.di, %bb.au ], [ %i.ag, %bb.y ], [ %i.di, %bb.ap ], [ null, %_ZNK3sat15model_converter13process_stackER7svectorI5lbooljERKS1_INS_7literalEjERKS1_ISt4pairIjS5_EjE.exit ] ; 2 uses
  %.255 = phi i8 [ %.mux, %bb.ao ], [ 1, %bb.al ], [ 1, %bb.au ], [ 0, %bb.y ], [ 0, %bb.ap ], [ 0, %_ZNK3sat15model_converter13process_stackER7svectorI5lbooljERKS1_INS_7literalEjERKS1_ISt4pairIjS5_EjE.exit ]
  %.2 = phi i1 [ %spec.select.mux, %bb.ao ], [ %.05196, %bb.al ], [ %.05196, %bb.au ], [ %.05196, %bb.y ], [ %.05196, %bb.ap ], [ %.05196, %_ZNK3sat15model_converter13process_stackER7svectorI5lbooljERKS1_INS_7literalEjERKS1_ISt4pairIjS5_EjE.exit ]
  %.1 = phi i32 [ %.05097, %bb.ao ], [ %.05097, %bb.al ], [ %.05097, %bb.au ], [ %i.bu, %bb.y ], [ %.05097, %bb.ap ], [ %i.bu, %_ZNK3sat15model_converter13process_stackER7svectorI5lbooljERKS1_INS_7literalEjERKS1_ISt4pairIjS5_EjE.exit ]
  %i.em = getelementptr inbounds nuw i8, ptr %.098, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.em, %i.ac
  br i1 %.not, label %.loopexit88, label %bb.j

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn = phi { ptr, i32 } [ %i.de, %bb.ai ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit89, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN3sat7literalELb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIN3sat7literalELb0EjE7destroyEv.exit:   ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK3sat15model_converter11check_modelERK7svectorI5lbooljE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge36, label %_ZNK6vectorIN3sat15model_converter5entryELb1EjE3endEv.exit

_ZNK6vectorIN3sat15model_converter5entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %._crit_edge36, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %_ZNK6vectorIN3sat15model_converter5entryELb1EjE3endEv.exit
  %i.h = load ptr, ptr %1, align 8
  %i.i = load ptr, ptr %1, align 8
  br label %.lr.ph35

._crit_edge36:                                    ; preds = %._crit_edge, %bb.a, %_ZNK6vectorIN3sat15model_converter5entryELb1EjE3endEv.exit
  %.0.lcssa = phi i1 [ true, %_ZNK6vectorIN3sat15model_converter5entryELb1EjE3endEv.exit ], [ true, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i1 %.0.lcssa

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %._crit_edge
  %.034 = phi i1 [ %.1.lcssa, %._crit_edge ], [ true, %.lr.ph35.preheader ] ; 4 uses
  %.02333 = phi ptr [ %i.aq, %._crit_edge ], [ %i.a, %.lr.ph35.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02333, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit:      ; preds = %.lr.ph35
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17   ; 2 uses
  %.not2428 = icmp eq i32 %i.n, 0
  br i1 %.not2428, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 4611686018427387903 ; 2 uses
  %i.q = and i64 %i.p, 4611686018427387903        ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.r, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph.preheader.new
  %.131 = phi i1 [ %.034, %.lr.ph.preheader.new ], [ %.3.1, %bb.h ] ; 3 uses
  %.01930 = phi ptr [ %i.k, %.lr.ph.preheader.new ], [ %i.am, %bb.h ] ; 3 uses
  %.02029 = phi i1 [ false, %.lr.ph.preheader.new ], [ %.222.1, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.t = load i32, ptr %.01930, align 4, !tbaa !17 ; 3 uses
  %i.u = icmp eq i32 %i.t, -2
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %spec.select = select i1 %.02029, i1 %.131, i1 false
  br label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  br i1 %.02029, label %.lr.ph.1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = lshr i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !56   ; 2 uses
  %i.z = trunc i32 %i.t to i1
  %i.aa = sub nsw i32 0, %i.y
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 %i.y
  %i.ab = icmp eq i32 %spec.select.i, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c, %bb.d, %bb.b
  %.222 = phi i1 [ false, %bb.b ], [ %i.ab, %bb.d ], [ true, %bb.c ] ; 2 uses
  %.3 = phi i1 [ %spec.select, %bb.b ], [ %.131, %bb.d ], [ %.131, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01930, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, -2
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.1
  br i1 %.222, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = lshr i32 %i.ad, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !56 ; 2 uses
  %i.aj = trunc i32 %i.ad to i1
  %i.ak = sub nsw i32 0, %i.ai
  %spec.select.i.1 = select i1 %i.aj, i32 %i.ak, i32 %i.ai
  %i.al = icmp eq i32 %spec.select.i.1, 1
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.1
  %spec.select.1 = select i1 %.222, i1 %.3, i1 false
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.222.1 = phi i1 [ false, %bb.g ], [ %i.al, %bb.f ], [ true, %bb.e ] ; 2 uses
  %.3.1 = phi i1 [ %spec.select.1, %bb.g ], [ %.3, %bb.f ], [ %.3, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01930, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !211

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %i.an = and i64 %i.p, 1
  %lcmp.mod.not.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.131.epil.init = phi i1 [ %.034, %.lr.ph.preheader ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01930.epil.init = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %.02029.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %.222.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.ao = load i32, ptr %.01930.epil.init, align 4, !tbaa !17
  %i.ap = icmp eq i32 %i.ao, -2
  br i1 %i.ap, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %spec.select.epil = select i1 %.02029.epil.init, i1 %.131.epil.init, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.i, %.lr.ph35, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %.1.lcssa = phi i1 [ %.034, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit ], [ %.034, %.lr.ph35 ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.i ], [ %.131.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02333, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.g
  br i1 %.not, label %._crit_edge36, label %.lr.ph35
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN3sat15model_converter2mkENS0_4kindEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.sat::model_converter::entry", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 %2, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN6vectorIN3sat15model_converter5entryELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !16  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.i = phi i32 [ %.pre2.i, %.noexc ], [ %i.e, %bb.b ]
  %i.j = phi ptr [ %.pre.i, %.noexc ], [ %i.b, %bb.b ]
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %5 = load i64, ptr %3, align 8
  store i64 %5, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !20
  store ptr %i.n, ptr %i.m, align 8, !tbaa !20
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !68
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !68
  store ptr null, ptr %i.p, align 8, !tbaa !20
  store ptr null, ptr %i.q, align 8, !tbaa !65
  %i.s = load ptr, ptr %0, align 8, !tbaa !16
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !17
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !17
  call void @_ZN15ref_vector_coreIN3sat15model_converter10elim_stackE21ref_unmanaged_wrapperIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #19
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.x)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #20
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i:       ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZN3sat15model_converter5entryD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ab)
          to label %_ZN3sat15model_converter5entryD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #20
  unreachable

_ZN3sat15model_converter5entryD2Ev.exit:          ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ae = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN6vectorIN3sat15model_converter5entryELb1EjE4backEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3sat15model_converter5entryD2Ev.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !17
  %i.ai = add i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  br label %_ZN6vectorIN3sat15model_converter5entryELb1EjE4backEv.exit

_ZN6vectorIN3sat15model_converter5entryELb1EjE4backEv.exit: ; preds = %_ZN3sat15model_converter5entryD2Ev.exit, %bb.i
  %.0.i.i = phi i64 [ %i.aj, %bb.i ], [ 4294967295, %_ZN3sat15model_converter5entryD2Ev.exit ]
  %i.ak = icmp eq i32 %2, 2147483647
  br i1 %i.ak, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN6vectorIN3sat15model_converter5entryELb1EjE4backEv.exit
  %i.al = call noundef zeroext i1 @_ZNK3sat15model_converter13legal_to_flipEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br i1 %i.al, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.2, i32 noundef 184, ptr noundef nonnull @.str.14)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat15model_converter5entryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.am

bb.m:                                             ; preds = %bb.k, %bb.j, %_ZN6vectorIN3sat15model_converter5entryELb1EjE4backEv.exit
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.0.i.i
  ret ptr %i.an
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3sat15model_converter5entryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN15ref_vector_coreIN3sat15model_converter10elim_stackE21ref_unmanaged_wrapperIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.i)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit2 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #20
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit2:        ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat15model_converter7add_ateERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE5emptyEv.exit

_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE5emptyEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE5emptyEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN3sat15model_converter2mkENS0_4kindEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 5, i32 noundef 2147483647)
  tail call void @_ZN3sat15model_converter6insertERNS0_5entryERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 4 dereferenceable(20) %1)
  br label %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE5emptyEv.exit.thread

_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE5emptyEv.exit.thread: ; preds = %bb.a, %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE5emptyEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat15model_converter6insertERNS0_5entryERKNS_6clauseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not16 = icmp eq i32 %i.c, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre18 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 3 uses
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = icmp eq ptr %.pre18, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.h = phi ptr [ %i.bo, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  %i.i = phi ptr [ %i.bh, %._crit_edge.thread ], [ %.pre18, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.o = phi ptr [ %i.h, %bb.b ], [ %i.f, %._crit_edge ] ; 2 uses
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !17
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre2.i, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %.pre.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  store i32 -2, ptr %i.t, align 4, !tbaa !17
end_hunk_0
