Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/implementation-visitor?download=true
inline.NumInlined: 15498
inline.NumDeleted: 4769
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRSoEZN2v88internal6torque12_GLOBAL__N_117CppClassGenerator22GenerateFieldAccessorsERKNS4_5FieldERSt6vectorIPS8_SaISB_EEE3$_1E9_M_invokeERKSt9_Any_dataS0_":bb.a
  %cond31.i.i.i.i = icmp eq i64 %i.cs, 1
  br i1 %cond31.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dp = load i8, ptr %.pre.i8.i.i.i, align 1
  store i8 %i.dp, ptr %i.do, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %.pre.i8.i.i.i, i64 %i.cs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i: ; preds = %bb.am, %bb.al, %.noexc12.i.i.i
  %i.dq = icmp eq ptr %.pre.i8.i.i.i, %i.ac
  br i1 %i.dq, label %.noexc5.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i
  %i.dr = load i64, ptr %i.ac, align 8
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.pre.i8.i.i.i, i64 noundef %i.ds) #30
  br label %.noexc5.i.i.i

.noexc5.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i
  store ptr %i.dn, ptr %9, align 8
  store i64 %.0.i.i.i.i, ptr %i.ac, align 8
  br label %.noexc86.i.i.i.i

.noexc86.i.i.i.i:                                 ; preds = %.noexc5.i.i.i, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i64 %i.cu, ptr %i.ad, align 8
  %i.dt = load ptr, ptr %9, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.cu
  store i8 0, ptr %i.du, align 1
  store ptr %i.ae, ptr %8, align 8, !alias.scope !1936
  %i.dv = load ptr, ptr %9, align 8               ; 3 uses
  %i.dw = icmp eq ptr %i.dv, %i.ac
  br i1 %i.dw, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %.noexc86.i.i.i.i
  %i.dx = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.dy)
  %i.dz = add nuw nsw i64 %i.dx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.dz, i1 false)
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.noexc86.i.i.i.i
  store ptr %i.dv, ptr %8, align 8, !alias.scope !1936
  %i.ea = load i64, ptr %i.ac, align 8
  store i64 %i.ea, ptr %i.ae, align 8, !alias.scope !1936
  %.pre.i.i.i.i.i = load i64, ptr %i.ad, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.an
  %i.eb = phi ptr [ %i.ae, %bb.an ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ec = phi i64 [ %i.dx, %bb.an ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 7 uses
  store i64 %i.ec, ptr %i.af, align 8, !alias.scope !1936
  store ptr %i.ac, ptr %9, align 8
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ac, align 8
  %i.ed = load i64, ptr %i.ag, align 8            ; 5 uses
  %i.ee = sub i64 9223372036854775807, %i.ed
  %i.ef = icmp ult i64 %i.ee, %i.ec
  br i1 %i.ef, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.508) #28
          to label %.noexc87.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87.i.i.i.i:                                 ; preds = %bb.ap
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.eg = add i64 %i.ed, %i.ec                    ; 3 uses
  %i.eh = load ptr, ptr %7, align 8               ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ah
  br i1 %i.ei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
  %i.ej = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ej)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
  %i.ek = load i64, ptr %i.ah, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.el = phi i64 [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.eg, %i.el
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ed ; 2 uses
  %cond.i.i.i.i.i.i.i.i = icmp eq i64 %i.ec, 1
  br i1 %cond.i.i.i.i.i.i.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.en = load i8, ptr %i.eb, align 1
  store i8 %i.en, ptr %i.em, align 1
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eb, i64 %i.ec, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ed, i64 noundef 0, ptr noundef %i.eb, i64 noundef %i.ec)
          to label %bb.av unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.aq
  store i64 %i.eg, ptr %i.ag, align 8
  %i.eo = load ptr, ptr %7, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  store i8 0, ptr %i.ep, align 1
  %i.eq = load ptr, ptr %8, align 8               ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ae
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i.i.i.i: ; preds = %bb.av
  %i.es = load i64, ptr %i.ae, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i.i.i.i
  %i.eu = load ptr, ptr %9, align 8               ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ac
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ew = load i64, ptr %i.ac, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0250.0267.i.i.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.aa
  br i1 %i.ez, label %._crit_edge.i.i.i.i, label %bb.m

bb.aw:                                            ; preds = %.noexc.i84.i.i.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.af, %bb.aj, %.invoke.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.ap
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %8, align 8               ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ae
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fd = load i64, ptr %i.ae, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i.i.i
  %.pn71.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp100, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ff = load ptr, ptr %9, align 8               ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ac
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i.i
  %i.fh = load i64, ptr %i.ac, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i.i, %bb.aw
  %.pn71.pn.i.i.i.i = phi { ptr, i32 } [ %i.fa, %bb.aw ], [ %.pn71.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i.i ], [ %.pn71.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.cc

bb.ax:                                            ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 %i.al, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al
  store i8 0, ptr %i.fk, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fm = load i8, ptr %i.fl, align 8, !range !41, !noundef !42
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %._crit_edge.i.i99.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i

._crit_edge.i.i99.i.i.i.i:                        ; preds = %bb.ax
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.fp = load i8, ptr %i.fo, align 8, !range !41, !noundef !42
  %i.fq = trunc nuw i8 %i.fp to i1
  %.str.163..str.618.i.i.i.i = select i1 %i.fq, ptr @.str.163, ptr @.str.618 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.fr, ptr %11, align 8
  %15 = load i8, ptr %.str.163..str.618.i.i.i.i, align 1
  store i8 %15, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.ft, align 1
  %i.fu = load ptr, ptr %i.a, align 8
  invoke fastcc void @_ZN2v88internal6torque12_GLOBAL__N_112_GLOBAL__N_120GenerateBoundsDCheckERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS1_9ClassTypeERKNS1_5FieldE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %._crit_edge.i.i99.i.i.i.i
  %i.fv = load ptr, ptr %11, align 8              ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fr
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i.i.i.i: ; preds = %bb.ay
  %i.fx = load i64, ptr %i.fr, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.i.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.645, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i.i.i.i
  %i.ga = load ptr, ptr %7, align 8
  %i.gb = load i64, ptr %i.ak, align 8
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ga, i64 noundef %i.gb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.bt ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.644, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull %.str.163..str.618.i.i.i.i, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111.i.i.i.i
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.646, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.i.i.i.i
  %i.gg = load ptr, ptr %5, align 8
  %i.gh = load i64, ptr %i.y, align 8
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.gg, i64 noundef %i.gh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit117.i.i.i.i unwind label %bb.bt

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit117.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i.i.i.i
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit117.i.i.i.i
  %i.gk = load i64, ptr %i.fj, align 8
  %i.gl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %i.gk, ptr noundef nonnull @.str.219, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i unwind label %bb.bt ; 0 uses

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i.i.i.i

bb.ba:                                            ; preds = %._crit_edge.i.i99.i.i.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %11, align 8              ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.fr
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i: ; preds = %bb.ba
  %i.gq = load i64, ptr %i.fr, align 8
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i.i.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.i.i.i.i, %bb.ax
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.100, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i
  %i.gt = load ptr, ptr %4, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.gt, i64 noundef %i.gv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit127.i.i.i.i unwind label %bb.bt

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit127.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125.i.i.i.i
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.647, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit127.i.i.i.i
  %i.gy = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque10TypeOracleES4_E4top_E) ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ha, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ha, ptr noundef nonnull align 1 dereferenceable(6) @.str.567, i64 6, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.hc, align 2
  %i.hd = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle14GetBuiltinTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129.i.i.i.i
  %i.he = load ptr, ptr %3, align 8               ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.ha
  br i1 %i.hf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i.i.i.i: ; preds = %bb.bb
  %i.hg = load i64, ptr %i.ha, align 8
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i.i.i.i

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129.i.i.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %3, align 8               ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.ha
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i: ; preds = %bb.bc
  %i.hl = load i64, ptr %i.ha, align 8
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i.i.i.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.hn = load ptr, ptr %i.n, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = invoke noundef zeroext i1 %i.hp(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef %i.hd)
          to label %bb.bd unwind label %bb.bt

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.hs = load i32, ptr %i.hr, align 4            ; 3 uses
  br i1 %i.hq, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  switch i32 %i.hs, label %bb.bi [
    i32 2, label %bb.bg
    i32 1, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA56_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(56) @.str.650) #28
          to label %bb.bh unwind label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %.044.i.i.i.i = phi ptr [ @.str.648, %bb.be ], [ @.str.649, %bb.bf ] ; 2 uses
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.651, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i.i.i.i: ; preds = %bb.bi
  %i.hu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.044.i.i.i.i) #27
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.044.i.i.i.i, i64 noundef %i.hu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i.i.i.i
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.400, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135.i.i.i.i
  %i.hx = load ptr, ptr %4, align 8
  %i.hy = load i64, ptr %i.gu, align 8
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.hx, i64 noundef %i.hy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit139.i.i.i.i unwind label %bb.bt ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit139.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137.i.i.i.i
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull @.str.293, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit139.i.i.i.i
  %i.ib = load ptr, ptr %10, align 8
  %i.ic = load i64, ptr %i.fj, align 8
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef %i.ib, i64 noundef %i.ic)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit143.i.i.i.i unwind label %bb.bt

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit143.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141.i.i.i.i
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef nonnull @.str.77, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145.i.i.i.i unwind label %bb.bt ; 0 uses

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRSoEZN2v88internal6torque12_GLOBAL__N_117CppClassGenerator22GenerateFieldAccessorsERKNS4_5FieldERSt6vectorIPS8_SaISB_EEE3$_2E9_M_invokeERKSt9_Any_dataS0_":bb.a
  %cond31.i.i.i.i = icmp eq i64 %i.cs, 1
  br i1 %cond31.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dp = load i8, ptr %.pre.i8.i.i.i, align 1
  store i8 %i.dp, ptr %i.do, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %.pre.i8.i.i.i, i64 %i.cs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i: ; preds = %bb.am, %bb.al, %.noexc12.i.i.i
  %i.dq = icmp eq ptr %.pre.i8.i.i.i, %i.ac
  br i1 %i.dq, label %.noexc4.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i
  %i.dr = load i64, ptr %i.ac, align 8
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.pre.i8.i.i.i, i64 noundef %i.ds) #30
  br label %.noexc4.i.i.i

.noexc4.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i
  store ptr %i.dn, ptr %11, align 8
  store i64 %.0.i7.i.i.i, ptr %i.ac, align 8
  br label %.noexc88.i.i.i.i

.noexc88.i.i.i.i:                                 ; preds = %.noexc4.i.i.i, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i64 %i.cu, ptr %i.ad, align 8
  %i.dt = load ptr, ptr %11, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.cu
  store i8 0, ptr %i.du, align 1
  store ptr %i.ae, ptr %10, align 8, !alias.scope !1979
  %i.dv = load ptr, ptr %11, align 8              ; 3 uses
  %i.dw = icmp eq ptr %i.dv, %i.ac
  br i1 %i.dw, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %.noexc88.i.i.i.i
  %i.dx = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.dy)
  %i.dz = add nuw nsw i64 %i.dx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.dz, i1 false)
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.noexc88.i.i.i.i
  store ptr %i.dv, ptr %10, align 8, !alias.scope !1979
  %i.ea = load i64, ptr %i.ac, align 8
  store i64 %i.ea, ptr %i.ae, align 8, !alias.scope !1979
  %.pre.i.i.i.i.i = load i64, ptr %i.ad, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.an
  %i.eb = phi ptr [ %i.ae, %bb.an ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ec = phi i64 [ %i.dx, %bb.an ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 7 uses
  store i64 %i.ec, ptr %i.af, align 8, !alias.scope !1979
  store ptr %i.ac, ptr %11, align 8
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ac, align 8
  %i.ed = load i64, ptr %i.ag, align 8            ; 5 uses
  %i.ee = sub i64 9223372036854775807, %i.ed
  %i.ef = icmp ult i64 %i.ee, %i.ec
  br i1 %i.ef, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.508) #28
          to label %.noexc89.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89.i.i.i.i:                                 ; preds = %bb.ap
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.eg = add i64 %i.ed, %i.ec                    ; 3 uses
  %i.eh = load ptr, ptr %9, align 8               ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ah
  br i1 %i.ei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
  %i.ej = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ej)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
  %i.ek = load i64, ptr %i.ah, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.el = phi i64 [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.eg, %i.el
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ed ; 2 uses
  %cond.i.i.i.i.i.i.i.i = icmp eq i64 %i.ec, 1
  br i1 %cond.i.i.i.i.i.i.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.en = load i8, ptr %i.eb, align 1
  store i8 %i.en, ptr %i.em, align 1
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eb, i64 %i.ec, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ed, i64 noundef 0, ptr noundef %i.eb, i64 noundef %i.ec)
          to label %bb.av unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.aq
  store i64 %i.eg, ptr %i.ag, align 8
  %i.eo = load ptr, ptr %9, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  store i8 0, ptr %i.ep, align 1
  %i.eq = load ptr, ptr %10, align 8              ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ae
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i.i.i: ; preds = %bb.av
  %i.es = load i64, ptr %i.ae, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i.i.i
  %i.eu = load ptr, ptr %11, align 8              ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ac
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ew = load i64, ptr %i.ac, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0260.0274.i.i.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.aa
  br i1 %i.ez, label %._crit_edge.i.i.i.i, label %bb.m

bb.aw:                                            ; preds = %.noexc.i86.i.i.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.af, %bb.aj, %.invoke.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.ap
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %10, align 8              ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ae
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fd = load i64, ptr %i.ae, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i.i.i.i
  %.pn75.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ff = load ptr, ptr %11, align 8              ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ac
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i
  %i.fh = load i64, ptr %i.ac, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i.i.i, %bb.aw
  %.pn75.pn.i.i.i.i = phi { ptr, i32 } [ %i.fa, %bb.aw ], [ %.pn75.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i.i.i ], [ %.pn75.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cm

bb.ax:                                            ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i64 %i.al, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al
  store i8 0, ptr %i.fk, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fm = load i8, ptr %i.fl, align 8, !range !41, !noundef !42
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %._crit_edge.i.i101.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i

._crit_edge.i.i101.i.i.i.i:                       ; preds = %bb.ax
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.fp = load i8, ptr %i.fo, align 8, !range !41, !noundef !42
  %i.fq = trunc nuw i8 %i.fp to i1
  %.str.163..str.618.i.i.i.i = select i1 %i.fq, ptr @.str.163, ptr @.str.618 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.fr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.fr, ptr %13, align 8
  %18 = load i8, ptr %.str.163..str.618.i.i.i.i, align 1
  store i8 %18, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.ft, align 1
  %i.fu = load ptr, ptr %i.a, align 8
  invoke fastcc void @_ZN2v88internal6torque12_GLOBAL__N_112_GLOBAL__N_120GenerateBoundsDCheckERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS1_9ClassTypeERKNS1_5FieldE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %._crit_edge.i.i101.i.i.i.i
  %i.fv = load ptr, ptr %13, align 8              ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fr
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i.i: ; preds = %bb.ay
  %i.fx = load i64, ptr %i.fr, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.645, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i.i
  %i.ga = load ptr, ptr %9, align 8
  %i.gb = load i64, ptr %i.ak, align 8
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ga, i64 noundef %i.gb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.bt ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.644, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull %.str.163..str.618.i.i.i.i, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113.i.i.i.i
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.646, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i.i.i.i
  %i.gg = load ptr, ptr %7, align 8
  %i.gh = load i64, ptr %i.y, align 8
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.gg, i64 noundef %i.gh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.i.i.i.i unwind label %bb.bt

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i.i.i.i
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.i.i.i.i
  %i.gk = load i64, ptr %i.fj, align 8
  %i.gl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef %i.gk, ptr noundef nonnull @.str.219, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i unwind label %bb.bt ; 0 uses

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i.i.i.i

bb.ba:                                            ; preds = %._crit_edge.i.i101.i.i.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %13, align 8              ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.fr
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i.i: ; preds = %bb.ba
  %i.gq = load i64, ptr %i.fr, align 8
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.body.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121.i.i.i.i, %bb.ax
  %i.gs = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque10TypeOracleES4_E4top_E) ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.gu, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gu, ptr noundef nonnull align 1 dereferenceable(6) @.str.567, i64 6, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 6, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.gw, align 2
  %i.gx = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle14GetBuiltinTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i
  %i.gy = load ptr, ptr %5, align 8               ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gu
  br i1 %i.gz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i127.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126.i.i.i.i: ; preds = %bb.bb
  %i.ha = load i64, ptr %i.gu, align 8
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i127.i.i.i.i

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i.i.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %5, align 8               ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gu
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i: ; preds = %bb.bc
  %i.hf = load i64, ptr %i.gu, align 8
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i127.i.i.i.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.hh = load ptr, ptr %i.n, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = invoke noundef zeroext i1 %i.hj(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef %i.gx)
          to label %bb.bd unwind label %bb.bt

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i127.i.i.i.i
  br i1 %i.hk, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.hm = load i32, ptr %i.hl, align 4
  switch i32 %i.hm, label %bb.bi [
    i32 2, label %bb.bg
    i32 1, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA57_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(57) @.str.682) #28
          to label %bb.bh unwind label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %.039.i.i.i.i = phi ptr [ @.str.680, %bb.be ], [ @.str.681, %bb.bf ] ; 2 uses
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.683, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129.i.i.i.i: ; preds = %bb.bi
  %i.ho = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.039.i.i.i.i) #27
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.039.i.i.i.i, i64 noundef %i.ho)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129.i.i.i.i
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.400, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131.i.i.i.i
  %i.hr = load ptr, ptr %6, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.hr, i64 noundef %i.ht)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135.i.i.i.i unwind label %bb.bt ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i.i.i.i
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.293, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137.i.i.i.i unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135.i.i.i.i
  %i.hw = load ptr, ptr %12, align 8
  %i.hx = load i64, ptr %i.fj, align 8
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.hw, i64 noundef %i.hx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit139.i.i.i.i unwind label %bb.bt

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit139.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137.i.i.i.i
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull @.str.684, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141.i.i.i.i unwind label %bb.bt ; 0 uses

bb.bj:                                            ; preds = %bb.bd
  %i.ia = load ptr, ptr %i.gs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ib, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ib, ptr noundef nonnull align 1 dereferenceable(6) @.str.559, i64 6, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.id, align 2
  %i.ie = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle14GetBuiltinTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.ia, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
end_hunk_1
