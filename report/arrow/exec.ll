inline.NumInlined: 3475
inline.NumDeleted: 1689
begin_hunk_0_@_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE:bb.a
  store i64 %i.ez, ptr %i.ec, align 8, !tbaa !253
  br label %bb.aa

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit:   ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph, %bb.z
  %.04960 = phi i64 [ 0, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph ], [ %i.fx, %bb.z ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %.04960
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !76
  %i.fd = icmp eq i8 %i.fc, 1
  br i1 %i.fd, label %bb.z, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !261
  %i.ff = getelementptr inbounds nuw [136 x i8], ptr %i.fe, i64 %.04960 ; 6 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.04960 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !181
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.04960
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !181
  %i.fk = add nsw i64 %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !292
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %.050, ptr %i.fm, align 8, !tbaa !293
  %i.fn = load ptr, ptr %i.ff, align 8, !tbaa !294
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !295
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 %.050, ptr %i.fr, align 8, !tbaa !311
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

bb.w:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !312
  %.not.i56 = icmp eq ptr %i.ft, null
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  br i1 %.not.i56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 -1, ptr %i.fu, align 8, !tbaa !311
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

bb.y:                                             ; preds = %bb.w
  store i64 0, ptr %i.fu, align 8, !tbaa !311
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

_ZN5arrow9ArraySpan8SetSliceEll.exit:             ; preds = %bb.v, %bb.x, %bb.y
  %i.fv = load i64, ptr %i.fg, align 8, !tbaa !181
  %i.fw = add nsw i64 %i.fv, %.050
  store i64 %i.fw, ptr %i.fg, align 8, !tbaa !181
  br label %bb.z

bb.z:                                             ; preds = %_ZN5arrow9ArraySpan8SetSliceEll.exit, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit
  %i.fx = add nuw i64 %.04960, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fx, %i.es
  br i1 %exitcond.not, label %._crit_edge61, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit, !llvm.loop !314

bb.aa:                                            ; preds = %bb.q, %._crit_edge61
  %.0 = phi i1 [ true, %._crit_edge61 ], [ false, %bb.q ]
  ret i1 %.0
}

declare void @_ZN5arrow8internal19FillZeroLengthArrayEPKNS_8DataTypeEPNS_9ArraySpanE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::shared_ptr.136", align 16 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::compute::detail::(anonymous namespace)::NullPropagator", align 8 ; 21 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !289
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !295
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !315
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !272
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !318
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !319
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5arrow6Status8FromArgsIJRA86_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(86) @.str.25)
  br label %bb.ca

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %1, ptr %8, align 8, !tbaa !322
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !332
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.m, i8 0, i64 25, i1 false)
  store ptr %3, ptr %i.o, align 8, !tbaa !333
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  store i8 0, ptr %i.p, align 8, !tbaa !334
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !335  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !335  ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.g

._crit_edge.i.loopexit:                           ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i
  store i8 %i.bj, ptr %i.n, align 8
  store ptr %i.bi, ptr %i.v, align 8
  store ptr %i.bh, ptr %i.m, align 8
  store ptr %i.bg, ptr %i.w, align 8
  %i.x = trunc nuw i8 %i.bj to i1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %i.y = phi ptr [ %i.bi, %._crit_edge.i.loopexit ], [ null, %bb.f ] ; 4 uses
  %i.z = phi ptr [ %i.bh, %._crit_edge.i.loopexit ], [ null, %bb.f ] ; 8 uses
  %i.aa = phi i1 [ %i.x, %._crit_edge.i.loopexit ], [ false, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !318
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !319 ; 4 uses
  %.not.i.i.not = icmp eq ptr %i.ad, null         ; 2 uses
  br i1 %.not.i.i.not, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit, label %bb.r

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i, %.lr.ph.i
  %i.ae = phi ptr [ null, %.lr.ph.i ], [ %i.bg, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 4 uses
  %.pre.i = phi ptr [ null, %.lr.ph.i ], [ %i.bh, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 4 uses
  %i.af = phi ptr [ null, %.lr.ph.i ], [ %i.bi, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %i.ag = phi i8 [ 0, %.lr.ph.i ], [ %i.bj, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %i.ah = phi ptr [ null, %.lr.ph.i ], [ %i.bk, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 8 uses
  %i.ai = phi ptr [ null, %.lr.ph.i ], [ %i.bl, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %i.aj = phi ptr [ null, %.lr.ph.i ], [ %i.bm, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %.sroa.017.020.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.bn, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %i.ak = tail call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.017.020.i)
  switch i32 %i.ak, label %bb.i [
    i32 2, label %bb.h
    i32 1, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi i8 [ 1, %bb.h ], [ %i.ag, %bb.g ]   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !264
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.sroa.017.020.i, ptr %i.aj, align 8, !tbaa !336
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = ptrtoint ptr %i.ah to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.m, label %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.l
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #29
          to label %.noexc15.i unwind label %.loopexit.i ; 5 uses

.noexc15.i:                                       ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store ptr %.sroa.017.020.i, ptr %i.bb, align 8, !tbaa !336
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.n, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.n:                                             ; preds = %.noexc15.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ah, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.n, %.noexc15.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.as) #31
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %i.bf = phi ptr [ %i.ah, %.loopexit.i ], [ %.pre.i, %.loopexit.split-lp.i ] ; 3 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.q

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.k, %bb.i, %bb.g
  %i.bg = phi ptr [ %i.ae, %bb.k ], [ %i.be, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ae, %bb.g ], [ %i.ae, %bb.i ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i, %bb.k ], [ %i.ba, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.pre.i, %bb.g ], [ %.pre.i, %bb.i ] ; 3 uses
  %i.bi = phi ptr [ %i.ap, %bb.k ], [ %i.bd, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.af, %bb.g ], [ %i.af, %bb.i ] ; 3 uses
  %i.bj = phi i8 [ %i.al, %bb.k ], [ %i.al, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ag, %bb.g ], [ %i.al, %bb.i ] ; 3 uses
  %i.bk = phi ptr [ %i.ah, %bb.k ], [ %i.ba, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ah, %bb.g ], [ %i.ah, %bb.i ]
  %i.bl = phi ptr [ %i.ai, %bb.k ], [ %i.be, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ai, %bb.g ], [ %i.ai, %bb.i ]
  %i.bm = phi ptr [ %i.ap, %bb.k ], [ %i.bd, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.aj, %bb.g ], [ %i.aj, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i, i64 136 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.t
  br i1 %i.bo, label %._crit_edge.i.loopexit, label %bb.g

bb.q:                                             ; preds = %bb.p
  %i.bp = ptrtoint ptr %i.ae to i64
  %i.bq = ptrtoint ptr %i.bf to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.br) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body98, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27 ], [ %lpad.phi.i, %bb.q ], [ %lpad.phi.i, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %._crit_edge.i
  store i8 1, ptr %i.p, align 8, !tbaa !334
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !337, !range !132, !noundef !133
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bw = load i8, ptr %i.bv, align 8, !range !132
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = select i1 %i.bu, i1 %i.bx, i1 false, !prof !124
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = select i1 %i.by, ptr %i.ca, ptr null, !prof !124 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !344
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit: ; preds = %._crit_edge.i, %bb.r
  %i.cd = phi ptr [ undef, %._crit_edge.i ], [ %i.cb, %bb.r ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  br i1 %i.aa, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !351 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !211, !noalias !351 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store atomic i64 %i.cg, ptr %i.ch seq_cst, align 8, !noalias !351
  %i.ci = load i8, ptr %i.p, align 8, !tbaa !334, !range !132, !noalias !351, !noundef !133
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = icmp eq ptr %i.z, %i.y
  br i1 %i.ck, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.ae
  %.sroa.023.027.i.i = phi ptr [ %i.du, %bb.ae ], [ %i.z, %bb.t ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.023.027.i.i, align 8, !tbaa !336, !noalias !351 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !311, !noalias !351
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !293, !noalias !351
  %i.cq = icmp eq i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !352, !noalias !351 ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i11, label %bb.ae, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !70, !noalias !353 ; 2 uses
  %i.cv = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !71, !noalias !353
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.critedge.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !353
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !3, !noalias !353
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !3, !noalias !353
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.da = atomicrmw volatile add ptr %i.cw, i32 1 acq_rel, align 4, !noalias !353 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i:        ; preds = %bb.x, %bb.w, %.critedge.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !318, !noalias !351 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !70, !noalias !351 ; 8 uses
  store <2 x ptr> %i.cv, ptr %i.dc, align 8, !tbaa !71, !noalias !351
  %.not.i.i.i.i14.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i14.i.i, label %.sink.split.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8, !noalias !351 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.df, align 8, !tbaa !82, !noalias !351
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !84, !noalias !351
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !63, !noalias !351
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !351
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #27, !noalias !351, !inline_history !356
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !63, !noalias !351
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !351
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #27, !noalias !351, !inline_history !356
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !351
  %.not.i.i.i.i.i15.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i.i15.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !3, !noalias !351
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4, !noalias !351
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.di, %bb.ab ], [ %i.ds, %bb.ac ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dt, label %bb.ad, label %.sink.split.i.i, !prof !69

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #27, !noalias !351
  br label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.u, %.lr.ph.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.023.027.i.i, i64 8 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.y
  br i1 %i.dv, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %.lr.ph.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ae, %bb.t
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !345
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.bx:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !391
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc20 unwind label %.body

.noexc20:                                         ; preds = %bb.bx
  %i.jq = load ptr, ptr %4, align 8, !tbaa !121, !noalias !391 ; 2 uses
  store ptr %i.jq, ptr %0, align 8, !tbaa !121, !alias.scope !391
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !391
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.by, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.by:                                            ; preds = %.noexc20
  %i.js = load ptr, ptr %i.m, align 8, !tbaa !392, !noalias !391 ; 5 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !336, !noalias !391 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !312, !noalias !391
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !292, !noalias !391
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !336, !noalias !391 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !312, !noalias !391
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !292, !noalias !391
  %.val10.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !391 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.val10.val11.i.i = load ptr, ptr %i.ke, align 8, !tbaa !344, !noalias !391 ; 3 uses
  %i.kf = getelementptr i8, ptr %.val10.val.i.i, i64 16 ; 2 uses
  %.val10.val.val.i.i = load i64, ptr %i.kf, align 8, !tbaa !211, !noalias !391
  %i.kg = getelementptr i8, ptr %.val10.val.i.i, i64 32 ; 2 uses
  %.val10.val.val14.i.i = load i64, ptr %i.kg, align 8, !tbaa !272, !noalias !391
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %i.jv, i64 noundef %i.jx, ptr noundef %i.kb, i64 noundef %i.kd, i64 noundef %.val10.val.val.i.i, i64 noundef %.val10.val.val14.i.i, ptr noundef %.val10.val11.i.i)
          to label %.noexc21 unwind label %.body

.noexc21:                                         ; preds = %bb.by
  %i.kh = load ptr, ptr %i.ei, align 8, !tbaa !393, !noalias !391
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.js to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 2 uses
  %i.kl = icmp ugt i64 %i.kk, 16
  br i1 %i.kl, label %.lr.ph.i9.i.preheader, label %._crit_edge.i.i

.lr.ph.i9.i.preheader:                            ; preds = %.noexc21
  %i.km = ashr exact i64 %i.kk, 3
  %umax = call i64 @llvm.umax.i64(i64 %i.km, i64 3)
  br label %.lr.ph.i9.i

._crit_edge.i.i:                                  ; preds = %.noexc22, %.noexc21
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !394
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %.noexc22
  %.019.i.i = phi i64 [ %i.ku, %.noexc22 ], [ 2, %.lr.ph.i9.i.preheader ] ; 2 uses
  %i.kn = load i64, ptr %i.kg, align 8, !tbaa !272, !noalias !391 ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.019.i.i
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !336, !noalias !391 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !312, !noalias !391
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !292, !noalias !391
  %.val.val.val.i.i = load i64, ptr %i.kf, align 8, !tbaa !211, !noalias !391
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %.val10.val11.i.i, i64 noundef %i.kn, ptr noundef %i.kr, i64 noundef %i.kt, i64 noundef %.val.val.val.i.i, i64 noundef %i.kn, ptr noundef %.val10.val11.i.i)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %.lr.ph.i9.i
  %i.ku = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ku, %umax
  br i1 %exitcond.not, label %._crit_edge.i.i, label %.lr.ph.i9.i, !llvm.loop !397

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit: ; preds = %._crit_edge.i.i, %.noexc20, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i, %.noexc14, %.sink.split.i.i, %.noexc12
  %.val8 = load ptr, ptr %i.m, align 8, !tbaa !392 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %.val8, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.val9 = load ptr, ptr %i.kv, align 8
  %i.kw = ptrtoint ptr %.val9 to i64
  %i.kx = ptrtoint ptr %.val8 to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %.val8, i64 noundef %i.ky) #31
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit: ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ca

.loopexit:                                        ; preds = %.lr.ph.i9.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %.invoke, %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke, %bb.by, %bb.bx, %_ZN5arrow6StatusD2Ev.exit.i1.i, %bb.bh, %bb.at, %bb.ai, %_ZN5arrow6StatusD2Ev.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre = load ptr, ptr %i.m, align 8, !tbaa !392 ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %.val.pre, null
  br i1 %.not.i.i.i.i25, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27, label %.body.thread

.body.thread:                                     ; preds = %.loopexit, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, %.body.i.i, %.body
  %eh.lpad-body97 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body ], [ %lpad.loopexit, %.loopexit ], [ %i.hi, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i ], [ %i.fv, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %.val96 = phi ptr [ %.val.pre, %.body ], [ %i.js, %.loopexit ], [ %i.z, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i ], [ %i.z, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.z, %.body.i.i ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.val7 = load ptr, ptr %i.kz, align 8
  %i.la = ptrtoint ptr %.val7 to i64
  %i.lb = ptrtoint ptr %.val96 to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %.val96, i64 noundef %i.lc) #31
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27: ; preds = %.body, %.body.thread
  %eh.lpad-body98 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body ], [ %eh.lpad-body97, %.body.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.resume

bb.ca:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !294
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !295
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !335  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !335  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %.thread140, label %.lr.ph

.thread140:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !312
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 -1, ptr %i.l, align 8, !tbaa !311
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !312  ; 5 uses
  br i1 %spec.select, label %bb.j, label %bb.l

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit
  %.017107 = phi i1 [ %spec.select, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ false, %bb.b ]
  %.sroa.056.0106 = phi ptr [ %.sroa.056.1, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 9 uses
  %.sroa.15.0105 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 8 uses
  %.sroa.21.0104 = phi ptr [ %.sroa.21.1, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 4 uses
  %.sroa.053.0103 = phi ptr [ %i.aj, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ %i.f, %bb.b ] ; 5 uses
  %i.o = tail call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.053.0103) ; 2 uses
  %i.p = icmp eq i32 %i.o, 2
  %spec.select = select i1 %i.p, i1 true, i1 %.017107 ; 2 uses
  %.not28 = icmp eq i32 %i.o, 1
  br i1 %.not28, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.053.0103, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !264
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.15.0105, %.sroa.21.0104
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.053.0103, ptr %.sroa.15.0105, align 8, !tbaa !336
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.15.0105, i64 8
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %.sroa.15.0105 to i64
  %i.v = ptrtoint ptr %.sroa.056.0106 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #29
          to label %.noexc45 unwind label %.loopexit ; 4 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store ptr %.sroa.053.0103, ptr %i.af, align 8, !tbaa !336
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.h, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %.sroa.056.0106, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %.noexc45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.056.0106, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0106, i64 noundef %i.w) #31
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.e, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c, %.lr.ph
  %.sroa.21.1 = phi ptr [ %.sroa.21.0104, %.lr.ph ], [ %.sroa.21.0104, %bb.c ], [ %i.ai, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.21.0104, %bb.e ] ; 10 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0105, %.lr.ph ], [ %.sroa.15.0105, %bb.c ], [ %i.ah, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.t, %bb.e ] ; 3 uses
  %.sroa.056.1 = phi ptr [ %.sroa.056.0106, %.lr.ph ], [ %.sroa.056.0106, %bb.c ], [ %i.ae, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.056.0106, %bb.e ] ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.053.0103, i64 136 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.h
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !293 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !311
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !292
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.n, i64 noundef %i.ap, i64 noundef %i.am, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.sroa.056.0.lcssa139 = phi ptr [ %.sroa.056.0.lcssa136144, %bb.n ], [ %.sroa.056.1, %bb.j ]
  %.sroa.21.0.lcssa132 = phi ptr [ %.sroa.21.0.lcssa131145, %bb.n ], [ %.sroa.21.1, %bb.j ]
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.l:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 -1, ptr %i.ar, align 8, !tbaa !311
  %i.as = icmp eq ptr %.sroa.056.1, %.sroa.15.1
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread140, %bb.l
  %i.at = phi ptr [ %i.l, %.thread140 ], [ %i.ar, %bb.l ]
  %.sroa.21.0.lcssa131145 = phi ptr [ null, %.thread140 ], [ %.sroa.21.1, %bb.l ] ; 3 uses
  %.sroa.056.0.lcssa136144 = phi ptr [ null, %.thread140 ], [ %.sroa.056.1, %bb.l ] ; 3 uses
  %i.au = phi ptr [ %i.k, %.thread140 ], [ %i.n, %bb.l ] ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !311
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !292
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !293
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef nonnull %i.au, i64 noundef %i.aw, i64 noundef %i.ay, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.k

bb.o:                                             ; preds = %bb.l
  %i.az = ptrtoint ptr %.sroa.15.1 to i64
  %i.ba = ptrtoint ptr %.sroa.056.1 to i64        ; 7 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp eq i64 %i.bb, 8
  %i.be = load ptr, ptr %.sroa.056.1, align 8, !tbaa !336 ; 6 uses
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !311
  store i64 %i.bg, ptr %i.ar, align 8, !tbaa !311
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !312
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !292
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !293
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !292
  invoke void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %i.bi, i64 noundef %i.bk, i64 noundef %i.bm, ptr noundef %i.n, i64 noundef %i.bo)
          to label %.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread83

bb.r:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.056.1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !336 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 24
  %.val39 = load i64, ptr %i.bs, align 8, !tbaa !292
  %i.bt = getelementptr i8, ptr %i.be, i64 32
  %.val40 = load ptr, ptr %i.bt, align 8, !tbaa !312
  %i.bu = getelementptr i8, ptr %i.br, i64 24
  %.val41 = load i64, ptr %i.bu, align 8, !tbaa !292
  %i.bv = getelementptr i8, ptr %i.br, i64 32
  %.val42 = load ptr, ptr %i.bv, align 8, !tbaa !312
  %i.bw = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val37.val.val = load i64, ptr %i.bw, align 8, !tbaa !293
  %i.bx = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %.val37.val.val44 = load i64, ptr %i.bx, align 8, !tbaa !292
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %.val40, i64 noundef %.val39, ptr noundef %.val42, i64 noundef %.val41, i64 noundef %.val37.val.val, i64 noundef %.val37.val.val44, ptr noundef %i.n)
          to label %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" unwind label %bb.s

"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader": ; preds = %bb.r
  %i.by = icmp ugt i64 %i.bc, 2
  br i1 %i.by, label %.lr.ph112, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.thread83

.lr.ph112:                                        ; preds = %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader", %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48"
  %.0111 = phi i64 [ %i.ce, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ], [ 2, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.056.1, i64 %.0111
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !336 ; 2 uses
  %.val33 = load i64, ptr %i.bx, align 8, !tbaa !292 ; 2 uses
  %.val34 = load ptr, ptr %i.m, align 8, !tbaa !312
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  %.val35 = load i64, ptr %i.cc, align 8, !tbaa !292
  %i.cd = getelementptr i8, ptr %i.cb, i64 32
  %.val36 = load ptr, ptr %i.cd, align 8, !tbaa !312
  %.val.val.val = load i64, ptr %i.bw, align 8, !tbaa !293
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %.val34, i64 noundef %.val33, ptr noundef %.val36, i64 noundef %.val35, i64 noundef %.val.val.val, i64 noundef %.val33, ptr noundef %i.n)
          to label %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" unwind label %bb.t

"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48": ; preds = %.lr.ph112
  %i.ce = add nuw i64 %.0111, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.bc
  br i1 %exitcond.not, label %.thread, label %.lr.ph112, !llvm.loop !398

bb.t:                                             ; preds = %.lr.ph112
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread83

bb.u:                                             ; preds = %bb.n, %bb.m, %bb.j
  %.sroa.056.0.lcssa137 = phi ptr [ %.sroa.056.0.lcssa136144, %bb.n ], [ %.sroa.056.0.lcssa136144, %bb.m ], [ %.sroa.056.1, %bb.j ] ; 3 uses
  %.sroa.21.0.lcssa134 = phi ptr [ %.sroa.21.0.lcssa131145, %bb.n ], [ %.sroa.21.0.lcssa131145, %bb.m ], [ %.sroa.21.1, %bb.j ]
  %.not.i.i.i = icmp eq ptr %.sroa.056.0.lcssa137, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.u
  %.pre = ptrtoint ptr %.sroa.056.0.lcssa137 to i64
  br label %.thread

.thread:                                          ; preds = %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48", %..thread_crit_edge, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader", %bb.p
  %.sroa.056.0.lcssa138 = phi ptr [ %.sroa.056.0.lcssa137, %..thread_crit_edge ], [ %.sroa.056.1, %bb.p ], [ %.sroa.056.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %.sroa.056.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %.sroa.21.0.lcssa133 = phi ptr [ %.sroa.21.0.lcssa134, %..thread_crit_edge ], [ %.sroa.21.1, %bb.p ], [ %.sroa.21.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %.sroa.21.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.ba, %bb.p ], [ %i.ba, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %i.ba, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %i.cg = ptrtoint ptr %.sroa.21.0.lcssa133 to i64
  %i.ch = sub i64 %i.cg, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0.lcssa138, i64 noundef %i.ch) #31
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit: ; preds = %.thread, %bb.u, %bb.a
  ret void

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.sroa.21.0100 = phi ptr [ %.sroa.21.0.lcssa132, %bb.k ], [ %.sroa.15.0105, %.loopexit ], [ %.sroa.15.0105, %.loopexit.split-lp ]
  %.sroa.056.092 = phi ptr [ %.sroa.056.0.lcssa139, %bb.k ], [ %.sroa.056.0106, %.loopexit ], [ %.sroa.056.0106, %.loopexit.split-lp ] ; 3 uses
  %.pn29.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %.sroa.056.092, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit50, label %..thread83_crit_edge

..thread83_crit_edge:                             ; preds = %bb.v
  %.pre119 = ptrtoint ptr %.sroa.056.092 to i64
  br label %.thread83

.thread83:                                        ; preds = %..thread83_crit_edge, %bb.s, %bb.t, %bb.q
  %.pre-phi120 = phi i64 [ %.pre119, %..thread83_crit_edge ], [ %i.ba, %bb.s ], [ %i.ba, %bb.t ], [ %i.ba, %bb.q ]
end_hunk_1
begin_hunk_2_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_:bb.a
bb.ar:                                            ; preds = %bb.ap
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i.i29 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i29, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30

bb.at:                                            ; preds = %bb.ar
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i.i31 = phi i32 [ %i.ct, %bb.as ], [ %i.dd, %bb.at ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i31, 1
  br i1 %i.de, label %bb.au, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit, !prof !69

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #27
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.av:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(17) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr null, ptr %i.cn, align 8, !tbaa !70
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.df, align 8, !tbaa !70
  store <2 x ptr> %i.dg, ptr %i.c, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !493
  store i8 5, ptr %i.d, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.aw:                                            ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit: ; preds = %bb.av, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30, %bb.aq, %bb.ao, %bb.am, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i26, %bb.ah, %bb.af, %bb.ad, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i22, %bb.y, %bb.w, %bb.u, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i18, %bb.p, %bb.n, %bb.l, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.g, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.241, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.241, align 1            ; 3 uses
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %class.anon.228, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit, label %6

6:                                                ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %7 = mul nuw nsw i64 %i.l, 24
  %8 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %7) #29
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit, %6
  %9 = phi ptr [ %8, %6 ], [ null, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %i.n ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 -1, ptr %11, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %10, ptr %5, align 8, !tbaa !168
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !76
  store i8 %i.p, ptr %11, align 8, !tbaa !76
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %9, %bb.c ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.c ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !76, !alias.scope !499, !noalias !496 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.v = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !499, !noalias !496
  store ptr null, ptr %i.u, align 8, !tbaa !70, !alias.scope !499, !noalias !496
  store <2 x ptr> %i.v, ptr %.013.i.i.i, align 8, !tbaa !71, !alias.scope !496, !noalias !499
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !499, !noalias !496
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.s, ptr %i.q, align 8, !tbaa !76, !alias.scope !496, !noalias !499
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !501
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.d, !noalias !496

bb.d:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #30, !noalias !496
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !501
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %9, %bb.c ], [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i26, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32
  %.013.i.i.i28 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i29 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !76, !alias.scope !505, !noalias !502 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30:          ; preds = %.lr.ph.i.i.i27
  %i.af = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.ag = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !71, !alias.scope !505, !noalias !502
  store ptr null, ptr %i.af, align 8, !tbaa !70, !alias.scope !505, !noalias !502
  store <2 x ptr> %i.ag, ptr %.013.i.i.i28, align 8, !tbaa !71, !alias.scope !502, !noalias !505
  store ptr null, ptr %.0912.i.i.i29, align 8, !tbaa !71, !alias.scope !505, !noalias !502
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i27
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !76, !alias.scope !502, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !507
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i29)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 unwind label %bb.e, !noalias !502

bb.e:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #30, !noalias !502
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !507
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #31
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.f
  store ptr %9, ptr %0, align 8, !tbaa !34
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %9, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !38
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %10) #27
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  %i.at = call ptr @__cxa_begin_catch(ptr %i.as) #27 ; 0 uses
  %12 = mul nuw nsw i64 %i.l, 24
  call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %12) #31
  invoke void @__cxa_rethrow() #28
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aq

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #30
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !508
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !3      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !124

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !158
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.s, ptr %i.d, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !158
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !124

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !3
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !509

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !512

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !513

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !514

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !158
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !124

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !158
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !158
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec116, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat118, ptr %i.bn, align 4, !tbaa !3
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !515

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !516

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !161   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #28
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %4 = add nsw i64 %.sroa.speculated.i, %i.bt     ; 2 uses
  %5 = icmp ult i64 %4, %i.bt
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 2305843009213693951)
  %7 = select i1 %5, i64 2305843009213693951, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.br                          ; 4 uses
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %bb.s, label %10

10:                                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #29
  br label %bb.s

bb.s:                                             ; preds = %10, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %13, i64 %9 ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i75
  %i.by = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.bz = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ca = lshr exact i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bz, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.s
  %n.vec144 = and i64 %i.cb, 9223372036854775800  ; 3 uses
  %i.cc = shl i64 %n.vec144, 2
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat146, ptr %i.cf, align 4, !tbaa !3
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cg, label %middle.block151, label %vector.body147, !llvm.loop !517

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cb, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.s, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bw, %bb.s ], [ %i.cd, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.by, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !518

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.ci = icmp sgt i64 %9, 4
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !124

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %i.bq, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cj = icmp eq i64 %9, 4
  br i1 %i.cj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.ck, ptr %13, align 4, !tbaa !3
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %2 ; 3 uses
  %i.cm = sub i64 %i.f, %8                        ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 4
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !124

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %1, i64 %i.cm, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.co = icmp eq i64 %i.cm, 4
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !3
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cr) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.z, %bb.aa
  store ptr %13, ptr %0, align 8, !tbaa !161
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !158
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %7
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !508
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !519
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !256  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !181    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !124

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !256
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !181
  store i64 %i.s, ptr %i.d, align 8, !tbaa !181
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !256
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !124

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !181
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !181
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec130, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !181
  store <2 x i64> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !181
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !520

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !181
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !521

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !181
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !522

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !181
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !523

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !256
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !124

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !256
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !181
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !181
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !256
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec116, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x i64> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !181
  store <2 x i64> %broadcast.splat118, ptr %i.bn, align 8, !tbaa !181
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !524

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !181
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !525

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !255   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 4 uses
  %i.bu = sub nsw i64 1152921504606846975, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #28
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %4 = add nsw i64 %.sroa.speculated.i, %i.bt     ; 2 uses
  %5 = icmp ult i64 %4, %i.bt
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %7 = select i1 %5, i64 1152921504606846975, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.br                          ; 4 uses
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %bb.s, label %10

10:                                               ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #29
  br label %bb.s

bb.s:                                             ; preds = %10, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %13, i64 %9 ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i75
  %i.by = load i64, ptr %3, align 8, !tbaa !181   ; 2 uses
  %i.bz = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.ca = lshr exact i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.s
  %n.vec144 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cc = shl i64 %n.vec144, 3
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !181
  store <2 x i64> %broadcast.splat146, ptr %i.cf, align 8, !tbaa !181
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cg, label %middle.block151, label %vector.body147, !llvm.loop !526

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cb, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.s, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bw, %bb.s ], [ %i.cd, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.by, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !181
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !527

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.ci = icmp sgt i64 %9, 8
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !124

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %i.bq, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cj = icmp eq i64 %9, 8
  br i1 %i.cj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load i64, ptr %i.bq, align 8, !tbaa !181
  store i64 %i.ck, ptr %13, align 8, !tbaa !181
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %2 ; 3 uses
  %i.cm = sub i64 %i.f, %8                        ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 8
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !124

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %1, i64 %i.cm, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.co = icmp eq i64 %i.cm, 8
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load i64, ptr %1, align 8, !tbaa !181
  store i64 %i.cp, ptr %i.cl, align 8, !tbaa !181
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cr) #31
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.z, %bb.aa
  store ptr %13, ptr %0, align 8, !tbaa !255
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !256
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %7
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !519
  br label %_ZSt4fillIPllEvT_S1_RKT0_.exit

_ZSt4fillIPllEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !280  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !261    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 136                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !528
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 136                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 67818912035696881
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 67818912035696880, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.prol, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.p, align 8, !tbaa !311
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.q, i8 0, i64 112, i1 false)
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 136 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !529

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.u, align 8, !tbaa !311
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.v, i8 0, i64 112, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.x, align 8, !tbaa !311
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.y, i8 0, i64 112, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 272
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.aa, align 8, !tbaa !311
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ab, i8 0, i64 112, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 408
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ad, align 8, !tbaa !311
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i8 0, i64 112, i1 false)
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 544 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !531

_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !280
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 67818912035696880) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 136
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #29 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i31.prol, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.an, align 8, !tbaa !311
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ao, i8 0, i64 112, i1 false)
  %i.ap = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 136 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !532

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i31, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.as, align 8, !tbaa !311
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.at, i8 0, i64 112, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.av, align 8, !tbaa !311
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aw, i8 0, i64 112, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ay, align 8, !tbaa !311
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.az, i8 0, i64 112, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 408
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.bb, align 8, !tbaa !311
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bc, i8 0, i64 112, i1 false)
  %i.bd = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 544
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !531

_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.0911.i.i.i, i64 104, i1 false), !alias.scope !538
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !336, !alias.scope !536, !noalias !533
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !336, !alias.scope !533, !noalias !536
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !286, !alias.scope !536, !noalias !533
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !286, !alias.scope !533, !noalias !536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false), !alias.scope !536, !noalias !533
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !264, !alias.scope !536, !noalias !533
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !264, !alias.scope !533, !noalias !536
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136
  %.not.i.i.i38 = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !539

_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute6detail12_GLOBAL__N_114ToChunkedArrayERKSt6vectorINS_5DatumESaIS4_EERKNS_10TypeHolderE:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 1, ptr %i.bj, align 4, !tbaa !84, !noalias !849
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bh, align 8, !tbaa !63, !noalias !849
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EES3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !849

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc21
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 104) #31, !noalias !849
  br label %.body

bb.aa:                                            ; preds = %.noexc21
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bm, align 8, !tbaa !70, !alias.scope !849
  store ptr %i.bk, ptr %0, align 8, !tbaa !852, !alias.scope !849
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bp, align 8, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !84
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #27, !inline_history !581
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #27, !inline_history !581
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i23 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i23, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.af:                                            ; preds = %bb.ad
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i25 = phi i32 [ %i.bs, %bb.ae ], [ %i.cc, %bb.af ]
  %i.cd = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.cd, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ce = load ptr, ptr %3, align 8, !tbaa !183   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !187 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.ce, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.cj, align 8, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !84
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !63
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #27, !inline_history !206
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #27, !inline_history !206
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.ak ], [ %i.cw, %bb.al ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.am, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !69

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ai, %.lr.ph.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.cy, %i.cg
  br i1 %.not.i.i.i26, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !207

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !183
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ce, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !186
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #31
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.ao:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.ap
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.ap ], [ %i.bl, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %bb.aq

bb.aq:                                            ; preds = %.body, %bb.ao
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.de, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.l, %bb.z, %bb.aq, %bb.i
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn, %bb.aq ], [ %.pn13, %bb.z ], [ %i.ah, %bb.l ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !183    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %i.r, align 8, !tbaa !70
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !118
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !71, !alias.scope !856, !noalias !853
  store ptr null, ptr %i.t, align 8, !tbaa !70, !alias.scope !856, !noalias !853
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !71, !alias.scope !853, !noalias !856
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !118, !alias.scope !856, !noalias !853
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !858

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !71, !alias.scope !862, !noalias !859
  store ptr null, ptr %i.y, align 8, !tbaa !70, !alias.scope !862, !noalias !859
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !71, !alias.scope !859, !noalias !862
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !118, !alias.scope !862, !noalias !859
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !858

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !186
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !183
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12ChunkedArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow12ChunkedArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.a) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !72
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EES3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.65", align 16   ; 7 uses
  %4 = alloca %"class.std::shared_ptr.57", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !864
  store <2 x ptr> %i.b, ptr %3, align 16, !tbaa !864
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !186
  store ptr %i.e, ptr %i.c, align 16, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %i.f, align 8, !tbaa !70
  store <2 x ptr> %i.g, ptr %4, align 16, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !289
  invoke void @_ZN5arrow12ChunkedArrayC1ESt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EES2_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !84
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !581
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !581
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE13PrepareOutputEl:bb.a
  %.not.i.i62 = icmp eq ptr %.pr, null
  br i1 %.not.i.i62, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fb, align 8, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !84
  %i.fg = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  %i.fj = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i63 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i63, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.bd:                                            ; preds = %bb.bb
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i65 = phi i32 [ %i.fe, %bb.bc ], [ %i.fo, %bb.bd ]
  %i.fp = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %i.fp, label %bb.be, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %.loopexit, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.bf:                                            ; preds = %bb.aj, %bb.m, %bb.l
  %.pn32.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.al, %bb.l ], [ %i.da, %bb.aj ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.k
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.bf ], [ %i.ak, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn32.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor10EmitResultENS_5DatumEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"struct.arrow::Datum", align 16    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !877
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !917
  %.not.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !76    ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_ZN5arrow5DatumC2EOS0_.exit, label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x ptr>, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %i.i, align 8, !tbaa !70
  store <2 x ptr> %i.j, ptr %6, align 16, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !71
  br label %_ZN5arrow5DatumC2EOS0_.exit

_ZN5arrow5DatumC2EOS0_.exit:                      ; preds = %bb.b, %.sink.split.i.i.i.i.i.i.i.i
  store i8 %i.g, ptr %i.e, align 16, !tbaa !76
  %i.k = load ptr, ptr %3, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow5DatumC2EOS0_.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !121    ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !121
  store ptr null, ptr %5, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %bb.h

bb.d:                                             ; preds = %_ZN5arrow5DatumC2EOS0_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %.not.i13 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i8 -1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !76    ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.f
  %i.aa = load ptr, ptr %2, align 8, !tbaa !71
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  store ptr null, ptr %i.ac, align 8, !tbaa !70
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !71
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !39
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ae = phi ptr [ %i.t, %bb.f ], [ %.pre.i, %.sink.split.i.i.i.i.i.i.i.i.i.i ]
  store i8 %i.y, ptr %i.w, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.af, ptr %i.s, align 8, !tbaa !39
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.g, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i, %_ZN5arrow5DatumD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !980
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.241, align 1            ; 3 uses
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit, label %5

5:                                                ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %6 = mul nuw nsw i64 %i.l, 24
  %7 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #29
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit, %5
  %8 = phi ptr [ %7, %5 ], [ null, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %i.n ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i8, ptr %11, align 8, !tbaa !76      ; 2 uses
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %i.o, align 8, !tbaa !70
  store <2 x ptr> %i.p, ptr %9, align 8, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !71
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit, %.sink.split.i.i.i.i.i.i.i.i.i
  store i8 %12, ptr %10, align 8, !tbaa !76
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %8, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !76, !alias.scope !986, !noalias !983 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.v = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !986, !noalias !983
  store ptr null, ptr %i.u, align 8, !tbaa !70, !alias.scope !986, !noalias !983
  store <2 x ptr> %i.v, ptr %.013.i.i.i, align 8, !tbaa !71, !alias.scope !983, !noalias !986
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !71, !alias.scope !986, !noalias !983
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.s, ptr %i.q, align 8, !tbaa !76, !alias.scope !983, !noalias !986
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !988
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.c, !noalias !983

bb.c:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #30, !noalias !983
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !988
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %8, %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.z, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i16, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22
  %.013.i.i.i18 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i19 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !76, !alias.scope !992, !noalias !989 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i20

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i20:          ; preds = %.lr.ph.i.i.i17
  %i.af = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 8
  %i.ag = load <2 x ptr>, ptr %.0912.i.i.i19, align 8, !tbaa !71, !alias.scope !992, !noalias !989
  store ptr null, ptr %i.af, align 8, !tbaa !70, !alias.scope !992, !noalias !989
  store <2 x ptr> %i.ag, ptr %.013.i.i.i18, align 8, !tbaa !71, !alias.scope !989, !noalias !992
  store ptr null, ptr %.0912.i.i.i19, align 8, !tbaa !71, !alias.scope !992, !noalias !989
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i20, %.lr.ph.i.i.i17
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !76, !alias.scope !989, !noalias !992
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !994
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i19)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 unwind label %bb.d, !noalias !989

bb.d:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #30, !noalias !989
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !994
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !177

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.aa, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ak, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #31
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, %bb.e
  store ptr %8, ptr %0, align 8, !tbaa !34
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S5_S7_S9_SB_SD_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSE_E4typeESJ_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.241, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit, label %bb.h

_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !70   ; 8 uses
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !84
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !837
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !837
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit unwind label %bb.i

_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !71
  store ptr null, ptr %i.w, align 8, !tbaa !70
  store <2 x ptr> %i.x, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !153
  store i8 2, ptr %i.a, align 8, !tbaa !76
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %_ZSt3getILm2EJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit, %_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S5_S7_S9_SB_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit
  ret ptr %0

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA80_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(80) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !995
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !995
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !noalias !995, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(80) %2) #27, !noalias !995
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(80) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !995 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !995
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !995
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA81_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(81) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !998
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !998
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !noalias !998, !nonnull !133, !align !595
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(81) %2) #27, !noalias !998
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(81) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !998 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d
end_hunk_4
