inline.NumInlined: 1843
inline.NumDeleted: 893
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6duckdb6vectorIjLb1ESaIjEEixEm:bb.a

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorIjLb1ESaIjEE3getILb1EEERjm.exit: ; preds = %bb.a
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !45
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
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.bh, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.x = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %.not.i56 = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i56, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58

bb.g:                                             ; preds = %bb.e
  %i.ae = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !45
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
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !39
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !135 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !136
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.j
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

_ZN6duckdb15SelectionVectorC2ERKS0_.exit:         ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, %bb.i, %bb.k
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !137
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !137
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !135 ; 8 uses
  store <2 x ptr> %i.aw, ptr %i.be, align 8, !tbaa !136
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb15SelectionVectorC2ERKS0_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bh, align 8, !tbaa !138
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !140
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !141
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29, !inline_history !143
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !141
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29, !inline_history !143
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i59, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.o ], [ %i.bu, %bb.p ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.q, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !40

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %_ZN6duckdb15SelectionVectorC2ERKS0_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !117
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !117
  %i.bz = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !39
  %i.cc = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !39
  br label %bb.bh

bb.r:                                             ; preds = %bb.h, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58
  %i.ce = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !39
  %i.ch = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !39
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !39
  %i.co = uitofp i64 %i.ck to double
  %3 = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %5 = load i64, ptr %4, align 8, !tbaa !39
  %6 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %7 = insertelement <2 x i64> %6, i64 %5, i64 1
  %8 = uitofp <2 x i64> %7 to <2 x double>
  %9 = insertelement <2 x double> poison, double %i.co, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fdiv <2 x double> %8, %10                 ; 2 uses
  %12 = extractelement <2 x double> %11, i64 0    ; 3 uses
  %13 = extractelement <2 x double> %11, i64 1    ; 3 uses
  %i.cp = fadd double %12, %13                    ; 2 uses
  %i.cq = fcmp olt double %i.cp, 1.000000e+00
  %i.cr = fsub double 1.000000e+00, %i.cp
  %i.cs = fadd double %13, %i.cr
  %.050 = select i1 %i.cq, double %i.cs, double %13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !155
  %i.cv = uitofp i64 %i.cu to double              ; 2 uses
  %i.cw = fcmp ogt double %12, %.050
  br i1 %i.cw, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cx = fmul double %12, %i.cv
  %i.cy = tail call double @llvm.round.f64(double %i.cx)
  %i.cz = fptoui double %i.cy to i64
  %i.da = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47
  %.not.i61 = icmp eq ptr %i.dc, %i.de
  br i1 %.not.i61, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63

bb.u:                                             ; preds = %bb.s
  %i.dh = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !54
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !45
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63: ; preds = %bb.t, %bb.u
  %.06.i62 = phi i64 [ %i.dg, %bb.t ], [ %i.dp, %bb.u ]
  %i.dq = tail call noundef i64 @llvm.umin.i64(i64 %i.cz, i64 %.06.i62) ; 2 uses
  %i.dr = load i64, ptr %i.ct, align 8, !tbaa !155
  %i.ds = sub i64 %i.dr, %i.dq
  %i.dt = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !47
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !47
  %.not.i64 = icmp eq ptr %i.dv, %i.dx
  br i1 %.not.i64, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66

bb.w:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63
  %i.ea = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !54
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !45
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66: ; preds = %bb.v, %bb.w
  %.06.i65 = phi i64 [ %i.dz, %bb.v ], [ %i.ei, %bb.w ]
  %i.ej = tail call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 %.06.i65)
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.ek = fmul double %.050, %i.cv
  %i.el = tail call double @llvm.round.f64(double %i.ek)
  %i.em = fptoui double %i.el to i64
  %i.en = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !47
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !47
  %.not.i67 = icmp eq ptr %i.ep, %i.er
  br i1 %.not.i67, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.et = load i64, ptr %i.es, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69

bb.z:                                             ; preds = %bb.x
  %i.eu = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !54
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !45
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69: ; preds = %bb.y, %bb.z
  %.06.i68 = phi i64 [ %i.et, %bb.y ], [ %i.fc, %bb.z ]
  %i.fd = tail call noundef i64 @llvm.umin.i64(i64 %i.em, i64 %.06.i68) ; 2 uses
  %i.fe = load i64, ptr %i.ct, align 8, !tbaa !155
  %i.ff = sub i64 %i.fe, %i.fd
  %i.fg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !47
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47
  %.not.i70 = icmp eq ptr %i.fi, %i.fk
  br i1 %.not.i70, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72

bb.ab:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69
  %i.fn = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 88
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 96
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !54
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !45
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72: ; preds = %bb.aa, %bb.ab
  %.06.i71 = phi i64 [ %i.fm, %bb.aa ], [ %i.fv, %bb.ab ]
  %i.fw = tail call noundef i64 @llvm.umin.i64(i64 %i.ff, i64 %.06.i71)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66
  %.052 = phi i64 [ %i.ej, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66 ], [ %i.fd, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72 ] ; 4 uses
  %.051 = phi i64 [ %i.dq, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66 ], [ %i.fw, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72 ] ; 4 uses
  %i.fx = add i64 %.051, %.052
  %i.fy = tail call noundef i64 @llvm.umin.i64(i64 %i.fx, i64 2048) ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ga = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !103
  %i.gd = add i64 %i.gc, %.052
  %i.ge = load i64, ptr %i.ct, align 8, !tbaa !155 ; 2 uses
  %i.gf = tail call noundef i64 @llvm.umin.i64(i64 %i.ge, i64 2048)
  %i.gg = mul nuw nsw i64 %i.gf, 10
  %i.gh = add i64 %i.gg, %i.ge
  %i.gi = icmp ugt i64 %i.gd, %i.gh
  br i1 %i.gi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN6duckdb15ReservoirSample6VacuumEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.052)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.af

common.resume:                                    ; preds = %bb.bi, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.gk, %bb.af ], [ %.pn, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %bb.ae
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gj) #29
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.ae
  %i.gl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.gm = icmp ult i64 %.051, %i.fy
  br i1 %i.gm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ag
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !103
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.ai

._crit_edge:                                      ; preds = %bb.at, %bb.ag
  %i.gs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.au unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc86, %bb.ba, %bb.ay, %bb.aw, %bb.ax, %bb.av, %bb.au, %._crit_edge, %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ai:                                            ; preds = %.lr.ph, %bb.at
  %.095 = phi i64 [ %.051, %.lr.ph ], [ %i.ir, %bb.at ] ; 4 uses
  %.04994 = phi i64 [ %i.go, %.lr.ph ], [ %i.iq, %bb.at ] ; 3 uses
  %i.gu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc unwind label %bb.ap    ; 2 uses

.noexc:                                           ; preds = %bb.ai
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 88
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !47
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !47
end_hunk_0
