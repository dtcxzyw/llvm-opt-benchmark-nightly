Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/SensApplication?download=true
inline.NumInlined: 863
inline.NumDeleted: 177
begin_hunk_0_@_ZN5Ipopt15SensApplication10InitializeEv:._crit_edge.i.i
.noexc94:                                         ; preds = %.noexc.i92
  store ptr %i.da, ptr %7, align 8, !tbaa !56
  %i.db = load i64, ptr %i.d, align 8, !tbaa !57
  store i64 %i.db, ptr %i.cw, align 8, !tbaa !55
  br label %._crit_edge.i.i91

._crit_edge.i.i91:                                ; preds = %.noexc94, %bb.r
  %i.dc = phi ptr [ %i.da, %.noexc94 ], [ %i.cw, %bb.r ] ; 2 uses
  switch i64 %i.cy, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i91
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !55
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !55
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr nonnull align 1 %i.cv, i64 %i.cy, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i91
  %i.de = load i64, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !54
  %i.dg = load ptr, ptr %7, align 8, !tbaa !56
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.di = load ptr, ptr %i.ck, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(112) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.v unwind label %bb.as      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cw
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.v
  %i.do = load i64, ptr %i.cw, align 8, !tbaa !55
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.dq = load ptr, ptr %6, align 8, !tbaa !56    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.co
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.ds = load i64, ptr %i.co, align 8, !tbaa !55
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.du = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !16
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !16
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.w, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit103

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100
  %i.dy = load ptr, ptr %i.ck, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(112) %i.ck) #11, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit103

_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit103: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100, %bb.w
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !25, !noalias !266 ; 10 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.eb, null      ; 2 uses
  br i1 %.not.i.i.i.i104, label %_ZN5Ipopt15SensApplication7OptionsEv.exit105, label %bb.x

bb.x:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit103
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !16, !noalias !266
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !16, !noalias !266
  br label %_ZN5Ipopt15SensApplication7OptionsEv.exit105

_ZN5Ipopt15SensApplication7OptionsEv.exit105:     ; preds = %bb.x, %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ef, ptr %8, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ef, ptr noundef nonnull align 1 dereferenceable(12) @.str.12, i64 12, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 12, ptr %i.eg, align 8, !tbaa !54
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i8 0, ptr %i.eh, align 4, !tbaa !55
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 154 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ej = load ptr, ptr %1, align 8, !tbaa !56    ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.ek, ptr %9, align 8, !tbaa !51
  %i.el = icmp eq ptr %i.ej, null
  br i1 %i.el, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN5Ipopt15SensApplication7OptionsEv.exit105
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #14
          to label %.noexc112 unwind label %bb.av

.noexc112:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %_ZN5Ipopt15SensApplication7OptionsEv.exit105
  %i.em = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ej) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 %i.em, ptr %i.c, align 8, !tbaa !57
  %i.en = icmp ugt i64 %i.em, 15
  br i1 %i.en, label %.noexc.i111, label %._crit_edge.i.i110

.noexc.i111:                                      ; preds = %bb.z
  %i.eo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc113 unwind label %bb.av ; 2 uses

.noexc113:                                        ; preds = %.noexc.i111
  store ptr %i.eo, ptr %9, align 8, !tbaa !56
  %i.ep = load i64, ptr %i.c, align 8, !tbaa !57
  store i64 %i.ep, ptr %i.ek, align 8, !tbaa !55
  br label %._crit_edge.i.i110

._crit_edge.i.i110:                               ; preds = %.noexc113, %bb.z
  %i.eq = phi ptr [ %i.eo, %.noexc113 ], [ %i.ek, %bb.z ] ; 2 uses
  switch i64 %i.em, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i110
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !55
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !55
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr nonnull align 1 %i.ej, i64 %i.em, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i110
  %i.es = load i64, ptr %i.c, align 8, !tbaa !57  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !54
  %i.eu = load ptr, ptr %9, align 8, !tbaa !56
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.es
  store i8 0, ptr %i.ev, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ew = load ptr, ptr %i.eb, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 136
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = invoke noundef zeroext i1 %i.ey(ptr noundef nonnull align 8 dereferenceable(112) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ad unwind label %bb.aw     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.fa = load ptr, ptr %9, align 8, !tbaa !56    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ek
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ad
  %i.fc = load i64, ptr %i.ek, align 8, !tbaa !55
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.fe = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ef
  br i1 %i.ff, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.fg = load i64, ptr %i.ef, align 8, !tbaa !55
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !16
  %i.fk = add nsw i32 %i.fj, -1                   ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !16
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.ae, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit122

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i119
  %i.fm = load ptr, ptr %i.eb, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(112) %i.eb) #11, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit122

_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit122: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i119, %bb.ae
  %i.fp = load i8, ptr %i.ei, align 2, !tbaa !62, !range !59, !noundef !60
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.af, label %bb.ba

bb.af:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit122
  %14 = load i8, ptr %i.bd, align 8, !tbaa !58, !range !59, !noundef !60
  %i.fr = trunc nuw i8 %14 to i1
  br i1 %i.fr, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !22 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.fw(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.38)
          to label %bb.ah unwind label %bb.az

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ei, align 2, !tbaa !62
  br label %bb.ba

bb.ai:                                            ; preds = %.noexc.i59
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.aj:                                            ; preds = %bb.e
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %3, align 8, !tbaa !56    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.r
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.aj
  %i.gb = load i64, ptr %i.r, align 8, !tbaa !55
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.fx, %bb.ai ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %i.fy, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.gd = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.o
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.gf = load i64, ptr %i.o, align 8, !tbaa !55
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !16
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 8, !tbaa !16
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.al, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.al:                                            ; preds = %bb.ak
  %i.gl = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(112) %i.k) #11, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.am:                                            ; preds = %.noexc.i73, %bb.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.an:                                            ; preds = %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.bf
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.an
  %i.gs = load i64, ptr %i.bf, align 8, !tbaa !55
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.am
  %.pn32 = phi { ptr, i32 } [ %i.go, %bb.am ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %i.gp, %bb.an ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.gu = load ptr, ptr %4, align 8, !tbaa !56    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ba
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.gw = load i64, ptr %i.ba, align 8, !tbaa !55
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br i1 %.not.i.i.i.i66, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !16
  %i.ha = add nsw i32 %i.gz, -1                   ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !16
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.ap, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.ap:                                            ; preds = %bb.ao
  %i.hc = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(112) %i.aw) #11, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.aq:                                            ; preds = %_ZN5Ipopt15SensApplication7OptionsEv.exit86
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ar:                                            ; preds = %.noexc.i92, %bb.q
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.as:                                            ; preds = %bb.u
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.cw
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.as
  %i.hk = load i64, ptr %i.cw, align 8, !tbaa !55
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ar
  %.pn36 = phi { ptr, i32 } [ %i.hg, %bb.ar ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.hh, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.hm = load ptr, ptr %6, align 8, !tbaa !56    ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.co
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.ho = load i64, ptr %i.co, align 8, !tbaa !55
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.aq
  %.pn36.pn = phi { ptr, i32 } [ %i.hf, %bb.aq ], [ %.pn36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %.not.i.i.i.i85, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !16
  %i.hs = add nsw i32 %i.hr, -1                   ; 2 uses
  store i32 %i.hs, ptr %i.hq, align 8, !tbaa !16
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.au, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.au:                                            ; preds = %bb.at
  %i.hu = load ptr, ptr %i.ck, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(112) %i.ck) #11, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.av:                                            ; preds = %.noexc.i111, %bb.y
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.aw:                                            ; preds = %bb.ac
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %9, align 8, !tbaa !56    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.ek
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.aw
  %i.ib = load i64, ptr %i.ek, align 8, !tbaa !55
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.av
  %.pn40 = phi { ptr, i32 } [ %i.hx, %bb.av ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.hy, %bb.aw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.id = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.ef
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.if = load i64, ptr %i.ef, align 8, !tbaa !55
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br i1 %.not.i.i.i.i104, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.ih = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !16
  %i.ij = add nsw i32 %i.ii, -1                   ; 2 uses
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !16
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.ay, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.ay:                                            ; preds = %bb.ax
  %i.il = load ptr, ptr %i.eb, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(112) %i.eb) #11, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.az:                                            ; preds = %bb.ag
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.ba:                                            ; preds = %bb.ah, %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit122
  %.pr = load i8, ptr %i.bd, align 8, !tbaa !58
  %i.ip = trunc nuw i8 %.pr to i1
  br i1 %i.ip, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iq = load i8, ptr %i.cu, align 1, !tbaa !61, !range !59, !noundef !60
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %.thread, label %bb.bh

.thread:                                          ; preds = %bb.af, %bb.bb, %bb.ba
  %i.is = load ptr, ptr %i.j, align 8, !tbaa !25, !noalias !267 ; 9 uses
  %.not.i.i.i.i155 = icmp eq ptr %i.is, null      ; 2 uses
  br i1 %.not.i.i.i.i155, label %_ZN5Ipopt15SensApplication7OptionsEv.exit156, label %bb.bc

bb.bc:                                            ; preds = %.thread
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !16, !noalias !267
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 8, !tbaa !16, !noalias !267
  br label %_ZN5Ipopt15SensApplication7OptionsEv.exit156

_ZN5Ipopt15SensApplication7OptionsEv.exit156:     ; preds = %bb.bc, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.iw, ptr %10, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 27, ptr %i.b, align 8, !tbaa !57
  %i.ix = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc159 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ; 2 uses

.noexc159:                                        ; preds = %_ZN5Ipopt15SensApplication7OptionsEv.exit156
  store ptr %i.ix, ptr %10, align 8, !tbaa !56
  %i.iy = load i64, ptr %i.b, align 8, !tbaa !57  ; 3 uses
  store i64 %i.iy, ptr %i.iw, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ix, ptr noundef nonnull align 1 dereferenceable(27) @.str.39, i64 27, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !54
  %i.ja = load ptr, ptr %10, align 8, !tbaa !56
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iy
  store i8 0, ptr %i.jb, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.jc, ptr %11, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.jc, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.jd, align 8, !tbaa !54
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.je, align 1, !tbaa !55
  %i.jf = load ptr, ptr %i.is, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef zeroext i1 %i.jh(ptr noundef nonnull align 8 dereferenceable(112) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.be     ; 0 uses

bb.bd:                                            ; preds = %.noexc159
  %i.jj = load ptr, ptr %11, align 8, !tbaa !56   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.jc
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.bd
  %i.jl = load i64, ptr %i.jc, align 8, !tbaa !55
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.jn = load ptr, ptr %10, align 8, !tbaa !56   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.iw
  br i1 %i.jo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.jp = load i64, ptr %i.iw, align 8, !tbaa !55
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.jr = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !16
  %i.jt = add nsw i32 %i.js, -1                   ; 2 uses
  store i32 %i.jt, ptr %i.jr, align 8, !tbaa !16
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit172.sink.split, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit172

bb.be:                                            ; preds = %.noexc159
  %i.jv = landingpad { ptr, i32 }
          cleanup
  %i.jw = load ptr, ptr %11, align 8, !tbaa !56   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.jc
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.be
  %i.jy = load i64, ptr %i.jc, align 8, !tbaa !55
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.ka = load ptr, ptr %10, align 8, !tbaa !56   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.iw
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.kc = load i64, ptr %i.iw, align 8, !tbaa !55
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.bf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZN5Ipopt15SensApplication7OptionsEv.exit156
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br i1 %.not.i.i.i.i155, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %.pn48.pn310 = phi { ptr, i32 } [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !16
  %i.kh = add nsw i32 %i.kg, -1                   ; 2 uses
  store i32 %i.kh, ptr %i.kf, align 8, !tbaa !16
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.bg, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.bg:                                            ; preds = %bb.bf
  %i.kj = load ptr, ptr %i.is, align 8, !tbaa !18
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(112) %i.is) #11, !inline_history !5
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit130

bb.bh:                                            ; preds = %bb.bb
  %i.km = load ptr, ptr %i.j, align 8, !tbaa !25, !noalias !268 ; 9 uses
  %.not.i.i.i.i181 = icmp eq ptr %i.km, null      ; 2 uses
  br i1 %.not.i.i.i.i181, label %_ZN5Ipopt15SensApplication7OptionsEv.exit182, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !16, !noalias !268
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kn, align 8, !tbaa !16, !noalias !268
  br label %_ZN5Ipopt15SensApplication7OptionsEv.exit182

_ZN5Ipopt15SensApplication7OptionsEv.exit182:     ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.kq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.kq, ptr %12, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 27, ptr %i.a, align 8, !tbaa !57
  %i.kr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc185 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ; 2 uses

.noexc185:                                        ; preds = %_ZN5Ipopt15SensApplication7OptionsEv.exit182
  store ptr %i.kr, ptr %12, align 8, !tbaa !56
  %i.ks = load i64, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.kr, ptr noundef nonnull align 1 dereferenceable(27) @.str.39, i64 27, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !54
  %i.ku = load ptr, ptr %12, align 8, !tbaa !56
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ks
  store i8 0, ptr %i.kv, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.kw, ptr %13, align 8, !tbaa !51
  store i16 28526, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.kx, align 8, !tbaa !54
  %i.ky = getelementptr inbounds nuw i8, ptr %13, i64 18
  store i8 0, ptr %i.ky, align 2, !tbaa !55
  %i.kz = load ptr, ptr %i.km, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = invoke noundef zeroext i1 %i.lb(ptr noundef nonnull align 8 dereferenceable(112) %i.km, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.bj unwind label %bb.bk     ; 0 uses

bb.bj:                                            ; preds = %.noexc185
  %i.ld = load ptr, ptr %13, align 8, !tbaa !56   ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.kw
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.bj
  %i.lf = load i64, ptr %i.kw, align 8, !tbaa !55
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.lh = load ptr, ptr %12, align 8, !tbaa !56   ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.kq
  br i1 %i.li, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
end_hunk_0
