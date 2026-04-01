begin_hunk_0
_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit: ; preds = %bb.al, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = load ptr, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, align 8, !tbaa !30 ; 2 uses
  %i.cx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, i64 8), align 8, !tbaa !39 ; 5 uses
  %i.cy = load i64, ptr %i.bd, align 8, !tbaa !39 ; 9 uses
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread306, label %bb.ar

end_hunk_0
begin_hunk_1
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !31
  %i.dd = sext i8 %i.dc to i32
  %i.de = ptrtoint ptr %i.db to i64
  %invariant.op = sub i64 1, %i.cx
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.at, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ %i.dj, %bb.at ]
  %.02840.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.dh, %bb.at ]
  %i.df = add i64 %.041.i.i, %invariant.op        ; 2 uses
  %.not34.i.i.a = icmp eq i64 %i.df, 0
  br i1 %.not34.i.i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %14 = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef %i.dd, i64 noundef %i.df) #31 ; 4 uses
  %.not34.i.i = icmp eq ptr %14, null
  br i1 %.not34.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %14, ptr nonnull %i.cw, i64 %i.cx)
  %i.dg = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, label %bb.at
end_hunk_1
begin_hunk_2
          cleanup
  br label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.at, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.as, %bb.ar, %.sink.split.i, %_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit
  %15 = phi i64 [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit ], [ %i.cy, %bb.as ], [ 0, %bb.ar ], [ %.pre459, %.sink.split.i ], [ %i.dv, %_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit127 ], [ %i.cy, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ], [ %i.cy, %bb.at ], [ %i.cy, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.eh = load ptr, ptr %3, align 8, !tbaa !30
  %i.ei = invoke noundef ptr @_ZNK14arrow_vendored4date4tzdb11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 %15, ptr %i.eh)
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit130 unwind label %bb.bc
end_hunk_2
begin_hunk_3
  %i.ib = ptrtoint ptr %i.ia to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i185

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i185:  ; preds = %.lr.ph.i.i184, %bb.bz
  %.041.i.i186 = phi i64 [ %i.hy, %.lr.ph.i.i184 ], [ %i.ih, %bb.bz ]
  %.02840.i.i187 = phi ptr [ %i.hz, %.lr.ph.i.i184 ], [ %i.if, %bb.bz ]
  %i.ic = add i64 %.041.i.i186, -5
  %i.id = call ptr @memchr(ptr noundef %.02840.i.i187, i32 noundef 90, i64 noundef %i.ic) #31 ; 4 uses
  %.not34.i.i189 = icmp eq ptr %i.id, null
  br i1 %.not34.i.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i190

end_hunk_3
begin_hunk_4
  %.not33.i.i192 = icmp ult i64 %i.ih, 6
  br i1 %.not33.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i185, !llvm.loop !189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %bb.bz, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i185, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit180, %bb.by
  %i.ii = load ptr, ptr %9, align 8, !tbaa !61
  %i.ij = getelementptr i8, ptr %i.ii, i64 -24
  %i.ik = load i64, ptr %i.ij, align 8            ; 2 uses
end_hunk_4
begin_hunk_5
  %i.ld = ptrtoint ptr %i.lc to i64               ; 2 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i233

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i233:  ; preds = %.lr.ph.i.i232, %bb.cr
  %.041.i.i234 = phi i64 [ %i.la, %.lr.ph.i.i232 ], [ %i.lj, %bb.cr ]
  %.02840.i.i235 = phi ptr [ %i.lb, %.lr.ph.i.i232 ], [ %i.lh, %bb.cr ]
  %i.le = add i64 %.041.i.i234, -16
  %i.lf = call ptr @memchr(ptr noundef %.02840.i.i235, i32 noundef 111, i64 noundef %i.le) #31 ; 4 uses
  %.not34.i.i237 = icmp eq ptr %i.lf, null
  br i1 %.not34.i.i237, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.a, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i238

end_hunk_5
begin_hunk_6
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i246:  ; preds = %bb.ct, %.lr.ph.i.i245
  %.041.i.i247 = phi i64 [ %i.lo, %.lr.ph.i.i245 ], [ %i.lw, %bb.ct ]
  %.02840.i.i248 = phi ptr [ %i.lp, %.lr.ph.i.i245 ], [ %i.lu, %bb.ct ]
  %i.lq = call ptr @memchr(ptr noundef %.02840.i.i248, i32 noundef 39, i64 noundef %.041.i.i247) #31 ; 4 uses
  %.not34.i.i250 = icmp eq ptr %i.lq, null
  br i1 %.not34.i.i250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit254, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i251

end_hunk_6
begin_hunk_7
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef 18) #29
  br label %.loopexit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.a: ; preds = %bb.cr, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit241, %bb.cq, %.noexc228
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef 18) #29
  %i.mw = load ptr, ptr %11, align 8, !tbaa !61
  %i.mx = getelementptr i8, ptr %i.mw, i64 -24
end_hunk_7
begin_hunk_8
  %i.m = ptrtoint ptr %i.l to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.f
  %.033.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.s, %bb.f ]
  %.02132.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.q, %bb.f ]
  %i.n = add i64 %.033.i.i, -4
  %i.o = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef 112, i64 noundef %i.n) #31 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.o, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

end_hunk_8
begin_hunk_9
  %i.t = icmp eq ptr %i.o, %i.j
  br i1 %i.t, label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
  %i.u = icmp eq i64 %i.i, 10
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit

end_hunk_9
