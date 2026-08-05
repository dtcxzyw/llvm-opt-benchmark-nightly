inline.NumInlined: 6888
inline.NumDeleted: 3272
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb13CompactionJob7InstallEPb:bb.a
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %.pre16.i) #34
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !391  ; 2 uses
  %.not.i11.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i11.i, label %bb.e, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !391  ; 2 uses
  %.not.i12.i = icmp eq ptr %i.r, null
  br i1 %.not.i12.i, label %.body, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.r) #34
  br label %.body

bb.e:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.c, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 9136
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !389 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !417
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 2744
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !897  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !378
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 312
  %i.ae = sext i32 %i.x to i64
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !1072
  %i.ag = getelementptr inbounds nuw [224 x i8], ptr %i.af, i64 %i.ae
  call void @_ZN7rocksdb13InternalStats15CompactionStats3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(224) %i.ag, ptr noundef nonnull align 8 dereferenceable(456) %i.ac)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  %i.ai = zext i32 %i.ab to i64
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !1072
  %i.ak = getelementptr inbounds nuw [224 x i8], ptr %i.aj, i64 %i.ai
  call void @_ZN7rocksdb13InternalStats15CompactionStats3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(224) %i.ak, ptr noundef nonnull align 8 dereferenceable(456) %i.ac)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !324, !range !357, !noundef !358
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 360
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @_ZN7rocksdb13InternalStats15CompactionStats3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(224) %i.ao, ptr noundef nonnull align 8 dereferenceable(224) %i.ap)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aq = load i8, ptr %0, align 8, !tbaa !489
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7rocksdb13CompactionJob24InstallCompactionResultsEPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1896) %1, ptr noundef %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %0, %7
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load <4 x i8>, ptr %7, align 8, !tbaa !15
  store <4 x i8> %i.as, ptr %0, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4, !tbaa !393, !range !357, !noundef !358
  store i8 %i.au, ptr %i.h, align 4, !tbaa !493
  store i8 0, ptr %i.at, align 4, !tbaa !493
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  store i8 %i.aw, ptr %i.k, align 1, !tbaa !494
  store i8 0, ptr %i.av, align 1, !tbaa !494
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !391
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !391 ; 2 uses
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !391
  %.not.i.i.i.i.i104 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i104, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusD2Ev.exit.sink.split

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !391 ; 2 uses
  %.not.i.i106 = icmp eq ptr %.pre, null
  br i1 %.not.i.i106, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusD2Ev.exit.sink.split

_ZN7rocksdb6StatusD2Ev.exit.sink.split:           ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %bb.j
  %.sink = phi ptr [ %i.az, %bb.j ], [ %.pre, %_ZN7rocksdb6StatusaSEOS0_.exit ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusD2Ev.exit.sink.split, %bb.j, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.m:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ej

bb.n:                                             ; preds = %bb.g, %_ZN7rocksdb6StatusD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !362 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 760 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !489 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %_ZN7rocksdb8IOStatusaSERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %.not.i108 = icmp eq ptr %i.bi, %i.bf
  br i1 %.not.i108, label %_ZN7rocksdb8IOStatusaSERKS0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 %i.bg, ptr %i.bi, align 8, !tbaa !489
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 761
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !842
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 697
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !842
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 763
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !850, !range !357, !noundef !358
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 699
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !850
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 764
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !493, !range !357, !noundef !358
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 700
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !493
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 765
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !494
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 701
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !494
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 768
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !391 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i109, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull %i.bw)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.q
  %.pre.i110 = load ptr, ptr %4, align 8, !tbaa !391
  br label %bb.r

bb.r:                                             ; preds = %.noexc, %bb.p
  %i.bx = phi ptr [ %.pre.i110, %.noexc ], [ null, %bb.p ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !391
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !391 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !391
  %.not.i.i.i.i.i111 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i111, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i112

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i112: ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #34
  %.pr.i113 = load ptr, ptr %4, align 8, !tbaa !391 ; 2 uses
  %.not.i10.i = icmp eq ptr %.pr.i113, null
  br i1 %.not.i10.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i112
  call void @_ZdaPv(ptr noundef nonnull %.pr.i113) #34
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i112, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN7rocksdb8IOStatusaSERKS0_.exit

_ZN7rocksdb8IOStatusaSERKS0_.exit:                ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1075 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1151
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1152
  %i.ch = add i64 %i.cg, %i.ce                    ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1153
  %i.ck = add i64 %i.cj, %i.ch                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !1154
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !1155
  %i.cp = add i64 %i.cn, %i.co                    ; 3 uses
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN7rocksdb8IOStatusaSERKS0_.exit
  %i.cq = add i64 %i.cp, %i.ck
  %i.cr = uitofp i64 %i.ch to double
  %i.cs = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.ct = insertelement <2 x i64> %i.cs, i64 %i.cq, i64 1
  %i.cu = uitofp <2 x i64> %i.ct to <2 x double>
  %i.cv = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fdiv <2 x double> %i.cu, %i.cw
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN7rocksdb8IOStatusaSERKS0_.exit
  %i.cy = phi <2 x double> [ %i.cx, %bb.s ], [ zeroinitializer, %_ZN7rocksdb8IOStatusaSERKS0_.exit ] ; 2 uses
  %i.cz = load i64, ptr %i.ac, align 8, !tbaa !1156 ; 2 uses
  %.not91 = icmp eq i64 %i.cz, 0
  br i1 %.not91, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.db = insertelement <2 x i64> %i.da, i64 %i.ck, i64 1
  %i.dc = uitofp <2 x i64> %i.db to <2 x double>
  %i.dd = uitofp i64 %i.cz to double
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fdiv <2 x double> %i.dc, %i.df
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dh = phi <2 x double> [ %i.dg, %bb.u ], [ zeroinitializer, %bb.t ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 4 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !330
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.dm = invoke noundef ptr @_ZNK7rocksdb18VersionStorageInfo12LevelSummaryEPNS0_19LevelSummaryStorageE(ptr noundef nonnull align 16 dereferenceable(4288) %i.cc, ptr noundef nonnull %8)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !417
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1157
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !1158
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !1159
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !1160
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !1161
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !1162
  %13 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !371
  %14 = uitofp <2 x i64> %13 to <2 x double>
  %15 = fmul nnan <2 x double> %14, splat (double f0x3EB0000000000000) ; 2 uses
  %i.ed = load i64, ptr %i.cf, align 8, !tbaa !1152
  %i.ee = uitofp i64 %i.ed to double
  %i.ef = fmul nnan double %i.ee, f0x3EB0000000000000
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !1163
  %i.ei = uitofp i64 %i.eh to double
  %i.ej = fmul nnan double %i.ei, f0x3EB0000000000000
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !1164
  %i.em = uitofp i64 %i.el to double
  %i.en = fmul nnan double %i.em, f0x3EB0000000000000
  %i.eo = load i64, ptr %i.cl, align 8, !tbaa !1155
  %i.ep = uitofp i64 %i.eo to double
  %i.eq = fmul nnan double %i.ep, f0x3EB0000000000000
  %i.er = load i64, ptr %i.cm, align 8, !tbaa !1154
  %i.es = uitofp i64 %i.er to double
  %i.et = fmul nnan double %i.es, f0x3EB0000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.eu = load ptr, ptr %9, align 8, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1165
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !1166
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 11444
  %i.fc = load i8, ptr %i.fb, align 4, !tbaa !1167
  invoke void @_ZN7rocksdb23CompressionTypeToStringB5cxx11ENS_15CompressionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i8 noundef zeroext %i.fc)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.fd = load ptr, ptr %10, align 8, !tbaa !9
  %i.fe = extractelement <2 x double> %i.dh, i64 0
  %i.ff = extractelement <2 x double> %i.dh, i64 1
  %i.fg = extractelement <2 x double> %i.cy, i64 0
  %i.fh = extractelement <2 x double> %i.cy, i64 1
  %16 = extractelement <2 x double> %15, i64 0
  %17 = extractelement <2 x double> %15, i64 1
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.dk, ptr noundef nonnull @.str.71, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.dl, ptr noundef %i.dm, double noundef %i.ff, double noundef %i.fe, i32 noundef %i.dq, i32 noundef %i.ds, i32 noundef %i.du, i32 noundef %i.dw, i32 noundef %i.dy, i32 noundef %i.ea, i32 noundef %i.ec, double noundef %16, double noundef %17, double noundef %i.ef, double noundef %i.ej, double noundef %i.en, double noundef %i.eq, double noundef %i.et, double noundef %i.fh, double noundef %i.fg, ptr noundef %i.eu, i64 noundef %i.ew, i64 noundef %i.ey, ptr noundef %i.fd)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.fi = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !15
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.fn = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !15
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cb, i64 2840 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1168 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cb, i64 2848 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1168 ; 2 uses
  %i.fw = icmp eq ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.fx = load ptr, ptr %i.dj, align 8, !tbaa !330
  %i.fy = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !1169
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1172
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !1175
  %i.gc = getelementptr inbounds i8, ptr %i.fv, i64 -16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1169
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1172
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !1175
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.fx, ptr noundef nonnull @.str.72, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.fy, i64 noundef %i.gb, i64 noundef %i.gf)
          to label %bb.ag unwind label %bb.af

bb.ab:                                            ; preds = %bb.v
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ac:                                            ; preds = %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.ad:                                            ; preds = %bb.x
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.ae:                                            ; preds = %bb.y
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.ae
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !15
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.ad ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.gj, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.gp = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !15
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.gh, %bb.ac ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ei

bb.af:                                            ; preds = %bb.ai, %bb.ah, %bb.aa
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ag:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.gv = load i8, ptr %i.al, align 8, !tbaa !978, !range !357, !noundef !358
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gx = load ptr, ptr %i.dj, align 8, !tbaa !330
  %i.gy = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !1177
  %i.hb = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !18
  %i.hd = invoke noundef i32 @_ZNK7rocksdb10Compaction16GetProximalLevelEv(ptr noundef nonnull align 16 dereferenceable(12020) %i.hc)
          to label %bb.ai unwind label %bb.af

bb.ai:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !1178
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !987
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.gx, ptr noundef nonnull @.str.73, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.gy, i64 noundef %i.ha, i32 noundef %i.hd, i32 noundef %i.hf, i64 noundef %i.hh)
          to label %bb.aj unwind label %bb.af

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.hi = load ptr, ptr %i.dj, align 8, !tbaa !330
  invoke void @_ZN7rocksdb17EventLoggerStreamC1EPNS_9LogBufferEm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.hi, i64 noundef 8192)
          to label %_ZN7rocksdb11EventLogger11LogToBufferEPNS_9LogBufferEm.exit unwind label %bb.bi

_ZN7rocksdb11EventLogger11LogToBufferEPNS_9LogBufferEm.exit: ; preds = %bb.aj
  invoke void @_ZN7rocksdb17EventLoggerStream10MakeStreamEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc125 unwind label %bb.bj

.noexc125:                                        ; preds = %_ZN7rocksdb11EventLogger11LogToBufferEPNS_9LogBufferEm.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 56 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !661
  %i.hl = invoke noundef nonnull align 8 dereferenceable(384) ptr @_ZN7rocksdb10JSONWriterlsEPKc(ptr noundef nonnull align 8 dereferenceable(384) %i.hk, ptr noundef nonnull @.str.74)
          to label %_ZN7rocksdb17EventLoggerStreamlsIA4_cEERS0_RKT_.exit unwind label %bb.bj ; 0 uses

_ZN7rocksdb17EventLoggerStreamlsIA4_cEERS0_RKT_.exit: ; preds = %.noexc125
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 720
  invoke void @_ZN7rocksdb17EventLoggerStream10MakeStreamEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc127 unwind label %bb.bj

.noexc127:                                        ; preds = %_ZN7rocksdb17EventLoggerStreamlsIA4_cEERS0_RKT_.exit
  %i.hn = load ptr, ptr %i.hj, align 8, !tbaa !661 ; 6 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !664
  %i.hp = icmp ne i32 %i.ho, 2
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 4, !range !357
  %i.hs = trunc nuw i8 %i.hr to i1
  %or.cond.i.i.i = select i1 %i.hp, i1 true, i1 %i.hs
  br i1 %or.cond.i.i.i, label %.noexc128, label %bb.ak

bb.ak:                                            ; preds = %.noexc127
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef nonnull @.str.204, i64 noundef 2)
          to label %.noexc128 unwind label %bb.bj ; 0 uses

.noexc128:                                        ; preds = %bb.ak, %.noexc127
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hw = load i32, ptr %i.hm, align 8, !tbaa !323
  %i.hx = zext i32 %i.hw to i64
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, i64 noundef %i.hx)
          to label %.noexc129 unwind label %bb.bj ; 0 uses

.noexc129:                                        ; preds = %.noexc128
  %i.hz = load i32, ptr %i.hn, align 8, !tbaa !664
  %.not.i.i.i = icmp eq i32 %i.hz, 2
  br i1 %.not.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc129
  store i32 0, ptr %i.hn, align 8, !tbaa !664
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.noexc129
  store i8 0, ptr %i.hq, align 4, !tbaa !674
  invoke void @_ZN7rocksdb17EventLoggerStream10MakeStreamEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc130 unwind label %bb.bj

.noexc130:                                        ; preds = %bb.am
  %i.ia = load ptr, ptr %i.hj, align 8, !tbaa !661
  %i.ib = invoke noundef nonnull align 8 dereferenceable(384) ptr @_ZN7rocksdb10JSONWriterlsEPKc(ptr noundef nonnull align 8 dereferenceable(384) %i.ia, ptr noundef nonnull @.str.75)
          to label %_ZN7rocksdb17EventLoggerStreamlsIA6_cEERS0_RKT_.exit unwind label %bb.bj ; 0 uses

_ZN7rocksdb17EventLoggerStreamlsIA6_cEERS0_RKT_.exit: ; preds = %.noexc130
  invoke void @_ZN7rocksdb17EventLoggerStream10MakeStreamEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc132 unwind label %bb.bj

.noexc132:                                        ; preds = %_ZN7rocksdb17EventLoggerStreamlsIA6_cEERS0_RKT_.exit
  %i.ic = load ptr, ptr %i.hj, align 8, !tbaa !661
  %i.id = invoke noundef nonnull align 8 dereferenceable(384) ptr @_ZN7rocksdb10JSONWriterlsEPKc(ptr noundef nonnull align 8 dereferenceable(384) %i.ic, ptr noundef nonnull @.str.76)
          to label %_ZN7rocksdb17EventLoggerStreamlsIA20_cEERS0_RKT_.exit unwind label %bb.bj ; 0 uses

_ZN7rocksdb17EventLoggerStreamlsIA20_cEERS0_RKT_.exit: ; preds = %.noexc132
  invoke void @_ZN7rocksdb17EventLoggerStream10MakeStreamEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc134 unwind label %bb.bj

end_hunk_0
