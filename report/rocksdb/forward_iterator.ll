Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/forward_iterator?download=true
inline.NumInlined: 1910
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7rocksdb15ForwardIterator4NextEv:bb.a
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call { ptr, i64 } %i.l(ptr noundef nonnull align 16 dereferenceable(2960) %0) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  store ptr %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = extractvalue { ptr, i64 } %i.m, 1
  store i64 %i.p, ptr %i.o, align 8
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.q = load ptr, ptr %3, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !382
  store ptr %i.q, ptr %5, align 8, !tbaa !128
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !129
  %i.u = load ptr, ptr %i.a, align 16, !tbaa !116
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7rocksdb15ForwardIterator16RebuildIteratorsEb(ptr noundef nonnull align 16 dereferenceable(2960) %0, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.g, %bb.f, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN7rocksdb15ForwardIterator14RenewIteratorsEv(ptr noundef nonnull align 16 dereferenceable(2960) %0)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f, %bb.d
  invoke void @_ZN7rocksdb15ForwardIterator12SeekInternalERKNS_5SliceEbb(ptr noundef nonnull align 16 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.y = load i8, ptr %i.x, align 1, !tbaa !183, !range !297, !noundef !298
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7rocksdb15ForwardIterator12SeekInternalERKNS_5SliceEbb(ptr noundef nonnull align 16 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ab = load i8, ptr %i.aa, align 16, !tbaa !395, !range !297, !noundef !298
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %0, align 16, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke { ptr, i64 } %i.af(ptr noundef nonnull align 16 dereferenceable(2960) %0)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1      ; 2 uses
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !129 ; 2 uses
  %..i = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj)
  %i.ak = load ptr, ptr %5, align 8, !tbaa !128
  %bcmp49 = call i32 @bcmp(ptr %i.ah, ptr %i.ak, i64 %..i)
  %.not.i = icmp eq i32 %bcmp49, 0
  %.not1648 = icmp eq i64 %i.ai, %i.aj
  %.not16 = select i1 %.not.i, i1 %.not1648, i1 false
  br i1 %.not16, label %.critedge19, label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.critedge19:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.am = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge19
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !28
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.t

.critedge:                                        ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ar = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %.critedge
  %i.au = load i64, ptr %i.as, align 8, !tbaa !28
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ad

bb.n:                                             ; preds = %bb.m, %bb.e
  %.pn = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.aw = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.n
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !28
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !385 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !294
  %.not13 = icmp eq ptr %i.bc, %i.be
  br i1 %.not13, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 16, !tbaa !130, !range !297, !noundef !298
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !110 ; 3 uses
  %.not14 = icmp eq ptr %i.bj, null
  br i1 %.not14, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 519
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !124, !range !297, !noundef !298
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bo = load i64, ptr %i.bn, align 16           ; 2 uses
  %i.bp = add i64 %i.bo, -8
  %.sroa.3.0.i = select i1 %i.bm, i64 %i.bo, i64 %i.bp
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !121
  store ptr %.sroa.0.0.i, ptr %6, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.3.0.i, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 152
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call { ptr, i64 } %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1      ; 2 uses
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !110 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !385 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call { ptr, i64 } %i.cb(ptr noundef nonnull align 8 dereferenceable(40) %i.by) ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cc, 0
  store ptr %i.cd, ptr %7, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = extractvalue { ptr, i64 } %i.cc, 1
  store i64 %i.cf, ptr %i.ce, align 8
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 152
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call { ptr, i64 } %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 2 uses
  %i.ck = extractvalue { ptr, i64 } %i.cj, 0
  %i.cl = extractvalue { ptr, i64 } %i.cj, 1      ; 2 uses
  %..i26 = call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.cl)
  %bcmp = call i32 @bcmp(ptr %i.bv, ptr %i.ck, i64 %..i26)
  %.not.i27 = icmp eq i32 %bcmp, 0
  %i.cm = icmp eq i64 %i.bw, %i.cl
  %i.cn = select i1 %.not.i27, i1 %i.cm, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %i.cn, label %..thread_crit_edge, label %bb.t

..thread_crit_edge:                               ; preds = %bb.r
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !385
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.q, %bb.p
  %i.co = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call { ptr, i64 } %i.cs(ptr noundef nonnull align 8 dereferenceable(40) %i.co) ; 2 uses
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0
  %i.cv = extractvalue { ptr, i64 } %i.ct, 1      ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 519
  store i8 0, ptr %i.cw, align 1, !tbaa !124
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !123
  %i.cz = icmp ugt i64 %i.cv, %i.cy
  br i1 %i.cz, label %bb.s, label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEb.exit

bb.s:                                             ; preds = %.thread
  call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %i.cp, i64 noundef %i.cv)
  br label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEb.exit

_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEb.exit: ; preds = %.thread, %bb.s
  %i.da = load ptr, ptr %i.cp, align 16, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  %i.db = load ptr, ptr %i.cp, align 16, !tbaa !184
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !121
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %i.cv, ptr %i.dd, align 16, !tbaa !122
  store i8 1, ptr %i.bf, align 16, !tbaa !130
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 657
  store i8 0, ptr %i.de, align 1, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEb.exit, %bb.r
  %.1 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEb.exit ], [ false, %bb.r ], [ false, %bb.o ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 9 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !385 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(40) %i.dg)
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !385 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !294
  %.not17 = icmp eq ptr %i.dk, %i.dm
  br i1 %.not17, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.dk)
  %i.dq = load i8, ptr %8, align 8, !tbaa !494
  %i.dr = icmp eq i8 %i.dq, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.u, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.dr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.du = load ptr, ptr %i.df, align 8, !tbaa !385 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 120
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %i.du)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dz = load <4 x i8>, ptr %9, align 8, !tbaa !28
  store <4 x i8> %i.dz, ptr %i.dy, align 8, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %9, align 8, !tbaa !28
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !392, !range !297, !noundef !298
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i8 %i.eb, ptr %i.ec, align 4, !tbaa !393
  store i8 0, ptr %i.ea, align 4, !tbaa !393
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !28
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !394
  store i8 0, ptr %i.ed, align 1, !tbaa !394
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !184
  store ptr null, ptr %i.eg, align 8, !tbaa !184
  %i.ej = load ptr, ptr %i.eh, align 16, !tbaa !184 ; 2 uses
  store ptr %i.ei, ptr %i.eh, align 16, !tbaa !184
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit33, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ej) #26
  %.pr = load ptr, ptr %i.eg, align 8, !tbaa !184 ; 2 uses
  %.not.i.i31 = icmp eq ptr %.pr, null
  br i1 %.not.i.i31, label %_ZN7rocksdb6StatusD2Ev.exit33, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i32

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i32: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit33

_ZN7rocksdb6StatusD2Ev.exit33:                    ; preds = %bb.v, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ac

bb.w:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.ek = load ptr, ptr %i.df, align 8, !tbaa !385 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(40) %i.ek)
  br i1 %i.eo, label %bb.x, label %.critedge2

bb.x:                                             ; preds = %bb.w
  %i.ep = load ptr, ptr %i.df, align 8, !tbaa !385 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = call { ptr, i64 } %i.es(ptr noundef nonnull align 8 dereferenceable(40) %i.ep) ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !381 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  br i1 %i.ew, label %_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit.thread, label %_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit

_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit.thread: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.y

_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit: ; preds = %bb.x
  %i.ex = extractvalue { ptr, i64 } %i.et, 1
  %i.ey = extractvalue { ptr, i64 } %i.et, 0
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !105
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !112
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32 ; 2 uses
  %i.fe = add i64 %i.ex, -8
  store ptr %i.ey, ptr %2, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fe, ptr %i.ff, align 8
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ev), !inline_history !500
  %i.fk = icmp sgt i32 %i.fj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.fk, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit.thread, %_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @_ZNSt14priority_queueIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt6vectorIS4_SaIS4_EENS0_17MinIterComparatorEE4pushERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.df)
  br label %bb.ac

.critedge2:                                       ; preds = %bb.w, %_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit
  %i.fm = load ptr, ptr %i.df, align 8, !tbaa !385 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call noundef zeroext i1 %i.fp(ptr noundef nonnull align 8 dereferenceable(40) %i.fm)
  br i1 %i.fq, label %bb.z, label %.critedge4

bb.z:                                             ; preds = %.critedge2
  %i.fr = load ptr, ptr %i.df, align 8, !tbaa !385 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !30
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call { ptr, i64 } %i.fu(ptr noundef nonnull align 8 dereferenceable(40) %i.fr) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !381 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  br i1 %i.fy, label %_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit34.thread, label %_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit34

_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit34.thread: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.critedge4

_ZNK7rocksdb15ForwardIterator16IsOverUpperBoundERKNS_5SliceE.exit34: ; preds = %bb.z
  %i.fz = extractvalue { ptr, i64 } %i.fv, 1
  %i.ga = extractvalue { ptr, i64 } %i.fv, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !105
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !112
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 2 uses
  %i.gg = add i64 %i.fz, -8
  store ptr %i.ga, ptr %1, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.gg, ptr %i.gh, align 8
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !30
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef i32 %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.fx), !inline_history !500
  %i.gm = icmp sgt i32 %i.gl, -1
end_hunk_0
