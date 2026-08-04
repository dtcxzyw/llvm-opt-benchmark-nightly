inline.NumInlined: 666
inline.NumDeleted: 202
begin_hunk_0_@_ZN6Assimp4D3MF12D3MFExporter18writeBaseMaterialsEv:bb.a
  %.025271 = phi i64 [ 0, %.lr.ph ], [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.025271
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %4, i8 0, i64 1028, i1 false)
  %i.at = invoke noundef i32 @aiGetMaterialString(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(1028) %4)
          to label %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit unwind label %bb.l

_ZNK10aiMaterial3GetEPKcjjR8aiString.exit:        ; preds = %bb.b
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 noundef %.025271)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.32, i64 noundef 8)
          to label %.noexc unwind label %bb.n     ; 6 uses

.noexc:                                           ; preds = %bb.d
  store ptr %i.m, ptr %5, align 8, !alias.scope !34
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.av, ptr %5, align 8, !alias.scope !34
  %i.bc = load i64, ptr %i.aw, align 8
  store i64 %i.bc, ptr %i.m, align 8, !alias.scope !34
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.bd = phi i64 [ %i.az, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.bd, ptr %i.n, align 8, !alias.scope !34
  store ptr %i.aw, ptr %i.au, align 8
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %i.aw, align 8
  %i.bf = load ptr, ptr %1, align 8               ; 6 uses
  %i.bg = icmp eq ptr %i.bf, %i.c
  %i.bh = load ptr, ptr %5, align 8               ; 5 uses
  %i.bi = icmp eq ptr %i.bh, %i.m                 ; 2 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.bi, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.bi, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bj = load i64, ptr %i.n, align 8             ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  switch i64 %i.bj, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bl = load i8, ptr %i.bh, align 1
  store i8 %i.bl, ptr %i.bf, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bm = load i64, ptr %i.n, align 8             ; 2 uses
  store i64 %i.bm, ptr %i.d, align 8
  %i.bn = load ptr, ptr %1, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 0, ptr %i.bo, align 1
  %.pre.i36 = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bh, ptr %1, align 8
  %i.bp = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.bp, ptr %i.d, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bq = load i64, ptr %i.c, align 8
  store ptr %i.bh, ptr %1, align 8
  %i.br = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.br, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bf, ptr %5, align 8
  store i64 %i.bq, ptr %i.m, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.m, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.bs = phi ptr [ %.pre.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bf, %bb.j ], [ %i.m, %bb.k ]
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.bs, align 1
  %i.bt = load ptr, ptr %5, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.m
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bv = load i64, ptr %i.m, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  %i.bx = load ptr, ptr %6, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.o
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = load i64, ptr %i.o, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.l:                                             ; preds = %bb.o, %bb.b
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.m:                                             ; preds = %bb.c
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.n:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %6, align 8               ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.o
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.n
  %i.cg = load i64, ptr %i.o, align 8
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.m ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.cd, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bs

bb.o:                                             ; preds = %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit
  %i.ci = load i64, ptr %i.d, align 8
  %i.cj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #19
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.ci, ptr noundef nonnull %i.p, i64 noundef %i.cj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.cl = invoke noundef i32 @aiGetMaterialColor(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %_ZNK10aiMaterial3GetEPKcjjR9aiColor4tIfE.exit unwind label %.loopexit

_ZNK10aiMaterial3GetEPKcjjR9aiColor4tIfE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.p, label %bb.bb

bb.p:                                             ; preds = %_ZNK10aiMaterial3GetEPKcjjR9aiColor4tIfE.exit
  store i64 0, ptr %i.f, align 8
  %i.cn = load ptr, ptr %2, align 8
  store i8 0, ptr %i.cn, align 1
  store i64 0, ptr %i.h, align 8
  %i.co = load ptr, ptr %3, align 8
  store i8 0, ptr %i.co, align 1
  %i.cp = load <4 x float>, ptr %7, align 16
  %.fr = freeze <4 x float> %i.cp                 ; 5 uses
  %i.cq = fcmp ugt <4 x float> %.fr, splat (float 1.000000e+00)
  %i.cr = bitcast <4 x i1> %i.cq to i4
  %i.cs = icmp eq i4 %i.cr, 0
  br i1 %i.cs, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %18 = extractelement <4 x float> %.fr, i64 0
  %19 = fmul nnan float %18, 2.550000e+02
  %i.ct = fptosi float %19 to i32
  %i.cu = extractelement <4 x float> %.fr, i64 1
  %20 = fmul nnan float %i.cu, 2.550000e+02
  %i.cv = fptosi float %20 to i32
  %i.cw = extractelement <4 x float> %.fr, i64 2
  %21 = fmul nnan float %i.cw, 2.550000e+02
  %i.cx = fptosi float %21 to i32
  %i.cy = extractelement <4 x float> %.fr, i64 3
  %22 = fmul nnan float %i.cy, 2.550000e+02
  %i.cz = fptosi float %22 to i32
  invoke void @_Z11ai_rgba2hexB5cxx11iiiib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i32 noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cx, i32 noundef %i.cz, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %2, align 8               ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.e
  %i.dc = load ptr, ptr %8, align 8               ; 5 uses
  %i.dd = icmp eq ptr %i.dc, %i.ab                ; 2 uses
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51: ; preds = %bb.r
  br i1 %i.dd, label %bb.s, label %.thread.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i46: ; preds = %bb.r
  br i1 %i.dd, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i47

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51
  %i.de = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.df = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.df)
  switch i64 %i.de, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.dg = load i8, ptr %i.dc, align 1
  store i8 %i.dg, ptr %i.da, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.dc, i64 %i.de, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49: ; preds = %bb.u, %bb.t, %bb.s
  %i.dh = load i64, ptr %i.ac, align 8            ; 2 uses
  store i64 %i.dh, ptr %i.f, align 8
  %i.di = load ptr, ptr %2, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 0, ptr %i.dj, align 1
  %.pre.i50 = load ptr, ptr %8, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53

.thread.i52:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51
  store ptr %i.dc, ptr %2, align 8
  %i.dk = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.dk, ptr %i.f, align 8
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i46
  %i.dl = load i64, ptr %i.e, align 8
  store ptr %i.dc, ptr %2, align 8
  %i.dm = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.dm, ptr %i.f, align 8
  %.not.i48 = icmp eq ptr %i.da, null
  br i1 %.not.i48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i47
  store ptr %i.da, ptr %8, align 8
  store i64 %i.dl, ptr %i.ab, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i47, %.thread.i52
  store ptr %i.ab, ptr %8, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49, %bb.v, %bb.w
  %i.dn = phi ptr [ %.pre.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49 ], [ %i.da, %bb.v ], [ %i.ab, %bb.w ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.dn, align 1
  %i.do = load ptr, ptr %8, align 8               ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ab
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53
  %i.dq = load i64, ptr %i.ab, align 8
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit116

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i113, %bb.bb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.x:                                             ; preds = %bb.q
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.br

bb.y:                                             ; preds = %bb.p
  %i.dt = load i64, ptr %i.f, align 8
  %i.du = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.dt, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit58 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit58: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.dv = load float, ptr %7, align 16
  invoke void @_Z18ai_decimal_to_hexaIfENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, float noundef %i.dv)
          to label %bb.z unwind label %bb.ax

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit58
  %i.dw = load ptr, ptr %3, align 8               ; 6 uses
  %i.dx = icmp eq ptr %i.dw, %i.g
  %i.dy = load ptr, ptr %9, align 8               ; 5 uses
  %i.dz = icmp eq ptr %i.dy, %i.t                 ; 2 uses
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i64: ; preds = %bb.z
  br i1 %i.dz, label %bb.aa, label %.thread.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i59: ; preds = %bb.z
  br i1 %i.dz, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i60

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i64
  %i.ea = load i64, ptr %i.u, align 8             ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  switch i64 %i.ea, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i62
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ec = load i8, ptr %i.dy, align 1
  store i8 %i.ec, ptr %i.dw, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i62

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr align 1 %i.dy, i64 %i.ea, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i62: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ed = load i64, ptr %i.u, align 8             ; 2 uses
  store i64 %i.ed, ptr %i.h, align 8
  %i.ee = load ptr, ptr %3, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ed
  store i8 0, ptr %i.ef, align 1
  %.pre.i63 = load ptr, ptr %9, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit66

.thread.i65:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i64
  store ptr %i.dy, ptr %3, align 8
  %i.eg = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.eg, ptr %i.h, align 8
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i59
  %i.eh = load i64, ptr %i.g, align 8
  store ptr %i.dy, ptr %3, align 8
  %i.ei = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.ei, ptr %i.h, align 8
  %.not.i61 = icmp eq ptr %i.dw, null
  br i1 %.not.i61, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i60
  store ptr %i.dw, ptr %9, align 8
  store i64 %i.eh, ptr %i.t, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit66

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i60, %.thread.i65
  store ptr %i.t, ptr %9, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i62, %bb.ad, %bb.ae
  %i.ej = phi ptr [ %.pre.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i62 ], [ %i.dw, %bb.ad ], [ %i.t, %bb.ae ]
  store i64 0, ptr %i.u, align 8
  store i8 0, ptr %i.ej, align 1
  %i.ek = load ptr, ptr %9, align 8               ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.t
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit66
  %i.em = load i64, ptr %i.t, align 8
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.eo = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ep = load i64, ptr %i.f, align 8
  %i.eq = sub i64 4611686018427387903, %i.ep
  %i.er = icmp ult i64 %i.eq, %i.eo
  br i1 %i.er, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #20
          to label %.cont unwind label %.loopexit.split-lp

end_hunk_0
