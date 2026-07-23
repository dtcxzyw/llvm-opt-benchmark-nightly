inline.NumInlined: 932
inline.NumDeleted: 386
begin_hunk_0_@_ZN5boost15program_options6detail27common_config_file_iterator3getEv:bb.a
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !21
  %i.jg = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !22 ; 8 uses
  %i.jj = icmp ugt i64 %i.ji, 15
  br i1 %i.jj, label %bb.ce, label %._crit_edge.i.i.i.i153

bb.ce:                                            ; preds = %bb.cd
  %i.jk = icmp slt i64 %i.ji, 0
  br i1 %i.jk, label %.noexc.i.i.i157.invoke, label %bb.cf

.noexc.i.i.i157.invoke:                           ; preds = %bb.ce, %bb.by, %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #28
          to label %.noexc.i.i.i157.cont unwind label %bb.bm

.noexc.i.i.i157.cont:                             ; preds = %.noexc.i.i.i157.invoke
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.jl = add nuw i64 %i.ji, 1                    ; 2 uses
  %i.jm = icmp slt i64 %i.jl, 0
  br i1 %i.jm, label %.noexc6.i.i.i156.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i155, !prof !53

.noexc6.i.i.i156.invoke:                          ; preds = %bb.cf, %bb.bz, %bb.bt
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc6.i.i.i156.cont unwind label %bb.bm

.noexc6.i.i.i156.cont:                            ; preds = %.noexc6.i.i.i156.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i155: ; preds = %bb.cf
  %i.jn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #29
          to label %.noexc160 unwind label %bb.bm ; 2 uses

.noexc160:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i155
  store ptr %i.jn, ptr %i.jd, align 8, !tbaa !51
  store i64 %i.ji, ptr %i.jf, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i153

._crit_edge.i.i.i.i153:                           ; preds = %.noexc160, %bb.cd
  %i.jo = phi ptr [ %i.jn, %.noexc160 ], [ %i.jf, %bb.cd ] ; 3 uses
  switch i64 %i.ji, label %bb.ch [
    i64 1, label %bb.cg
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i154
  ]

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i153
  %i.jp = load i8, ptr %i.jg, align 1, !tbaa !23
  store i8 %i.jp, ptr %i.jo, align 1, !tbaa !23
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i154

bb.ch:                                            ; preds = %._crit_edge.i.i.i.i153
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jo, ptr align 1 %i.jg, i64 %i.ji, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i154

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i154: ; preds = %bb.ch, %bb.cg, %._crit_edge.i.i.i.i153
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 %i.ji, ptr %i.jq, align 8, !tbaa !22
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ji
  store i8 0, ptr %i.jr, align 1, !tbaa !23
  %i.js = load ptr, ptr %i.ie, align 8, !tbaa !81
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  store ptr %i.jt, ptr %i.ie, align 8, !tbaa !81
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162

bb.ci:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit151
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, ptr %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162 unwind label %bb.bm

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i154, %bb.ci
  %i.ju = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !23
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.jz = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.ej
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.kb = load i64, ptr %i.ej, align 8, !tbaa !23
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cq

bb.cj:                                            ; preds = %bb.bp, %bb.bm
  %.pn29 = phi { ptr, i32 } [ %i.gt, %bb.bm ], [ %.pn27, %bb.bp ] ; 2 uses
  %i.kd = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.cj
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !23
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %.pn29.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn29, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ki = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.ej
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.kk = load i64, ptr %i.ej, align 8, !tbaa !23
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %.pn29.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cr

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN5boost15program_options26invalid_config_file_syntaxC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14invalid_syntax6kind_tE(ptr noundef nonnull align 8 dereferenceable(188) %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 36)
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN5boost15throw_exceptionINS_15program_options26invalid_config_file_syntaxEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(188) %11) #28
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  unreachable

bb.cn:                                            ; preds = %bb.ck
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.cl
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost15program_options22error_with_option_nameD2Ev(ptr noundef nonnull align 8 dereferenceable(188) %11) #25
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn = phi { ptr, i32 } [ %i.kn, %bb.co ], [ %i.km, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cr

.critedge37:                                      ; preds = %bb.c
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ko, align 8, !tbaa !7
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %.critedge37
  %i.kp = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.a
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.cq
  %i.kr = load i64, ptr %i.a, align 8, !tbaa !23
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.cr:                                            ; preds = %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.am, %bb.al, %bb.q, %bb.p
  %.pn34 = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %lpad.phi192, %bb.am ], [ %.pn29.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %.pn, %bb.cp ], [ %i.dr, %bb.al ], [ %lpad.phi, %bb.q ]
  %i.kt = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.a
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.cr
  %i.kv = load i64, ptr %i.a, align 8, !tbaa !23
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn34
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost15program_options6detail12_GLOBAL__N_17trim_wsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %.8.val, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.0710.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23    ; 3 uses
  %i.c = zext nneg i8 %i.b to i64
  %memchr.bounds = icmp ugt i8 %i.b, 63
  %i.d = shl nuw i64 1, %i.c
  %i.e = and i64 %i.d, 4294977024
  %memchr.bits = icmp eq i64 %i.e, 0
  %memchr.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.f = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %.8.val
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.0710.i.i
  %i.h = icmp eq i64 %.0710.i.i, -1
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !22
  store i8 0, ptr %i.i, align 8, !tbaa !23
  br label %bb.h

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7:    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit, %bb.c
  %.1.i.i.in = phi i64 [ %.1.i.i, %bb.c ], [ %.8.val, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit ]
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.1.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23    ; 2 uses
  %i.m = zext nneg i8 %i.l to i64
  %memchr.bounds14 = icmp ugt i8 %i.l, 63
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.n, 4294977024
  %memchr.bits15 = icmp eq i64 %i.o, 0
  %memchr.not16 = select i1 %memchr.bounds14, i1 true, i1 %memchr.bits15
  br i1 %memchr.not16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %.not15.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not15.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, !llvm.loop !86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, %bb.c
  %.010.i.i = phi i64 [ %.1.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7 ], [ -1, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %1 = icmp ugt i64 %.0710.i.i, %.8.val
  br i1 %1, label %2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

2:                                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef %.0710.i.i, i64 noundef %.8.val) #28, !noalias !87
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit
  %reass.sub = sub i64 %.010.i.i, %.0710.i.i
  %i.p = add i64 %reass.sub, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !21, !alias.scope !87
  %i.r = sub nuw i64 %.8.val, %.0710.i.i
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.r) ; 8 uses
  %i.s = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.s, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.t = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.t, label %.noexc10.i.i, label %bb.e

.noexc10.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw i64 %spec.select.i.i.i, 1        ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !53

.noexc11.i.i:                                     ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #29 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !51, !alias.scope !87
  store i64 %spec.select.i.i.i, ptr %i.q, align 8, !tbaa !23, !alias.scope !87
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.x = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  store i8 %i.b, ptr %i.x, align 1, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.g, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i.i, ptr %i.y, align 8, !tbaa !22, !alias.scope !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select.i.i.i
  store i8 0, ptr %i.z, align 1, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZNK5boost15program_options6detail27common_config_file_iterator14allowed_optionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 dereferenceable(241) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.b, !llvm.loop !90

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread30

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.a, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.not10.i.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i5, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ac = load ptr, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i12, %.lr.ph.i.i.i6
  %.012.i.i.i7 = phi ptr [ %i.y, %.lr.ph.i.i.i6 ], [ %.1.i.i.i17, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i12 ] ; 4 uses
  %.0811.i.i.i8 = phi ptr [ %i.z, %.lr.ph.i.i.i6 ], [ %.19.i.i.i14, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i12 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i7, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i9 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ae) ; 2 uses
  %i.af = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i9, 0
  br i1 %i.af, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i10

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i10: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i7, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i.i9) #25 ; 2 uses
  %.not.i.i.i.i.i.i11 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i12

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i10, %bb.d
  %i.aj = sub i64 %i.ae, %i.ab
  %spec.select7.i.i.i.i.i.i.i20 = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i21 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i20, i64 2147483647)
  %.0.i6.i.i.i.i.i.i22 = trunc nsw i64 %.08.i.i.i.i.i.i.i21 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i12

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i12: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i10
  %.0.i.i.i.i.i.i13 = phi i32 [ %i.ai, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i10 ], [ %.0.i6.i.i.i.i.i.i22, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19 ]
  %i.ak = icmp slt i32 %.0.i.i.i.i.i.i13, 0       ; 2 uses
  %.19.i.i.i14 = select i1 %i.ak, ptr %.0811.i.i.i8, ptr %.012.i.i.i7 ; 2 uses
  %.1.in.v.i.i.i15 = select i1 %i.ak, i64 24, i64 16
  %.1.in.i.i.i16 = getelementptr inbounds nuw i8, ptr %.012.i.i.i7, i64 %.1.in.v.i.i.i15
  %.1.i.i.i17 = load ptr, ptr %.1.in.i.i.i16, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %.1.i.i.i17, null
  br i1 %.not.i.i.i18, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit, label %bb.d, !llvm.loop !90

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i12, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %.08.lcssa.i.i.i = phi ptr [ %i.z, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread ], [ %.19.i.i.i14, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i12 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.an = icmp eq ptr %.08.lcssa.i.i.i, %i.am
  br i1 %i.an, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE11lower_boundERKS5_.exit
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i) #26 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !51 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !22 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !22 ; 4 uses
  %i.av = icmp eq i64 %i.as, 0
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread30, label %bb.f

end_hunk_0
