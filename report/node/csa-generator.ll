Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/csa-generator?download=true
inline.NumInlined: 2685
inline.NumDeleted: 621
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal6torque12CSAGenerator12EmitCSAValueENS1_11VisitResultERKNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSo:bb.a
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

.loopexit:                                        ; preds = %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit26

.loopexit.split-lp:                               ; preds = %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit26

.loopexit57:                                      ; preds = %bb.v
  %lpad.loopexit59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp58:                             ; preds = %bb.l
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp58, %.loopexit57
  %lpad.phi61 = phi { ptr, i32 } [ %lpad.loopexit59, %.loopexit57 ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp58 ] ; 3 uses
  %i.de = load i8, ptr %i.ar, align 8, !range !15, !noundef !12
  %i.df = trunc nuw i8 %i.de to i1
  store i8 0, ptr %i.ar, align 8
  br i1 %i.df, label %bb.aa, label %_ZN2v88internal6torque11VisitResultD2Ev.exit26

bb.aa:                                            ; preds = %bb.z
  %i.dg = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.at
  br i1 %i.dh, label %_ZN2v88internal6torque11VisitResultD2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24: ; preds = %bb.aa
  %i.di = load i64, ptr %i.at, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit26

_ZN2v88internal6torque11VisitResultD2Ev.exit26:   ; preds = %bb.aa, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24, %bb.z
  %.pn = phi { ptr, i32 } [ %lpad.phi61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24 ], [ %lpad.phi61, %bb.z ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi61, %bb.aa ] ; 3 uses
  %i.dk = load i8, ptr %i.ak, align 8, !range !15, !noundef !12
  %i.dl = trunc nuw i8 %i.dk to i1
  store i8 0, ptr %i.ak, align 8
  br i1 %i.dl, label %bb.ab, label %_ZN2v88internal6torque11VisitResultD2Ev.exit29

bb.ab:                                            ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit26
  %i.dm = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.am
  br i1 %i.dn, label %_ZN2v88internal6torque11VisitResultD2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27: ; preds = %bb.ab
  %i.do = load i64, ptr %i.am, align 8
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #24
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit29

bb.ac:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dq = load ptr, ptr %0, align 8
  call void @_ZNK2v88internal6torque4Type20GetGeneratedTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.dq)
  %i.dr = load ptr, ptr %6, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.dr, i64 noundef %i.dt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30 unwind label %bb.af ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30: ; preds = %bb.ac
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull @.str.159, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.af ; 0 uses

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
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.194, i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.ed) #23
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.dz, i64 %.sroa.0.0.copyload.i ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.ef, i64 noundef %i.eh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33 unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33: ; preds = %bb.ae
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.160, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.af ; 0 uses

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
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33, %bb.ae, %bb.ad, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30, %bb.ac
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = load ptr, ptr %6, align 8               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.af
  %i.et = load i64, ptr %i.er, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit29

_ZN2v88internal6torque11VisitResultD2Ev.exit29:   ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27, %_ZN2v88internal6torque11VisitResultD2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn = phi { ptr, i32 } [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn, %_ZN2v88internal6torque11VisitResultD2Ev.exit26 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27 ], [ %.pn, %bb.ab ]
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7PopManyEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
          to label %bb.b unwind label %bb.f

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
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %bb.b
  %.lcssa = phi ptr [ %i.b, %bb.b ], [ %i.am, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
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
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit unwind label %bb.f

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

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %.sroa.011.015 = phi ptr [ %i.d, %.lr.ph ], [ %i.am, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 7 uses
  %i.w = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.x = load ptr, ptr %i.f, align 8
  %.not.i.i8 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i8, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.y, ptr %i.w, align 8
  %i.z = load ptr, ptr %.sroa.011.015, align 8    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  store ptr %i.z, ptr %i.w, align 8
  %i.ag = load i64, ptr %i.aa, align 8
  store i64 %i.ag, ptr %i.y, align 8
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  store ptr %i.aa, ptr %.sroa.011.015, align 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.aa, align 8
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %i.e, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.015)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %._crit_edge, label %bb.g, !llvm.loop !92

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.e, %bb.d, %bb.c
  ret void

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.v, %bb.f ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque12CSAGenerator15EmitInstructionERKNS1_24CallIntrinsicInstructionEPNS1_5StackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"struct.v8::internal::torque::ListPrintAdaptor", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"struct.v8::internal::torque::ListPrintAdaptor", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::vector.38", align 8   ; 7 uses
  %16 = alloca %"class.std::vector", align 8      ; 10 uses
  %17 = alloca %"class.std::vector", align 8      ; 7 uses
  %18 = alloca %"class.v8::internal::torque::Stack", align 8 ; 8 uses
  %19 = alloca %"class.std::vector", align 8      ; 15 uses
  %20 = alloca %"class.std::vector.38", align 8   ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.v8::internal::torque::DefinitionLocation", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !16

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre469 = load ptr, ptr %i.d, align 8
  %.pre483 = ptrtoint ptr %.pre469 to i64
  %.pre484 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi485 = phi i64 [ %.pre484, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre483, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.k, %_ZNSt15__new_allocatorIPKN2v88internal6torque4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 11 uses
  store ptr %i.m, ptr %15, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.o, ptr %i.p, align 8
  %i.q = sub i64 %.pre-phi, %.pre-phi485          ; 6 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.l, align 8
  store ptr %i.t, ptr %i.m, align 8
  br label %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit

_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EEC2ERKS7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  store ptr %i.u, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8              ; 3 uses
end_hunk_0
