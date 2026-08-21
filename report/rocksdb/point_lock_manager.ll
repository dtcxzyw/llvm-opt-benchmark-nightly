inline.NumInlined: 3596
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb14TrackedTrxInfoaSEOS0_:bb.a

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %i.n, %.011.i.ph
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.011.i.prol = phi i64 [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.011.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.011.i.prol ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011.i.prol
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !53
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !53
  %i.aj = add nuw i64 %.011.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !769

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.011.i.unr = phi i64 [ %.011.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub i64 %.011.i.ph, %i.n
  %i.al = icmp ugt i64 %i.ak, -8
  br i1 %i.al, label %_ZN7rocksdb10autovectorImLm8EEaSEOS1_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.011.i = phi i64 [ %i.br, %vec.epilog.scalar.ph ], [ %.011.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.011.i ; 2 uses
  store i64 0, ptr %i.am, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !53
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !53
  %i.ap = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ap ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ap
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !53
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !53
  %i.at = add nuw i64 %.011.i, 2                  ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.at ; 2 uses
  store i64 0, ptr %i.au, align 8, !tbaa !53
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !53
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !53
  %i.ax = add nuw i64 %.011.i, 3                  ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ax ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ax
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !53
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !53
  %i.bb = add nuw i64 %.011.i, 4                  ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bb ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !53
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !53
  %i.bf = add nuw i64 %.011.i, 5                  ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bf ; 2 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !53
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !53
  %i.bj = add nuw i64 %.011.i, 6                  ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bj ; 2 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bj
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !53
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !53
  %i.bn = add nuw i64 %.011.i, 7                  ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bn ; 2 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bn
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !53
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !53
  %i.br = add nuw i64 %.011.i, 8                  ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.br, %i.n
  br i1 %exitcond.not.i.7, label %_ZN7rocksdb10autovectorImLm8EEaSEOS1_.exit, label %vec.epilog.scalar.ph, !llvm.loop !770

_ZN7rocksdb10autovectorImLm8EEaSEOS1_.exit:       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bs, ptr noundef nonnull align 8 dereferenceable(5) %i.bt, i64 5, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !14 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !14 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca                ; 2 uses
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN7rocksdb10autovectorImLm8EEaSEOS1_.exit
  br i1 %i.cb, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN7rocksdb10autovectorImLm8EEaSEOS1_.exit
  br i1 %i.cb, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 16
  tail call void @llvm.assume(i1 %i.ce)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  switch i64 %i.cd, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.cf = load i8, ptr %i.bz, align 1, !tbaa !17
  store i8 %i.cf, ptr %i.bw, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bz, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !18
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %i.bv, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !18
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !18
  %i.cn = load i64, ptr %i.ca, align 8, !tbaa !17
  store i64 %i.cn, ptr %i.bx, align 8, !tbaa !17
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.co = load i64, ptr %i.bx, align 8, !tbaa !17
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !18
  %i.cs = load i64, ptr %i.ca, align 8, !tbaa !17
  store i64 %i.cs, ptr %i.bx, align 8, !tbaa !17
  %.not.i4 = icmp eq ptr %i.bw, null
  br i1 %.not.i4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !14
  store i64 %i.co, ptr %i.ca, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ct = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bw, %bb.g ], [ %i.ca, %bb.h ], [ %i.bz, %bb.c ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 0, ptr %i.cu, align 8, !tbaa !18
  store i8 0, ptr %i.ct, align 1, !tbaa !17
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(152) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !401  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !402    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #27
  unreachable

_ZNKSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 152                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 60680079189834051)
  %i.l = select i1 %i.j, i64 60680079189834051, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 152                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !406
  store i64 %i.r, ptr %i.q, align 8, !tbaa !406
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN7rocksdb14TrackedTrxInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %i.s, ptr noundef nonnull align 8 dereferenceable(144) %i.t)
          to label %_ZNSt16allocator_traitsISaISt4pairImN7rocksdb14TrackedTrxInfoEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaISt4pairImN7rocksdb14TrackedTrxInfoEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt4pairImN7rocksdb14TrackedTrxInfoEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit, %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cz, %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairImN7rocksdb14TrackedTrxInfoEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.cy, %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairImN7rocksdb14TrackedTrxInfoEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.w = getelementptr i8, ptr %.012.i.i.i, i64 16 ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  store ptr %i.w, ptr %i.x, align 8, !tbaa !304, !alias.scope !771, !noalias !774
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !356, !alias.scope !774, !noalias !771
  store <2 x ptr> %i.aa, ptr %i.v, align 8, !tbaa !356, !alias.scope !771, !noalias !774
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !309, !alias.scope !774, !noalias !771
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !309, !alias.scope !771, !noalias !774
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !774, !noalias !771
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !41, !alias.scope !774, !noalias !771 ; 12 uses
  %i.ae = load <2 x i64>, ptr %.0911.i.i.i, align 8, !tbaa !53, !alias.scope !774, !noalias !771
  store <2 x i64> %i.ae, ptr %.012.i.i.i, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  store i64 0, ptr %i.u, align 8, !tbaa !41, !alias.scope !774, !noalias !771
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !304, !alias.scope !774, !noalias !771 ; 13 uses
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = shl i64 %i.ad, 3                        ; 2 uses
  %scevgep67.a = getelementptr i8, ptr %i.w, i64 %i.ah
  %scevgep68 = getelementptr i8, ptr %i.ag, i64 %i.ah
  %bound0 = icmp ult ptr %i.w, %scevgep68
  %bound1 = icmp ult ptr %i.ag, %scevgep67.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.ad, 16
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.aj, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  store <4 x i64> zeroinitializer, ptr %i.ak, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  store <4 x i64> zeroinitializer, ptr %i.al, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  store <4 x i64> zeroinitializer, ptr %i.am, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %wide.load = load <4 x i64>, ptr %i.an, align 8, !tbaa !53, !alias.scope !781, !noalias !774
  %wide.load70.a = load <4 x i64>, ptr %i.ao, align 8, !tbaa !53, !alias.scope !781, !noalias !774
  %wide.load71.a = load <4 x i64>, ptr %i.ap, align 8, !tbaa !53, !alias.scope !781, !noalias !774
  %wide.load72 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !53, !alias.scope !781, !noalias !774
  store <4 x i64> %wide.load, ptr %i.aj, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  store <4 x i64> %wide.load70.a, ptr %i.ak, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  store <4 x i64> %wide.load71.a, ptr %i.al, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  store <4 x i64> %wide.load72, ptr %i.am, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !782

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !413

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.ad, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index74 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.as, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index74
  %wide.load75 = load <4 x i64>, ptr %i.at, align 8, !tbaa !53, !alias.scope !781, !noalias !774
  store <4 x i64> %wide.load75, ptr %i.as, align 8, !tbaa !53, !alias.scope !776, !noalias !779
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !783

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %i.ad, %n.vec73
  br i1 %cmp.n77, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec73, %vec.epilog.middle.block ] ; 4 uses
  %i.av = sub i64 %i.ad, %.011.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.011.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.az, %vec.epilog.scalar.ph.prol ], [ %.011.i.i.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.011.i.i.i.i.i.i.i.i.i.prol ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.011.i.i.i.i.i.i.i.i.i.prol
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !53, !noalias !774
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.az = add nuw i64 %.011.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !784

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.011.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.011.i.i.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.az, %vec.epilog.scalar.ph.prol ]
  %i.ba = sub i64 %.011.i.i.i.i.i.i.i.i.i.ph, %i.ad
  %i.bb = icmp ugt i64 %i.ba, -8
  br i1 %i.bb, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %vec.epilog.scalar.ph ], [ %.011.i.i.i.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.011.i.i.i.i.i.i.i.i.i ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.011.i.i.i.i.i.i.i.i.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !53, !noalias !774
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bf = add nuw i64 %.011.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf ; 2 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !53, !noalias !774
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bj = add nuw i64 %.011.i.i.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj ; 2 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bj
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !53, !noalias !774
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bn = add nuw i64 %.011.i.i.i.i.i.i.i.i.i, 3  ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bn ; 2 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bn
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !53, !noalias !774
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.br = add nuw i64 %.011.i.i.i.i.i.i.i.i.i, 4  ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.br ; 2 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !53, !noalias !774
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bv = add nuw i64 %.011.i.i.i.i.i.i.i.i.i, 5  ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bv ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bv
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !53, !noalias !774
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.bz = add nuw i64 %.011.i.i.i.i.i.i.i.i.i, 6  ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bz ; 2 uses
  store i64 0, ptr %i.ca, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !53, !noalias !774
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.cd = add nuw i64 %.011.i.i.i.i.i.i.i.i.i, 7  ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cd ; 2 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !53, !noalias !774
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !53, !alias.scope !771, !noalias !774
  %i.ch = add nuw i64 %.011.i.i.i.i.i.i.i.i.i, 8  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ch, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.7, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !785

_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ci, ptr noundef nonnull align 8 dereferenceable(5) %i.cj, i64 5, i1 false), !alias.scope !786
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136 ; 3 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !9, !alias.scope !771, !noalias !774
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !14, !alias.scope !774, !noalias !771 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !18, !alias.scope !774, !noalias !771 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 16
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false), !alias.scope !786
  br label %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !14, !alias.scope !771, !noalias !774
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !17, !alias.scope !774, !noalias !771
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !17, !alias.scope !771, !noalias !774
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !18, !alias.scope !774, !noalias !771
  br label %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.cv = phi i64 [ %i.cr, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !18, !alias.scope !771, !noalias !774
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !14, !alias.scope !774, !noalias !771
  store i64 0, ptr %i.cw, align 8, !tbaa !18, !alias.scope !774, !noalias !771
  store i8 0, ptr %i.co, align 8, !tbaa !17, !alias.scope !774, !noalias !771
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !787

_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaISt4pairImN7rocksdb14TrackedTrxInfoEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaISt4pairImN7rocksdb14TrackedTrxInfoEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit ], [ %i.cz, %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 152 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i38
  %.012.i.i.i28 = phi ptr [ %i.gg, %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i38 ], [ %i.da, %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 10 uses
  %.0911.i.i.i29 = phi ptr [ %i.gf, %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i38 ], [ %1, %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 88
  %i.dd = getelementptr i8, ptr %.012.i.i.i28, i64 16 ; 14 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 80
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !304, !alias.scope !788, !noalias !791
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 88 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 104
  %i.dh = load <2 x ptr>, ptr %i.df, align 8, !tbaa !356, !alias.scope !791, !noalias !788
  store <2 x ptr> %i.dh, ptr %i.dc, align 8, !tbaa !356, !alias.scope !788, !noalias !791
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !309, !alias.scope !791, !noalias !788
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !309, !alias.scope !788, !noalias !791
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false), !alias.scope !791, !noalias !788
  %i.dk = load i64, ptr %i.db, align 8, !tbaa !41, !alias.scope !791, !noalias !788 ; 12 uses
  %i.dl = load <2 x i64>, ptr %.0911.i.i.i29, align 8, !tbaa !53, !alias.scope !791, !noalias !788
  store <2 x i64> %i.dl, ptr %.012.i.i.i28, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  store i64 0, ptr %i.db, align 8, !tbaa !41, !alias.scope !791, !noalias !788
  %.not.i.i.i.i.i.i.i.i.i30 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i30, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i34, label %iter.check102

iter.check102:                                    ; preds = %.lr.ph.i.i.i27
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 80
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !304, !alias.scope !791, !noalias !788 ; 13 uses
  %min.iters.check87 = icmp ult i64 %i.dk, 4
  br i1 %min.iters.check87, label %vec.epilog.scalar.ph103.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %iter.check102
  %i.do = shl i64 %i.dk, 3                        ; 2 uses
  %scevgep82 = getelementptr i8, ptr %i.dd, i64 %i.do
  %scevgep83 = getelementptr i8, ptr %i.dn, i64 %i.do
  %bound084 = icmp ult ptr %i.dd, %scevgep83
  %bound185 = icmp ult ptr %i.dn, %scevgep82
  %found.conflict86 = and i1 %bound084, %bound185
  br i1 %found.conflict86, label %vec.epilog.scalar.ph103.preheader, label %vector.main.loop.iter.check88

vector.main.loop.iter.check88:                    ; preds = %vector.memcheck78
  %min.iters.check89 = icmp ult i64 %i.dk, 16
  br i1 %min.iters.check89, label %vec.epilog.ph106, label %vector.ph90

vector.ph90:                                      ; preds = %vector.main.loop.iter.check88
  %i.dp = and i64 %i.dk, 12
  %n.vec91 = and i64 %i.dk, -16                   ; 4 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index93 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 64 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.dq, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  store <4 x i64> zeroinitializer, ptr %i.dr, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  store <4 x i64> zeroinitializer, ptr %i.ds, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  store <4 x i64> zeroinitializer, ptr %i.dt, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index93 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %wide.load94 = load <4 x i64>, ptr %i.du, align 8, !tbaa !53, !alias.scope !798, !noalias !791
  %wide.load95 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !53, !alias.scope !798, !noalias !791
  %wide.load96 = load <4 x i64>, ptr %i.dw, align 8, !tbaa !53, !alias.scope !798, !noalias !791
  %wide.load97 = load <4 x i64>, ptr %i.dx, align 8, !tbaa !53, !alias.scope !798, !noalias !791
  store <4 x i64> %wide.load94, ptr %i.dq, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  store <4 x i64> %wide.load95, ptr %i.dr, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  store <4 x i64> %wide.load96, ptr %i.ds, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  store <4 x i64> %wide.load97, ptr %i.dt, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  %index.next98 = add nuw i64 %index93, 16        ; 2 uses
  %i.dy = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.dy, label %middle.block99, label %vector.body92, !llvm.loop !799

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.dk, %n.vec91
  br i1 %cmp.n100, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i34, label %vec.epilog.iter.check104

vec.epilog.iter.check104:                         ; preds = %middle.block99
  %min.epilog.iters.check105 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check105, label %vec.epilog.scalar.ph103.preheader, label %vec.epilog.ph106, !prof !413

vec.epilog.ph106:                                 ; preds = %vector.main.loop.iter.check88, %vec.epilog.iter.check104
  %vec.epilog.resume.val101 = phi i64 [ %n.vec91, %vec.epilog.iter.check104 ], [ 0, %vector.main.loop.iter.check88 ]
  %n.vec107 = and i64 %i.dk, -4                   ; 3 uses
  br label %vec.epilog.vector.body108

vec.epilog.vector.body108:                        ; preds = %vec.epilog.vector.body108, %vec.epilog.ph106
  %index109 = phi i64 [ %vec.epilog.resume.val101, %vec.epilog.ph106 ], [ %index.next111, %vec.epilog.vector.body108 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index109 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.dz, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index109
  %wide.load110 = load <4 x i64>, ptr %i.ea, align 8, !tbaa !53, !alias.scope !798, !noalias !791
  store <4 x i64> %wide.load110, ptr %i.dz, align 8, !tbaa !53, !alias.scope !793, !noalias !796
  %index.next111 = add nuw i64 %index109, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next111, %n.vec107
  br i1 %i.eb, label %vec.epilog.middle.block112, label %vec.epilog.vector.body108, !llvm.loop !800

vec.epilog.middle.block112:                       ; preds = %vec.epilog.vector.body108
  %cmp.n113 = icmp eq i64 %i.dk, %n.vec107
  br i1 %cmp.n113, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i34, label %vec.epilog.scalar.ph103.preheader

vec.epilog.scalar.ph103.preheader:                ; preds = %vector.memcheck78, %iter.check102, %vec.epilog.iter.check104, %vec.epilog.middle.block112
  %.011.i.i.i.i.i.i.i.i.i32.ph = phi i64 [ 0, %iter.check102 ], [ 0, %vector.memcheck78 ], [ %n.vec91, %vec.epilog.iter.check104 ], [ %n.vec107, %vec.epilog.middle.block112 ] ; 4 uses
  %i.ec = sub i64 %i.dk, %.011.i.i.i.i.i.i.i.i.i32.ph
  %xtraiter116 = and i64 %i.ec, 7                 ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %vec.epilog.scalar.ph103.prol.loopexit, label %vec.epilog.scalar.ph103.prol

vec.epilog.scalar.ph103.prol:                     ; preds = %vec.epilog.scalar.ph103.preheader, %vec.epilog.scalar.ph103.prol
  %.011.i.i.i.i.i.i.i.i.i32.prol = phi i64 [ %i.eg, %vec.epilog.scalar.ph103.prol ], [ %.011.i.i.i.i.i.i.i.i.i32.ph, %vec.epilog.scalar.ph103.preheader ] ; 3 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %vec.epilog.scalar.ph103.prol ], [ 0, %vec.epilog.scalar.ph103.preheader ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.011.i.i.i.i.i.i.i.i.i32.prol ; 2 uses
  store i64 0, ptr %i.ed, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.011.i.i.i.i.i.i.i.i.i32.prol
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !53, !noalias !791
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.eg = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32.prol, 1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %vec.epilog.scalar.ph103.prol.loopexit, label %vec.epilog.scalar.ph103.prol, !llvm.loop !801

vec.epilog.scalar.ph103.prol.loopexit:            ; preds = %vec.epilog.scalar.ph103.prol, %vec.epilog.scalar.ph103.preheader
  %.011.i.i.i.i.i.i.i.i.i32.unr = phi i64 [ %.011.i.i.i.i.i.i.i.i.i32.ph, %vec.epilog.scalar.ph103.preheader ], [ %i.eg, %vec.epilog.scalar.ph103.prol ]
  %i.eh = sub i64 %.011.i.i.i.i.i.i.i.i.i32.ph, %i.dk
  %i.ei = icmp ugt i64 %i.eh, -8
  br i1 %i.ei, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i34, label %vec.epilog.scalar.ph103

vec.epilog.scalar.ph103:                          ; preds = %vec.epilog.scalar.ph103.prol.loopexit, %vec.epilog.scalar.ph103
  %.011.i.i.i.i.i.i.i.i.i32 = phi i64 [ %i.fo, %vec.epilog.scalar.ph103 ], [ %.011.i.i.i.i.i.i.i.i.i32.unr, %vec.epilog.scalar.ph103.prol.loopexit ] ; 10 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.011.i.i.i.i.i.i.i.i.i32 ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.011.i.i.i.i.i.i.i.i.i32
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !53, !noalias !791
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.em = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.em ; 2 uses
  store i64 0, ptr %i.en, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !53, !noalias !791
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.eq = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32, 2 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.eq ; 2 uses
  store i64 0, ptr %i.er, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.eq
  %i.et = load i64, ptr %i.es, align 8, !tbaa !53, !noalias !791
  store i64 %i.et, ptr %i.er, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.eu = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.eu ; 2 uses
  store i64 0, ptr %i.ev, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.eu
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !53, !noalias !791
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.ey = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32, 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ey ; 2 uses
  store i64 0, ptr %i.ez, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ey
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !53, !noalias !791
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.fc = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32, 5 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fc ; 2 uses
  store i64 0, ptr %i.fd, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.fc
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !53, !noalias !791
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.fg = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32, 6 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fg ; 2 uses
  store i64 0, ptr %i.fh, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.fg
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !53, !noalias !791
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.fk = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32, 7 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fk ; 2 uses
  store i64 0, ptr %i.fl, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.fk
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !53, !noalias !791
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !53, !alias.scope !788, !noalias !791
  %i.fo = add nuw i64 %.011.i.i.i.i.i.i.i.i.i32, 8 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i33.7 = icmp eq i64 %i.fo, %i.dk
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i33.7, label %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i34, label %vec.epilog.scalar.ph103, !llvm.loop !802

_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i34: ; preds = %vec.epilog.scalar.ph103.prol.loopexit, %vec.epilog.scalar.ph103, %middle.block99, %vec.epilog.middle.block112, %.lr.ph.i.i.i27
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 112
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fp, ptr noundef nonnull align 8 dereferenceable(5) %i.fq, i64 5, i1 false), !alias.scope !803
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 120 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 120 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 136 ; 3 uses
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !9, !alias.scope !788, !noalias !791
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !14, !alias.scope !791, !noalias !788 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 136 ; 5 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35

bb.d:                                             ; preds = %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i34
  %i.fx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 128
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !18, !alias.scope !791, !noalias !788 ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 16
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = add nuw nsw i64 %i.fy, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ft, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.ga, i1 false), !alias.scope !803
  br label %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35: ; preds = %_ZN7rocksdb10autovectorImLm8EEC2EOS1_.exit.i.i.i.i.i.i.i34
  store ptr %i.fu, ptr %i.fr, align 8, !tbaa !14, !alias.scope !788, !noalias !791
  %i.gb = load i64, ptr %i.fv, align 8, !tbaa !17, !alias.scope !791, !noalias !788
  store i64 %i.gb, ptr %i.ft, align 8, !tbaa !17, !alias.scope !788, !noalias !791
  %.phi.trans.insert.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 128
  %.pre.i.i.i.i37 = load i64, ptr %.phi.trans.insert.i.i.i.i36, align 8, !tbaa !18, !alias.scope !791, !noalias !788
  br label %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i38

_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35, %bb.d
  %i.gc = phi i64 [ %i.fy, %bb.d ], [ %.pre.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 128
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 128
  store i64 %i.gc, ptr %i.ge, align 8, !tbaa !18, !alias.scope !788, !noalias !791
  store ptr %i.fv, ptr %i.fs, align 8, !tbaa !14, !alias.scope !791, !noalias !788
  store i64 0, ptr %i.gd, align 8, !tbaa !18, !alias.scope !791, !noalias !788
  store i8 0, ptr %i.fv, align 8, !tbaa !17, !alias.scope !791, !noalias !788
  %i.gf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 152 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 152 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.gf, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41, label %.lr.ph.i.i.i27, !llvm.loop !787

_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41: ; preds = %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i38, %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.da, %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.gg, %_ZSt19__relocate_object_aISt4pairImN7rocksdb14TrackedTrxInfoEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i38 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !485
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = sub i64 %i.gj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.gk) #30
  br label %_ZNSt12_Vector_baseISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit41, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !402
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !401
  %i.gl = getelementptr inbounds nuw [152 x i8], ptr %i.p, i64 %i.l
  store ptr %i.gl, ptr %i.gh, align 8, !tbaa !485
  ret void

bb.f:                                             ; preds = %bb.g
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  %i.gp = tail call ptr @__cxa_begin_catch(ptr %i.go) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #27
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.gm

bb.i:                                             ; preds = %bb.f
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  tail call void @__clang_call_terminate(ptr %i.gr) #31
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt9__find_ifIN7rocksdb10autovectorISt4pairImiELm1EE13iterator_implIS4_S3_EEN9__gnu_cxx5__ops10_Iter_predIZNS0_7HashMapImiLm128EE8ContainsEmEUlRKS3_E_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::autovector<std::pair<unsigned long, int>, 1>::iterator_impl") align 8 %0, ptr noundef align 8 %1, ptr noundef align 8 %2, i64 %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !384  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !384  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = ashr i64 %i.e, 2                         ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.022.0.copyload = load ptr, ptr %1, align 8, !tbaa !759 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.223.0.copyload = phi i64 [ %i.d, %.lr.ph ], [ %i.ao, %bb.f ] ; 6 uses
  %.0431 = phi i64 [ %i.f, %.lr.ph ], [ %i.ap, %bb.f ] ; 2 uses
  %i.j = icmp eq i64 %.sroa.223.0.copyload, 0
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr [16 x i8], ptr %i.l, i64 %.sroa.223.0.copyload
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  %.0.i.i.i = select i1 %i.j, ptr %i.k, ptr %i.n
  %i.o = load i64, ptr %.0.i.i.i, align 8, !tbaa !391
  %i.p = icmp eq i64 %i.o, %3
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add i64 %.sroa.223.0.copyload, 1         ; 3 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !384
  %i.r = icmp eq i64 %i.q, 0
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr [16 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %.0.i.i.i6 = select i1 %i.r, ptr %i.s, ptr %i.v
  %i.w = load i64, ptr %.0.i.i.i6, align 8, !tbaa !391
  %i.x = icmp eq i64 %i.w, %3
  br i1 %i.x, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %.sroa.223.0.copyload, 2         ; 3 uses
  store i64 %i.y, ptr %i.c, align 8, !tbaa !384
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = load ptr, ptr %i.i, align 8
  %i.ac = getelementptr [16 x i8], ptr %i.ab, i64 %i.y
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  %.0.i.i.i7 = select i1 %i.z, ptr %i.aa, ptr %i.ad
  %i.ae = load i64, ptr %.0.i.i.i7, align 8, !tbaa !391
  %i.af = icmp eq i64 %i.ae, %3
  br i1 %i.af, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add i64 %.sroa.223.0.copyload, 3        ; 3 uses
  store i64 %i.ag, ptr %i.c, align 8, !tbaa !384
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = load ptr, ptr %i.h, align 8
  %i.aj = load ptr, ptr %i.i, align 8
  %i.ak = getelementptr [16 x i8], ptr %i.aj, i64 %i.ag
  %i.al = getelementptr i8, ptr %i.ak, i64 -16
  %.0.i.i.i8 = select i1 %i.ah, ptr %i.ai, ptr %i.al
  %i.am = load i64, ptr %.0.i.i.i8, align 8, !tbaa !391
  %i.an = icmp eq i64 %i.am, %3
  br i1 %i.an, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i64 %.sroa.223.0.copyload, 4        ; 3 uses
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !384
  %i.ap = add nsw i64 %.0431, -1
  %i.aq = icmp sgt i64 %.0431, 1
  br i1 %i.aq, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !804

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i64, ptr %i.a, align 8, !tbaa !384
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ar = phi i64 [ %i.ao, %._crit_edge.loopexit ], [ %i.d, %bb.a ] ; 6 uses
  %i.as = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %i.at = sub i64 %i.as, %i.ar
  switch i64 %i.at, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge35
  ]

._crit_edge._crit_edge35:                         ; preds = %._crit_edge
  %.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8, !tbaa !759
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.sroa.012.0.copyload.pre = load ptr, ptr %1, align 8, !tbaa !759
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %.sroa.014.0.copyload = load ptr, ptr %1, align 8, !tbaa !759 ; 3 uses
  %i.au = icmp eq i64 %i.ar, 0
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr [16 x i8], ptr %i.ay, i64 %i.ar
  %i.ba = getelementptr i8, ptr %i.az, i64 -16
  %.0.i.i.i9 = select i1 %i.au, ptr %i.aw, ptr %i.ba
  %i.bb = load i64, ptr %.0.i.i.i9, align 8, !tbaa !391
  %i.bc = icmp eq i64 %i.bb, %3
  br i1 %i.bc, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !384
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %.sroa.213.0.copyload = phi i64 [ %i.ar, %._crit_edge._crit_edge ], [ %i.bd, %bb.h ] ; 3 uses
  %.sroa.012.0.copyload = phi ptr [ %.sroa.012.0.copyload.pre, %._crit_edge._crit_edge ], [ %.sroa.014.0.copyload, %bb.h ] ; 3 uses
  %i.be = icmp eq i64 %.sroa.213.0.copyload, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr [16 x i8], ptr %i.bi, i64 %.sroa.213.0.copyload
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %.0.i.i.i10 = select i1 %i.be, ptr %i.bg, ptr %i.bk
  %i.bl = load i64, ptr %.0.i.i.i10, align 8, !tbaa !391
  %i.bm = icmp eq i64 %i.bl, %3
  br i1 %i.bm, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add i64 %.sroa.213.0.copyload, 1        ; 2 uses
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !384
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge35, %bb.j
  %.sroa.2.0.copyload = phi i64 [ %i.ar, %._crit_edge._crit_edge35 ], [ %i.bn, %bb.j ] ; 3 uses
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %._crit_edge._crit_edge35 ], [ %.sroa.012.0.copyload, %bb.j ] ; 2 uses
  %i.bo = icmp eq i64 %.sroa.2.0.copyload, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr [16 x i8], ptr %i.bs, i64 %.sroa.2.0.copyload
  %i.bu = getelementptr i8, ptr %i.bt, i64 -16
  %.0.i.i.i11 = select i1 %i.bo, ptr %i.bq, ptr %i.bu
end_hunk_0
