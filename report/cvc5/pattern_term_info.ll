Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/pattern_term_info?download=true
inline.NumInlined: 329
inline.NumDeleted: 154
begin_hunk_0_@_ZNK4cvc58internal6theory11quantifiers5ieval11PatTermInfo8isActiveEv:bb.a
  resume { ptr, i32 } %i.h

_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12
  %i.j = icmp eq ptr %i.b, %i.i
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers5ieval11PatTermInfo11notifyChildERNS3_5StateENS0_12NodeTemplateILb0EEES8_PNS3_13TermEvaluatorE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate.1", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %10 = alloca %"class.std::vector.23", align 8   ; 12 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.g, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit

common.resume:                                    ; preds = %.body, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.q, %bb.j ], [ %.pn23.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.j = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %bb.f, label %bb.aq

bb.f:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.l = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i.i30 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i30, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.i unwind label %bb.j       ; 3 uses

bb.i:                                             ; preds = %bb.h
  store i64 1152920405095219200, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %common.resume

_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit:   ; preds = %bb.f, %bb.g, %bb.i
  %i.r = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12
  store ptr %i.r, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.s = load ptr, ptr %0, align 8, !tbaa !14
  store ptr %i.s, ptr %7, align 8, !tbaa !14
  %i.t = load ptr, ptr %2, align 8, !tbaa !14
  store ptr %i.t, ptr %8, align 8, !tbaa !14
  %i.u = load ptr, ptr %3, align 8, !tbaa !14
  store ptr %i.u, ptr %9, align 8, !tbaa !14
  %i.v = load ptr, ptr %4, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.af = icmp eq ptr %i.z, %i.ae
  br i1 %i.af, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i unwind label %bb.u

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i: ; preds = %bb.l, %bb.k
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i, label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit, label %bb.m, !prof !53

bb.m:                                             ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !14
  br label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit

_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit: ; preds = %bb.m, %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i
  %i.ai = phi ptr [ %i.ah, %bb.m ], [ %i.ag, %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.aj = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %bb.r, !prof !9

bb.n:                                             ; preds = %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit
  %i.al = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i.i31 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i31, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.p unwind label %bb.q       ; 3 uses

bb.p:                                             ; preds = %bb.o
  store i64 1152920405095219200, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.am, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %.body

bb.r:                                             ; preds = %bb.p, %bb.n, %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit
  %i.ap = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12
  %i.aq = icmp eq ptr %i.ai, %i.ap
  br i1 %i.aq, label %bb.v, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit:  ; preds = %bb.r
  %i.ar = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !36
  %i.az = icmp eq ptr %i.at, %i.ay
  br i1 %i.az, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i50, label %bb.s

bb.s:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ba)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i50 unwind label %bb.x

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i50: ; preds = %bb.s, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14
  %.not.i.i.i51 = icmp eq ptr %i.bc, %i.ar
  br i1 %.not.i.i.i51, label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit53, label %bb.t, !prof !53

bb.t:                                             ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i50
  store ptr %i.ar, ptr %i.bb, align 8, !tbaa !14
  br label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit53

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !62
  %i.bg = add i64 %i.bf, -1                       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36
  %i.bo = icmp eq ptr %i.bi, %i.bn
  br i1 %i.bo, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit65, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bp)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit65 unwind label %bb.x

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit65: ; preds = %bb.w, %bb.v
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !24
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %bb.y, label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit53

bb.x:                                             ; preds = %bb.s, %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.br = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 1023                     ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 1023
  %i.bx = select i1 %i.bw, i32 -1, i32 %i.bv
  %i.by = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bx)
          to label %bb.z unwind label %.thread

bb.z:                                             ; preds = %bb.y
  %i.bz = icmp eq i32 %i.by, 2
  %spec.select.v.i.i = select i1 %i.bz, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 %spec.select.v.i.i ; 2 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = and i64 %i.ce, 67108863
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cf ; 2 uses
  %.not142143 = icmp eq ptr %spec.select.i.i, %i.cg
  br i1 %.not142143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.aa

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %i.cj = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ca, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store ptr %i.cj, ptr %14, align 8, !tbaa !14
  %i.ck = load ptr, ptr %4, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.ag unwind label %bb.ak

.thread:                                          ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit104

bb.aa:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit
  %i.co = phi ptr [ null, %.lr.ph ], [ %i.dm, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ] ; 9 uses
  %i.cp = phi ptr [ null, %.lr.ph ], [ %i.dn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ] ; 5 uses
  %i.cq = phi ptr [ null, %.lr.ph ], [ %i.do, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.sroa.0136.0144 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.dp, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.0136.0144, align 8, !tbaa !12, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr %i.cr, ptr %12, align 8, !tbaa !14
  invoke void @_ZNK4cvc58internal6theory11quantifiers5ieval5State8getValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %11, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 %12)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %.not.i67 = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.i67, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = load ptr, ptr %11, align 8, !tbaa !14
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr %i.ct, ptr %i.ch, align 8, !tbaa !66
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cu = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 4 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.ae, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #19
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  %i.dg = load ptr, ptr %11, align 8, !tbaa !14
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !14
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc70
  %15 = ptrtoaddr ptr %i.de to i64
  %16 = add i64 %i.cu, -8
  %17 = sub i64 %16, %i.cv                        ; 2 uses
  %18 = lshr i64 %17, 3
  %19 = add nuw nsw i64 %18, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %17, 24
  %20 = sub i64 %i.cv, %15
  %diff.check = icmp ugt i64 %20, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %19, 4611686018427387900       ; 3 uses
  %21 = shl i64 %n.vec, 3                         ; 2 uses
  %22 = getelementptr i8, ptr %i.de, i64 %21      ; 2 uses
  %23 = getelementptr i8, ptr %i.co, i64 %21
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %24 = shl i64 %index, 3                         ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %24 ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.co, i64 %24 ; 2 uses
  %25 = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep167, align 8, !tbaa !14
  %wide.load168 = load <2 x ptr>, ptr %25, align 8, !tbaa !14
  %26 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !14
  store <2 x ptr> %wide.load168, ptr %26, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %19, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader170

.lr.ph.i.i.i.i.i.i.i.preheader170:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.i.ph = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %22, %middle.block ]
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %23, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader170, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader170 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader170 ] ; 2 uses
  %i.dh = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !14
  store ptr %i.dh, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.di, %i.cp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc70
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.de, %.noexc70 ], [ %22, %middle.block ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cw) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  store ptr %i.de, ptr %10, align 8, !tbaa !69
  store ptr %i.dk, ptr %i.ch, align 8, !tbaa !66
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc ; 2 uses
  store ptr %i.dl, ptr %i.ci, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ac
  %i.dm = phi ptr [ %i.de, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.co, %bb.ac ]
  %i.dn = phi ptr [ %i.dl, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.cp, %bb.ac ]
  %i.do = phi ptr [ %i.dk, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ct, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0136.0144, i64 8 ; 2 uses
  %.not142 = icmp eq ptr %i.dp, %i.cg
  br i1 %.not142, label %._crit_edge.loopexit, label %bb.aa

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.al

bb.ag:                                            ; preds = %._crit_edge
  %i.dq = load ptr, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !35
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !36
  %i.dw = icmp eq ptr %i.dq, %i.dv
  br i1 %i.dw, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i71, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i71 unwind label %bb.ak

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i71: ; preds = %bb.ah, %bb.ag
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.dy = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i.i.i72, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit101, label %bb.ai, !prof !53

bb.ai:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i71
  store ptr %i.dy, ptr %i.b, align 8, !tbaa !14
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit101

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit101: ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i71, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.dz = load ptr, ptr %10, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i102 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit101
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !70
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit101, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit53

bb.ak:                                            ; preds = %._crit_edge, %bb.ah
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %.pre146 = load ptr, ptr %10, align 8, !tbaa !69
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak
  %i.eg = phi ptr [ %.pre146, %bb.ak ], [ %i.co, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn23.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.ak ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit104, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !70
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit104

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit104: ; preds = %.thread, %bb.al, %bb.am
  %.pn23.pn.pn.pn.pn160 = phi { ptr, i32 } [ %i.cn, %.thread ], [ %.pn23.pn.pn.pn.pn, %bb.al ], [ %.pn23.pn.pn.pn.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.body

_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit53: ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i50, %bb.t, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit65, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit
  %.018 = phi i1 [ false, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit65 ], [ true, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit ], [ true, %bb.t ], [ true, %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i.i50 ]
  %i.em = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %i.en = load i64, ptr %i.em, align 8            ; 3 uses
  %i.eo = and i64 %i.en, 1152920405095219200
  %.not.i.i105 = icmp eq i64 %i.eo, 1152920405095219200
  br i1 %.not.i.i105, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.an, !prof !53

bb.an:                                            ; preds = %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit53
  %i.ep = add i64 %i.en, 1152920405095219200
  %i.eq = and i64 %i.ep, 1152920405095219200      ; 2 uses
  %i.er = and i64 %i.en, -1152920405095219201
  %i.es = or disjoint i64 %i.eq, %i.er
  store i64 %i.es, ptr %i.em, align 8
  %i.et = icmp eq i64 %i.eq, 0
  br i1 %i.et, label %bb.ao, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !53

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEaSERKS4_.exit53, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.aq

.body:                                            ; preds = %bb.q, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit104, %bb.x, %bb.u
  %.pn23.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn23.pn.pn.pn.pn160, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit104 ], [ %i.bd, %bb.u ], [ %i.bq, %bb.x ], [ %i.ao, %bb.q ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.aq:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.119 = phi i1 [ %.018, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ false, %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit ]
  ret i1 %.119
}

declare void @_ZNK4cvc58internal6theory11quantifiers5ieval5State8getValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(424), ptr noundef align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !53

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #20
  unreachable
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #5 section ".text.startup" comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  resume { ptr, i32 } %i.h

_ZN4cvc58internal4expr9NodeValue4nullEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !12 ; 5 uses
  store ptr %i.i, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !52
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = lshr i64 %i.j, 40
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 1048575                    ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1048574
  br i1 %i.n, label %bb.g, label %bb.h, !prof !55

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.o = add nuw nsw i32 %i.m, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 40
  %i.r = and i64 %i.j, -1152920405095219201
  %i.s = or i64 %i.q, %i.r
  store i64 %i.s, ptr %i.i, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.t = icmp eq i32 %i.m, 1048574
  br i1 %i.t, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, !prof !53

bb.i:                                             ; preds = %bb.h
  %i.u = or i64 %i.j, 1152920405095219200
  store i64 %i.u, ptr %i.i, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4cvc58internal12NodeTemplateILb1EED2Ev, ptr nonnull @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, ptr nonnull @__dso_handle) #18 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

declare void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4cvc57context10ContextObjC2EPNS0_7ContextE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE4saveEPNS0_20ContextMemoryManagerE(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4cvc57context20ContextMemoryManager7newDataEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef 80) ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context10ContextObjE, i64 16), ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EEE, i64 16), ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  store i64 %i.g, ptr %i.e, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.h, align 8, !tbaa !45
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE7restoreEPNS0_10ContextObjE(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !45, !range !46, !noundef !47
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted.i = load i64, ptr %i.f, align 8
  %.not7.i = icmp eq i64 %.promoted.i, %i.b
  %or.cond.i = select i1 %i.e, i1 %.not7.i, i1 false
  br i1 %or.cond.i, label %_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE12truncateListEm.exit, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.a
  store i64 %i.b, ptr %i.f, align 8, !tbaa !48
  br label %_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE12truncateListEm.exit

_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE12truncateListEm.exit: ; preds = %bb.a, %.loopexit.sink.split.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.m, %i.l
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 %i.n
  %i.p = tail call ptr @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.i, ptr %i.o) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EED0Ev(ptr noundef nonnull align 8 dereferenceable(74) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74) %0) #18
  tail call void @_ZN4cvc57context10ContextObjdlEPv(ptr noundef nonnull %0) #18
  ret void
}

declare noundef ptr @_ZN4cvc57context20ContextMemoryManager7newDataEm(ptr noundef nonnull align 8 dereferenceable(200), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context10ContextObjD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context10ContextObjD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %.not12 = icmp eq ptr %2, %i.b
  br i1 %.not12, label %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge, label %bb.c

._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge: ; preds = %bb.b
  %.pre13 = ptrtoint ptr %2 to i64                ; 2 uses
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.af, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ae, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %1, %bb.c ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ad, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %2, %bb.c ] ; 3 uses
  %i.h = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !52 ; 4 uses
  %i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !52
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, label %bb.d, !prof !53

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8              ; 3 uses
  %i.k = and i64 %i.j, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.k, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i, label %bb.e, !prof !53

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %i.j, 1152920405095219200
  %i.m = and i64 %i.l, 1152920405095219200        ; 2 uses
  %i.n = and i64 %i.j, -1152920405095219201
  %i.o = or disjoint i64 %i.m, %i.n
  store i64 %i.o, ptr %i.h, align 8
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.f, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i, !prof !53

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !52 ; 5 uses
  store ptr %i.q, ptr %.0811.i.i.i.i.i, align 8, !tbaa !52
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = lshr i64 %i.r, 40
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 1048575                    ; 3 uses
  %i.v = icmp samesign ult i32 %i.u, 1048574
  br i1 %i.v, label %bb.g, label %bb.h, !prof !55

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i
  %i.w = add nuw nsw i32 %i.u, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 40
  %i.z = and i64 %i.r, -1152920405095219201
  %i.aa = or i64 %i.y, %i.z
  store i64 %i.aa, ptr %i.q, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i
  %i.ab = icmp eq i32 %i.u, 1048574
  br i1 %i.ab, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, !prof !53

bb.i:                                             ; preds = %bb.h
  %i.ac = or i64 %i.r, 1152920405095219200
  store i64 %i.ac, ptr %i.q, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.af = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ag = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, !llvm.loop !71

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %.pre14 = ptrtoint ptr %.pre to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, %bb.c
  %.pre-phi15 = phi i64 [ %.pre13, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %.pre14, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.c, %bb.c ]
  %.pre-phi = phi i64 [ %.pre13, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %i.d, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.d, %bb.c ]
  %i.ah = phi ptr [ %2, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.b, %bb.c ] ; 2 uses
  %i.ai = sub i64 %.pre-phi15, %.pre-phi
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai ; 3 uses
  %.not.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 2 uses
  %i.ak = load ptr, ptr %.05.i.i.i, align 8, !tbaa !52 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = and i64 %i.al, 1152920405095219200
  %.not.i.i.i.i.i.i5 = icmp eq i64 %i.am, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i5, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.j, !prof !53

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i64 %i.al, 1152920405095219200
  %i.ao = and i64 %i.an, 1152920405095219200      ; 2 uses
  %i.ap = and i64 %i.al, -1152920405095219201
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.ak, align 8
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %bb.k, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !53

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #20
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.ah
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !50
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context10ContextObjdlEPv(ptr noundef %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc57context10ContextObjdlEPv, ptr noundef nonnull @.str.8, i32 noundef 570)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.e       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.9, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.10, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.12)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  unreachable

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #20
  unreachable
}

declare void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #14

declare void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEE4saveEPNS0_20ContextMemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4cvc57context20ContextMemoryManager7newDataEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef 48) ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context10ContextObjE, i64 16), ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEE, i64 16), ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  store ptr %i.f, ptr %i.d, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEE7restoreEPNS0_10ContextObjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !14
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEEE, i64 16), ptr %0, align 8, !tbaa !16
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEED2Ev.exit unwind label %bb.b, !inline_history !72

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #20, !inline_history !72
  unreachable

_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN4cvc57context10ContextObjdlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4cvc57context3CDOImE4saveEPNS0_20ContextMemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4cvc57context20ContextMemoryManager7newDataEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef 48) ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context10ContextObjE, i64 16), ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOImEE, i64 16), ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.d, align 8, !tbaa !24
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context3CDOImE7restoreEPNS0_10ContextObjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %i.c, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context3CDOImED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOImEE, i64 16), ptr %0, align 8, !tbaa !16
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %_ZN4cvc57context3CDOImED2Ev.exit unwind label %bb.b, !inline_history !73

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #20, !inline_history !73
  unreachable

_ZN4cvc57context3CDOImED2Ev.exit:                 ; preds = %bb.a
  tail call void @_ZN4cvc57context10ContextObjdlEPv(ptr noundef nonnull %0) #18
  ret void
}

declare void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !54}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4cvc58internal4expr9NodeValueE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !11, i64 0}
!14 = !{!13, !11, i64 0}
!15 = !{!"vtable pointer", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTSN4cvc57context5ScopeE", !10, i64 0}
!18 = !{!"p1 _ZTSN4cvc57context10ContextObjE", !10, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!"p2 _ZTSN4cvc57context10ContextObjE", !19, i64 0}
!21 = !{!"_ZTSN4cvc57context10ContextObjE", !17, i64 8, !18, i64 16, !18, i64 24, !20, i64 32}
!22 = !{!"long", !5, i64 0}
!23 = !{!"_ZTSN4cvc57context3CDOImEE", !21, i64 0, !22, i64 40}
!24 = !{!23, !22, i64 40}
!25 = !{!21, !17, i64 8}
!26 = !{!"p1 _ZTSN4cvc57context7ContextE", !10, i64 0}
!27 = !{!"p1 _ZTSN4cvc57context20ContextMemoryManagerE", !10, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIPN4cvc57context10ContextObjESaIS3_EE", !30, i64 0}
!32 = !{!"_ZTSN4cvc57context5ScopeE", !26, i64 0, !27, i64 8, !6, i64 16, !18, i64 24, !31, i64 32}
!33 = !{!32, !26, i64 0}
!34 = !{!"p2 _ZTSN4cvc57context5ScopeE", !19, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!17, !17, i64 0}
!37 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb1EEE", !10, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE", !40, i64 0}
!42 = !{!"bool", !5, i64 0}
!43 = !{!"_ZTSN4cvc57context14DefaultCleanUpINS_8internal12NodeTemplateILb1EEEEE"}
!44 = !{!"_ZTSN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EEE", !21, i64 0, !41, i64 40, !22, i64 64, !42, i64 72, !43, i64 73}
!45 = !{!44, !42, i64 72}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!44, !22, i64 64}
!49 = !{!37, !37, i64 0}
!50 = !{!38, !37, i64 8}
!51 = !{!"_ZTSN4cvc58internal12NodeTemplateILb1EEE", !11, i64 0}
!52 = !{!51, !11, i64 0}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!56 = !{!38, !37, i64 0}
!57 = !{!38, !37, i64 16}
!58 = distinct !{!58, i1 true, !"_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb0EEEEdeEv"}
!59 = distinct !{!59, !58, !"_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb0EEEEdeEv: argument 0"}
!60 = distinct !{!60, !54, !67, !68}
!61 = distinct !{!61, !54, !67}
!62 = !{!22, !22, i64 0}
!63 = !{!59}
!64 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb0EEE", !10, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!65, !64, i64 8}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!65, !64, i64 0}
!70 = !{!65, !64, i64 16}
!71 = distinct !{!71, !54}
!72 = !{ptr @_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb0EEEED2Ev}
!73 = !{ptr @_ZN4cvc57context3CDOImED2Ev}
end_hunk_0
