begin_hunk_0
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.p, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ %i.dg, %bb.p ]
  %.02840.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.de, %bb.p ]
  %i.dc = add i64 %.041.i.i, -30                  ; 2 uses
  %.not34.i.i.a = icmp eq i64 %i.dc, 0
  br i1 %.not34.i.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %37 = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef 47, i64 noundef %i.dc) #28 ; 4 uses
  %.not34.i.i = icmp eq ptr %37, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(31) %37, ptr noundef nonnull dereferenceable(31) @.str.513, i64 31)
  %i.dd = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.p
end_hunk_0
begin_hunk_1
  %.not = icmp eq i64 %i.dj, -1
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread386, !prof !634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %bb.o, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  invoke void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.189) #29
          to label %bb.q unwind label %bb.v

end_hunk_1
