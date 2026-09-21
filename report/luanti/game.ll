Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game?download=true
inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Game15processKeyInputEv:bb.a
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = tail call noundef zeroext i1 %i.nw(ptr noundef nonnull align 8 dereferenceable(512) %i.nt, i32 noundef 44), !inline_history !20
  br i1 %i.nx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  tail call void @_ZN4Game16checkZoomEnabledEv(ptr noundef nonnull align 8 dereferenceable(688) %0)
  br label %bb.dl

bb.dd:                                            ; preds = %bb.db
  %i.ny = load ptr, ptr %i.d, align 8, !tbaa !305 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !47
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = tail call noundef zeroext i1 %i.ob(ptr noundef nonnull align 8 dereferenceable(512) %i.ny, i32 noundef 45), !inline_history !20
  br i1 %i.oc, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !269
  tail call void @_ZN20QuicktuneShortcutter4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %i.oe)
  br label %bb.dl

bb.df:                                            ; preds = %bb.dd
  %i.of = load ptr, ptr %i.d, align 8, !tbaa !305 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !47
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = tail call noundef zeroext i1 %i.oi(ptr noundef nonnull align 8 dereferenceable(512) %i.of, i32 noundef 46), !inline_history !20
  br i1 %i.oj, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !269
  tail call void @_ZN20QuicktuneShortcutter4prevEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ol)
  br label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.om = load ptr, ptr %i.d, align 8, !tbaa !305 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !47
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = tail call noundef zeroext i1 %i.op(ptr noundef nonnull align 8 dereferenceable(512) %i.om, i32 noundef 47), !inline_history !20
  br i1 %i.oq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !269
  tail call void @_ZN20QuicktuneShortcutter3incEv(ptr noundef nonnull align 8 dereferenceable(64) %i.os)
  br label %bb.dl

bb.dj:                                            ; preds = %bb.dh
  %i.ot = load ptr, ptr %i.d, align 8, !tbaa !305 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !47
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = tail call noundef zeroext i1 %i.ow(ptr noundef nonnull align 8 dereferenceable(512) %i.ot, i32 noundef 48), !inline_history !20
  br i1 %i.ox, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !269
  tail call void @_ZN20QuicktuneShortcutter3decEv(ptr noundef nonnull align 8 dereferenceable(64) %i.oz)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.av, %bb.ba, %bb.d, %bb.k, %bb.p, %bb.v, %bb.u, %bb.ag, %bb.ak, %bb.ao, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.ca, %bb.ce, %bb.ci, %bb.cm, %bb.cq, %bb.cu, %bb.cy, %bb.dc, %bb.dg, %bb.dj, %bb.dk, %bb.di, %bb.de, %bb.da, %bb.cw, %bb.cs, %bb.co, %bb.ck, %bb.cg, %bb.cc, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit95, %bb.am, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.b
  %i.pa = load ptr, ptr %i.d, align 8, !tbaa !305 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !47
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = call noundef zeroext i1 %i.pd(ptr noundef nonnull align 8 dereferenceable(512) %i.pa, i32 noundef 4), !inline_history !15
  br i1 %i.pe, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 457 ; 2 uses
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !860, !range !307, !noundef !213
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i8 0, ptr %i.pf, align 1, !tbaa !860
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 496
  store float 0.000000e+00, ptr %i.pi, align 8, !tbaa !677
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !269 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !193
  %.not = icmp eq i64 %i.pm, 0
  br i1 %.not, label %bb.du, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  call void @_ZN20QuicktuneShortcutter10getMessageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(64) %i.pk)
  %i.pp = load ptr, ptr %19, align 8, !tbaa !192
  %i.pq = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !193
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.67") align 8 %18, i64 %i.pr, ptr %i.pp)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 72
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !262 ; 2 uses
  %.not.i105 = icmp eq ptr %i.pt, null
  br i1 %.not.i105, label %_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN16StatusTextHelper14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(68) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107 unwind label %bb.dt

_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107: ; preds = %bb.dq, %bb.dr
  %i.pu = load ptr, ptr %18, align 8, !tbaa !263  ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107
  %i.px = load i64, ptr %i.pv, align 8, !tbaa !54
  %i.py = shl i64 %i.px, 2
  %i.pz = add i64 %i.py, 4
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.pz) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110: ; preds = %_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i108
  %i.qa = load ptr, ptr %19, align 8, !tbaa !192  ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !54
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.du

bb.ds:                                            ; preds = %bb.dp
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116

bb.dt:                                            ; preds = %bb.dr
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qh = load ptr, ptr %18, align 8, !tbaa !263  ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.qj = icmp eq ptr %i.qh, %i.qi
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114: ; preds = %bb.dt
  %i.qk = load i64, ptr %i.qi, align 8, !tbaa !54
  %i.ql = shl i64 %i.qk, 2
  %i.qm = add i64 %i.ql, 4
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qm) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114, %bb.ds
  %.pn43 = phi { ptr, i32 } [ %i.qf, %bb.ds ], [ %i.qg, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114 ], [ %i.qg, %bb.dt ]
  %i.qn = load ptr, ptr %19, align 8, !tbaa !192  ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !54
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.dv

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.do
  ret void

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn38.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.kf, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit104 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ]
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game20processItemSelectionEPt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree noundef captures(none) initializes((0, 2)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !532  ; 2 uses
  %i.e = tail call noundef zeroext i16 @_ZN6Player13getWieldIndexEv(ptr noundef nonnull align 8 dereferenceable(416) %i.d)
  store i16 %i.e, ptr %1, align 2, !tbaa !629
  %i.f = tail call noundef zeroext i16 @_ZN6Player21getMaxHotbarItemcountEv(ptr noundef nonnull align 8 dereferenceable(416) %i.d) ; 3 uses
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i16 %i.f, -1                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !305  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(512) %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 673
  %i.p = load i8, ptr %i.o, align 1, !tbaa !249, !range !307, !noundef !213
  %i.q = trunc nuw i8 %i.p to i1
  %spec.store.select = select i1 %i.q, i32 %i.n, i32 0 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 674
  %i.s = load i8, ptr %i.r, align 2, !tbaa !250, !range !307, !noundef !213
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = sub nsw i32 0, %spec.store.select
  %spec.select = select i1 %i.t, i32 %i.u, i32 %spec.store.select
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !305  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(512) %i.v, i32 noundef 27), !inline_history !20
  %.029 = select i1 %i.z, i32 -1, i32 %spec.select
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !305 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(512) %i.aa, i32 noundef 26), !inline_history !20
  %.1 = select i1 %i.ae, i32 1, i32 %.029         ; 2 uses
  %i.af = icmp slt i32 %.1, 0
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = load i16, ptr %1, align 2, !tbaa !629   ; 2 uses
  %i.ah = icmp ult i16 %i.ag, %i.h
  %i.ai = add i16 %i.ag, 1
  %spec.select38 = select i1 %i.ah, i16 %i.ai, i16 0
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i16, ptr %1, align 2, !tbaa !629   ; 2 uses
  %.not35 = icmp eq i16 %i.aj, 0
  %i.ak = add i16 %i.aj, -1
  %i.al = select i1 %.not35, i16 %i.h, i16 %i.ak
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink = phi i16 [ %i.al, %bb.e ], [ %spec.select38, %bb.c ]
  store i16 %.sink, ptr %1, align 2, !tbaa !629
  br label %.preheader

.preheader:                                       ; preds = %.sink.split, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.am = add nuw nsw i32 %indvars.iv, 49
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !305 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(512) %i.an, i32 noundef %i.am), !inline_history !20
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %2 = trunc nuw i32 %indvars.iv to i16
  store i16 %2, ptr %1, align 2, !tbaa !629
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i32 %indvars.iv.next to i16
  %exitcond.not = icmp eq i16 %i.f, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !1378

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.as = load ptr, ptr @g_touchcontrols, align 8, !tbaa !663 ; 2 uses
  %.not37 = icmp eq ptr %i.as, null
  br i1 %.not37, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.at = tail call i32 @_ZN13TouchControls18getHotbarSelectionEv(ptr noundef nonnull align 8 dereferenceable(712) %i.as) ; 2 uses
  %i.au = and i32 %i.at, 65536
  %.not39 = icmp eq i32 %i.au, 0
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.extract.trunc = trunc i32 %i.at to i16
  store i16 %.sroa.0.0.extract.trunc, ptr %1, align 2, !tbaa !629
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %.loopexit
  %i.av = load i16, ptr %1, align 2, !tbaa !629
  %. = tail call i16 @llvm.umin.i16(i16 %i.av, i16 %i.h)
  store i16 %., ptr %1, align 2, !tbaa !629
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game16dropSelectedItemEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #33 ; 18 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(184) %i.a, i8 0, i64 184, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 16, !tbaa !189
  store i8 0, ptr %i.d, align 16, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 0, ptr %i.e, align 2, !tbaa !793
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !189
  store i8 0, ptr %i.g, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store i16 -1, ptr %i.h, align 8, !tbaa !854
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !189
  store i8 0, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i16 0, ptr %i.l, align 2, !tbaa !793
  store i32 0, ptr %i.i, align 16, !tbaa !859
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  store ptr %i.n, ptr %i.m, align 16, !tbaa !189
  store i8 0, ptr %i.n, align 16, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i16 -1, ptr %i.o, align 16, !tbaa !855
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV11IDropAction, i64 16), ptr %i.a, align 16, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 178
  %i.q = zext i1 %1 to i16
  store i16 %i.q, ptr %i.p, align 2, !tbaa !858
  store i32 1, ptr %i.b, align 8, !tbaa !859
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.113, i64 noundef 4) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !265
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !532
  %i.w = tail call noundef zeroext i16 @_ZN6Player13getWieldIndexEv(ptr noundef nonnull align 8 dereferenceable(416) %i.v)
  store i16 %i.w, ptr %i.h, align 8, !tbaa !854
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !265  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(1674) %i.x, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game17toggleAutoforwardEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = load ptr, ptr @g_settings, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 18, ptr %i.b, align 8, !tbaa !190
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %1, align 8, !tbaa !192
  %i.f = load i64, ptr %i.b, align 8, !tbaa !190  ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.e, ptr noundef nonnull align 1 dereferenceable(18) @.str.103, i64 18, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !193
  %i.h = load ptr, ptr %1, align 8, !tbaa !192
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.j = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 4 uses

bb.a:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %1, align 8, !tbaa !192    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.d, align 8, !tbaa !54
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.o = load ptr, ptr @g_settings, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 18, ptr %i.a, align 8, !tbaa !190
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %bb.e   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.q, ptr %2, align 8, !tbaa !192
  %i.r = load i64, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.q, ptr noundef nonnull align 1 dereferenceable(18) @.str.103, i64 18, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !193
  %i.t = load ptr, ptr %2, align 8, !tbaa !192
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.v = select i1 %i.j, ptr @.str.230, ptr @.str.222
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !189
  %i.x = select i1 %i.j, i64 5, i64 4             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(4) %i.v, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !193
  %.sroa.sel.v.sroa.sel.v = select i1 %i.j, i64 21, i64 20
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 1, !tbaa !54
  %i.z = invoke noundef zeroext i1 @_ZN8Settings3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(236) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %.noexc15
  %i.aa = load ptr, ptr %3, align 8, !tbaa !192   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.w
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.b
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !54
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ae = load ptr, ptr %2, align 8, !tbaa !192   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !54
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78
  %.str.134..str.133 = select i1 %i.j, ptr @.str.134, ptr @.str.133
  call void @_ZN6GameUI24showTranslatedStatusTextEPKc(ptr noundef nonnull align 8 dereferenceable(122) %i.aj, ptr noundef nonnull %.str.134..str.133)
  ret void

bb.c:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.d:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !192   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

end_hunk_0
