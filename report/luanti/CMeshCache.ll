Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CMeshCache?download=true
inline.NumInlined: 423
inline.NumDeleted: 164
begin_hunk_0_@_ZN2io10SNamedPath7setPathERKN4core6stringIcEE:bb.a
  %i.dc = icmp ult <16 x i32> %i.db, splat (i32 26)
  %i.dd = add <16 x i8> %wide.load147, splat (i8 32)
  %i.de = select <16 x i1> %i.dc, <16 x i8> %i.dd, <16 x i8> %wide.load147
  store <16 x i8> %i.de, ptr %next.gep146, align 1, !tbaa !17
  %index.next148 = add nuw i64 %index145, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.df, label %middle.block149, label %vector.body144, !llvm.loop !59

middle.block149:                                  ; preds = %vector.body144
  %cmp.n150 = icmp eq i64 %.pr10.i, %n.vec143
  br i1 %cmp.n150, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %vec.epilog.iter.check154

vec.epilog.iter.check154:                         ; preds = %middle.block149
  %min.epilog.iters.check155 = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check155, label %.lr.ph.i.i4.i.preheader, label %vec.epilog.ph156, !prof !48

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check154
  %vec.epilog.resume.val151 = phi i64 [ %n.vec143, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check140 ]
  %n.vec157 = and i64 %.pr10.i, -4                ; 3 uses
  %i.dg = getelementptr i8, ptr %i.cw, i64 %n.vec157
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %vec.epilog.vector.body158, %vec.epilog.ph156
  %index159 = phi i64 [ %vec.epilog.resume.val151, %vec.epilog.ph156 ], [ %index.next162, %vec.epilog.vector.body158 ] ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.cw, i64 %index159 ; 2 uses
  %wide.load161 = load <4 x i8>, ptr %next.gep160, align 1, !tbaa !17 ; 3 uses
  %i.dh = sext <4 x i8> %wide.load161 to <4 x i32>
  %i.di = add nsw <4 x i32> %i.dh, splat (i32 -65)
  %i.dj = icmp ult <4 x i32> %i.di, splat (i32 26)
  %i.dk = add <4 x i8> %wide.load161, splat (i8 32)
  %i.dl = select <4 x i1> %i.dj, <4 x i8> %i.dk, <4 x i8> %wide.load161
  store <4 x i8> %i.dl, ptr %next.gep160, align 1, !tbaa !17
  %index.next162 = add nuw i64 %index159, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.dm, label %vec.epilog.middle.block163, label %vec.epilog.vector.body158, !llvm.loop !60

vec.epilog.middle.block163:                       ; preds = %vec.epilog.vector.body158
  %cmp.n164 = icmp eq i64 %.pr10.i, %n.vec157
  br i1 %cmp.n164, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i.preheader

.lr.ph.i.i4.i.preheader:                          ; preds = %iter.check152, %vec.epilog.iter.check154, %vec.epilog.middle.block163
  %.sroa.0.08.i.i.i.ph = phi ptr [ %i.cw, %iter.check152 ], [ %i.cz, %vec.epilog.iter.check154 ], [ %i.dg, %vec.epilog.middle.block163 ]
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %.lr.ph.i.i4.i.preheader, %.lr.ph.i.i4.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i4.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i4.i.preheader ] ; 3 uses
  %i.dn = load i8, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !17 ; 3 uses
  %i.do = sext i8 %i.dn to i32
  %i.dp = add nsw i32 %i.do, -65
  %or.cond.i.i.i.i.i = icmp ult i32 %i.dp, 26
  %i.dq = add i8 %i.dn, 32
  %i.dr = select i1 %or.cond.i.i.i.i.i, i8 %i.dq, i8 %i.dn
  store i8 %i.dr, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !17
  %i.ds = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 1 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ds, %i.cx
  br i1 %.not.i.i5.i, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i, !llvm.loop !61

_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit: ; preds = %.lr.ph.i.i4.i, %middle.block149, %vec.epilog.middle.block163, %_ZN4core6stringIcEC2ERKS1_.exit.i, %_ZN4core6stringIcE7replaceEcc.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4core6stringIcEaSERKS1_.exit4 unwind label %bb.f

_ZN4core6stringIcEaSERKS1_.exit4:                 ; preds = %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit
  %i.du = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.b
  br i1 %i.dv, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIcEaSERKS1_.exit4
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !17
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #22
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %_ZN4core6stringIcEaSERKS1_.exit4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.f:                                             ; preds = %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.b
  br i1 %i.ea, label %_ZN4core6stringIcED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.f
  %i.eb = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #22
  br label %_ZN4core6stringIcED2Ev.exit7

_ZN4core6stringIcED2Ev.exit7:                     ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene10CMeshCache10renameMeshEPKNS_5IMeshERKN4core6stringIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72                  ; 3 uses
  %i.i = and i64 %i.h, 4294967295
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE4sortEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.h, 4294967295
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond24.not, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE4sortEv.exit, label %.lr.ph, !llvm.loop !63

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %exitcond.not, label %bb.c, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit

bb.c:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj) #23
  unreachable

_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit10, label %bb.b

_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit10: ; preds = %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit
  tail call void @_ZN2io10SNamedPath7setPathERKN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !39, !range !40, !noundef !41
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE4sortEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit10
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !42   ; 6 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !42   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = sdiv exact i64 %i.u, 72
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = xor i64 %i.x, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.q, ptr %i.r, i64 noundef %i.y)
  %i.z = icmp sgt i64 %i.u, 1152
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 1152 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.q, ptr nonnull %i.aa)
  %.not4.i.i.i.i.i = icmp eq ptr %i.aa, %i.r
  br i1 %.not4.i.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.f ] ; 2 uses
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.q, ptr %i.r)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %bb.f, %bb.d
  store i8 1, ptr %i.n, align 8, !tbaa !39
  br label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE4sortEv.exit

_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE4sortEv.exit: ; preds = %bb.b, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.i, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit10
  %i.ac = phi i1 [ true, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit10 ], [ true, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene10CMeshCache12isMeshLoadedERKN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.e = icmp ne ptr %i.d, null
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5scene10CMeshCache5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72
  %i.i = and i64 %i.h, 4294967295
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not38 = icmp eq ptr %i.c, %i.d
  br i1 %.not38, label %23, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit.peel

_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit.peel: ; preds = %.lr.ph.preheader
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %2 = load ptr, ptr %1, align 8, !tbaa !33       ; 2 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = getelementptr i8, ptr %3, i64 -24
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %2, i64 %5  ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %8 = load i32, ptr %7, align 8, !tbaa !28       ; 2 uses
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %.loopexit37

10:                                               ; preds = %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit.peel
  %11 = add nsw i32 %8, -1                        ; 2 uses
  store i32 %11, ptr %7, align 8, !tbaa !28
  %.not.i.peel = icmp eq i32 %11, 0
  br i1 %.not.i.peel, label %12, label %_ZNK17IReferenceCounted4dropEv.exit.peel

12:                                               ; preds = %10
  %13 = load ptr, ptr %6, align 8, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(12) %6) #24, !inline_history !1
  %.pre.peel = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre21.peel = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %_ZNK17IReferenceCounted4dropEv.exit.peel

_ZNK17IReferenceCounted4dropEv.exit.peel:         ; preds = %12, %10
  %16 = phi ptr [ %i.d, %10 ], [ %.pre21.peel, %12 ] ; 3 uses
  %17 = phi ptr [ %i.c, %10 ], [ %.pre.peel, %12 ] ; 3 uses
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64                   ; 2 uses
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 72
  %22 = and i64 %21, 4294967294
  %.not39 = icmp eq i64 %22, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit.peel, %_ZNK17IReferenceCounted4dropEv.exit, %bb.a
  %.lcssa8 = phi ptr [ %i.c, %bb.a ], [ %17, %_ZNK17IReferenceCounted4dropEv.exit.peel ], [ %i.ar, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %.lcssa5 = phi ptr [ %i.d, %bb.a ], [ %16, %_ZNK17IReferenceCounted4dropEv.exit.peel ], [ %i.aq, %_ZNK17IReferenceCounted4dropEv.exit ] ; 4 uses
  %.lcssa = phi i64 [ %i.f, %bb.a ], [ %19, %_ZNK17IReferenceCounted4dropEv.exit.peel ], [ %i.at, %_ZNK17IReferenceCounted4dropEv.exit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %.not4.i.i.i.i = icmp eq ptr %.lcssa5, %.lcssa8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i.i.i ], [ %.lcssa5, %._crit_edge ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i.i

_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !17
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %.lcssa8
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i.i.i, %._crit_edge
  %.not.i.i1.i.i = icmp eq ptr %.lcssa5, null
  br i1 %.not.i.i1.i.i, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.x = ptrtoint ptr %i.k to i64
  %i.y = sub i64 %i.x, %.lcssa
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa5, i64 noundef %i.y) #22
  br label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5clearEv.exit

_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.z, align 8, !tbaa !39
  ret void

.lr.ph:                                           ; preds = %_ZNK17IReferenceCounted4dropEv.exit.peel, %_ZNK17IReferenceCounted4dropEv.exit
  %i.aa = phi ptr [ %i.aq, %_ZNK17IReferenceCounted4dropEv.exit ], [ %16, %_ZNK17IReferenceCounted4dropEv.exit.peel ] ; 2 uses
  %i.ab = phi ptr [ %i.ar, %_ZNK17IReferenceCounted4dropEv.exit ], [ %17, %_ZNK17IReferenceCounted4dropEv.exit.peel ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK17IReferenceCounted4dropEv.exit ], [ 1, %_ZNK17IReferenceCounted4dropEv.exit.peel ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.c, label %.loopexit37

23:                                               ; preds = %.lr.ph.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj) #23
  unreachable

.loopexit37:                                      ; preds = %.lr.ph, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit.peel
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #23
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.am = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !28
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #24, !inline_history !1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre21 = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  %i.aq = phi ptr [ %i.aa, %bb.c ], [ %.pre21, %bb.d ] ; 3 uses
  %i.ar = phi ptr [ %i.ab, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 72
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = icmp samesign ult i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !64
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene10CMeshCache17clearUnusedMeshesEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72                  ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.j = phi ptr [ %i.al, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.am, %bb.d ], [ %i.c, %bb.a ]
  %i.l = phi i64 [ %i.ar, %bb.d ], [ %i.h, %bb.a ]
  %.07 = phi i32 [ %i.an, %bb.d ], [ 0, %bb.a ]   ; 3 uses
  %i.m = zext i32 %.07 to i64                     ; 4 uses
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj) #23
  unreachable

_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.d

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit
  store i32 0, ptr %i.v, align 8, !tbaa !28
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.u) #24, !inline_history !1
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 72
  %i.ah = icmp ugt i64 %i.ag, %i.m
  br i1 %i.ah, label %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5eraseEj.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 363, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5eraseEj) #23
  unreachable

_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5eraseEj.exit: ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %i.m
  %i.aj = tail call ptr @_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(25) %i.a, ptr %i.ai) ; 0 uses
  %i.ak = add i32 %.07, -1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre8 = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5eraseEj.exit
  %i.al = phi ptr [ %.pre8, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5eraseEj.exit ], [ %i.j, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit ] ; 2 uses
  %i.am = phi ptr [ %.pre, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5eraseEj.exit ], [ %i.k, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit ] ; 2 uses
  %.1 = phi i32 [ %i.ak, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEE5eraseEj.exit ], [ %.07, %_ZN4core5arrayIN5scene10CMeshCache9MeshEntryEEixEj.exit ]
  %i.an = add i32 %.1, 1                          ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 72                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp ult i32 %i.an, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !66
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10IMeshCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10IMeshCacheD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene10IMeshCacheD1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene10IMeshCacheD0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5scene10CMeshCache9MeshEntryEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i
  %.05.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4core6stringIcED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i.i.i

_ZN4core6stringIcED2Ev.exit.i.i.i.i:              ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %.05.i, align 8, !tbaa !16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i

_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5scene10CMeshCache9MeshEntryEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5scene10CMeshCache9MeshEntryEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN2io10SNamedPathC2ERKN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_ZN4core6stringIcEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4core6stringIcEC2ERKS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.c, %.body
  %.sink = phi ptr [ %i.ec, %.body ], [ %i.e, %bb.c ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.m, %.body ], [ %i.d, %bb.c ]
  %i.g = load i64, ptr %i.a, align 8, !tbaa !17
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.h) #22
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.m, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN4core6stringIcEC2ERKS1_.exit:                  ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !43, !alias.scope !75
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.k, align 8, !tbaa !44, !alias.scope !75
  store i8 0, ptr %i.j, align 8, !tbaa !17, !alias.scope !75
  %i.l = icmp eq ptr %i.i, %1
  br i1 %i.l, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4core6stringIcEC2ERKS1_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4core6stringIcEC2ERKS1_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !16, !alias.scope !75 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.j
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.j, align 8, !tbaa !17, !alias.scope !75
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #22
  br label %.body

_ZN4core6stringIcEC2ERKS1_.exit.i:                ; preds = %bb.d
  %.pr.i = load i64, ptr %i.k, align 8, !tbaa !44, !alias.scope !75 ; 9 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !16, !alias.scope !75 ; 44 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pr.i
  %.not6.i.i.i = icmp samesign eq i64 %.pr.i, 0
  br i1 %.not6.i.i.i, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.i
  %min.iters.check = icmp ult i64 %.pr.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %.pr.i, 32
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %.pr.i, 24
  %n.vec = and i64 %.pr.i, -32                    ; 4 uses
  %i.u = getelementptr i8, ptr %i.r, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue110
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue110 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %index ; 3 uses
  %i.v = getelementptr i8, ptr %i.r, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.v, i64 1
  %i.w = getelementptr i8, ptr %i.r, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.w, i64 2
  %i.x = getelementptr i8, ptr %i.r, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.x, i64 3
  %i.y = getelementptr i8, ptr %i.r, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.y, i64 4
  %i.z = getelementptr i8, ptr %i.r, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.z, i64 5
  %i.aa = getelementptr i8, ptr %i.r, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.aa, i64 6
  %i.ab = getelementptr i8, ptr %i.r, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.ab, i64 7
  %i.ac = getelementptr i8, ptr %i.r, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.ac, i64 8
  %i.ad = getelementptr i8, ptr %i.r, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.ad, i64 9
  %i.ae = getelementptr i8, ptr %i.r, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.ae, i64 10
  %i.af = getelementptr i8, ptr %i.r, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.af, i64 11
  %i.ag = getelementptr i8, ptr %i.r, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.ag, i64 12
  %i.ah = getelementptr i8, ptr %i.r, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.ah, i64 13
  %i.ai = getelementptr i8, ptr %i.r, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.ai, i64 14
  %i.aj = getelementptr i8, ptr %i.r, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.aj, i64 15
  %i.ak = getelementptr i8, ptr %i.r, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.ak, i64 16
  %i.al = getelementptr i8, ptr %i.r, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.al, i64 17
  %i.am = getelementptr i8, ptr %i.r, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.am, i64 18
  %i.an = getelementptr i8, ptr %i.r, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.an, i64 19
  %i.ao = getelementptr i8, ptr %i.r, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.ao, i64 20
  %i.ap = getelementptr i8, ptr %i.r, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.ap, i64 21
  %i.aq = getelementptr i8, ptr %i.r, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.aq, i64 22
  %i.ar = getelementptr i8, ptr %i.r, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.ar, i64 23
  %i.as = getelementptr i8, ptr %i.r, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.as, i64 24
  %i.at = getelementptr i8, ptr %i.r, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.at, i64 25
  %i.au = getelementptr i8, ptr %i.r, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.au, i64 26
  %i.av = getelementptr i8, ptr %i.r, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.av, i64 27
  %i.aw = getelementptr i8, ptr %i.r, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.aw, i64 28
  %i.ax = getelementptr i8, ptr %i.r, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.ax, i64 29
  %i.ay = getelementptr i8, ptr %i.r, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.ay, i64 30
  %i.az = getelementptr i8, ptr %i.r, i64 %index
  %next.gep47 = getelementptr i8, ptr %i.az, i64 31
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load48 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !17
  %i.bb = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.bc = icmp eq <16 x i8> %wide.load48, splat (i8 92) ; 16 uses
  %i.bd = extractelement <16 x i1> %i.bb, i64 0
  br i1 %i.bd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !17
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.be = extractelement <16 x i1> %i.bb, i64 1
  br i1 %i.be, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue
  store i8 47, ptr %next.gep17, align 1, !tbaa !17
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue
  %i.bf = extractelement <16 x i1> %i.bb, i64 2
  br i1 %i.bf, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  store i8 47, ptr %next.gep18, align 1, !tbaa !17
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.bg = extractelement <16 x i1> %i.bb, i64 3
  br i1 %i.bg, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  store i8 47, ptr %next.gep19, align 1, !tbaa !17
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.bh = extractelement <16 x i1> %i.bb, i64 4
  br i1 %i.bh, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  store i8 47, ptr %next.gep20, align 1, !tbaa !17
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.bi = extractelement <16 x i1> %i.bb, i64 5
  br i1 %i.bi, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  store i8 47, ptr %next.gep21, align 1, !tbaa !17
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.bj = extractelement <16 x i1> %i.bb, i64 6
  br i1 %i.bj, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  store i8 47, ptr %next.gep22, align 1, !tbaa !17
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.bk = extractelement <16 x i1> %i.bb, i64 7
  br i1 %i.bk, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  store i8 47, ptr %next.gep23, align 1, !tbaa !17
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.bl = extractelement <16 x i1> %i.bb, i64 8
  br i1 %i.bl, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  store i8 47, ptr %next.gep24, align 1, !tbaa !17
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.bm = extractelement <16 x i1> %i.bb, i64 9
  br i1 %i.bm, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  store i8 47, ptr %next.gep25, align 1, !tbaa !17
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.bn = extractelement <16 x i1> %i.bb, i64 10
  br i1 %i.bn, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  store i8 47, ptr %next.gep26, align 1, !tbaa !17
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.bo = extractelement <16 x i1> %i.bb, i64 11
  br i1 %i.bo, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  store i8 47, ptr %next.gep27, align 1, !tbaa !17
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.bp = extractelement <16 x i1> %i.bb, i64 12
  br i1 %i.bp, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  store i8 47, ptr %next.gep28, align 1, !tbaa !17
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %i.bq = extractelement <16 x i1> %i.bb, i64 13
  br i1 %i.bq, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue72
  store i8 47, ptr %next.gep29, align 1, !tbaa !17
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue72
  %i.br = extractelement <16 x i1> %i.bb, i64 14
  br i1 %i.br, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue74
  store i8 47, ptr %next.gep30, align 1, !tbaa !17
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %i.bs = extractelement <16 x i1> %i.bb, i64 15
  br i1 %i.bs, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  store i8 47, ptr %next.gep31, align 1, !tbaa !17
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.bt = extractelement <16 x i1> %i.bc, i64 0
  br i1 %i.bt, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  store i8 47, ptr %next.gep32, align 1, !tbaa !17
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.bu = extractelement <16 x i1> %i.bc, i64 1
  br i1 %i.bu, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  store i8 47, ptr %next.gep33, align 1, !tbaa !17
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.bv = extractelement <16 x i1> %i.bc, i64 2
  br i1 %i.bv, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  store i8 47, ptr %next.gep34, align 1, !tbaa !17
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.bw = extractelement <16 x i1> %i.bc, i64 3
  br i1 %i.bw, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  store i8 47, ptr %next.gep35, align 1, !tbaa !17
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.bx = extractelement <16 x i1> %i.bc, i64 4
  br i1 %i.bx, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  store i8 47, ptr %next.gep36, align 1, !tbaa !17
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %i.by = extractelement <16 x i1> %i.bc, i64 5
  br i1 %i.by, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  store i8 47, ptr %next.gep37, align 1, !tbaa !17
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.bz = extractelement <16 x i1> %i.bc, i64 6
  br i1 %i.bz, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  store i8 47, ptr %next.gep38, align 1, !tbaa !17
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %i.ca = extractelement <16 x i1> %i.bc, i64 7
  br i1 %i.ca, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  store i8 47, ptr %next.gep39, align 1, !tbaa !17
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %i.cb = extractelement <16 x i1> %i.bc, i64 8
  br i1 %i.cb, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  store i8 47, ptr %next.gep40, align 1, !tbaa !17
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.cc = extractelement <16 x i1> %i.bc, i64 9
  br i1 %i.cc, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  store i8 47, ptr %next.gep41, align 1, !tbaa !17
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.cd = extractelement <16 x i1> %i.bc, i64 10
  br i1 %i.cd, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  store i8 47, ptr %next.gep42, align 1, !tbaa !17
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.ce = extractelement <16 x i1> %i.bc, i64 11
  br i1 %i.ce, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  store i8 47, ptr %next.gep43, align 1, !tbaa !17
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.cf = extractelement <16 x i1> %i.bc, i64 12
  br i1 %i.cf, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 47, ptr %next.gep44, align 1, !tbaa !17
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.cg = extractelement <16 x i1> %i.bc, i64 13
  br i1 %i.cg, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 47, ptr %next.gep45, align 1, !tbaa !17
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.ch = extractelement <16 x i1> %i.bc, i64 14
  br i1 %i.ch, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  store i8 47, ptr %next.gep46, align 1, !tbaa !17
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.ci = extractelement <16 x i1> %i.bc, i64 15
  br i1 %i.ci, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  store i8 47, ptr %next.gep47, align 1, !tbaa !17
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %pred.store.continue110
  %cmp.n = icmp eq i64 %.pr.i, %n.vec
  br i1 %cmp.n, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %.pr.i, -8                  ; 3 uses
  %i.ck = getelementptr i8, ptr %i.r, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue137, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %pred.store.continue137 ] ; 9 uses
  %next.gep113 = getelementptr i8, ptr %i.r, i64 %index112 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep114 = getelementptr i8, ptr %i.cl, i64 1
  %i.cm = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep115 = getelementptr i8, ptr %i.cm, i64 2
  %i.cn = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep116 = getelementptr i8, ptr %i.cn, i64 3
  %i.co = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep117 = getelementptr i8, ptr %i.co, i64 4
  %i.cp = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep118 = getelementptr i8, ptr %i.cp, i64 5
  %i.cq = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep119 = getelementptr i8, ptr %i.cq, i64 6
  %i.cr = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep120 = getelementptr i8, ptr %i.cr, i64 7
  %wide.load121 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !17
  %i.cs = icmp eq <8 x i8> %wide.load121, splat (i8 92) ; 8 uses
  %i.ct = extractelement <8 x i1> %i.cs, i64 0
  br i1 %i.ct, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep113, align 1, !tbaa !17
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %vec.epilog.vector.body
  %i.cu = extractelement <8 x i1> %i.cs, i64 1
  br i1 %i.cu, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 47, ptr %next.gep114, align 1, !tbaa !17
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.cv = extractelement <8 x i1> %i.cs, i64 2
  br i1 %i.cv, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 47, ptr %next.gep115, align 1, !tbaa !17
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.cw = extractelement <8 x i1> %i.cs, i64 3
  br i1 %i.cw, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 47, ptr %next.gep116, align 1, !tbaa !17
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.cx = extractelement <8 x i1> %i.cs, i64 4
  br i1 %i.cx, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 47, ptr %next.gep117, align 1, !tbaa !17
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.cy = extractelement <8 x i1> %i.cs, i64 5
  br i1 %i.cy, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 47, ptr %next.gep118, align 1, !tbaa !17
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.cz = extractelement <8 x i1> %i.cs, i64 6
  br i1 %i.cz, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  store i8 47, ptr %next.gep119, align 1, !tbaa !17
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.da = extractelement <8 x i1> %i.cs, i64 7
  br i1 %i.da, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  store i8 47, ptr %next.gep120, align 1, !tbaa !17
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %index.next138 = add nuw i64 %index112, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next138, %n.vec111
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %pred.store.continue137
  %cmp.n139 = icmp eq i64 %.pr.i, %n.vec111
  br i1 %cmp.n139, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.g
  %.sroa.02.07.i.i.i = phi ptr [ %i.de, %bb.g ], [ %.sroa.02.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dc = load i8, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !17
  %i.dd = icmp eq i8 %i.dc, 92
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i8 47, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.s
  br i1 %.not.i.i.i, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %.lr.ph.i.i.i, !llvm.loop !71

_ZN4core6stringIcE7replaceEcc.exit.i:             ; preds = %bb.g, %vec.epilog.middle.block, %middle.block
  %.pr10.i = load i64, ptr %i.k, align 8, !tbaa !44, !alias.scope !75 ; 9 uses
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !16, !alias.scope !75 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.pr10.i
  %.not6.i.i3.i = icmp samesign eq i64 %.pr10.i, 0
  br i1 %.not6.i.i3.i, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %iter.check154

iter.check154:                                    ; preds = %_ZN4core6stringIcE7replaceEcc.exit.i
  %min.iters.check141 = icmp ult i64 %.pr10.i, 4
  br i1 %min.iters.check141, label %.lr.ph.i.i4.i.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %iter.check154
  %min.iters.check143 = icmp ult i64 %.pr10.i, 16
  br i1 %min.iters.check143, label %vec.epilog.ph158, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check142
  %i.dh = and i64 %.pr10.i, 12
  %n.vec145 = and i64 %.pr10.i, -16               ; 4 uses
  %i.di = getelementptr i8, ptr %i.df, i64 %n.vec145
  br label %vector.body146

vector.body146:                                   ; preds = %vector.ph144, %vector.body146
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next150, %vector.body146 ] ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.df, i64 %index147 ; 2 uses
  %wide.load149 = load <16 x i8>, ptr %next.gep148, align 1, !tbaa !17 ; 3 uses
  %i.dj = sext <16 x i8> %wide.load149 to <16 x i32>
  %i.dk = add nsw <16 x i32> %i.dj, splat (i32 -65)
  %i.dl = icmp ult <16 x i32> %i.dk, splat (i32 26)
  %i.dm = add <16 x i8> %wide.load149, splat (i8 32)
  %i.dn = select <16 x i1> %i.dl, <16 x i8> %i.dm, <16 x i8> %wide.load149
  store <16 x i8> %i.dn, ptr %next.gep148, align 1, !tbaa !17
  %index.next150 = add nuw i64 %index147, 16      ; 2 uses
  %i.do = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.do, label %middle.block151, label %vector.body146, !llvm.loop !72

middle.block151:                                  ; preds = %vector.body146
  %cmp.n152 = icmp eq i64 %.pr10.i, %n.vec145
  br i1 %cmp.n152, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %vec.epilog.iter.check156

vec.epilog.iter.check156:                         ; preds = %middle.block151
  %min.epilog.iters.check157 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check157, label %.lr.ph.i.i4.i.preheader, label %vec.epilog.ph158, !prof !48

vec.epilog.ph158:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check156
  %vec.epilog.resume.val153 = phi i64 [ %n.vec145, %vec.epilog.iter.check156 ], [ 0, %vector.main.loop.iter.check142 ]
  %n.vec159 = and i64 %.pr10.i, -4                ; 3 uses
  %i.dp = getelementptr i8, ptr %i.df, i64 %n.vec159
  br label %vec.epilog.vector.body160

vec.epilog.vector.body160:                        ; preds = %vec.epilog.vector.body160, %vec.epilog.ph158
  %index161 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph158 ], [ %index.next164, %vec.epilog.vector.body160 ] ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.df, i64 %index161 ; 2 uses
  %wide.load163 = load <4 x i8>, ptr %next.gep162, align 1, !tbaa !17 ; 3 uses
  %i.dq = sext <4 x i8> %wide.load163 to <4 x i32>
  %i.dr = add nsw <4 x i32> %i.dq, splat (i32 -65)
  %i.ds = icmp ult <4 x i32> %i.dr, splat (i32 26)
  %i.dt = add <4 x i8> %wide.load163, splat (i8 32)
  %i.du = select <4 x i1> %i.ds, <4 x i8> %i.dt, <4 x i8> %wide.load163
  store <4 x i8> %i.du, ptr %next.gep162, align 1, !tbaa !17
  %index.next164 = add nuw i64 %index161, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.dv, label %vec.epilog.middle.block165, label %vec.epilog.vector.body160, !llvm.loop !73

vec.epilog.middle.block165:                       ; preds = %vec.epilog.vector.body160
  %cmp.n166 = icmp eq i64 %.pr10.i, %n.vec159
  br i1 %cmp.n166, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i.preheader

.lr.ph.i.i4.i.preheader:                          ; preds = %iter.check154, %vec.epilog.iter.check156, %vec.epilog.middle.block165
  %.sroa.0.08.i.i.i.ph = phi ptr [ %i.df, %iter.check154 ], [ %i.di, %vec.epilog.iter.check156 ], [ %i.dp, %vec.epilog.middle.block165 ]
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %.lr.ph.i.i4.i.preheader, %.lr.ph.i.i4.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i4.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i4.i.preheader ] ; 3 uses
  %i.dw = load i8, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !17 ; 3 uses
  %i.dx = sext i8 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, -65
  %or.cond.i.i.i.i.i = icmp ult i32 %i.dy, 26
  %i.dz = add i8 %i.dw, 32
  %i.ea = select i1 %or.cond.i.i.i.i.i, i8 %i.dz, i8 %i.dw
  store i8 %i.ea, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !17
  %i.eb = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 1 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.eb, %i.dg
  br i1 %.not.i.i5.i, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i, !llvm.loop !74

_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit: ; preds = %.lr.ph.i.i4.i, %middle.block151, %vec.epilog.middle.block165, %_ZN4core6stringIcE7replaceEcc.exit.i, %_ZN4core6stringIcEC2ERKS1_.exit.i, %_ZN4core6stringIcEC2ERKS1_.exit
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ec = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.a
  br i1 %i.ed, label %common.resume, label %common.resume.sink.split
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !44
  store i8 0, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq ptr %i.b, %1
  br i1 %i.g, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, label %bb.c

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i:       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !44
  store i8 0, ptr %i.i, align 8, !tbaa !17
  br label %_ZN5scene10CMeshCache9MeshEntryC2ERKS1_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %common.resume.i.i, label %common.resume.i.i.sink.split

common.resume.i.i.sink.split:                     ; preds = %bb.d, %.body.i.i
  %.sink = phi ptr [ %i.y, %.body.i.i ], [ %i.l, %bb.d ]
  %common.resume.op.i.i.ph = phi { ptr, i32 } [ %i.t, %.body.i.i ], [ %i.k, %bb.d ]
  %i.n = load i64, ptr %i.e, align 8, !tbaa !17
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.o) #22
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %common.resume.i.i.sink.split, %.body.i.i, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.t, %.body.i.i ], [ %common.resume.op.i.i.ph, %common.resume.i.i.sink.split ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !44
  store i8 0, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZN5scene10CMeshCache9MeshEntryC2ERKS1_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.q, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.e
  br i1 %i.z, label %common.resume.i.i, label %common.resume.i.i.sink.split

_ZN5scene10CMeshCache9MeshEntryC2ERKS1_.exit:     ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !33
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5scene10CMeshCache9MeshEntryC2ERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !44
  store i8 0, ptr %i.r, align 8, !tbaa !17
  %i.t = icmp eq ptr %i.q, %2
  br i1 %i.t, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, label %bb.c

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i:       ; preds = %_ZNKSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !44
  store i8 0, ptr %i.v, align 8, !tbaa !17
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE12_M_check_lenEmPKc.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !17
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #22
  br label %.body.thread

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 4 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.ae, align 8, !tbaa !44
  store i8 0, ptr %i.ad, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ad
  br i1 %i.ai, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %bb.f
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
bb.g:                                             ; preds = %bb.e, %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !33
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5scene10CMeshCache9MeshEntryEPS2_ET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.i

_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.au = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5scene10CMeshCache9MeshEntryEPS2_ET0_T_S7_S6_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.at)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 unwind label %.body

_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit28, %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bg, %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i

_ZN4core6stringIcED2Ev.exit.i.i.i.i.i:            ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bb = load ptr, ptr %.05.i.i, align 8, !tbaa !16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !17
  %i.bf = add i64 %i.be, 1
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #22
  br label %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i

_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN5scene10CMeshCache9MeshEntryEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit28
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN5scene10CMeshCache9MeshEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryEEvT_S4_.exit
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #22
  br label %_ZNSt12_Vector_baseIN5scene10CMeshCache9MeshEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5scene10CMeshCache9MeshEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryEEvT_S4_.exit, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !22
  store ptr %i.au, ptr %i.a, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !25
  ret void

.body:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene10CMeshCache9MeshEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.thread

bb.i:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = tail call ptr @__cxa_begin_catch(ptr %i.bo) #24 ; 0 uses
  tail call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.q) #24
  br label %bb.k

.body.thread:                                     ; preds = %.body.i.i, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i, %.body
  %.sink58 = phi { ptr, i32 } [ %i.bm, %.body ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.x, %bb.d ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ag, %.body.i.i ]
  %.0.lpad-body38 = phi ptr [ %i.at, %.body ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.p, %bb.d ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.p, %.body.i.i ]
  %i.bq = extractvalue { ptr, i32 } %.sink58, 0
  %i.br = tail call ptr @__cxa_begin_catch(ptr %i.bq) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryEEvT_S4_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body38)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.body.thread, %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.i, %.body.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #22
  invoke void @__cxa_rethrow() #25
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bs

bb.m:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #23
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKN5scene10CMeshCache9MeshEntryEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not28 = icmp eq ptr %0, %1
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.030 = phi ptr [ %i.ab, %bb.f ], [ %2, %bb.a ] ; 19 uses
  %.01229 = phi ptr [ %i.aa, %bb.f ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.030, i64 16 ; 2 uses
  store ptr %i.a, ptr %.030, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq ptr %.030, %.01229
  br i1 %i.c, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i.i, label %bb.b

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i.i:     ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.030, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %.030, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %.030, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !44
  store i8 0, ptr %i.e, align 8, !tbaa !17
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %.030, ptr noundef nonnull align 8 dereferenceable(72) %.01229)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.030, i64 16 ; 2 uses
  %i.i = load ptr, ptr %.030, align 8, !tbaa !16  ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.030, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.030, i64 48 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %.030, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !44
  store i8 0, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %.01229, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.030, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.030, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.q, align 8, !tbaa !17
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i.i
  %i.v = load ptr, ptr %.030, align 8, !tbaa !16  ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.030, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %.01229, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33
  store ptr %i.z, ptr %i.x, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %.01229, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.aa, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

.body.sink.split:                                 ; preds = %.body.i.i.i, %bb.c
  %.sink65.in = phi ptr [ %i.h, %bb.c ], [ %i.p, %.body.i.i.i ]
  %.sink = phi ptr [ %i.i, %bb.c ], [ %i.v, %.body.i.i.i ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %.body.i.i.i ]
  %.sink65 = load i64, ptr %.sink65.in, align 8, !tbaa !17
  %i.ac = add i64 %.sink65, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body.i.i.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %.body.i.i.i ], [ %i.g, %bb.c ], [ %eh.lpad-body.ph, %.body.sink.split ]
  %i.ad = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5scene10CMeshCache9MeshEntryEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.030)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #25
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ab, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.body
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.af

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #23
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 4 uses
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.m = udiv exact i64 %i.k, 72
  br label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i.i

_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i.i: ; preds = %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.u, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.t, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.s, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  store ptr %i.q, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72
  %i.u = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.v = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.v, label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i, !llvm.loop !77

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i: ; preds = %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !23
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i, %bb.b, %bb.a
  %i.w = phi ptr [ %.pre.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i ], [ %i.h, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -72 ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !tbaa !23
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4core6stringIcED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i.i

_ZN4core6stringIcED2Ev.exit.i.i.i:                ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !16  ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -56 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #22
  br label %_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE.exit

_ZNSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE.exit: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4core5arrayIN5scene10CMeshCache9MeshEntryEE13binary_searchERKS3_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, %3
  br i1 %i.a, label %bb.c, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %.idx47 = mul nsw i64 %i.c, 72
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %.idx47 ; 2 uses
  %i.e = sext i32 %3 to i64
  %.idx48 = sub nsw i64 %i.e, %i.c                ; 2 uses
  %i.f = icmp sgt i64 %.idx48, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44   ; 6 uses
  br i1 %i.f, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %.idx48, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %.sroa.011.015.i.i, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = tail call i32 @memcmp(ptr noundef %i.q, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.s = sub i64 %i.n, %i.h
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.t = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.v = xor i64 %i.k, -1
  %i.w = add nsw i64 %.016.i.i, %i.v
  %.sroa.011.1.i.i = select i1 %i.t, ptr %i.u, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.t, i64 %i.w, i64 %i.k    ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit, !llvm.loop !78

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %.sroa.011.1.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !44   ; 4 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.z) ; 3 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 32
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.af = tail call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.ad, i64 noundef %.sroa.speculated.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread37, label %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread

_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit:    ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit
  %i.ag = sub i64 %i.z, %i.h
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24

_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread37: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.ai = sub i64 %i.z, %i.h
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21

_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.ak = icmp slt i32 %i.af, 0
  br i1 %i.ak, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21: ; preds = %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread37, %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread
  %i.al = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i22, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24, label %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit28

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24: ; preds = %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21
  %i.am = sub i64 %i.h, %i.z
  %spec.select7.i.i.i.i.i.i25 = tail call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i.i.i.i26 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i25, i64 2147483647)
  %.0.i6.i.i.i.i.i27 = trunc nsw i64 %.08.i.i.i.i.i.i26 to i32
  br label %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit28

_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit28:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24
  %.0.i.i.i.i.i23 = phi i32 [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21 ], [ %.0.i6.i.i.i.i.i27, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24 ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i23, 0
  br i1 %i.an, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit28
  %i.ao = ptrtoint ptr %.sroa.011.0.lcssa.i.i to i64
  %i.ap = ptrtoint ptr %i.b to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 72
  %i.as = trunc i64 %i.ar to i32
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread37, %bb.b, %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit28, %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit, %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.as, %bb.b ], [ -1, %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit28 ], [ -1, %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit ], [ -1, %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread ], [ -1, %_ZNK5scene10CMeshCache9MeshEntryltERKS1_.exit.thread37 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1152
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph24

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.i = icmp eq i64 %i.am, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph24, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.j, %.lr.ph.i8.i ], [ %storemerge14.lcssa, %._crit_edge ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -72 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr nonnull %i.j, ptr nonnull %i.j, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.a
  %i.m = icmp sgt i64 %i.l, 72
  br i1 %i.m, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !80

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph24:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1423 = phi ptr [ %.sroa.019.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01522 = phi i64 [ %i.am, %bb.b ], [ %2, %.lr.ph ]
  %i.n = phi i64 [ %i.ao, %bb.b ], [ %i.c, %.lr.ph ]
  %i.o = udiv i64 %i.n, 144
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %storemerge1423, i64 -72
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr nonnull %i.e, ptr %i.p, ptr nonnull %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph24
  %.sroa.019.0.i.i = phi ptr [ %i.e, %.lr.ph24 ], [ %i.ab, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1423, %.lr.ph24 ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.r = load i64, ptr %i.f, align 8, !tbaa !44   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %bb.c
  %.sroa.019.1.i.i = phi ptr [ %.sroa.019.0.i.i, %bb.c ], [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i ] ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 32
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.y = tail call i32 @memcmp(ptr noundef %i.x, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.z = sub i64 %i.t, %i.r
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 72 ; 2 uses
  br i1 %i.aa, label %bb.d, label %.preheader.i.i, !llvm.loop !81

.preheader.i.i:                                   ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i8.i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.r) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i8.i.i, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i: ; preds = %.preheader.i.i
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i.i8.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i10.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i10.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i, %.preheader.i.i
  %i.aj = sub i64 %i.r, %i.ad
  %spec.select7.i.i.i.i.i.i.i13.i.i = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i14.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i13.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i15.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i14.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i
  %.0.i.i.i.i.i.i11.i.i = phi i32 [ %i.ai, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i ], [ %.0.i6.i.i.i.i.i.i15.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i ]
  %i.ak = icmp slt i32 %.0.i.i.i.i.i.i11.i.i, 0
  br i1 %i.ak, label %.preheader.i.i, label %bb.e, !llvm.loop !82

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i
  %i.al = icmp ult ptr %.sroa.019.1.i.i, %.sroa.0.1.i.i
  br i1 %i.al, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt4swapIN5scene10CMeshCache9MeshEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.019.1.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.1.i.i)
  br label %bb.c, !llvm.loop !83

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.e
  %i.am = add nsw i64 %.01522, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.sroa.019.1.i.i, ptr %storemerge1423, i64 noundef %i.am)
  %i.an = ptrtoint ptr %.sroa.019.1.i.i to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 1152
  br i1 %i.ap, label %bb.b, label %.loopexit, !llvm.loop !79

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.scene::CMeshCache::MeshEntry", align 8 ; 17 uses
  %4 = alloca %"struct.scene::CMeshCache::MeshEntry", align 8 ; 13 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 72                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 144
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.c

bb.c:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit30, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.bj, %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit30 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.t = getelementptr inbounds [72 x i8], ptr %0, i64 %.010 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !43
  store i64 0, ptr %i.i, align 8, !tbaa !44
  store i8 0, ptr %i.h, align 8, !tbaa !17
  %i.u = icmp eq ptr %3, %i.t
  br i1 %i.u, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, label %bb.d

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i:       ; preds = %bb.c
  store ptr %i.k, ptr %i.j, align 8, !tbaa !43
  store i64 0, ptr %i.l, align 8, !tbaa !44
  store i8 0, ptr %i.k, align 8, !tbaa !17
  br label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.h, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #22
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.v, %bb.e ], [ %i.ab, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  store ptr %i.k, ptr %i.j, align 8, !tbaa !43
  store i64 0, ptr %i.l, align 8, !tbaa !44
  store i8 0, ptr %i.k, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.k
  br i1 %i.ad, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !17
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #22
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.h
  br i1 %i.ah, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i: ; preds = %.body.i.i
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !17
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #22
  br label %common.resume

_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit:      ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  store ptr %i.al, ptr %i.m, align 8, !tbaa !33
  store ptr %i.n, ptr %4, align 8, !tbaa !43
  store i64 0, ptr %i.o, align 8, !tbaa !44
  store i8 0, ptr %i.n, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.n
  br i1 %i.ao, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i12: ; preds = %bb.h
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #22
  br label %.body

bb.i:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit
  store ptr %i.q, ptr %i.p, align 8, !tbaa !43
  store i64 0, ptr %i.r, align 8, !tbaa !44
  store i8 0, ptr %i.q, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.q
  br i1 %i.at, label %.body.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i16: ; preds = %bb.j
  %i.au = load i64, ptr %i.q, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #22
  br label %.body.i.i17

.body.i.i17:                                      ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i16
  %i.aw = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.n
  br i1 %i.ax, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i18: ; preds = %.body.i.i17
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !17
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #22
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !33
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !33
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef %.010, i64 noundef %i.d, ptr noundef nonnull align 8 %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.q
  br i1 %i.bc, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23: ; preds = %bb.l
  %i.bd = load i64, ptr %i.q, align 8, !tbaa !17
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23
  %i.bf = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.n
  br i1 %i.bg, label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !17
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #22
  br label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit

_ZN5scene10CMeshCache9MeshEntryD2Ev.exit:         ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %.not = icmp eq i64 %.010, 0
  %i.bj = add nsw i64 %.010, -1
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.k
  br i1 %i.bl, label %_ZN4core6stringIcED2Ev.exit.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i25: ; preds = %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !17
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i26

_ZN4core6stringIcED2Ev.exit.i.i26:                ; preds = %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i25
  %i.bo = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.h
  br i1 %i.bp, label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i27: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i26
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !17
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #22
  br label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit30

_ZN5scene10CMeshCache9MeshEntryD2Ev.exit30:       ; preds = %_ZN4core6stringIcED2Ev.exit.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !84

bb.m:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #24
  br label %.body

.body:                                            ; preds = %.body.i.i17, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i12, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i18 ], [ %i.am, %bb.h ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i12 ], [ %i.ar, %.body.i.i17 ]
  call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

.loopexit:                                        ; preds = %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit30, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.scene::CMeshCache::MeshEntry", align 8 ; 22 uses
  %5 = alloca %"struct.scene::CMeshCache::MeshEntry", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq ptr %4, %2
  br i1 %i.c, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, label %bb.b

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i:       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !44
  store i8 0, ptr %i.e, align 8, !tbaa !17
  br label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.g, %bb.c ], [ %i.p, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !44
  store i8 0, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.m
  br i1 %i.r, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i
  %i.u = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i: ; preds = %.body.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %common.resume

_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit:      ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = icmp eq ptr %2, %0
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit, %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  store ptr %i.af, ptr %i.z, align 8, !tbaa !33
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 72
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !44
  store i8 0, ptr %i.ak, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ak
  br i1 %i.ao, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i4: ; preds = %bb.h
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #22
  br label %.body

bb.i:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.as, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !16 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.as
  br i1 %i.ax, label %.body.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i8: ; preds = %bb.j
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !17
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #22
  br label %.body.i.i9

.body.i.i9:                                       ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i8
  %i.ba = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ak
  br i1 %i.bb, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i10: ; preds = %.body.i.i9
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #22
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !33
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !33
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.aj, ptr noundef nonnull align 8 %5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !16 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.as
  br i1 %i.bh, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15: ; preds = %bb.l
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !17
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15
  %i.bk = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ak
  br i1 %i.bl, label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.bm = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #22
  br label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit

_ZN5scene10CMeshCache9MeshEntryD2Ev.exit:         ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %i.bo = load ptr, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4core6stringIcED2Ev.exit.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i17: ; preds = %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !17
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i18

_ZN4core6stringIcED2Ev.exit.i.i18:                ; preds = %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i17
  %i.bt = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.a
  br i1 %i.bu, label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i19: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i18
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !17
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #22
  br label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit22

_ZN5scene10CMeshCache9MeshEntryD2Ev.exit22:       ; preds = %_ZN4core6stringIcED2Ev.exit.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.m:                                             ; preds = %.noexc, %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #24
  br label %.body

.body:                                            ; preds = %.body.i.i9, %bb.h, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i4, %bb.n
  %.pn = phi { ptr, i32 } [ %i.by, %bb.n ], [ %i.bx, %bb.m ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i10 ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i4 ], [ %i.am, %bb.h ], [ %i.av, %.body.i.i9 ]
  call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 4 uses
  %5 = alloca %"struct.scene::CMeshCache::MeshEntry", align 8 ; 19 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit
  %.037 = phi i64 [ %spec.select, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.037, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [72 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [72 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.r = tail call i32 @memcmp(ptr noundef %i.q, ptr noundef %i.p, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph
  %i.s = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.t = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select = select i1 %i.t, i64 %i.g, i64 %i.e ; 5 uses
  %i.u = getelementptr inbounds [72 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.v = getelementptr inbounds [72 x i8], ptr %0, i64 %.037 ; 3 uses
  %i.w = icmp eq i64 %.037, %spec.select
  br i1 %i.w, label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.u)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit

_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit:      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !33
  %i.ac = icmp slt i64 %spec.select, %i.b
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit ] ; 6 uses
  %i.ad = and i64 %2, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.af = add nsw i64 %2, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = shl nsw i64 %.0.lcssa, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 3 uses
  %i.ak = getelementptr inbounds [72 x i8], ptr %0, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds [72 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.am = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.am, label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.ak)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
  br label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit25

_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit25:    ; preds = %bb.d, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit25, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.aj, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit25 ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !44
  store i8 0, ptr %i.as, align 8, !tbaa !17
  %i.au = icmp eq ptr %5, %3
  br i1 %i.au, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, label %bb.g

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i:       ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ax, align 8, !tbaa !44
  store i8 0, ptr %i.aw, align 8, !tbaa !17
  br label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.as
  br i1 %i.ba, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bb = load i64, ptr %i.as, align 8, !tbaa !17
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #22
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ay, %bb.h ], [ %i.bh, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bf, align 8, !tbaa !44
  store i8 0, ptr %i.be, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !16 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.be
  br i1 %i.bj, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %bb.j
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !17
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #22
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i
  %i.bm = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.as
  br i1 %i.bn, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i: ; preds = %.body.i.i
  %i.bo = load i64, ptr %i.as, align 8, !tbaa !17
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #22
  br label %common.resume

_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit:      ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !33
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !33
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26: ; preds = %bb.k
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !17
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26
  %i.bz = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.as
  br i1 %i.ca, label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.cb = load i64, ptr %i.as, align 8, !tbaa !17
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #22
  br label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit

_ZN5scene10CMeshCache9MeshEntryD2Ev.exit:         ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.l:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit
  %.019 = phi i64 [ %1, %.lr.ph ], [ %.0920, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit ] ; 4 uses
  %.0920.in = add nsw i64 %.019, -1
  %.0920 = sdiv i64 %.0920.in, 2                  ; 5 uses
  %i.d = getelementptr inbounds [72 x i8], ptr %0, i64 %.0920 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.f, %i.g
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit
  %i.o = getelementptr inbounds [72 x i8], ptr %0, i64 %.019 ; 3 uses
  %i.p = icmp eq i64 %.019, %.0920
  br i1 %i.p, label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  br label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit

_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit:      ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = icmp sgt i64 %.0920, %2
  br i1 %i.v, label %bb.b, label %.critedge, !llvm.loop !86

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.0920, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit ], [ %.019, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit ]
  %i.w = getelementptr inbounds [72 x i8], ptr %0, i64 %.0.lcssa ; 4 uses
  %i.x = icmp eq ptr %i.w, %3
  br i1 %i.x, label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit10, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %3)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
  br label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit10

_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit10:    ; preds = %.critedge, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44   ; 6 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.j = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.a
  %i.k = sub i64 %i.b, %i.d
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.l = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 8 uses
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.sroa.speculated.i.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.d) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i26, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i.i.i26) #24 ; 2 uses
  %.not.i.i.i.i.i.i28 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i28, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27, %bb.b
  %i.u = sub i64 %i.d, %i.n
  %spec.select7.i.i.i.i.i.i.i31 = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i32 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i31, i64 2147483647)
  %.0.i6.i.i.i.i.i.i33 = trunc nsw i64 %.08.i.i.i.i.i.i.i32 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30
  %.0.i.i.i.i.i.i29 = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27 ], [ %.0.i6.i.i.i.i.i.i33, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30 ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i29, 0
  br i1 %i.v, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34
  %.sroa.speculated.i.i.i.i.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.b) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i35, 0
  br i1 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.ab = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.z, i64 noundef %.sroa.speculated.i.i.i.i.i.i35) #24 ; 2 uses
  %.not.i.i.i.i.i.i37 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i37, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %bb.c
  %i.ac = sub i64 %i.b, %i.n
  %spec.select7.i.i.i.i.i.i.i40 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i.i.i.i41 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i40, i64 2147483647)
  %.0.i6.i.i.i.i.i.i42 = trunc nsw i64 %.08.i.i.i.i.i.i.i41 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39
  %.0.i.i.i.i.i.i38 = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36 ], [ %.0.i6.i.i.i.i.i.i42, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39 ]
  %i.ad = icmp slt i32 %.0.i.i.i.i.i.i38, 0
  %. = select i1 %i.ad, ptr %3, ptr %1
  br label %bb.f

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.sroa.speculated.i.i.i.i.i.i44 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.b) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i44, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i45: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.aj = tail call i32 @memcmp(ptr noundef %i.ai, ptr noundef %i.ah, i64 noundef %.sroa.speculated.i.i.i.i.i.i44) #24 ; 2 uses
  %.not.i.i.i.i.i.i46 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i46, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i45, %bb.d
  %i.ak = sub i64 %i.b, %i.n
  %spec.select7.i.i.i.i.i.i.i49 = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147483648)
  %.08.i.i.i.i.i.i.i50 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i.i.i.i51 = trunc nsw i64 %.08.i.i.i.i.i.i.i50 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit52

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i45, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48
  %.0.i.i.i.i.i.i47 = phi i32 [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i45 ], [ %.0.i6.i.i.i.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48 ]
  %i.al = icmp slt i32 %.0.i.i.i.i.i.i47, 0
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit52
  %.sroa.speculated.i.i.i.i.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.d) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i53, 0
  br i1 %i.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i54: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.ar = tail call i32 @memcmp(ptr noundef %i.aq, ptr noundef %i.ap, i64 noundef %.sroa.speculated.i.i.i.i.i.i53) #24 ; 2 uses
  %.not.i.i.i.i.i.i55 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i55, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i54, %bb.e
  %i.as = sub i64 %i.d, %i.n
  %spec.select7.i.i.i.i.i.i.i58 = tail call i64 @llvm.smax.i64(i64 %i.as, i64 -2147483648)
  %.08.i.i.i.i.i.i.i59 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i58, i64 2147483647)
  %.0.i6.i.i.i.i.i.i60 = trunc nsw i64 %.08.i.i.i.i.i.i.i59 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i57
  %.0.i.i.i.i.i.i56 = phi i32 [ %i.ar, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i54 ], [ %.0.i6.i.i.i.i.i.i60, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i57 ]
  %i.at = icmp slt i32 %.0.i.i.i.i.i.i56, 0
  %.66 = select i1 %i.at, ptr %3, ptr %2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit52, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34
  %.sink = phi ptr [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit52 ], [ %.66, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61 ], [ %., %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43 ]
  tail call void @_ZSt4swapIN5scene10CMeshCache9MeshEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sink)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt4swapIN5scene10CMeshCache9MeshEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.scene::CMeshCache::MeshEntry", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !17
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #22
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.c, %bb.b ], [ %i.l, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZSt4swapIN5scene10CMeshCache9MeshEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_:bb.a
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc6
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !33
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !33
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.i
  br i1 %i.ae, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9: ; preds = %bb.g
  %i.af = load i64, ptr %i.i, align 8, !tbaa !17
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i9
  %i.ah = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !17
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #22
  br label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit

_ZN5scene10CMeshCache9MeshEntryD2Ev.exit:         ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.h:                                             ; preds = %.noexc6, %bb.f, %.noexc, %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.scene::CMeshCache::MeshEntry", align 8 ; 18 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit21, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.032 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.0.032, %1
  br i1 %.not33, label %.loopexit21, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = icmp eq ptr %0, %2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.035 = phi ptr [ %.sroa.0.032, %.lr.ph ], [ %.sroa.0.0, %bb.m ] ; 7 uses
  %.pn34 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.035, %bb.m ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn34, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.n) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pn34, i64 104
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.t = call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.u = sub i64 %i.n, %i.o
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.v, label %bb.c, label %bb.l

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.d, ptr %2, align 8, !tbaa !43
  store i64 0, ptr %i.e, align 8, !tbaa !44
  store i8 0, ptr %i.d, align 8, !tbaa !17
  %i.w = icmp eq ptr %2, %.sroa.0.035
  br i1 %i.w, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, label %bb.d

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i:       ; preds = %bb.c
  store ptr %i.g, ptr %i.f, align 8, !tbaa !43
  store i64 0, ptr %i.h, align 8, !tbaa !44
  store i8 0, ptr %i.g, align 8, !tbaa !17
  br label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.035)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !17
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #22
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.k ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.x, %bb.e ], [ %i.ad, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  store ptr %i.g, ptr %i.f, align 8, !tbaa !43
  store i64 0, ptr %i.h, align 8, !tbaa !44
  store i8 0, ptr %i.g, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn34, i64 104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.g
  br i1 %i.af, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !17
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #22
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i
  %i.ai = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i: ; preds = %.body.i.i
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #22
  br label %common.resume

_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit:      ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.pn34, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  store ptr %i.an, ptr %i.i, align 8, !tbaa !33
  %i.ao = ptrtoint ptr %.sroa.0.035 to i64
  %i.ap = sub i64 %i.ao, %i.j                     ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit20

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn34, i64 144
  %i.as = udiv exact i64 %i.ap, 72
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ba, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.au, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.at, %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.0.035, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -72 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -72 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.at)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i unwind label %.loopexit

_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !33
  %i.ba = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bb = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.h, label %.loopexit20, !llvm.loop !87

.loopexit20:                                      ; preds = %_ZN5scene10CMeshCache9MeshEntryaSEOS1_.exit.i.i.i.i.i, %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %.loopexit20, %.noexc8
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !33
  store ptr %i.bc, ptr %i.l, align 8, !tbaa !33
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.g
  br i1 %i.be, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10: ; preds = %bb.j
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !17
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10
  %i.bh = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.d
  br i1 %i.bi, label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !17
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #22
  br label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit

_ZN5scene10CMeshCache9MeshEntryD2Ev.exit:         ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.m

.loopexit:                                        ; preds = %bb.h, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.i, %.noexc8
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.035)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, %bb.l
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 72 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit21, label %bb.b, !llvm.loop !88

.loopexit21:                                      ; preds = %bb.m, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5scene10CMeshCache9MeshEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.scene::CMeshCache::MeshEntry", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq ptr %1, %0
  br i1 %i.c, label %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, label %bb.b

_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i:       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !44
  store i8 0, ptr %i.e, align 8, !tbaa !17
  br label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.j ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.g, %bb.c ], [ %i.p, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !44
  store i8 0, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.m
  br i1 %i.r, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i
  %i.u = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i: ; preds = %.body.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %common.resume

_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit:      ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit
  %.sroa.09.0 = phi ptr [ %0, %_ZN5scene10CMeshCache9MeshEntryC2EOS1_.exit ], [ %.sroa.0.0, %bb.i ] ; 12 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -72 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ad) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ak = call i32 @memcmp(ptr noundef %i.aj, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %bb.g

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.al = sub i64 %i.ad, %i.af
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.am, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.09.0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  %i.an = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -40
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %.noexc
  %i.ap = getelementptr inbounds i8, ptr %.sroa.09.0, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !33
  br label %bb.f, !llvm.loop !89

.loopexit:                                        ; preds = %bb.h, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.l, %.noexc2
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5scene10CMeshCache9MeshEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.as = icmp eq ptr %.sroa.09.0, %1
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.09.0, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc2 unwind label %.loopexit.split-lp

.noexc2:                                          ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.k, %.noexc2
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 64
  store ptr %i.au, ptr %i.av, align 8, !tbaa !33
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i5: ; preds = %bb.m
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #22
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i5
  %i.bb = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.a
  br i1 %i.bc, label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !17
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #22
  br label %_ZN5scene10CMeshCache9MeshEntryD2Ev.exit

_ZN5scene10CMeshCache9MeshEntryD2Ev.exit:         ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_CMeshCache.cpp() #19 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5sceneL14emptyNamedPathE, i64 16), ptr @_ZN5sceneL14emptyNamedPathE, align 8, !tbaa !43
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5sceneL14emptyNamedPathE, i64 8), align 8, !tbaa !44
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5sceneL14emptyNamedPathE, i64 16), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5sceneL14emptyNamedPathE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5sceneL14emptyNamedPathE, i64 32), align 8, !tbaa !43
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5sceneL14emptyNamedPathE, i64 40), align 8, !tbaa !44
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5sceneL14emptyNamedPathE, i64 48), align 8, !tbaa !17
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN2io10SNamedPathD2Ev, ptr nonnull @_ZN5sceneL14emptyNamedPathE, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !24}
!1 = distinct !{null}
!2 = distinct !{!2, !24}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !7, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!"vtable pointer", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTSN5scene10CMeshCache9MeshEntryE", !11, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN5scene10CMeshCache9MeshEntryESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !20, i64 8}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!21, !20, i64 16}
!26 = !{ptr @_ZN5scene10CMeshCacheD1Ev}
!27 = !{!"_ZTS17IReferenceCounted", !8, i64 8}
!28 = !{!27, !8, i64 8}
!29 = !{!"_ZTSN4core6stringIcEE", !15, i64 0}
!30 = !{!"_ZTSN2io10SNamedPathE", !29, i64 0, !29, i64 32}
!31 = !{!"p1 _ZTSN5scene13IAnimatedMeshE", !11, i64 0}
!32 = !{!"_ZTSN5scene10CMeshCache9MeshEntryE", !30, i64 0, !31, i64 64}
!33 = !{!32, !31, i64 64}
!34 = !{!"_ZTSNSt12_Vector_baseIN5scene10CMeshCache9MeshEntryESaIS2_EE12_Vector_implE", !21, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN5scene10CMeshCache9MeshEntryESaIS2_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN5scene10CMeshCache9MeshEntryESaIS2_EE", !35, i64 0}
!37 = !{!"bool", !7, i64 0}
!38 = !{!"_ZTSN4core5arrayIN5scene10CMeshCache9MeshEntryEEE", !36, i64 0, !37, i64 24}
!39 = !{!38, !37, i64 24}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!20, !20, i64 0}
!43 = !{!13, !12, i64 0}
!44 = !{!15, !14, i64 8}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 8, i32 24}
!48 = !{!"branch_weights", i32 4, i32 12}
!49 = !{ptr @_ZN5scene10CMeshCacheD0Ev, ptr @_ZN5scene10CMeshCacheD1Ev}
!50 = !{ptr @_ZN5scene10CMeshCacheD0Ev}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE"}
!55 = distinct !{!55, !54, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE: argument 0"}
!56 = distinct !{!56, !24, !45, !46}
!57 = distinct !{!57, !24, !45, !46}
!58 = distinct !{!58, !24, !46, !45}
!59 = distinct !{!59, !24, !45, !46}
!60 = distinct !{!60, !24, !45, !46}
!61 = distinct !{!61, !24, !46, !45}
!62 = !{!55}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24, !65}
!65 = !{!"llvm.loop.peeled.count", i32 1}
!66 = distinct !{!66, !24}
!67 = distinct !{!67, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE"}
!68 = distinct !{!68, !67, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE: argument 0"}
!69 = distinct !{!69, !24, !45, !46}
!70 = distinct !{!70, !24, !45, !46}
!71 = distinct !{!71, !24, !46, !45}
!72 = distinct !{!72, !24, !45, !46}
!73 = distinct !{!73, !24, !45, !46}
!74 = distinct !{!74, !24, !46, !45}
!75 = !{!68}
!76 = distinct !{!76, !24}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24}
end_hunk_2
