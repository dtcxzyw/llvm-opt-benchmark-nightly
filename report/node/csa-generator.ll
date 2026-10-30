Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/csa-generator?download=true
inline.NumInlined: 2685
inline.NumDeleted: 621
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal6torque12CSAGenerator15EmitInstructionERKNS1_28NamespaceConstantInstructionEPNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:bb.a
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = icmp eq i64 %i.er, 32
  br i1 %i.es, label %bb.ac, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58

bb.ac:                                            ; preds = %bb.ab
  %i.et = load ptr, ptr %i.s, align 8
  %i.eu = load ptr, ptr %i.eo, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.eu, i64 noundef %i.ew)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %.invoke, %bb.ab
  %i.ey = load ptr, ptr %i.s, align 8
  %i.ez = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 184
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 192
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef %i.fb, i64 noundef %i.fd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.25, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64
  %i.fg = invoke { ptr, i8 } @_ZNK2v88internal6torque4Type15StructSupertypeEv(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.invoke143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke143:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.fh = extractvalue { ptr, i8 } %i.fg, 1
  %i.fi = trunc nuw i8 %i.fh to i1                ; 2 uses
  %i.fj = load ptr, ptr %i.s, align 8
  %spec.select = select i1 %i.fi, ptr @.str.26, ptr @.str.12
  %spec.select144 = select i1 %i.fi, i64 12, i64 2
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull %spec.select, i64 noundef %spec.select144)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %.invoke143, %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %._crit_edge, %.noexc.i, %.noexc6.i, %bb.y, %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %.invoke143
  %i.fl = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #24
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fr = load ptr, ptr %5, align 8               ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fr, %i.ft
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.fr, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit ] ; 3 uses
  %i.fu = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fx = load i64, ptr %i.fv, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.fz, %i.ft
  br i1 %.not.i.i.i72, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit
  %i.ga = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fr, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

.body:                                            ; preds = %bb.v, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn21.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp151, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.dd, %bb.v ] ; 2 uses
  %i.gg = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit74, label %bb.af

bb.af:                                            ; preds = %.body
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #24
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit74

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit74: ; preds = %bb.af, %.body, %bb.b
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.b ], [ %.pn21.pn.pn, %.body ], [ %.pn21.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn21.pn.pn.pn
}

declare void @_ZN2v88internal6torque9LowerTypeEPKNS1_4TypeE(ptr dead_on_unwind writable sret(%"class.std::vector.38") align 8, ptr noundef) local_unnamed_addr #3

declare void @_ZNK2v88internal6torque28NamespaceConstantInstruction18GetValueDefinitionEm(ptr dead_on_unwind writable sret(%"class.v8::internal::torque::DefinitionLocation") align 8, ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #3

declare { ptr, i8 } @_ZNK2v88internal6torque4Type15StructSupertypeEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque12CSAGenerator22ProcessArgumentsCommonERKSt6vectorIPKNS1_4TypeESaIS6_EES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEPNS1_5StackISG_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef align 8 captures(none) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %6 = alloca %"class.v8::internal::torque::VisitResult", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noalias !85 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !noalias !86
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.u = getelementptr i8, ptr %i.s, i64 -24
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.9.48..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.10.48..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %.pre79 = load ptr, ptr %0, align 8             ; 3 uses
  %.pre80 = load ptr, ptr %i.o, align 8           ; 2 uses
  %i.af = icmp ne ptr %.pre79, %.pre80
  %.sroa.0.010.i.i = getelementptr inbounds i8, ptr %.pre80, i64 -32 ; 2 uses
  %.not11.i.i = icmp ult ptr %.pre79, %.sroa.0.010.i.i
  %or.cond.i.i = select i1 %i.af, i1 %.not11.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i, %._crit_edge ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.pre79, %._crit_edge ] ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.012.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.013.i.i) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 32 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -32 ; 2 uses
  %.not.i.i = icmp ult ptr %i.ag, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, !llvm.loop !79

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %.sroa.057.075 = phi ptr [ %i.b, %.lr.ph ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit ]
  %i.ah = getelementptr inbounds i8, ptr %.sroa.057.075, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ai)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.am, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -32 ; 3 uses
  %i.ap = load ptr, ptr %i.o, align 8             ; 6 uses
  %i.aq = load ptr, ptr %i.p, align 8
  %.not.i.i30 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i30, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 -24
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.as, ptr %i.ap, align 8
  %i.az = load i64, ptr %i.at, align 8
  store i64 %i.az, ptr %i.ar, align 8
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.ba = getelementptr inbounds i8, ptr %i.an, i64 -24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.bb, ptr %i.bc, align 8
  store ptr %i.at, ptr %i.ao, align 8
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.at, align 8
  %i.bd = load ptr, ptr %i.o, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.be, ptr %i.o, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.h

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, %bb.g
  %i.bf = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -32 ; 2 uses
  store ptr %i.bg, ptr %i.ae, align 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 -16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.bn = invoke noundef i64 @_ZN2v88internal6torque16LoweredSlotCountEPKNS1_4TypeE(ptr noundef nonnull %i.ai)
          to label %bb.k unwind label %bb.u       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.e, align 8
  %i.bp = load ptr, ptr %4, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 5                 ; 2 uses
  %i.bu = sub i64 %i.bt, %i.bn
  store ptr %i.ai, ptr %6, align 8
  store i8 0, ptr %i.f, align 8
  store i64 %i.bu, ptr %i.g, align 8
  store i64 %i.bt, ptr %.sroa.9.48..sroa_idx, align 8
  store i8 1, ptr %.sroa.10.48..sroa_idx, align 8
  invoke void @_ZN2v88internal6torque12CSAGenerator12EmitCSAValueENS1_11VisitResultERKNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSo(ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN2v88internal6torque11VisitResultD2Ev.exit unwind label %bb.u

_ZN2v88internal6torque11VisitResultD2Ev.exit:     ; preds = %bb.k
  store i8 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  store ptr %i.i, ptr %7, align 8, !alias.scope !89
  store i64 0, ptr %i.j, align 8, !alias.scope !89
  store i8 0, ptr %i.i, align 8, !alias.scope !89
  %i.bv = load ptr, ptr %i.k, align 8, !noalias !89 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bv, null
  %i.bw = load ptr, ptr %i.l, align 8, !noalias !89 ; 2 uses
  %i.bx = icmp ugt ptr %i.bv, %i.bw
  %.08.i.i.i = select i1 %i.bx, ptr %i.bv, ptr %i.bw ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i35 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i35, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit
  %i.by = load ptr, ptr %i.m, align 8, !noalias !89 ; 2 uses
  %i.bz = ptrtoint ptr %.08.i.i.i to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.by, i64 noundef %i.cb)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %7, align 8, !alias.scope !89 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.i
  br i1 %i.cf, label %.body, label %.body.sink.split

bb.n:                                             ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.l
  %i.cg = load ptr, ptr %i.o, align 8             ; 6 uses
  %i.ch = load ptr, ptr %i.p, align 8
  %.not.i.i38 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.i38, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8
  %i.cj = load ptr, ptr %7, align 8               ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.i
  br i1 %i.ck, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

bb.p:                                             ; preds = %bb.o
  %i.cl = load i64, ptr %i.j, align 8             ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.o
  store ptr %i.cj, ptr %i.cg, align 8
  %i.co = load i64, ptr %i.i, align 8
  store i64 %i.co, ptr %i.ci, align 8
  %.pre = load i64, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  %i.cp = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39 ], [ %i.cl, %bb.p ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.cp, ptr %i.cq, align 8
  store ptr %i.i, ptr %7, align 8
  store i64 0, ptr %i.j, align 8
  %i.cr = load ptr, ptr %i.o, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr %i.cs, ptr %i.o, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42 unwind label %bb.v

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42: ; preds = %bb.q
  %.pre78 = load ptr, ptr %7, align 8             ; 2 uses
  %i.ct = icmp eq ptr %.pre78, %i.i
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42
  %i.cu = load i64, ptr %i.i, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.pre78, i64 noundef %i.cv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit42.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  invoke void @_ZN2v88internal6torque5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7PopManyEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bn)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = load ptr, ptr %8, align 8               ; 3 uses
  %i.cx = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cw, %i.cx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cw, %bb.r ] ; 3 uses
  %i.cy = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43: ; preds = %.lr.ph.i.i.i
  %i.db = load i64, ptr %i.cz, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dd, %i.cx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.r
  %i.de = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cw, %bb.r ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i, label %_ZN2v88internal6torque11VisitResultD2Ev.exit47, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.df = load ptr, ptr %i.r, align 8
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit47

_ZN2v88internal6torque11VisitResultD2Ev.exit47:   ; preds = %bb.s, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  store ptr %i.s, ptr %5, align 8
  %i.dj = load i64, ptr %i.u, align 8
  %i.dk = getelementptr inbounds i8, ptr %5, i64 %i.dj
  store ptr %i.t, ptr %i.dk, align 8
  store ptr %i.v, ptr %i.h, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.dl = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.x
  br i1 %i.dm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit47
  %i.dn = load i64, ptr %i.x, align 8
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #22
  store ptr %i.z, ptr %5, align 8
  %i.dp = load i64, ptr %i.ab, align 8
  %i.dq = getelementptr inbounds i8, ptr %5, i64 %i.dp
  store ptr %i.aa, ptr %i.dq, align 8
  store i64 0, ptr %i.ac, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ad) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

bb.t:                                             ; preds = %bb.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %bb.k
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit56

bb.v:                                             ; preds = %bb.q
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %7, align 8               ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.i
  br i1 %i.dv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.v, %bb.m
  %.sink = phi ptr [ %i.ce, %bb.m ], [ %i.du, %bb.v ]
  %.pn.ph = phi { ptr, i32 } [ %i.cd, %bb.m ], [ %i.dt, %bb.v ]
  %i.dw = load i64, ptr %i.i, align 8
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dx) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.v, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.m ], [ %i.dt, %bb.v ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit56

_ZN2v88internal6torque11VisitResultD2Ev.exit56:   ; preds = %.body, %bb.u
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.u ], [ %.pn, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #22
  br label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit56, %bb.t
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %_ZN2v88internal6torque11VisitResultD2Ev.exit56 ], [ %i.dr, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.x

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dy = load ptr, ptr %2, align 8, !noalias !86
  %i.dz = icmp eq ptr %i.ah, %i.dy
  br i1 %i.dz, label %._crit_edge, label %bb.b, !llvm.loop !84

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %.lr.ph.i.i, %bb.a, %._crit_edge
  ret void

bb.x:                                             ; preds = %bb.h, %bb.w
  %.pn27.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn, %bb.w ], [ %i.bm, %bb.h ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %.pn27.pn
}

declare noundef i64 @_ZN2v88internal6torque16LoweredSlotCountEPKNS1_4TypeE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque12CSAGenerator12EmitCSAValueENS1_11VisitResultERKNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSo(ptr nofree noundef readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.v8::internal::torque::VisitResult", align 8 ; 7 uses
  %5 = alloca %"class.v8::internal::torque::VisitResult", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.e, i64 noundef %i.g) ; 0 uses
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8
  %i.j = tail call { ptr, i8 } @_ZNK2v88internal6torque4Type15StructSupertypeEv(ptr noundef nonnull align 8 dereferenceable(128) %i.i) ; 2 uses
  %i.k = extractvalue { ptr, i8 } %i.j, 0         ; 6 uses
  %i.l = extractvalue { ptr, i8 } %i.j, 1
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.ab

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK2v88internal6torque4Type20GetGeneratedTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(128) %i.k)
  %i.n = load ptr, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.159, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.s = load ptr, ptr %3, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.y = load i8, ptr %i.x, align 8, !range !15, !noundef !12
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZNK2v88internal6torque13AggregateType6fieldsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(224) %i.k), !inline_history !90
  br label %_ZNK2v88internal6torque13AggregateType6fieldsEv.exit

_ZNK2v88internal6torque13AggregateType6fieldsEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal6torque13AggregateType6fieldsEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %.pre62 = load i8, ptr %i.aj, align 8, !range !15
  %.pre = load ptr, ptr %0, align 8
  store ptr %.pre, ptr %5, align 8
  store i8 0, ptr %i.ak, align 8
  %i.au = trunc nuw i8 %.pre62 to i1
  br i1 %i.au, label %bb.g, label %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.peel

bb.g:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.ai, align 8
  %i.av = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.aw = load i64, ptr %i.an, align 8            ; 8 uses
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %bb.h, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.peel

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp slt i64 %i.aw, 0
  br i1 %i.ay, label %.noexc.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = add nuw i64 %i.aw, 1                    ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %.noexc6.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.peel, !prof !16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.i
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #25 ; 2 uses
  store ptr %i.bb, ptr %i.ai, align 8
  store i64 %i.aw, ptr %i.am, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.peel

._crit_edge.i.i.i.i.i.i.i.i.i.i.peel:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.peel, %bb.g
  %i.bc = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.peel ], [ %i.am, %bb.g ] ; 3 uses
  switch i64 %i.aw, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.peel
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.peel
  %i.bd = load i8, ptr %i.av, align 1
  store i8 %i.bd, ptr %i.bc, align 1
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.peel

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.av, i64 %i.aw, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.peel

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.peel: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i.peel
  store i64 %i.aw, ptr %i.ao, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aw
  store i8 0, ptr %i.be, align 1
  store i8 1, ptr %i.ak, align 8
  br label %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.peel

_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.peel: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.peel, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  invoke void @_ZN2v88internal6torque18ProjectStructFieldENS1_11VisitResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::torque::VisitResult") align 8 %4, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.peel
  invoke void @_ZN2v88internal6torque12CSAGenerator12EmitCSAValueENS1_11VisitResultERKNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSo(ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bg = load i8, ptr %i.ar, align 8, !range !15, !noundef !12
  %i.bh = trunc nuw i8 %i.bg to i1
  store i8 0, ptr %i.ar, align 8
  br i1 %i.bh, label %bb.n, label %_ZN2v88internal6torque11VisitResultD2Ev.exit.peel

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.at
  br i1 %i.bj, label %_ZN2v88internal6torque11VisitResultD2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.peel: ; preds = %bb.n
  %i.bk = load i64, ptr %i.at, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit.peel

_ZN2v88internal6torque11VisitResultD2Ev.exit.peel: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.peel, %bb.m
  %i.bm = load i8, ptr %i.ak, align 8, !range !15, !noundef !12
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 0, ptr %i.ak, align 8
  br i1 %i.bn, label %bb.o, label %_ZN2v88internal6torque11VisitResultD2Ev.exit23.peel

bb.o:                                             ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit.peel
  %i.bo = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.am
  br i1 %i.bp, label %_ZN2v88internal6torque11VisitResultD2Ev.exit23.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21.peel: ; preds = %bb.o
  %i.bq = load i64, ptr %i.am, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit23.peel

_ZN2v88internal6torque11VisitResultD2Ev.exit23.peel: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21.peel, %_ZN2v88internal6torque11VisitResultD2Ev.exit.peel
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ag
  br i1 %i.bt, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit23, %_ZN2v88internal6torque11VisitResultD2Ev.exit23.peel, %_ZNK2v88internal6torque13AggregateType6fieldsEv.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.160, i64 noundef 1) ; 0 uses
  br label %bb.af

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %3, align 8               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.p
  %i.bz = load i64, ptr %i.bx, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit29

.peel.next:                                       ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit23.peel, %_ZN2v88internal6torque11VisitResultD2Ev.exit23
  %.sroa.042.054 = phi ptr [ %i.dc, %_ZN2v88internal6torque11VisitResultD2Ev.exit23 ], [ %i.bs, %_ZN2v88internal6torque11VisitResultD2Ev.exit23.peel ] ; 2 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %i.cc = load ptr, ptr %0, align 8
  store ptr %i.cc, ptr %5, align 8
  store i8 0, ptr %i.ak, align 8
  %i.cd = load i8, ptr %i.aj, align 8, !range !15, !noundef !12
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.q, label %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit

bb.q:                                             ; preds = %.peel.next
  store ptr %i.am, ptr %i.ai, align 8
  %i.cf = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.cg = load i64, ptr %i.an, align 8            ; 8 uses
  %i.ch = icmp ugt i64 %i.cg, 15
  br i1 %i.ch, label %bb.r, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ci = icmp slt i64 %i.cg, 0
  br i1 %i.ci, label %.noexc.i.i.i.i.i.i.i.i.i, label %bb.s

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.r, %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #23
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.cj = add nuw i64 %i.cg, 1                    ; 2 uses
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.noexc6.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i, !prof !16

.noexc6.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.s, %bb.i
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #25 ; 2 uses
  store ptr %i.cl, ptr %i.ai, align 8
  store i64 %i.cg, ptr %i.am, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i, %bb.q
  %i.cm = phi ptr [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %bb.q ] ; 3 uses
  switch i64 %i.cg, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cn = load i8, ptr %i.cf, align 1
  store i8 %i.cn, ptr %i.cm, align 1
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr align 1 %i.cf, i64 %i.cg, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  store i64 %i.cg, ptr %i.ao, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cg
  store i8 0, ptr %i.co, align 1
  store i8 1, ptr %i.ak, align 8
  br label %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit

_ZN2v88internal6torque11VisitResultC2ERKS2_.exit: ; preds = %.peel.next, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.042.054, i64 64
  invoke void @_ZN2v88internal6torque18ProjectStructFieldENS1_11VisitResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::torque::VisitResult") align 8 %4, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit
  invoke void @_ZN2v88internal6torque12CSAGenerator12EmitCSAValueENS1_11VisitResultERKNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSo(ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.w unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.cq = load i8, ptr %i.ar, align 8, !range !15, !noundef !12
  %i.cr = trunc nuw i8 %i.cq to i1
  store i8 0, ptr %i.ar, align 8
  br i1 %i.cr, label %bb.x, label %_ZN2v88internal6torque11VisitResultD2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.at
  br i1 %i.ct, label %_ZN2v88internal6torque11VisitResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.cu = load i64, ptr %i.at, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit

_ZN2v88internal6torque11VisitResultD2Ev.exit:     ; preds = %bb.x, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cw = load i8, ptr %i.ak, align 8, !range !15, !noundef !12
  %i.cx = trunc nuw i8 %i.cw to i1
  store i8 0, ptr %i.ak, align 8
  br i1 %i.cx, label %bb.y, label %_ZN2v88internal6torque11VisitResultD2Ev.exit23

bb.y:                                             ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit
  %i.cy = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.am
  br i1 %i.cz, label %_ZN2v88internal6torque11VisitResultD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21: ; preds = %bb.y
  %i.da = load i64, ptr %i.am, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit23

_ZN2v88internal6torque11VisitResultD2Ev.exit23:   ; preds = %bb.y, %_ZN2v88internal6torque11VisitResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.042.054, i64 128 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ag
  br i1 %i.dd, label %._crit_edge, label %.peel.next, !llvm.loop !91

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit, %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.peel
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit26

.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.l
  %lpad.loopexit.split-lp95 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.de = load i8, ptr %i.ar, align 8, !range !15, !noundef !12
  %i.df = trunc nuw i8 %i.de to i1
  store i8 0, ptr %i.ar, align 8
  br i1 %i.df, label %bb.z, label %_ZN2v88internal6torque11VisitResultD2Ev.exit26

bb.z:                                             ; preds = %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp
  %i.dg = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.at
  br i1 %i.dh, label %_ZN2v88internal6torque11VisitResultD2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24: ; preds = %bb.z
  %i.di = load i64, ptr %i.at, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit26

_ZN2v88internal6torque11VisitResultD2Ev.exit26:   ; preds = %bb.z, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24, %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24 ], [ %lpad.loopexit.split-lp95, %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp95, %bb.z ] ; 3 uses
  %i.dk = load i8, ptr %i.ak, align 8, !range !15, !noundef !12
  %i.dl = trunc nuw i8 %i.dk to i1
  store i8 0, ptr %i.ak, align 8
  br i1 %i.dl, label %bb.aa, label %_ZN2v88internal6torque11VisitResultD2Ev.exit29

bb.aa:                                            ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit26
  %i.dm = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.am
  br i1 %i.dn, label %_ZN2v88internal6torque11VisitResultD2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27: ; preds = %bb.aa
  %i.do = load i64, ptr %i.am, align 8
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit29

bb.ab:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dq = load ptr, ptr %0, align 8
  call void @_ZNK2v88internal6torque4Type20GetGeneratedTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.dq)
  %i.dr = load ptr, ptr %6, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.dr, i64 noundef %i.dt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30: ; preds = %bb.ab
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull @.str.159, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.dw, align 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %1, align 8               ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 5                 ; 2 uses
  %.not.i.i.i = icmp ult i64 %.sroa.0.0.copyload.i, %i.ed
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.194, i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.ed) #23
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.dz, i64 %.sroa.0.0.copyload.i ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.ef, i64 noundef %i.eh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33 unwind label %bb.ae

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33: ; preds = %bb.ad
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.160, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33
  %i.ek = load ptr, ptr %6, align 8               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.en = load i64, ptr %i.el, align 8
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.af

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33, %bb.ad, %bb.ac, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30, %bb.ab
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = load ptr, ptr %6, align 8               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.ae
  %i.et = load i64, ptr %i.er, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit29

_ZN2v88internal6torque11VisitResultD2Ev.exit29:   ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27, %_ZN2v88internal6torque11VisitResultD2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn = phi { ptr, i32 } [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn, %_ZN2v88internal6torque11VisitResultD2Ev.exit26 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27 ], [ %.pn, %bb.aa ]
  resume { ptr, i32 } %.pn.pn

bb.af:                                            ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7PopManyEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.neg = mul i64 %2, -32                         ; 2 uses
  %i.c = icmp eq i64 %.neg, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %.neg
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %bb.b
  %.lcssa = phi ptr [ %i.b, %bb.b ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = ptrtoint ptr %.lcssa to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5                   ; 2 uses
  %i.l = sub nuw i64 %i.k, %2
  %i.m = icmp ugt i64 %2, %i.k
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.n = sub i64 0, %2
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.n)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.l ; 3 uses
  %.not.i.i = icmp eq ptr %.lcssa, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.o, %bb.e ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %.lcssa
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.o, ptr %i.a, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %.sroa.011.015 = phi ptr [ %i.d, %.lr.ph ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 7 uses
  %i.v = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.w = load ptr, ptr %i.f, align 8
  %.not.i.i8 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i8, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8
  %i.y = load ptr, ptr %.sroa.011.015, align 8    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.y, ptr %i.v, align 8
  %i.af = load i64, ptr %i.z, align 8
  store i64 %i.af, ptr %i.x, align 8
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
end_hunk_0
