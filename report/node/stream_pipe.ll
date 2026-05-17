inline.NumInlined: 1760
inline.NumDeleted: 789
begin_hunk_0_@__cxx_global_var_init:bb.a
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i110: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i108
  %.pr.i111 = load ptr, ptr %4, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i112

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i112: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.3
  %i.po = phi ptr [ %.pr.i111, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i110 ], [ %i.pg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.3 ] ; 3 uses
  %.not.i.i1.i113 = icmp eq ptr %i.po, null
  br i1 %.not.i.i1.i113, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit115, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i112
  %i.pp = load ptr, ptr %i.bj, align 8
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.po to i64
  %i.ps = sub i64 %i.pq, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef %i.ps) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit115

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit115: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i112, %bb.q
  %i.pt = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.pu = load ptr, ptr %i.pt, align 8            ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit115
  %i.px = load i64, ptr %i.pv, align 8
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.py) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  %i.pz = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.qa = load ptr, ptr %i.pz, align 8            ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.qd = load i64, ptr %i.qb, align 8
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.1
  %i.qf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.qg = load ptr, ptr %i.qf, align 8            ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.1
  %i.qj = load i64, ptr %i.qh, align 8
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.2
  %i.ql = load ptr, ptr %5, align 8               ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2
  %i.qo = load i64, ptr %i.qm, align 8
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.qq = load ptr, ptr %2, align 8               ; 3 uses
  %i.qr = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not4.i.i.i119 = icmp eq ptr %i.qq, %i.qr
  br i1 %.not4.i.i.i119, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i127, label %.lr.ph.i.i.i120

.lr.ph.i.i.i120:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i123
  %.05.i.i.i121 = phi ptr [ %i.qx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i123 ], [ %i.qq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3 ] ; 3 uses
  %i.qs = load ptr, ptr %.05.i.i.i121, align 8    ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.05.i.i.i121, i64 16 ; 2 uses
  %i.qu = icmp eq ptr %i.qs, %i.qt
  br i1 %i.qu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122: ; preds = %.lr.ph.i.i.i120
  %i.qv = load i64, ptr %i.qt, align 8
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qw) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i123

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i123: ; preds = %.lr.ph.i.i.i120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122
  %i.qx = getelementptr inbounds nuw i8, ptr %.05.i.i.i121, i64 32 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.qx, %i.qr
  br i1 %.not.i.i.i124, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i125, label %.lr.ph.i.i.i120, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i125: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i123
  %.pr.i126 = load ptr, ptr %2, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i127

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i127: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3
  %i.qy = phi ptr [ %.pr.i126, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i125 ], [ %i.qq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3 ] ; 3 uses
  %.not.i.i1.i128 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i1.i128, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit130, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i127
  %i.qz = load ptr, ptr %i.w, align 8
  %i.ra = ptrtoint ptr %i.qz to i64
  %i.rb = ptrtoint ptr %i.qy to i64
  %i.rc = sub i64 %i.ra, %i.rb
  call void @_ZdlPvm(ptr noundef nonnull %i.qy, i64 noundef %i.rc) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit130

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit130: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i127, %bb.r
  %i.rd = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.re = load ptr, ptr %i.rd, align 8            ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit130
  %i.rh = load i64, ptr %i.rf, align 8
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.rk = load ptr, ptr %i.rj, align 8            ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.rn = load i64, ptr %i.rl, align 8
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.1
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.1
  %i.rt = load i64, ptr %i.rr, align 8
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.2
  %i.rv = load ptr, ptr %3, align 8               ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2
  %i.ry = load i64, ptr %i.rw, align 8
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.rz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.sa = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEED2Ev, ptr nonnull @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E) #21
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.3, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node10StreamPipeC2EPNS_10StreamBaseES2_N2v85LocalINS3_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN4node9AsyncWrapC2EPNS_11EnvironmentEN2v85LocalINS3_6ObjectEEENS0_12ProviderTypeEd(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.b, ptr %3, i32 noundef 38, double noundef -1.000000e+00) #21
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4node10StreamPipeE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <6 x i8> <i8 0, i8 0, i8 1, i8 0, i8 0, i8 0>, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4node10StreamPipe16ReadableListenerE, i64 16), ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4node10StreamPipe16WritableListenerE, i64 16), ptr %i.h, align 8
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node10StreamPipeC1EPNS_10StreamBaseES2_N2v85LocalINS3_6ObjectEEEE20error_and_abort_args) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN4node14StreamResource18PushStreamListenerEPNS_14StreamListenerE.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node14StreamResource18PushStreamListenerEPNS_14StreamListenerEE20error_and_abort_args_0) #21
  tail call void @abort() #22
  unreachable

_ZN4node14StreamResource18PushStreamListenerEPNS_14StreamListenerE.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.m, ptr %i.n, align 8
  store ptr %1, ptr %i.g, align 8
  store ptr %i.f, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.i, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN4node14StreamResource18PushStreamListenerEPNS_14StreamListenerE.exit8, label %bb.e, !prof !28

bb.e:                                             ; preds = %_ZN4node14StreamResource18PushStreamListenerEPNS_14StreamListenerE.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node14StreamResource18PushStreamListenerEPNS_14StreamListenerEE20error_and_abort_args_0) #21
  tail call void @abort() #22
  unreachable

_ZN4node14StreamResource18PushStreamListenerEPNS_14StreamListenerE.exit8: ; preds = %_ZN4node14StreamResource18PushStreamListenerEPNS_14StreamListenerE.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.r, ptr %i.s, align 8
  store ptr %2, ptr %i.i, align 8
  store ptr %i.h, ptr %i.q, align 8
  %i.t = load ptr, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %4, align 1
  ret void
}

declare void @_ZN4node9AsyncWrapC2EPNS_11EnvironmentEN2v85LocalINS3_6ObjectEEENS0_12ProviderTypeEd(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr, i32 noundef, double noundef) unnamed_addr #5

declare void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node10StreamPipeD2Ev(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4node10StreamPipeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 86 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !26, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4node10StreamPipe6UnpipeEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8, !range !26, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #21, !inline_history !30 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 1, ptr %i.a, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4node14StreamResource20RemoveStreamListenerEPNS_14StreamListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull %i.p) #21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZN4node10StreamPipe6UnpipeEb.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN4node14StreamResource20RemoveStreamListenerEPNS_14StreamListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull %i.v) #21
  br label %_ZN4node10StreamPipe6UnpipeEb.exit

_ZN4node10StreamPipe6UnpipeEb.exit:               ; preds = %bb.d, %bb.e, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN4node14StreamListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4node14StreamListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #21
  tail call void @_ZN4node9AsyncWrapD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node10StreamPipe6UnpipeEb(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 86 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !26, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8, !range !26, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 1, ptr %i.a, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4node14StreamResource20RemoveStreamListenerEPNS_14StreamListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull %i.p) #21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN4node14StreamResource20RemoveStreamListenerEPNS_14StreamListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull %i.v) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %1, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 560
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  store ptr %i.ab, ptr %2, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8
  %i.an = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  %.not.i1 = icmp eq ptr %i.an, null
  br i1 %.not.i1, label %bb.h, label %_ZNK4node17BaseObjectPtrImplINS_10StreamPipeELb0EE12pointer_dataEv.exit.i.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_10StreamPipeELb0EEC1EPS1_E20error_and_abort_args_0) #21
  tail call void @abort() #22
  unreachable

_ZNK4node17BaseObjectPtrImplINS_10StreamPipeELb0EE12pointer_dataEv.exit.i.i: ; preds = %bb.g
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  %i.ao = load ptr, ptr %i.w, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8            ; 5 uses
  %i.ar = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.i, label %_ZN4node17BaseObjectPtrImplINS_10StreamPipeELb0EEC2ERKS2_.exit, !prof !5

bb.i:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_10StreamPipeELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_10StreamPipeELb0EEC1EPS1_E20error_and_abort_args_0) #21
  tail call void @abort() #22
  unreachable

_ZN4node17BaseObjectPtrImplINS_10StreamPipeELb0EEC2ERKS2_.exit: ; preds = %_ZNK4node17BaseObjectPtrImplINS_10StreamPipeELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 2712
  %i.at = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !31 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 1, ptr %i.au, align 8, !noalias !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %i.av, align 8, !noalias !31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZNS_10StreamPipe6UnpipeEbE3$_0EE", i64 16), ptr %i.at, align 8, !noalias !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %0, ptr %i.aw, align 8, !noalias !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ay = ptrtoint ptr %0 to i64
  store i64 %i.ay, ptr %i.ax, align 8, !noalias !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 2728 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = atomicrmw add ptr %i.as, i64 1 seq_cst, align 8 ; 0 uses
  store ptr %i.at, ptr %i.az, align 8
  %.not.i.i2 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_10StreamPipeELb0EEC2ERKS2_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  store ptr %i.at, ptr %i.bc, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i

bb.k:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_10StreamPipeELb0EEC2ERKS2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 2720 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  store ptr %i.at, ptr %i.be, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i

_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i: ; preds = %bb.k, %bb.j
  %.sink9.i.i = phi ptr [ %i.bd, %bb.j ], [ %i.bf, %bb.k ] ; 2 uses
  %i.bg = load ptr, ptr %.sink9.i.i, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sink9.i.i) #21, !inline_history !36
  br label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i
end_hunk_0
