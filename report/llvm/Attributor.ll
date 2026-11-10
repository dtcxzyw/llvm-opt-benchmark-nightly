Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Attributor?download=true
inline.NumInlined: 12830
inline.NumDeleted: 5721
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE11writeHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.l:                                             ; preds = %bb.j
  store i64 2467247353566948361, ptr %i.ax, align 1
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !608
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

_ZN4llvm11raw_ostreamlsEPKc.exit25:               ; preds = %bb.k, %bb.l
  %.0.i.i24 = phi ptr [ %i.bc, %bb.k ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #27
  %i.bf = load ptr, ptr %4, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !110
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i24, ptr noundef %i.bf, i64 noundef %i.bh) #27 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !607
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !608 ; 2 uses
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ult i64 %i.bp, 3
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  %i.br = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull @.str.133, i64 noundef 3) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bm, ptr noundef nonnull align 1 dereferenceable(3) @.str.133, i64 3, i1 false)
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !608
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store ptr %i.bt, ptr %i.bl, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

_ZN4llvm11raw_ostreamlsEPKc.exit28:               ; preds = %bb.m, %bb.n
  %i.bu = load ptr, ptr %4, align 8, !tbaa !106   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !99
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.u

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !110
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !607
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !608 ; 2 uses
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp ult i64 %i.cj, 8
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, ptr noundef nonnull @.str.132, i64 noundef 8) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.r:                                             ; preds = %bb.p
  store i64 2467247353566948361, ptr %i.cg, align 1
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !608
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cn, ptr %i.cf, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

_ZN4llvm11raw_ostreamlsEPKc.exit34:               ; preds = %bb.q, %bb.r
  %.0.i.i33 = phi ptr [ %i.cl, %bb.q ], [ %i.cc, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
  %i.co = load ptr, ptr %5, align 8, !tbaa !106
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !110
  %i.cr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i33, ptr noundef %i.co, i64 noundef %i.cq) #27 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !607
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !608 ; 2 uses
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.da = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef nonnull @.str.133, i64 noundef 3) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cv, ptr noundef nonnull align 1 dereferenceable(3) @.str.133, i64 3, i1 false)
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !608
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  store ptr %i.dc, ptr %i.cu, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

_ZN4llvm11raw_ostreamlsEPKc.exit37:               ; preds = %bb.s, %bb.t
  %i.dd = load ptr, ptr %5, align 8, !tbaa !106   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit37
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !99
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !717, !nonnull !80, !align !194
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.dk, ptr %6, align 8, !tbaa !109, !alias.scope !3549
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !110, !alias.scope !3549
  store i8 0, ptr %i.dk, align 8, !tbaa !99, !alias.scope !3549
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull %i.dk, i64 noundef 0) #27 ; 0 uses
  %i.dn = load ptr, ptr %6, align 8, !tbaa !106   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.dk
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.u
  %i.dp = load i64, ptr %i.dk, align 8, !tbaa !99
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !717, !nonnull !80, !align !194 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !607
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !608 ; 2 uses
  %i.dw = icmp eq ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.dx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dr, ptr noundef nonnull @.str.55, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  store i8 10, ptr %i.dv, align 1
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !608
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

_ZN4llvm11raw_ostreamlsEPKc.exit46:               ; preds = %bb.v, %bb.w
  %i.ea = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.a
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !99
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeNodeEPNS_14AADepGraphNodeE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.llvm::raw_string_ostream", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !109, !alias.scope !3563
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !110, !alias.scope !3563
  store i8 0, ptr %i.a, align 8, !tbaa !99, !alias.scope !3563
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !607
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !608  ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 5
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull @.str.134, i64 noundef 5) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.134, i64 5, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !608
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  store ptr %i.o, ptr %i.g, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.m, %bb.b ], [ %i.d, %bb.c ]
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %1) #27 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !607
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !608  ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull @.str.135, i64 noundef 8) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i64 4424065772627909408, ptr %i.t, align 1
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !608
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

_ZN4llvm11raw_ostreamlsEPKc.exit45:               ; preds = %bb.d, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !716, !range !79, !noundef !80
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !607
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !608 ; 3 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45
  %i.am = icmp ult i64 %i.al, 5
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.136, i64 noundef 5) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ai, ptr noundef nonnull align 1 dereferenceable(5) @.str.136, i64 5, i1 false)
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !608
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45
  %i.aq = icmp ult i64 %i.al, 7
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.137, i64 noundef 7) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ai, ptr noundef nonnull align 1 dereferenceable(7) @.str.137, i64 7, i1 false)
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !608
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 7
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

_ZN4llvm11raw_ostreamlsEPKc.exit48:               ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.au = load i64, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN4llvm11raw_ostreamlsEPKc.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194
  %i.ax = load ptr, ptr %6, align 8, !tbaa !106
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef %i.ax, i64 noundef %i.au) #27 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !607
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !608 ; 2 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull @.str.138, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit54

bb.n:                                             ; preds = %bb.l
  store i8 44, ptr %i.bc, align 1
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !608
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit54

_ZN4llvm11raw_ostreamlsEPKc.exit54:               ; preds = %bb.n, %bb.m, %_ZN4llvm11raw_ostreamlsEPKc.exit48
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !607
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !608 ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, 6
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit54
  %i.bq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull @.str.139, i64 noundef 6) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bl, ptr noundef nonnull align 1 dereferenceable(6) @.str.139, i64 6, i1 false)
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !608
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store ptr %i.bs, ptr %i.bk, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57

_ZN4llvm11raw_ostreamlsEPKc.exit57:               ; preds = %bb.o, %bb.p
  %i.bt = load i8, ptr %i.ab, align 8, !tbaa !716, !range !79, !noundef !80
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit57
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !150 ; 2 uses
  %.not219 = icmp eq i32 %i.bw, 0
  br i1 %.not219, label %._crit_edge, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %bb.q
  %12 = zext i32 %i.bw to i64                     ; 2 uses
  %13 = add nuw nsw i64 %12, 2305843009213693951
  %n.vec281 = and i64 %13, 2305843009213693951
  %umin = call i64 @llvm.umin.i64(i64 %n.vec281, i64 63)
  %14 = add nuw nsw i64 %umin, 1                  ; 2 uses
  %.exit = icmp ne i64 %14, %12
  %15 = zext i1 %.exit to i64
  %16 = add nuw nsw i64 %14, %15
  br label %._crit_edge

._crit_edge:                                      ; preds = %vec.epilog.ph, %bb.q
  %spec.select = phi i64 [ 1, %bb.q ], [ %16, %vec.epilog.ph ]
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !607
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !608 ; 2 uses
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ult i64 %i.ce, 49
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.cg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull @.str.140, i64 noundef 49) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cb, ptr noundef nonnull align 1 dereferenceable(49) @.str.140, i64 49, i1 false)
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !608
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 49 ; 2 uses
  store ptr %i.ci, ptr %i.ca, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.r, %bb.s
  %i.cj = phi ptr [ %.pre, %bb.r ], [ %i.ci, %bb.s ] ; 2 uses
  %.0.i.i61 = phi ptr [ %i.cg, %bb.r ], [ %i.bx, %bb.s ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !607
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ult i64 %i.co, 47
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.cq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i61, ptr noundef nonnull @.str.141, i64 noundef 47) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.cj, ptr noundef nonnull align 1 dereferenceable(47) @.str.141, i64 47, i1 false)
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !608
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 47
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

_ZN4llvm11raw_ostreamlsEPKc.exit65:               ; preds = %bb.t, %bb.u
  %.0.i.i64 = phi ptr [ %i.cq, %bb.t ], [ %.0.i.i61, %bb.u ]
  %i.cu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i64, i64 noundef %spec.select) #27 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !607
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !608 ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp ult i64 %i.db, 2
  br i1 %i.dc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.dd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull @.str.142, i64 noundef 2) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  store i16 15906, ptr %i.cy, align 1
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !608
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store ptr %i.df, ptr %i.cx, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit57
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !607
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !608 ; 2 uses
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = icmp ult i64 %i.dn, 2
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noundef nonnull @.str.143, i64 noundef 2) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.z:                                             ; preds = %bb.x
  store i16 31522, ptr %i.dk, align 1
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !608
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store ptr %i.dr, ptr %i.dj, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

_ZN4llvm11raw_ostreamlsEPKc.exit68:               ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  %i.ds = load i8, ptr %i.ab, align 8, !tbaa !716, !range !79, !noundef !80
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194 ; 2 uses
  br i1 %i.dt, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !3564)
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.dv, ptr %7, align 8, !tbaa !109, !alias.scope !3564
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.dw, align 8, !tbaa !110, !alias.scope !3564
  store i8 0, ptr %i.dv, align 8, !tbaa !99, !alias.scope !3564
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !3564
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.dx, align 8, !tbaa !3565, !noalias !3564
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.dy, align 8, !tbaa !3566, !noalias !3564
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.dz, align 4, !tbaa !3567, !noalias !3564
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false), !noalias !3564
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !72, !noalias !3564
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %7, ptr %i.eb, align 8, !tbaa !3569, !noalias !3564
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #27
  %i.ec = load ptr, ptr %1, align 8, !tbaa !72, !noalias !3564
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(48) %5) #27, !inline_history !3554
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !3564
  %i.ef = load ptr, ptr %7, align 8, !tbaa !106
  %i.eg = load i64, ptr %i.dw, align 8, !tbaa !110
  %i.eh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef %i.ef, i64 noundef %i.eg) #27 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !607
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !608 ; 2 uses
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ult i64 %i.eo, 5
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef nonnull @.str.144, i64 noundef 5) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.el, ptr noundef nonnull align 1 dereferenceable(5) @.str.144, i64 5, i1 false)
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !608
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  store ptr %i.es, ptr %i.ek, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74

_ZN4llvm11raw_ostreamlsEPKc.exit74:               ; preds = %bb.ab, %bb.ac
  %i.et = load ptr, ptr %7, align 8, !tbaa !106   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.dv
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74
  %i.ev = load i64, ptr %i.dv, align 8, !tbaa !99
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !3570)
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ex, ptr %9, align 8, !tbaa !109, !alias.scope !3570
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ey, align 8, !tbaa !110, !alias.scope !3570
  store i8 0, ptr %i.ex, align 8, !tbaa !99, !alias.scope !3570
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !3570
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ez, align 8, !tbaa !3565, !noalias !3570
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.fa, align 8, !tbaa !3566, !noalias !3570
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.fb, align 4, !tbaa !3567, !noalias !3570
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i8 0, i64 24, i1 false), !noalias !3570
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !72, !noalias !3570
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %9, ptr %i.fd, align 8, !tbaa !3569, !noalias !3570
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i64 noundef 0, i32 noundef 0) #27
  %i.fe = load ptr, ptr %1, align 8, !tbaa !72, !noalias !3570
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(48) %4) #27, !inline_history !3554
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !3570
  call void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #27
  %i.fh = load ptr, ptr %8, align 8, !tbaa !106
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !110
  %i.fk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef %i.fh, i64 noundef %i.fj) #27 ; 0 uses
  %i.fl = load ptr, ptr %8, align 8, !tbaa !106   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ad
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !99
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %i.fq = load ptr, ptr %9, align 8, !tbaa !106   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.ex
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.fs = load i64, ptr %i.ex, align 8, !tbaa !99
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.fu, ptr %10, align 8, !tbaa !109
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fv, align 8, !tbaa !110
  store i8 0, ptr %i.fu, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.fw, align 8, !tbaa !3565
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 0, ptr %i.fx, align 8, !tbaa !3566
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 1, ptr %i.fy, align 4, !tbaa !3567
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %11, align 8, !tbaa !72
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %10, ptr %i.ga, align 8, !tbaa !3569
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef null, i64 noundef 0, i32 noundef 0) #27
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gd = load i8, ptr %i.ab, align 8, !tbaa !716, !range !79, !noundef !80
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.af, label %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPNS_14AADepGraphNodeE.exit

bb.af:                                            ; preds = %bb.ae
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !607
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !608 ; 2 uses
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = icmp ult i64 %i.gl, 9
  br i1 %i.gm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.152, i64 noundef 9) #27 ; 0 uses
  br label %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPNS_14AADepGraphNodeE.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gi, ptr noundef nonnull align 1 dereferenceable(9) @.str.152, i64 9, i1 false)
  %i.go = load ptr, ptr %i.gh, align 8, !tbaa !608
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 9
  store ptr %i.gp, ptr %i.gh, align 8, !tbaa !608
  br label %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPNS_14AADepGraphNodeE.exit

_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPNS_14AADepGraphNodeE.exit: ; preds = %bb.ae, %bb.ag, %bb.ah
  %i.gq = load i8, ptr %i.ab, align 8, !tbaa !716, !range !79, !noundef !80
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !607
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 32 ; 5 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !608 ; 3 uses
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 2 uses
  br i1 %i.gr, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPNS_14AADepGraphNodeE.exit
  %i.ha = icmp ult i64 %i.gz, 14
  br i1 %i.ha, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gs, ptr noundef nonnull @.str.149, i64 noundef 14) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit170

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.gw, ptr noundef nonnull align 1 dereferenceable(14) @.str.149, i64 14, i1 false)
  %i.hc = load ptr, ptr %i.gv, align 8, !tbaa !608
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 14
  store ptr %i.hd, ptr %i.gv, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit170

bb.al:                                            ; preds = %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPNS_14AADepGraphNodeE.exit
  %i.he = icmp ult i64 %i.gz, 2
  br i1 %i.he, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gs, ptr noundef nonnull @.str.150, i64 noundef 2) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit170

bb.an:                                            ; preds = %bb.al
  store i16 8829, ptr %i.gw, align 1
  %i.hg = load ptr, ptr %i.gv, align 8, !tbaa !608
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  store ptr %i.hh, ptr %i.gv, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit170

_ZN4llvm11raw_ostreamlsEPKc.exit170:              ; preds = %bb.an, %bb.am, %bb.ak, %bb.aj
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !717, !nonnull !80, !align !194 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !607
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 3 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !608 ; 2 uses
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = icmp ult i64 %i.hp, 3
  br i1 %i.hq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit170
  %i.hr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hi, ptr noundef nonnull @.str.151, i64 noundef 3) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit176

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hm, ptr noundef nonnull align 1 dereferenceable(3) @.str.151, i64 3, i1 false)
  %i.hs = load ptr, ptr %i.hl, align 8, !tbaa !608
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 3
  store ptr %i.ht, ptr %i.hl, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit176

_ZN4llvm11raw_ostreamlsEPKc.exit176:              ; preds = %bb.ao, %bb.ap
  %i.hu = load ptr, ptr %i.gb, align 8, !tbaa !70 ; 3 uses
  %i.hv = load i32, ptr %i.gc, align 8, !tbaa !150 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %.idx221 = shl nuw nsw i64 %i.hw, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx221 ; 3 uses
  %.not220 = icmp eq i32 %i.hv, 0
  br i1 %.not220, label %.preheader, label %.lr.ph213

.lr.ph213:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit176
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.aq

.preheader:                                       ; preds = %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit176
  %.sroa.0195.0.lcssa = phi ptr [ %i.hu, %_ZN4llvm11raw_ostreamlsEPKc.exit176 ], [ %i.ii, %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit ] ; 2 uses
  %.not215 = icmp eq ptr %.sroa.0195.0.lcssa, %i.hx
  br i1 %.not215, label %._crit_edge218, label %.lr.ph217

.lr.ph217:                                        ; preds = %.preheader
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph213, %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit
  %.040212 = phi i32 [ 0, %.lr.ph213 ], [ %i.ij, %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit ]
  %.sroa.0195.0211 = phi ptr [ %i.hu, %.lr.ph213 ], [ %i.ii, %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit ] ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %.sroa.0195.0211, align 8
  %i.ic = and i64 %.0.copyload.i.i.i.i, -8        ; 2 uses
  %.not.i181 = icmp eq i64 %i.ic, 0
  br i1 %.not.i181, label %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aq
  %i.id = inttoptr i64 %i.ic to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.hy, ptr %3, align 8, !tbaa !109, !alias.scope !3571
  store i64 0, ptr %i.hz, align 8, !tbaa !110, !alias.scope !3571
  store i8 0, ptr %i.hy, align 8, !tbaa !99, !alias.scope !3571
  call void @_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %i.id, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ie = load ptr, ptr %3, align 8, !tbaa !106   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.hy
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ig = load i64, ptr %i.hy, align 8, !tbaa !99
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit

_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, %bb.aq
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0195.0211, i64 8 ; 3 uses
  %i.ij = add nuw nsw i32 %.040212, 1             ; 2 uses
  %i.ik = icmp ne ptr %i.ii, %i.hx
  %i.il = icmp ne i32 %i.ij, 64
  %i.im = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %i.im, label %bb.aq, label %.preheader, !llvm.loop !3559

bb.ar:                                            ; preds = %.lr.ph217, %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit187
  %.sroa.0195.1216 = phi ptr [ %.sroa.0195.0.lcssa, %.lr.ph217 ], [ %i.it, %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit187 ] ; 2 uses
  %.0.copyload.i.i.i.i249 = load i64, ptr %.sroa.0195.1216, align 8
  %i.in = and i64 %.0.copyload.i.i.i.i249, -8     ; 2 uses
  %.not.i182 = icmp eq i64 %i.in, 0
  br i1 %.not.i182, label %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit187, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i183: ; preds = %bb.ar
  %i.io = inttoptr i64 %i.in to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.ia, ptr %2, align 8, !tbaa !109, !alias.scope !3572
  store i64 0, ptr %i.ib, align 8, !tbaa !110, !alias.scope !3572
  store i8 0, ptr %i.ia, align 8, !tbaa !99, !alias.scope !3572
  call void @_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %i.io, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ip = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ia
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i183
  %i.ir = load i64, ptr %i.ia, align 8, !tbaa !99
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit187

_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i185, %bb.ar
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0195.1216, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.it, %i.hx
  br i1 %.not, label %._crit_edge218, label %bb.ar, !llvm.loop !3562

._crit_edge218:                                   ; preds = %_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE9writeEdgeEPNS_14AADepGraphNodeEjNS_15mapped_iteratorIPKNS_14PointerIntPairIS7_Lj1EjNS_21PointerLikeTypeTraitsIS7_EENS_18PointerIntPairInfoIS7_Lj1ESB_EEEEPFS7_RSF_ES7_EE.exit187, %.preheader
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.iu = load ptr, ptr %10, align 8, !tbaa !106  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.fu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %._crit_edge218
  %i.iw = load i64, ptr %i.fu, align 8, !tbaa !99
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %._crit_edge218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.iy = load ptr, ptr %6, align 8, !tbaa !106   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.a
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.ja = load i64, ptr %i.a, align 8, !tbaa !99
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #13

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15GraphWriterBaseIPNS_10AADepGraphENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 64
  br i1 %i.a, label %_ZN4llvm11raw_ostreamlsEPKc.exit24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !607
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !608  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 5
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.134, i64 noundef 5) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.134, i64 5, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !608
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  store ptr %i.n, ptr %i.f, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.c ], [ %i.c, %bb.d ]
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %1) #27 ; 0 uses
  %i.p = icmp sgt i32 %2, -1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !607
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !608  ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.157, i64 noundef 2) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.g:                                             ; preds = %bb.e
  store i16 29498, ptr %i.u, align 1
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !608
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.f, %bb.g
  %.0.i.i8 = phi ptr [ %i.z, %bb.f ], [ %i.q, %bb.g ]
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8, i64 noundef %i.ac) #27 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !607
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !608 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 8
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.158, i64 noundef 8) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.j:                                             ; preds = %bb.h
  store i64 7306086876840865056, ptr %i.ai, align 1
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !608
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.i, %bb.j
  %.0.i.i11 = phi ptr [ %i.an, %bb.i ], [ %i.ae, %bb.j ]
  %i.aq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i11, ptr noundef %3) #27 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !110
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN4llvm11raw_ostreamlsEPKc.exit21, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !717, !nonnull !80, !align !194 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !607
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !608 ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull @.str.92, i64 noundef 1) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.m:                                             ; preds = %bb.k
  store i8 91, ptr %i.ay, align 1
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !608
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.l, %bb.m
  %.0.i.i17 = phi ptr [ %i.ba, %bb.l ], [ %i.au, %bb.m ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !106
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !110
  %i.bf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i17, ptr noundef %i.bd, i64 noundef %i.be) #27 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !607
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !608 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.bl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull @.str.78, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  store i8 93, ptr %i.bj, align 1
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !608
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.o, %bb.n, %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !717, !nonnull !80, !align !194 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !607
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !608 ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.bv, 2
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.bx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull @.str.160, i64 noundef 2) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  store i16 2619, ptr %i.bs, align 1
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !608
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr %i.bz, ptr %i.br, align 8, !tbaa !608
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

_ZN4llvm11raw_ostreamlsEPKc.exit24:               ; preds = %bb.q, %bb.p, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i8, ptr %i.b, align 8, !tbaa !78, !range !79, !noundef !80
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !397  ; 3 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %.not1923.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1923.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.01524.i.i = phi ptr [ %i.k, %.critedge.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.01524.i.i, align 8, !tbaa !367
  %.not20.i.i = icmp eq ptr %i.j, %1
  br i1 %.not20.i.i, label %bb.c, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not19.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = add i32 %i.g, -1                         ; 3 uses
  store i32 %i.l, ptr %i.f, align 4, !tbaa !397
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !367
  store ptr %i.o, ptr %.01524.i.i, align 8, !tbaa !367
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit

bb.d:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef %1) #27 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i.i, label %._ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit_crit_edge, label %bb.e

._ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !397
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull %i.p) #27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !397
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !397
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit: ; preds = %._ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit_crit_edge, %bb.c, %bb.e
  %i.t = phi i32 [ %.pre, %._ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit_crit_edge ], [ %i.s, %bb.e ], [ %i.l, %bb.c ]
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread

_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread: ; preds = %bb.b, %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !78, !range !79, !noundef !80
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit

bb.f:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread
  %i.y = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !397 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not17.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.01218.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.y, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !367
  %.not15.i.i.i = icmp eq ptr %i.ae, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit, label %bb.g

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit: ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread
  %i.af = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #27
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread: ; preds = %.critedge.i.i, %bb.g, %bb.f, %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !78, !range !79, !noalias !3575, !noundef !80
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.h:                                             ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread
  %i.aj = load ptr, ptr %0, align 8, !tbaa !81, !noalias !3575 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !397, !noalias !3575 ; 4 uses
  %i.am = zext i32 %i.al to i64
  %.idx.i.i3 = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i3 ; 2 uses
  %.not22.i.i = icmp eq i32 %i.al, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.h, %.critedge.i.i5
  %.023.i.i = phi ptr [ %i.ap, %.critedge.i.i5 ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ao = load ptr, ptr %.023.i.i, align 8, !tbaa !367, !noalias !3575
  %.not15.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit, label %.critedge.i.i5

.critedge.i.i5:                                   ; preds = %.lr.ph.i.i4
  %i.ap = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i4

._crit_edge.i.i:                                  ; preds = %.critedge.i.i5, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !396, !noalias !3575
  %i.as = icmp ult i32 %i.al, %i.ar
  br i1 %i.as, label %bb.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.at = add nuw i32 %i.al, 1
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !397, !noalias !3575
  store ptr %1, ptr %i.an, align 8, !tbaa !367, !noalias !3575
  br label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread
  %i.au = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1) #27, !noalias !3575 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit

_ZN4llvm15SmallPtrSetImplIPvE6insertES1_.exit:    ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i4, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit
  ret ptr %0
}

declare void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_Attributor.cpp() #22 section ".text.startup" {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %0 = alloca %"struct.llvm::cl::desc", align 8   ; 5 uses
  %1 = alloca %"struct.llvm::cl::LocationClass", align 8 ; 4 uses
  %2 = alloca %"struct.llvm::cl::initializer", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::tuple.808", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.811", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple.808", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.811", align 1    ; 3 uses
  store i8 0, ptr @_ZN4llvmL21NumAbstractAttributesE, align 8, !tbaa !528
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 1), align 1, !tbaa !3588
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 8), i8 0, i64 16, i1 false)
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 24), align 8, !tbaa !93
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 32), align 8, !tbaa !95
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 40), align 8, !tbaa !93
  store i64 34, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 48), align 8, !tbaa !95
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 56), align 8, !tbaa !70
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 64), align 8, !tbaa !150
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 68), align 4, !tbaa !151
  %i.c = tail call noundef nonnull align 8 dereferenceable(43) ptr @_ZN4llvm12DebugCounter8instanceEv() #27 ; 4 uses
  %i.d = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(43) %i.c, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 24)), !noalias !3589 ; 2 uses
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.d, 0 ; 2 uses
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.d, 1
  %i.e = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i.i.i to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !150  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i.i.i.i, i64 16
  store i32 %i.h, ptr %i.i, align 8, !tbaa !3591
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 24), ptr %5, align 8, !tbaa !803, !alias.scope !3592
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !151
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.h, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c, !prof !138

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 0 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !150
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = zext i32 %i.h to i64
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21NumAbstractAttributesE, i64 24), i64 16, i1 false), !tbaa.struct !799
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !806
  %i.q = load i32, ptr %i.g, align 8, !tbaa !150
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %i.g, align 8, !tbaa !150
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.s = phi i32 [ %.pre.i.i.i.i.i.i, %bb.c ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -24
  br label %__cxx_global_var_init.exit

bb.e:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i.i.i.i, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !3591
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.aa
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i, %bb.e
  %.sroa.09.0.i.i.i.i.i.i = phi ptr [ %i.w, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i ], [ %i.ab, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i, i64 16
  store ptr @_ZN4llvmL21NumAbstractAttributesE, ptr %i.ac, align 8, !tbaa !3593
  %i.ad = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm12DebugCounter11CounterInfoD2Ev, ptr nonnull @_ZN4llvmL21NumAbstractAttributesE, ptr nonnull @__dso_handle) #27 ; 0 uses
  store i8 0, ptr @_ZL18ManifestDBGCounter, align 8, !tbaa !528
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 1), align 1, !tbaa !3588
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 8), i8 0, i64 16, i1 false)
  store ptr @.str.3, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 24), align 8, !tbaa !93
  store i64 19, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 32), align 8, !tbaa !95
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 40), align 8, !tbaa !93
  store i64 50, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 48), align 8, !tbaa !95
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 56), align 8, !tbaa !70
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 64), align 8, !tbaa !150
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 68), align 4, !tbaa !151
  %i.ae = call noundef nonnull align 8 dereferenceable(43) ptr @_ZN4llvm12DebugCounter8instanceEv() #27 ; 4 uses
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(43) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 24)), !noalias !3594 ; 2 uses
  %.fca.0.extract.i.i.i.i.i.i.i.i1 = extractvalue { ptr, i8 } %i.af, 0 ; 2 uses
  %.fca.1.extract.i.i.i.i.i.i.i.i2 = extractvalue { ptr, i8 } %i.af, 1
  %i.ag = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i.i.i2 to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 4 uses
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %__cxx_global_var_init.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !150 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i.i.i.i1, i64 16
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !3591
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 24), ptr %3, align 8, !tbaa !803, !alias.scope !3595
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !151
  %.not.i.i.i.i.i.i.i4 = icmp ult i32 %i.aj, %i.am
  br i1 %.not.i.i.i.i.i.i.i4, label %bb.h, label %bb.g, !prof !138

bb.g:                                             ; preds = %bb.f
  %i.an = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  %.pre.i.i.i.i.i.i5 = load i32, ptr %i.ai, align 8, !tbaa !150
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i6

bb.h:                                             ; preds = %bb.f
  %i.ao = zext i32 %i.aj to i64
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL18ManifestDBGCounter, i64 24), i64 16, i1 false), !tbaa.struct !799
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr null, ptr %i.ar, align 8, !tbaa !806
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !150
  %i.at = add i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !150
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i6

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i6: ; preds = %bb.h, %bb.g
  %i.au = phi i32 [ %.pre.i.i.i.i.i.i5, %bb.g ], [ %i.at, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -24
  br label %__cxx_global_var_init.2.exit

bb.i:                                             ; preds = %__cxx_global_var_init.exit
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i.i.i.i1, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !3591
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.bc
  br label %__cxx_global_var_init.2.exit

__cxx_global_var_init.2.exit:                     ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i6, %bb.i
  %.sroa.09.0.i.i.i.i.i.i3 = phi ptr [ %i.ay, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i6 ], [ %i.bd, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i3, i64 16
  store ptr @_ZL18ManifestDBGCounter, ptr %i.be, align 8, !tbaa !3593
  %i.bf = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm12DebugCounter11CounterInfoD2Ev, ptr nonnull @_ZL18ManifestDBGCounter, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21SetFixpointIterations, i32 noundef 0, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 120), align 8, !tbaa !843
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL21SetFixpointIterations, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21SetFixpointIterations, ptr nonnull align 1 dereferenceable(26) @.str.6, i64 25) #27
  %i.bg = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 10), align 2
  %i.bh = and i16 %i.bg, -97
  %i.bi = or disjoint i16 %i.bh, 32
  store i16 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 10), align 2
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 32), align 8, !tbaa !93
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 40), align 8, !tbaa !95
  store i32 32, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 120), align 8, !tbaa !843
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 140), align 4, !tbaa !89
  store i32 32, ptr getelementptr inbounds nuw (i8, ptr @_ZL21SetFixpointIterations, i64 136), align 8, !tbaa !103
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21SetFixpointIterations) #27
  %i.bj = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL21SetFixpointIterations, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22MaxSpecializationPerCB, i32 noundef 0, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 120), align 8, !tbaa !843
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL22MaxSpecializationPerCB, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22MaxSpecializationPerCB, ptr nonnull align 1 dereferenceable(45) @.str.9, i64 44) #27
  %i.bk = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 10), align 2
  %i.bl = and i16 %i.bk, -97
  %i.bm = or disjoint i16 %i.bl, 32
  store i16 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 10), align 2
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 32), align 8, !tbaa !93
  store i64 53, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 40), align 8, !tbaa !95
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 120), align 8, !tbaa !843
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 140), align 4, !tbaa !89
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22MaxSpecializationPerCB, i64 136), align 8, !tbaa !103
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22MaxSpecializationPerCB) #27
  %i.bn = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL22MaxSpecializationPerCB, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 1, ptr %i.a, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store ptr @.str.13, ptr %0, align 8, !tbaa !93
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 68, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr @_ZN4llvm28MaxInitializationChainLengthE, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 1024, ptr %i.b, align 4, !tbaa !102
  store ptr %i.b, ptr %2, align 8
  call void @_ZN4llvm2cl3optIjLb1ENS0_6parserIjEEEC2IJA43_cNS0_12OptionHiddenENS0_4descENS0_13LocationClassIjEENS0_11initializerIiEEEEEDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) @_ZL29MaxInitializationChainLengthX, ptr noundef nonnull align 1 dereferenceable(43) @.str.12, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bo = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb1ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL29MaxInitializationChainLengthX, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL28AnnotateDeclarationCallSites, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL28AnnotateDeclarationCallSites, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL28AnnotateDeclarationCallSites, ptr nonnull align 1 dereferenceable(28) @.str.15, i64 27) #27
  %i.bp = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 10), align 2
  %i.bq = and i16 %i.bp, -97
  %i.br = or disjoint i16 %i.bq, 32
  store i16 %i.br, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 10), align 2
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 32), align 8, !tbaa !93
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 40), align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 137), align 1, !tbaa !849
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28AnnotateDeclarationCallSites, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL28AnnotateDeclarationCallSites) #27
  %i.bs = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL28AnnotateDeclarationCallSites, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL17EnableHeapToStack, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL17EnableHeapToStack, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17EnableHeapToStack, ptr nonnull align 1 dereferenceable(32) @.str.18, i64 31) #27
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 137), align 1, !tbaa !849
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 136), align 8, !tbaa !3596
  %i.bt = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 10), align 2
  %i.bu = and i16 %i.bt, -97
  %i.bv = or disjoint i16 %i.bu, 32
  store i16 %i.bv, ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableHeapToStack, i64 10), align 2
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17EnableHeapToStack) #27
  %i.bw = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL17EnableHeapToStack, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20AllowShallowWrappers, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL20AllowShallowWrappers, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20AllowShallowWrappers, ptr nonnull align 1 dereferenceable(34) @.str.20, i64 33) #27
  %i.bx = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 10), align 2
  %i.by = and i16 %i.bx, -97
  %i.bz = or disjoint i16 %i.by, 32
  store i16 %i.bz, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 10), align 2
  store ptr @.str.21, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 32), align 8, !tbaa !93
  store i64 74, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 40), align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 137), align 1, !tbaa !849
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20AllowShallowWrappers, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20AllowShallowWrappers) #27
  %i.ca = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL20AllowShallowWrappers, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16AllowDeepWrapper, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL16AllowDeepWrapper, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16AllowDeepWrapper, ptr nonnull align 1 dereferenceable(31) @.str.23, i64 30) #27
  %i.cb = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 10), align 2
  %i.cc = and i16 %i.cb, -97
  %i.cd = or disjoint i16 %i.cc, 32
  store i16 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 10), align 2
  store ptr @.str.24, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 32), align 8, !tbaa !93
  store i64 87, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 40), align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 137), align 1, !tbaa !849
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16AllowDeepWrapper, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16AllowDeepWrapper) #27
  %i.ce = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL16AllowDeepWrapper, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12DumpDepGraph, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL12DumpDepGraph, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12DumpDepGraph, ptr nonnull align 1 dereferenceable(26) @.str.26, i64 25) #27
  %i.cf = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 10), align 2
  %i.cg = and i16 %i.cf, -97
  %i.ch = or disjoint i16 %i.cg, 32
  store i16 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 10), align 2
  store ptr @.str.27, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 32), align 8, !tbaa !93
  store i64 39, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 40), align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 137), align 1, !tbaa !849
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12DumpDepGraph, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12DumpDepGraph) #27
  %i.ci = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL12DumpDepGraph, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL25DepGraphDotFileNamePrefixB5cxx11, i32 noundef 0, i32 noundef 0) #27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 136), ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 120), align 8, !tbaa !109
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 128), align 8, !tbaa !110
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 136), align 8, !tbaa !99
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 160), align 8, !tbaa !109
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 168), align 8, !tbaa !110
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 176), align 8, !tbaa !99
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 192), align 8, !tbaa !808
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 152), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 200), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 208), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) @_ZL25DepGraphDotFileNamePrefixB5cxx11, ptr nonnull align 1 dereferenceable(40) @.str.29, i64 39) #27
  %i.cj = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 10), align 2
  %i.ck = and i16 %i.cj, -97
  %i.cl = or disjoint i16 %i.ck, 32
  store i16 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 10), align 2
  store ptr @.str.30, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 32), align 8, !tbaa !93
  store i64 49, ptr getelementptr inbounds nuw (i8, ptr @_ZL25DepGraphDotFileNamePrefixB5cxx11, i64 40), align 8, !tbaa !95
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZL25DepGraphDotFileNamePrefixB5cxx11) #27
  %i.cm = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZL25DepGraphDotFileNamePrefixB5cxx11, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12ViewDepGraph, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL12ViewDepGraph, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12ViewDepGraph, ptr nonnull align 1 dereferenceable(26) @.str.32, i64 25) #27
  %i.cn = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 10), align 2
  %i.co = and i16 %i.cn, -97
  %i.cp = or disjoint i16 %i.co, 32
  store i16 %i.cp, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 10), align 2
  store ptr @.str.33, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 32), align 8, !tbaa !93
  store i64 26, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 40), align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 137), align 1, !tbaa !849
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12ViewDepGraph, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12ViewDepGraph) #27
  %i.cq = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL12ViewDepGraph, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL17PrintDependencies, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL17PrintDependencies, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17PrintDependencies, ptr nonnull align 1 dereferenceable(21) @.str.35, i64 20) #27
  %i.cr = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 10), align 2
  %i.cs = and i16 %i.cr, -97
  %i.ct = or disjoint i16 %i.cs, 32
  store i16 %i.ct, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 10), align 2
  store ptr @.str.36, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 32), align 8, !tbaa !93
  store i64 28, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 40), align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 137), align 1, !tbaa !849
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17PrintDependencies, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17PrintDependencies) #27
  %i.cu = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL17PrintDependencies, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22EnableCallSiteSpecific, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL22EnableCallSiteSpecific, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22EnableCallSiteSpecific, ptr nonnull align 1 dereferenceable(47) @.str.38, i64 46) #27
  %i.cv = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 10), align 2
  %i.cw = and i16 %i.cv, -97
  %i.cx = or disjoint i16 %i.cw, 32
  store i16 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 10), align 2
  store ptr @.str.39, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 32), align 8, !tbaa !93
  store i64 54, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 40), align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 137), align 1, !tbaa !849
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableCallSiteSpecific, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22EnableCallSiteSpecific) #27
  %i.cy = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL22EnableCallSiteSpecific, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL14PrintCallGraph, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL14PrintCallGraph, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14PrintCallGraph, ptr nonnull align 1 dereferenceable(28) @.str.41, i64 27) #27
  %i.cz = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 10), align 2
  %i.da = and i16 %i.cz, -97
  %i.db = or disjoint i16 %i.da, 32
  store i16 %i.db, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 10), align 2
  store ptr @.str.42, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 32), align 8, !tbaa !93
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 40), align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 137), align 1, !tbaa !849
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14PrintCallGraph, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14PrintCallGraph) #27
  %i.dc = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL14PrintCallGraph, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16SimplifyAllLoads, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL16SimplifyAllLoads, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16SimplifyAllLoads, ptr nonnull align 1 dereferenceable(30) @.str.44, i64 29) #27
  %i.dd = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 10), align 2
  %i.de = and i16 %i.dd, -97
  %i.df = or disjoint i16 %i.de, 32
  store i16 %i.df, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 10), align 2
  store ptr @.str.45, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 32), align 8, !tbaa !93
  store i64 26, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 40), align 8, !tbaa !95
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 120), align 8, !tbaa !473
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 137), align 1, !tbaa !849
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16SimplifyAllLoads, i64 136), align 8, !tbaa !3596
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16SimplifyAllLoads) #27
  %i.dg = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL16SimplifyAllLoads, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20CloseWorldAssumption, i32 noundef 0, i32 noundef 0) #27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 120), align 8, !tbaa !473
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 128), align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL20CloseWorldAssumption, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 144), align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20CloseWorldAssumption, ptr nonnull align 1 dereferenceable(31) @.str.47, i64 30) #27
  %i.dh = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 10), align 2
  %i.di = and i16 %i.dh, -97
  %i.dj = or disjoint i16 %i.di, 32
  store i16 %i.dj, ptr getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 10), align 2
  store ptr @.str.48, ptr getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 32), align 8, !tbaa !93
  store i64 61, ptr getelementptr inbounds nuw (i8, ptr @_ZL20CloseWorldAssumption, i64 40), align 8, !tbaa !95
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20CloseWorldAssumption) #27
  %i.dk = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL20CloseWorldAssumption, ptr nonnull @__dso_handle) #27 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!60, !61}
!llvm.ident = !{!62}
!llvm.errno.tbaa = !{!67}

!0 = distinct !{null}
!1 = distinct !{!1, !156}
!2 = distinct !{!2, !156}
!3 = distinct !{!3, !156}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null, null}
!8 = distinct !{null, null}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null, null, null}
!13 = distinct !{!13, !156}
!14 = distinct !{null, null}
!15 = distinct !{!15, !156}
!16 = distinct !{!16, !156}
!17 = distinct !{!17, !156}
!18 = distinct !{!18, !156}
!19 = distinct !{null}
!20 = distinct !{null, null, null}
!21 = distinct !{null}
!22 = distinct !{!22, !594}
!23 = distinct !{!23, !156}
!24 = distinct !{!24, !156}
!25 = distinct !{!25, !156}
!26 = distinct !{!26, !156}
!27 = distinct !{!27, !156}
!28 = distinct !{null, null}
!29 = distinct !{!29, !156}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{!33, !156}
!34 = distinct !{!34, !156}
!35 = distinct !{!35, !156}
!36 = distinct !{!36, !156}
!37 = distinct !{!37, !156}
!38 = distinct !{!38, !156}
!39 = distinct !{!39, !156}
!40 = distinct !{!40, !156}
!41 = distinct !{!41, !156}
!42 = distinct !{!42, !156}
!43 = distinct !{!43, !156}
!44 = distinct !{!44, !156}
!45 = distinct !{!45, !156}
!46 = distinct !{!46, !156}
!47 = distinct !{!47, !156}
!48 = distinct !{!48, !156}
!49 = distinct !{!49, !156}
!50 = distinct !{!50, !156}
!51 = distinct !{!51, !156}
!52 = distinct !{!52, !156}
!53 = distinct !{null}
!54 = distinct !{!54, !156}
!55 = distinct !{null, null, null, null, null}
!56 = distinct !{!56, !156}
!57 = distinct !{!57, !156}
!58 = distinct !{!58, !156}
!59 = distinct !{!59, !156}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 7, !"uwtable", i32 2}
!62 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!"omnipotent char", !63, i64 0}
!65 = !{!"int", !64, i64 0}
!66 = !{!"__libc_errno", !65, i64 0}
!67 = !{!66, !65, i64 0}
!68 = !{!"any pointer", !64, i64 0}
!69 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !68, i64 0, !65, i64 8, !65, i64 12}
!70 = !{!69, !68, i64 0}
!71 = !{!"vtable pointer", !63, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTSSt14_Function_base", !64, i64 0, !68, i64 16}
!74 = !{!73, !68, i64 16}
!75 = !{!"any p2 pointer", !68, i64 0}
!76 = !{!"bool", !64, i64 0}
!77 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !75, i64 0, !65, i64 8, !65, i64 12, !76, i64 16}
!78 = !{!77, !76, i64 16}
!79 = !{i8 0, i8 2}
!80 = !{}
!81 = !{!77, !75, i64 0}
!82 = !{!"p1 int", !68, i64 0}
!83 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!84 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !83, i64 0, !65, i64 8, !76, i64 12}
!85 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !84, i64 0}
!86 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !85, i64 0}
!87 = !{!"_ZTSN4llvm2cl11opt_storageIjLb1ELb0EEE", !82, i64 0, !86, i64 8}
!88 = !{!87, !82, i64 0}
!89 = !{!84, !76, i64 12}
!90 = !{!"_ZTSN4llvm2cl12OptionHiddenE", !64, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"p1 omnipotent char", !68, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"long", !64, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSN4llvm5Twine8NodeKindE", !64, i64 0}
!97 = !{!"_ZTSN4llvm5TwineE", !64, i64 0, !64, i64 16, !96, i64 32, !96, i64 33}
!98 = !{!97, !96, i64 33}
!99 = !{!64, !64, i64 0}
!100 = !{!97, !96, i64 32}
!101 = !{i64 4}
!102 = !{!65, !65, i64 0}
!103 = !{!84, !65, i64 8}
!104 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !92, i64 0}
!105 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !104, i64 0, !94, i64 8, !64, i64 16}
!106 = !{!105, !92, i64 0}
!107 = !{!"_ZTSN4llvm12ChangeStatusE", !64, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!104, !92, i64 0}
!110 = !{!105, !94, i64 8}
!111 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !64, i64 0}
!112 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !64, i64 0}
!113 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !64, i64 0}
!114 = !{!"_ZTSN4llvm6Triple6OSTypeE", !64, i64 0}
!115 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !64, i64 0}
!116 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !64, i64 0}
!117 = !{!"_ZTSN4llvm6TripleE", !105, i64 0, !111, i64 32, !112, i64 36, !113, i64 40, !114, i64 44, !115, i64 48, !116, i64 52}
!118 = !{!117, !111, i64 32}
!119 = !{!"short", !64, i64 0}
!120 = !{!"p1 _ZTSN4llvm4TypeE", !68, i64 0}
!121 = !{!"p1 _ZTSN4llvm3UseE", !68, i64 0}
!122 = !{!"_ZTSN4llvm5ValueE", !64, i64 0, !64, i64 1, !64, i64 1, !119, i64 2, !65, i64 4, !65, i64 7, !65, i64 7, !65, i64 7, !65, i64 7, !120, i64 8, !121, i64 16}
!123 = !{!122, !64, i64 0}
!124 = !{!"p1 _ZTSN4llvm8CallBaseE", !68, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"_ZTSN4llvm13AbstractStateE"}
!127 = !{!"_ZTSN4llvm16IntegerStateBaseIbLb1ELb0EEE", !126, i64 0, !76, i64 8, !76, i64 9}
!128 = !{!127, !76, i64 9}
!129 = !{!76, !76, i64 0}
!130 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_14GlobalVariableENS_11SmallVectorISt8functionIFSt8optionalIPNS_8ConstantEERS3_PKNS_17AbstractAttributeERbEELj1EEEEE", !68, i64 0}
!131 = !{!"_ZTSN4llvm8DenseMapIPKNS_14GlobalVariableENS_11SmallVectorISt8functionIFSt8optionalIPNS_8ConstantEERS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SH_EEEE", !130, i64 0, !82, i64 8, !65, i64 16, !65, i64 20}
!132 = !{!131, !130, i64 0}
!133 = !{!131, !82, i64 8}
!134 = !{!131, !65, i64 20}
!135 = !{!"branch_weights", i32 1, i32 1999}
!136 = !{!"p1 _ZTSN4llvm14GlobalVariableE", !68, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!139 = !{!"branch_weights", i32 0, i32 1}
!140 = !{!"p1 _ZTSN4llvm5ValueE", !68, i64 0}
!141 = !{!"p2 _ZTSN4llvm3UseE", !75, i64 0}
!142 = !{!"p1 _ZTSN4llvm4UserE", !68, i64 0}
!143 = !{!"_ZTSN4llvm3UseE", !140, i64 0, !121, i64 8, !141, i64 16, !142, i64 24}
!144 = !{!143, !140, i64 0}
!145 = !{!"_ZTSN4llvm2AA7RangeTyE", !94, i64 0, !94, i64 8}
!146 = !{!145, !94, i64 0}
!147 = !{!145, !94, i64 8}
!148 = !{!"_ZTSN4llvm5APIntE", !64, i64 0, !65, i64 8}
!149 = !{!148, !65, i64 8}
!150 = !{!69, !65, i64 8}
!151 = !{!69, !65, i64 12}
!152 = !{!"p1 _ZTSN4llvm17AbstractAttributeE", !68, i64 0}
!153 = !{!152, !152, i64 0}
!154 = !{!"_ZTSSt8functionIFSt8optionalIPN4llvm8ConstantEERKNS1_14GlobalVariableEPKNS1_17AbstractAttributeERbEE", !73, i64 0, !68, i64 24}
!155 = !{!154, !68, i64 24}
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!"p1 _ZTSN4llvm8FunctionE", !68, i64 0}
!158 = !{!"_ZTSN4llvm8ArgumentE", !122, i64 0, !157, i64 24, !65, i64 32}
!159 = !{!158, !157, i64 24}
!160 = !{!"p1 _ZTSN4llvm11InstructionE", !68, i64 0}
!161 = !{!"_ZTSSt4pairIPN4llvm5ValueEPKNS0_11InstructionEE", !140, i64 0, !160, i64 8}
end_hunk_0
begin_hunk_1_@llvm.umin.i64/@llvm.umax.i64
!3352 = distinct !{!3352, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!3353 = distinct !{!3353, !3352, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3354 = !{!"_ZTSZN4llvm10Attributor16getOrCreateAAForINS_17AADereferenceableEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbbEUlvE_", !905, i64 0}
!3355 = !{!3354, !905, i64 0}
!3356 = !{!3351}
!3357 = !{!3353}
!3358 = !{!906, !906, i64 0}
!3359 = distinct !{!3359, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv"}
!3360 = distinct !{!3360, !3359, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv: argument 0"}
!3361 = distinct !{!3361, i1 true, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv"}
!3362 = distinct !{!3362, !3361, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv: argument 0"}
!3363 = !{!3362, !3360}
!3364 = distinct !{!3364, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3365 = distinct !{!3365, !3364, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3366 = distinct !{!3366, i1 true, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3367 = distinct !{!3367, !3366, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3368 = !{!3367, !3365}
!3369 = distinct !{!3369, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3370 = distinct !{!3370, !3369, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3371 = distinct !{!3371, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3372 = distinct !{!3372, !3371, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3373 = distinct !{!3373, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3374 = distinct !{!3374, !3373, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3375 = distinct !{!3375, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3376 = distinct !{!3376, !3375, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3377 = !{!3372, !3370}
!3378 = !{!3376, !3374}
!3379 = distinct !{!3379, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!3380 = distinct !{!3380, !3379, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!3381 = distinct !{!3381, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!3382 = distinct !{!3382, !3381, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3383 = !{!"_ZTSZN4llvm10Attributor16getOrCreateAAForINS_11AANoFPClassEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbbEUlvE_", !906, i64 0}
!3384 = !{!3383, !906, i64 0}
!3385 = !{!3380}
!3386 = !{!3382}
!3387 = !{!907, !907, i64 0}
!3388 = distinct !{!3388, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv"}
!3389 = distinct !{!3389, !3388, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv: argument 0"}
!3390 = distinct !{!3390, i1 true, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv"}
!3391 = distinct !{!3391, !3390, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv: argument 0"}
!3392 = !{!3391, !3389}
!3393 = distinct !{!3393, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3394 = distinct !{!3394, !3393, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3395 = distinct !{!3395, i1 true, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3396 = distinct !{!3396, !3395, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3397 = !{!3396, !3394}
!3398 = distinct !{!3398, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3399 = distinct !{!3399, !3398, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3400 = distinct !{!3400, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3401 = distinct !{!3401, !3400, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3402 = distinct !{!3402, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3403 = distinct !{!3403, !3402, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3404 = distinct !{!3404, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3405 = distinct !{!3405, !3404, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3406 = !{!3401, !3399}
!3407 = !{!3405, !3403}
!3408 = distinct !{!3408, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!3409 = distinct !{!3409, !3408, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!3410 = distinct !{!3410, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!3411 = distinct !{!3411, !3410, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3412 = !{!"_ZTSZN4llvm10Attributor16getOrCreateAAForINS_17AAPrivatizablePtrEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbbEUlvE_", !907, i64 0}
!3413 = !{!3412, !907, i64 0}
!3414 = !{!3409}
!3415 = !{!3411}
!3416 = distinct !{!3416, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3417 = distinct !{!3417, !3416, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3418 = distinct !{!3418, i1 true, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3419 = distinct !{!3419, !3418, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3420 = distinct !{!3420, !156}
!3421 = !{!3419, !3417}
!3422 = !{!908, !908, i64 0}
!3423 = distinct !{!3423, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv"}
!3424 = distinct !{!3424, !3423, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv: argument 0"}
!3425 = distinct !{!3425, i1 true, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv"}
!3426 = distinct !{!3426, !3425, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv: argument 0"}
!3427 = !{!3426, !3424}
!3428 = distinct !{!3428, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3429 = distinct !{!3429, !3428, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3430 = distinct !{!3430, i1 true, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3431 = distinct !{!3431, !3430, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3432 = !{!3431, !3429}
!3433 = distinct !{!3433, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3434 = distinct !{!3434, !3433, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3435 = distinct !{!3435, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3436 = distinct !{!3436, !3435, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3437 = distinct !{!3437, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3438 = distinct !{!3438, !3437, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3439 = distinct !{!3439, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3440 = distinct !{!3440, !3439, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3441 = !{!3436, !3434}
!3442 = !{!3440, !3438}
!3443 = distinct !{!3443, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!3444 = distinct !{!3444, !3443, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!3445 = distinct !{!3445, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!3446 = distinct !{!3446, !3445, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3447 = !{!"_ZTSZN4llvm10Attributor16getOrCreateAAForINS_18AAIndirectCallInfoEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbbEUlvE_", !908, i64 0}
!3448 = !{!3447, !908, i64 0}
!3449 = !{!3444}
!3450 = !{!3446}
!3451 = !{!693, !331, i64 8}
!3452 = !{!909, !909, i64 0}
!3453 = distinct !{!3453, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv"}
!3454 = distinct !{!3454, !3453, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv: argument 0"}
!3455 = distinct !{!3455, i1 true, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv"}
!3456 = distinct !{!3456, !3455, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv: argument 0"}
!3457 = !{!3456, !3454}
!3458 = distinct !{!3458, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3459 = distinct !{!3459, !3458, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3460 = distinct !{!3460, i1 true, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3461 = distinct !{!3461, !3460, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3462 = !{!3461, !3459}
!3463 = distinct !{!3463, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3464 = distinct !{!3464, !3463, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3465 = distinct !{!3465, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3466 = distinct !{!3466, !3465, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3467 = distinct !{!3467, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3468 = distinct !{!3468, !3467, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3469 = distinct !{!3469, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3470 = distinct !{!3470, !3469, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3471 = !{!3466, !3464}
!3472 = !{!3470, !3468}
!3473 = distinct !{!3473, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!3474 = distinct !{!3474, !3473, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!3475 = distinct !{!3475, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!3476 = distinct !{!3476, !3475, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3477 = !{!"_ZTSZN4llvm10Attributor16getOrCreateAAForINS_22AAInvariantLoadPointerEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbbEUlvE_", !909, i64 0}
!3478 = !{!3477, !909, i64 0}
!3479 = !{!3474}
!3480 = !{!3476}
!3481 = !{!910, !910, i64 0}
!3482 = distinct !{!3482, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv"}
!3483 = distinct !{!3483, !3482, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv: argument 0"}
!3484 = distinct !{!3484, i1 true, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv"}
!3485 = distinct !{!3485, !3484, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv: argument 0"}
!3486 = !{!3485, !3483}
!3487 = distinct !{!3487, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3488 = distinct !{!3488, !3487, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3489 = distinct !{!3489, i1 true, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3490 = distinct !{!3490, !3489, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3491 = !{!3490, !3488}
!3492 = distinct !{!3492, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3493 = distinct !{!3493, !3492, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3494 = distinct !{!3494, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3495 = distinct !{!3495, !3494, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3496 = distinct !{!3496, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3497 = distinct !{!3497, !3496, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3498 = distinct !{!3498, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3499 = distinct !{!3499, !3498, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3500 = !{!3495, !3493}
!3501 = !{!3499, !3497}
!3502 = distinct !{!3502, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!3503 = distinct !{!3503, !3502, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!3504 = distinct !{!3504, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!3505 = distinct !{!3505, !3504, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3506 = !{!"_ZTSZN4llvm10Attributor16getOrCreateAAForINS_14AAAddressSpaceEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbbEUlvE_", !910, i64 0}
!3507 = !{!3506, !910, i64 0}
!3508 = !{!3503}
!3509 = !{!3505}
!3510 = !{!911, !911, i64 0}
!3511 = distinct !{!3511, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv"}
!3512 = distinct !{!3512, !3511, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv: argument 0"}
!3513 = distinct !{!3513, i1 true, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv"}
!3514 = distinct !{!3514, !3513, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv: argument 0"}
!3515 = !{!3514, !3512}
!3516 = distinct !{!3516, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3517 = distinct !{!3517, !3516, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3518 = distinct !{!3518, i1 true, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3519 = distinct !{!3519, !3518, !"_ZNK4llvm8DenseMapIPKcNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3520 = !{!3519, !3517}
!3521 = distinct !{!3521, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3522 = distinct !{!3522, !3521, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3523 = distinct !{!3523, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3524 = distinct !{!3524, !3523, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3525 = distinct !{!3525, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!3526 = distinct !{!3526, !3525, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!3527 = distinct !{!3527, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!3528 = distinct !{!3528, !3527, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!3529 = !{!3524, !3522}
!3530 = !{!3528, !3526}
!3531 = distinct !{!3531, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!3532 = distinct !{!3532, !3531, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!3533 = distinct !{!3533, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!3534 = distinct !{!3534, !3533, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3535 = !{!"_ZTSZN4llvm10Attributor16getOrCreateAAForINS_16AAAllocationInfoEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbbEUlvE_", !911, i64 0}
!3536 = !{!3535, !911, i64 0}
!3537 = !{!3532}
!3538 = !{!3534}
!3539 = distinct !{null}
!3540 = !{!644, !644, i64 0}
!3541 = !{!"_ZTSSt15error_condition", !65, i64 0, !644, i64 8}
!3542 = !{!3541, !644, i64 8}
!3543 = !{!3541, !65, i64 0}
!3544 = distinct !{!3544, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits12getGraphNameIPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!3545 = distinct !{!3545, !3544, !"_ZN4llvm21DefaultDOTGraphTraits12getGraphNameIPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!3546 = distinct !{!3546, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits18getGraphPropertiesIPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!3547 = distinct !{!3547, !3546, !"_ZN4llvm21DefaultDOTGraphTraits18getGraphPropertiesIPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!3548 = !{!3545}
!3549 = !{!3547}
!3550 = distinct !{!3550, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits17getNodeAttributesIPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvRKT_"}
!3551 = distinct !{!3551, !3550, !"_ZN4llvm21DefaultDOTGraphTraits17getNodeAttributesIPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvRKT_: argument 0"}
!3552 = distinct !{!3552, i1 true, !"_ZN4llvm14DOTGraphTraitsIPNS_10AADepGraphEE12getNodeLabelB5cxx11EPKNS_14AADepGraphNodeEPKS1_"}
!3553 = distinct !{!3553, !3552, !"_ZN4llvm14DOTGraphTraitsIPNS_10AADepGraphEE12getNodeLabelB5cxx11EPKNS_14AADepGraphNodeEPKS1_: argument 0"}
!3554 = distinct !{null, null}
!3555 = distinct !{!3555, i1 true, !"_ZN4llvm14DOTGraphTraitsIPNS_10AADepGraphEE12getNodeLabelB5cxx11EPKNS_14AADepGraphNodeEPKS1_"}
!3556 = distinct !{!3556, !3555, !"_ZN4llvm14DOTGraphTraitsIPNS_10AADepGraphEE12getNodeLabelB5cxx11EPKNS_14AADepGraphNodeEPKS1_: argument 0"}
!3557 = distinct !{!3557, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits17getEdgeAttributesINS_15mapped_iteratorIPKNS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj1ES7_EEEEPFS5_RSB_ES5_EEPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvT_RKT0_"}
!3558 = distinct !{!3558, !3557, !"_ZN4llvm21DefaultDOTGraphTraits17getEdgeAttributesINS_15mapped_iteratorIPKNS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj1ES7_EEEEPFS5_RSB_ES5_EEPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvT_RKT0_: argument 0"}
!3559 = distinct !{!3559, !156}
!3560 = distinct !{!3560, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits17getEdgeAttributesINS_15mapped_iteratorIPKNS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj1ES7_EEEEPFS5_RSB_ES5_EEPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvT_RKT0_"}
!3561 = distinct !{!3561, !3560, !"_ZN4llvm21DefaultDOTGraphTraits17getEdgeAttributesINS_15mapped_iteratorIPKNS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj1ES7_EEEEPFS5_RSB_ES5_EEPNS_10AADepGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvT_RKT0_: argument 0"}
!3562 = distinct !{!3562, !156}
!3563 = !{!3551}
!3564 = !{!3553}
!3565 = !{!606, !604, i64 8}
!3566 = !{!606, !76, i64 40}
!3567 = !{!606, !605, i64 44}
!3568 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0}
!3569 = !{!3568, !3568, i64 0}
!3570 = !{!3556}
!3571 = !{!3558}
!3572 = !{!3561}
!3573 = distinct !{!3573, i1 true, !"_ZN4llvm15SmallPtrSetImplIPvE6insertES1_"}
!3574 = distinct !{!3574, !3573, !"_ZN4llvm15SmallPtrSetImplIPvE6insertES1_: argument 0"}
!3575 = !{!3574}
!3576 = distinct !{!3576, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS2_jS4_S7_Lb0EEEbERKS2_DpOT_"}
!3577 = distinct !{!3577, !3576, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS2_jS4_S7_Lb0EEEbERKS2_DpOT_: argument 0"}
!3578 = distinct !{!3578, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E16try_emplace_implIRKS2_JEEESt4pairINS_16DenseMapIteratorIS2_jS4_S7_Lb0EEEbEOT_DpOT0_"}
!3579 = distinct !{!3579, !3578, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E16try_emplace_implIRKS2_JEEESt4pairINS_16DenseMapIteratorIS2_jS4_S7_Lb0EEEbEOT_DpOT0_: argument 0"}
!3580 = distinct !{!3580, i1 true, !"_ZSt16forward_as_tupleIJRKN4llvm9StringRefEEESt5tupleIJDpOT_EES7_"}
!3581 = distinct !{!3581, !3580, !"_ZSt16forward_as_tupleIJRKN4llvm9StringRefEEESt5tupleIJDpOT_EES7_: argument 0"}
!3582 = distinct !{!3582, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS2_jS4_S7_Lb0EEEbERKS2_DpOT_"}
!3583 = distinct !{!3583, !3582, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS2_jS4_S7_Lb0EEEbERKS2_DpOT_: argument 0"}
!3584 = distinct !{!3584, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E16try_emplace_implIRKS2_JEEESt4pairINS_16DenseMapIteratorIS2_jS4_S7_Lb0EEEbEOT_DpOT0_"}
!3585 = distinct !{!3585, !3584, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E16try_emplace_implIRKS2_JEEESt4pairINS_16DenseMapIteratorIS2_jS4_S7_Lb0EEEbEOT_DpOT0_: argument 0"}
!3586 = distinct !{!3586, i1 true, !"_ZSt16forward_as_tupleIJRKN4llvm9StringRefEEESt5tupleIJDpOT_EES7_"}
!3587 = distinct !{!3587, !3586, !"_ZSt16forward_as_tupleIJRKN4llvm9StringRefEEESt5tupleIJDpOT_EES7_: argument 0"}
!3588 = !{!527, !76, i64 1}
!3589 = !{!3579, !3577}
!3590 = !{!"_ZTSSt4pairIN4llvm9StringRefEjE", !459, i64 0, !65, i64 16}
!3591 = !{!3590, !65, i64 16}
!3592 = !{!3581}
!3593 = !{!804, !804, i64 0}
!3594 = !{!3585, !3583}
!3595 = !{!3587}
!3596 = !{!469, !76, i64 8}
end_hunk_1
