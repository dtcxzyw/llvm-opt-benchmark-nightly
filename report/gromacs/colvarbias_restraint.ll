Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_restraint?download=true
inline.NumInlined: 2288
inline.NumDeleted: 431
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN29colvarbias_restraint_harmonicC2EPKc:bb.a
  store ptr %i.i, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  store ptr %i.o, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %0, align 8, !tbaa !16
  %i.w = getelementptr i8, ptr %i.v, i64 -32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  store ptr %i.u, ptr %i.y, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %0, align 8, !tbaa !16
  %i.ac = getelementptr i8, ptr %i.ab, i64 -40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %0, align 8, !tbaa !16
  %i.ai = getelementptr i8, ptr %i.ah, i64 -48
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = getelementptr i8, ptr %i.an, i64 -168
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i8 0, i64 72, i1 false)
  %i.as = load ptr, ptr %0, align 8, !tbaa !16
  %i.at = getelementptr i8, ptr %i.as, i64 -168
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 0, ptr %i.aw, align 8, !tbaa !123
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ax, align 8, !tbaa !200
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 18 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.ba, i64 -152
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.bi, i64 -160
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.ay, i64 %i.bk
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %i.ay, i64 %i.bq
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.bv = getelementptr i8, ptr %i.bu, i64 -32
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.ay, i64 %i.bw
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.cb = getelementptr i8, ptr %i.ca, i64 -40
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %i.ay, i64 %i.cc
  store ptr %i.bz, ptr %i.cd, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.ch = getelementptr i8, ptr %i.cg, i64 -48
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ay, i64 %i.ci
  store ptr %i.cf, ptr %i.cj, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.cn = getelementptr i8, ptr %i.cm, i64 -168
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %i.ay, i64 %i.co
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !16
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.cr = getelementptr i8, ptr %i.cq, i64 -168   ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.ay, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 9
  store i8 0, ptr %i.cu, align 1, !tbaa !124
  %i.cv = load i64, ptr %i.cr, align 8
  %i.cw = getelementptr inbounds i8, ptr %i.ay, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  store i8 0, ptr %i.cx, align 1, !tbaa !131
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> splat (double -1.000000e+00), ptr %i.cy, align 8, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cz, align 8, !tbaa !66
  %i.da = load ptr, ptr %1, align 8               ; 2 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr i8, ptr %i.da, i64 -152
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds i8, ptr %0, i64 %i.de
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = load ptr, ptr %0, align 8, !tbaa !16
  %i.dj = getelementptr i8, ptr %i.di, i64 -160
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %i.dk
  store ptr %i.dh, ptr %i.dl, align 8, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %0, align 8, !tbaa !16
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.dq
  store ptr %i.dn, ptr %i.dr, align 8, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load ptr, ptr %0, align 8, !tbaa !16
  %i.dv = getelementptr i8, ptr %i.du, i64 -32
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %0, i64 %i.dw
  store ptr %i.dt, ptr %i.dx, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %0, align 8, !tbaa !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 -40
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %0, i64 %i.ec
  store ptr %i.dz, ptr %i.ed, align 8, !tbaa !16
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load ptr, ptr %0, align 8, !tbaa !16
  %i.eh = getelementptr i8, ptr %i.eg, i64 -48
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %0, i64 %i.ei
  store ptr %i.ef, ptr %i.ej, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %0, align 8, !tbaa !16
  %i.en = getelementptr i8, ptr %i.em, i64 -168
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds i8, ptr %0, i64 %i.eo
  store ptr %i.el, ptr %i.ep, align 8, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.er = load ptr, ptr %i.eq, align 8
  store ptr %i.er, ptr %i.ay, align 8, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load ptr, ptr %0, align 8, !tbaa !16
  %i.ev = getelementptr i8, ptr %i.eu, i64 -176
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %i.ew
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN29colvarbias_restraint_harmonicC1EPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  tail call void @_ZN11colvarparseC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  invoke void @_ZN10colvardepsC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_ZN10colvarbiasC2EPKc(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT29colvarbias_restraint_harmonic, i64 296), ptr noundef %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  invoke void @_ZN13colvarbias_tiC2EPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT29colvarbias_restraint_harmonic, i64 320), ptr noundef %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1044
  store i32 0, ptr %i.i, align 4, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 0, ptr %i.j, align 8, !tbaa !130
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i8 0, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store double -1.000000e+00, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i8 1, ptr %i.n, align 8, !tbaa !196
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.o, i8 0, i64 73, i1 false)
  store <4 x i8> zeroinitializer, ptr %i.h, align 8, !tbaa !192
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> splat (double -1.000000e+00), ptr %i.q, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.r, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-152, 104) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 736), ptr %i.e, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-176, 120) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 176), ptr %0, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-304, 280) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 1144), ptr %i.c, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-72, 64) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 1496), ptr %i.a, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-56, 48) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 1616), ptr %i.b, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-136, 104) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 1800), ptr %i.d, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-200, 152) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 2104), ptr %i.g, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-168, 120) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 464), ptr %i.p, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-152, 104) (i8, ptr @_ZTV29colvarbias_restraint_harmonic, i64 2408), ptr %i.l, align 8, !tbaa !16
  ret void

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10colvarbiasD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT29colvarbias_restraint_harmonic, i64 296)) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  tail call void @_ZN10colvardepsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.b) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.s, %bb.e ]
  tail call void @_ZN11colvarparseD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.a) #27
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN11colvarparseC2Ev(ptr noundef nonnull align 8 dereferenceable(320)) unnamed_addr #4

declare void @_ZN10colvardepsC2Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

declare void @_ZN10colvarbiasC2EPKc(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN13colvarbias_tiC2EPKc(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN13colvarbias_tiD2Ev(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN10colvarbiasD2Ev(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN10colvardepsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11colvarparseD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #28
  br label %_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable
}

declare noundef i32 @_ZN12colvarmodule12cite_featureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(632), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef double @_ZNK6colvar5dist2ERK11colvarvalueS2_(ptr noundef nonnull align 8 dereferenceable(4624), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: uwtable
define noundef double @_ZTv0_n128_NK29colvarbias_restraint_harmonic19restraint_potentialEm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -128
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -176
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !195
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = getelementptr i8, ptr %i.e, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = shl i64 %1, 32
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.r = ashr exact i64 %i.p, 29
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = load double, ptr %i.u, align 8, !tbaa !251 ; 2 uses
  %i.w = fmul double %i.v, %i.v
  %i.x = fdiv double %i.k, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 672
  %i.z = getelementptr i8, ptr %i.e, i64 -152
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw [168 x i8], ptr %i.ad, i64 %1
  %i.af = tail call noundef double @_ZNK6colvar5dist2ERK11colvarvalueS2_(ptr noundef nonnull align 8 dereferenceable(4624) %i.t, ptr noundef nonnull align 8 dereferenceable(168) %i.y, ptr noundef nonnull align 8 dereferenceable(168) %i.ae)
  %i.ag = fmul double %i.x, %i.af
  ret double %i.ag
}

declare void @_ZNK6colvar11dist2_lgradERK11colvarvalueS2_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8, ptr noundef nonnull align 8 dereferenceable(4624), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: uwtable
define void @_ZTv0_n136_NK29colvarbias_restraint_harmonic15restraint_forceEm(ptr dead_on_unwind noalias writable sret(%class.colvarvalue) align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -136
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZNK29colvarbias_restraint_harmonic15restraint_forceEm(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 noundef %2)
  ret void
}

; Function Attrs: uwtable
define noundef double @_ZTv0_n144_NK29colvarbias_restraint_harmonic24d_restraint_potential_dkEm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -144
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.j = shl i64 %1, 32
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.l = ashr exact i64 %i.j, 29
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 472
  %i.p = load double, ptr %i.o, align 8, !tbaa !251 ; 2 uses
  %i.q = fmul double %i.p, %i.p
  %i.r = fdiv double 5.000000e-01, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 672
  %i.t = getelementptr i8, ptr %i.e, i64 -152
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw [168 x i8], ptr %i.x, i64 %1
  %i.z = tail call noundef double @_ZNK6colvar5dist2ERK11colvarvalueS2_(ptr noundef nonnull align 8 dereferenceable(4624) %i.n, ptr noundef nonnull align 8 dereferenceable(168) %i.s, ptr noundef nonnull align 8 dereferenceable(168) %i.y)
  %i.aa = fmul double %i.r, %i.z
  ret double %i.aa
}

; Function Attrs: uwtable
define noundef nonnull ptr @_ZTv0_n96_N29colvarbias_restraint_harmonic16write_traj_labelERSo(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -96
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr i8, ptr %i.e, i64 -160
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
end_hunk_0
begin_hunk_1_@_ZTv0_n72_N29colvarbias_restraint_harmonic17energy_differenceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -72
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef double @_ZN29colvarbias_restraint_harmonic17energy_differenceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret double %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN35colvarbias_restraint_harmonic_wallsC2EPKc(ptr noundef nonnull align 8 dereferenceable(248) initializes((0, 248)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -152
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.j, i64 -160
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  store ptr %i.i, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  store ptr %i.o, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %0, align 8, !tbaa !16
  %i.w = getelementptr i8, ptr %i.v, i64 -32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  store ptr %i.u, ptr %i.y, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %0, align 8, !tbaa !16
  %i.ac = getelementptr i8, ptr %i.ab, i64 -40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %0, align 8, !tbaa !16
  %i.ai = getelementptr i8, ptr %i.ah, i64 -48
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = getelementptr i8, ptr %i.an, i64 -168
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !16
  %i.ar = load ptr, ptr %0, align 8, !tbaa !16
  %i.as = getelementptr i8, ptr %i.ar, i64 -168   ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  store i8 0, ptr %i.av, align 1, !tbaa !124
  %i.aw = load i64, ptr %i.as, align 8
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 11
  store i8 0, ptr %i.ay, align 1, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double -1.000000e+00), ptr %i.az, align 8, !tbaa !66
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.ba, align 8, !tbaa !66
  %i.bb = load ptr, ptr %1, align 8               ; 2 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.bb, i64 -152
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %0, align 8, !tbaa !16
  %i.bk = getelementptr i8, ptr %i.bj, i64 -160
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  store ptr %i.bi, ptr %i.bm, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %0, align 8, !tbaa !16
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %0, align 8, !tbaa !16
  %i.bw = getelementptr i8, ptr %i.bv, i64 -32
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx
  store ptr %i.bu, ptr %i.by, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %0, align 8, !tbaa !16
  %i.cc = getelementptr i8, ptr %i.cb, i64 -40
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  store ptr %i.ca, ptr %i.ce, align 8, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %0, align 8, !tbaa !16
  %i.ci = getelementptr i8, ptr %i.ch, i64 -48
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %0, i64 %i.cj
  store ptr %i.cg, ptr %i.ck, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %0, align 8, !tbaa !16
  %i.co = getelementptr i8, ptr %i.cn, i64 -168
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %0, i64 %i.cp
  store ptr %i.cm, ptr %i.cq, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.cs, i8 0, i64 144, i1 false)
  store <2 x double> splat (double -1.000000e+00), ptr %i.ct, align 8, !tbaa !66
  %i.cu = load ptr, ptr %0, align 8, !tbaa !16
  %i.cv = getelementptr i8, ptr %i.cu, i64 -40
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %i.cw
  invoke void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120) %i.cx, i32 noundef 4, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.cy = load ptr, ptr %0, align 8, !tbaa !16
  %i.cz = getelementptr i8, ptr %i.cy, i64 -40
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %0, i64 %i.da
  invoke void @_ZN10colvardeps11set_enabledEib(ptr noundef nonnull align 8 dereferenceable(120) %i.db, i32 noundef 4, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dd) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.de) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.df) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dg) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dh) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cs) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.di) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cr) #27
  resume { ptr, i32 } %i.dc
}

declare void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN10colvardeps11set_enabledEib(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN35colvarbias_restraint_harmonic_wallsC1EPKc(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  tail call void @_ZN11colvarparseC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  invoke void @_ZN10colvardepsC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  invoke void @_ZN10colvarbiasC2EPKc(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT35colvarbias_restraint_harmonic_walls, i64 216), ptr noundef %1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  invoke void @_ZN13colvarbias_tiC2EPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT35colvarbias_restraint_harmonic_walls, i64 240), ptr noundef %1)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double -1.000000e+00, ptr %i.f, align 8, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 1, ptr %i.g, align 8, !tbaa !196
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1156
  store i32 0, ptr %i.j, align 4, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i32 0, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i8 0, i64 64, i1 false)
  store <4 x i8> zeroinitializer, ptr %i.i, align 8, !tbaa !192
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double -1.000000e+00), ptr %i.m, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.n, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-152, 104) (i8, ptr @_ZTV35colvarbias_restraint_harmonic_walls, i64 464), ptr %i.e, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-168, 144) (i8, ptr @_ZTV35colvarbias_restraint_harmonic_walls, i64 168), ptr %0, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-304, 280) (i8, ptr @_ZTV35colvarbias_restraint_harmonic_walls, i64 872), ptr %i.c, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-72, 64) (i8, ptr @_ZTV35colvarbias_restraint_harmonic_walls, i64 1224), ptr %i.a, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-56, 48) (i8, ptr @_ZTV35colvarbias_restraint_harmonic_walls, i64 1344), ptr %i.b, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-136, 104) (i8, ptr @_ZTV35colvarbias_restraint_harmonic_walls, i64 1528), ptr %i.d, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-200, 152) (i8, ptr @_ZTV35colvarbias_restraint_harmonic_walls, i64 1832), ptr %i.h, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 0, i64 144, i1 false)
  store <2 x double> splat (double -1.000000e+00), ptr %i.w, align 8, !tbaa !66
  invoke void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i32 noundef 4, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %0, align 8, !tbaa !16
  %i.y = getelementptr i8, ptr %i.x, i64 -40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  invoke void @_ZN10colvardeps11set_enabledEib(ptr noundef nonnull align 8 dereferenceable(120) %i.aa, i32 noundef 4, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #27
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #27
  tail call void @_ZN27colvarbias_restraint_movingD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT35colvarbias_restraint_harmonic_walls, i64 272)) #27
  tail call void @_ZN13colvarbias_tiD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT35colvarbias_restraint_harmonic_walls, i64 240)) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.ad, %bb.i ]
  tail call void @_ZN10colvarbiasD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT35colvarbias_restraint_harmonic_walls, i64 216)) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.ac, %bb.h ]
  tail call void @_ZN10colvardepsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.b) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.ab, %bb.g ]
  tail call void @_ZN11colvarparseD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.a) #27
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN27colvarbias_restraint_movingD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -152
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  store ptr %i.h, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %0, align 8, !tbaa !16
  %i.p = getelementptr i8, ptr %i.o, i64 -32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  store ptr %i.n, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %0, align 8, !tbaa !16
  %i.v = getelementptr i8, ptr %i.u, i64 -40
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  store ptr %i.t, ptr %i.x, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16
  %i.ab = getelementptr i8, ptr %i.aa, i64 -48
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #28
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZNK11colvarvaluecvdEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !63     ; 2 uses
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN11colvarvalue9type_descB5cxx11ENS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.b = load ptr, ptr %5, align 8, !tbaa !132, !noalias !685
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77, !noalias !685 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !133, !alias.scope !686
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !77, !alias.scope !686
  store i8 0, ptr %i.e, align 8, !tbaa !134, !alias.scope !686
  %i.g = add i64 %i.d, 41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !77, !alias.scope !686
  %i.i = add i64 %i.h, -4611686018427387863
  %i.j = icmp ult i64 %i.i, 41
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.94, i64 noundef 41)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !77, !alias.scope !686
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #30
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.d ; 0 uses

end_hunk_1
begin_hunk_2_@_ZN27colvarbias_restraint_linearC2EPKc:bb.a
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  store ptr %i.o, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %0, align 8, !tbaa !16
  %i.w = getelementptr i8, ptr %i.v, i64 -32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  store ptr %i.u, ptr %i.y, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %0, align 8, !tbaa !16
  %i.ac = getelementptr i8, ptr %i.ab, i64 -40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %0, align 8, !tbaa !16
  %i.ai = getelementptr i8, ptr %i.ah, i64 -48
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = getelementptr i8, ptr %i.an, i64 -168
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i8 0, i64 72, i1 false)
  %i.as = load ptr, ptr %0, align 8, !tbaa !16
  %i.at = getelementptr i8, ptr %i.as, i64 -168
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 0, ptr %i.aw, align 8, !tbaa !123
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ax, align 8, !tbaa !200
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 18 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.ba, i64 -152
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.bi, i64 -160
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.ay, i64 %i.bk
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %i.ay, i64 %i.bq
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.bv = getelementptr i8, ptr %i.bu, i64 -32
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.ay, i64 %i.bw
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.cb = getelementptr i8, ptr %i.ca, i64 -40
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %i.ay, i64 %i.cc
  store ptr %i.bz, ptr %i.cd, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.ch = getelementptr i8, ptr %i.cg, i64 -48
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ay, i64 %i.ci
  store ptr %i.cf, ptr %i.cj, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.cn = getelementptr i8, ptr %i.cm, i64 -168
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %i.ay, i64 %i.co
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !16
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.cr = getelementptr i8, ptr %i.cq, i64 -168   ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.ay, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 9
  store i8 0, ptr %i.cu, align 1, !tbaa !124
  %i.cv = load i64, ptr %i.cr, align 8
  %i.cw = getelementptr inbounds i8, ptr %i.ay, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  store i8 0, ptr %i.cx, align 1, !tbaa !131
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> splat (double -1.000000e+00), ptr %i.cy, align 8, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cz, align 8, !tbaa !66
  %i.da = load ptr, ptr %1, align 8               ; 2 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr i8, ptr %i.da, i64 -152
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds i8, ptr %0, i64 %i.de
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = load ptr, ptr %0, align 8, !tbaa !16
  %i.dj = getelementptr i8, ptr %i.di, i64 -160
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %i.dk
  store ptr %i.dh, ptr %i.dl, align 8, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %0, align 8, !tbaa !16
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.dq
  store ptr %i.dn, ptr %i.dr, align 8, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load ptr, ptr %0, align 8, !tbaa !16
  %i.dv = getelementptr i8, ptr %i.du, i64 -32
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %0, i64 %i.dw
  store ptr %i.dt, ptr %i.dx, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %0, align 8, !tbaa !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 -40
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %0, i64 %i.ec
  store ptr %i.dz, ptr %i.ed, align 8, !tbaa !16
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load ptr, ptr %0, align 8, !tbaa !16
  %i.eh = getelementptr i8, ptr %i.eg, i64 -48
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %0, i64 %i.ei
  store ptr %i.ef, ptr %i.ej, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %0, align 8, !tbaa !16
  %i.en = getelementptr i8, ptr %i.em, i64 -168
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds i8, ptr %0, i64 %i.eo
  store ptr %i.el, ptr %i.ep, align 8, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.er = load ptr, ptr %i.eq, align 8
  store ptr %i.er, ptr %i.ay, align 8, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load ptr, ptr %0, align 8, !tbaa !16
  %i.ev = getelementptr i8, ptr %i.eu, i64 -176
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %i.ew
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !16
  %i.ey = load ptr, ptr %0, align 8, !tbaa !16
  %i.ez = getelementptr i8, ptr %i.ey, i64 -176
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds i8, ptr %0, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i8 0, ptr %i.fc, align 8, !tbaa !196
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27colvarbias_restraint_linearC1EPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  tail call void @_ZN11colvarparseC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  invoke void @_ZN10colvardepsC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_ZN10colvarbiasC2EPKc(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT27colvarbias_restraint_linear, i64 296), ptr noundef %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  invoke void @_ZN13colvarbias_tiC2EPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT27colvarbias_restraint_linear, i64 320), ptr noundef %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1044
  store i32 0, ptr %i.i, align 4, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 0, ptr %i.j, align 8, !tbaa !130
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i8 0, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store double -1.000000e+00, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.o, i8 0, i64 73, i1 false)
  store <4 x i8> zeroinitializer, ptr %i.h, align 8, !tbaa !192
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> splat (double -1.000000e+00), ptr %i.q, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.r, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-152, 104) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 736), ptr %i.e, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-176, 120) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 176), ptr %0, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-304, 280) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 1144), ptr %i.c, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-72, 64) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 1496), ptr %i.a, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-56, 48) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 1616), ptr %i.b, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-136, 104) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 1800), ptr %i.d, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-200, 152) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 2104), ptr %i.g, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-168, 120) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 464), ptr %i.p, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-152, 104) (i8, ptr @_ZTV27colvarbias_restraint_linear, i64 2408), ptr %i.l, align 8, !tbaa !16
  store i8 0, ptr %i.n, align 8, !tbaa !196
  ret void

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10colvarbiasD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT27colvarbias_restraint_linear, i64 296)) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  tail call void @_ZN10colvardepsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.b) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.s, %bb.e ]
  tail call void @_ZN11colvarparseD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.a) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: uwtable
define noundef double @_ZTv0_n72_N27colvarbias_restraint_linear17energy_differenceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -72
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.j = load double, ptr %i.i, align 8, !tbaa !45 ; 2 uses
  %i.k = getelementptr i8, ptr %i.e, i64 -176
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !195
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !257 ; 0 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(128) %i.d), !inline_history !257 ; 0 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 248 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !45
  %i.ab = fsub double %i.aa, %i.j
  store double %i.j, ptr %i.z, align 8, !tbaa !45
  %i.ac = getelementptr i8, ptr %i.v, i64 -176
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %i.o, ptr %i.af, align 8, !tbaa !195
  ret double %i.ab
}

declare noundef double @_ZNK11colvarvalue3sumEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: uwtable
define noundef double @_ZTv0_n128_NK27colvarbias_restraint_linear19restraint_potentialEm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -128
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef double @_ZNK27colvarbias_restraint_linear19restraint_potentialEm(ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 noundef %1)
  ret double %i.e
}

declare void @_ZN11colvarvalue8set_onesEd(ptr noundef nonnull align 8 dereferenceable(168), double noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define void @_ZTv0_n136_NK27colvarbias_restraint_linear15restraint_forceEm(ptr dead_on_unwind noalias writable sret(%class.colvarvalue) align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -136
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZNK27colvarbias_restraint_linear15restraint_forceEm(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 noundef %2)
  ret void
}

; Function Attrs: uwtable
define noundef double @_ZTv0_n144_NK27colvarbias_restraint_linear24d_restraint_potential_dkEm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -144
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef double @_ZNK27colvarbias_restraint_linear24d_restraint_potential_dkEm(ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 noundef %1)
  ret double %i.e
}

; Function Attrs: uwtable
define noundef nonnull ptr @_ZTv0_n96_N27colvarbias_restraint_linear16write_traj_labelERSo(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -96
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr i8, ptr %i.e, i64 -160
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN10colvarbias16write_traj_labelERSo(ptr noundef nonnull align 8 dereferenceable(312) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN35colvarbias_restraint_centers_moving16write_traj_labelERSo(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN29colvarbias_restraint_k_moving16write_traj_labelERSo(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: uwtable
define noundef nonnull ptr @_ZTv0_n104_N27colvarbias_restraint_linear10write_trajERSo(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -104
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN27colvarbias_restraint_linear10write_trajERSo(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define void @_ZN30colvarbias_restraint_histogramC2EPKc(ptr noundef nonnull align 8 dereferenceable(425) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN12colvarmodule8vector1dIdEC2Em.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN10colvarbiasC2EPKc(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.a, ptr noundef %2)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.j, i64 -32
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  store ptr %i.i, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.n, i8 0, i64 104, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
end_hunk_2
