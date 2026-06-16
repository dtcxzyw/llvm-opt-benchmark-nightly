inline.NumInlined: 2087
inline.NumDeleted: 818
begin_hunk_0_@__cxx_global_var_init:bb.a
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i108

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i108: ; preds = %.lr.ph.i.i.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i107
  %i.pn = getelementptr inbounds nuw i8, ptr %.05.i.i.i106, i64 32 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.pn, %i.ph
  br i1 %.not.i.i.i109, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i110, label %.lr.ph.i.i.i105, !llvm.loop !17

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
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef %i.ps) #25
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
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.py) #25
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
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #25
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
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.2
  %i.ql = load ptr, ptr %5, align 8               ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2
  %i.qo = load i64, ptr %i.qm, align 8
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
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
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qw) #25
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
  call void @_ZdlPvm(ptr noundef nonnull %i.qy, i64 noundef %i.rc) #25
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
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #25
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
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #25
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
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.2
  %i.rv = load ptr, ptr %3, align 8               ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2
  %i.ry = load i64, ptr %i.rw, align 8
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.rz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.sa = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEED2Ev, ptr nonnull @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E) #22
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.3, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #22
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node10webstorage7StorageC2EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, ptr %2, i64 %3, ptr nofree readonly captures(address_is_null) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3008
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN4node10BaseObjectC2EPNS_5RealmEN2v85LocalINS3_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b, ptr %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node10webstorage7StorageE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = tail call ptr @_ZN2v83Map3NewEPNS_7IsolateE(ptr noundef %i.i) #22 ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.k) #22
  store ptr null, ptr %i.g, align 8
  br label %_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit

_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit:    ; preds = %bb.a, %bb.b
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %_ZN2v814PersistentBaseINS_3MapEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, label %_ZN2v814PersistentBaseINS_3MapEE3NewEPNS_7IsolateEPS1_.exit

_ZN2v814PersistentBaseINS_3MapEE3NewEPNS_7IsolateEPS1_.exit: ; preds = %_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit
  %i.n = load i64, ptr %i.j, align 8
  %i.o = tail call noundef ptr @_ZN2v812api_internal18GlobalizeReferenceEPNS_8internal7IsolateEm(ptr noundef %i.i, i64 noundef %i.n) #22
  store ptr %i.o, ptr %i.g, align 8
  br label %_ZN2v814PersistentBaseINS_3MapEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit

_ZN2v814PersistentBaseINS_3MapEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit: ; preds = %_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit, %_ZN2v814PersistentBaseINS_3MapEE3NewEPNS_7IsolateEPS1_.exit
  %i.p = load ptr, ptr %i.f, align 8              ; 2 uses
  store ptr null, ptr %i.f, align 8
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v814PersistentBaseINS_3MapEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit
  %i.q = tail call i32 @sqlite3_close(ptr noundef nonnull %i.p) #22
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK4node10webstorage12conn_deleterclEP7sqlite3E20error_and_abort_args) #22
  tail call void @abort() #23
  unreachable

_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit: ; preds = %_ZN2v814PersistentBaseINS_3MapEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.s, ptr %5, align 8
  %i.t = icmp eq ptr %4, null
  %i.u = icmp ne i64 %3, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #23
  unreachable

bb.f:                                             ; preds = %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit
  %i.v = icmp ugt i64 %3, 15
  br i1 %i.v, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = icmp slt i64 %3, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = add nuw i64 %3, 1                        ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.i
  %i.z = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #24 ; 2 uses
  store ptr %i.z, ptr %5, align 8
  store i64 %3, ptr %i.s, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.f
  %i.aa = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.s, %bb.f ] ; 3 uses
  switch i64 %3, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %4, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %4, i64 %3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %3, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %3
  store i8 0, ptr %i.ad, align 1
  %i.ae = load ptr, ptr %i.c, align 8             ; 6 uses
  %i.af = icmp eq ptr %i.ae, %i.d
  %i.ag = load ptr, ptr %5, align 8               ; 6 uses
  %i.ah = icmp eq ptr %i.ag, %i.s                 ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  br i1 %i.ah, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  br i1 %i.ah, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ai = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %.not21.i = icmp eq ptr %5, %i.c
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %6, !prof !5

6:                                                ; preds = %bb.m
  switch i64 %i.ai, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %6
  %i.ak = load i8, ptr %i.ag, align 1
  store i8 %i.ak, ptr %i.ae, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %6
  %i.al = load i64, ptr %i.ac, align 8            ; 2 uses
  store i64 %i.al, ptr %i.e, align 8
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1
  %.pre.i = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ag, ptr %i.c, align 8
  %i.ao = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ao, ptr %i.e, align 8
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ap = load i64, ptr %i.d, align 8
  store ptr %i.ag, ptr %i.c, align 8
  %i.aq = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.aq, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ae, ptr %5, align 8
  store i64 %i.ap, ptr %i.s, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.p, %bb.q
  %7 = phi ptr [ %i.ae, %bb.p ], [ %i.s, %bb.q ], [ %i.ag, %bb.m ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %7, align 1
  %i.ar = load ptr, ptr %5, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.s
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.at = load i64, ptr %i.s, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

declare void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare ptr @_ZN2v83Map3NewEPNS_7IsolateE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node10webstorage7StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node10webstorage7StorageE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_close(ptr noundef nonnull %i.b) #22
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK4node10webstorage12conn_deleterclEP7sqlite3E20error_and_abort_args) #22
  tail call void @abort() #23
  unreachable

_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.f) #22
  store ptr null, ptr %i.e, align 8
  br label %_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit

_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit:    ; preds = %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEEaSEDn.exit, %bb.d
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit
  %i.i = tail call i32 @sqlite3_close(ptr noundef nonnull %i.h) #22
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEED2Ev.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK4node10webstorage12conn_deleterclEP7sqlite3E20error_and_abort_args) #22
  tail call void @abort() #23
  unreachable

_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEED2Ev.exit: ; preds = %_ZN2v814PersistentBaseINS_3MapEE5ResetEv.exit, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN4node10BaseObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI7sqlite3N4node10webstorage12conn_deleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK4node10webstorage12conn_deleterclEP7sqlite3.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @sqlite3_close(ptr noundef nonnull %i.a) #22
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK4node10webstorage12conn_deleterclEP7sqlite3.exit, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK4node10webstorage12conn_deleterclEP7sqlite3E20error_and_abort_args) #22
  tail call void @abort() #23
  unreachable

_ZNK4node10webstorage12conn_deleterclEP7sqlite3.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4node10BaseObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node10webstorage7StorageD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4node10webstorage7StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #25
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4node10webstorage7Storage10MemoryInfoEPNS_13MemoryTrackerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::Local.408", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4node13MemoryTracker10TrackFieldIN2v83MapEEEvPKcRKNS2_14PersistentBaseIT_EES5_.exit, label %_ZNK2v814PersistentBaseINS_3MapEE6IsWeakEv.exit.i

_ZNK2v814PersistentBaseINS_3MapEE6IsWeakEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 3
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %_ZN4node13MemoryTracker10TrackFieldIN2v83MapEEEvPKcRKNS2_14PersistentBaseIT_EES5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v814PersistentBaseINS_3MapEE6IsWeakEv.exit.i
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = load i64, ptr %i.b, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = add i64 %i.j, 560
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN2v89LocalBaseINS_3MapEE3NewEPNS_7IsolateEPS1_.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.h) #22
  br label %_ZN2v89LocalBaseINS_3MapEE3NewEPNS_7IsolateEPS1_.exit.i

_ZN2v89LocalBaseINS_3MapEE3NewEPNS_7IsolateEPS1_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i4.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i4.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8
  store i64 %i.i, ptr %.0.i4.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v89LocalBaseINS_3MapEE3NewEPNS_7IsolateEPS1_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !29
  %i.ad = icmp eq ptr %i.y, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !29
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  br label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.y, %bb.d ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, label %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i

_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i: ; preds = %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #22, !inline_history !32
  br i1 %i.ar, label %bb.f, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i

bb.f:                                             ; preds = %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  br label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i
end_hunk_0
