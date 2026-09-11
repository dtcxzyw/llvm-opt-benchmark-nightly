Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_sample?download=true
inline.NumInlined: 1843
inline.NumDeleted: 893
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6duckdb6vectorIjLb1ESaIjEEixEm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ReservoirSample11SimpleMergeERS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !120
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit: ; preds = %bb.b, %bb.c
  %.06.i = phi i64 [ %i.h, %bb.b ], [ %i.q, %bb.c ]
  %i.r = icmp eq i64 %.06.i, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  %i.s = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.bh, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.x = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56
  %.not.i56 = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i56, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !120
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58

bb.g:                                             ; preds = %bb.e
  %i.ae = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58: ; preds = %bb.f, %bb.g
  %.06.i57 = phi i64 [ %i.ad, %bb.f ], [ %i.am, %bb.g ]
  %i.an = icmp eq i64 %.06.i57, 0
  br i1 %i.an, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58
  %i.ao = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !121 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !122
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !18
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.j
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

_ZN6duckdb15SelectionVectorC2ERKS0_.exit:         ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, %bb.i, %bb.k
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !123
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !123
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !121 ; 8 uses
  store <2 x ptr> %i.aw, ptr %i.be, align 8, !tbaa !122
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb15SelectionVectorC2ERKS0_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bh, align 8, !tbaa !125
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !126
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !128
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29, !inline_history !3
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29, !inline_history !3
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i59, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.o ], [ %i.bu, %bb.p ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.q, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !49

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %_ZN6duckdb15SelectionVectorC2ERKS0_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !120
  %i.bz = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !48
  %i.cc = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !48
  br label %bb.bh

bb.r:                                             ; preds = %bb.h, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58
  %i.ce = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !48
  %i.ch = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !48
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !48
  %i.co = uitofp i64 %i.ck to double
  %i.cp = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !48
  %i.cs = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %i.ct = insertelement <2 x i64> %i.cs, i64 %i.cr, i64 1
  %i.cu = uitofp <2 x i64> %i.ct to <2 x double>
  %i.cv = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fdiv <2 x double> %i.cu, %i.cw          ; 3 uses
  %3 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cx) ; 2 uses
  %4 = fcmp olt double %3, 1.000000e+00
  %5 = fsub double 1.000000e+00, %3
  %6 = extractelement <2 x double> %i.cx, i64 1   ; 2 uses
  %i.cy = fadd double %6, %5
  %.052 = select i1 %4, double %i.cy, double %6   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !134
  %i.db = uitofp i64 %i.da to double              ; 2 uses
  %7 = extractelement <2 x double> %i.cx, i64 0   ; 2 uses
  %i.dc = fcmp ogt double %7, %.052
  br i1 %i.dc, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.dd = fmul double %7, %i.db
  %i.de = tail call double @llvm.round.f64(double %i.dd)
  %i.df = fptoui double %i.de to i64
  %i.dg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56
  %.not.i61 = icmp eq ptr %i.di, %i.dk
  br i1 %.not.i61, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !120
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63

bb.u:                                             ; preds = %bb.s
  %i.dn = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !62
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !54
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63: ; preds = %bb.t, %bb.u
  %.06.i62 = phi i64 [ %i.dm, %bb.t ], [ %i.dv, %bb.u ]
  %i.dw = tail call noundef i64 @llvm.umin.i64(i64 %i.df, i64 %.06.i62) ; 2 uses
  %i.dx = load i64, ptr %i.cz, align 8, !tbaa !134
  %i.dy = sub i64 %i.dx, %i.dw
  %i.dz = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !56
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !56
  %.not.i64 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not.i64, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !120
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66

bb.w:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63
  %i.eg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !62
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66: ; preds = %bb.v, %bb.w
  %.06.i65 = phi i64 [ %i.ef, %bb.v ], [ %i.eo, %bb.w ]
  %i.ep = tail call noundef i64 @llvm.umin.i64(i64 %i.dy, i64 %.06.i65)
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.eq = fmul double %.052, %i.db
  %i.er = tail call double @llvm.round.f64(double %i.eq)
  %i.es = fptoui double %i.er to i64
  %i.et = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 88
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !56
  %.not.i67 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i67, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !120
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69

bb.z:                                             ; preds = %bb.x
  %i.fa = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !62
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !54
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69: ; preds = %bb.y, %bb.z
  %.06.i68 = phi i64 [ %i.ez, %bb.y ], [ %i.fi, %bb.z ]
  %i.fj = tail call noundef i64 @llvm.umin.i64(i64 %i.es, i64 %.06.i68) ; 2 uses
  %i.fk = load i64, ptr %i.cz, align 8, !tbaa !134
  %i.fl = sub i64 %i.fk, %i.fj
  %i.fm = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 88
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !56
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !56
  %.not.i70 = icmp eq ptr %i.fo, %i.fq
  br i1 %.not.i70, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !120
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72

bb.ab:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69
  %i.ft = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 88
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !62
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !54
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72: ; preds = %bb.aa, %bb.ab
  %.06.i71 = phi i64 [ %i.fs, %bb.aa ], [ %i.gb, %bb.ab ]
  %i.gc = tail call noundef i64 @llvm.umin.i64(i64 %i.fl, i64 %.06.i71)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66
  %.051 = phi i64 [ %i.dw, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66 ], [ %i.gc, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72 ] ; 4 uses
  %.050 = phi i64 [ %i.ep, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66 ], [ %i.fj, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72 ] ; 4 uses
  %i.gd = add i64 %.050, %.051
  %i.ge = tail call noundef i64 @llvm.umin.i64(i64 %i.gd, i64 2048) ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.gg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !102
  %i.gj = add i64 %i.gi, %.050
  %i.gk = load i64, ptr %i.cz, align 8, !tbaa !134 ; 2 uses
  %i.gl = tail call noundef i64 @llvm.umin.i64(i64 %i.gk, i64 2048)
  %i.gm = mul nuw nsw i64 %i.gl, 10
  %i.gn = add i64 %i.gm, %i.gk
  %i.go = icmp ugt i64 %i.gj, %i.gn
  br i1 %i.go, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN6duckdb15ReservoirSample6VacuumEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.050)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.af

common.resume:                                    ; preds = %bb.bi, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.gq, %bb.af ], [ %.pn, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %bb.ae
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gp) #29
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.ae
  %i.gr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.gs = icmp ult i64 %.051, %i.ge
  br i1 %i.gs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ag
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !102
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.ai

._crit_edge:                                      ; preds = %bb.at, %bb.ag
  %i.gy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %bb.au unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc86, %bb.ba, %bb.ay, %bb.aw, %bb.ax, %bb.av, %bb.au, %._crit_edge, %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ai:                                            ; preds = %.lr.ph, %bb.at
  %.095 = phi i64 [ %.051, %.lr.ph ], [ %i.ix, %bb.at ] ; 4 uses
  %.04994 = phi i64 [ %i.gu, %.lr.ph ], [ %i.iw, %bb.at ] ; 3 uses
  %i.ha = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc unwind label %bb.ap    ; 2 uses

.noexc:                                           ; preds = %bb.ai
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 88
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !56
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !56
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #29 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !211
  invoke void @__cxa_rethrow() #30
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !178
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !177    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !172  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !171
  store ptr %i.w, ptr %3, align 8, !tbaa !171
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !172
  store ptr %3, ptr %i.x, align 8, !tbaa !171
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !179
  store ptr %i.z, ptr %3, align 8, !tbaa !171
  store ptr %3, ptr %i.y, align 8, !tbaa !179
  %i.aa = load ptr, ptr %3, align 8, !tbaa !171   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !178
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !55
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !172
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !172
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !180
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !180
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !440
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !179
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !171 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !179
  store ptr %i.o, ptr %.02530, align 8, !tbaa !171
  store ptr %.02530, ptr %i.g, align 8, !tbaa !179
  store ptr %i.g, ptr %i.m, align 8, !tbaa !172
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !171
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !172
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !171
  store ptr %i.r, ptr %.02530, align 8, !tbaa !171
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !172
  store ptr %.02530, ptr %i.s, align 8, !tbaa !171
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !439

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !177    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #28
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !178
  store ptr %.0.i, ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !61}
!1 = distinct !{!1, !61}
!2 = distinct !{!2, !61}
!3 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!4 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!5 = distinct !{null, null}
!6 = distinct !{!6, !61}
!7 = distinct !{!7, !61}
!8 = distinct !{!8, !61}
!9 = distinct !{null, null, null, null, null, null}
!10 = distinct !{!10, !61}
!11 = distinct !{!11, !61}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !16, i64 0}
!20 = !{!"p1 _ZTSN6duckdb21BaseReservoirSamplingE", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTSSt12__mutex_base", !16, i64 0}
!23 = !{!"_ZTSSt5mutex", !22, i64 0}
!24 = !{!"p1 _ZTSN6duckdb11RandomStateE", !19, i64 0}
!25 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb11RandomStateELb0EE", !24, i64 0}
!26 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb11RandomStateESt14default_deleteIS1_EEE", !25, i64 0}
!27 = !{!"_ZTSSt5tupleIJPN6duckdb11RandomStateESt14default_deleteIS1_EEE", !26, i64 0}
!28 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb11RandomStateESt14default_deleteIS1_EE", !27, i64 0}
!29 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb11RandomStateESt14default_deleteIS1_ELb1ELb1EE", !28, i64 0}
!30 = !{!"_ZTSSt10unique_ptrIN6duckdb11RandomStateESt14default_deleteIS1_EE", !29, i64 0}
!31 = !{!"_ZTSN6duckdb10unique_ptrINS_11RandomStateESt14default_deleteIS1_ELb1EEE", !30, i64 0}
!32 = !{!"_ZTSN6duckdb12RandomEngineE", !23, i64 0, !31, i64 40}
!33 = !{!"_ZTSN6duckdb12ReservoirRNGE", !32, i64 0}
!34 = !{!"long", !16, i64 0}
!35 = !{!"double", !16, i64 0}
!36 = !{!"p1 _ZTSSt4pairIdmE", !19, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseISt4pairIdmESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseISt4pairIdmESaIS1_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseISt4pairIdmESaIS1_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorISt4pairIdmESaIS1_EE", !39, i64 0}
!41 = !{!"_ZTSSt4lessISt4pairIdmEE"}
!42 = !{!"_ZTSSt14priority_queueISt4pairIdmESt6vectorIS1_SaIS1_EESt4lessIS1_EE", !40, i64 0, !41, i64 24}
!43 = !{!"_ZTSN6duckdb21BaseReservoirSamplingE", !33, i64 0, !34, i64 48, !35, i64 56, !34, i64 64, !34, i64 72, !34, i64 80, !42, i64 88}
!44 = !{!43, !34, i64 48}
!45 = !{!43, !35, i64 56}
!46 = !{!43, !34, i64 64}
!47 = !{!43, !34, i64 72}
!48 = !{!43, !34, i64 80}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!"p1 omnipotent char", !19, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !34, i64 8, !16, i64 16}
!53 = !{!52, !50, i64 0}
!54 = !{!37, !36, i64 0}
!55 = !{!34, !34, i64 0}
!56 = !{!36, !36, i64 0}
!57 = !{!"_ZTSSt4pairIdmE", !35, i64 0, !34, i64 8}
!58 = !{!57, !35, i64 0}
!59 = !{!57, !34, i64 8}
!60 = !{!35, !35, i64 0}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!37, !36, i64 8}
!63 = !{!37, !36, i64 16}
!64 = !{!"p1 double", !19, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!65, !64, i64 0}
!67 = !{!65, !64, i64 8}
!68 = !{!"_ZTSNSt24uniform_int_distributionImE10param_typeE", !34, i64 0, !34, i64 8}
!69 = !{!68, !34, i64 0}
!70 = !{!68, !34, i64 8}
!71 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!72 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb21BaseReservoirSamplingELb0EE", !20, i64 0}
!73 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EEE", !72, i64 0}
!74 = !{!"_ZTSSt5tupleIJPN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EEE", !73, i64 0}
!75 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EE", !74, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_ELb1ELb1EE", !75, i64 0}
!77 = !{!"_ZTSSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EE", !76, i64 0}
!78 = !{!"_ZTSN6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEE", !77, i64 0}
!79 = !{!"_ZTSN6duckdb10SampleTypeE", !16, i64 0}
!80 = !{!"bool", !16, i64 0}
!81 = !{!"_ZTSN6duckdb14BlockingSampleE", !78, i64 8, !79, i64 16, !80, i64 17}
!82 = !{!81, !80, i64 17}
!83 = !{!"p1 _ZTSN6duckdb14ReservoirChunkE", !19, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !19, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 0}
!88 = !{!86, !85, i64 8}
!89 = !{!"p1 _ZTSN6duckdb6VectorE", !19, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !90, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !92, i64 0}
!94 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !93, i64 0}
!95 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !19, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !98, i64 0}
!100 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !99, i64 0}
!101 = !{!"_ZTSN6duckdb9DataChunkE", !94, i64 0, !34, i64 24, !34, i64 32, !34, i64 40, !100, i64 48}
!102 = !{!101, !34, i64 24}
!103 = !{!"p1 _ZTSN6duckdb9AllocatorE", !19, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14ReservoirChunkELb0EE", !83, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb14ReservoirChunkESt14default_deleteIS1_EEE", !104, i64 0}
!106 = !{!"_ZTSSt5tupleIJPN6duckdb14ReservoirChunkESt14default_deleteIS1_EEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb14ReservoirChunkESt14default_deleteIS1_EE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb14ReservoirChunkESt14default_deleteIS1_ELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt10unique_ptrIN6duckdb14ReservoirChunkESt14default_deleteIS1_EE", !108, i64 0}
!110 = !{!"_ZTSN6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEE", !109, i64 0}
!111 = !{!"p1 int", !19, i64 0}
!112 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !19, i64 0}
!113 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!114 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !113, i64 0}
!115 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !112, i64 0, !114, i64 8}
!116 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !115, i64 0}
!117 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !116, i64 0}
!118 = !{!"_ZTSN6duckdb15SelectionVectorE", !111, i64 0, !117, i64 8}
!119 = !{!"_ZTSN6duckdb15ReservoirSampleE", !81, i64 0, !34, i64 24, !103, i64 32, !110, i64 40, !80, i64 48, !118, i64 56, !34, i64 80}
!120 = !{!119, !34, i64 80}
!121 = !{!114, !113, i64 0}
!122 = !{!19, !19, i64 0}
!123 = !{!118, !111, i64 0}
!124 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 8, !17, i64 12}
!125 = !{!124, !17, i64 8}
!126 = !{!124, !17, i64 12}
!127 = !{!"vtable pointer", !15, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!16, !16, i64 0}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = !{!119, !80, i64 48}
!133 = !{!81, !79, i64 16}
!134 = !{!119, !34, i64 24}
!135 = !{!103, !103, i64 0}
!136 = !{!104, !83, i64 0}
!137 = !{i8 0, i8 2}
!138 = !{}
!139 = !{!"p1 _ZTSN6duckdb9DataChunkE", !19, i64 0}
!140 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb9DataChunkELb0EE", !139, i64 0}
!141 = !{!140, !139, i64 0}
!142 = !{!139, !139, i64 0}
!143 = !{i64 8}
!144 = !{!90, !89, i64 8}
!145 = !{!90, !89, i64 0}
!146 = !{!"p1 _ZTSN6duckdb14BlockingSampleE", !19, i64 0}
!147 = !{!146, !146, i64 0}
!148 = !{!"p1 _ZTSN6duckdb15ReservoirSampleE", !19, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{!115, !112, i64 0}
!151 = !{!112, !112, i64 0}
!152 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!153 = !{!152, !111, i64 0}
!154 = !{!152, !111, i64 8}
!155 = !{!"p1 long", !19, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!157 = !{!156, !155, i64 8}
!158 = !{!156, !155, i64 0}
!159 = !{!"llvm.loop.unroll.disable"}
!160 = !{!"any p2 pointer", !19, i64 0}
!161 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !160, i64 0}
!162 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
end_hunk_1
