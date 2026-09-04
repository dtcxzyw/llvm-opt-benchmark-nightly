Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/layout_check?download=true
inline.NumInlined: 4839
inline.NumDeleted: 1623
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_mmmmEEEbPKcDpRKT_:bb.a
  %i.be = load ptr, ptr %11, align 8, !tbaa !106  ; 5 uses
  %i.bf = icmp eq ptr %i.be, %i.ao                ; 2 uses
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.bf, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.bf, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bg = load i64, ptr %i.ax, align 8, !tbaa !134 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  switch i64 %i.bg, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !107
  store i8 %i.bi, ptr %i.bb, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.be, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !134 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !134
  %i.bl = load ptr, ptr %0, align 8, !tbaa !106
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !107
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %0, align 8, !tbaa !106
  %i.bo = load <2 x i64>, ptr %i.ax, align 8, !tbaa !107
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !tbaa !107
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !107
  store ptr %i.be, ptr %0, align 8, !tbaa !106
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load <2 x i64>, ptr %i.ax, align 8, !tbaa !107
  store <2 x i64> %i.br, ptr %i.bq, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bb, ptr %11, align 8, !tbaa !106
  store i64 %i.bp, ptr %i.ao, align 8, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ao, ptr %11, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bs = phi ptr [ %i.bb, %bb.n ], [ %i.ao, %bb.o ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ax, align 8, !tbaa !134
  store i8 0, ptr %i.bs, align 1, !tbaa !107
  %i.bt = load ptr, ptr %11, align 8, !tbaa !106  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ao
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bv = load i64, ptr %i.ao, align 8, !tbaa !107
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker19check_load_commandsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !53, !align !54 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = icmp eq i32 %i.l, -17958194
  %i.n = icmp eq i32 %i.l, -822415874
  %spec.select.i = or i1 %i.m, %i.n
  %i.o = select i1 %spec.select.i, i64 28, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  %i.q = load i32, ptr %i.p, align 4, !tbaa !559
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.o, %i.r               ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !153
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.22)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !noalias !560 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !155 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %.not60181 = icmp eq ptr %i.aa, %i.y
  br i1 %.not60181, label %.thread125, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph: ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph, %.thread128
  %storemerge183 = phi i64 [ 0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.eq, %.thread128 ] ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.y, i64 %storemerge183
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97 ; 19 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !561 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %i.s
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !135 ; 3 uses
  %i.am = zext i32 %i.al to i64
  %i.an = add nuw nsw i64 %i.ai, %i.am
  %i.ao = icmp ugt i64 %i.an, %i.s
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !98
  %i.ar = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef %i.aq) #24
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !123
  %i.as = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmPKcEEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread125

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !98 ; 3 uses
  switch i64 %i.au, label %.thread [
    i64 2147483683, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 2147483672, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 32, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 13, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 12, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 2147483679, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
  ]

_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit: ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !563 ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, %i.al
  br i1 %i.ax, label %.thread114, label %bb.g

.thread114:                                       ; preds = %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bb = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef %i.au) #24
  store ptr %i.bb, ptr %i.c, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.bc = load i32, ptr %i.az, align 8, !tbaa !563
  store i32 %i.bc, ptr %i.d, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !135
  store i32 %i.bd, ptr %i.e, align 4, !tbaa !117
  %i.be = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcjjEEEbSA_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread125

bb.g:                                             ; preds = %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !156
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !157 ; 2 uses
  %1 = ptrtoint ptr %i.bi to i64                  ; 2 uses
  %i.bj = zext i32 %i.aw to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj ; 4 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = sub i64 %1, %i.bl                       ; 2 uses
  %i.bn = ashr i64 %i.bm, 2                       ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.bp = and i64 %i.bm, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.bk, i64 %i.bp ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i ], [ %i.cc, %bb.l ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %i.cb, %bb.l ] ; 9 uses
  %i.bq = load i8, ptr %.02946.i.i.i, align 1, !tbaa !107
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !107
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !107
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit233, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !107
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit235, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.cc = add nsw i64 %.047.i.i.i, -1
  %i.cd = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.cd, label %bb.h, label %._crit_edge.loopexit.i.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.l
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %.pre-phi.i.i.i = phi i64 [ %.pre54.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bl, %bb.g ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bk, %bb.g ] ; 5 uses
  %i.ce = sub i64 %1, %.pre-phi.i.i.i
  switch i64 %i.ce, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread [
    i64 3, label %bb.m
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cf = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !107
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.n
  %.1.i.i.i = phi ptr [ %i.ch, %bb.n ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ci = load i8, ptr %.1.i.i.i, align 1, !tbaa !107
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.o
  %.2.i.i.i = phi ptr [ %i.ck, %bb.o ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.cl = load i8, ptr %.2.i.i.i, align 1, !tbaa !107
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit233: ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit235: ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit:                ; preds = %bb.h, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit233, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit235, %bb.m, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.m ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.cp, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit235 ], [ %i.co, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit233 ], [ %i.cn, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.h ]
  %.not57 = icmp eq ptr %.028.i.i.i, %i.bi
  br i1 %.not57, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, label %.thread

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread:         ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.cr = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
  br label %.thread125

.thread:                                          ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, %bb.f
  %i.cs = icmp ne i64 %i.au, 2147483676
  %.not58137 = icmp eq ptr %i.ag, null
  %.not58 = or i1 %.not58137, %i.cs
  br i1 %.not58, label %.thread128, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !565 ; 2 uses
  %i.cv = icmp ugt i32 %i.cu, %i.al
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.cz = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef 2147483676) #24
  store ptr %i.cz, ptr %i.f, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.da = load i32, ptr %i.cx, align 8, !tbaa !565
  store i32 %i.da, ptr %i.g, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.db = load i32, ptr %i.cw, align 8, !tbaa !135
  store i32 %i.db, ptr %i.h, align 4, !tbaa !117
  %i.dc = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcjjEEEbSA_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.thread125

bb.r:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !156
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !157 ; 2 uses
  %2 = ptrtoint ptr %i.dg to i64                  ; 2 uses
  %i.dh = zext i32 %i.cu to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dh ; 4 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = sub i64 %2, %i.dj                       ; 2 uses
  %i.dl = ashr i64 %i.dk, 2                       ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i.i79, label %._crit_edge.i.i.i65

.lr.ph.i.i.i79:                                   ; preds = %bb.r
  %i.dn = and i64 %i.dk, -4
  %scevgep.i.i.i80 = getelementptr i8, ptr %i.di, i64 %i.dn ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i.i.i79
  %.047.i.i.i81 = phi i64 [ %i.dl, %.lr.ph.i.i.i79 ], [ %i.ea, %bb.w ] ; 2 uses
  %.02946.i.i.i82 = phi ptr [ %i.di, %.lr.ph.i.i.i79 ], [ %i.dz, %bb.w ] ; 9 uses
  %i.do = load i8, ptr %.02946.i.i.i82, align 1, !tbaa !107
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i82, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !107
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i82, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !107
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit241, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i82, i64 3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !107
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit243, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i82, i64 4
  %i.ea = add nsw i64 %.047.i.i.i81, -1
  %i.eb = icmp sgt i64 %.047.i.i.i81, 1
  br i1 %i.eb, label %bb.s, label %._crit_edge.loopexit.i.i.i83, !llvm.loop !2

._crit_edge.loopexit.i.i.i83:                     ; preds = %bb.w
  %.pre54.i.i.i84 = ptrtoint ptr %scevgep.i.i.i80 to i64
  br label %._crit_edge.i.i.i65

._crit_edge.i.i.i65:                              ; preds = %._crit_edge.loopexit.i.i.i83, %bb.r
  %.pre-phi.i.i.i66 = phi i64 [ %.pre54.i.i.i84, %._crit_edge.loopexit.i.i.i83 ], [ %i.dj, %bb.r ]
  %.029.lcssa.i.i.i67 = phi ptr [ %scevgep.i.i.i80, %._crit_edge.loopexit.i.i.i83 ], [ %i.di, %bb.r ] ; 5 uses
  %i.ec = sub i64 %2, %.pre-phi.i.i.i66
  switch i64 %i.ec, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.thread [
    i64 3, label %bb.x
    i64 2, label %._crit_edge._crit_edge.i.i.i74
    i64 1, label %._crit_edge._crit_edge52.i.i.i68
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i65
  %i.ed = load i8, ptr %.029.lcssa.i.i.i67, align 1, !tbaa !107
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i67, i64 1
  br label %._crit_edge._crit_edge.i.i.i74

._crit_edge._crit_edge.i.i.i74:                   ; preds = %._crit_edge.i.i.i65, %bb.y
  %.1.i.i.i78 = phi ptr [ %i.ef, %bb.y ], [ %.029.lcssa.i.i.i67, %._crit_edge.i.i.i65 ] ; 3 uses
  %i.eg = load i8, ptr %.1.i.i.i78, align 1, !tbaa !107
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88, label %bb.z

bb.z:                                             ; preds = %._crit_edge._crit_edge.i.i.i74
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.i.i.i78, i64 1
  br label %._crit_edge._crit_edge52.i.i.i68

._crit_edge._crit_edge52.i.i.i68:                 ; preds = %._crit_edge.i.i.i65, %bb.z
  %.2.i.i.i72 = phi ptr [ %i.ei, %bb.z ], [ %.029.lcssa.i.i.i67, %._crit_edge.i.i.i65 ] ; 2 uses
  %i.ej = load i8, ptr %.2.i.i.i72, align 1, !tbaa !107
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.thread

_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit: ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %.02946.i.i.i82, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88

_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit241: ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %.02946.i.i.i82, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88

_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit243: ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %.02946.i.i.i82, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88

_ZSt4findIPKhcET_S2_S2_RKT0_.exit88:              ; preds = %bb.s, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit241, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit243, %bb.x, %._crit_edge._crit_edge.i.i.i74, %._crit_edge._crit_edge52.i.i.i68
  %.028.i.i.i73 = phi ptr [ %.1.i.i.i78, %._crit_edge._crit_edge.i.i.i74 ], [ %.029.lcssa.i.i.i67, %bb.x ], [ %.2.i.i.i72, %._crit_edge._crit_edge52.i.i.i68 ], [ %i.en, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit243 ], [ %i.em, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit241 ], [ %i.el, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.loopexit.split.loop.exit ], [ %.02946.i.i.i82, %bb.s ]
  %.not59 = icmp eq ptr %.028.i.i.i73, %i.dg
  br i1 %.not59, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.thread, label %.thread128

_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.thread:       ; preds = %._crit_edge._crit_edge52.i.i.i68, %._crit_edge.i.i.i65, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ep = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(32) %i.eo)
  br label %.thread125

.thread128:                                       ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88, %.thread
  %i.eq = add nuw i64 %storemerge183, 1           ; 3 uses
  store i64 %i.eq, ptr %i.a, align 8, !tbaa !91
  %exitcond.not = icmp eq i64 %i.eq, %i.ae
  br i1 %exitcond.not, label %.thread125, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, !llvm.loop !558

.thread125:                                       ; preds = %.thread128, %bb.c, %.thread114, %bb.q, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, %bb.e, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.thread
  %.not60146 = phi i1 [ %i.ep, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit88.thread ], [ %i.as, %bb.e ], [ %i.be, %.thread114 ], [ %i.dc, %bb.q ], [ %i.cr, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread ], [ true, %bb.c ], [ true, %.thread128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.aa

bb.aa:                                            ; preds = %.thread125, %bb.b
  %.10 = phi i1 [ %i.w, %bb.b ], [ %.not60146, %.thread125 ]
  ret i1 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmPKcEEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer.737", align 8 ; 11 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.1443", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !572
  %i.c = load i64, ptr %2, align 8, !tbaa !91, !noalias !572
  store i64 %i.c, ptr %7, align 16, !tbaa !107, !noalias !572
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = load ptr, ptr %3, align 8, !tbaa !123, !noalias !572
  store ptr %i.e, ptr %i.d, align 16, !tbaa !107, !noalias !572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !573
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8, !noalias !573
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.g, align 8, !tbaa !120, !noalias !573
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !121, !noalias !573
  store i64 500, ptr %i.f, align 8, !tbaa !122, !noalias !573
  %i.j = icmp eq i64 %i.b, 2
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %1, align 1
  %i.l = icmp ne i16 %i.k, 32123
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %7, align 16, !tbaa !107, !noalias !573
  %i.o = trunc i128 %.sroa.0.0.copyload.sink66.i to i64 ; 5 uses
  %i.p = or i64 %i.o, 1
  %i.q = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !107, !noalias !573 ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = zext i8 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !91, !noalias !573
  %i.y = icmp ugt i64 %i.x, %i.o
  %.neg.i.i.i.i = sext i1 %i.y to i32
  %i.z = add nsw i32 %.neg.i.i.i.i, %i.u          ; 4 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp ugt i32 %i.z, 500
  br i1 %i.ab, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.c
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 750) ; 2 uses
  %i.ac = call noalias ptr @malloc(i64 noundef %spec.select.i) #29, !noalias !573 ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i24, label %bb.d, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !573
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %4, align 8, !tbaa !62, !noalias !573
  %i.ad = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24, !noalias !573
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.127, i32 noundef 752, ptr noundef %i.ad) #28, !noalias !573
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.ac, ptr %6, align 8, !tbaa !121, !noalias !573
  store i64 %spec.select.i, ptr %i.f, align 8, !tbaa !122, !noalias !573
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.c, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.ae = phi ptr [ %i.ac, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.i, %bb.c ] ; 3 uses
  store i64 %i.aa, ptr %i.h, align 8, !tbaa !132, !noalias !573
  %i.af = icmp ugt i64 %i.o, 99
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
end_hunk_0
