inline.NumInlined: 651
inline.NumDeleted: 311
begin_hunk_0_@_ZN2v88internallsERSoRKNS0_21AsPrintableStatisticsE:bb.a
.preheader:                                       ; preds = %.lr.ph100.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  br label %bb.k

._crit_edge97:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread90
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22, i64 noundef 119) #16 ; 0 uses
  %.pre = load ptr, ptr %.sroa.064.098, align 8
  %.pre103 = load i8, ptr %i.ah, align 8, !range !22
  %i.cq = trunc nuw i8 %.pre103 to i1
  br label %bb.m

bb.k:                                             ; preds = %.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread90
  %.sroa.060.095 = phi ptr [ %.sroa.074.0, %.preheader ], [ %i.dh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread90 ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.060.095, align 8   ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 152
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 160
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = load i64, ptr %i.co, align 8
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread90

bb.l:                                             ; preds = %bb.k
  %i.cy = icmp eq i64 %i.cv, 0
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.l
  %i.cz = load ptr, ptr %i.cl, align 8
  %i.da = load ptr, ptr %i.ct, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.da, ptr %i.cz, i64 %i.cv)
  %i.db = icmp eq i32 %bcmp.i, 0
  br i1 %i.db, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread90

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.dd = load i8, ptr %i.ah, align 8, !range !22, !noundef !19
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = load ptr, ptr %i.cs, align 8
  %i.dg = load ptr, ptr %1, align 8
  call fastcc void @_ZN2v88internalL9WriteLineERSobPKcS3_RKNS0_21CompilationStatistics10BasicStatsES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %i.de, ptr noundef %i.df, ptr noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(80) %i.dc, ptr noundef nonnull align 8 dereferenceable(80) %i.d)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread90

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread90: ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.060.095, i64 8 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %.0.lcssa.i.i.i.i.i53
  br i1 %i.di, label %._crit_edge97, label %bb.k

bb.m:                                             ; preds = %._crit_edge97, %.lr.ph100.split
  %i.dj = phi i1 [ %i.cq, %._crit_edge97 ], [ true, %.lr.ph100.split ]
  %i.dk = phi ptr [ %.pre, %._crit_edge97 ], [ %i.ck, %.lr.ph100.split ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dm = load ptr, ptr %i.cl, align 8
  %i.dn = load ptr, ptr %1, align 8
  call fastcc void @_ZN2v88internalL9WriteLineERSobPKcS3_RKNS0_21CompilationStatistics10BasicStatsES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %i.dj, ptr noundef %i.dm, ptr noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(80) %i.dl, ptr noundef nonnull align 8 dereferenceable(80) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1
  %i.do = load ptr, ptr %0, align 8
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8
  %.not.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.o:                                             ; preds = %bb.m
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.064.098, i64 8 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %.0.lcssa.i.i.i.i.i
  br i1 %i.dx, label %._crit_edge101, label %.lr.ph100.split

bb.p:                                             ; preds = %._crit_edge101
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23, i64 noundef 119) #16 ; 0 uses
  %.pre106 = load i8, ptr %i.ah, align 8, !range !22
  %i.dz = trunc nuw i8 %.pre106 to i1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge101
  %i.ea = phi i1 [ %i.dz, %bb.p ], [ true, %._crit_edge101 ]
  %i.eb = load ptr, ptr %1, align 8
  call fastcc void @_ZN2v88internalL9WriteLineERSobPKcS3_RKNS0_21CompilationStatistics10BasicStatsES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %i.ea, ptr noundef nonnull @.str.9, ptr noundef %i.eb, ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.d)
  %i.ec = load i8, ptr %i.ah, align 8, !range !22, !noundef !19
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.ee = load ptr, ptr %0, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr %0, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8
  %.not.i54 = icmp eq i64 %i.ej, 0
  br i1 %.not.i54, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56

bb.t:                                             ; preds = %bb.r
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) #16 ; 0 uses
  %i.en = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i57 = icmp eq ptr %i.en, null
  br i1 %.not.i57, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56
  %i.eo = load ptr, ptr %0, align 8
  %i.ep = getelementptr i8, ptr %i.eo, i64 -24
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds i8, ptr %0, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = or i32 %i.et, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.er, i32 noundef %i.eu) #16
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56
  %i.ev = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.en) #16
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.en, i64 noundef %i.ev) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.u, %bb.v
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 15) #16 ; 0 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ez) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.q
  %.not.i.i.i = icmp eq ptr %.sroa.074.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal21CompilationStatistics10PhaseStatsEEESaISE_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = ptrtoint ptr %.sroa.074.0 to i64
  %i.fc = sub i64 %.sink.i52, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0, i64 noundef %i.fc) #19
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal21CompilationStatistics10PhaseStatsEEESaISE_EED2Ev.exit

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal21CompilationStatistics10PhaseStatsEEESaISE_EED2Ev.exit: ; preds = %bb.w, %bb.x
  %.not.i.i.i58 = icmp eq ptr %.sroa.084.0, null
  br i1 %.not.i.i.i58, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal21CompilationStatistics10PhaseStatsEEESaISE_EED2Ev.exit
  %i.fd = ptrtoint ptr %.sroa.084.0 to i64
  %i.fe = sub i64 %.sink.i, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0, i64 noundef %i.fe) #19
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal21CompilationStatistics10PhaseStatsEEESaISE_EED2Ev.exit, %bb.y
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #16
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internalL9WriteLineERSobPKcS3_RKNS0_21CompilationStatistics10BasicStatsES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16 ; 4 uses
  %i.d = load i64, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = mul i64 %i.f, 100
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = uitofp i64 %i.g to double
  %i.j = sitofp i64 %i.d to double
  %i.k = load i64, ptr %i.h, align 8
  %i.l = load i64, ptr %5, align 8
  %i.m = uitofp i64 %i.k to double
  %i.n = sitofp i64 %i.l to double
  %i.o = insertelement <2 x double> poison, double %i.j, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.i, i64 1
  %i.q = insertelement <2 x double> poison, double %i.n, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.m, i64 1
  %i.s = fdiv <2 x double> %i.p, %i.r             ; 3 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = fmul double %i.t, 1.000000e+02           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = uitofp i64 %i.w to double                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = uitofp i64 %i.z to double
  %i.ab = fdiv double %i.x, %i.aa
  %6 = fdiv double %i.x, 1.000000e+06
  %7 = fdiv double %i.c, 1.000000e+03
  %i.ac = fdiv double %6, %7
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = call noundef i32 (ptr, i32, ptr, ...) @_ZN2v84base2OS8SNPrintFEPciPKcz(ptr noundef nonnull %i.b, i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef %3, ptr noundef %2, double noundef %i.c, ptr noundef %3, ptr noundef %2, i64 noundef %i.f) #16 ; 0 uses
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.ae) #16 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.w, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = extractelement <2 x double> %i.s, i64 1
  %i.al = call noundef i32 (ptr, i32, ptr, ...) @_ZN2v84base2OS8SNPrintFEPciPKcz(ptr noundef nonnull %i.b, i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %2, double noundef %i.c, double noundef %i.u, i64 noundef %i.f, double noundef %i.ak, i64 noundef %i.ah, i64 noundef %i.aj, double noundef %i.ab, double noundef %i.ac) #16 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.am = extractelement <2 x double> %i.s, i64 1
  %i.an = call noundef i32 (ptr, i32, ptr, ...) @_ZN2v84base2OS8SNPrintFEPciPKcz(ptr noundef nonnull %i.b, i32 noundef 128, ptr noundef nonnull @.str.20, ptr noundef %2, double noundef %i.c, double noundef %i.u, i64 noundef %i.f, double noundef %i.am, i64 noundef %i.ah, i64 noundef %i.aj) #16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.ao) #16 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 2) #16 ; 0 uses
  %i.av = load ptr, ptr %i.at, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = or i32 %i.bb, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.az, i32 noundef %i.bc) #16
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #16
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.av, i64 noundef %i.bd) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  %.not.i38 = icmp eq i64 %i.bk, 0
  br i1 %.not.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal21CompilationStatistics10PhaseStatsC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i64, ptr %i.e, align 8              ; 8 uses
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #18 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8
  store i64 %i.f, ptr %i.c, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN2v88internal21CompilationStatistics12OrderedStatsC2ERKS2_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.d, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %_ZN2v88internal21CompilationStatistics12OrderedStatsC2ERKS2_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN2v88internal21CompilationStatistics12OrderedStatsC2ERKS2_.exit

_ZN2v88internal21CompilationStatistics12OrderedStatsC2ERKS2_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8
  %i.v = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load i64, ptr %i.w, align 8              ; 8 uses
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %_ZN2v88internal21CompilationStatistics12OrderedStatsC2ERKS2_.exit
  %i.z = icmp slt i64 %i.x, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = add nuw i64 %i.x, 1                     ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.j
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #18 ; 2 uses
  store ptr %i.ac, ptr %i.s, align 8
  store i64 %i.x, ptr %i.u, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZN2v88internal21CompilationStatistics12OrderedStatsC2ERKS2_.exit
end_hunk_0
