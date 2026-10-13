Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v34impl7impl_ex6parser11parse_floatEv:bb.a
  %.sroa.4.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.4.0.copyload.i99 = load ptr, ptr %.sroa.4.0..sroa_idx.i98, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100

bb.cd:                                            ; preds = %bb.cb
  %i.dn = icmp eq i32 %i.dj, 127
  br i1 %i.dn, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100: ; preds = %bb.cc, %bb.cd, %bb.ce
  %.sroa.4.0.i93 = phi ptr [ %.sroa.4.0.copyload.i99, %bb.cc ], [ %i.do, %bb.ce ], [ @.str.29, %bb.cd ]
  %.sroa.0.0.i94 = phi i64 [ %.sroa.0.0.copyload.i97, %bb.cc ], [ %i.dq, %bb.ce ], [ 6, %bb.cd ]
  store i64 %.sroa.0.0.i94, ptr %31, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.4.0.i93, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #50
  store i64 1, ptr %32, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @.str.16, ptr %i.ds, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %32) #54
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100
  unreachable

bb.cg:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #50
  br label %bb.cv

bb.ch:                                            ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #50
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %33)
          to label %bb.ci unwind label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.du = load ptr, ptr %33, align 8, !tbaa !75
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.dy = getelementptr inbounds i8, ptr %33, i64 %i.dw
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %34, ptr noundef nonnull align 8 dereferenceable(264) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #50
  %i.dz = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull %i.a, i64 noundef %.033.ph)
          to label %bb.cl unwind label %bb.cp     ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.eb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cm unwind label %bb.cp     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !75
  %i.ed = getelementptr i8, ptr %i.ec, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !323
  %i.ei = and i32 %i.eh, 5
  %.not.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.ej = load double, ptr %i.c, align 8, !tbaa !341 ; 2 uses
  %i.ek = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ek, ptr %33, align 8, !tbaa !75
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.em = getelementptr i8, ptr %i.ek, i64 -24
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %33, i64 %i.en
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !75
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ep, ptr %i.dz, align 8, !tbaa !75
  %i.eq = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.eq, align 8, !tbaa !75
  %i.er = getelementptr inbounds nuw i8, ptr %33, i64 96
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !67 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %33, i64 112 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cn
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !70
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #51
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ex = fneg double %i.ej
  %i.ey = select i1 %i.m, double %i.ex, double %i.ej
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.eq, align 8, !tbaa !75
  %i.ez = getelementptr inbounds nuw i8, ptr %33, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ez) #50
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fa, ptr %33, align 8, !tbaa !75
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fc = getelementptr i8, ptr %i.fa, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %33, i64 %i.fd
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !75
  %i.ff = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.ff, align 8, !tbaa !343
  %i.fg = getelementptr inbounds nuw i8, ptr %33, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fg) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret double %i.ey

bb.co:                                            ; preds = %bb.ch
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cp:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #50
  store i64 1, ptr %35, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr @.str.16, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #50
  store i64 %.033.ph, ptr %36, align 8, !tbaa !325
  %i.fk = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.a, ptr %i.fk, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #50
  store i64 37, ptr %37, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str.125, ptr %i.fl, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37) #54
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #50
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cp
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.cs ], [ %i.fi, %bb.cp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %33) #50
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.co
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ct ], [ %i.fh, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cu, %bb.cg, %bb.ca, %bb.bx, %bb.bu, %bb.bo, %bb.bi, %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.ao, %bb.ak, %bb.ag, %bb.ab, %bb.y, %bb.t, %bb.o
  %.pn55 = phi { ptr, i32 } [ %i.y, %bb.t ], [ %.pn.pn, %bb.cu ], [ %i.v, %bb.o ], [ %i.ae, %bb.y ], [ %i.ak, %bb.ab ], [ %i.ap, %bb.ak ], [ %i.as, %bb.ao ], [ %i.am, %bb.ag ], [ %i.bk, %bb.av ], [ %i.bc, %bb.as ], [ %i.ca, %bb.bb ], [ %i.bs, %bb.ay ], [ %i.ch, %bb.bi ], [ %i.cs, %bb.bo ], [ %i.db, %bb.bu ], [ %i.dd, %bb.bx ], [ %i.dh, %bb.ca ], [ %i.dt, %bb.cg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.f, %bb.e
  %.pn57 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %.pn55, %bb.cv ], [ %i.k, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn57
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef double @_ZN4toml2v34impl7impl_ex6parser16parse_inf_or_nanEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !213
  store i64 14, ptr %i.b, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.116, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  store i8 1, ptr %i.c, align 8, !tbaa !254
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3465
  store i8 1, ptr %i.d, align 1, !tbaa !255
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !68
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !67
  store i8 0, ptr %i.g, align 1, !tbaa !70
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !240, !nonnull !106, !noundef !106 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !247  ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !68
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.n, i64 noundef %i.j)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge unwind label %bb.b ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.p = load i32, ptr %.pre, align 4, !tbaa !242 ; 3 uses
  %i.q = icmp eq i32 %i.p, 45
  switch i32 %i.p, label %bb.i [
    i32 45, label %bb.c
    i32 43, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #53
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %._crit_edge, !prof !156

._crit_edge:                                      ; preds = %bb.d
  %.pre23 = load i32, ptr %i.t, align 4, !tbaa !242
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.u, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.y

bb.i:                                             ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge
  %i.x = phi i32 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge ], [ %.pre23, %._crit_edge ] ; 3 uses
  %i.y = add i32 %i.x, -73
  %switch.and = and i32 %i.y, -33
  %switch.selectcmp = icmp eq i32 %switch.and, 0  ; 2 uses
  %.sroa.3.0 = select i1 %switch.selectcmp, ptr @.str.126, ptr @.str.127
  %11 = select i1 %switch.selectcmp, ptr getelementptr inbounds nuw (i8, ptr @.str.126, i64 12), ptr getelementptr inbounds nuw (i8, ptr @.str.127, i64 12)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.noexc20
  %.01018.i = phi ptr [ %13, %.noexc20 ], [ %.sroa.3.0, %bb.i ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.not13.i = icmp eq ptr %i.z, null
  br i1 %.not13.i, label %bb.j, label %bb.k, !prof !156

bb.j:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %12, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %.noexc.a unwind label %.loopexit.split-lp

.noexc.a:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.lr.ph.i
  %i.aa = load i32, ptr %.01018.i, align 4, !tbaa !242
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !242
  %.not14.i.a = icmp eq i32 %i.ab, %i.aa
  br i1 %.not14.i.a, label %bb.l, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.l
  %13 = getelementptr inbounds nuw i8, ptr %.01018.i, i64 4 ; 2 uses
  %.not.i19 = icmp eq ptr %13, %11
  br i1 %.not.i19, label %14, label %.lr.ph.i

_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 10, ptr %3, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.98, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 3, ptr %4, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = add i32 %i.x, -73
  %switch.and30 = and i32 %i.ae, -33
  %switch.selectcmp31 = icmp eq i32 %switch.and30, 0
  %i.af = select i1 %switch.selectcmp31, ptr @.str.57, ptr @.str.59
  store ptr %i.af, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 8, ptr %5, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.99, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.val = load ptr, ptr %i.e, align 8, !tbaa !67
  %.val18 = load i64, ptr %i.f, align 8, !tbaa !68
  store i64 %.val18, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.val, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 1, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.16, ptr %i.ai, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit
  unreachable

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.y

14:                                               ; preds = %.noexc20
  store i8 0, ptr %i.c, align 8, !tbaa !254
  %15 = load ptr, ptr %i.a, align 8, !tbaa !240   ; 4 uses
  %.not13 = icmp eq ptr %15, null
  br i1 %.not13, label %bb.v, label %bb.o

bb.o:                                             ; preds = %14
  %i.ak = load i32, ptr %15, align 4, !tbaa !242  ; 4 uses
  %i.al = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.ak) #56
  br i1 %i.al, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store i64 32, ptr %8, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.100, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %i.an = icmp ult i32 %i.ak, 32
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = zext nneg i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 16, !tbaa !124
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.r:                                             ; preds = %bb.p
  %i.aq = icmp eq i32 %i.ak, 127
  br i1 %i.aq, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.q ], [ %i.ar, %bb.s ], [ @.str.29, %bb.r ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.q ], [ %i.at, %bb.s ], [ 6, %bb.r ]
  store i64 %.sroa.0.0.i, ptr %9, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.4.0.i, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 1, ptr %10, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.16, ptr %i.av, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10) #54
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.y

bb.v:                                             ; preds = %bb.o, %14
  switch i32 %i.x, label %bb.x [
    i32 105, label %bb.w
    i32 73, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.ax = select i1 %i.q, double -inf, double +inf
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ay = phi double [ %i.ax, %bb.w ], [ +qnan, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret double %i.ay

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.u, %bb.h, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.v, %bb.g ], [ %i.aw, %bb.u ], [ %i.aj, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm10EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !213
  store i64 15, ptr %i.d, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.129, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !240  ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !242  ; 3 uses
  %i.g = icmp eq i32 %i.f, 45                     ; 3 uses
  %i.h = select i1 %i.g, i64 -1, i64 1            ; 2 uses
  switch i32 %i.f, label %bb.h [
    i32 45, label %bb.b
    i32 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !240  ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %._crit_edge125, !prof !156

._crit_edge125:                                   ; preds = %bb.c
  %.pre = load i32, ptr %i.i, align 4, !tbaa !242
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.j, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.bp

bb.h:                                             ; preds = %._crit_edge125, %bb.a
  %i.m = phi i32 [ %i.f, %bb.a ], [ %.pre, %._crit_edge125 ] ; 4 uses
  %i.n = phi ptr [ %i.e, %bb.a ], [ %i.i, %._crit_edge125 ] ; 2 uses
  %i.o = add i32 %i.m, -48
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 38, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.128, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.r = icmp ult i32 %i.m, 32
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = zext nneg i32 %i.m to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.s ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 16, !tbaa !124
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.k:                                             ; preds = %bb.i
  %i.u = icmp eq i32 %i.m, 127
  br i1 %i.u, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.j ], [ %i.v, %bb.l ], [ @.str.29, %bb.k ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.j ], [ %i.x, %bb.l ], [ 6, %bb.k ]
  store i64 %.sroa.0.0.i, ptr %3, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.i, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 1, ptr %4, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.16, ptr %i.z, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.bp

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.o, %bb.ar
  %.036.ph = phi i64 [ %i.bm, %bb.ar ], [ 0, %bb.o ] ; 12 uses
  %.035.ph = phi ptr [ %i.ab, %bb.ar ], [ null, %bb.o ]
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !240
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %bb.y
  %i.ab = phi ptr [ %.pr, %thread-pre-split ], [ %i.ak, %bb.y ] ; 7 uses
  %.035 = phi ptr [ %.035.ph, %thread-pre-split ], [ %i.ab, %bb.y ] ; 5 uses
  %.not46 = icmp eq ptr %i.ab, null               ; 2 uses
  br i1 %.not46, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !242 ; 7 uses
  %i.ad = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.ac) #56
  br i1 %i.ad, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = icmp eq i32 %i.ac, 95
  %.not52 = icmp eq ptr %.035, null               ; 2 uses
  br i1 %i.ae, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  br i1 %.not52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = load i32, ptr %.035, align 4, !tbaa !242
  %i.ag = add i32 %i.af, -48
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 34, ptr %5, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.105, ptr %i.ai, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.v unwind label %bb.w
end_hunk_0
