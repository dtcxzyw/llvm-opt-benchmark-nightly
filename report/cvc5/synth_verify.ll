Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/synth_verify?download=true
inline.NumInlined: 779
inline.NumDeleted: 336
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers11SynthVerify6verifyENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EERS8_:bb.a
  %i.oi = add i64 %i.og, 1152920405095219200
  %i.oj = and i64 %i.oi, 1152920405095219200      ; 2 uses
  %i.ok = and i64 %i.og, -1152920405095219201
  %i.ol = or disjoint i64 %i.oj, %i.ok
  store i64 %i.ol, ptr %i.of, align 8
  %i.om = icmp eq i64 %i.oj, 0
  br i1 %i.om, label %bb.ed, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225, !prof !254

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.of)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225 unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.on = landingpad { ptr, i32 }
          catch ptr null
  %i.oo = extractvalue { ptr, i32 } %i.on, 0
  call void @__clang_call_terminate(ptr %i.oo) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit222, %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.op = load ptr, ptr %i.ao, align 8, !tbaa !260 ; 3 uses
  %i.oq = load i64, ptr %i.op, align 8            ; 3 uses
  %i.or = and i64 %i.oq, 1152920405095219200
  %.not.i.i.i226 = icmp eq i64 %i.or, 1152920405095219200
  br i1 %.not.i.i.i226, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i227, label %bb.ef, !prof !254

bb.ef:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225
  %i.os = add i64 %i.oq, 1152920405095219200
  %i.ot = and i64 %i.os, 1152920405095219200      ; 2 uses
  %i.ou = and i64 %i.oq, -1152920405095219201
  %i.ov = or disjoint i64 %i.ot, %i.ou
  store i64 %i.ov, ptr %i.op, align 8
  %i.ow = icmp eq i64 %i.ot, 0
  br i1 %i.ow, label %bb.eg, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i227, !prof !254

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.op)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i227 unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  %i.oy = extractvalue { ptr, i32 } %i.ox, 0
  call void @__clang_call_terminate(ptr %i.oy) #21
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit.i227:         ; preds = %bb.eg, %bb.ef, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225
  %i.oz = load ptr, ptr %i.ap, align 8, !tbaa !260 ; 3 uses
  %i.pa = load i64, ptr %i.oz, align 8            ; 3 uses
  %i.pb = and i64 %i.pa, 1152920405095219200
  %.not.i.i1.i228 = icmp eq i64 %i.pb, 1152920405095219200
  br i1 %.not.i.i1.i228, label %_ZN4cvc58internal6theory18SubsolverSetupInfoD2Ev.exit212, label %bb.ei, !prof !254

bb.ei:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit.i227
  %i.pc = add i64 %i.pa, 1152920405095219200
  %i.pd = and i64 %i.pc, 1152920405095219200      ; 2 uses
  %i.pe = and i64 %i.pa, -1152920405095219201
  %i.pf = or disjoint i64 %i.pd, %i.pe
  store i64 %i.pf, ptr %i.oz, align 8
  %i.pg = icmp eq i64 %i.pd, 0
  br i1 %i.pg, label %bb.ej, label %_ZN4cvc58internal6theory18SubsolverSetupInfoD2Ev.exit212, !prof !254

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oz)
          to label %_ZN4cvc58internal6theory18SubsolverSetupInfoD2Ev.exit212 unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ph = landingpad { ptr, i32 }
          catch ptr null
  %i.pi = extractvalue { ptr, i32 } %i.ph, 0
  call void @__clang_call_terminate(ptr %i.pi) #21
  unreachable

_ZN4cvc58internal6theory18SubsolverSetupInfoD2Ev.exit212: ; preds = %bb.ej, %bb.ei, %_ZN4cvc58internal8TypeNodeD2Ev.exit.i227, %bb.dx, %bb.dw, %_ZN4cvc58internal8TypeNodeD2Ev.exit.i217, %bb.do, %bb.dn, %_ZN4cvc58internal8TypeNodeD2Ev.exit.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.pj = load i64, ptr %8, align 8
  store i64 %i.pj, ptr %0, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.pl, ptr %i.pk, align 8, !tbaa !347
  %i.pm = load ptr, ptr %i.ab, align 8, !tbaa !350 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.ad
  br i1 %i.pn, label %bb.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

bb.el:                                            ; preds = %_ZN4cvc58internal6theory18SubsolverSetupInfoD2Ev.exit212
  %i.po = load i64, ptr %i.ag, align 8, !tbaa !348 ; 3 uses
  %i.pp = icmp ult i64 %i.po, 16
  call void @llvm.assume(i1 %i.pp)
  %i.pq = add nuw nsw i64 %i.po, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pl, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.pq, i1 false)
  br label %_ZN4cvc58internal6ResultC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZN4cvc58internal6theory18SubsolverSetupInfoD2Ev.exit212
  store ptr %i.pm, ptr %i.pk, align 8, !tbaa !350
  %i.pr = load i64, ptr %i.ad, align 8, !tbaa !349
  store i64 %i.pr, ptr %i.pl, align 8, !tbaa !349
  %.pre354 = load i64, ptr %i.ag, align 8, !tbaa !348
  br label %_ZN4cvc58internal6ResultC2EOS1_.exit

_ZN4cvc58internal6ResultC2EOS1_.exit:             ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  %i.ps = phi i64 [ %i.po, %bb.el ], [ %.pre354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ]
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ps, ptr %i.pt, align 8, !tbaa !348
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !350
  store i64 0, ptr %i.ag, align 8, !tbaa !348
  store i8 0, ptr %i.ad, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.em:                                            ; preds = %.body, %bb.ay, %bb.ax
  %.pn66 = phi { ptr, i32 } [ %.pn55, %bb.ax ], [ %.pn62.pn.pn, %.body ], [ %i.fb, %bb.ay ]
  call void @_ZN4cvc58internal6theory18SubsolverSetupInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #19
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.au, %bb.ar
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %bb.em ], [ %.pn53, %bb.au ], [ %i.ew, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZN4cvc58internal6ResultC2EOS1_.exit
  %i.pu = load ptr, ptr %i.ab, align 8, !tbaa !350 ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.ad
  br i1 %i.pv, label %_ZN4cvc58internal6ResultD2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pw = load i64, ptr %i.ad, align 8, !tbaa !349
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #20
  br label %_ZN4cvc58internal6ResultD2Ev.exit233

_ZN4cvc58internal6ResultD2Ev.exit233:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.py = load ptr, ptr %6, align 8, !tbaa !252   ; 3 uses
  %i.pz = load i64, ptr %i.py, align 8            ; 3 uses
  %i.qa = and i64 %i.pz, 1152920405095219200
  %.not.i.i234 = icmp eq i64 %i.qa, 1152920405095219200
  br i1 %.not.i.i234, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236, label %bb.eo, !prof !254

bb.eo:                                            ; preds = %_ZN4cvc58internal6ResultD2Ev.exit233
  %i.qb = add i64 %i.pz, 1152920405095219200
  %i.qc = and i64 %i.qb, 1152920405095219200      ; 2 uses
  %i.qd = and i64 %i.pz, -1152920405095219201
  %i.qe = or disjoint i64 %i.qc, %i.qd
  store i64 %i.qe, ptr %i.py, align 8
  %i.qf = icmp eq i64 %i.qc, 0
  br i1 %i.qf, label %bb.ep, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236, !prof !254

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.py)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit233, %bb.eo, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.s, %bb.o, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.en
  %.pn69.pn = phi { ptr, i32 } [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn66.pn, %bb.en ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.bd, %bb.o ], [ %i.br, %bb.r ], [ %i.bs, %bb.s ] ; 2 uses
  %i.qi = load ptr, ptr %i.ab, align 8, !tbaa !350 ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.ad
  br i1 %i.qj, label %_ZN4cvc58internal6ResultD2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.qk = load i64, ptr %i.ad, align 8, !tbaa !349
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #20
  br label %_ZN4cvc58internal6ResultD2Ev.exit239

_ZN4cvc58internal6ResultD2Ev.exit239:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237, %bb.n
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %.pn69.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237 ], [ %.pn69.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.er

bb.er:                                            ; preds = %_ZN4cvc58internal6ResultD2Ev.exit239, %bb.m
  %.sink = phi ptr [ %6, %_ZN4cvc58internal6ResultD2Ev.exit239 ], [ %7, %bb.m ]
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %_ZN4cvc58internal6ResultD2Ev.exit239 ], [ %i.bb, %bb.m ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn69.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers11SynthVerify23preprocessQueryInternalENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::NodeTemplate") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(440) %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.418", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.418", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %8 = alloca %"class.std::unordered_set", align 8 ; 13 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.418", align 8 ; 2 uses
  %10 = alloca %"class.std::vector.282", align 8  ; 14 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %i.a = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203
  %i.d = load ptr, ptr %2, align 8, !tbaa !252    ; 5 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !252
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !253

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.e, -1152920405095219201
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.h, 1048574
  br i1 %i.o, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !254

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  invoke void @_ZNK4cvc58internal6theory11quantifiers11TermDbSygus11rewriteNodeENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr noundef nonnull align 8 %7)
          to label %bb.e unwind label %bb.x

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !252    ; 4 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !252
  %.not.i49 = icmp eq ptr %i.q, %i.r
  br i1 %.not.i49, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.f, !prof !254

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8              ; 3 uses
  %i.t = and i64 %i.s, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.t, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.g, !prof !254

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %i.s, 1152920405095219200
  %i.v = and i64 %i.u, 1152920405095219200        ; 2 uses
  %i.w = and i64 %i.s, -1152920405095219201
  %i.x = or disjoint i64 %i.v, %i.w
  store i64 %i.x, ptr %i.q, align 8
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %bb.h, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !254

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.y

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.h, %bb.g, %bb.f
  %i.z = load ptr, ptr %6, align 8, !tbaa !252    ; 5 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !252
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = lshr i64 %i.aa, 40
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 1048575                  ; 3 uses
  %i.ae = icmp samesign ult i32 %i.ad, 1048574
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !253

bb.i:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.af = add nuw nsw i32 %i.ad, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 40
  %i.ai = and i64 %i.aa, -1152920405095219201
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.z, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.j:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ak = icmp eq i32 %i.ad, 1048574
  br i1 %i.ak, label %bb.k, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !254

bb.k:                                             ; preds = %bb.j
  %i.al = or i64 %i.aa, 1152920405095219200
  store i64 %i.al, ptr %i.z, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.y

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.j, %bb.i, %bb.e, %bb.k
  %i.am = load ptr, ptr %6, align 8, !tbaa !252   ; 3 uses
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = and i64 %i.an, 1152920405095219200
  %.not.i.i51 = icmp eq i64 %i.ao, 1152920405095219200
  br i1 %.not.i.i51, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.l, !prof !254

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.ap = add i64 %i.an, 1152920405095219200
  %i.aq = and i64 %i.ap, 1152920405095219200      ; 2 uses
  %i.ar = and i64 %i.an, -1152920405095219201
  %i.as = or disjoint i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.am, align 8
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !254

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.l, %bb.m
  %i.aw = load ptr, ptr %7, align 8, !tbaa !252   ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i53 = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i53, label %bb.r, label %bb.o, !prof !254

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.aw, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.p, label %bb.r, !prof !254

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #21
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bg = call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.bg, label %bb.dg, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !203
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !365 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !258, !nonnull !204, !align !205
  %i.bm = call noundef ptr @_ZNK4cvc58internal3Env16getOracleCheckerEv(ptr noundef nonnull align 8 dereferenceable(696) %i.bl) ; 5 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal6theory11quantifiers15FunDefEvaluator14getDefinitionsEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bj) ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !257
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !257
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.dg, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = call noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers13OracleChecker10hasOraclesEv(ptr noundef nonnull align 8 dereferenceable(312) %i.bm)
  br i1 %i.bs, label %bb.v, label %bb.dg

bb.v:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.bt, ptr %8, align 8, !tbaa !275
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.bu, align 8, !tbaa !276
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bw, align 8, !tbaa !270
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %i.by = load ptr, ptr %2, align 8, !tbaa !252
  store ptr %i.by, ptr %9, align 8, !tbaa !278
  invoke void @_ZN4cvc58internal4expr10getSymbolsENS0_12NodeTemplateILb0EEERSt13unordered_setINS2_ILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE(ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ab

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.w
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !279 ; 2 uses
  %.not157161 = icmp eq ptr %i.ca, null
  br i1 %.not157161, label %._crit_edge, label %.lr.ph163

.lr.ph163:                                        ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %.not39.not = icmp eq ptr %i.bm, null
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN4cvc58internal11NodeManager5mkAndILb1EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %16, ptr noundef nonnull align 8 dereferenceable(3592) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.cj unwind label %bb.db

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.k, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.cb, %bb.x ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.dk

bb.aa:                                            ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.ab:                                            ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.ac:                                            ; preds = %.lr.ph163, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102
  %.sroa.0152.0162 = phi ptr [ %i.ca, %.lr.ph163 ], [ %i.il, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0152.0162, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !252 ; 5 uses
  store ptr %i.cg, ptr %12, align 8, !tbaa !252
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = lshr i64 %i.ch, 40
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 1048575                  ; 3 uses
  %i.cl = icmp samesign ult i32 %i.ck, 1048574
  br i1 %i.cl, label %bb.ad, label %bb.ae, !prof !253

bb.ad:                                            ; preds = %bb.ac
  %i.cm = add nuw nsw i32 %i.ck, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 40
  %i.cp = and i64 %i.ch, -1152920405095219201
  %i.cq = or i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.cg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit71

bb.ae:                                            ; preds = %bb.ac
  %i.cr = icmp eq i32 %i.ck, 1048574
  br i1 %i.cr, label %bb.af, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit71, !prof !254

bb.af:                                            ; preds = %bb.ae
  %i.cs = or i64 %i.ch, 1152920405095219200
  store i64 %i.cs, ptr %i.cg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit71 unwind label %bb.av

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit71: ; preds = %bb.ae, %bb.ad, %bb.af
  invoke void @_ZNK4cvc58internal6theory11quantifiers15FunDefEvaluator16getDefinitionForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %11, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, ptr noundef nonnull align 8 %12)
          to label %bb.ag unwind label %bb.aw

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit71
  %i.ct = load ptr, ptr %12, align 8, !tbaa !252  ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.cv = and i64 %i.cu, 1152920405095219200
  %.not.i.i72 = icmp eq i64 %i.cv, 1152920405095219200
  br i1 %.not.i.i72, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit74, label %bb.ah, !prof !254

bb.ah:                                            ; preds = %bb.ag
  %i.cw = add i64 %i.cu, 1152920405095219200
  %i.cx = and i64 %i.cw, 1152920405095219200      ; 2 uses
  %i.cy = and i64 %i.cu, -1152920405095219201
  %i.cz = or disjoint i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.ct, align 8
  %i.da = icmp eq i64 %i.cx, 0
  br i1 %i.da, label %bb.ai, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit74, !prof !254

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit74 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit74: ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.dd = load ptr, ptr %11, align 8, !tbaa !252
  %i.de = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.ak, label %bb.ao, !prof !280

bb.ak:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit74
  %i.dg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #19
  %.not.i.i75 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i75, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.am unwind label %bb.an     ; 3 uses

bb.am:                                            ; preds = %bb.al
  store i64 1152920405095219200, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  store ptr %i.dh, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !281
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #19
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #19
  br label %.body

bb.ao:                                            ; preds = %bb.am, %bb.ak, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit74
  %i.dk = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !281
  %i.dl = icmp eq ptr %i.dd, %i.dk
  br i1 %i.dl, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit80, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dm = load ptr, ptr %i.bz, align 8, !tbaa !283 ; 3 uses
  %i.dn = load ptr, ptr %17, align 8, !tbaa !284
  %.not.i76 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i76, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.do = load ptr, ptr %11, align 8, !tbaa !252  ; 5 uses
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !252
  %i.dp = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dq = lshr i64 %i.dp, 40
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 1048575                  ; 3 uses
  %i.dt = icmp samesign ult i32 %i.ds, 1048574
  br i1 %i.dt, label %bb.ar, label %bb.as, !prof !253

bb.ar:                                            ; preds = %bb.aq
  %i.du = add nuw nsw i32 %i.ds, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 40
  %i.dx = and i64 %i.dp, -1152920405095219201
  %i.dy = or i64 %i.dw, %i.dx
  store i64 %i.dy, ptr %i.do, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i77

bb.as:                                            ; preds = %bb.aq
  %i.dz = icmp eq i32 %i.ds, 1048574
  br i1 %i.dz, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i77, !prof !254

bb.at:                                            ; preds = %bb.as
  %i.ea = or i64 %i.dp, 1152920405095219200
  store i64 %i.ea, ptr %i.do, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i77 unwind label %bb.bo

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i77: ; preds = %bb.at, %bb.as, %bb.ar
  %i.eb = load ptr, ptr %i.bz, align 8, !tbaa !283
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ec, ptr %i.bz, align 8, !tbaa !283
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit80

bb.au:                                            ; preds = %bb.ap
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit80 unwind label %bb.bo

bb.av:                                            ; preds = %bb.af
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.aw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit71
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  br label %bb.ci

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit80: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i77, %bb.au, %bb.ao
  br i1 %.not39.not, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.thread, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit80
  %i.ef = load ptr, ptr %i.cf, align 8, !tbaa !252 ; 5 uses
  store ptr %i.ef, ptr %13, align 8, !tbaa !252
  %i.eg = load i64, ptr %i.ef, align 8            ; 3 uses
  %i.eh = lshr i64 %i.eg, 40
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = and i32 %i.ei, 1048575                  ; 3 uses
  %i.ek = icmp samesign ult i32 %i.ej, 1048574
  br i1 %i.ek, label %bb.ay, label %bb.az, !prof !253

bb.ay:                                            ; preds = %bb.ax
  %i.el = add nuw nsw i32 %i.ej, 1
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl nuw nsw i64 %i.em, 40
  %i.eo = and i64 %i.eg, -1152920405095219201
  %i.ep = or i64 %i.en, %i.eo
  store i64 %i.ep, ptr %i.ef, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit82

bb.az:                                            ; preds = %bb.ax
  %i.eq = icmp eq i32 %i.ej, 1048574
  br i1 %i.eq, label %bb.ba, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit82, !prof !254

bb.ba:                                            ; preds = %bb.az
  %i.er = or i64 %i.eg, 1152920405095219200
  store i64 %i.er, ptr %i.ef, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit82 unwind label %bb.bo

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit82: ; preds = %bb.az, %bb.ay, %bb.ba
  %i.es = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers13OracleChecker14hasOracleCallsENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(312) %i.bm, ptr noundef nonnull align 8 %13)
          to label %bb.bb unwind label %bb.bn

bb.bb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit82
  %i.et = load ptr, ptr %13, align 8, !tbaa !252  ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8            ; 3 uses
  %i.ev = and i64 %i.eu, 1152920405095219200
  %.not.i.i83 = icmp eq i64 %i.ev, 1152920405095219200
  br i1 %.not.i.i83, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85, label %bb.bc, !prof !254

bb.bc:                                            ; preds = %bb.bb
  %i.ew = add i64 %i.eu, 1152920405095219200
  %i.ex = and i64 %i.ew, 1152920405095219200      ; 2 uses
  %i.ey = and i64 %i.eu, -1152920405095219201
  %i.ez = or disjoint i64 %i.ex, %i.ey
  store i64 %i.ez, ptr %i.et, align 8
  %i.fa = icmp eq i64 %i.ex, 0
  br i1 %i.fa, label %bb.bd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85, !prof !254

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85: ; preds = %bb.bd, %bb.bc, %bb.bb
  br i1 %i.es, label %bb.bf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.thread

bb.bf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85
  %i.fd = load ptr, ptr %i.cf, align 8, !tbaa !252 ; 5 uses
  store ptr %i.fd, ptr %14, align 8, !tbaa !252
  %i.fe = load i64, ptr %i.fd, align 8            ; 3 uses
  %i.ff = lshr i64 %i.fe, 40
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = and i32 %i.fg, 1048575                  ; 3 uses
  %i.fi = icmp samesign ult i32 %i.fh, 1048574
  br i1 %i.fi, label %bb.bg, label %bb.bh, !prof !253

bb.bg:                                            ; preds = %bb.bf
  %i.fj = add nuw nsw i32 %i.fh, 1
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 %i.fk, 40
  %i.fm = and i64 %i.fe, -1152920405095219201
  %i.fn = or i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.fd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit87

bb.bh:                                            ; preds = %bb.bf
  %i.fo = icmp eq i32 %i.fh, 1048574
  br i1 %i.fo, label %bb.bi, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit87, !prof !254

bb.bi:                                            ; preds = %bb.bh
  %i.fp = or i64 %i.fe, 1152920405095219200
  store i64 %i.fp, ptr %i.fd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit87 unwind label %bb.bo

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit87: ; preds = %bb.bh, %bb.bg, %bb.bi
  %i.fq = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4cvc58internal6theory11quantifiers13OracleChecker14getOracleCallsENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(312) %i.bm, ptr noundef nonnull align 8 %14)
          to label %bb.bj unwind label %bb.bp     ; 2 uses

bb.bj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit87
  %i.fr = load ptr, ptr %14, align 8, !tbaa !252  ; 3 uses
  %i.fs = load i64, ptr %i.fr, align 8            ; 3 uses
  %i.ft = and i64 %i.fs, 1152920405095219200
  %.not.i.i88 = icmp eq i64 %i.ft, 1152920405095219200
  br i1 %.not.i.i88, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit90, label %bb.bk, !prof !254

bb.bk:                                            ; preds = %bb.bj
  %i.fu = add i64 %i.fs, 1152920405095219200
  %i.fv = and i64 %i.fu, 1152920405095219200      ; 2 uses
  %i.fw = and i64 %i.fs, -1152920405095219201
  %i.fx = or disjoint i64 %i.fv, %i.fw
  store i64 %i.fx, ptr %i.fr, align 8
  %i.fy = icmp eq i64 %i.fv, 0
  br i1 %i.fy, label %bb.bl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit90, !prof !254

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit90 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit90: ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !370 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %.not158159 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not158159, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.thread, label %.lr.ph

bb.bn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit82
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  br label %.body

bb.bo:                                            ; preds = %bb.bi, %bb.ba, %bb.au, %bb.at
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit87
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #19
  br label %.body

.lr.ph:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit90, %bb.ce
  %.sroa.0148.0160 = phi ptr [ %i.ia, %bb.ce ], [ %i.gc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit90 ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0148.0160, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0148.0160, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !283
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !285 ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp eq i64 %i.gn, 8
  br i1 %i.go, label %bb.bq, label %bb.ce

bb.bq:                                            ; preds = %.lr.ph
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0148.0160, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !252, !noalias !371 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gk, align 8, !tbaa !252, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !372
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !288, !noalias !372
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef %i.gt, i32 noundef 5)
          to label %.noexc91 unwind label %bb.cc

.noexc91:                                         ; preds = %bb.bq
  store ptr %i.gq, ptr %4, align 8, !tbaa !278, !noalias !372
  %i.gu = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 8 %4)
          to label %bb.br unwind label %.body.i, !noalias !372

bb.br:                                            ; preds = %.noexc91
  store ptr %i.gs, ptr %5, align 8, !tbaa !278, !noalias !372
  %i.gv = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.gu, ptr noundef nonnull align 8 %5)
          to label %bb.bs unwind label %.body.i, !noalias !372 ; 0 uses

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %15, ptr noundef nonnull align 8 dereferenceable(124) %3)
          to label %bb.bt unwind label %.body.i

.body.i:                                          ; preds = %bb.bs, %bb.br, %.noexc91
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !372
  br label %.body92

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !371
  %i.gx = load ptr, ptr %i.bz, align 8, !tbaa !283 ; 3 uses
  %i.gy = load ptr, ptr %17, align 8, !tbaa !284
  %.not.i.i94 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not.i.i94, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gz = load ptr, ptr %15, align 8, !tbaa !252  ; 5 uses
  store ptr %i.gz, ptr %i.gx, align 8, !tbaa !252
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = lshr i64 %i.ha, 40
  %i.hc = trunc nuw nsw i64 %i.hb to i32
  %i.hd = and i32 %i.hc, 1048575                  ; 3 uses
  %i.he = icmp samesign ult i32 %i.hd, 1048574
  br i1 %i.he, label %bb.bv, label %bb.bw, !prof !253

bb.bv:                                            ; preds = %bb.bu
  %i.hf = add nuw nsw i32 %i.hd, 1
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl nuw nsw i64 %i.hg, 40
  %i.hi = and i64 %i.ha, -1152920405095219201
  %i.hj = or i64 %i.hh, %i.hi
  store i64 %i.hj, ptr %i.gz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.hk = icmp eq i32 %i.hd, 1048574
  br i1 %i.hk, label %bb.bx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !254

bb.bx:                                            ; preds = %bb.bw
  %i.hl = or i64 %i.ha, 1152920405095219200
  store i64 %i.hl, ptr %i.gz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.cd

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.hm = load ptr, ptr %i.bz, align 8, !tbaa !283
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.hn, ptr %i.bz, align 8, !tbaa !283
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.by:                                            ; preds = %bb.bt
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.cd

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.by
  %i.ho = load ptr, ptr %15, align 8, !tbaa !252  ; 3 uses
  %i.hp = load i64, ptr %i.ho, align 8            ; 3 uses
  %i.hq = and i64 %i.hp, 1152920405095219200
  %.not.i.i97 = icmp eq i64 %i.hq, 1152920405095219200
  br i1 %.not.i.i97, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99, label %bb.bz, !prof !254

bb.bz:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.hr = add i64 %i.hp, 1152920405095219200
  %i.hs = and i64 %i.hr, 1152920405095219200      ; 2 uses
  %i.ht = and i64 %i.hp, -1152920405095219201
  %i.hu = or disjoint i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.ho, align 8
  %i.hv = icmp eq i64 %i.hs, 0
  br i1 %i.hv, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99, !prof !254

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ce

bb.cc:                                            ; preds = %bb.bq
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body92

bb.cd:                                            ; preds = %bb.by, %bb.bx
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  br label %.body92

.body92:                                          ; preds = %bb.cc, %.body.i, %bb.cd
  %.pn40 = phi { ptr, i32 } [ %i.hz, %bb.cd ], [ %i.hy, %bb.cc ], [ %i.gw, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.body

bb.ce:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99, %.lr.ph
  %i.ia = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0148.0160) #23 ; 2 uses
  %.not158 = icmp eq ptr %i.ia, %i.gd
  br i1 %.not158, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.thread, label %.lr.ph

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.thread: ; preds = %bb.ce, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit90, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit80, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85
  %i.ib = load ptr, ptr %11, align 8, !tbaa !252  ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8            ; 3 uses
  %i.id = and i64 %i.ic, 1152920405095219200
  %.not.i.i100 = icmp eq i64 %i.id, 1152920405095219200
  br i1 %.not.i.i100, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102, label %bb.cf, !prof !254

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.thread
  %i.ie = add i64 %i.ic, 1152920405095219200
  %i.if = and i64 %i.ie, 1152920405095219200      ; 2 uses
  %i.ig = and i64 %i.ic, -1152920405095219201
  %i.ih = or disjoint i64 %i.if, %i.ig
  store i64 %i.ih, ptr %i.ib, align 8
  %i.ii = icmp eq i64 %i.if, 0
  br i1 %i.ii, label %bb.cg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102, !prof !254

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.thread, %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.il = load ptr, ptr %.sroa.0152.0162, align 8, !tbaa !272 ; 2 uses
  %.not157 = icmp eq ptr %i.il, null
  br i1 %.not157, label %._crit_edge, label %bb.ac

.body:                                            ; preds = %bb.bo, %bb.an, %bb.bp, %.body92, %bb.bn
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.gg, %bb.bp ], [ %i.ge, %bb.bn ], [ %.pn40, %.body92 ], [ %i.gf, %bb.bo ], [ %i.dj, %bb.an ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  br label %bb.ci

bb.ci:                                            ; preds = %.body, %bb.aw, %bb.av
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %.body ], [ %i.ee, %bb.aw ], [ %i.ed, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.de

bb.cj:                                            ; preds = %._crit_edge
  %i.im = load ptr, ptr %2, align 8, !tbaa !252   ; 4 uses
  %i.in = load ptr, ptr %16, align 8, !tbaa !252
  %.not.i103 = icmp eq ptr %i.im, %i.in
  br i1 %.not.i103, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit108, label %bb.ck, !prof !254

bb.ck:                                            ; preds = %bb.cj
  %i.io = load i64, ptr %i.im, align 8            ; 3 uses
  %i.ip = and i64 %i.io, 1152920405095219200
  %.not.i.i104 = icmp eq i64 %i.ip, 1152920405095219200
  br i1 %.not.i.i104, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i105, label %bb.cl, !prof !254

bb.cl:                                            ; preds = %bb.ck
  %i.iq = add i64 %i.io, 1152920405095219200
  %i.ir = and i64 %i.iq, 1152920405095219200      ; 2 uses
  %i.is = and i64 %i.io, -1152920405095219201
  %i.it = or disjoint i64 %i.ir, %i.is
  store i64 %i.it, ptr %i.im, align 8
  %i.iu = icmp eq i64 %i.ir, 0
  br i1 %i.iu, label %bb.cm, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i105, !prof !254

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i105 unwind label %bb.dc

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i105: ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.iv = load ptr, ptr %16, align 8, !tbaa !252  ; 5 uses
  store ptr %i.iv, ptr %2, align 8, !tbaa !252
  %i.iw = load i64, ptr %i.iv, align 8            ; 3 uses
  %i.ix = lshr i64 %i.iw, 40
  %i.iy = trunc nuw nsw i64 %i.ix to i32
  %i.iz = and i32 %i.iy, 1048575                  ; 3 uses
  %i.ja = icmp samesign ult i32 %i.iz, 1048574
  br i1 %i.ja, label %bb.cn, label %bb.co, !prof !253

bb.cn:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i105
  %i.jb = add nuw nsw i32 %i.iz, 1
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 40
  %i.je = and i64 %i.iw, -1152920405095219201
  %i.jf = or i64 %i.jd, %i.je
  store i64 %i.jf, ptr %i.iv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit108

bb.co:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i105
  %i.jg = icmp eq i32 %i.iz, 1048574
  br i1 %i.jg, label %bb.cp, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit108, !prof !254

bb.cp:                                            ; preds = %bb.co
  %i.jh = or i64 %i.iw, 1152920405095219200
  store i64 %i.jh, ptr %i.iv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit108 unwind label %bb.dc

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit108: ; preds = %bb.co, %bb.cn, %bb.cj, %bb.cp
  %i.ji = load ptr, ptr %16, align 8, !tbaa !252  ; 3 uses
  %i.jj = load i64, ptr %i.ji, align 8            ; 3 uses
  %i.jk = and i64 %i.jj, 1152920405095219200
  %.not.i.i109 = icmp eq i64 %i.jk, 1152920405095219200
  br i1 %.not.i.i109, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit126, label %bb.cq, !prof !254

bb.cq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit108
  %i.jl = add i64 %i.jj, 1152920405095219200
  %i.jm = and i64 %i.jl, 1152920405095219200      ; 2 uses
  %i.jn = and i64 %i.jj, -1152920405095219201
  %i.jo = or disjoint i64 %i.jm, %i.jn
  store i64 %i.jo, ptr %i.ji, align 8
  %i.jp = icmp eq i64 %i.jm, 0
  br i1 %i.jp, label %bb.cr, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit126, !prof !254

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ji)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit126 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #21
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit126: ; preds = %bb.cr, %bb.cq, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit108
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.js = load ptr, ptr %10, align 8, !tbaa !285  ; 3 uses
  %i.jt = load ptr, ptr %i.bz, align 8, !tbaa !283 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.js, %i.jt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit126, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ke, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.js, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit126 ] ; 2 uses
  %i.ju = load ptr, ptr %.05.i.i.i, align 8, !tbaa !252 ; 3 uses
  %i.jv = load i64, ptr %i.ju, align 8            ; 3 uses
  %i.jw = and i64 %i.jv, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jw, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.ct, !prof !254

bb.ct:                                            ; preds = %.lr.ph.i.i.i
  %i.jx = add i64 %i.jv, 1152920405095219200
  %i.jy = and i64 %i.jx, 1152920405095219200      ; 2 uses
  %i.jz = and i64 %i.jv, -1152920405095219201
  %i.ka = or disjoint i64 %i.jy, %i.jz
  store i64 %i.ka, ptr %i.ju, align 8
  %i.kb = icmp eq i64 %i.jy, 0
  br i1 %i.kb, label %bb.cu, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !254

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ju)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.cu, %bb.ct, %.lr.ph.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ke, %i.jt
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !285
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit126
  %i.kf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.js, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit126 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kg = load ptr, ptr %18, align 8, !tbaa !284
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kj) #20
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.kk = load ptr, ptr %i.bv, align 8, !tbaa !279 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i144

.lr.ph.i.i.i144:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.kl, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i ], [ %i.kk, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ] ; 3 uses
  %i.kl = load ptr, ptr %.06.i.i.i, align 8, !tbaa !272 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !252 ; 3 uses
  %i.ko = load i64, ptr %i.kn, align 8            ; 3 uses
  %i.kp = and i64 %i.ko, 1152920405095219200
  %.not.i.i.i.i.i.i145 = icmp eq i64 %i.kp, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i145, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, label %bb.cx, !prof !254

bb.cx:                                            ; preds = %.lr.ph.i.i.i144
  %i.kq = add i64 %i.ko, 1152920405095219200
  %i.kr = and i64 %i.kq, 1152920405095219200      ; 2 uses
  %i.ks = and i64 %i.ko, -1152920405095219201
  %i.kt = or disjoint i64 %i.kr, %i.ks
  store i64 %i.kt, ptr %i.kn, align 8
  %i.ku = icmp eq i64 %i.kr, 0
  br i1 %i.ku, label %bb.cy, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, !prof !254

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kn)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i: ; preds = %bb.cy, %bb.cx, %.lr.ph.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #20
  %.not.i.i.i146 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i146, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i144, !llvm.loop !2

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.kx = load ptr, ptr %8, align 8, !tbaa !275
  %i.ky = load i64, ptr %i.bu, align 8, !tbaa !276
  %i.kz = shl i64 %i.ky, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kx, i8 0, i64 %i.kz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.la = load ptr, ptr %8, align 8, !tbaa !275   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.bt
  br i1 %i.lb, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.lc = load i64, ptr %i.bu, align 8, !tbaa !276
  %i.ld = shl i64 %i.lc, 3
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #20
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.dg

bb.db:                                            ; preds = %._crit_edge
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cp, %bb.cm
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #19
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn37 = phi { ptr, i32 } [ %i.lf, %bb.dc ], [ %i.le, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.ci, %bb.ab
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.ci ], [ %i.ce, %bb.ab ], [ %.pn37, %bb.dd ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.aa
  %.pn40.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn, %bb.de ], [ %i.cd, %bb.aa ]
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.dk

bb.dg:                                            ; preds = %bb.t, %bb.u, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, %bb.r
  %i.lg = load ptr, ptr %2, align 8, !tbaa !252   ; 5 uses
  store ptr %i.lg, ptr %0, align 8, !tbaa !252
  %i.lh = load i64, ptr %i.lg, align 8            ; 3 uses
  %i.li = lshr i64 %i.lh, 40
  %i.lj = trunc nuw nsw i64 %i.li to i32
  %i.lk = and i32 %i.lj, 1048575                  ; 3 uses
  %i.ll = icmp samesign ult i32 %i.lk, 1048574
  br i1 %i.ll, label %bb.dh, label %bb.di, !prof !253

bb.dh:                                            ; preds = %bb.dg
  %i.lm = add nuw nsw i32 %i.lk, 1
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = shl nuw nsw i64 %i.ln, 40
  %i.lp = and i64 %i.lh, -1152920405095219201
  %i.lq = or i64 %i.lo, %i.lp
  store i64 %i.lq, ptr %i.lg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit127

bb.di:                                            ; preds = %bb.dg
  %i.lr = icmp eq i32 %i.lk, 1048574
  br i1 %i.lr, label %bb.dj, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit127, !prof !254

bb.dj:                                            ; preds = %bb.di
  %i.ls = or i64 %i.lh, 1152920405095219200
  store i64 %i.ls, ptr %i.lg, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lg)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit127

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit127: ; preds = %bb.dh, %bb.di, %bb.dj
  ret void

bb.dk:                                            ; preds = %bb.df, %bb.z
  %.pn40.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn, %bb.df ], [ %.pn, %bb.z ]
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !252    ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !254

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !254

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable
}

declare void @_ZN4cvc58internal6ResultC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6ResultC1ENS1_6StatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef align 8) unnamed_addr #1

declare void @_ZNK4cvc58internal3Env13getSepLocTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(696)) local_unnamed_addr #1

declare void @_ZNK4cvc58internal3Env14getSepDataTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(696)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory18SubsolverSetupInfoC1ERKNS0_7OptionsERKNS0_9LogicInfoENS0_8TypeNodeES9_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef align 8, ptr noundef align 8) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !254

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !254

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
end_hunk_0
