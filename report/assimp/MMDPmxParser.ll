inline.NumInlined: 1415
inline.NumDeleted: 973
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3pmx7PmxBone4ReadEPSiPNS_10PmxSettingE:bb.a
  store i8 %i.w, ptr %i.n, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.x = load i64, ptr %i.t, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ad, ptr %i.ab, align 8
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.o, align 8
  store ptr %i.q, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load <2 x i64>, ptr %i.af, align 8
  store <2 x i64> %i.ah, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %3, align 8
  store i64 %i.ae, ptr %i.r, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.ai = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.e ], [ %i.r, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 1
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ap = load i8, ptr %2, align 1
  call void @_ZN3pmx10ReadStringB5cxx11EPSih(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %1, i8 noundef zeroext %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = load ptr, ptr %4, align 8               ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.aw, label %bb.g, label %.thread.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i35

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ba = load i8, ptr %i.au, align 1
  store i8 %i.ba, ptr %i.ar, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.au, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37: ; preds = %bb.i, %bb.h, %bb.g
  %i.bb = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.aq, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1
  %.pre.i38 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41

.thread.i40:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i39
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.au, ptr %i.aq, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load <2 x i64>, ptr %i.bg, align 8
  store <2 x i64> %i.bh, ptr %i.bf, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i34
  %i.bi = load i64, ptr %i.as, align 8
  store ptr %i.au, ptr %i.aq, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load <2 x i64>, ptr %i.bj, align 8
  store <2 x i64> %i.bl, ptr %i.bk, align 8
  %.not.i36 = icmp eq ptr %i.ar, null
  br i1 %.not.i36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i35
  store ptr %i.ar, ptr %4, align 8
  store i64 %i.bi, ptr %i.av, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i35, %.thread.i40
  store ptr %i.av, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37, %bb.j, %bb.k
  %i.bm = phi ptr [ %.pre.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37 ], [ %i.ar, %bb.j ], [ %i.av, %bb.k ]
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bn, align 8
  store i8 0, ptr %i.bm, align 1
  %i.bo = load ptr, ptr %4, align 8               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bt, i64 noundef 12) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 4 uses
  %i.bw = load i8, ptr %i.bv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  switch i8 %i.bw, label %_ZN3pmx9ReadIndexEPSii.exit [
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 4, label %bb.n
  ]

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.bx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 1) ; 0 uses
  %i.by = load i8, ptr %i.j, align 1              ; 2 uses
  %i.bz = icmp eq i8 %i.by, -1
  %i.ca = zext i8 %i.by to i32
  %spec.select.i = select i1 %i.bz, i32 -1, i32 %i.ca
  br label %_ZN3pmx9ReadIndexEPSii.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.k, i64 noundef 2) ; 0 uses
  %i.cc = load i16, ptr %i.k, align 2             ; 2 uses
  %i.cd = icmp eq i16 %i.cc, -1
  %i.ce = zext i16 %i.cc to i32
  %spec.select6.i = select i1 %i.cd, i32 -1, i32 %i.ce
  br label %_ZN3pmx9ReadIndexEPSii.exit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.l, i64 noundef 4) ; 0 uses
  %i.cg = load i32, ptr %i.l, align 4
  br label %_ZN3pmx9ReadIndexEPSii.exit

_ZN3pmx9ReadIndexEPSii.exit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.l, %bb.m, %bb.n
  %.0.i = phi i32 [ %spec.select.i, %bb.l ], [ %i.cg, %bb.n ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %spec.select6.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %.0.i, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ci, i64 noundef 4) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 7 uses
  %i.cl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ck, i64 noundef 2) ; 0 uses
  %i.cm = load i16, ptr %i.ck, align 4
  %.not = trunc i16 %i.cm to i1
  br i1 %.not, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZN3pmx9ReadIndexEPSii.exit
  %i.cn = load i8, ptr %i.bv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  switch i8 %i.cn, label %_ZN3pmx9ReadIndexEPSii.exit48 [
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 4, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.co = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.g, i64 noundef 1) ; 0 uses
  %i.cp = load i8, ptr %i.g, align 1              ; 2 uses
  %i.cq = icmp eq i8 %i.cp, -1
  %i.cr = zext i8 %i.cp to i32
  %spec.select.i47 = select i1 %i.cq, i32 -1, i32 %i.cr
  br label %_ZN3pmx9ReadIndexEPSii.exit48

bb.q:                                             ; preds = %bb.o
  %i.cs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.h, i64 noundef 2) ; 0 uses
  %i.ct = load i16, ptr %i.h, align 2             ; 2 uses
  %i.cu = icmp eq i16 %i.ct, -1
  %i.cv = zext i16 %i.ct to i32
  %spec.select6.i46 = select i1 %i.cu, i32 -1, i32 %i.cv
  br label %_ZN3pmx9ReadIndexEPSii.exit48

bb.r:                                             ; preds = %bb.o
  %i.cw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.i, i64 noundef 4) ; 0 uses
  %i.cx = load i32, ptr %i.i, align 4
  br label %_ZN3pmx9ReadIndexEPSii.exit48

_ZN3pmx9ReadIndexEPSii.exit48:                    ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i45 = phi i32 [ %spec.select.i47, %bb.p ], [ %i.cx, %bb.r ], [ -1, %bb.o ], [ %spec.select6.i46, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.0.i45, ptr %i.cy, align 4
  br label %bb.t

bb.s:                                             ; preds = %_ZN3pmx9ReadIndexEPSii.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.da = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.cz, i64 noundef 12) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN3pmx9ReadIndexEPSii.exit48
  %i.db = load i16, ptr %i.ck, align 4            ; 2 uses
  %i.dc = and i16 %i.db, 768
  %.not29 = icmp eq i16 %i.dc, 0
  br i1 %.not29, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = load i8, ptr %i.bv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  switch i8 %i.dd, label %_ZN3pmx9ReadIndexEPSii.exit52 [
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 4, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.de = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  %i.df = load i8, ptr %i.d, align 1              ; 2 uses
  %i.dg = icmp eq i8 %i.df, -1
  %i.dh = zext i8 %i.df to i32
  %spec.select.i51 = select i1 %i.dg, i32 -1, i32 %i.dh
  br label %_ZN3pmx9ReadIndexEPSii.exit52

bb.w:                                             ; preds = %bb.u
  %i.di = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 2) ; 0 uses
  %i.dj = load i16, ptr %i.e, align 2             ; 2 uses
  %i.dk = icmp eq i16 %i.dj, -1
  %i.dl = zext i16 %i.dj to i32
  %spec.select6.i50 = select i1 %i.dk, i32 -1, i32 %i.dl
  br label %_ZN3pmx9ReadIndexEPSii.exit52

bb.x:                                             ; preds = %bb.u
  %i.dm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.f, i64 noundef 4) ; 0 uses
  %i.dn = load i32, ptr %i.f, align 4
  br label %_ZN3pmx9ReadIndexEPSii.exit52

_ZN3pmx9ReadIndexEPSii.exit52:                    ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i49 = phi i32 [ %spec.select.i51, %bb.v ], [ %i.dn, %bb.x ], [ -1, %bb.u ], [ %spec.select6.i50, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.0.i49, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.dp, i64 noundef 4) ; 0 uses
  %.pre = load i16, ptr %i.ck, align 4
  br label %bb.y

bb.y:                                             ; preds = %_ZN3pmx9ReadIndexEPSii.exit52, %bb.t
  %i.dr = phi i16 [ %.pre, %_ZN3pmx9ReadIndexEPSii.exit52 ], [ %i.db, %bb.t ] ; 2 uses
  %i.ds = and i16 %i.dr, 1024
  %.not30 = icmp eq i16 %i.ds, 0
  br i1 %.not30, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.du = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.dt, i64 noundef 12) ; 0 uses
  %.pre61 = load i16, ptr %i.ck, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dv = phi i16 [ %.pre61, %bb.z ], [ %i.dr, %bb.y ] ; 2 uses
  %i.dw = and i16 %i.dv, 2048
  %.not31 = icmp eq i16 %i.dw, 0
  br i1 %.not31, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.dy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.dx, i64 noundef 12) ; 0 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ea = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.dz, i64 noundef 12) ; 0 uses
  %.pre62 = load i16, ptr %i.ck, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eb = phi i16 [ %.pre62, %bb.ab ], [ %i.dv, %bb.aa ] ; 2 uses
  %i.ec = and i16 %i.eb, 8192
  %.not32 = icmp eq i16 %i.ec, 0
  br i1 %.not32, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ee = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ed, i64 noundef 4) ; 0 uses
  %.pre63 = load i16, ptr %i.ck, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ef = phi i16 [ %.pre63, %bb.ad ], [ %i.eb, %bb.ac ]
  %i.eg = and i16 %i.ef, 32
  %.not33 = icmp eq i16 %i.eg, 0
  br i1 %.not33, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = load i8, ptr %i.bv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  switch i8 %i.eh, label %_ZN3pmx9ReadIndexEPSii.exit56 [
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 4, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ei = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.ej = load i8, ptr %i.a, align 1              ; 2 uses
  %i.ek = icmp eq i8 %i.ej, -1
  %i.el = zext i8 %i.ej to i32
  %spec.select.i55 = select i1 %i.ek, i32 -1, i32 %i.el
  br label %_ZN3pmx9ReadIndexEPSii.exit56

bb.ah:                                            ; preds = %bb.af
  %i.em = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 2) ; 0 uses
  %i.en = load i16, ptr %i.b, align 2             ; 2 uses
  %i.eo = icmp eq i16 %i.en, -1
  %i.ep = zext i16 %i.en to i32
  %spec.select6.i54 = select i1 %i.eo, i32 -1, i32 %i.ep
  br label %_ZN3pmx9ReadIndexEPSii.exit56

bb.ai:                                            ; preds = %bb.af
  %i.eq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 4) ; 0 uses
  %i.er = load i32, ptr %i.c, align 4
  br label %_ZN3pmx9ReadIndexEPSii.exit56

_ZN3pmx9ReadIndexEPSii.exit56:                    ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i53 = phi i32 [ %spec.select.i55, %bb.ag ], [ %i.er, %bb.ai ], [ -1, %bb.af ], [ %spec.select6.i54, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.0.i53, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.eu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.et, i64 noundef 4) ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ew = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ev, i64 noundef 4) ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  %i.ey = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ex, i64 noundef 4) ; 0 uses
  %i.ez = load i32, ptr %i.ex, align 4            ; 5 uses
  %i.fa = sext i32 %i.ez to i64                   ; 4 uses
  %i.fb = icmp slt i32 %i.ez, 0
  %i.fc = shl nuw nsw i64 %i.fa, 5
  %i.fd = select i1 %i.fb, i64 -1, i64 %i.fc
  %i.fe = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fd) #19, !noalias !22 ; 4 uses
  %i.ff = icmp eq i32 %i.ez, 0
  br i1 %i.ff, label %_ZN3mmd11make_uniqueIA_N3pmx9PmxIkLinkEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN3pmx9ReadIndexEPSii.exit56
  %i.fg = getelementptr inbounds [32 x i8], ptr %i.fe, i64 %i.fa
  %i.fh = add nsw i64 %i.fa, 576460752303423487
  %i.fi = and i64 %i.fh, 576460752303423487
  %xtraiter = and i64 %i.fa, 7
end_hunk_0
begin_hunk_1_@_ZN3pmx8PmxModel4ReadEPSi:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i139: ; preds = %bb.at, %bb.as, %bb.ar
  %i.ln = load i64, ptr %i.jc, align 8            ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i64 %i.ln, ptr %i.lo, align 8
  %i.lp = load ptr, ptr %i.le, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ln
  store i8 0, ptr %i.lq, align 1
  %.pre.i140 = load ptr, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit143

.thread.i142:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i141
  %i.lr = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.li, ptr %i.le, align 8
  %i.ls = load i64, ptr %i.jc, align 8
  store i64 %i.ls, ptr %i.lr, align 8
  %i.lt = load i64, ptr %i.jb, align 8
  store i64 %i.lt, ptr %i.lg, align 8
  br label %bb.av

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i137: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i136
  %i.lu = load i64, ptr %i.lg, align 8
  store ptr %i.li, ptr %i.le, align 8
  %i.lv = load i64, ptr %i.jc, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i64 %i.lv, ptr %i.lw, align 8
  %i.lx = load i64, ptr %i.jb, align 8
  store i64 %i.lx, ptr %i.lg, align 8
  %.not.i138 = icmp eq ptr %i.lf, null
  br i1 %.not.i138, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i137
  store ptr %i.lf, ptr %7, align 8
  store i64 %i.lu, ptr %i.jb, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit143

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i137, %.thread.i142
  store ptr %i.jb, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit143: ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i139, %bb.au, %bb.av
  %i.ly = phi ptr [ %.pre.i140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i139 ], [ %i.lf, %bb.au ], [ %i.jb, %bb.av ], [ %i.li, %bb.aq ]
  store i64 0, ptr %i.jc, align 8
  store i8 0, ptr %i.ly, align 1
  %i.lz = load ptr, ptr %7, align 8               ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.jb
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit143
  %i.mb = load i64, ptr %i.jb, align 8
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %i.md = load i32, ptr %i.gq, align 8
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp slt i64 %indvars.iv.next276, %i.me
  br i1 %i.mf, label %bb.ap, label %._crit_edge252, !llvm.loop !74

._crit_edge255:                                   ; preds = %.lr.ph254, %_ZNSt10unique_ptrIA_N3pmx11PmxMaterialESt14default_deleteIS2_EED2Ev.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.mh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.mg, i64 noundef 4) ; 0 uses
  %i.mi = load i32, ptr %i.mg, align 8            ; 3 uses
  %i.mj = sext i32 %i.mi to i64                   ; 3 uses
  %i.mk = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.mj, i64 176) ; 2 uses
  %i.ml = extractvalue { i64, i1 } %i.mk, 1
  %i.mm = extractvalue { i64, i1 } %i.mk, 0
  %i.mn = or disjoint i64 %i.mm, 8
  %i.mo = select i1 %i.ml, i64 -1, i64 %i.mn
  %i.mp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mo) #19, !noalias !75 ; 2 uses
  store i64 %i.mj, ptr %i.mp, align 16, !noalias !75
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 3 uses
  %i.mr = icmp eq i32 %i.mi, 0
  br i1 %i.mr, label %_ZN3mmd11make_uniqueIA_N3pmx7PmxBoneEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge255
  %i.ms = getelementptr inbounds [176 x i8], ptr %i.mq, i64 %i.mj
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %i.mt = phi ptr [ %i.mq, %bb.aw ], [ %i.nb, %bb.ax ] ; 9 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 2 uses
  store ptr %i.mu, ptr %i.mt, align 8, !noalias !75
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i64 0, ptr %i.mv, align 8, !noalias !75
  store i8 0, ptr %i.mu, align 8, !noalias !75
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 48 ; 2 uses
  store ptr %i.mx, ptr %i.mw, align 8, !noalias !75
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  store i64 0, ptr %i.my, align 8, !noalias !75
  store i8 0, ptr %i.mx, align 8, !noalias !75
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mt, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.mz, i8 0, i64 22, i1 false), !noalias !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.na, i8 0, i64 88, i1 false), !noalias !75
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mt, i64 176 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.ms
  br i1 %i.nc, label %_ZN3mmd11make_uniqueIA_N3pmx7PmxBoneEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.ax

_ZN3mmd11make_uniqueIA_N3pmx7PmxBoneEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit: ; preds = %bb.ax, %._crit_edge255
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ne = load ptr, ptr %i.nd, align 8            ; 4 uses
  store ptr %i.mq, ptr %i.nd, align 8
  %.not.i.i.i.i147 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i.i147, label %_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN3mmd11make_uniqueIA_N3pmx7PmxBoneEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 -8 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8            ; 2 uses
  %.idx.i.i.i.i.i148 = mul i64 %i.ng, 176         ; 2 uses
  %i.nh = icmp eq i64 %i.ng, 0
  br i1 %i.nh, label %_ZNKSt14default_deleteIA_N3pmx7PmxBoneEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i149

.preheader.preheader.i.i.i.i.i149:                ; preds = %bb.ay
  %i.ni = getelementptr inbounds i8, ptr %i.ne, i64 %.idx.i.i.i.i.i148
  br label %.preheader.i.i.i.i.i150

.preheader.i.i.i.i.i150:                          ; preds = %_ZN3pmx7PmxBoneD2Ev.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i149
  %i.nj = phi ptr [ %i.nk, %_ZN3pmx7PmxBoneD2Ev.exit.i.i.i.i.i ], [ %i.ni, %.preheader.preheader.i.i.i.i.i149 ] ; 5 uses
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 -176 ; 3 uses
  %i.nl = getelementptr inbounds i8, ptr %i.nj, i64 -8
  %i.nm = load ptr, ptr %i.nl, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i151 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i.i.i151, label %_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_N3pmx9PmxIkLinkEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N3pmx9PmxIkLinkEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i150
  call void @_ZdaPv(ptr noundef nonnull %i.nm) #20
  br label %_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N3pmx9PmxIkLinkEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i150
  %i.nn = getelementptr inbounds i8, ptr %i.nj, i64 -144
  %i.no = load ptr, ptr %i.nn, align 8            ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %i.nj, i64 -128 ; 2 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.nr = load i64, ptr %i.np, align 8
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.ns) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.nt = load ptr, ptr %i.nk, align 8            ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %i.nj, i64 -160 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZN3pmx7PmxBoneD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.nw = load i64, ptr %i.nu, align 8
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #20
  br label %_ZN3pmx7PmxBoneD2Ev.exit.i.i.i.i.i

_ZN3pmx7PmxBoneD2Ev.exit.i.i.i.i.i:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.ny = icmp eq ptr %i.nk, %i.ne
  br i1 %i.ny, label %_ZNKSt14default_deleteIA_N3pmx7PmxBoneEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i150

_ZNKSt14default_deleteIA_N3pmx7PmxBoneEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %_ZN3pmx7PmxBoneD2Ev.exit.i.i.i.i.i, %bb.ay
  %i.nz = or disjoint i64 %.idx.i.i.i.i.i148, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nz) #20
  %.pre298 = load i32, ptr %i.mg, align 8
  br label %_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N3pmx7PmxBoneEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %_ZN3mmd11make_uniqueIA_N3pmx7PmxBoneEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.oa = phi i32 [ %.pre298, %_ZNKSt14default_deleteIA_N3pmx7PmxBoneEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i ], [ %i.mi, %_ZN3mmd11make_uniqueIA_N3pmx7PmxBoneEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit ]
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph257, label %._crit_edge258

.lr.ph254:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx11PmxMaterialESt14default_deleteIS2_EED2Ev.exit, %.lr.ph254
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %.lr.ph254 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx11PmxMaterialESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.oc = load ptr, ptr %i.kz, align 8
  %i.od = getelementptr inbounds nuw [192 x i8], ptr %i.oc, i64 %indvars.iv278
  call void @_ZN3pmx11PmxMaterial4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(188) %i.od, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.oe = load i32, ptr %i.jt, align 8
  %i.of = sext i32 %i.oe to i64
  %i.og = icmp slt i64 %indvars.iv.next279, %i.of
  br i1 %i.og, label %.lr.ph254, label %._crit_edge255, !llvm.loop !78

._crit_edge258:                                   ; preds = %.lr.ph257, %_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.oi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.oh, i64 noundef 4) ; 0 uses
  %i.oj = load i32, ptr %i.oh, align 8            ; 6 uses
  %i.ok = sext i32 %i.oj to i64                   ; 3 uses
  %i.ol = icmp slt i32 %i.oj, 0
  %i.om = shl nuw nsw i64 %i.ok, 7
  %i.on = or disjoint i64 %i.om, 8
  %i.oo = select i1 %i.ol, i64 -1, i64 %i.on
  %i.op = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.oo) #19, !noalias !79 ; 9 uses
  store i64 %i.ok, ptr %i.op, align 16, !noalias !79
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 4 uses
  %i.or = icmp eq i32 %i.oj, 0
  br i1 %i.or, label %_ZN3mmd11make_uniqueIA_N3pmx8PmxMorphEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge258
  %i.os = getelementptr inbounds [128 x i8], ptr %i.oq, i64 %i.ok
  %lcmp.mod398.not = trunc i32 %i.oj to i1
  br i1 %lcmp.mod398.not, label %.prol.loopexit395.unr-lcssa, label %.prol.loopexit395

.prol.loopexit395.unr-lcssa:                      ; preds = %bb.az
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 24 ; 2 uses
  store ptr %i.ot, ptr %i.oq, align 8, !noalias !79
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store i64 0, ptr %i.ou, align 16, !noalias !79
  store i8 0, ptr %i.ot, align 8, !noalias !79
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  %i.ow = getelementptr inbounds nuw i8, ptr %i.op, i64 56 ; 2 uses
  store ptr %i.ow, ptr %i.ov, align 8, !noalias !79
  %i.ox = getelementptr inbounds nuw i8, ptr %i.op, i64 48
  store i64 0, ptr %i.ox, align 16, !noalias !79
  store i8 0, ptr %i.ow, align 8, !noalias !79
  %i.oy = getelementptr inbounds nuw i8, ptr %i.op, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.oy, i8 0, i64 60, i1 false), !noalias !79
  %i.oz = getelementptr inbounds nuw i8, ptr %i.op, i64 136
  br label %.prol.loopexit395

.prol.loopexit395:                                ; preds = %.prol.loopexit395.unr-lcssa, %bb.az
  %.unr400 = phi ptr [ %i.oq, %bb.az ], [ %i.oz, %.prol.loopexit395.unr-lcssa ]
  %i.pa = icmp eq i32 %i.oj, 1
  br i1 %i.pa, label %_ZN3mmd11make_uniqueIA_N3pmx8PmxMorphEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %.new396

.new396:                                          ; preds = %.prol.loopexit395, %.new396
  %i.pb = phi ptr [ %i.pp, %.new396 ], [ %.unr400, %.prol.loopexit395 ] ; 15 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 2 uses
  store ptr %i.pc, ptr %i.pb, align 8, !noalias !79
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i64 0, ptr %i.pd, align 8, !noalias !79
  store i8 0, ptr %i.pc, align 8, !noalias !79
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 48 ; 2 uses
  store ptr %i.pf, ptr %i.pe, align 8, !noalias !79
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  store i64 0, ptr %i.pg, align 8, !noalias !79
  store i8 0, ptr %i.pf, align 8, !noalias !79
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.ph, i8 0, i64 60, i1 false), !noalias !79
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 128
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 144 ; 2 uses
  store ptr %i.pj, ptr %i.pi, align 8, !noalias !79
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pb, i64 136
  store i64 0, ptr %i.pk, align 8, !noalias !79
  store i8 0, ptr %i.pj, align 8, !noalias !79
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pb, i64 160
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pb, i64 176 ; 2 uses
  store ptr %i.pm, ptr %i.pl, align 8, !noalias !79
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pb, i64 168
  store i64 0, ptr %i.pn, align 8, !noalias !79
  store i8 0, ptr %i.pm, align 8, !noalias !79
  %i.po = getelementptr inbounds nuw i8, ptr %i.pb, i64 196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.po, i8 0, i64 60, i1 false), !noalias !79
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pb, i64 256 ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.os
  br i1 %i.pq, label %_ZN3mmd11make_uniqueIA_N3pmx8PmxMorphEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %.new396

_ZN3mmd11make_uniqueIA_N3pmx8PmxMorphEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit: ; preds = %.prol.loopexit395, %.new396, %._crit_edge258
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ps = load ptr, ptr %i.pr, align 8            ; 4 uses
  store ptr %i.oq, ptr %i.pr, align 8
  %.not.i.i.i.i162 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i162, label %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN3mmd11make_uniqueIA_N3pmx8PmxMorphEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 -8 ; 2 uses
  %i.pu = load i64, ptr %i.pt, align 8            ; 2 uses
  %.idx.i.i.i.i.i163 = shl i64 %i.pu, 7           ; 2 uses
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %_ZNKSt14default_deleteIA_N3pmx8PmxMorphEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i164

.preheader.preheader.i.i.i.i.i164:                ; preds = %bb.ba
  %i.pw = getelementptr inbounds i8, ptr %i.ps, i64 %.idx.i.i.i.i.i163
  br label %.preheader.i.i.i.i.i165

.preheader.i.i.i.i.i165:                          ; preds = %.preheader.i.i.i.i.i165, %.preheader.preheader.i.i.i.i.i164
  %i.px = phi ptr [ %i.py, %.preheader.i.i.i.i.i165 ], [ %i.pw, %.preheader.preheader.i.i.i.i.i164 ]
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 -128 ; 3 uses
  call void @_ZN3pmx8PmxMorphD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.py) #17
  %i.pz = icmp eq ptr %i.py, %i.ps
  br i1 %i.pz, label %_ZNKSt14default_deleteIA_N3pmx8PmxMorphEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i165

_ZNKSt14default_deleteIA_N3pmx8PmxMorphEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i165, %bb.ba
  %i.qa = or disjoint i64 %.idx.i.i.i.i.i163, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.pt, i64 noundef %i.qa) #20
  %.pre299 = load i32, ptr %i.oh, align 8
  br label %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N3pmx8PmxMorphEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %_ZN3mmd11make_uniqueIA_N3pmx8PmxMorphEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.qb = phi i32 [ %.pre299, %_ZNKSt14default_deleteIA_N3pmx8PmxMorphEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i ], [ %i.oj, %_ZN3mmd11make_uniqueIA_N3pmx8PmxMorphEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit ]
  %i.qc = icmp sgt i32 %i.qb, 0
  br i1 %i.qc, label %.lr.ph260, label %._crit_edge261

.lr.ph257:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit, %.lr.ph257
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %.lr.ph257 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.qd = load ptr, ptr %i.nd, align 8
  %i.qe = getelementptr inbounds nuw [176 x i8], ptr %i.qd, i64 %indvars.iv281
  call void @_ZN3pmx7PmxBone4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(176) %i.qe, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.qf = load i32, ptr %i.mg, align 8
  %i.qg = sext i32 %i.qf to i64
  %i.qh = icmp slt i64 %indvars.iv.next282, %i.qg
  br i1 %i.qh, label %.lr.ph257, label %._crit_edge258, !llvm.loop !82

._crit_edge261:                                   ; preds = %.lr.ph260, %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.qj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.qi, i64 noundef 4) ; 0 uses
  %i.qk = load i32, ptr %i.qi, align 8            ; 3 uses
  %i.ql = sext i32 %i.qk to i64                   ; 3 uses
  %i.qm = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ql, i64 80) ; 2 uses
  %i.qn = extractvalue { i64, i1 } %i.qm, 1
  %i.qo = extractvalue { i64, i1 } %i.qm, 0
  %i.qp = or disjoint i64 %i.qo, 8
  %i.qq = select i1 %i.qn, i64 -1, i64 %i.qp
  %i.qr = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.qq) #19, !noalias !83 ; 2 uses
  store i64 %i.ql, ptr %i.qr, align 16, !noalias !83
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 3 uses
  %i.qt = icmp eq i32 %i.qk, 0
  br i1 %i.qt, label %_ZN3mmd11make_uniqueIA_N3pmx8PmxFrameEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge261
  %i.qu = getelementptr inbounds [80 x i8], ptr %i.qs, i64 %i.ql
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %i.qv = phi ptr [ %i.qs, %bb.bb ], [ %i.re, %bb.bc ] ; 10 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  store ptr %i.qw, ptr %i.qv, align 8, !noalias !83
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store i64 0, ptr %i.qx, align 8, !noalias !83
  store i8 0, ptr %i.qw, align 8, !noalias !83
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 48 ; 2 uses
  store ptr %i.qz, ptr %i.qy, align 8, !noalias !83
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qv, i64 40
  store i64 0, ptr %i.ra, align 8, !noalias !83
  store i8 0, ptr %i.qz, align 8, !noalias !83
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qv, i64 64
  store i8 0, ptr %i.rb, align 8, !noalias !83
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qv, i64 68
  store i32 0, ptr %i.rc, align 4, !noalias !83
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qv, i64 72
  store ptr null, ptr %i.rd, align 8, !noalias !83
  %i.re = getelementptr inbounds nuw i8, ptr %i.qv, i64 80 ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.qu
  br i1 %i.rf, label %_ZN3mmd11make_uniqueIA_N3pmx8PmxFrameEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.bc

_ZN3mmd11make_uniqueIA_N3pmx8PmxFrameEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit: ; preds = %bb.bc, %._crit_edge261
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.rh = load ptr, ptr %i.rg, align 8            ; 4 uses
  store ptr %i.qs, ptr %i.rg, align 8
  %.not.i.i.i.i170 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i170, label %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN3mmd11make_uniqueIA_N3pmx8PmxFrameEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -8 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8            ; 2 uses
  %.idx.i.i.i.i.i171 = mul i64 %i.rj, 80          ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i172

.preheader.preheader.i.i.i.i.i172:                ; preds = %bb.bd
  %i.rl = getelementptr inbounds i8, ptr %i.rh, i64 %.idx.i.i.i.i.i171
  br label %.preheader.i.i.i.i.i173

.preheader.i.i.i.i.i173:                          ; preds = %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i172
  %i.rm = phi ptr [ %i.rn, %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i ], [ %i.rl, %.preheader.preheader.i.i.i.i.i172 ] ; 5 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rm, i64 -80 ; 3 uses
  %i.ro = getelementptr inbounds i8, ptr %i.rm, i64 -8
  %i.rp = load ptr, ptr %i.ro, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i174 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i.i.i.i174, label %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i173
  call void @_ZdaPv(ptr noundef nonnull %i.rp) #20
  br label %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i173
  %i.rq = getelementptr inbounds i8, ptr %i.rm, i64 -48
  %i.rr = load ptr, ptr %i.rq, align 8            ; 2 uses
  %i.rs = getelementptr inbounds i8, ptr %i.rm, i64 -32 ; 2 uses
  %i.rt = icmp eq ptr %i.rr, %i.rs
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i175: ; preds = %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.ru = load i64, ptr %i.rs, align 8
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.rv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176: ; preds = %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i175
  %i.rw = load ptr, ptr %i.rn, align 8            ; 2 uses
  %i.rx = getelementptr inbounds i8, ptr %i.rm, i64 -64 ; 2 uses
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176
  %i.rz = load i64, ptr %i.rx, align 8
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.sa) #20
  br label %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i

_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i177
  %i.sb = icmp eq ptr %i.rn, %i.rh
  br i1 %i.sb, label %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i173

_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i, %bb.bd
  %i.sc = or disjoint i64 %.idx.i.i.i.i.i171, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ri, i64 noundef %i.sc) #20
  %.pre300 = load i32, ptr %i.qi, align 8
  br label %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %_ZN3mmd11make_uniqueIA_N3pmx8PmxFrameEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.sd = phi i32 [ %.pre300, %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i ], [ %i.qk, %_ZN3mmd11make_uniqueIA_N3pmx8PmxFrameEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit ]
  %i.se = icmp sgt i32 %i.sd, 0
  br i1 %i.se, label %.lr.ph263, label %._crit_edge264

.lr.ph260:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit, %.lr.ph260
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.lr.ph260 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.sf = load ptr, ptr %i.pr, align 8
  %i.sg = getelementptr inbounds nuw [128 x i8], ptr %i.sf, i64 %indvars.iv284
  call void @_ZN3pmx8PmxMorph4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(128) %i.sg, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.sh = load i32, ptr %i.oh, align 8
  %i.si = sext i32 %i.sh to i64
  %i.sj = icmp slt i64 %indvars.iv.next285, %i.si
  br i1 %i.sj, label %.lr.ph260, label %._crit_edge261, !llvm.loop !86

._crit_edge264:                                   ; preds = %.lr.ph263, %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.sl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.sk, i64 noundef 4) ; 0 uses
  %i.sm = load i32, ptr %i.sk, align 8            ; 3 uses
  %i.sn = sext i32 %i.sm to i64                   ; 3 uses
  %i.so = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.sn, i64 136) ; 2 uses
  %i.sp = extractvalue { i64, i1 } %i.so, 1
  %i.sq = extractvalue { i64, i1 } %i.so, 0
  %i.sr = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.sq, i64 8) ; 2 uses
  %i.ss = extractvalue { i64, i1 } %i.sr, 1
  %i.st = or i1 %i.sp, %i.ss
  %i.su = extractvalue { i64, i1 } %i.sr, 0
  %i.sv = select i1 %i.st, i64 -1, i64 %i.su
  %i.sw = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.sv) #19, !noalias !87 ; 2 uses
  store i64 %i.sn, ptr %i.sw, align 16, !noalias !87
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8 ; 3 uses
  %i.sy = icmp eq i32 %i.sm, 0
  br i1 %i.sy, label %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge264
  %i.sz = getelementptr inbounds [136 x i8], ptr %i.sx, i64 %i.sn
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %i.ta = phi ptr [ %i.sx, %bb.be ], [ %i.tl, %bb.bf ] ; 12 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16 ; 2 uses
  store ptr %i.tb, ptr %i.ta, align 8, !noalias !87
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store i64 0, ptr %i.tc, align 8, !noalias !87
  store i8 0, ptr %i.tb, align 8, !noalias !87
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 48 ; 2 uses
  store ptr %i.te, ptr %i.td, align 8, !noalias !87
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ta, i64 40
  store i64 0, ptr %i.tf, align 8, !noalias !87
  store i8 0, ptr %i.te, align 8, !noalias !87
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 64
  store i32 0, ptr %i.tg, align 8, !noalias !87
  %i.th = getelementptr inbounds nuw i8, ptr %i.ta, i64 68
  store i8 0, ptr %i.th, align 4, !noalias !87
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ta, i64 70
  store i16 0, ptr %i.ti, align 2, !noalias !87
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ta, i64 72
  store i8 0, ptr %i.tj, align 8, !noalias !87
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ta, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(57) %i.tk, i8 0, i64 57, i1 false), !noalias !87
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ta, i64 136 ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.sz
  br i1 %i.tm, label %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.bf

_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit: ; preds = %bb.bf, %._crit_edge264
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.to = load ptr, ptr %i.tn, align 8            ; 4 uses
  store ptr %i.sx, ptr %i.tn, align 8
  %.not.i.i.i.i190 = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i.i190, label %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.tp = getelementptr inbounds i8, ptr %i.to, i64 -8 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8            ; 2 uses
  %.idx.i.i.i.i.i191 = mul i64 %i.tq, 136         ; 2 uses
  %i.tr = icmp eq i64 %i.tq, 0
  br i1 %i.tr, label %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i192

.preheader.preheader.i.i.i.i.i192:                ; preds = %bb.bg
  %i.ts = getelementptr inbounds i8, ptr %i.to, i64 %.idx.i.i.i.i.i191
  br label %.preheader.i.i.i.i.i193

.preheader.i.i.i.i.i193:                          ; preds = %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i192
  %i.tt = phi ptr [ %i.tu, %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i ], [ %i.ts, %.preheader.preheader.i.i.i.i.i192 ] ; 4 uses
  %i.tu = getelementptr inbounds i8, ptr %i.tt, i64 -136 ; 3 uses
  %i.tv = getelementptr inbounds i8, ptr %i.tt, i64 -104
  %i.tw = load ptr, ptr %i.tv, align 8            ; 2 uses
  %i.tx = getelementptr inbounds i8, ptr %i.tt, i64 -88 ; 2 uses
  %i.ty = icmp eq ptr %i.tw, %i.tx
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i194: ; preds = %.preheader.i.i.i.i.i193
  %i.tz = load i64, ptr %i.tx, align 8
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.ua) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195: ; preds = %.preheader.i.i.i.i.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i194
  %i.ub = load ptr, ptr %i.tu, align 8            ; 2 uses
  %i.uc = getelementptr inbounds i8, ptr %i.tt, i64 -120 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195
  %i.ue = load i64, ptr %i.uc, align 8
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #20
  br label %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i

_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i196
  %i.ug = icmp eq ptr %i.tu, %i.to
  br i1 %i.ug, label %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i193

_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i, %bb.bg
  %i.uh = add i64 %.idx.i.i.i.i.i191, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.tp, i64 noundef %i.uh) #20
  %.pre301 = load i32, ptr %i.sk, align 8
  br label %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.ui = phi i32 [ %.pre301, %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i ], [ %i.sm, %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit ]
  %i.uj = icmp sgt i32 %i.ui, 0
  br i1 %i.uj, label %.lr.ph266, label %._crit_edge267

.lr.ph263:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit, %.lr.ph263
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %.lr.ph263 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.uk = load ptr, ptr %i.rg, align 8
  %i.ul = getelementptr inbounds nuw [80 x i8], ptr %i.uk, i64 %indvars.iv287
  call void @_ZN3pmx8PmxFrame4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(80) %i.ul, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.um = load i32, ptr %i.qi, align 8
  %i.un = sext i32 %i.um to i64
  %i.uo = icmp slt i64 %indvars.iv.next288, %i.un
  br i1 %i.uo, label %.lr.ph263, label %._crit_edge264, !llvm.loop !90

._crit_edge267:                                   ; preds = %.lr.ph266, %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.uq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.up, i64 noundef 4) ; 0 uses
  %i.ur = load i32, ptr %i.up, align 8            ; 3 uses
  %i.us = sext i32 %i.ur to i64                   ; 2 uses
  %i.ut = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.us, i64 176) ; 2 uses
  %i.uu = extractvalue { i64, i1 } %i.ut, 1
  %i.uv = extractvalue { i64, i1 } %i.ut, 0       ; 2 uses
  %i.uw = or disjoint i64 %i.uv, 8
  %i.ux = select i1 %i.uu, i64 -1, i64 %i.uw
  %i.uy = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ux) #19, !noalias !91 ; 5 uses
  store i64 %i.us, ptr %i.uy, align 16, !noalias !91
  %i.uz = icmp eq i32 %i.ur, 0
  br i1 %i.uz, label %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge267
  %i.va = add nsw i64 %i.uv, -176                 ; 2 uses
  %i.vb = icmp ult i64 %i.va, 176
  br i1 %i.vb, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %8 = udiv i64 %i.va, 176
  %9 = add nuw nsw i64 %8, 1
  %unroll_iter = and i64 %9, 288230376151711742
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.idx.i = phi i64 [ 8, %.preheader.preheader.new ], [ %.add.i.1, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.uy, i64 %.idx.i ; 6 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.vc, i8 0, i64 160, i1 false), !noalias !91
  store ptr %i.vc, ptr %.ptr.ptr.i, align 8, !noalias !91
  %i.vd = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store i64 0, ptr %i.vd, align 8, !noalias !91
  %i.ve = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 32
  %i.vf = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 48
  store ptr %i.vf, ptr %i.ve, align 8, !noalias !91
  %i.vg = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.vg, i8 0, i64 104, i1 false), !noalias !91
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 %.idx.i ; 6 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.vh, i64 176
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.vi, i8 0, i64 160, i1 false), !noalias !91
  store ptr %i.vi, ptr %.ptr.ptr.i.1, align 8, !noalias !91
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 184
  store i64 0, ptr %i.vj, align 8, !noalias !91
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 208
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 224
  store ptr %i.vl, ptr %i.vk, align 8, !noalias !91
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vh, i64 244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.vm, i8 0, i64 104, i1 false), !noalias !91
  %.add.i.1 = add nuw nsw i64 %.idx.i, 352        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.epil.preheader, label %.preheader

.preheader.epil.preheader:                        ; preds = %.preheader.preheader, %.preheader
  %.idx.i.epil.init = phi i64 [ 8, %.preheader.preheader ], [ %.add.i.1, %.preheader ]
  %.ptr.ptr.i.epil = getelementptr inbounds nuw i8, ptr %i.uy, i64 %.idx.i.epil.init ; 6 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.vn, i8 0, i64 160, i1 false), !noalias !91
  store ptr %i.vn, ptr %.ptr.ptr.i.epil, align 8, !noalias !91
  %i.vo = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 8
  store i64 0, ptr %i.vo, align 8, !noalias !91
  %i.vp = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 32
  %i.vq = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 48
  store ptr %i.vq, ptr %i.vp, align 8, !noalias !91
  %i.vr = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.vr, i8 0, i64 104, i1 false), !noalias !91
  br label %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit

_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit: ; preds = %.preheader.epil.preheader, %._crit_edge267
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.vt = load ptr, ptr %i.vs, align 8            ; 4 uses
  store ptr %.ptr5.i, ptr %i.vs, align 8
  %.not.i.i.i.i208 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i.i.i208, label %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.vu = getelementptr inbounds i8, ptr %i.vt, i64 -8 ; 2 uses
  %i.vv = load i64, ptr %i.vu, align 8            ; 2 uses
  %.idx.i.i.i.i.i209 = mul i64 %i.vv, 176         ; 2 uses
  %i.vw = icmp eq i64 %i.vv, 0
  br i1 %i.vw, label %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i210

.preheader.preheader.i.i.i.i.i210:                ; preds = %bb.bh
  %i.vx = getelementptr inbounds i8, ptr %i.vt, i64 %.idx.i.i.i.i.i209
  br label %.preheader.i.i.i.i.i211

.preheader.i.i.i.i.i211:                          ; preds = %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i210
  %i.vy = phi ptr [ %i.vz, %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i ], [ %i.vx, %.preheader.preheader.i.i.i.i.i210 ] ; 4 uses
  %i.vz = getelementptr inbounds i8, ptr %i.vy, i64 -176 ; 3 uses
  %i.wa = getelementptr inbounds i8, ptr %i.vy, i64 -144
  %i.wb = load ptr, ptr %i.wa, align 8            ; 2 uses
  %i.wc = getelementptr inbounds i8, ptr %i.vy, i64 -128 ; 2 uses
  %i.wd = icmp eq ptr %i.wb, %i.wc
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212: ; preds = %.preheader.i.i.i.i.i211
  %i.we = load i64, ptr %i.wc, align 8
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.wf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213: ; preds = %.preheader.i.i.i.i.i211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212
  %i.wg = load ptr, ptr %i.vz, align 8            ; 2 uses
  %i.wh = getelementptr inbounds i8, ptr %i.vy, i64 -160 ; 2 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  br i1 %i.wi, label %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213
  %i.wj = load i64, ptr %i.wh, align 8
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wk) #20
  br label %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i

_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i214
  %i.wl = icmp eq ptr %i.vz, %i.vt
  br i1 %i.wl, label %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i211

_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i, %bb.bh
  %i.wm = or disjoint i64 %.idx.i.i.i.i.i209, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.vu, i64 noundef %i.wm) #20
  %.pre302 = load i32, ptr %i.up, align 8
  br label %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.wn = phi i32 [ %.pre302, %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i ], [ %i.ur, %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit ]
  %i.wo = icmp sgt i32 %i.wn, 0
  br i1 %i.wo, label %.lr.ph269, label %._crit_edge270

.lr.ph266:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit, %.lr.ph266
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.lr.ph266 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.wp = load ptr, ptr %i.tn, align 8
  %i.wq = getelementptr inbounds nuw [136 x i8], ptr %i.wp, i64 %indvars.iv290
  call void @_ZN3pmx12PmxRigidBody4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(133) %i.wq, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.wr = load i32, ptr %i.sk, align 8
  %i.ws = sext i32 %i.wr to i64
  %i.wt = icmp slt i64 %indvars.iv.next291, %i.ws
  br i1 %i.wt, label %.lr.ph266, label %._crit_edge267, !llvm.loop !94

._crit_edge270:                                   ; preds = %.lr.ph269, %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  ret void

.lr.ph269:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit, %.lr.ph269
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %.lr.ph269 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.wu = load ptr, ptr %i.vs, align 8
  %i.wv = getelementptr inbounds nuw [176 x i8], ptr %i.wu, i64 %indvars.iv293
  call void @_ZN3pmx8PmxJoint4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(172) %i.wv, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.ww = load i32, ptr %i.up, align 8
  %i.wx = sext i32 %i.ww to i64
  %i.wy = icmp slt i64 %indvars.iv.next294, %i.wx
  br i1 %i.wy, label %.lr.ph269, label %._crit_edge270, !llvm.loop !95

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %.sink = phi ptr [ %i.g, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.pn81.ph = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @__cxa_free_exception(ptr %.sink) #17
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn81 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn81.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  resume { ptr, i32 } %.pn81

bb.bj:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringIfENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = fpext float %1 to double
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.a)
          to label %_ZNSolsEf.exit unwind label %bb.e ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !102
  store i8 0, ptr %i.c, align 8, !alias.scope !102
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !102 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !102 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEf.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !102 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !alias.scope !102 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !102
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #20
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEf.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %eh.lpad-body
}

end_hunk_1
