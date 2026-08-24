Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/dyndep?download=true
inline.NumInlined: 447
inline.NumDeleted: 240
begin_hunk_0_@_ZNK12DyndepLoader10UpdateEdgeEP4EdgePK7DyndepsPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  call void @_ZdlPv(ptr noundef %i.l) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.n = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.n) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !111  ; 2 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  call void @_ZNSt6vectorIP4NodeSaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr %i.aa, ptr %i.t, ptr %i.v)
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !112 ; 3 uses
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !67  ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !113
  %i.aj = trunc i64 %i.ag to i32
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !113
  %.not5459 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not5459, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.l
  %.sroa.044.060 = phi ptr [ %i.bw, %bb.l ], [ %i.ac, %bb.b ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.044.060, align 8, !tbaa !68 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !114
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !42, !noalias !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !72, !noalias !115 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !73, !alias.scope !118
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i64 0, ptr %i.as, align 8, !tbaa !72, !alias.scope !118
  store i8 0, ptr %i.ar, align 8, !tbaa !77, !alias.scope !118
  %i.at = add i64 %i.aq, 24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.at) #11
  %i.au = load i64, ptr %i.as, align 8, !tbaa !72, !alias.scope !118
  %i.av = add i64 %i.au, -4611686018427387880
  %i.aw = icmp ult i64 %i.av, 24
  br i1 %i.aw, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.c
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, i64 noundef 24) #11 ; 0 uses
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !72, !alias.scope !118
  %i.az = sub i64 4611686018427387903, %i.ay
  %i.ba = icmp ult i64 %i.az, %i.aq
  br i1 %i.ba, label %bb.e, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ao, i64 noundef %i.aq) #11 ; 0 uses
  %i.bc = load ptr, ptr %3, align 8, !tbaa !42    ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  %i.bf = load ptr, ptr %6, align 8, !tbaa !42    ; 6 uses
  %i.bg = icmp eq ptr %i.bf, %i.ar                ; 2 uses
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.bg, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.bg, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bh = load i64, ptr %i.as, align 8, !tbaa !72 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %.not21.i = icmp eq ptr %6, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !87

bb.g:                                             ; preds = %bb.f
  switch i64 %i.bh, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !77
  store i8 %i.bj, ptr %i.bc, align 1, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !72
  %i.bm = load ptr, ptr %3, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !77
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bf, ptr %3, align 8, !tbaa !42
  %i.bp = load <2 x i64>, ptr %i.as, align 8, !tbaa !77
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !tbaa !77
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bq = load i64, ptr %i.bd, align 8, !tbaa !77
  store ptr %i.bf, ptr %3, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load <2 x i64>, ptr %i.as, align 8, !tbaa !77
  store <2 x i64> %i.bs, ptr %i.br, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bc, ptr %6, align 8, !tbaa !42
  store i64 %i.bq, ptr %i.ar, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ar, ptr %6, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.bt = phi ptr [ %i.bc, %bb.j ], [ %i.ar, %bb.k ], [ %i.bf, %bb.f ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.as, align 8, !tbaa !72
  store i8 0, ptr %i.bt, align 1, !tbaa !77
  %i.bu = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ar
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.bu) #14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35

bb.l:                                             ; preds = %.lr.ph
  store ptr %1, ptr %i.am, align 8, !tbaa !114
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.044.060, i64 8 ; 2 uses
  %.not54 = icmp eq ptr %i.bw, %i.ab
  br i1 %.not54, label %._crit_edge, label %.lr.ph, !llvm.loop !121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.l, %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !111
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !122
  %i.cc = sext i32 %i.cb to i64
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !111
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !111
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !111 ; 2 uses
  %i.ck = ptrtoint ptr %i.ce to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm
  call void @_ZNSt6vectorIP4NodeSaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr %i.cn, ptr %i.cg, ptr %i.ci)
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !112 ; 4 uses
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !67 ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr exact i64 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !123
  %i.cw = trunc i64 %i.ct to i32
  %i.cx = add i32 %i.cv, %i.cw
  store i32 %i.cx, ptr %i.cu, align 8, !tbaa !123
  %.not5562 = icmp eq ptr %i.cp, %i.co
  br i1 %.not5562, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %._crit_edge, %_ZN4Node10AddOutEdgeEP4Edge.exit
  %.pre67 = phi ptr [ %.pre68, %_ZN4Node10AddOutEdgeEP4Edge.exit ], [ %i.co, %._crit_edge ] ; 2 uses
  %i.cy = phi ptr [ %i.dw, %_ZN4Node10AddOutEdgeEP4Edge.exit ], [ %i.co, %._crit_edge ]
  %.sroa.037.063 = phi ptr [ %i.dx, %_ZN4Node10AddOutEdgeEP4Edge.exit ], [ %i.cp, %._crit_edge ] ; 2 uses
  %i.cz = load ptr, ptr %.sroa.037.063, align 8, !tbaa !68 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 72 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !124 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 80 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !125
  %.not.i.i = icmp eq ptr %i.dc, %i.de
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph65
  store ptr %1, ptr %i.dc, align 8, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.df, ptr %i.db, align 8, !tbaa !124
  br label %_ZN4Node10AddOutEdgeEP4Edge.exit

bb.n:                                             ; preds = %.lr.ph65
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !126 ; 4 uses
  %i.dh = ptrtoint ptr %i.dc to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 5 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.o, label %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #13
  unreachable

_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.dl = ashr exact i64 %i.dj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 1152921504606846975)
  %i.dp = select i1 %i.dn, i64 1152921504606846975, i64 %i.do ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #16 ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store ptr %1, ptr %i.ds, align 8, !tbaa !51
  %i.dt = icmp sgt i64 %i.dj, 0
  br i1 %i.dt, label %bb.p, label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr align 8 %i.dg, i64 %i.dj, i1 false)
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #14
  %.pre.pre = load ptr, ptr %i.ch, align 8, !tbaa !111
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.q ], [ %.pre67, %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i ] ; 2 uses
  store ptr %i.dr, ptr %i.da, align 8, !tbaa !126
  store ptr %i.du, ptr %i.db, align 8, !tbaa !124
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.dv, ptr %i.dd, align 8, !tbaa !125
  br label %_ZN4Node10AddOutEdgeEP4Edge.exit

_ZN4Node10AddOutEdgeEP4Edge.exit:                 ; preds = %bb.m, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.pre68 = phi ptr [ %.pre67, %bb.m ], [ %.pre, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.dw = phi ptr [ %i.cy, %bb.m ], [ %.pre, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.037.063, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.dx, %i.dw
  br i1 %.not55, label %.loopexit, label %.lr.ph65, !llvm.loop !127

.loopexit:                                        ; preds = %_ZN4Node10AddOutEdgeEP4Edge.exit, %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35
  %.not5457 = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35 ], [ true, %._crit_edge ], [ true, %_ZN4Node10AddOutEdgeEP4Edge.exit ]
  ret i1 %.not5457
}

declare void @_ZN10BindingEnv10AddBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN12DyndepParserC1EP5StateP10FileReaderP10DyndepFile(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN6Parser4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_P5Lexer(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #14
  br label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i:     ; preds = %bb.b, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #14
  br label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #14
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK4RuleESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK4RuleESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK4RuleESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK4RuleESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK4RuleESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.f) #14
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK4RuleESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK4RuleESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #14
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK4RuleESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.g) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #14
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #14
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIP4NodeSaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not60 = icmp eq ptr %2, %3
  br i1 %.not60, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP4NodeSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP4NodeSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !134

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre62 = load ptr, ptr %i.g, align 8, !tbaa !112
  br label %_ZSt22__uninitialized_move_aIPP4NodeS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPP4NodeS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !68
end_hunk_0
