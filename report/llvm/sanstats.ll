Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/sanstats?download=true
inline.NumInlined: 420
inline.NumDeleted: 253
begin_hunk_0_@main:bb.a
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.ae, 2
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.8, i64 noundef 2) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 8250, ptr %i.ab, align 1
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.f, %bb.g
  %.0.i.i20 = phi ptr [ %i.ag, %bb.f ], [ %.0.i.i, %bb.g ]
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL11ClInputFileB5cxx11, i64 120), align 8, !tbaa !14
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL11ClInputFileB5cxx11, i64 128), align 8, !tbaa !39
  %i.al = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i20, ptr noundef %i.aj, i64 noundef %i.ak) #18 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ult i64 %i.as, 2
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.au = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull @.str.8, i64 noundef 2) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  store i16 8250, ptr %i.ap, align 1
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store ptr %i.aw, ptr %i.ao, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

_ZN4llvm11raw_ostreamlsEPKc.exit25:               ; preds = %bb.h, %bb.i
  %.0.i.i24 = phi ptr [ %i.au, %bb.h ], [ %i.al, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.ax = load i8, ptr %i.h, align 8
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  %.sroa.0.0.copyload.i = load i32, ptr %13, align 8, !tbaa !40
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !41
  br label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #20
  br label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit

_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit: ; preds = %bb.j, %bb.k
  %.sroa.31.0.i = phi ptr [ %.sroa.31.0.copyload.i, %bb.j ], [ %i.az, %bb.k ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %bb.j ], [ 0, %bb.k ]
  %i.ba = load ptr, ptr %.sroa.31.0.i, align 8, !tbaa !8, !noalias !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !43
  call void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.31.0.i, i32 noundef %.sroa.0.0.i) #18, !inline_history !46
  %i.bd = load ptr, ptr %15, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !39
  %i.bg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i24, ptr noundef %i.bd, i64 noundef %i.bf) #18 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34
  %.not.i = icmp ult ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  %i.bl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i8 noundef zeroext 10) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.m:                                             ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !38
  store i8 10, ptr %i.bi, align 1, !tbaa !19
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.l, %bb.m
  %i.bn = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !19
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.n:                                             ; preds = %bb.a
  %i.bs = load i64, ptr %13, align 8, !tbaa !47   ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  store ptr null, ptr %13, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !49 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !51 ; 11 uses
  %i.by = icmp eq ptr %i.bv, %i.bx
  br i1 %i.by, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bz = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #18 ; 6 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !33    ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i26, label %_ZN4llvm11raw_ostreamlsEPKc.exit30, label %_ZN4llvm9StringRefC2EPKc.exit.i27

_ZN4llvm9StringRefC2EPKc.exit.i27:                ; preds = %bb.o
  %i.cb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ca) #18 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !38 ; 2 uses
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = icmp ugt i64 %i.cb, %i.ci
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i27
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull %i.ca, i64 noundef %i.cb) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.q:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i27
  %.not.i2.i28 = icmp eq i64 %i.cb, 0
  br i1 %.not.i2.i28, label %_ZN4llvm11raw_ostreamlsEPKc.exit30, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %i.ca, i64 %i.cb, i1 false)
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cb
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

_ZN4llvm11raw_ostreamlsEPKc.exit30:               ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i.i29 = phi ptr [ %i.ck, %bb.p ], [ %i.bz, %bb.r ], [ %i.bz, %bb.q ], [ %i.bz, %bb.o ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 32 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !38 ; 2 uses
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.ct, 2
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  %i.cv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i29, ptr noundef nonnull @.str.8, i64 noundef 2) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  store i16 8250, ptr %i.cq, align 1
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store ptr %i.cx, ptr %i.cp, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

_ZN4llvm11raw_ostreamlsEPKc.exit34:               ; preds = %bb.s, %bb.t
  %.0.i.i33 = phi ptr [ %i.cv, %bb.s ], [ %.0.i.i29, %bb.t ]
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL11ClInputFileB5cxx11, i64 120), align 8, !tbaa !14
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL11ClInputFileB5cxx11, i64 128), align 8, !tbaa !39
  %i.da = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i33, ptr noundef %i.cy, i64 noundef %i.cz) #18 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !34
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp ult i64 %i.dh, 13
  br i1 %i.di, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.dj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull @.str.9, i64 noundef 13) #18 ; 0 uses
  br label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.de, ptr noundef nonnull align 1 dereferenceable(13) @.str.9, i64 13, i1 false)
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !38
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 13
  store ptr %i.dl, ptr %i.dd, align 8, !tbaa !38
  br label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

bb.w:                                             ; preds = %bb.n
  %i.dm = ptrtoaddr ptr %i.bx to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.do = load i8, ptr %i.bv, align 1, !tbaa !19  ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 9
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 11
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.et = icmp ne i8 %i.do, 0                     ; 2 uses
  %i.eu = sext i8 %i.do to i64                    ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 21
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 22
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 33
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fl = shl nsw i64 %i.eu, 3
  %i.fm = add nsw i64 %i.fl, 4294967293
  %i.fn = and i64 %i.fm, 4294967293               ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.fn
  %i.fo = xor i64 %notmask.i.i, -1
  %i.fp = add i64 %i.dm, -2
  %i.fq = mul nsw i64 %i.eu, -2
  %16 = add i64 %i.dm, -2
  %17 = mul nsw i64 %i.eu, -2
  %18 = add i8 %i.do, -1
  %19 = zext i8 %18 to i64
  %20 = add i8 %i.do, -1
  %i.fr = zext i8 %20 to i64
  br label %bb.x

bb.x:                                             ; preds = %_ZL10ReadModulecPKcS0_.exit, %bb.w
  %.0 = phi ptr [ %i.dn, %bb.w ], [ %.2.i, %_ZL10ReadModulecPKcS0_.exit ] ; 5 uses
  %.not = icmp eq ptr %.0, %i.bx
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit38, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %bb.z
  %indvar = phi i64 [ 0, %bb.y ], [ %indvar.next, %bb.z ] ; 3 uses
  %.038115.i = phi ptr [ %.0, %bb.y ], [ %i.ft, %bb.z ] ; 4 uses
  %i.fs = load i8, ptr %.038115.i, align 1, !tbaa !19
  %.not44.i = icmp eq i8 %i.fs, 0
  br i1 %.not44.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.038115.i, i64 1 ; 2 uses
  %.not.i39 = icmp eq ptr %i.ft, %i.bx
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i39, label %_ZL10ReadModulecPKcS0_.exit.thread, label %.lr.ph.i, !llvm.loop !52

_ZL10ReadModulecPKcS0_.exit.thread:               ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit

.critedge.i:                                      ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.fu = ptrtoint ptr %.038115.i to i64
  %i.fv = ptrtoint ptr %.0 to i64                 ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 4 uses
  store ptr %i.dp, ptr %2, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 %i.fw, ptr %i.c, align 8, !tbaa !55
  %i.fx = icmp ugt i64 %i.fw, 15
  br i1 %i.fx, label %bb.aa, label %._crit_edge.i.i.i

bb.aa:                                            ; preds = %.critedge.i
  %i.fy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #18 ; 2 uses
  store ptr %i.fy, ptr %2, align 8, !tbaa !14
  %i.fz = load i64, ptr %i.c, align 8, !tbaa !55
  store i64 %i.fz, ptr %i.dp, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.aa, %.critedge.i
  %i.ga = phi ptr [ %i.fy, %bb.aa ], [ %i.dp, %.critedge.i ] ; 2 uses
  switch i64 %i.fw, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.gb = load i8, ptr %.0, align 1, !tbaa !19
  store i8 %i.gb, ptr %i.ga, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr nonnull align 1 %.0, i64 %i.fw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i
  %i.gc = load i64, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  store i64 %i.gc, ptr %i.dq, align 8, !tbaa !39
  %i.gd = load ptr, ptr %2, align 8, !tbaa !14
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gc
  store i8 0, ptr %i.ge, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i8 4, ptr %i.dr, align 8, !tbaa !29
  store i8 1, ptr %i.ds, align 1, !tbaa !32
  store ptr %2, ptr %3, align 8, !tbaa !19
  %i.gf = call { i32, ptr } @_ZN4llvm3sys2fs6accessERKNS_5TwineENS1_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 0) #18
  %i.gg = extractvalue { i32, ptr } %i.gf, 0
  %.not.i.i40 = icmp eq i32 %i.gg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.not.i.i40, label %bb.ay, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL11ClInputFileB5cxx11, i64 120), align 8, !tbaa !14
  %i.gi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL11ClInputFileB5cxx11, i64 128), align 8, !tbaa !39
  %i.gj = call { ptr, i64 } @_ZN4llvm3sys4path11parent_pathENS_9StringRefENS1_5StyleE(ptr %i.gh, i64 %i.gi, i32 noundef 0) #18 ; 2 uses
  %i.gk = extractvalue { ptr, i64 } %i.gj, 0      ; 3 uses
  %i.gl = extractvalue { ptr, i64 } %i.gj, 1      ; 5 uses
  store ptr %i.dt, ptr %5, align 8, !tbaa !54
  %i.gm = icmp eq ptr %i.gk, null
  %i.gn = icmp ne i64 %i.gl, 0
  %or.cond.i.i.i.i = and i1 %i.gm, %i.gn
  br i1 %or.cond.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #21
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.gl, ptr %i.b, align 8, !tbaa !55
  %i.go = icmp ugt i64 %i.gl, 15
  br i1 %i.go, label %bb.ag, label %._crit_edge.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18 ; 2 uses
  store ptr %i.gp, ptr %5, align 8, !tbaa !14
  %i.gq = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.gq, ptr %i.dt, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ag, %bb.af
  %i.gr = phi ptr [ %i.gp, %bb.ag ], [ %i.dt, %bb.af ] ; 2 uses
  switch i64 %i.gl, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.gs = load i8, ptr %i.gk, align 1, !tbaa !19
  store i8 %i.gs, ptr %i.gr, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr align 1 %i.gk, i64 %i.gl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i: ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i.i.i
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  store i64 %i.gt, ptr %i.du, align 8, !tbaa !39
  %i.gu = load ptr, ptr %5, align 8, !tbaa !14
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gt
  store i8 0, ptr %i.gv, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.gw = load ptr, ptr %2, align 8, !tbaa !14
  %i.gx = load i64, ptr %i.dq, align 8, !tbaa !39
  %i.gy = call { ptr, i64 } @_ZN4llvm3sys4path8filenameENS_9StringRefENS1_5StyleE(ptr %i.gw, i64 %i.gx, i32 noundef 0) #18 ; 2 uses
  %i.gz = extractvalue { ptr, i64 } %i.gy, 0      ; 3 uses
  %i.ha = extractvalue { ptr, i64 } %i.gy, 1      ; 5 uses
  store ptr %i.dv, ptr %6, align 8, !tbaa !54
  %i.hb = icmp eq ptr %i.gz, null
  %i.hc = icmp ne i64 %i.ha, 0
  %or.cond.i.i.i45.i = and i1 %i.hb, %i.hc
  br i1 %or.cond.i.i.i45.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #21
  unreachable

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ha, ptr %i.a, align 8, !tbaa !55
  %i.hd = icmp ugt i64 %i.ha, 15
  br i1 %i.hd, label %bb.al, label %._crit_edge.i.i.i.i46.i

bb.al:                                            ; preds = %bb.ak
  %i.he = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.he, ptr %6, align 8, !tbaa !14
  %i.hf = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.hf, ptr %i.dv, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i46.i

._crit_edge.i.i.i.i46.i:                          ; preds = %bb.al, %bb.ak
  %i.hg = phi ptr [ %i.he, %bb.al ], [ %i.dv, %bb.ak ] ; 2 uses
  switch i64 %i.ha, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit47.i
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i.i46.i
  %i.hh = load i8, ptr %i.gz, align 1, !tbaa !19
  store i8 %i.hh, ptr %i.hg, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit47.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i46.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr align 1 %i.gz, i64 %i.ha, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit47.i: ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i.i46.i
  %i.hi = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  store i64 %i.hi, ptr %i.dw, align 8, !tbaa !39
  %i.hj = load ptr, ptr %6, align 8, !tbaa !14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  store i8 0, ptr %i.hk, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.hl = load i64, ptr %i.du, align 8, !tbaa !39, !noalias !56 ; 4 uses
  %i.hm = load i64, ptr %i.dw, align 8, !tbaa !39, !noalias !56 ; 4 uses
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  %i.ho = load ptr, ptr %5, align 8, !tbaa !14, !noalias !56 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.dt
  br i1 %i.hp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit47.i
  %i.hq = icmp ult i64 %i.hl, 16
  call void @llvm.assume(i1 %i.hq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

end_hunk_0
begin_hunk_1_@main:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.ib, i64 %i.ig, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i.i: ; preds = %.critedge.i.i
  store ptr %i.ia, ptr %4, align 8, !tbaa !14, !alias.scope !56
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !19
  store i64 %i.ih, ptr %i.dx, align 8, !tbaa !19, !alias.scope !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i.i, %bb.ap
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !39
  store i64 %i.ij, ptr %i.dy, align 8, !tbaa !39, !alias.scope !56
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !14
  store i64 0, ptr %i.ii, align 8, !tbaa !39
  store i8 0, ptr %i.ib, align 8, !tbaa !19
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ik = sub i64 4611686018427387903, %i.hl
  %i.il = icmp ult i64 %i.ik, %i.hm
  br i1 %i.il, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #21, !noalias !56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.aq
  %i.im = load ptr, ptr %6, align 8, !tbaa !14, !noalias !56
  %i.in = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.im, i64 noundef %i.hm) #18, !noalias !56 ; 5 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !54, !alias.scope !56
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !14 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 5 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i.i

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !39 ; 2 uses
  %i.it = icmp ult i64 %i.is, 16
  call void @llvm.assume(i1 %i.it)
  %i.iu = add nuw nsw i64 %i.is, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.ip, i64 %i.iu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  store ptr %i.io, ptr %4, align 8, !tbaa !14, !alias.scope !56
  %i.iv = load i64, ptr %i.ip, align 8, !tbaa !19
  store i64 %i.iv, ptr %i.dx, align 8, !tbaa !19, !alias.scope !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i.i, %bb.as
  %i.iw = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !39
  store i64 %i.ix, ptr %i.dy, align 8, !tbaa !39, !alias.scope !56
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !14
  store i64 0, ptr %i.iw, align 8, !tbaa !39
  store i8 0, ptr %i.ip, align 8, !tbaa !19
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.iy = load ptr, ptr %2, align 8, !tbaa !14    ; 6 uses
  %i.iz = icmp eq ptr %i.iy, %i.dp
  %i.ja = load ptr, ptr %4, align 8, !tbaa !14    ; 5 uses
  %i.jb = icmp eq ptr %i.ja, %i.dx                ; 2 uses
  br i1 %i.iz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i
  br i1 %i.jb, label %bb.at, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i
  br i1 %i.jb, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %i.jc = load i64, ptr %i.dy, align 8, !tbaa !39 ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  switch i64 %i.jc, label %bb.av [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.je = load i8, ptr %i.ja, align 1, !tbaa !19
  store i8 %i.je, ptr %i.iy, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr align 1 %i.ja, i64 %i.jc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.jf = load i64, ptr %i.dy, align 8, !tbaa !39 ; 2 uses
  store i64 %i.jf, ptr %i.dq, align 8, !tbaa !39
  %i.jg = load ptr, ptr %2, align 8, !tbaa !14
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jf
  store i8 0, ptr %i.jh, align 1, !tbaa !19
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  store ptr %i.ja, ptr %2, align 8, !tbaa !14
  %i.ji = load <2 x i64>, ptr %i.dy, align 8, !tbaa !19
  store <2 x i64> %i.ji, ptr %i.dq, align 8, !tbaa !19
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41
  %i.jj = load i64, ptr %i.dp, align 8, !tbaa !19
  store ptr %i.ja, ptr %2, align 8, !tbaa !14
  %i.jk = load <2 x i64>, ptr %i.dy, align 8, !tbaa !19
  store <2 x i64> %i.jk, ptr %i.dq, align 8, !tbaa !19
  %.not.i49.i = icmp eq ptr %i.iy, null
  br i1 %.not.i49.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.iy, ptr %4, align 8, !tbaa !14
  store i64 %i.jj, ptr %i.dx, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.dx, ptr %4, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ax, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.jl = phi ptr [ %i.iy, %bb.aw ], [ %i.dx, %bb.ax ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.dy, align 8, !tbaa !39
  store i8 0, ptr %i.jl, align 1, !tbaa !19
  %i.jm = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.dx
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.jo = load i64, ptr %i.dx, align 8, !tbaa !19
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  %i.jq = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.dv
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.js = load i64, ptr %i.dv, align 8, !tbaa !19
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ju = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.dt
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i
  %i.jw = load i64, ptr %i.dt, align 8, !tbaa !19
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.038115.i, i64 1 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.bx
  br i1 %i.jz, label %bb.cn, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 2, ptr %7, align 8, !tbaa !59
  store i32 4, ptr %i.dz, align 4, !tbaa !68
  store i8 0, ptr %i.ea, align 8, !tbaa !69
  store i32 0, ptr %i.ed, align 1
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !54
  store i64 0, ptr %i.eg, align 8, !tbaa !39
  store i8 0, ptr %i.ef, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !54
  store i64 0, ptr %i.ek, align 8, !tbaa !39
  store i8 0, ptr %i.ej, align 8, !tbaa !19
  store ptr %i.em, ptr %i.el, align 8, !tbaa !54
  store i64 0, ptr %i.en, align 8, !tbaa !39
  store i8 0, ptr %i.em, align 8, !tbaa !19
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !54
  store i64 0, ptr %i.eq, align 8, !tbaa !39
  store i8 0, ptr %i.ep, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.er, i8 0, i64 48, i1 false)
  store i64 4294967296, ptr %i.es, align 8, !tbaa !70
  %i.ka = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10ClDemangle, i64 120), align 8, !tbaa !71, !range !24, !noundef !25
  store i8 %i.ka, ptr %i.ec, align 2, !tbaa !77
  store i8 1, ptr %i.eb, align 1, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN4llvm9symbolize14LLVMSymbolizerC1ERKNS1_7OptionsE(ptr noundef nonnull align 8 dereferenceable(496) %8, ptr noundef nonnull align 8 dereferenceable(224) %7) #18
  %i.kb = add i64 %i.eu, %i.fv
  %i.kc = add i64 %i.kb, %indvar
  %i.kd = sub i64 %i.fp, %i.kc
  %i.ke = add i64 %indvar, %i.fv
  %i.kf = sub i64 %16, %i.ke
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit95.i, %bb.az
  %indvar140 = phi i64 [ %indvar.next141, %_ZN4llvm11raw_ostreamlsEc.exit95.i ], [ 0, %bb.az ] ; 3 uses
  %.139.i = phi ptr [ %i.mt, %_ZN4llvm11raw_ostreamlsEc.exit95.i ], [ %i.jy, %bb.az ] ; 5 uses
  %i.kg = mul i64 %i.fq, %indvar140
  %i.kh = add i64 %i.kd, %i.kg
  %i.ki = icmp ult ptr %.139.i, %i.bx
  %i.kj = and i1 %i.et, %i.ki
  br i1 %i.kj, label %.lr.ph.i.i.preheader, label %_ZL6ReadLEcPKcS0_.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.ba
  %21 = mul i64 %17, %indvar140
  %22 = add i64 %i.kf, %21
  %23 = call i64 @llvm.umin.i64(i64 %22, i64 %19) ; 2 uses
  %24 = add nuw nsw i64 %23, 1                    ; 2 uses
  %min.iters.check147 = icmp samesign ult i64 %23, 3
  br i1 %min.iters.check147, label %.lr.ph.i.i.preheader169, label %vector.ph148

vector.ph148:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec149 = and i64 %24, 508                    ; 4 uses
  %i.kk = trunc i64 %n.vec149 to i8
  %i.kl = getelementptr i8, ptr %.139.i, i64 %n.vec149
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next159, %vector.body150 ] ; 2 uses
  %vec.ind152 = phi <2 x i8> [ <i8 0, i8 1>, %vector.ph148 ], [ %vec.ind.next160, %vector.body150 ] ; 3 uses
  %vec.phi153.a = phi <2 x i64> [ zeroinitializer, %vector.ph148 ], [ %i.kx, %vector.body150 ]
  %vec.phi154 = phi <2 x i64> [ zeroinitializer, %vector.ph148 ], [ %i.ky, %vector.body150 ]
  %step.add155 = add nuw <2 x i8> %vec.ind152, splat (i8 2)
  %next.gep156 = getelementptr i8, ptr %.139.i, i64 %index151 ; 2 uses
  %i.km = sext <2 x i8> %vec.ind152 to <2 x i64>
  %i.kn = sext <2 x i8> %step.add155 to <2 x i64>
  %i.ko = getelementptr i8, ptr %next.gep156, i64 2
  %wide.load157.a = load <2 x i8>, ptr %next.gep156, align 1, !tbaa !19
  %wide.load158 = load <2 x i8>, ptr %i.ko, align 1, !tbaa !19
  %i.kp = zext <2 x i8> %wide.load157.a to <2 x i64>
  %i.kq = zext <2 x i8> %wide.load158 to <2 x i64>
  %i.kr = shl nsw <2 x i64> %i.km, splat (i64 3)
  %i.ks = shl nsw <2 x i64> %i.kn, splat (i64 3)
  %i.kt = and <2 x i64> %i.kr, splat (i64 4294967288)
  %i.ku = and <2 x i64> %i.ks, splat (i64 4294967288)
  %i.kv = shl <2 x i64> %i.kp, %i.kt
  %i.kw = shl <2 x i64> %i.kq, %i.ku
  %i.kx = or <2 x i64> %i.kv, %vec.phi153.a       ; 2 uses
  %i.ky = or <2 x i64> %i.kw, %vec.phi154         ; 2 uses
  %index.next159 = add nuw i64 %index151, 4       ; 2 uses
  %vec.ind.next160 = add nuw <2 x i8> %vec.ind152, splat (i8 4)
  %i.kz = icmp eq i64 %index.next159, %n.vec149
  br i1 %i.kz, label %middle.block161, label %vector.body150, !llvm.loop !79

middle.block161:                                  ; preds = %vector.body150
  %bin.rdx162 = or <2 x i64> %i.ky, %i.kx
  %i.la = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx162) ; 2 uses
  %cmp.n163 = icmp eq i64 %24, %n.vec149
  br i1 %cmp.n163, label %_ZL6ReadLEcPKcS0_.exit.i, label %.lr.ph.i.i.preheader169

.lr.ph.i.i.preheader169:                          ; preds = %.lr.ph.i.i.preheader, %middle.block161
  %.014.i.i.ph = phi i8 [ 0, %.lr.ph.i.i.preheader ], [ %i.kk, %middle.block161 ]
  %.0913.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.la, %middle.block161 ]
  %.01012.i.i.ph = phi ptr [ %.139.i, %.lr.ph.i.i.preheader ], [ %i.kl, %middle.block161 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader169, %.lr.ph.i.i
  %.014.i.i = phi i8 [ %i.lj, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 2 uses
  %.0913.i.i = phi i64 [ %i.lh, %.lr.ph.i.i ], [ %.0913.i.i.ph, %.lr.ph.i.i.preheader169 ]
  %.01012.i.i = phi ptr [ %i.li, %.lr.ph.i.i ], [ %.01012.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 2 uses
  %i.lb = sext i8 %.014.i.i to i64
  %i.lc = load i8, ptr %.01012.i.i, align 1, !tbaa !19
  %i.ld = zext i8 %i.lc to i64
  %i.le = shl nsw i64 %i.lb, 3
  %i.lf = and i64 %i.le, 4294967288
  %i.lg = shl i64 %i.ld, %i.lf
  %i.lh = or i64 %i.lg, %.0913.i.i                ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 1 ; 2 uses
  %i.lj = add nuw i8 %.014.i.i, 1                 ; 2 uses
  %i.lk = icmp ult ptr %i.li, %i.bx
  %i.ll = icmp ne i8 %i.lj, %i.do
  %i.lm = select i1 %i.lk, i1 %i.ll, i1 false
  br i1 %i.lm, label %.lr.ph.i.i, label %_ZL6ReadLEcPKcS0_.exit.i, !llvm.loop !82

_ZL6ReadLEcPKcS0_.exit.i:                         ; preds = %.lr.ph.i.i, %middle.block161, %bb.ba
  %.09.lcssa.i.i = phi i64 [ 0, %bb.ba ], [ %i.la, %middle.block161 ], [ %i.lh, %.lr.ph.i.i ] ; 2 uses
  %i.ln = getelementptr inbounds i8, ptr %.139.i, i64 %i.eu ; 5 uses
  %i.lo = icmp ult ptr %i.ln, %i.bx
  %i.lp = and i1 %i.et, %i.lo
  br i1 %i.lp, label %.lr.ph.i59.i.preheader, label %_ZL6ReadLEcPKcS0_.exit63.i

.lr.ph.i59.i.preheader:                           ; preds = %_ZL6ReadLEcPKcS0_.exit.i
  %25 = call i64 @llvm.umin.i64(i64 %i.kh, i64 %i.fr) ; 2 uses
  %26 = add nuw nsw i64 %25, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %25, 3
  br i1 %min.iters.check, label %.lr.ph.i59.i.preheader168, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i59.i.preheader
  %n.vec = and i64 %26, 508                       ; 4 uses
  %i.lq = trunc i64 %n.vec to i8
  %i.lr = getelementptr i8, ptr %i.ln, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i8> [ <i8 0, i8 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.md, %vector.body ]
  %vec.phi142 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.me, %vector.body ]
  %step.add = add nuw <2 x i8> %vec.ind, splat (i8 2)
  %next.gep = getelementptr i8, ptr %i.ln, i64 %index ; 2 uses
  %i.ls = sext <2 x i8> %vec.ind to <2 x i64>
  %i.lt = sext <2 x i8> %step.add to <2 x i64>
  %i.lu = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !19
  %wide.load143 = load <2 x i8>, ptr %i.lu, align 1, !tbaa !19
  %i.lv = zext <2 x i8> %wide.load to <2 x i64>
  %i.lw = zext <2 x i8> %wide.load143 to <2 x i64>
  %i.lx = shl nsw <2 x i64> %i.ls, splat (i64 3)
  %i.ly = shl nsw <2 x i64> %i.lt, splat (i64 3)
  %i.lz = and <2 x i64> %i.lx, splat (i64 4294967288)
  %i.ma = and <2 x i64> %i.ly, splat (i64 4294967288)
  %i.mb = shl <2 x i64> %i.lv, %i.lz
  %i.mc = shl <2 x i64> %i.lw, %i.ma
  %i.md = or <2 x i64> %i.mb, %vec.phi            ; 2 uses
  %i.me = or <2 x i64> %i.mc, %vec.phi142         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i8> %vec.ind, splat (i8 4)
  %i.mf = icmp eq i64 %index.next, %n.vec
  br i1 %i.mf, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.me, %i.md
  %i.mg = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %26, %n.vec
  br i1 %cmp.n, label %_ZL6ReadLEcPKcS0_.exit63.i, label %.lr.ph.i59.i.preheader168

.lr.ph.i59.i.preheader168:                        ; preds = %.lr.ph.i59.i.preheader, %middle.block
  %.014.i60.i.ph = phi i8 [ 0, %.lr.ph.i59.i.preheader ], [ %i.lq, %middle.block ]
  %.0913.i61.i.ph = phi i64 [ 0, %.lr.ph.i59.i.preheader ], [ %i.mg, %middle.block ]
  %.01012.i62.i.ph = phi ptr [ %i.ln, %.lr.ph.i59.i.preheader ], [ %i.lr, %middle.block ]
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.preheader168, %.lr.ph.i59.i
  %.014.i60.i = phi i8 [ %i.mp, %.lr.ph.i59.i ], [ %.014.i60.i.ph, %.lr.ph.i59.i.preheader168 ] ; 2 uses
  %.0913.i61.i = phi i64 [ %i.mn, %.lr.ph.i59.i ], [ %.0913.i61.i.ph, %.lr.ph.i59.i.preheader168 ]
  %.01012.i62.i = phi ptr [ %i.mo, %.lr.ph.i59.i ], [ %.01012.i62.i.ph, %.lr.ph.i59.i.preheader168 ] ; 2 uses
  %i.mh = sext i8 %.014.i60.i to i64
  %i.mi = load i8, ptr %.01012.i62.i, align 1, !tbaa !19
  %i.mj = zext i8 %i.mi to i64
  %i.mk = shl nsw i64 %i.mh, 3
  %i.ml = and i64 %i.mk, 4294967288
  %i.mm = shl i64 %i.mj, %i.ml
  %i.mn = or i64 %i.mm, %.0913.i61.i              ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.01012.i62.i, i64 1 ; 2 uses
  %i.mp = add nuw i8 %.014.i60.i, 1               ; 2 uses
  %i.mq = icmp ult ptr %i.mo, %i.bx
  %i.mr = icmp ne i8 %i.mp, %i.do
  %i.ms = select i1 %i.mq, i1 %i.mr, i1 false
  br i1 %i.ms, label %.lr.ph.i59.i, label %_ZL6ReadLEcPKcS0_.exit63.i, !llvm.loop !84

_ZL6ReadLEcPKcS0_.exit63.i:                       ; preds = %.lr.ph.i59.i, %middle.block, %_ZL6ReadLEcPKcS0_.exit.i
  %.09.lcssa.i58.i = phi i64 [ 0, %_ZL6ReadLEcPKcS0_.exit.i ], [ %i.mg, %middle.block ], [ %i.mn, %.lr.ph.i59.i ] ; 3 uses
  %i.mt = getelementptr inbounds i8, ptr %i.ln, i64 %i.eu ; 4 uses
  %i.mu = icmp ugt ptr %i.mt, %i.bx
  br i1 %i.mu, label %bb.cm, label %bb.bb

bb.bb:                                            ; preds = %_ZL6ReadLEcPKcS0_.exit63.i
  %i.mv = or i64 %.09.lcssa.i58.i, %.09.lcssa.i.i
  %or.cond.i = icmp eq i64 %i.mv, 0
  br i1 %or.cond.i, label %bb.cm, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mw = icmp eq ptr %i.mt, %i.bx
  br i1 %i.mw, label %bb.cm, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.mx = load ptr, ptr %2, align 8, !tbaa !14
  %i.my = load i64, ptr %i.dq, align 8, !tbaa !39
  %i.mz = add i64 %.09.lcssa.i.i, -1              ; 2 uses
  call void @_ZN4llvm9symbolize14LLVMSymbolizer13symbolizeCodeENS_9StringRefENS_6object16SectionedAddressE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %9, ptr noundef nonnull align 8 dereferenceable(496) %8, ptr %i.mx, i64 %i.my, i64 %i.mz, i64 -1) #18
  %i.na = load i8, ptr %i.ev, align 8
  %i.nb = trunc i8 %i.na to i1
  br i1 %i.nb, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nc = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i64 %i.mz, ptr %10, align 8, !tbaa !85, !alias.scope !87
  store i64 0, ptr %i.ew, align 8, !tbaa !90, !alias.scope !87
  store i32 18, ptr %i.ex, align 8, !tbaa !91, !alias.scope !87
  store i8 1, ptr %i.ey, align 4, !tbaa !92, !alias.scope !87
  store i8 0, ptr %i.ez, align 1, !tbaa !93, !alias.scope !87
  store i8 1, ptr %i.fa, align 2, !tbaa !94, !alias.scope !87
  %i.nd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(48) %i.nc, ptr noundef nonnull align 8 dereferenceable(23) %10) #18 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !38 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !34
  %.not.i64.i = icmp ult ptr %i.nf, %i.nh
  br i1 %.not.i64.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ni = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.nd, i8 noundef zeroext 32) #18
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  store ptr %i.nj, ptr %i.ne, align 8, !tbaa !38
  store i8 32, ptr %i.nf, align 1, !tbaa !19
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.bg, %bb.bf
  %.0.i.i42 = phi ptr [ %i.ni, %bb.bf ], [ %i.nd, %bb.bg ]
  %i.nk = load ptr, ptr %9, align 8, !tbaa !14
  %i.nl = load i64, ptr %i.fb, align 8, !tbaa !39
  %i.nm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i42, ptr noundef %i.nk, i64 noundef %i.nl) #18 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !38 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !34
  %.not.i65.i = icmp ult ptr %i.no, %i.nq
  br i1 %.not.i65.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.nr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.nm, i8 noundef zeroext 58) #18
  br label %_ZN4llvm11raw_ostreamlsEc.exit67.i

bb.bi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  store ptr %i.ns, ptr %i.nn, align 8, !tbaa !38
  store i8 58, ptr %i.no, align 1, !tbaa !19
  br label %_ZN4llvm11raw_ostreamlsEc.exit67.i

_ZN4llvm11raw_ostreamlsEc.exit67.i:               ; preds = %bb.bi, %bb.bh
  %.0.i66.i = phi ptr [ %i.nr, %bb.bh ], [ %i.nm, %bb.bi ]
  %i.nt = load i32, ptr %i.fc, align 8, !tbaa !95
  %i.nu = zext i32 %i.nt to i64
  %i.nv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i66.i, i64 noundef %i.nu) #18 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !38 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !34
  %.not.i68.i = icmp ult ptr %i.nx, %i.nz
  br i1 %.not.i68.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit67.i
  %i.oa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.nv, i8 noundef zeroext 32) #18
  br label %_ZN4llvm11raw_ostreamlsEc.exit70.i

bb.bk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit67.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 1
  store ptr %i.ob, ptr %i.nw, align 8, !tbaa !38
  store i8 32, ptr %i.nx, align 1, !tbaa !19
  br label %_ZN4llvm11raw_ostreamlsEc.exit70.i

_ZN4llvm11raw_ostreamlsEc.exit70.i:               ; preds = %bb.bk, %bb.bj
  %.0.i69.i = phi ptr [ %i.oa, %bb.bj ], [ %i.nv, %bb.bk ]
  %i.oc = load ptr, ptr %i.fd, align 8, !tbaa !14
  %i.od = load i64, ptr %i.fe, align 8, !tbaa !39
  %i.oe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i69.i, ptr noundef %i.oc, i64 noundef %i.od) #18 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 32 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !38 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !34
  %.not.i71.i = icmp ult ptr %i.og, %i.oi
  br i1 %.not.i71.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit70.i
  %i.oj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.oe, i8 noundef zeroext 32) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit73.i

bb.bm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit70.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  store ptr %i.ok, ptr %i.of, align 8, !tbaa !38
  store i8 32, ptr %i.og, align 1, !tbaa !19
  br label %_ZN4llvm11raw_ostreamlsEc.exit73.i

_ZN4llvm11raw_ostreamlsEc.exit73.i:               ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ol = load i64, ptr %9, align 8, !tbaa !108, !noalias !105
  %i.om = inttoptr i64 %i.ol to ptr
  store ptr null, ptr %9, align 8, !tbaa !108, !noalias !105
  store ptr %i.om, ptr %11, align 8, !tbaa !110, !alias.scope !105
  %i.on = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #18
  store i8 1, ptr %i.fg, align 1, !tbaa !32
  store ptr @.str.10, ptr %12, align 8, !tbaa !19
  store i8 3, ptr %i.ff, align 8, !tbaa !29
  call void @_ZN4llvm21logAllUnhandledErrorsENS_5ErrorERNS_11raw_ostreamENS_5TwineE(ptr nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(48) %i.on, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %12) #18
  %i.oo = load ptr, ptr %11, align 8, !tbaa !110  ; 3 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.oq = load ptr, ptr %i.oo, align 8, !tbaa !8
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(8) %i.oo) #18, !inline_history !112
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.bn, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, %_ZN4llvm11raw_ostreamlsEc.exit73.i
  %i.ot = load i8, ptr %i.ev, align 8
  %i.ou = trunc i8 %i.ot to i1
  br i1 %i.ou, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
  %i.ov = load ptr, ptr %i.fh, align 8, !tbaa !14 ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.fi
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bo
  %i.ox = load i64, ptr %i.fi, align 8, !tbaa !19
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.oz = load ptr, ptr %i.fd, align 8, !tbaa !14 ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.fj
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.pb = load i64, ptr %i.fj, align 8, !tbaa !19
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.pd = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.fk
end_hunk_1
