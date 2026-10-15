Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/rgb2spec_opt?download=true
inline.NumInlined: 342
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z12gauss_newtonPKdPdi:bb.a
  %i.v = load double, ptr %i.c, align 16, !tbaa !13
  %i.w = call double @llvm.fabs.f64(double %i.v)  ; 2 uses
  %i.x = fcmp ogt double %i.w, %spec.select78.i.156 ; 2 uses
  %spec.select.i.257 = select i1 %i.x, i32 2, i32 %spec.select.i.1 ; 2 uses
  %spec.select78.i.258 = select i1 %i.x, double %i.w, double %spec.select78.i.156
  %i.y = fcmp olt double %spec.select78.i.258, 1.000000e-15
  br i1 %i.y, label %bb.f, label %bb.d

.loopexit.i:                                      ; preds = %bb.d, %bb.e
  %i.z = load ptr, ptr %i.d, align 16, !tbaa !20  ; 4 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !20  ; 5 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13
  %i.ad = fdiv double %i.ac, %i.aa                ; 3 uses
  store double %i.ad, ptr %i.ab, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13
  %i.ag = fmul double %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13
  %i.aj = fsub double %i.ai, %i.ag
  store double %i.aj, ptr %i.ah, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = fmul double %i.ad, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13
  %i.ap = fsub double %i.ao, %i.am
  store double %i.ap, ptr %i.an, align 8, !tbaa !13
  %i.aq = load double, ptr %i.z, align 8, !tbaa !13
  %i.ar = load ptr, ptr %i.i, align 16, !tbaa !20 ; 4 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13
  %i.at = fdiv double %i.as, %i.aq                ; 3 uses
  store double %i.at, ptr %i.ar, align 8, !tbaa !13
  %i.au = load double, ptr %i.ae, align 8, !tbaa !13
  %i.av = fmul double %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13
  %i.ay = fsub double %i.ax, %i.av                ; 2 uses
  store double %i.ay, ptr %i.aw, align 8, !tbaa !13
  %i.az = load double, ptr %i.ak, align 8, !tbaa !13
  %i.ba = fmul double %i.at, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13
  %i.bd = fsub double %i.bc, %i.ba
  store double %i.bd, ptr %i.bb, align 8, !tbaa !13
  %.pre67 = load double, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.be = call double @llvm.fabs.f64(double %.pre67)
  %i.bf = fcmp one double %.pre67, 0.000000e+00
  %spec.select78.i.1 = select i1 %i.bf, double %i.be, double 0.000000e+00 ; 2 uses
  %i.bg = call double @llvm.fabs.f64(double %i.ay) ; 2 uses
  %i.bh = fcmp ule double %i.bg, %spec.select78.i.1 ; 2 uses
  %spec.select78.i.1.1 = select i1 %i.bh, double %spec.select78.i.1, double %i.bg
  %i.bi = fcmp olt double %spec.select78.i.1.1, 1.000000e-15
  br i1 %i.bi, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.loopexit.i
  br i1 %i.bh, label %.loopexit.i.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = load <2 x i32>, ptr %i.l, align 4, !tbaa !14
  %i.bk = shufflevector <2 x i32> %i.bj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bk, ptr %i.l, align 4, !tbaa !14
  %i.bl = load ptr, ptr %i.n, align 16, !tbaa !20
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !20
  store ptr %i.ab, ptr %i.n, align 16, !tbaa !20
  br label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %bb.c, %bb.b
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13
  %i.bp = load ptr, ptr %i.i, align 16, !tbaa !20 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !13
  %i.bs = fdiv double %i.br, %i.bo                ; 3 uses
  store double %i.bs, ptr %i.bq, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13
  %i.bv = fmul double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13
  %i.by = fsub double %i.bx, %i.bv                ; 4 uses
  store double %i.by, ptr %i.bw, align 8, !tbaa !13
  %i.bz = call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ueq double %i.by, 0.000000e+00
  %i.cb = fcmp olt double %i.bz, 1.000000e-15
  %i.cc = or i1 %i.ca, %i.cb
  br i1 %i.cc, label %bb.f, label %._crit_edge49.i.2

bb.d:                                             ; preds = %.lr.ph.i
  %.not77.i = icmp eq i32 %spec.select.i.257, 0
  br i1 %.not77.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cd = zext nneg i32 %spec.select.i.257 to i64 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !14
  store i32 %i.cf, ptr %i.f, align 16, !tbaa !14
  store i32 0, ptr %i.ce, align 4, !tbaa !14
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cd ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20
  store ptr %i.ch, ptr %i.d, align 16, !tbaa !20
  store ptr %i.a, ptr %i.cg, align 8, !tbaa !20
  br label %.loopexit.i

bb.f:                                             ; preds = %.loopexit.i.1, %.loopexit.i, %.lr.ph.i
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 4) ; 0 uses
  %i.cj = load double, ptr %0, align 8, !tbaa !13
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.cj) ; 2 uses
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !13
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, double noundef %i.cn) ; 2 uses
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !13
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.co, double noundef %i.cr)
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs), !inline_history !111 ; 0 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 3) ; 0 uses
  %i.cv = load double, ptr %1, align 8, !tbaa !13
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.cv) ; 2 uses
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.cy = load double, ptr %i.j, align 8, !tbaa !13
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, double noundef %i.cy) ; 2 uses
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.db = load double, ptr %i.k, align 8, !tbaa !13
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, double noundef %i.db)
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.dc), !inline_history !111 ; 0 uses
  %i.de = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull @.str.4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.de) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.df

._crit_edge49.i.2:                                ; preds = %.loopexit.i.1
  %i.dg = load i32, ptr %i.f, align 16, !tbaa !14
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !13 ; 3 uses
  %i.dk = load i32, ptr %i.l, align 4, !tbaa !14
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !13
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.dp = load double, ptr %i.do, align 8, !tbaa !13
  %i.dq = fmul double %i.dp, %i.dj
  %i.dr = fsub double %i.dn, %i.dq                ; 2 uses
  %i.ds = load i32, ptr %i.m, align 8, !tbaa !14
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !13
  %i.dw = load double, ptr %i.bp, align 8, !tbaa !13
  %i.dx = fmul double %i.dw, %i.dj
  %i.dy = fsub double %i.dv, %i.dx
  %i.dz = fmul double %i.bs, %i.dr
  %i.ea = fsub double %i.dy, %i.dz
  %i.eb = fdiv double %i.ea, %i.by                ; 3 uses
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !13
  %i.ef = fmul double %i.ee, %i.eb
  %i.eg = fsub double %i.dr, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !13
  %i.ej = load ptr, ptr %i.d, align 16, !tbaa !20 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !13
  %i.eo = fmul double %i.en, %i.eb
  %i.ep = load double, ptr %i.ej, align 8, !tbaa !13
  %i.eq = fdiv double %i.eg, %i.ei                ; 2 uses
  %i.er = fmul double %i.el, %i.eq
  %i.es = fsub double %i.dj, %i.er
  %i.et = fsub double %i.es, %i.eo
  %i.eu = fdiv double %i.et, %i.ep
  %i.ev = load <2 x double>, ptr %1, align 8, !tbaa !13
  %i.ew = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.eq, i64 1
  %i.ey = fsub <2 x double> %i.ev, %i.ex          ; 4 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 0 ; 2 uses
  %i.fa = extractelement <2 x double> %i.ey, i64 1 ; 2 uses
  store <2 x double> %i.ey, ptr %1, align 8, !tbaa !13
  %i.fb = load <2 x double>, ptr %i.e, align 16, !tbaa !13 ; 2 uses
  %i.fc = fmul <2 x double> %i.fb, %i.fb          ; 2 uses
  %shift = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.fc, %shift
  %i.fd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fe = load double, ptr %i.k, align 8, !tbaa !13
  %i.ff = fsub double %i.fe, %i.eb                ; 4 uses
  store double %i.ff, ptr %i.k, align 8, !tbaa !13
  %i.fg = load double, ptr %i.o, align 16, !tbaa !13 ; 2 uses
  %i.fh = fmul double %i.fg, %i.fg
  %i.fi = fadd double %i.fd, %i.fh
  %i.fj = fcmp olt double %i.ez, %i.fa
  %i.fk = select i1 %i.fj, double %i.fa, double %i.ez ; 2 uses
  %i.fl = fcmp olt double %i.fk, %i.ff
  %i.fm = select i1 %i.fl, double %i.ff, double %i.fk ; 2 uses
  %i.fn = fcmp ogt double %i.fm, 2.000000e+02
  br i1 %i.fn, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge49.i.2
  %i.fo = fdiv nnan double 2.000000e+02, %i.fm    ; 2 uses
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x double> %i.fq, %i.ey
  store <2 x double> %i.fr, ptr %1, align 8, !tbaa !13
  %i.fs = fmul double %i.fo, %i.ff
  store double %i.fs, ptr %i.k, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge49.i.2
  %i.ft = fcmp olt double %i.fi, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.fu = add nuw nsw i32 %.03651, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.fu, %2
  %or.cond = select i1 %i.ft, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.i, !llvm.loop !112

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI10ThreadPoolSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI10ThreadPoolEclEPS0_.exit

_ZNKSt14default_deleteI10ThreadPoolEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN10ThreadPoolD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %i.a) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #34
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI10ThreadPoolEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, -2147483648) i32 @_Z14AvailableCoresv() local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  ret i32 %.sroa.speculated
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z14RunningThreadsv() local_unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr @_ZL10threadPool, align 8, !tbaa !24 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ 1, %bb.a ]
  ret i32 %i.l
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ThreadPoolC2Ei(ptr noundef nonnull align 8 dereferenceable(121) initializes((0, 48)) %0, i32 noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.6", align 8 ; 6 uses
  %3 = alloca %"class.std::thread", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = icmp sgt i32 %1, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = add nsw i32 %1, -2
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6threadD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6threadD2Ev.exit
  %.0719 = phi i32 [ 0, %.lr.ph ], [ %i.g, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.g = add nuw nsw i32 %.0719, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %3, align 8, !tbaa !125
  %i.h = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM10ThreadPoolFviEPS3_iEEEEEE, i64 16), ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.g, ptr %i.i, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %0, ptr %i.j, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store <2 x i64> <i64 ptrtoint (ptr @_ZN10ThreadPool10workerFuncEi to i64), i64 0>, ptr %i.k, align 8, !tbaa !131
  store ptr %i.h, ptr %2, align 8, !tbaa !133
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %2, align 8, !tbaa !133    ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #32, !inline_history !113
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !133    ; 3 uses
  %.not.i7.i = icmp eq ptr %i.q, null
  br i1 %.not.i7.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i8.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i8.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #32, !inline_history !113
  br label %.body

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !27   ; 7 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !32
  %.not.i.i9 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i9, label %bb.f, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread: ; preds = %bb.e
  store i64 0, ptr %i.u, align 8, !tbaa !125
  %i.w = load i64, ptr %3, align 8, !tbaa !33
  store i64 %i.w, ptr %i.u, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.d, align 8, !tbaa !27
  br label %_ZNSt6threadD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !28   ; 12 uses
  %i.z = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 4 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #33
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i14 = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i14)
end_hunk_0
