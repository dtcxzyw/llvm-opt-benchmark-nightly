Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat?download=true
inline.NumInlined: 13193
inline.NumDeleted: 4330
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZL38common_chat_template_direct_apply_implB5cxx11RK20common_chat_templateRKN10autoparser17generation_paramsERKSt8optionalI11common_jsonESA_SA_:bb.a

bb.fa:                                            ; preds = %_ZNSt12__shared_ptrIN5jinja14value_string_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8 ; 4 uses
  %i.uq = load atomic i64, ptr %i.up acquire, align 8 ; 2 uses
  %i.ur = icmp eq i64 %i.uq, 4294967297
  %i.us = trunc i64 %i.uq to i32                  ; 2 uses
  br i1 %i.ur, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.up, align 8, !tbaa !84
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 12
  store i32 0, ptr %i.ut, align 4, !tbaa !85
  %i.uu = load ptr, ptr %i.uo, align 8, !tbaa !87
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(16) %i.uo) #32, !inline_history !12
  %i.ux = load ptr, ptr %i.uo, align 8, !tbaa !87
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 24
  %i.uz = load ptr, ptr %i.uy, align 8
  call void %i.uz(ptr noundef nonnull align 8 dereferenceable(16) %i.uo) #32, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fc:                                            ; preds = %bb.fa
  %i.va = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i305 = icmp eq i8 %i.va, 0
  br i1 %.not.i.i.i305, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vb = add nsw i32 %i.us, -1
  store i32 %i.vb, ptr %i.up, align 8, !tbaa !88
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i306

bb.fe:                                            ; preds = %bb.fc
  %i.vc = atomicrmw volatile add ptr %i.up, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i306

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i306: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i307 = phi i32 [ %i.us, %bb.fd ], [ %i.vc, %bb.fe ]
  %i.vd = icmp eq i32 %.0.i.i.i.i307, 1
  br i1 %i.vd, label %bb.ff, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !89

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i306
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uo) #32
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5jinja14value_string_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i306, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN5jinja7contextD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  ret void

bb.fg:                                            ; preds = %bb.et, %bb.ei
  %.pn119 = phi { ptr, i32 } [ %i.tw, %bb.et ], [ %i.sg, %bb.ei ] ; 2 uses
  %i.ve = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.vg = icmp eq ptr %i.ve, %i.vf
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.fg
  %i.vh = load i64, ptr %i.vf, align 8, !tbaa !63
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308, %bb.eh
  %.pn119.pn = phi { ptr, i32 } [ %.pn117, %bb.eh ], [ %.pn119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308 ], [ %.pn119, %bb.fg ]
  call void @_ZNSt12__shared_ptrIN5jinja14value_string_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #32
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %bb.ee
  %.pn119.pn.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310 ], [ %i.sd, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #32
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.ed
  %.pn119.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn, %bb.fh ], [ %i.sc, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %bb.fj

bb.fj:                                            ; preds = %bb.by, %bb.ch, %bb.bl, %bb.bu, %bb.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %bb.cm, %bb.bg, %bb.bf
  %.pn130.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kw, %bb.bg ], [ %i.lf, %bb.bl ], [ %.pn119.pn.pn.pn, %bb.fi ], [ %i.kv, %bb.bf ], [ %.pn115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %i.nx, %bb.cw ], [ %.pn111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.nb, %bb.cm ], [ %.pn130.pn.pn.pn, %bb.bu ], [ %.pn124.pn.pn.pn, %bb.ch ], [ %i.mf, %bb.by ]
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %.loopexit
  %.pn130.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn.pn.pn.pn, %bb.fj ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN5jinja7contextD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.fk
  %.pn130.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn.pn.pn.pn.pn, %bb.fk ], [ %i.jq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %i.jq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %.pn130.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z38common_chat_template_generation_promptB5cxx11RK20common_chat_templateRKN10autoparser17generation_paramsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(421) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional", align 8     ; 7 uses
  %4 = alloca %"class.std::optional", align 8     ; 7 uses
  %5 = alloca %"class.std::optional", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  store i8 0, ptr %i.a, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store i8 0, ptr %i.b, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store i8 0, ptr %i.c, align 8, !tbaa !224
  invoke fastcc void @_ZL43common_chat_template_generation_prompt_implB5cxx11RK20common_chat_templateRKN10autoparser17generation_paramsERKSt8optionalI11common_jsonESA_SA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(421) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !224, !range !166, !noundef !167
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8, !tbaa !224
  br i1 %i.e, label %bb.c, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %5) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.f = load i8, ptr %i.b, align 8, !tbaa !224, !range !166, !noundef !167
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.b, align 8, !tbaa !224
  br i1 %i.g, label %bb.d, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit3

bb.d:                                             ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %4) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit3

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit3: ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.h = load i8, ptr %i.a, align 8, !tbaa !224, !range !166, !noundef !167
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.a, align 8, !tbaa !224
  br i1 %i.i, label %bb.e, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit4

bb.e:                                             ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit3
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %3) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit4

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit4: ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit3, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.f:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i8, ptr %i.c, align 8, !tbaa !224, !range !166, !noundef !167
  %i.l = trunc nuw i8 %i.k to i1
  store i8 0, ptr %i.c, align 8, !tbaa !224
  br i1 %i.l, label %bb.g, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit5

bb.g:                                             ; preds = %bb.f
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %5) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit5

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load i8, ptr %i.b, align 8, !tbaa !224, !range !166, !noundef !167
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.b, align 8, !tbaa !224
  br i1 %i.n, label %bb.h, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit6

bb.h:                                             ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit5
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %4) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit6

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit6: ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit5, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.o = load i8, ptr %i.a, align 8, !tbaa !224, !range !166, !noundef !167
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.a, align 8, !tbaa !224
  br i1 %i.p, label %bb.i, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit7

bb.i:                                             ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit6
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %3) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit7

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit7: ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit6, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL43common_chat_template_generation_prompt_implB5cxx11RK20common_chat_templateRKN10autoparser17generation_paramsERKSt8optionalI11common_jsonESA_SA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(421) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.autoparser::generation_params", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN10autoparser17generation_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(421) %6, ptr noundef nonnull align 8 dereferenceable(421) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 0, ptr %i.c, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke fastcc void @_ZL38common_chat_template_direct_apply_implB5cxx11RK20common_chat_templateRKN10autoparser17generation_paramsERKSt8optionalI11common_jsonESA_SA_(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(421) %6, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke fastcc void @_ZL38common_chat_template_direct_apply_implB5cxx11RK20common_chat_templateRKN10autoparser17generation_paramsERKSt8optionalI11common_jsonESA_SA_(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(421) %6, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.e) ; 3 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  %.pre = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = load ptr, ptr %7, align 8, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.034 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.e ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.034
  %i.j = load i8, ptr %i.i, align 1, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %.034
  %i.l = load i8, ptr %i.k, align 1, !tbaa !63
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i64 %.034, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %.sroa.speculated
  br i1 %exitcond.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.d, !llvm.loop !555

bb.f:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.d, %bb.e, %bb.c
  %.0.lcssa49 = phi i64 [ 0, %bb.c ], [ %.sroa.speculated, %bb.e ], [ %.034, %bb.d ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !60, !alias.scope !558
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 %.0.lcssa49 ; 2 uses
  %i.s = sub nuw i64 %i.g, %.0.lcssa49            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !558
  store i64 %i.s, ptr %i.a, align 8, !tbaa !62, !noalias !558
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %bb.k   ; 2 uses

.noexc21:                                         ; preds = %.noexc10.i.i
  store ptr %i.u, ptr %0, align 8, !tbaa !61, !alias.scope !558
  %i.v = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !558
  store i64 %i.v, ptr %i.q, align 8, !tbaa !63, !alias.scope !558
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.w = phi ptr [ %i.u, %.noexc21 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !63
  store i8 %i.x, ptr %i.w, align 1, !tbaa !63
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !558 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !57, !alias.scope !558
  %i.aa = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !558
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !558
  %i.ac = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !63
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.ah = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !63
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 384
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.am) #32
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @_ZN15common_chat_msgD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.an) #32
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN10autoparser17generation_paramsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !63
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #34
  br label %_ZN10autoparser17generation_paramsD2Ev.exit

_ZN10autoparser17generation_paramsD2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.au) #32
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.av) #32
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(421) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

bb.k:                                             ; preds = %.noexc10.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.k
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !63
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.g
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.aw, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.bc = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !63
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN10autoparser17generation_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(421) dereferenceable(421) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z36common_chat_try_specialized_templateRK20common_chat_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10autoparser17generation_paramsE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.90") align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(421) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %class.common_chat_peg_builder, align 8 ; 9 uses
  %5 = alloca %class.common_peg_parser, align 8   ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::optional", align 8     ; 7 uses
  %8 = alloca %"class.std::optional", align 8     ; 7 uses
  %9 = alloca %"class.std::optional", align 8     ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::optional", align 8    ; 7 uses
  %12 = alloca %"class.std::optional", align 8    ; 7 uses
  %13 = alloca %"class.std::optional", align 8    ; 7 uses
  %14 = alloca [7 x %"class.std::__cxx11::basic_string"], align 8 ; 34 uses
  %i.n = alloca i8, align 1                       ; 6 uses
  %i.o = alloca i8, align 1                       ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %class.common_peg_arena, align 8   ; 8 uses
  %30 = alloca %"class.std::function", align 8    ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %33 = alloca %"class.std::function.308", align 8 ; 12 uses
  %34 = alloca %struct.common_grammar_options, align 1 ; 5 uses
  %35 = alloca [1 x %struct.common_grammar_trigger], align 8 ; 10 uses
  %36 = alloca %class.common_chat_peg_builder, align 8 ; 9 uses
  %37 = alloca %class.common_peg_parser, align 8  ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %39 = alloca %"class.std::optional", align 8    ; 7 uses
  %40 = alloca %"class.std::optional", align 8    ; 7 uses
  %41 = alloca %"class.std::optional", align 8    ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %43 = alloca %"class.std::optional", align 8    ; 7 uses
  %44 = alloca %"class.std::optional", align 8    ; 7 uses
  %45 = alloca %"class.std::optional", align 8    ; 7 uses
  %46 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 11 uses
  %i.p = alloca i8, align 1                       ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %class.common_peg_arena, align 8   ; 8 uses
  %51 = alloca %"class.std::function", align 8    ; 12 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %54 = alloca %"class.std::function.308", align 8 ; 12 uses
  %55 = alloca %struct.common_grammar_options, align 1 ; 5 uses
  %56 = alloca [1 x %struct.common_grammar_trigger], align 8 ; 11 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %57 = alloca %class.common_chat_peg_builder, align 8 ; 9 uses
  %58 = alloca %class.common_peg_parser, align 8  ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %60 = alloca %"class.std::optional", align 8    ; 7 uses
  %61 = alloca %"class.std::optional", align 8    ; 7 uses
  %62 = alloca %"class.std::optional", align 8    ; 7 uses
  %63 = alloca [10 x %"class.std::__cxx11::basic_string"], align 8 ; 45 uses
  %64 = alloca [4 x %struct.common_chat_msg_delimiter], align 8 ; 32 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.v = alloca i8, align 1                       ; 5 uses
  %i.w = alloca i8, align 1                       ; 6 uses
  %i.x = alloca i8, align 1                       ; 7 uses
  %69 = alloca %class.common_peg_arena, align 8   ; 8 uses
  %70 = alloca %"class.std::function", align 8    ; 12 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %73 = alloca %"class.std::function.308", align 8 ; 12 uses
  %74 = alloca %struct.common_grammar_options, align 1 ; 5 uses
  %75 = alloca [1 x %struct.common_grammar_trigger], align 8 ; 10 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %76 = alloca %class.common_chat_peg_builder, align 8 ; 9 uses
  %77 = alloca %class.common_peg_parser, align 8  ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca i64, align 8                     ; 5 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %i.ae = alloca i64, align 8                     ; 5 uses
  %i.af = alloca i64, align 8                     ; 5 uses
  %i.ag = alloca i64, align 8                     ; 5 uses
  %78 = alloca %class.common_json, align 8        ; 9 uses
  %79 = alloca %"class.common_json::iterator", align 8 ; 6 uses
  %80 = alloca %class.common_json, align 8        ; 15 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %83 = alloca %class.common_json, align 8        ; 6 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %89 = alloca %struct.common_json_value, align 8 ; 9 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %91 = alloca %"class.std::optional", align 8    ; 8 uses
  %92 = alloca %"class.std::optional", align 8    ; 7 uses
  %93 = alloca %"class.std::optional", align 8    ; 7 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %95 = alloca %"class.std::optional", align 8    ; 8 uses
  %96 = alloca %"class.std::optional", align 8    ; 7 uses
  %97 = alloca %"class.std::optional", align 8    ; 7 uses
  %98 = alloca [5 x %struct.common_chat_msg_delimiter], align 8 ; 38 uses
  %99 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 11 uses
  %100 = alloca [5 x %"class.std::__cxx11::basic_string"], align 8 ; 27 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.ah = alloca i8, align 1                      ; 7 uses
  %i.ai = alloca i8, align 1                      ; 8 uses
  %i.aj = alloca i8, align 1                      ; 5 uses
  %105 = alloca %class.common_peg_arena, align 8  ; 8 uses
  %106 = alloca %"class.std::function", align 8   ; 12 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %109 = alloca %"class.std::function.308", align 8 ; 12 uses
  %110 = alloca %struct.common_grammar_options, align 1 ; 5 uses
  %111 = alloca [4 x %struct.common_grammar_trigger], align 8 ; 27 uses
  %112 = alloca %class.common_chat_peg_builder, align 8 ; 9 uses
  %113 = alloca %class.common_peg_parser, align 8 ; 5 uses
  %i.ak = alloca i64, align 8                     ; 5 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.al = alloca i64, align 8                     ; 5 uses
  %i.am = alloca i64, align 8                     ; 5 uses
  %i.an = alloca i64, align 8                     ; 5 uses
  %116 = alloca %class.common_json, align 8       ; 10 uses
  %117 = alloca %"class.common_json::iterator", align 8 ; 6 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %120 = alloca %struct.common_json_value, align 8 ; 9 uses
  %121 = alloca %class.common_json, align 8       ; 10 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %124 = alloca [2 x %struct.common_json_item], align 8 ; 28 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_0
