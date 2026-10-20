Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game?download=true
inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Game15processKeyInputEv:bb.a
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = tail call noundef zeroext i1 %i.nv(ptr noundef nonnull align 8 dereferenceable(512) %i.ns, i32 noundef 44), !inline_history !20
  br i1 %i.nw, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  tail call void @_ZN4Game16checkZoomEnabledEv(ptr noundef nonnull align 8 dereferenceable(688) %0)
  br label %bb.dj

bb.db:                                            ; preds = %bb.cz
  %i.nx = load ptr, ptr %i.d, align 8, !tbaa !304 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !47
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = tail call noundef zeroext i1 %i.oa(ptr noundef nonnull align 8 dereferenceable(512) %i.nx, i32 noundef 45), !inline_history !20
  br i1 %i.ob, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !268
  tail call void @_ZN20QuicktuneShortcutter4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %i.od)
  br label %bb.dj

bb.dd:                                            ; preds = %bb.db
  %i.oe = load ptr, ptr %i.d, align 8, !tbaa !304 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !47
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = tail call noundef zeroext i1 %i.oh(ptr noundef nonnull align 8 dereferenceable(512) %i.oe, i32 noundef 46), !inline_history !20
  br i1 %i.oi, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !268
  tail call void @_ZN20QuicktuneShortcutter4prevEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ok)
  br label %bb.dj

bb.df:                                            ; preds = %bb.dd
  %i.ol = load ptr, ptr %i.d, align 8, !tbaa !304 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !47
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = tail call noundef zeroext i1 %i.oo(ptr noundef nonnull align 8 dereferenceable(512) %i.ol, i32 noundef 47), !inline_history !20
  br i1 %i.op, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !268
  tail call void @_ZN20QuicktuneShortcutter3incEv(ptr noundef nonnull align 8 dereferenceable(64) %i.or)
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  %i.os = load ptr, ptr %i.d, align 8, !tbaa !304 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !47
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = tail call noundef zeroext i1 %i.ov(ptr noundef nonnull align 8 dereferenceable(512) %i.os, i32 noundef 48), !inline_history !20
  br i1 %i.ow, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !268
  tail call void @_ZN20QuicktuneShortcutter3decEv(ptr noundef nonnull align 8 dereferenceable(64) %i.oy)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.at, %bb.ay, %bb.d, %bb.k, %bb.p, %bb.v, %bb.u, %bb.ae, %bb.ai, %bb.am, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.by, %bb.cc, %bb.cg, %bb.ck, %bb.co, %bb.cs, %bb.cw, %bb.da, %bb.de, %bb.dh, %bb.di, %bb.dg, %bb.dc, %bb.cy, %bb.cu, %bb.cq, %bb.cm, %bb.ci, %bb.ce, %bb.ca, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit95, %bb.ak, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.b
  %i.oz = load ptr, ptr %i.d, align 8, !tbaa !304 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !47
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = call noundef zeroext i1 %i.pc(ptr noundef nonnull align 8 dereferenceable(512) %i.oz, i32 noundef 4), !inline_history !15
  br i1 %i.pd, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 457 ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !859, !range !306, !noundef !213
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i8 0, ptr %i.pe, align 1, !tbaa !859
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 496
  store float 0.000000e+00, ptr %i.ph, align 8, !tbaa !676
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !268 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 40
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !193
  %.not = icmp eq i64 %i.pl, 0
  br i1 %.not, label %bb.ds, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  call void @_ZN20QuicktuneShortcutter10getMessageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(64) %i.pj)
  %i.po = load ptr, ptr %19, align 8, !tbaa !192
  %i.pp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !193
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.67") align 8 %18, i64 %i.pq, ptr %i.po)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 72
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !261 ; 2 uses
  %.not.i105 = icmp eq ptr %i.ps, null
  br i1 %.not.i105, label %_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN16StatusTextHelper14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(68) %i.ps, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107 unwind label %bb.dr

_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107: ; preds = %bb.do, %bb.dp
  %i.pt = load ptr, ptr %18, align 8, !tbaa !262  ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !54
  %i.px = shl i64 %i.pw, 2
  %i.py = add i64 %i.px, 4
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.py) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110: ; preds = %_ZN6GameUI14showStatusTextERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit107, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i108
  %i.pz = load ptr, ptr %19, align 8, !tbaa !192  ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !54
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.ds

bb.dq:                                            ; preds = %bb.dn
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116

bb.dr:                                            ; preds = %bb.dp
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = load ptr, ptr %18, align 8, !tbaa !262  ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114: ; preds = %bb.dr
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !54
  %i.qk = shl i64 %i.qj, 2
  %i.ql = add i64 %i.qk, 4
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.ql) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114, %bb.dq
  %.pn43 = phi { ptr, i32 } [ %i.qe, %bb.dq ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114 ], [ %i.qf, %bb.dr ]
  %i.qm = load ptr, ptr %19, align 8, !tbaa !192  ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.qo = icmp eq ptr %i.qm, %i.qn
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116
  %i.qp = load i64, ptr %i.qn, align 8, !tbaa !54
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.dt

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.dm
  ret void

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn38.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit82 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit104 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ]
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Game20processItemSelectionEPt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr nofree noundef captures(none) initializes((0, 2)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !531  ; 2 uses
  %i.e = tail call noundef zeroext i16 @_ZN6Player13getWieldIndexEv(ptr noundef nonnull align 8 dereferenceable(416) %i.d)
  store i16 %i.e, ptr %1, align 2, !tbaa !578
  %i.f = tail call noundef zeroext i16 @_ZN6Player21getMaxHotbarItemcountEv(ptr noundef nonnull align 8 dereferenceable(416) %i.d) ; 3 uses
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i16 %i.f, -1                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !304  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(512) %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 673
  %i.p = load i8, ptr %i.o, align 1, !tbaa !248, !range !306, !noundef !213
  %i.q = trunc nuw i8 %i.p to i1
  %spec.store.select = select i1 %i.q, i32 %i.n, i32 0 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 674
  %i.s = load i8, ptr %i.r, align 2, !tbaa !249, !range !306, !noundef !213
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = sub nsw i32 0, %spec.store.select
  %spec.select = select i1 %i.t, i32 %i.u, i32 %spec.store.select
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !304  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(512) %i.v, i32 noundef 27), !inline_history !20
  %.029 = select i1 %i.z, i32 -1, i32 %spec.select
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !304 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(512) %i.aa, i32 noundef 26), !inline_history !20
  %.1 = select i1 %i.ae, i32 1, i32 %.029         ; 2 uses
  %i.af = icmp slt i32 %.1, 0
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = load i16, ptr %1, align 2, !tbaa !578   ; 2 uses
  %i.ah = icmp ult i16 %i.ag, %i.h
  %i.ai = add i16 %i.ag, 1
  %spec.select38 = select i1 %i.ah, i16 %i.ai, i16 0
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i16, ptr %1, align 2, !tbaa !578   ; 2 uses
  %.not35 = icmp eq i16 %i.aj, 0
  %i.ak = add i16 %i.aj, -1
  %i.al = select i1 %.not35, i16 %i.h, i16 %i.ak
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink = phi i16 [ %i.al, %bb.e ], [ %spec.select38, %bb.c ]
  store i16 %.sink, ptr %1, align 2, !tbaa !578
  br label %.preheader

.preheader:                                       ; preds = %.sink.split, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.am = add nuw nsw i32 %indvars.iv, 49
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !304 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(512) %i.an, i32 noundef %i.am), !inline_history !20
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %2 = trunc nuw i32 %indvars.iv to i16
  store i16 %2, ptr %1, align 2, !tbaa !578
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i32 %indvars.iv.next to i16
  %exitcond.not = icmp eq i16 %i.f, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !1378

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.as = load ptr, ptr @g_touchcontrols, align 8, !tbaa !662 ; 2 uses
  %.not37 = icmp eq ptr %i.as, null
  br i1 %.not37, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.at = tail call i32 @_ZN13TouchControls18getHotbarSelectionEv(ptr noundef nonnull align 8 dereferenceable(712) %i.as) ; 2 uses
  %i.au = and i32 %i.at, 65536
  %.not39 = icmp eq i32 %i.au, 0
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.extract.trunc = trunc i32 %i.at to i16
  store i16 %.sroa.0.0.extract.trunc, ptr %1, align 2, !tbaa !578
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %.loopexit
  %i.av = load i16, ptr %1, align 2, !tbaa !578
  %. = tail call i16 @llvm.umin.i16(i16 %i.av, i16 %i.h)
  store i16 %., ptr %1, align 2, !tbaa !578
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
  store i16 0, ptr %i.e, align 2, !tbaa !792
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !189
  store i8 0, ptr %i.g, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store i16 -1, ptr %i.h, align 8, !tbaa !853
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !189
  store i8 0, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i16 0, ptr %i.l, align 2, !tbaa !792
  store i32 0, ptr %i.i, align 16, !tbaa !858
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  store ptr %i.n, ptr %i.m, align 16, !tbaa !189
  store i8 0, ptr %i.n, align 16, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i16 -1, ptr %i.o, align 16, !tbaa !854
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV11IDropAction, i64 16), ptr %i.a, align 16, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 178
  %i.q = zext i1 %1 to i16
  store i16 %i.q, ptr %i.p, align 2, !tbaa !857
  store i32 1, ptr %i.b, align 8, !tbaa !858
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.113, i64 noundef 4) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !264
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !531
  %i.w = tail call noundef zeroext i16 @_ZN6Player13getWieldIndexEv(ptr noundef nonnull align 8 dereferenceable(416) %i.v)
  store i16 %i.w, ptr %i.h, align 8, !tbaa !853
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !264  ; 2 uses
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
begin_hunk_1_@_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_:bb.a
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !222
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !215 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !185   ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !47
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !222
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #34
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !846  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !259 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !54
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !54
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #36
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !25

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !715
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !716
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !715    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !716
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #36
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !846  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !259 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !54
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !54
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 80) #36
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !25

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !715
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !716
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #28

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

declare void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.67") align 8, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z17unescape_enrichedIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.67") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !564
  store i32 0, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.a
  %.not33 = icmp eq i64 %1, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader, %.backedge
  %.031 = phi i64 [ %i.s, %.backedge ], [ 0, %.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.031
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76   ; 2 uses
  %i.e = icmp eq i32 %i.d, 27
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph32
  %i.f = add nuw i64 %.031, 1                     ; 3 uses
  %i.g = icmp eq i64 %i.f, %1
  br i1 %i.g, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !76
  %i.j = icmp eq i32 %i.i, 40
  br i1 %i.j, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.031, 2                     ; 3 uses
  %i.l = icmp ult i64 %i.k, %1
  br i1 %i.l, label %.lr.ph, label %.backedge

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.128 = phi i64 [ %i.q, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.128
  %i.n = load i32, ptr %i.m, align 4, !tbaa !76   ; 2 uses
  %.not = icmp eq i32 %i.n, 41
  br i1 %.not, label %.backedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.o = icmp eq i32 %i.n, 92
  %i.p = zext i1 %i.o to i64
  %spec.select = add nuw i64 %.128, 1
  %i.q = add i64 %spec.select, %i.p               ; 3 uses
  %i.r = icmp ult i64 %i.q, %1
  br i1 %i.r, label %.lr.ph, label %.backedge, !llvm.loop !1709

.backedge:                                        ; preds = %.lr.ph, %bb.e, %bb.c, %bb.d, %bb.h
  %.3.sink = phi i64 [ %.031, %bb.h ], [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.q, %bb.e ], [ %.128, %.lr.ph ]
  %i.s = add i64 %.3.sink, 1                      ; 2 uses
  %i.t = icmp ult i64 %i.s, %1
  br i1 %i.t, label %.lr.ph32, label %._crit_edge, !llvm.loop !1710

bb.f:                                             ; preds = %.lr.ph32
  %i.u = load i64, ptr %i.b, align 8, !tbaa !564  ; 4 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f
  %i.y = icmp ult i64 %i.u, 4
  tail call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.a, align 8, !tbaa !54
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ab = icmp ugt i64 %i.v, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !262
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  %i.ac = phi ptr [ %.pre.i.i, %.noexc ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.u
  store i32 %i.d, ptr %i.ad, align 4, !tbaa !76
  store i64 %i.v, ptr %i.b, align 8, !tbaa !564
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.v
  store i32 0, ptr %i.ae, align 4, !tbaa !76
  br label %.backedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.a
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ai = shl i64 %i.ah, 2
  %i.aj = add i64 %i.ai, 4
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp45

._crit_edge:                                      ; preds = %bb.b, %.backedge, %.preheader
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE7emplaceIJRS9_RfEEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !539  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !193  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !193  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #34 ; 2 uses
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
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !542 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !28

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !193  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #34 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_fESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_RfEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_fESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_RfEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, float>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, float>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %0, ptr %4, align 8, !tbaa !949
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_fESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRS7_RfEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !952
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_fESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
end_hunk_1
