inline.NumInlined: 1445
inline.NumDeleted: 684
begin_hunk_0_@_ZN6Assimp12AC3DImporter17LoadObjectSectionERSt6vectorINS0_6ObjectESaIS2_EE:bb.a
bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.not11.i = icmp eq i8 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %storemerge.i = select i1 %.not11.i, ptr %i.g, ptr %i.i ; 4 uses
  store ptr %storemerge.i, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %storemerge.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.m, %i.l
  %scevgep.i.i = getelementptr i8, ptr %storemerge.i, i64 %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0.i.i = phi ptr [ %storemerge.i, %bb.c ], [ %i.p, %bb.f ] ; 4 uses
  %i.o = load i8, ptr %.0.i.i, align 1
  switch i8 %i.o, label %.critedge.i.i [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not.i.i = icmp eq ptr %.0.i.i, %i.k
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.d, !llvm.loop !6

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %scevgep.i.i, %bb.e ]
  store ptr %.0.lcssa.i.i, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i77 = icmp eq ptr %i.u, %i.w
  br i1 %.not.i77, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  store i32 0, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  store float 1.000000e+00, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.af, i8 0, i64 72, i1 false)
  %i.ag = load ptr, ptr %i.t, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 216 ; 2 uses
  store ptr %i.ah, ptr %i.t, align 8
  br label %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.h:                                             ; preds = %.critedge.i.i
  tail call void @_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.u)
  %.pre = load ptr, ptr %i.t, align 8
  br label %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.g, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.g ], [ %.pre, %bb.h ] ; 38 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -216
  %i.ak = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.al = tail call i32 @strncasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.1, i64 noundef 5) #26
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.i, label %bb.x

bb.i:                                             ; preds = %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = tail call noalias noundef nonnull dereferenceable(1132) ptr @_Znwm(i64 noundef 1132) #27 ; 13 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1132) %i.ao, i8 0, i64 1072, i1 false)
  store float 1.000000e+00, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1076
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  store <4 x float> <float f0x40C90FDB, float f0x40C90FDB, float 0.000000e+00, float 0.000000e+00>, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i79 = icmp eq ptr %i.at, %i.av
  br i1 %.not.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ao, ptr %i.at, align 8
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.as, align 8
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.an, align 8            ; 4 uses
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.l, label %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #28
  unreachable

_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #27 ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store ptr %i.ao, ptr %i.bk, align 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.m, label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #29
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bj, ptr %i.an, align 8
  store ptr %i.bm, ptr %i.as, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.bn, ptr %i.au, align 8
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.j, %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 1028
  store i32 2, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 1096
  store <2 x float> splat (float 1.000000e+00), ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1080
  store <4 x float> splat (float 1.000000e+00), ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 1068
  store float 1.000000e+00, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  %i.bt = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bt, align 8
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = lshr exact i64 %i.bz, 3
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add i32 %i.cb, -1
  %i.cd = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bs, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.cc) #25
  store i32 %i.cd, ptr %i.ao, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.ce, ptr %2, align 8
  %i.cf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bs) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.cf, ptr %i.c, align 8
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ch, ptr %2, align 8
  %i.ci = load i64, ptr %i.c, align 8
  store i64 %i.ci, ptr %i.ce, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit
  %i.cj = phi ptr [ %i.ch, %.noexc.i ], [ %i.ce, %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  switch i64 %i.cf, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.ck = load i8, ptr %i.bs, align 1
  store i8 %i.ck, ptr %i.cj, align 1
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 1 %i.bs, i64 %i.cf, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i
  %i.cl = load i64, ptr %i.c, align 8             ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = load ptr, ptr %2, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cp = getelementptr inbounds i8, ptr %i.ai, i64 -208 ; 5 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 6 uses
  %i.cr = getelementptr inbounds i8, ptr %i.ai, i64 -192 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %2, align 8               ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.ce                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.q
  br i1 %i.cu, label %bb.r, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.q
  br i1 %i.cu, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.cm, align 8            ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %2, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  switch i64 %i.cv, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.cx = load i8, ptr %i.ct, align 1
  store i8 %i.cx, ptr %i.cq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.cy = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.ai, i64 -200
  store i64 %i.cy, ptr %i.cz, align 8
  %i.da = load ptr, ptr %i.cp, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1
  %.pre.i81 = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds i8, ptr %i.ai, i64 -200
  store ptr %i.ct, ptr %i.cp, align 8
  %i.dd = load i64, ptr %i.cm, align 8
  store i64 %i.dd, ptr %i.dc, align 8
  %i.de = load i64, ptr %i.ce, align 8
  store i64 %i.de, ptr %i.cr, align 8
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.df = load i64, ptr %i.cr, align 8
  store ptr %i.ct, ptr %i.cp, align 8
  %i.dg = load i64, ptr %i.cm, align 8
  %i.dh = getelementptr inbounds i8, ptr %i.ai, i64 -200
  store i64 %i.dg, ptr %i.dh, align 8
  %i.di = load i64, ptr %i.ce, align 8
  store i64 %i.di, ptr %i.cr, align 8
  %.not.i80 = icmp eq ptr %i.cq, null
  br i1 %.not.i80, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cq, ptr %2, align 8
  store i64 %i.df, ptr %i.ce, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ce, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.v, %bb.w
  %i.dj = phi ptr [ %.pre.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cq, %bb.v ], [ %i.ce, %bb.w ], [ %i.ct, %bb.r ]
  store i64 0, ptr %i.cm, align 8
  store i8 0, ptr %i.dj, align 1
  %i.dk = load ptr, ptr %2, align 8               ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ce
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dm = load i64, ptr %i.ce, align 8
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.do = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.do, ptr noundef nonnull @.str.3)
  br label %bb.z

bb.x:                                             ; preds = %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.dp = tail call i32 @strncasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.4, i64 noundef 5) #26
  %.not72 = icmp eq i32 %i.dp, 0
  br i1 %.not72, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = tail call i32 @strncasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.5, i64 noundef 5) #26
  %.not73 = icmp ne i32 %i.dq, 0
  %. = zext i1 %.not73 to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sink = phi i32 [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 2, %bb.x ], [ %., %bb.y ]
  %.0 = phi ptr [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.x ], [ null, %bb.y ] ; 3 uses
  store i32 %.sink, ptr %i.aj, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.ai, i64 -208 ; 2 uses
  %.not75 = icmp eq ptr %.0, null
  %i.ds = getelementptr inbounds i8, ptr %i.ai, i64 -200
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.ai, i64 -144 ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %i.ai, i64 -136
  %i.dy = getelementptr inbounds i8, ptr %i.ai, i64 -152
  %i.dz = getelementptr inbounds i8, ptr %i.ai, i64 -128 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %i.ai, i64 -124 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ai, i64 -120
  %i.ec = getelementptr inbounds i8, ptr %i.ai, i64 -112
  %i.ed = getelementptr inbounds i8, ptr %i.ai, i64 -76
  %i.ee = getelementptr inbounds i8, ptr %i.ai, i64 -12
  %i.ef = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.eg = getelementptr inbounds i8, ptr %i.ai, i64 -64 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.ai, i64 -56 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %i.ai, i64 -48 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ai, i64 -32 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.em = getelementptr inbounds i8, ptr %i.ai, i64 -16 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.ai, i64 -124
  %i.eo = getelementptr inbounds i8, ptr %i.ai, i64 -116
  %i.ep = getelementptr inbounds i8, ptr %i.ai, i64 -108
  %i.eq = getelementptr inbounds i8, ptr %i.ai, i64 -104
  %i.er = getelementptr inbounds i8, ptr %i.ai, i64 -100
  %i.es = getelementptr inbounds i8, ptr %i.ai, i64 -96
  %i.et = getelementptr inbounds i8, ptr %i.ai, i64 -92
  %i.eu = getelementptr inbounds i8, ptr %i.ai, i64 -88
  %i.ev = getelementptr inbounds i8, ptr %i.ai, i64 -84
  %i.ew = getelementptr inbounds i8, ptr %i.ai, i64 -80
  %i.ex = getelementptr inbounds i8, ptr %i.ai, i64 -72
  %i.ey = getelementptr inbounds i8, ptr %i.ai, i64 -68
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.z
  %i.ez = load ptr, ptr %i.j, align 8             ; 38 uses
  %i.fa = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64               ; 35 uses
  %i.fd = sub i64 %i.fc, %i.fb
  %scevgep.i.i.i = getelementptr i8, ptr %i.fa, i64 %i.fd
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.0.i.i.i = phi ptr [ %i.fa, %bb.aa ], [ %i.ff, %bb.ad ] ; 7 uses
  %i.fe = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.fe, label %bb.ac [
    i8 13, label %.critedge.i.i.i
    i8 10, label %.critedge.i.i.i
    i8 0, label %.critedge.i.i.i
    i8 35, label %.critedge.i.i.i
  ]

bb.ac:                                            ; preds = %bb.ab
  %.not22.i.i.i = icmp eq ptr %.0.i.i.i, %i.ez
  br i1 %.not22.i.i.i, label %.critedge.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.ab, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %bb.ac, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.ab ], [ %.0.i.i.i, %bb.ab ], [ %.0.i.i.i, %bb.ab ], [ %.0.i.i.i, %bb.ab ], [ %scevgep.i.i.i, %bb.ac ] ; 3 uses
  %.0.lcssa24.i.i.i = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.fg = sub i64 %i.fc, %.0.lcssa24.i.i.i
  %scevgep25.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.fg
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %.0.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.fi, %bb.ag ] ; 4 uses
  %i.fh = load i8, ptr %.1.i.i.i, align 1
  switch i8 %i.fh, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i [
end_hunk_0
begin_hunk_1_@_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode:bb.a
  %exitcond.not = icmp eq i32 %i.aav, %spec.select
  br i1 %exitcond.not, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %bb.dq, !llvm.loop !60

_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit: ; preds = %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406, %bb.cu, %bb.ec, %.preheader, %bb.dp, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i, %._crit_edge711, %bb.ce, %bb.cc
  %.13 = phi ptr [ %.2598.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.1597728, %bb.ce ], [ %.2598.lcssa, %._crit_edge711 ], [ %.1597728, %bb.cc ], [ %.12, %bb.ec ], [ %.2598.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %.15, %bb.cu ], [ %.1597728, %bb.dp ], [ %.1597728, %.preheader ], [ %.9605, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406 ]
  %.5591 = phi i32 [ %.1587.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.0586729, %bb.ce ], [ %.1587.lcssa, %._crit_edge711 ], [ %.0586729, %bb.cc ], [ %i.zp, %bb.ec ], [ %.1587.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %i.ta, %bb.cu ], [ %.0586729, %bb.dp ], [ %.0586729, %.preheader ], [ %.3589, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406 ]
  %.6 = phi ptr [ %.1582.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.0581730, %bb.ce ], [ %.1582.lcssa, %._crit_edge711 ], [ %.0581730, %bb.cc ], [ %i.aao, %bb.ec ], [ %.1582.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %i.st, %bb.cu ], [ %.0581730, %bb.dp ], [ %.0581730, %.preheader ], [ %.4585, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406 ]
  %.4 = phi ptr [ %i.rz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %i.pw, %bb.ce ], [ %i.pw, %._crit_edge711 ], [ %.0580731, %bb.cc ], [ %i.zl, %bb.ec ], [ %i.rz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %i.rz, %bb.cu ], [ %.0580731, %bb.dp ], [ %.0580731, %.preheader ], [ %.2, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406 ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0530.1732, i64 32 ; 2 uses
  %.not617 = icmp eq ptr %i.aaw, %i.i
  br i1 %.not617, label %.loopexit631, label %bb.cc, !llvm.loop !61

.loopexit631:                                     ; preds = %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, %bb.cb, %bb.as
  %.1264 = phi ptr [ %.0263738, %bb.as ], [ %i.kj, %bb.cb ], [ %i.kj, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0510.0736, i64 8 ; 2 uses
  %i.aay = add i32 %.0265737, 1
  %.not616 = icmp eq ptr %i.aax, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not616, label %._crit_edge741, label %bb.as, !llvm.loop !62

bb.ed:                                            ; preds = %._crit_edge741
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.aba = load i8, ptr %i.aaz, align 1, !range !63, !noundef !64
  %i.abb = trunc nuw i8 %i.aba to i1
  br i1 %i.abb, label %bb.ee, label %bb.er

bb.ee:                                            ; preds = %bb.ed
  %i.abc = invoke noundef ptr @_ZN6Assimp10Subdivider6CreateENS0_9AlgorithmE(i32 noundef 1)
          to label %bb.ef unwind label %bb.eo     ; 7 uses

bb.ef:                                            ; preds = %bb.ee
  %i.abd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.eg unwind label %bb.ep

bb.eg:                                            ; preds = %bb.ef
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6Assimp6Logger4infoIJRA39_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.abd, ptr noundef nonnull align 1 dereferenceable(39) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %i.abe)
          to label %bb.eh unwind label %bb.ep

bb.eh:                                            ; preds = %bb.eg
  %i.abf = load ptr, ptr %i.jk, align 8
  %i.abg = load ptr, ptr %2, align 8              ; 2 uses
  %i.abh = ptrtoint ptr %i.abf to i64
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = ashr exact i64 %i.abj, 3               ; 2 uses
  %i.abl = sub nsw i64 %i.abk, %i.jq              ; 3 uses
  %i.abm = icmp ugt i64 %i.abl, 1152921504606846975
  br i1 %i.abm, label %bb.ei, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #28
          to label %.noexc408 unwind label %bb.eq

.noexc408:                                        ; preds = %bb.ei
  unreachable

_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.eh
  %.not.i.i.i.i407 = icmp eq i64 %i.abk, %i.jq
  br i1 %.not.i.i.i.i407, label %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.abn = shl nuw nsw i64 %i.abl, 3              ; 3 uses
  %i.abo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abn) #27
          to label %.noexc409 unwind label %bb.eq ; 4 uses

.noexc409:                                        ; preds = %bb.ej
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.abo, i8 0, i64 %i.abn, i1 false)
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.abl
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abo, i64 %i.abn
  %i.abr = ptrtoint ptr %i.abq to i64
  %i.abs = ptrtoint ptr %i.abp to i64
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit: ; preds = %.noexc409, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.16.0 = phi i64 [ 0, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.abs, %.noexc409 ] ; 2 uses
  %.sroa.0423.0 = phi ptr [ null, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.abo, %.noexc409 ] ; 6 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.abr, %.noexc409 ]
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.jp
  %i.abu = ptrtoint ptr %.sroa.0423.0 to i64      ; 3 uses
  %i.abv = sub i64 %.0.i.i.i.i.i.i.i, %i.abu      ; 4 uses
  %i.abw = ashr exact i64 %i.abv, 3
  %i.abx = load i32, ptr %i.jy, align 4
  %i.aby = load ptr, ptr %i.abc, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.aca = load ptr, ptr %i.abz, align 8
  invoke void %i.aca(ptr noundef nonnull align 8 dereferenceable(8) %i.abc, ptr noundef nonnull %i.abt, i64 noundef %i.abw, ptr noundef nonnull %.sroa.0423.0, i32 noundef %i.abx, i1 noundef zeroext true)
          to label %bb.ek unwind label %.thread

bb.ek:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit
  %i.acb = load ptr, ptr %2, align 8
  %i.acc = getelementptr inbounds i8, ptr %i.acb, i64 %i.jp ; 2 uses
  %i.acd = icmp sgt i64 %i.abv, 8
  br i1 %i.acd, label %bb.el, label %bb.em, !prof !65

bb.el:                                            ; preds = %bb.ek
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.acc, ptr nonnull align 8 %.sroa.0423.0, i64 %i.abv, i1 false)
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

bb.em:                                            ; preds = %bb.ek
  %i.ace = icmp eq i64 %i.abv, 8
  br i1 %i.ace, label %bb.en, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

bb.en:                                            ; preds = %bb.em
  %i.acf = load ptr, ptr %.sroa.0423.0, align 8
  store ptr %i.acf, ptr %i.acc, align 8
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.en, %bb.em, %bb.el
  %i.acg = sub i64 %.sroa.16.0, %i.abu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0423.0, i64 noundef %i.acg) #29
  %i.ach = load ptr, ptr %i.abc, align 8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acj = load ptr, ptr %i.aci, align 8
  tail call void %i.acj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abc) #25, !inline_history !66
  br label %bb.eu

bb.eo:                                            ; preds = %bb.ee
  %i.ack = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

bb.ep:                                            ; preds = %bb.eg, %bb.ef
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413

bb.eq:                                            ; preds = %bb.ej, %bb.ei
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413

.thread:                                          ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit
  %i.acn = landingpad { ptr, i32 }
          cleanup
  %i.aco = sub i64 %.sroa.16.0, %i.abu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0423.0, i64 noundef %i.aco) #29
  br label %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413:        ; preds = %bb.eq, %bb.ep
  %.pn.pn.pn = phi { ptr, i32 } [ %i.acl, %bb.ep ], [ %i.acm, %bb.eq ] ; 2 uses
  %.not.i414 = icmp eq ptr %i.abc, null
  br i1 %.not.i414, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416, label %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415

_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415: ; preds = %.thread, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413
  %.pn.pn.pn613 = phi { ptr, i32 } [ %i.acn, %.thread ], [ %.pn.pn.pn, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413 ]
  %i.acp = load ptr, ptr %i.abc, align 8
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8
  tail call void %i.acr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abc) #25, !inline_history !66
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

bb.er:                                            ; preds = %bb.ed
  %i.acs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.es unwind label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6Assimp6Logger4infoIJRA74_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.acs, ptr noundef nonnull align 1 dereferenceable(74) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.act)
          to label %bb.eu unwind label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

bb.eu:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit, %bb.es, %._crit_edge741
  %.not.i.i.i417 = icmp eq ptr %.sroa.0561.0, null
  br i1 %.not.i.i.i417, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.acv = ptrtoint ptr %.sroa.0561.0 to i64
  %i.acw = sub i64 %.sroa.24.0, %i.acv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0561.0, i64 noundef %i.acw) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416: ; preds = %.loopexit623, %.loopexit.split-lp, %.loopexit626, %.loopexit.split-lp627, %.loopexit642, %.loopexit.split-lp643, %.loopexit637, %.loopexit.split-lp638, %.loopexit632, %.loopexit.split-lp633, %.loopexit647, %bb.eo, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413, %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415, %bb.bk, %bb.bn, %bb.bj, %bb.bz, %bb.ck, %bb.cl, %bb.ch, %bb.df, %bb.du, %bb.ca, %bb.bu, %bb.br, %bb.et, %bb.x
  %.pn332.pn = phi { ptr, i32 } [ %i.ez, %bb.x ], [ %i.ack, %bb.eo ], [ %lpad.loopexit, %.loopexit623 ], [ %i.acu, %bb.et ], [ %i.zv, %bb.du ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.my, %bb.bk ], [ %i.nb, %bb.bn ], [ %i.mx, %bb.bj ], [ %lpad.loopexit.split-lp635, %.loopexit.split-lp633 ], [ %lpad.loopexit.split-lp640, %.loopexit.split-lp638 ], [ %i.om, %bb.br ], [ %i.op, %bb.bu ], [ %i.pc, %bb.bz ], [ %i.pd, %bb.ca ], [ %.pn.pn.pn, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413 ], [ %.pn.pn.pn613, %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415 ], [ %i.qm, %bb.ch ], [ %i.rb, %bb.cl ], [ %i.ra, %bb.ck ], [ %lpad.loopexit.split-lp645, %.loopexit.split-lp643 ], [ %i.wn, %bb.df ], [ %lpad.loopexit.split-lp629, %.loopexit.split-lp627 ], [ %lpad.loopexit649, %.loopexit647 ], [ %lpad.loopexit634, %.loopexit632 ], [ %lpad.loopexit639, %.loopexit637 ], [ %lpad.loopexit644, %.loopexit642 ], [ %lpad.loopexit628, %.loopexit626 ] ; 2 uses
  %.not.i.i.i418 = icmp eq ptr %.sroa.0561.0, null
  br i1 %.not.i.i.i418, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit419, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416.thread

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416.thread: ; preds = %bb.ar, %.loopexit.split-lp648, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416
  %.pn332.pn842 = phi { ptr, i32 } [ %.pn332.pn, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416 ], [ %lpad.loopexit.split-lp650, %.loopexit.split-lp648 ], [ %i.ka, %bb.ar ]
  %i.acx = ptrtoint ptr %.sroa.0561.0 to i64
  %i.acy = sub i64 %.sroa.24.0, %i.acx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0561.0, i64 noundef %i.acy) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit419

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %bb.ev, %bb.eu, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit, %bb.b
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adb = load i64, ptr %i.ada, align 8          ; 5 uses
  %.not290 = icmp eq i64 %i.adb, 0
  br i1 %.not290, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.adc = icmp ugt i64 %i.adb, 1023
  br i1 %i.adc, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.add = trunc nuw nsw i64 %i.adb to i32
  store i32 %i.add, ptr %i.a, align 4
  %i.ade = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.adf = load ptr, ptr %i.acz, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ade, ptr align 1 %i.adf, i64 %i.adb, i1 false)
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.adb
  store i8 0, ptr %i.adg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ey:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.adh = load i32, ptr %1, align 8
  switch i32 %i.adh, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i32 2, label %bb.ez
    i32 1, label %bb.fa
    i32 4, label %bb.fb
    i32 0, label %bb.fc
  ]

bb.ez:                                            ; preds = %bb.ey
  %i.adi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4          ; 2 uses
  %i.adl = add i32 %i.adk, 1
  store i32 %i.adl, ptr %i.adj, align 4
  %i.adm = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adi, i64 noundef 1024, ptr noundef nonnull @.str.52, i32 noundef %i.adk) #25
  store i32 %i.adm, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fa:                                            ; preds = %bb.ey
  %i.adn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.adp = load i32, ptr %i.ado, align 8          ; 2 uses
  %i.adq = add i32 %i.adp, 1
  store i32 %i.adq, ptr %i.ado, align 8
  %i.adr = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adn, i64 noundef 1024, ptr noundef nonnull @.str.53, i32 noundef %i.adp) #25
  store i32 %i.adr, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fb:                                            ; preds = %bb.ey
  %i.ads = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.adu = load i32, ptr %i.adt, align 8          ; 2 uses
  %i.adv = add i32 %i.adu, 1
  store i32 %i.adv, ptr %i.adt, align 8
  %i.adw = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ads, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.adu) #25
  store i32 %i.adw, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fc:                                            ; preds = %bb.ey
  %i.adx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4          ; 2 uses
  %i.aea = add i32 %i.adz, 1
  store i32 %i.aea, ptr %i.ady, align 4
  %i.aeb = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adx, i64 noundef 1024, ptr noundef nonnull @.str.54, i32 noundef %i.adz) #25
  store i32 %i.aeb, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ex, %bb.ew, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aee = load float, ptr %i.aed, align 8
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.aeh = load float, ptr %i.aeg, align 4
  %i.aei = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aek = load float, ptr %i.aej, align 8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  %i.aem = load <2 x float>, ptr %i.aec, align 8
  store <2 x float> %i.aem, ptr %i.ael, align 4
  %.sroa.5.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.a, i64 1036
  store float %i.aee, ptr %.sroa.5.0..sroa_idx420, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1040 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1044
  %i.aen = load <2 x float>, ptr %i.aef, align 4
  store <2 x float> %i.aen, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1052
  store float %i.aeh, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1056 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1060
  %i.aeo = load <2 x float>, ptr %i.aei, align 8
  store <2 x float> %i.aeo, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1068
  store float %i.aek, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1072 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  %i.aep = load i32, ptr %1, align 8
  %i.aeq = icmp eq i32 %i.aep, 2
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aes = load i32, ptr %i.aer, align 8
  %.not291 = icmp eq i32 %i.aes, 0
  %or.cond341 = select i1 %i.aeq, i1 true, i1 %.not291
  br i1 %or.cond341, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aeu = load float, ptr %i.aet, align 4
  store float %i.aeu, ptr %.sroa.6.0..sroa_idx, align 4
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aew = load float, ptr %i.aev, align 8
  store float %i.aew, ptr %.sroa.10.0..sroa_idx, align 4
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.aey = load float, ptr %i.aex, align 4
  store float %i.aey, ptr %.sroa.14.0..sroa_idx, align 4
  br label %bb.fe

bb.fe:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.fd
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.afb = load ptr, ptr %i.afa, align 8          ; 2 uses
  %i.afc = load ptr, ptr %i.aez, align 8          ; 2 uses
  %.not292 = icmp eq ptr %i.afb, %i.afc
  br i1 %.not292, label %.loopexit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.afd = ptrtoint ptr %i.afb to i64
  %i.afe = ptrtoint ptr %i.afc to i64
  %i.aff = sub i64 %i.afd, %i.afe
  %i.afg = sdiv exact i64 %i.aff, 216             ; 2 uses
  %i.afh = trunc i64 %i.afg to i32                ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 2 uses
  store i32 %i.afh, ptr %i.afi, align 8
  %i.afj = shl nsw i64 %i.afg, 3
  %i.afk = and i64 %i.afj, 34359738360
  %i.afl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.afk) #27
  %i.afm = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  store ptr %i.afl, ptr %i.afm, align 8
  %.not755 = icmp eq i32 %i.afh, 0
  br i1 %.not755, label %.loopexit, label %.lr.ph750

.lr.ph750:                                        ; preds = %bb.ff, %.lr.ph750
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %.lr.ph750 ], [ 0, %bb.ff ] ; 3 uses
  %i.afn = load ptr, ptr %i.aez, align 8
  %i.afo = getelementptr inbounds nuw [216 x i8], ptr %i.afn, i64 %indvars.iv793
  %i.afp = tail call noundef ptr @_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(212) %i.afo, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a)
  %i.afq = load ptr, ptr %i.afm, align 8
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.afq, i64 %indvars.iv793
  store ptr %i.afp, ptr %i.afr, align 8
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 1 ; 2 uses
  %i.afs = load i32, ptr %i.afi, align 8
  %i.aft = zext i32 %i.afs to i64
  %i.afu = icmp samesign ult i64 %indvars.iv.next794, %i.aft
  br i1 %i.afu, label %.lr.ph750, label %.loopexit, !llvm.loop !67

.loopexit:                                        ; preds = %.lr.ph750, %bb.ff, %bb.fe
  ret ptr %i.a

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit419:     ; preds = %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416.thread, %bb.s, %bb.k
  %.pn332.pn.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.k ], [ %i.ee, %bb.s ], [ %.pn332.pn842, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416.thread ], [ %.pn332.pn, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416 ]
  resume { ptr, i32 } %.pn332.pn.pn.pn

bb.fg:                                            ; preds = %bb.dt, %bb.de, %bb.cj
  unreachable
}

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA46_KcRjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %1) #25
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(46) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #25
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS6_S7_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #25
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

declare noundef ptr @_ZN6Assimp10Subdivider6CreateENS0_9AlgorithmE(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA39_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(39) %1) #25
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(39) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #25
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger4infoIJRA74_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #25
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA74_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12AC3DImporter15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((88, 90)) %0, ptr noundef nonnull %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.55, i32 noundef 1)
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = zext i1 %i.b to i8
  store i8 %i.d, ptr %i.c, align 8
  %i.e = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.56, i32 noundef 1)
  %i.f = icmp ne i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 1
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12AC3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef captures(none) %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.65", align 8    ; 11 uses
  %i.a = alloca [3 x i8], align 1                 ; 10 uses
  %6 = alloca %"class.std::vector.39", align 8    ; 17 uses
  %7 = alloca %"class.std::vector", align 8       ; 14 uses
  %8 = alloca %"class.std::vector.18", align 8    ; 11 uses
  %9 = alloca %"class.std::vector.29", align 8    ; 11 uses
  %10 = alloca %"class.std::vector.34", align 8   ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.b, ptr %4, align 8
  store i16 25202, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.d, align 2
  %i.e = load ptr, ptr %1, align 8
  %i.f = load ptr, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.e, ptr noundef nonnull %i.b)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.c, !inline_history !68 ; 6 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %4, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.l = load i64, ptr %i.b, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(26) @.str.58, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.59)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit128

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit128

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp12BaseImporter16TextFileToBufferEPNS_8IOStreamERSt6vectorIcSaIcEENS0_12TextFileModeE(ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %5, align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(5) @.str.60, i64 noundef 4) #26
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.61)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.cx unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.j:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #25
  br label %bb.cv

bb.k:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ak = load i8, ptr %i.aj, align 1             ; 4 uses
  %i.al = sext i8 %i.ak to i32                    ; 2 uses
  %i.am = add i8 %i.ak, -48
  %or.cond.i = icmp ult i8 %i.am, 10
  br i1 %or.cond.i, label %_ZN6Assimp17HexDigitToDecimalEc.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add i8 %i.ak, -97
  %or.cond5.i = icmp ult i8 %i.an, 6
  br i1 %or.cond5.i, label %_ZN6Assimp17HexDigitToDecimalEc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = add i8 %i.ak, -65
  %or.cond8.i = icmp ult i8 %i.ao, 6
  br i1 %or.cond8.i, label %_ZN6Assimp17HexDigitToDecimalEc.exit, label %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137

_ZN6Assimp17HexDigitToDecimalEc.exit.thread137:   ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 45, ptr %i.a, align 1
  br label %.lr.ph.i.preheader

_ZN6Assimp17HexDigitToDecimalEc.exit.thread:      ; preds = %bb.l, %bb.k
  %.sink = phi i32 [ -48, %bb.k ], [ -87, %bb.l ]
  %i.aq = add nsw i32 %.sink, %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.lr.ph.i.preheader

_ZN6Assimp17HexDigitToDecimalEc.exit:             ; preds = %bb.m
  %i.ar = add nsw i32 %i.al, -55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6Assimp17HexDigitToDecimalEc.exit, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137
  %.153.i.ph = phi ptr [ %i.a, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread ], [ %i.a, %_ZN6Assimp17HexDigitToDecimalEc.exit ], [ %i.ap, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137 ]
  %.13350.i.ph = phi i32 [ 1, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread ], [ 1, %_ZN6Assimp17HexDigitToDecimalEc.exit ], [ 2, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137 ]
  %.13849.i.ph = phi i32 [ %i.aq, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread ], [ %i.ar, %_ZN6Assimp17HexDigitToDecimalEc.exit ], [ 1, %_ZN6Assimp17HexDigitToDecimalEc.exit.thread137 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.o
  %.153.i = phi ptr [ %.2.i, %bb.o ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.o ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.bb, %bb.o ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13350.i = phi i32 [ %.234.i, %bb.o ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.o ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.as = sdiv i32 %.13849.i, %.03051.i           ; 3 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.at = icmp ne i32 %i.as, 0
  %i.au = icmp eq i32 %.03051.i, 1                ; 2 uses
  %i.av = or i1 %i.au, %i.at
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.av ; 2 uses
  br i1 %or.cond3.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.aw = trunc i32 %i.as to i8
  %i.ax = add i8 %i.aw, 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.ax, ptr %.153.i, align 1
  %i.az = add nuw nsw i32 %.13350.i, 1
  %i.ba = mul i32 %i.as, %.03051.i                ; 0 uses
  br i1 %i.au, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %.239.i = phi i32 [ %.recomposed, %bb.n ], [ %.13849.i, %.lr.ph.i ]
  %.234.i = phi i32 [ %i.az, %bb.n ], [ %.13350.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi ptr [ %i.ay, %bb.n ], [ %.153.i, %.lr.ph.i ] ; 2 uses
  %i.bb = sdiv i32 %.03051.i, 10
  %i.bc = icmp ult i32 %.234.i, 3
  br i1 %i.bc, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.n, %bb.o
  %.4.i = phi ptr [ %.2.i, %bb.o ], [ %i.ay, %bb.n ]
  store i8 0, ptr %.4.i, align 1
  %i.bd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.p unwind label %bb.au

bb.p:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  invoke void @_ZN6Assimp6Logger4infoIJRA27_KcRA3_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bd, ptr noundef nonnull align 1 dereferenceable(27) @.str.62, ptr noundef nonnull align 1 dereferenceable(3) %i.a)
          to label %bb.q unwind label %bb.au

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  %i.bg = invoke noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #27
          to label %.noexc130 unwind label %bb.av ; 5 uses

.noexc130:                                        ; preds = %bb.q
  %i.bh = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp12AC3DImporter8MaterialEPS2_ET0_T_S7_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull %i.bg)
          to label %.noexc65 unwind label %bb.r   ; 0 uses

bb.r:                                             ; preds = %.noexc130
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.bj) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 440) #29
  invoke void @__cxa_rethrow() #28
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #30
  unreachable

bb.u:                                             ; preds = %bb.r
  unreachable

.noexc65:                                         ; preds = %.noexc130
  %i.bo = load ptr, ptr %6, align 8               ; 3 uses
  %i.bp = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc65, %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i ], [ %i.bo, %.noexc65 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bu = load i64, ptr %i.bs, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #29
  br label %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %i.bp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !69

_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp12AC3DImporter8MaterialEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i

_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exitthread-pre-split.i, %.noexc65
  %i.bx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exitthread-pre-split.i ], [ %i.bo, %.noexc65 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i
  %i.by = load ptr, ptr %i.be, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #29
  br label %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6Assimp12AC3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.v, %_ZSt8_DestroyIPN6Assimp12AC3DImporter8MaterialEEvT_S4_.exit.i
  store ptr %i.bg, ptr %6, align 8
  store ptr %i.bg, ptr %i.bf, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 440
  store ptr %i.cc, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 5)
          to label %bb.w unwind label %bb.aw

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %8, ptr %i.cd, align 8
  br label %bb.x

bb.x:                                             ; preds = %.backedge, %bb.w
  %i.ce = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.cf = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.ci = sub i64 %i.ch, %i.cg
  %scevgep.i.i.i = getelementptr i8, ptr %i.cf, i64 %i.ci
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.0.i.i.i = phi ptr [ %i.cf, %bb.x ], [ %i.ck, %bb.aa ] ; 7 uses
  %i.cj = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.cj, label %bb.z [
    i8 13, label %.critedge.i.i.i
    i8 10, label %.critedge.i.i.i
    i8 0, label %.critedge.i.i.i
    i8 35, label %.critedge.i.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %.not22.i.i.i = icmp eq ptr %.0.i.i.i, %i.ce
  br i1 %.not22.i.i.i, label %.critedge.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.y, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %bb.z, %bb.y, %bb.y, %bb.y, %bb.y
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.y ], [ %.0.i.i.i, %bb.y ], [ %.0.i.i.i, %bb.y ], [ %.0.i.i.i, %bb.y ], [ %scevgep.i.i.i, %bb.z ] ; 3 uses
  %.0.lcssa24.i.i.i = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.cl = sub i64 %i.ch, %.0.lcssa24.i.i.i
  %scevgep25.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.cl
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %.0.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.cn, %bb.ad ] ; 4 uses
  %i.cm = load i8, ptr %.1.i.i.i, align 1
end_hunk_2
