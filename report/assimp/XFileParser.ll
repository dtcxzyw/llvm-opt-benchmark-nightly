Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/XFileParser?download=true
inline.NumInlined: 2013
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11XFileParser23ParseDataObjectMaterialEPNS_5XFile8MaterialE:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.at, ptr %3, align 8, !alias.scope !24
  %i.au = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.h:                                             ; preds = %.noexc29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc29
  store ptr %i.au, ptr %3, align 8, !alias.scope !24
  %i.bb = load i64, ptr %i.av, align 8
  store i64 %i.bb, ptr %i.at, align 8, !alias.scope !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !alias.scope !24
  store ptr %i.av, ptr %i.as, align 8
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.av, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bf = load ptr, ptr %2, align 8               ; 6 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  %i.bh = load ptr, ptr %3, align 8               ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi                ; 2 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  br i1 %i.bj, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  br i1 %i.bj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  switch i64 %i.bl, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bn = load i8, ptr %i.bh, align 1
  store i8 %i.bn, ptr %i.bf, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bh, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bo = load i64, ptr %i.bk, align 8            ; 2 uses
  store i64 %i.bo, ptr %i.e, align 8
  %i.bp = load ptr, ptr %2, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 0, ptr %i.bq, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bh, ptr %2, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load <2 x i64>, ptr %i.br, align 8
  store <2 x i64> %i.bs, ptr %i.e, align 8
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bt = load i64, ptr %i.d, align 8
  store ptr %i.bh, ptr %2, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load <2 x i64>, ptr %i.bu, align 8
  store <2 x i64> %i.bv, ptr %i.e, align 8
  %.not.i30 = icmp eq ptr %i.bf, null
  br i1 %.not.i30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bf, ptr %3, align 8
  store i64 %i.bt, ptr %i.bi, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bi, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bw = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bf, %bb.l ], [ %i.bi, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bx, align 8
  store i8 0, ptr %i.bw, align 1
  %i.by = load ptr, ptr %3, align 8               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cb = load i64, ptr %i.bz, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.cd = load ptr, ptr %5, align 8               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = load i64, ptr %i.ce, align 8
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ci = load ptr, ptr %4, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.h
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ck = load i64, ptr %i.h, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.q

bb.n:                                             ; preds = %bb.q, %bb.r, %bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g, %.critedge.i
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %5, align 8               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.p
  %i.cs = load i64, ptr %i.cq, align 8
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.o ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.co, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.cu = load ptr, ptr %4, align 8               ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.h
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cw = load i64, ptr %i.h, align 8
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ay

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.b
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 0, ptr %i.cy, align 8
  %i.cz = invoke { <2 x float>, <2 x float> } @_ZN6Assimp11XFileParser8ReadRGBAEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.r unwind label %bb.z       ; 2 uses

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.da = extractvalue { <2 x float>, <2 x float> } %i.cz, 0
  %i.db = extractvalue { <2 x float>, <2 x float> } %i.cz, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 36
  store <2 x float> %i.da, ptr %i.dc, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store <2 x float> %i.db, ptr %.sroa.5.0..sroa_idx, align 4
  %i.dd = invoke noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.s unwind label %bb.n

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.dd, ptr %i.de, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN6Assimp11XFileParser7ReadRGBEv(ptr dead_on_unwind nonnull writable sret(%struct.aiColor3D) align 4 %6, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dg = load <2 x float>, ptr %6, align 8
  store <2 x float> %i.dg, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.di = load float, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  store float %i.di, ptr %i.dj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN6Assimp11XFileParser7ReadRGBEv(ptr dead_on_unwind nonnull writable sret(%struct.aiColor3D) align 4 %7, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.dl = load <2 x float>, ptr %7, align 8
  store <2 x float> %i.dl, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dn = load float, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.dn, ptr %i.do, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.dy = load i64, ptr %i.dp, align 8            ; 3 uses
  switch i64 %i.dy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63.thread [
    i64 0, label %bb.x
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit61
  ]

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA51_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(51) @.str.49) #29
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aa:                                            ; preds = %bb.s
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ay

bb.ab:                                            ; preds = %bb.t
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ay

bb.ac:                                            ; preds = %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63.thread, %bb.at, %bb.au
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.w
  %i.ed = load ptr, ptr %8, align 8
  %lhsc = load i8, ptr %i.ed, align 1
  %i.ee = icmp eq i8 %lhsc, 125
  br i1 %i.ee, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47: ; preds = %bb.w
  %.pre = load ptr, ptr %8, align 8               ; 3 uses
  %bcmp.i46 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.50, i64 %i.dy)
  %i.ef = icmp eq i32 %bcmp.i46, 0
  br i1 %i.ef, label %bb.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
  %i.eg = load i64, ptr %.pre, align 1
  %i.eh = xor i64 %i.eg, 5072586404093519188
  %i.ei = getelementptr i8, ptr %.pre, i64 7
  %i.ej = load i64, ptr %i.ei, align 1
  %i.ek = xor i64 %i.ej, 7308604759629130054
  %i.el = or i64 %i.eh, %i.ek
  %i.em = icmp ne i64 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63.thread

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr %i.dv, ptr %9, align 8
  store i64 0, ptr %i.dw, align 8
  store i8 0, ptr %i.dv, align 8
  invoke void @_ZN6Assimp11XFileParser30ParseDataObjectTextureFilenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %i.ds, align 8            ; 9 uses
  %i.eq = load ptr, ptr %i.dt, align 8
  %.not.i50 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i50, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 3 uses
  store ptr %i.er, ptr %i.ep, align 8
  %i.es = load ptr, ptr %9, align 8               ; 2 uses
  %i.et = load i64, ptr %i.dw, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.et, ptr %i.b, align 8
  %i.eu = icmp ugt i64 %i.et, 15
  br i1 %i.eu, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.af
  %i.ev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc52 unwind label %bb.aj  ; 2 uses

.noexc52:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ev, ptr %i.ep, align 8
  %i.ew = load i64, ptr %i.b, align 8
  store i64 %i.ew, ptr %i.er, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc52, %bb.af
  %i.ex = phi ptr [ %i.ev, %.noexc52 ], [ %i.er, %bb.af ] ; 2 uses
  switch i64 %i.et, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZN6Assimp5XFile8TexEntryC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ey = load i8, ptr %i.es, align 1
  store i8 %i.ey, ptr %i.ex, align 1
  br label %_ZN6Assimp5XFile8TexEntryC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr align 1 %i.es, i64 %i.et, i1 false)
  br label %_ZN6Assimp5XFile8TexEntryC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i

_ZN6Assimp5XFile8TexEntryC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i: ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i.i
  %i.ez = load i64, ptr %i.b, align 8             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %i.ez, ptr %i.fa, align 8
  %i.fb = load ptr, ptr %i.ep, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez
  store i8 0, ptr %i.fc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store i8 0, ptr %i.fd, align 8
  %i.fe = load ptr, ptr %i.ds, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store ptr %i.ff, ptr %i.ds, align 8
  br label %_ZNSt6vectorIN6Assimp5XFile8TexEntryESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit

bb.ai:                                            ; preds = %bb.ae
  invoke void @_ZNSt6vectorIN6Assimp5XFile8TexEntryESaIS2_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt6vectorIN6Assimp5XFile8TexEntryESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit unwind label %bb.aj

_ZNSt6vectorIN6Assimp5XFile8TexEntryESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit: ; preds = %bb.ai, %_ZN6Assimp5XFile8TexEntryC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i
  %i.fg = load ptr, ptr %9, align 8               ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.dv
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt6vectorIN6Assimp5XFile8TexEntryESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit
  %i.fi = load i64, ptr %i.dv, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

end_hunk_0
begin_hunk_1_@_ZN6Assimp11XFileParser32ParseDataObjectMeshTextureCoordsEPNS_5XFile4MeshE:bb.a
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 1
  %.pre.i = load ptr, ptr %2, align 8             ; 3 uses
  br i1 %i.ae, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

bb.i:                                             ; preds = %._crit_edge
  %lhsc.i = load i8, ptr %.pre.i, align 1
  %i.af = icmp ne i8 %lhsc.i, 125
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.i, %._crit_edge
  %i.ag = phi i1 [ true, %._crit_edge ], [ %i.af, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %.pre.i, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.aj = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.al) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.ag, label %bb.j, label %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA24_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(24) @.str.71) #29
  unreachable

_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %i.am = tail call <2 x float> @_ZN6Assimp11XFileParser11ReadVector2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store <2 x float> %i.am, ptr %i.ao, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XFileParser31ParseDataObjectMeshVertexColorsEPNS_5XFile4MeshE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %class.aiColor4t, align 16          ; 4 uses
  tail call void @_ZN6Assimp11XFileParser20readHeadOfDataObjectEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = icmp ugt i32 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA19_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(19) @.str.40) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 %i.c, ptr %i.a, align 8
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = tail call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 12
  %.not = icmp eq i64 %i.q, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA47_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(47) @.str.41) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %3, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4                   ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.i
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = sub nuw nsw i64 %i.i, %i.x
  call void @_ZNSt6vectorI9aiColor4tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.s, i64 noundef %i.z, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE6resizeEmRKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ugt i64 %i.x, %i.i
  br i1 %i.aa, label %bb.h, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE6resizeEmRKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIP9aiColor4tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP9aiColor4tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ab, ptr %i.r, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIP9aiColor4tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE6resizeEmRKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.v, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE6resizeEmRKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 1
  %.pre.i = load ptr, ptr %2, align 8             ; 3 uses
  br i1 %i.ai, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

bb.i:                                             ; preds = %._crit_edge
  %lhsc.i = load i8, ptr %.pre.i, align 1
  %i.aj = icmp ne i8 %lhsc.i, 125
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.i, %._crit_edge
  %i.ak = phi i1 [ true, %._crit_edge ], [ %i.aj, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = icmp eq ptr %.pre.i, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.an = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.an)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.ao = load i64, ptr %i.al, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.ak, label %bb.j, label %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA24_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(24) @.str.71) #29
  unreachable

_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.v
  %.028 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %bb.v ]
  %i.aq = call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = load ptr, ptr %i.k, align 8
  %i.at = load ptr, ptr %i.j, align 8
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 12
  %.not18 = icmp ugt i64 %i.ax, %i.ar
  br i1 %.not18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA33_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(33) @.str.42) #29
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ay = call { <2 x float>, <2 x float> } @_ZN6Assimp11XFileParser8ReadRGBAEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.az = extractvalue { <2 x float>, <2 x float> } %i.ay, 0
  %i.ba = extractvalue { <2 x float>, <2 x float> } %i.ay, 1
  %i.bb = load ptr, ptr %i.g, align 8
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.ar ; 2 uses
  store <2 x float> %i.az, ptr %i.bc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store <2 x float> %i.ba, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bd = load i8, ptr %i.ac, align 8, !range !11, !noundef !12
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.v, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.bf = load ptr, ptr %i.ae, align 8            ; 4 uses
  %.promoted11.i = load ptr, ptr %i.ad, align 8   ; 3 uses
  %i.bg = icmp ult ptr %.promoted11.i, %i.bf
  br i1 %i.bg, label %.lr.ph.lr.ph.i, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split

.lr.ph.lr.ph.i:                                   ; preds = %.preheader.i
  %.promoted.i = load i32, ptr %i.af, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.lr.ph.i
  %i.bh = phi i32 [ %.promoted.i, %.lr.ph.lr.ph.i ], [ %.be, %.lr.ph.i.backedge ] ; 4 uses
  %i.bi = phi ptr [ %.promoted11.i, %.lr.ph.lr.ph.i ], [ %.be77, %.lr.ph.i.backedge ] ; 6 uses
  %i.bj = load i8, ptr %i.bi, align 1             ; 4 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = call i32 @isspace(i32 noundef %i.bk) #27
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.bm = icmp eq i8 %i.bj, 10
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bn, ptr %i.af, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = phi i32 [ %i.bn, %bb.o ], [ %i.bh, %bb.n ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 4 uses
  store ptr %i.bp, ptr %i.ad, align 8
  %i.bq = icmp ult ptr %i.bp, %i.bf
  br i1 %i.bq, label %.lr.ph.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split

.lr.ph.i.backedge:                                ; preds = %bb.p, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i
  %.be = phi i32 [ %i.bo, %bb.p ], [ %i.by, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ]
  %.be77 = phi ptr [ %i.bp, %bb.p ], [ %i.bw, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ]
  br label %.lr.ph.i, !llvm.loop !2

bb.q:                                             ; preds = %.lr.ph.i
  switch i8 %i.bj, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit [
    i8 47, label %bb.r
    i8 35, label %.lr.ph.i.i.preheader
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 47
  br i1 %i.bt, label %.lr.ph.i.i.preheader, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split

.lr.ph.i.i.preheader:                             ; preds = %bb.r, %bb.q
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.t
  %i.bu = phi ptr [ %i.bw, %bb.t ], [ %i.bi, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 6 uses
  store ptr %i.bw, ptr %i.ad, align 8
  switch i8 %i.bv, label %bb.t [
    i8 10, label %bb.s
    i8 13, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.bx = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bx, ptr %i.af, align 8
  br label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq ptr %i.bw, %i.bf
  br i1 %exitcond.not.i.i, label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i: ; preds = %bb.t, %bb.s
  %i.by = phi i32 [ %i.bx, %bb.s ], [ %i.bh, %bb.t ]
  %i.bz = icmp ult ptr %i.bw, %i.bf
  br i1 %i.bz, label %.lr.ph.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split

_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split: ; preds = %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i, %bb.r, %bb.p, %.preheader.i
  %.ph = phi ptr [ %.promoted11.i, %.preheader.i ], [ %i.bi, %bb.r ], [ %i.bw, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ], [ %i.bp, %bb.p ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1
  br label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit: ; preds = %bb.q, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split
  %i.ca = phi i8 [ %.pr, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split ], [ %i.bj, %bb.q ]
  %i.cb = phi ptr [ %.ph, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split ], [ %i.bi, %bb.q ]
  switch i8 %i.ca, label %bb.v [
    i8 59, label %bb.u
    i8 44, label %bb.u
  ]

bb.u:                                             ; preds = %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %i.ad, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit, %bb.u, %bb.m
  %i.cd = add nuw i32 %.028, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !31
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XFileParser31ParseDataObjectMeshMaterialListEPNS_5XFile4MeshE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.Assimp::XFile::Material", align 8 ; 17 uses
  tail call void @_ZN6Assimp11XFileParser20readHeadOfDataObjectEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef null)
  %i.a = tail call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.b = tail call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 4 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = icmp ne i64 %i.k, %i.c
  %i.m = icmp ne i32 %i.b, 1
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.b, label %.preheader59

.preheader59:                                     ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA57_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(57) @.str.43) #29
  unreachable

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %.preheader59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !11, !noundef !12
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.l, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.02265 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %i.t = tail call noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.u = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.t, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.x, ptr %i.o, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #30 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store i32 %i.t, ptr %i.ak, align 4
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
end_hunk_1
