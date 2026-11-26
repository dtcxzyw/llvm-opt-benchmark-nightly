Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/layout_check?download=true
inline.NumInlined: 4839
inline.NumDeleted: 1623
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4LIEF5MachO13LayoutChecker5errorIJjEEEbPKcDpRKT_:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !134
  %i.cf = load ptr, ptr %0, align 8, !tbaa !106
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !107
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %0, align 8, !tbaa !106
  %i.ci = load <2 x i64>, ptr %i.br, align 8, !tbaa !107
  store <2 x i64> %i.ci, ptr %i.ch, align 8, !tbaa !107
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !107
  store ptr %i.by, ptr %0, align 8, !tbaa !106
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load <2 x i64>, ptr %i.br, align 8, !tbaa !107
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bv, ptr %7, align 8, !tbaa !106
  store i64 %i.cj, ptr %i.bi, align 8, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bi, ptr %7, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.cm = phi ptr [ %i.bv, %bb.q ], [ %i.bi, %bb.r ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.br, align 8, !tbaa !134
  store i8 0, ptr %i.cm, align 1, !tbaa !107
  %i.cn = load ptr, ptr %7, align 8, !tbaa !106   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bi
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cp = load i64, ptr %i.bi, align 8, !tbaa !107
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker14check_segmentsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52, !nonnull !53, !align !54 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = icmp eq i32 %i.f, -17958194
  %i.h = icmp eq i32 %i.f, -822415874
  %spec.select.i = or i1 %i.g, %i.h               ; 2 uses
  %.neg = select i1 %spec.select.i, i32 -56, i32 -72
  %i.i = select i1 %spec.select.i, i64 68, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68, !noalias !514 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68, !noalias !515 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %.not7487 = icmp eq ptr %i.m, %i.k
  br i1 %.not7487, label %._crit_edge.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.m
  %.sroa.460.089 = phi ptr [ %i.aw, %bb.m ], [ %i.k, %bb.a ] ; 2 uses
  %.sroa.8.088 = phi i64 [ %i.ax, %bb.m ], [ 0, %bb.a ]
  %i.r = load ptr, ptr %.sroa.460.089, align 8, !tbaa !70 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = add i32 %i.t, %.neg                      ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.x = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %.thread67

bb.c:                                             ; preds = %.lr.ph
  %i.y = zext nneg i32 %i.u to i64                ; 2 uses
  %i.z = urem i64 %i.y, %i.i
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.t, ptr %i.a, align 4, !tbaa !117
  %i.ab = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread67

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !516 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.i, %i.ae
  %.not43 = icmp eq i64 %i.af, %i.y
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !117
  %i.ah = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread67

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !89 ; 2 uses
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not44 = icmp eq i64 %i.al, 0
  br i1 %.not44, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 132
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !517
  %i.ap = and i32 %i.ao, 4
  %.not45 = icmp eq i32 %i.ap, 0
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ar = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  br label %.thread67

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  %i.at = load i32, ptr %i.as, align 4, !tbaa !518
  %.not46 = icmp ult i32 %i.at, 8
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.av = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  br label %.thread67

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.460.089, i64 8
  %i.ax = add nuw nsw i64 %.sroa.8.088, 1         ; 2 uses
  %.not74 = icmp eq i64 %i.ax, %i.q
  br i1 %.not74, label %._crit_edge.i.i, label %.lr.ph

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.ay, ptr %1, align 8, !tbaa !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ay, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, i64 6, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.az, align 8, !tbaa !134
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.ba, align 2, !tbaa !107
  %i.bb = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1) #24 ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ay
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !107
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.not47 = icmp eq ptr %i.bb, null
  br i1 %.not47, label %._crit_edge.i.i52, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 124
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !518
  %.not48 = icmp eq i32 %i.bh, 5
  br i1 %.not48, label %._crit_edge.i.i52, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.16)
  br label %.thread67

._crit_edge.i.i52:                                ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !52, !nonnull !53, !align !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bk, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.bl, align 8, !tbaa !134
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.bm, align 2, !tbaa !107
  %i.bn = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %2) #24 ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bk
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %._crit_edge.i.i52
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !107
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %._crit_edge.i.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not49 = icmp eq ptr %i.bn, null
  br i1 %.not49, label %.thread67, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 124
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !518
  %.not50 = icmp eq i32 %i.bt, 1
  br i1 %.not50, label %.thread67, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.18)
  br label %.thread67

.thread67:                                        ; preds = %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.b, %bb.d, %bb.f, %bb.j, %bb.l, %bb.o
  %.5 = phi i1 [ %i.bi, %bb.o ], [ %i.x, %bb.b ], [ %i.av, %bb.l ], [ %i.ar, %bb.j ], [ %i.ah, %bb.f ], [ %i.ab, %bb.d ], [ %i.bu, %bb.q ], [ true, %bb.p ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer.737", align 8 ; 11 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.1416", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !525
  %i.c = load ptr, ptr %2, align 8, !tbaa !106, !noalias !525
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !134, !noalias !525
  store ptr %i.c, ptr %5, align 16, !tbaa !107, !noalias !525
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !107, !noalias !525
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !526
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !noalias !526
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.h, align 8, !tbaa !120, !noalias !526
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !121, !noalias !526
  store i64 500, ptr %i.g, align 8, !tbaa !122, !noalias !526
  %i.k = icmp eq i64 %i.b, 2
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %1, align 1
  %i.m = icmp ne i16 %i.l, 32123
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %5, align 16, !tbaa !107, !noalias !526 ; 2 uses
  %i.p = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.q = lshr i128 %.sroa.0.0.copyload.sink66.i, 64
  %i.r = trunc nuw i128 %i.q to i64
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.p to ptr ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, i64 %i.r
  %i.t = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef %i.s, ptr nonnull align 8 dereferenceable(32) %4), !noalias !526 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !526
  store ptr %1, ptr %3, align 8, !tbaa !123, !noalias !526
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !91, !noalias !526
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !126, !noalias !526
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %4, ptr %i.v, align 8, !tbaa !128, !noalias !526
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 13, ptr %i.w, align 8, !tbaa !130, !noalias !526
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %5, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !107, !noalias !526
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.x, align 8, !tbaa !131, !noalias !526
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !526
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.y = load i64, ptr %i.i, align 8, !tbaa !132, !noalias !528 ; 6 uses
  %i.z = icmp ult i64 %i.y, 4611686018427387903
  call void @llvm.assume(i1 %i.z)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !121, !noalias !528 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !133, !alias.scope !528
  %i.ac = icmp eq ptr %i.aa, null
  %i.ad = icmp ne i64 %i.y, 0
  %or.cond.i.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #25
  unreachable

bb.f:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !528
  store i64 %i.y, ptr %i.a, align 8, !tbaa !91, !noalias !528
  %i.ae = icmp samesign ugt i64 %i.y, 15
  br i1 %i.ae, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !106, !alias.scope !528
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !528
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !107, !alias.scope !528
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.ah = phi ptr [ %i.af, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  switch i64 %i.y, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !107
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !107
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.aa, i64 %i.y, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !528 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !134, !alias.scope !528
  %i.al = load ptr, ptr %6, align 8, !tbaa !106, !alias.scope !528
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !528
  %i.an = load ptr, ptr %4, align 8, !tbaa !121, !noalias !526 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.j
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.an) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !525
  %i.ao = load ptr, ptr %0, align 8, !tbaa !106   ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  %i.ar = load ptr, ptr %6, align 8, !tbaa !106   ; 5 uses
  %i.as = icmp eq ptr %i.ar, %i.ab                ; 2 uses
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.as, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.as, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.at = load i64, ptr %i.ak, align 8, !tbaa !134 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  switch i64 %i.at, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !107
  store i8 %i.av, ptr %i.ao, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ar, i64 %i.at, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO13LayoutChecker24check_section_contiguityEv:bb.a
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 88
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call noundef i64 %i.he(ptr noundef nonnull align 8 dereferenceable(64) %i.go) #24
  store i64 %i.hf, ptr %i.d, align 8, !tbaa !91
  %i.hg = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.hh = load ptr, ptr %5, align 8, !tbaa !106   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.an
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.hj = load i64, ptr %i.an, align 8, !tbaa !107
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.thread

_ZN4LIEF5alignEmm.exit:                           ; preds = %.lr.ph178
  %i.hl = urem i64 %.0130173, %i.gx               ; 2 uses
  %.not.i = icmp eq i64 %i.hl, 0
  %i.hm = sub nuw nsw i64 %i.gx, %i.hl
  %i.hn = select i1 %.not.i, i64 0, i64 %i.hm
  %.0.i = add i64 %i.hn, %.0130173                ; 5 uses
  %i.ho = load ptr, ptr %i.go, align 8, !tbaa !62
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call noundef i64 %i.hq(ptr noundef nonnull align 8 dereferenceable(64) %i.go) #24
  %.not51 = icmp eq i64 %i.hr, %.0.i
  br i1 %.not51, label %bb.aq, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %_ZN4LIEF5alignEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.hs = load ptr, ptr %i.go, align 8, !tbaa !62
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.go) #24
  %i.hv = load ptr, ptr %i.go, align 8, !tbaa !62
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = call noundef i64 %i.hx(ptr noundef nonnull align 8 dereferenceable(64) %i.go) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !732
  %i.hz = load ptr, ptr %7, align 8, !tbaa !106, !noalias !732
  %i.ia = load i64, ptr %i.r, align 8, !tbaa !134, !noalias !732
  store ptr %i.hz, ptr %4, align 16, !tbaa !107, !noalias !732
  store i64 %i.ia, ptr %i.s, align 8, !tbaa !107, !noalias !732
  store i64 %i.hy, ptr %i.t, align 16, !tbaa !107, !noalias !732
  store i64 %.0.i, ptr %i.u, align 16, !tbaa !107, !noalias !732
  %i.ib = load i32, ptr %i.c, align 4, !tbaa !117, !noalias !732
  store i32 %i.ib, ptr %i.v, align 16, !tbaa !107, !noalias !732
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !733
  store i64 0, ptr %i.y, align 8, !noalias !733
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.x, align 8, !tbaa !120, !noalias !733
  store ptr %i.z, ptr %3, align 8, !tbaa !121, !noalias !733
  store i64 500, ptr %i.w, align 8, !tbaa !122, !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !733
  store ptr @.str.52, ptr %1, align 8, !tbaa !123, !noalias !733
  store i64 85, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !91, !noalias !733
  store i32 0, ptr %i.aa, align 8, !tbaa !126, !noalias !733
  store ptr %3, ptr %i.ab, align 8, !tbaa !128, !noalias !733
  store i64 9293, ptr %i.ac, align 8, !tbaa !130, !noalias !733
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !107, !noalias !733
  store ptr null, ptr %i.ad, align 8, !tbaa !131, !noalias !733
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.52, i64 85, ptr noundef nonnull align 8 dereferenceable(56) %1), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !733
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.ic = load i64, ptr %i.y, align 8, !tbaa !132, !noalias !735 ; 6 uses
  %i.id = icmp ult i64 %i.ic, 4611686018427387903
  call void @llvm.assume(i1 %i.id)
  %i.ie = load ptr, ptr %3, align 8, !tbaa !121, !noalias !735 ; 3 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !133, !alias.scope !735
  %i.if = icmp eq ptr %i.ie, null
  %i.ig = icmp ne i64 %i.ic, 0
  %or.cond.i.i.i = and i1 %i.ig, %i.if
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #25
  unreachable

bb.x:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !735
  store i64 %i.ic, ptr %i.b, align 8, !tbaa !91, !noalias !735
  %i.ih = icmp samesign ugt i64 %i.ic, 15
  br i1 %i.ih, label %bb.y, label %._crit_edge.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.ii = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ii, ptr %6, align 8, !tbaa !106, !alias.scope !735
  %i.ij = load i64, ptr %i.b, align 8, !tbaa !91, !noalias !735
  store i64 %i.ij, ptr %i.ae, align 8, !tbaa !107, !alias.scope !735
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.y, %bb.x
  %i.ik = phi ptr [ %i.ii, %bb.y ], [ %i.ae, %bb.x ] ; 2 uses
  switch i64 %i.ic, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.il = load i8, ptr %i.ie, align 1, !tbaa !107
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !107
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %i.ie, i64 %i.ic, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i.i
  %i.im = load i64, ptr %i.b, align 8, !tbaa !91, !noalias !735 ; 2 uses
  store i64 %i.im, ptr %i.af, align 8, !tbaa !134, !alias.scope !735
  %i.in = load ptr, ptr %6, align 8, !tbaa !106, !alias.scope !735
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.im
  store i8 0, ptr %i.io, align 1, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !735
  %i.ip = load ptr, ptr %3, align 8, !tbaa !121, !noalias !733 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ip, %i.z
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ip) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !732
  %i.iq = load ptr, ptr %7, align 8, !tbaa !106   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ag
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.is = load i64, ptr %i.ag, align 8, !tbaa !107
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not152 = icmp eq ptr %.sroa.077.0174, %.sroa.097.1
  br i1 %.not152, label %.critedge.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.iu = getelementptr inbounds i8, ptr %.sroa.077.0174, i64 -8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !102 ; 3 uses
  %i.iw = load ptr, ptr %.sroa.077.0174, align 8, !tbaa !102 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !62
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = call noundef i64 %i.iz(ptr noundef nonnull align 8 dereferenceable(64) %i.iw) #24, !inline_history !723
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !62
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 72
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = call noundef i64 %i.jd(ptr noundef nonnull align 8 dereferenceable(64) %i.iv) #24, !inline_history !723
  %i.jf = sub i64 %i.ja, %i.je                    ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 104
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !731 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %"_ZZN4LIEF5MachO13LayoutChecker24check_section_contiguityEvENK3$_0clEPKNS0_7SectionES5_.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jj = zext i32 %i.jh to i64
  %i.jk = urem i64 %i.jf, %i.jj
  %i.jl = sub nuw i64 %i.jf, %i.jk
  br label %"_ZZN4LIEF5MachO13LayoutChecker24check_section_contiguityEvENK3$_0clEPKNS0_7SectionES5_.exit"

"_ZZN4LIEF5MachO13LayoutChecker24check_section_contiguityEvENK3$_0clEPKNS0_7SectionES5_.exit": ; preds = %bb.ac, %bb.ad
  %.1.i.i = phi i64 [ %i.jl, %bb.ad ], [ %i.jf, %bb.ac ]
  %.not52 = icmp eq i64 %.1.i.i, 0
  br i1 %.not52, label %.critedge.thread, label %bb.ae

bb.ae:                                            ; preds = %"_ZZN4LIEF5MachO13LayoutChecker24check_section_contiguityEvENK3$_0clEPKNS0_7SectionES5_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.jm = load ptr, ptr %i.go, align 8, !tbaa !62
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %i.go) #24
  %i.jp = load i64, ptr %i.ah, align 8, !tbaa !134 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 6
  %.pre = load ptr, ptr %8, align 8, !tbaa !106   ; 4 uses
  br i1 %i.jq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jr = load i32, ptr %.pre, align 1
  %i.js = xor i32 %i.jr, 1702125407
  %i.jt = getelementptr i8, ptr %.pre, i64 4
  %i.ju = load i16, ptr %i.jt, align 1
  %i.jv = zext i16 %i.ju to i32
  %i.jw = xor i32 %i.jv, 29816
  %i.jx = or i32 %i.js, %i.jw
  %i.jy = icmp ne i32 %i.jx, 0
  %i.jz = zext i1 %i.jy to i32
  %i.ka = icmp eq i32 %i.jz, 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.ph = phi i1 [ false, %bb.ae ], [ %i.ka, %bb.af ]
  %i.kb = icmp eq ptr %.pre, %i.ai
  br i1 %i.kb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61: ; preds = %bb.ag
  %i.kc = icmp ult i64 %i.jp, 16
  call void @llvm.assume(i1 %i.kc)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ag
  %i.kd = load i64, ptr %i.ai, align 8, !tbaa !107
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ke) #27
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.ph, label %bb.ah, label %.critedge.thread

bb.ah:                                            ; preds = %.critedge
  %i.kf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.231) #24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.kg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 3, ptr nonnull @.str.54, i64 74, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.kh = load ptr, ptr %i.go, align 8, !tbaa !62
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 80
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = call noundef i64 %i.kj(ptr noundef nonnull align 8 dereferenceable(64) %i.go) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

.critedge.thread:                                 ; preds = %"_ZZN4LIEF5MachO13LayoutChecker24check_section_contiguityEvENK3$_0clEPKNS0_7SectionES5_.exit", %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %.critedge
  store ptr %i.aj, ptr %9, align 8, !tbaa !133
  %i.kl = load ptr, ptr %6, align 8, !tbaa !106   ; 2 uses
  %i.km = load i64, ptr %i.af, align 8, !tbaa !134 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.km, ptr %i.a, align 8, !tbaa !91
  %i.kn = icmp ugt i64 %i.km, 15
  br i1 %i.kn, label %bb.ai, label %._crit_edge.i.i

bb.ai:                                            ; preds = %.critedge.thread
  %i.ko = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ko, ptr %9, align 8, !tbaa !106
  %i.kp = load i64, ptr %i.a, align 8, !tbaa !91
  store i64 %i.kp, ptr %i.aj, align 8, !tbaa !107
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ai, %.critedge.thread
  %i.kq = phi ptr [ %i.ko, %bb.ai ], [ %i.aj, %.critedge.thread ] ; 2 uses
  switch i64 %i.km, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.kr = load i8, ptr %i.kl, align 1, !tbaa !107
  store i8 %i.kr, ptr %i.kq, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ak:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr align 1 %i.kl, i64 %i.km, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.aj, %bb.ak
  %i.ks = load i64, ptr %i.a, align 8, !tbaa !91  ; 2 uses
  store i64 %i.ks, ptr %i.ak, align 8, !tbaa !134
  %i.kt = load ptr, ptr %9, align 8, !tbaa !106
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ks
  store i8 0, ptr %i.ku, align 1, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.kv = load ptr, ptr %0, align 8, !tbaa !106   ; 6 uses
  %i.kw = icmp eq ptr %i.kv, %i.al
  %i.kx = load ptr, ptr %9, align 8, !tbaa !106   ; 5 uses
  %i.ky = icmp eq ptr %i.kx, %i.aj                ; 2 uses
  br i1 %i.kw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  br i1 %i.ky, label %bb.al, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  br i1 %i.ky, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.kz = load i64, ptr %i.ak, align 8, !tbaa !134 ; 3 uses
  %i.la = icmp ult i64 %i.kz, 16
  call void @llvm.assume(i1 %i.la)
  switch i64 %i.kz, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.lb = load i8, ptr %i.kx, align 1, !tbaa !107
  store i8 %i.lb, ptr %i.kv, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kv, ptr align 1 %i.kx, i64 %i.kz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.lc = load i64, ptr %i.ak, align 8, !tbaa !134 ; 2 uses
  store i64 %i.lc, ptr %i.am, align 8, !tbaa !134
  %i.ld = load ptr, ptr %0, align 8, !tbaa !106
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lc
  store i8 0, ptr %i.le, align 1, !tbaa !107
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !106
  br label %_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  store ptr %i.kx, ptr %0, align 8, !tbaa !106
  %i.lf = load <2 x i64>, ptr %i.ak, align 8, !tbaa !107
  store <2 x i64> %i.lf, ptr %i.am, align 8, !tbaa !107
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63
  %i.lg = load i64, ptr %i.al, align 8, !tbaa !107
  store ptr %i.kx, ptr %0, align 8, !tbaa !106
  %i.lh = load <2 x i64>, ptr %i.ak, align 8, !tbaa !107
  store <2 x i64> %i.lh, ptr %i.am, align 8, !tbaa !107
  %.not.i.i64 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i64, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.kv, ptr %9, align 8, !tbaa !106
  store i64 %i.lg, ptr %i.aj, align 8, !tbaa !107
  br label %_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.aj, ptr %9, align 8, !tbaa !106
  br label %_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ao, %bb.ap
  %i.li = phi ptr [ %i.kv, %bb.ao ], [ %i.aj, %bb.ap ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ak, align 8, !tbaa !134
  store i8 0, ptr %i.li, align 1, !tbaa !107
  %i.lj = load ptr, ptr %9, align 8, !tbaa !106   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.aj
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ll = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.ah
  %i.ln = phi i1 [ true, %bb.ah ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ false, %_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.1131 = phi i64 [ %i.kk, %bb.ah ], [ %.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.0.i, %_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.2 = phi i1 [ %.1177, %bb.ah ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ false, %_ZN4LIEF5MachO13LayoutChecker5errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.lo = load ptr, ptr %6, align 8, !tbaa !106   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ae
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.lq = load i64, ptr %i.ae, align 8, !tbaa !107
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %i.ln, label %bb.aq, label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.4.ph = phi i1 [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZNSt6vectorIPKN4LIEF5MachO7SectionESaIS4_EED2Ev.exit.thread227

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZN4LIEF5alignEmm.exit
  %.2132 = phi i64 [ %.0.i, %_ZN4LIEF5alignEmm.exit ], [ %.1131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  %.3 = phi i1 [ %.1177, %_ZN4LIEF5alignEmm.exit ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 2 uses
  %i.ls = load ptr, ptr %i.go, align 8, !tbaa !62
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 72
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = call noundef i64 %i.lu(ptr noundef nonnull align 8 dereferenceable(64) %i.go) #24
  %i.lw = add i64 %i.lv, %.2132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.077.0174, i64 8 ; 2 uses
  %.not151 = icmp eq ptr %i.lx, %.sroa.14.1
  br i1 %.not151, label %_ZNSt6vectorIPKN4LIEF5MachO7SectionESaIS4_EED2Ev.exit, label %.lr.ph178, !llvm.loop !724

_ZNSt6vectorIPKN4LIEF5MachO7SectionESaIS4_EED2Ev.exit.thread227: ; preds = %._crit_edge, %_ZNSt12_Vector_baseIPKN4LIEF5MachO7SectionESaIS4_EE13_M_deallocateEPS4_m.exit.i, %.thread
  %.sroa.23.0.lcssa226.ph = phi ptr [ %.sroa.23.1, %.thread ], [ %i.az, %_ZNSt12_Vector_baseIPKN4LIEF5MachO7SectionESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %.sroa.23.1, %._crit_edge ]
  %.sroa.097.0.lcssa225.ph = phi ptr [ %.sroa.097.1, %.thread ], [ %i.ay, %_ZNSt12_Vector_baseIPKN4LIEF5MachO7SectionESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %.sroa.097.1, %._crit_edge ] ; 2 uses
  %.6.ph = phi i1 [ %.4.ph, %.thread ], [ true, %_ZNSt12_Vector_baseIPKN4LIEF5MachO7SectionESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ true, %._crit_edge ]
  %i.ly = ptrtoint ptr %.sroa.23.0.lcssa226.ph to i64
  %i.lz = ptrtoint ptr %.sroa.097.0.lcssa225.ph to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0.lcssa225.ph, i64 noundef %i.ma) #27
  br label %.loopexit154

_ZNSt6vectorIPKN4LIEF5MachO7SectionESaIS4_EED2Ev.exit: ; preds = %bb.aq
  %i.mb = ptrtoint ptr %.sroa.23.1 to i64
  %i.mc = ptrtoint ptr %.sroa.097.1 to i64
  %i.md = sub i64 %i.mb, %i.mc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.1, i64 noundef %i.md) #27
  br label %_ZNSt6vectorIPKN4LIEF5MachO7SectionESaIS4_EED2Ev.exit.thread

_ZNSt6vectorIPKN4LIEF5MachO7SectionESaIS4_EED2Ev.exit.thread: ; preds = %_ZNSt6vectorIPKN4LIEF5MachO7SectionESaIS4_EED2Ev.exit, %bb.c
end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO13LayoutChecker20check_chained_fixupsEv:bb.a
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %switch.lookup
  %i.al = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.89)
  br label %bb.aj

bb.k:                                             ; preds = %switch.lookup
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.an = load i32, ptr %i.am, align 4, !tbaa !816 ; 2 uses
  %.not69 = icmp eq i32 %i.an, 0
  br i1 %.not69, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 %i.an, ptr %i.c, align 4, !tbaa !117
  %i.ao = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.90, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.aj

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !67 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !817 ; 2 uses
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !818 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 88                ; 3 uses
  %.not70 = icmp eq i64 %i.bi, %i.ay
  br i1 %.not70, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bj = icmp ugt i64 %i.bi, %i.ay
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.91)
  br label %bb.aj

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bm = tail call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull @.str.92)
  br i1 %i.bm, label %bb.p, label %._crit_edge167

._crit_edge167:                                   ; preds = %bb.o
  %.pre = load i32, ptr %i.u, align 8, !tbaa !812
  %.pre168 = load ptr, ptr %i.ap, align 8, !tbaa !819, !noalias !820 ; 2 uses
  %.pre169 = load ptr, ptr %i.bc, align 8, !tbaa !819, !noalias !821 ; 2 uses
  %.pre170 = ptrtoint ptr %.pre169 to i64
  %.pre171 = ptrtoint ptr %.pre168 to i64
  %.pre173 = sub i64 %.pre170, %.pre171
  %.pre175 = sdiv exact i64 %.pre173, 88
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.93)
  br label %bb.aj

bb.q:                                             ; preds = %._crit_edge167, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %.pre-phi176 = phi i64 [ %.pre175, %._crit_edge167 ], [ %i.bi, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bo = phi ptr [ %.pre169, %._crit_edge167 ], [ %i.bd, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bp = phi ptr [ %.pre168, %._crit_edge167 ], [ %i.be, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ] ; 2 uses
  %i.bq = phi i32 [ %.pre, %._crit_edge167 ], [ %i.v, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.br = zext i32 %i.bq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !91
  %.not116141 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not116141, label %.thread109, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.q, %bb.ai
  %.0146 = phi i32 [ %.2, %bb.ai ], [ 0, %bb.q ]  ; 5 uses
  %.sroa.479.0145 = phi ptr [ %i.dg, %bb.ai ], [ %i.bp, %bb.q ] ; 9 uses
  %.sroa.8.0144 = phi i64 [ %i.dh, %bb.ai ], [ 0, %bb.q ]
  %.sroa.082.0143 = phi i32 [ %.sroa.082.2, %bb.ai ], [ 2, %bb.q ] ; 3 uses
  %.sroa.6.0142 = phi i1 [ %.sroa.6.2, %bb.ai ], [ false, %bb.q ] ; 2 uses
  %i.bs = load i32, ptr %.sroa.479.0145, align 8, !tbaa !829 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %.lr.ph149
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !830
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = zext i32 %i.bs to i64
  %i.by = sub nsw i64 %i.br, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.94, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %.thread109

bb.t:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 8
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !831 ; 2 uses
  switch i16 %i.cc, label %bb.u [
    i16 4096, label %bb.v
    i16 16384, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 8
  %i.ce = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmtEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.95, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 2 dereferenceable(2) %i.cd)
  br label %.thread109

bb.v:                                             ; preds = %bb.t, %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !832 ; 4 uses
  %i.ch = icmp sgt i32 %i.cg, 13
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.96, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %.thread109

bb.x:                                             ; preds = %bb.v
  %.not117196 = icmp ne i32 %.sroa.082.0143, %i.cg
  %.not117.not = select i1 %.sroa.6.0142, i1 %.not117196, i1 false
  br i1 %.not117.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.cj = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_23DYLD_CHAINED_PTR_FORMATE(i32 noundef %i.cg) #24
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.ck = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_23DYLD_CHAINED_PTR_FORMATE(i32 noundef %.sroa.082.0143) #24
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !123
  %i.cl = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcS4_EEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.97, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.thread109

bb.z:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !833 ; 3 uses
  %.not73 = icmp eq i32 %i.cn, 0
  br i1 %.not73, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = icmp eq i32 %.0146, 0
  br i1 %i.co, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not74 = icmp eq i32 %.0146, %i.cn
  br i1 %.not74, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.98)
  br label %.thread109

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %.1 = phi i32 [ %.0146, %bb.z ], [ %.0146, %bb.ab ], [ %i.cn, %bb.aa ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !834 ; 2 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !835 ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, %i.bw
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.99)
  br label %.thread109

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %.not151 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not151, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.af
  %i.cz = lshr exact i64 %i.cw, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %storemerge140 = phi i64 [ %i.de, %bb.ag ], [ 0, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %storemerge140
  %i.db = load i16, ptr %i.da, align 2, !tbaa !253 ; 3 uses
  store i16 %i.db, ptr %i.h, align 2, !tbaa !253
  %i.dc = icmp sgt i16 %i.db, -1
  %i.dd = icmp ugt i16 %i.db, %i.cc
  %or.cond = and i1 %i.dc, %i.dd
  br i1 %or.cond, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.de = add nuw nsw i64 %storemerge140, 1       ; 2 uses
  %1 = icmp samesign ult i64 %i.de, %i.cz
  br i1 %1, label %.lr.ph, label %._crit_edge, !llvm.loop !809

bb.ah:                                            ; preds = %.lr.ph
  store i64 %storemerge140, ptr %i.g, align 8, !tbaa !91
  %i.df = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmmtEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.100, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 2 dereferenceable(2) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.thread109

._crit_edge:                                      ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph149, %._crit_edge
  %.sroa.6.2 = phi i1 [ %.sroa.6.0142, %.lr.ph149 ], [ true, %._crit_edge ]
  %.sroa.082.2 = phi i32 [ %.sroa.082.0143, %.lr.ph149 ], [ %i.cg, %._crit_edge ]
  %.2 = phi i32 [ %.0146, %.lr.ph149 ], [ %.1, %._crit_edge ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 88
  %i.dh = add nuw nsw i64 %.sroa.8.0144, 1        ; 2 uses
  %.not116 = icmp eq i64 %i.dh, %.pre-phi176
  br i1 %.not116, label %.thread109, label %.lr.ph149

.thread109:                                       ; preds = %bb.ai, %bb.q, %bb.ah, %bb.ae, %bb.y, %bb.w, %bb.u, %bb.s, %bb.ac
  %.not116125 = phi i1 [ %i.cp, %bb.ac ], [ %i.df, %bb.ah ], [ %i.cy, %bb.ae ], [ %i.cl, %bb.y ], [ %i.ci, %bb.w ], [ %i.ce, %bb.u ], [ %i.ca, %bb.s ], [ true, %bb.q ], [ true, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.n, %bb.p, %.thread109, %bb.i, %bb.j, %bb.l, %bb.a, %bb.g, %bb.e, %bb.c
  %.9 = phi i1 [ true, %bb.a ], [ %i.o, %bb.c ], [ %i.t, %bb.e ], [ %i.w, %bb.g ], [ %i.aa, %bb.i ], [ %i.al, %bb.j ], [ %i.ao, %bb.l ], [ %i.bk, %bb.n ], [ %i.bn, %bb.p ], [ %.not116125, %.thread109 ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker18check_exports_trieEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.c = tail call noundef ptr @_ZNK4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.b) #24 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.e = tail call noundef ptr @_ZNK4LIEF5MachO6Binary17dyld_exports_trieEv(ptr noundef nonnull align 8 dereferenceable(552) %i.d) #24 ; 3 uses
  %i.f = icmp eq ptr %i.c, null                   ; 2 uses
  %i.g = icmp eq ptr %i.e, null                   ; 2 uses
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.critedge42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68, !noalias !848 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68, !noalias !849 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %.not85.a = icmp eq ptr %i.l, %i.j
  br i1 %.not85.a, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread, %bb.b
  %.0.lcssa = phi i64 [ 16384, %bb.b ], [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ] ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(552) %i.h) #24 ; 2 uses
  br i1 %i.g, label %.critedge, label %bb.c

.lr.ph:                                           ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread
  %.03289 = phi i64 [ %.133112, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ 0, %bb.b ] ; 4 uses
  %.088 = phi i64 [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ 16384, %bb.b ] ; 2 uses
  %.sroa.470.087 = phi ptr [ %i.bc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.8.086 = phi i64 [ %i.bd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ 0, %bb.b ]
  %i.u = load ptr, ptr %.sroa.470.087, align 8, !tbaa !70 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  switch i64 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !106  ; 2 uses
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = xor i32 %i.z, 1163157343
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = zext i16 %i.ac to i32
  %i.ae = xor i32 %i.ad, 21592
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !88
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44: ; preds = %.lr.ph
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !106 ; 2 uses
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 %i.am, 4919420967581409119
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i64
  %i.ar = xor i64 %i.aq, 21577
  %i.as = or i64 %i.an, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44
  %.133113 = phi i64 [ %.03289, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44 ], [ %.03289, %.lr.ph ], [ %.03289, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !88
  %i.ay = sub i64 %i.ax, %.133113
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !89
  %i.bb = add i64 %i.ay, %i.ba
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.088, i64 %i.bb)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81
  %.133112 = phi i64 [ %.03289, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44 ], [ %.133113, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81 ]
  %.1 = phi i64 [ %.088, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44 ], [ %.sroa.speculated, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.470.087, i64 8
  %i.bd = add nuw nsw i64 %.sroa.8.086, 1         ; 2 uses
  %.not = icmp eq i64 %i.bd, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !850, !noalias !851 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !850, !noalias !852 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3
  %.not8290 = icmp eq ptr %i.bh, %i.bf
  br i1 %.not8290, label %.critedge, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.c, %bb.d
  %.sroa.559.092 = phi ptr [ %i.bo, %bb.d ], [ %i.bf, %bb.c ] ; 2 uses
  %.sroa.960.091 = phi i64 [ %i.bp, %bb.d ], [ 0, %bb.c ]
  %i.bm = load ptr, ptr %.sroa.559.092, align 8, !tbaa !854
  %i.bn = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker12check_exportEmmRKNS0_10ExportInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.t, i64 noundef %.0.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %i.bm)
  br i1 %i.bn, label %bb.d, label %.critedge42

bb.d:                                             ; preds = %.lr.ph94
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.559.092, i64 8
  %i.bp = add nuw nsw i64 %.sroa.960.091, 1       ; 2 uses
  %.not82 = icmp eq i64 %i.bp, %i.bl
  br i1 %.not82, label %.critedge, label %.lr.ph94

.critedge:                                        ; preds = %bb.d, %bb.c, %._crit_edge
  br i1 %i.f, label %.critedge42, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !850, !noalias !855 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !850, !noalias !856 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %.not8395 = icmp eq ptr %i.bt, %i.br
  br i1 %.not8395, label %.critedge42, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.e, %.lr.ph99
  %.sroa.550.097 = phi ptr [ %i.ca, %.lr.ph99 ], [ %i.br, %bb.e ] ; 2 uses
  %.sroa.9.096 = phi i64 [ %i.cb, %.lr.ph99 ], [ 0, %bb.e ]
  %i.by = load ptr, ptr %.sroa.550.097, align 8, !tbaa !854
  %i.bz = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker12check_exportEmmRKNS0_10ExportInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.t, i64 noundef %.0.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %i.by) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.550.097, i64 8
  %i.cb = add nuw nsw i64 %.sroa.9.096, 1         ; 2 uses
  %.not83 = icmp ne i64 %i.cb, %i.bx
  %or.cond118.not = select i1 %i.bz, i1 %.not83, i1 false
  br i1 %or.cond118.not, label %.lr.ph99, label %.critedge42

.critedge42:                                      ; preds = %.lr.ph94, %.lr.ph99, %bb.e, %.critedge, %bb.a
  %.8 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ %i.bz, %.lr.ph99 ], [ true, %bb.e ], [ false, %.lr.ph94 ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker23check_function_variantsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.g = tail call noundef ptr @_ZNK4LIEF5MachO6Binary17function_variantsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.f) #24 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
end_hunk_2
begin_hunk_3_@_ZN4LIEF5MachO13LayoutChecker23check_function_variantsEv:bb.a
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !261 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.thread86, %.lr.ph.i.i.i.i46
  %.06.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i46 ], [ %i.cj, %.thread86 ] ; 2 uses
  %i.ck = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !259 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #27
  %.not.i.i.i.i47 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i47, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i46, !llvm.loop !866

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i46, %.thread86
  %i.cl = load ptr, ptr %2, align 8, !tbaa !255
  %i.cm = load i64, ptr %i.q, align 8, !tbaa !256
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.co = load ptr, ptr %2, align 8, !tbaa !255   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.p
  br i1 %i.cp, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !256
  %i.cr = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %.10 = phi i1 [ %.not89106, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker29check_function_variant_fixupsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.l = tail call noundef ptr @_ZNK4LIEF5MachO6Binary23function_variant_fixupsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.k) #24 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.o = load i32, ptr %i.n, align 4, !tbaa !250  ; 2 uses
  %i.p = and i32 %i.o, 7
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.o, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 8, ptr %i.b, align 8, !tbaa !91
  %i.q = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.107, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !52, !nonnull !53, !align !54 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68, !noalias !898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  store i64 %i.z, ptr %i.c, align 8, !tbaa !91
  %i.aa = tail call noundef ptr @_ZNK4LIEF5MachO6Binary17function_variantsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.r) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !899
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !900
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ]  ; 2 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 0, ptr %i.e, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !901, !noalias !902 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !901, !noalias !903 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 5
  %.not4661 = icmp eq ptr %i.ao, %i.am
  br i1 %.not4661, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.k
  %.sroa.432.064 = phi ptr [ %i.bu, %bb.k ], [ %i.am, %bb.f ] ; 4 uses
  %.sroa.8.063 = phi i64 [ %i.bv, %bb.k ], [ 0, %bb.f ]
  %i.at = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.432.064, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !905 ; 2 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %.not29 = icmp ugt i64 %i.z, %i.aw
  br i1 %.not29, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 %i.av, ptr %i.f, align 4, !tbaa !117
  %i.ax = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.108, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.thread

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %.lr.ph
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !70 ; 2 uses
  %i.bb = load i32, ptr %.sroa.432.064, align 8, !tbaa !906 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !60 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -17958194
  %i.bh = icmp eq i32 %i.bf, -822415874
  %spec.select.i.i = or i1 %i.bg, %i.bh
  %i.bi = select i1 %spec.select.i.i, i64 4, i64 8
  %i.bj = add nuw nsw i64 %i.bi, %i.bc
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bm = icmp ugt i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.bl, ptr %i.h, align 8, !tbaa !91
  %i.bo = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.109, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.thread

bb.i:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.432.064, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !907 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %.not30 = icmp ugt i64 %i.ak, %i.br
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i32 %i.bq, ptr %i.i, align 4, !tbaa !117
  %i.bs = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.110, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.bt = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.432.064, i64 32
  %i.bv = add nuw nsw i64 %.sroa.8.063, 1         ; 2 uses
  %.not46 = icmp eq i64 %i.bv, %i.as
  br i1 %.not46, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.k, %bb.f, %bb.j, %bb.h, %bb.g
  %.not4650 = phi i1 [ %i.ax, %bb.g ], [ %i.bs, %bb.j ], [ %i.bo, %bb.h ], [ true, %bb.f ], [ true, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.thread, %bb.c
  %.5 = phi i1 [ %.not4650, %.thread ], [ %i.q, %bb.c ], [ true, %bb.a ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker27check_lazy_load_dylib_infosEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.LIEF::SpanStream", align 8  ; 12 uses
  %2 = alloca %"class.LIEF::result.316", align 4  ; 13 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 16384, ptr %i.b, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(552) %i.j) #24
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !53, !align !54 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68, !noalias !920 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68, !noalias !921 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %.not113158 = icmp eq ptr %i.s, %i.q
  br i1 %.not113158, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !noalias !922 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95, !noalias !923 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not114174 = icmp eq ptr %i.aa, %i.y
  br i1 %.not114174, label %.loopexit, label %.lr.ph179

.lr.ph179:                                        ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.479.0160 = phi ptr [ %i.bv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.q, %bb.a ] ; 2 uses
  %.sroa.880.0159 = phi i64 [ %i.bw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ]
  %i.ap = phi i64 [ %i.bu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 16384, %bb.a ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.479.0160, align 8, !tbaa !70 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !134
  %cond = icmp eq i64 %i.as, 10
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106 ; 4 uses
  %i.av = load i64, ptr %i.au, align 1
  %i.aw = xor i64 %i.av, 4919420967581409119
  %i.ax = getelementptr i8, ptr %i.au, i64 8
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i64
  %i.ba = xor i64 %i.az, 21577
  %i.bb = or i64 %i.aw, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bf = load i64, ptr %i.au, align 1
  %i.bg = xor i64 %i.bf, 4997382908861767519
  %i.bh = getelementptr i8, ptr %i.au, i64 8
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = zext i16 %i.bi to i64
  %i.bk = xor i64 %i.bj, 20306
  %i.bl = or i64 %i.bg, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !88
  %spec.select112 = tail call i64 @llvm.usub.sat.i64(i64 %i.bq, i64 %i.n)
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !89
  %i.bt = add i64 %spec.select112, %i.bs
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.bt) ; 2 uses
  store i64 %.sroa.speculated, ptr %i.b, align 8, !tbaa !91
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87
  %i.bu = phi i64 [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86 ], [ %.sroa.speculated, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.479.0160, i64 8
  %i.bw = add nuw nsw i64 %.sroa.880.0159, 1      ; 2 uses
  %.not113.a = icmp eq i64 %i.bw, %i.w
  br i1 %.not113.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph179, %.thread101
  %.sroa.468.0176 = phi ptr [ %i.y, %.lr.ph179 ], [ %i.fh, %.thread101 ] ; 2 uses
  %.sroa.8.0175 = phi i64 [ 0, %.lr.ph179 ], [ %i.fi, %.thread101 ]
  %i.bx = load ptr, ptr %.sroa.468.0176, align 8, !tbaa !97 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !98
  %i.ca = icmp ne i64 %i.bz, 58
  %i.cb = icmp eq ptr %i.bx, null
  %i.cc = or i1 %i.cb, %i.ca
  br i1 %i.cc, label %.thread101, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !924 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !164 ; 12 uses
  %i.ch = icmp ult i64 %i.cg, 24
  br i1 %i.ch, label %.thread98, label %_ZNK4LIEF10SpanStream7read_atEmmm.exit

.thread98:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !91
  %i.ci = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.112, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4LIEF5MachO13LayoutChecker27check_lazy_load_dylib_infosEvE11HEADER_SIZE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.loopexit

_ZNK4LIEF10SpanStream7read_atEmmm.exit:           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i64 0, ptr %i.af, align 8, !tbaa !111
  store i8 0, ptr %i.ag, align 8, !tbaa !112
  store i32 3, ptr %i.ah, align 4, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %1, align 8, !tbaa !62
  store ptr %i.ce, ptr %i.ai, align 8, !tbaa !115
  store i64 %i.cg, ptr %i.aj, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %.not290 = icmp eq ptr %i.ce, null
  br i1 %.not290, label %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread, label %bb.d

_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread:    ; preds = %_ZNK4LIEF10SpanStream7read_atEmmm.exit
  store i32 1, ptr %2, align 4, !tbaa !928, !alias.scope !925
  store i64 0, ptr %i.af, align 8, !tbaa !111, !noalias !925
  store i8 0, ptr %i.ak, align 4, !tbaa !930, !alias.scope !925
  %i.cj = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.113)
  br label %.thread106

bb.d:                                             ; preds = %_ZNK4LIEF10SpanStream7read_atEmmm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) %i.ce, i64 24, i1 false)
  store i64 0, ptr %i.af, align 8, !tbaa !111, !noalias !925
  store i8 1, ptr %i.ak, align 4, !tbaa !930, !alias.scope !925
  %i.ck = load i32, ptr %2, align 4, !tbaa !932
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = icmp ult i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !91
  %i.cn = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.114, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.thread106

bb.f:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cl ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %gepdiff = sub nuw nsw i64 %i.cg, %i.cl         ; 2 uses
  %i.cr = ashr i64 %gepdiff, 2                    ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ct = and i64 %gepdiff, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.co, i64 %i.ct
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i ], [ %i.dg, %bb.k ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %i.df, %bb.k ] ; 9 uses
  %i.cu = load i8, ptr %.02946.i.i.i, align 1, !tbaa !107
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !107
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !107
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !107
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.dg = add nsw i64 %.047.i.i.i, -1
  %i.dh = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.dh, label %bb.g, label %._crit_edge.i.i.i, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.f
  %.029.lcssa.i.i.i = phi ptr [ %i.co, %bb.f ], [ %scevgep.i.i.i, %bb.k ] ; 6 uses
  %.pre-phi.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i to i64
  %i.di = sub i64 %i.cq, %.pre-phi.i.i.i
  switch i64 %i.di, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.dj = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !107
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.m
  %.1.i.i.i = phi ptr [ %i.dl, %bb.m ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dm = load i8, ptr %.1.i.i.i, align 1, !tbaa !107
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.n
  %.2.i.i.i = phi ptr [ %i.do, %bb.n ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.dp = load i8, ptr %.2.i.i.i, align 1, !tbaa !107
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401: ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403: ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit:                ; preds = %bb.g, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403, %bb.l, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.l ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.dt, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403 ], [ %i.dr, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ds, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401 ], [ %.02946.i.i.i, %bb.g ]
  %i.du = icmp eq ptr %.028.i.i.i, %i.cp
  br i1 %i.du, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, label %bb.o

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread:         ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.dv = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.115)
  br label %.thread106

bb.o:                                             ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.dw = load i32, ptr %i.al, align 4, !tbaa !933
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !91  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ea = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.116, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.thread106

bb.q:                                             ; preds = %bb.o
  %i.eb = load i32, ptr %i.am, align 4, !tbaa !934
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp ult i64 %i.dy, %i.ec
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ee = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.117, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.thread106

bb.s:                                             ; preds = %bb.q
  %i.ef = load i32, ptr %i.an, align 4, !tbaa !935
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = load i32, ptr %i.ao, align 4, !tbaa !936 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = icmp ult i64 %i.cg, %i.eg
  %i.el = sub nuw i64 %i.cg, %i.eg
  %i.em = icmp ugt i64 %i.ej, %i.el
  %i.en = select i1 %i.ek, i1 true, i1 %i.em
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 %i.cg, ptr %i.e, align 8, !tbaa !91
  %i.eo = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.118, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.thread106

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 0, ptr %i.f, align 4, !tbaa !117
  %.not169.not = icmp eq i32 %i.eh, 0
  br i1 %.not169.not, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.u, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.u ] ; 2 uses
  %i.ep = load i32, ptr %i.an, align 4, !tbaa !935
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %indvars.iv, 2
  %i.es = add nuw nsw i64 %i.er, %i.eq            ; 3 uses
  store i64 %i.es, ptr %i.af, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !117
  %i.et = load ptr, ptr %1, align 8, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call i64 %i.ev(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.es, i64 noundef 4, i64 noundef 0) #24, !inline_history !918
  %i.ex = and i64 %i.ew, 4294967296
  %.not.i.i = icmp eq i64 %i.ex, 0
  store i64 %i.es, ptr %i.af, align 8, !tbaa !111
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread, label %bb.v

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread: ; preds = %.lr.ph172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.af, align 8, !tbaa !111
  br label %.thread109

bb.v:                                             ; preds = %.lr.ph172
  %i.ey = load i8, ptr %i.ag, align 8, !tbaa !112, !range !118, !noundef !53
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit

bb.w:                                             ; preds = %bb.v
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  br label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit: ; preds = %bb.v, %bb.w
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !117 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.af, align 8, !tbaa !111
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp ult i64 %i.cg, %i.fb
  br i1 %i.fc, label %.thread109, label %bb.x

.thread109:                                       ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread
  %i.fd = phi i32 [ 0, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread ], [ %i.fa, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 %i.fd, ptr %i.g, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.cg, ptr %i.h, align 8, !tbaa !91
  %i.fe = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.119, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.loopexit

bb.x:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %3 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %3, ptr %i.f, align 4, !tbaa !117
  %i.ff = load i32, ptr %i.ao, align 4, !tbaa !936
  %i.fg = zext i32 %i.ff to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.fg
  br i1 %.not, label %.lr.ph172, label %._crit_edge173, !llvm.loop !919

.thread106:                                       ; preds = %bb.e, %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, %bb.p, %bb.r, %bb.t
  %.6.ph = phi i1 [ %i.eo, %bb.t ], [ %i.ee, %bb.r ], [ %i.ea, %bb.p ], [ %i.dv, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread ], [ %i.cj, %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread ], [ %i.cn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.loopexit

._crit_edge173:                                   ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread101

.thread101:                                       ; preds = %bb.b, %._crit_edge173
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.468.0176, i64 8
  %i.fi = add nuw nsw i64 %.sroa.8.0175, 1        ; 2 uses
  %.not114 = icmp eq i64 %i.fi, %i.ae
  br i1 %.not114, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.thread101, %._crit_edge, %.thread109, %.thread106, %.thread98
  %.not114126 = phi i1 [ %i.fe, %.thread109 ], [ %.6.ph, %.thread106 ], [ %i.ci, %.thread98 ], [ true, %._crit_edge ], [ true, %.thread101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret i1 %.not114126
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker9check_tlsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.LIEF::optional", align 8    ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.LIEF::MachO::ThreadLocalVariables::Thunk", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !60
  %.fr = freeze i32 %i.g
  %i.h = tail call { i64, i64 } @_ZNK4LIEF5MachO6Binary25tlv_initial_content_rangeEv(ptr noundef nonnull align 8 dereferenceable(552) %i.e) #24 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100, !noalias !945 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100, !noalias !946 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %.not95105 = icmp eq ptr %i.o, %i.m
  br i1 %.not95105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.034108 = phi ptr [ %spec.select, %.thread ], [ null, %bb.a ]
  %.sroa.465.0107 = phi ptr [ %i.at, %.thread ], [ %i.m, %bb.a ] ; 2 uses
  %.sroa.866.0106 = phi i64 [ %i.au, %.thread ], [ 0, %bb.a ]
  %i.t = load ptr, ptr %.sroa.465.0107, align 8, !tbaa !102 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !105
  %i.w = and i32 %i.v, 255
  %i.x = icmp eq i32 %i.w, 19
  %..i = select i1 %i.x, ptr %i.t, ptr null       ; 2 uses
  %.not = icmp eq ptr %..i, null
  %spec.select = select i1 %.not, ptr %.034108, ptr %..i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !60  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -17958194
  %i.ac = icmp eq i32 %i.aa, -822415874
  %spec.select.i.i48 = or i1 %i.ab, %i.ac
  %i.ad = select i1 %spec.select.i.i48, i64 12, i64 24 ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !91
  %.not43 = icmp eq ptr %spec.select, null
  br i1 %.not43, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ae = load ptr, ptr %spec.select, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call { ptr, i64 } %i.ag(ptr noundef nonnull align 8 dereferenceable(192) %spec.select) #24
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !91
  %i.aj = urem i64 %i.ai, %i.ad
  %.not44 = icmp eq i64 %i.aj, 0
  br i1 %.not44, label %.thread82, label %bb.c

.thread82:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = load ptr, ptr %spec.select, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %spec.select) #24
  %i.an = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.120, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ao = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %.thread84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !107
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %.thread84

.thread84:                                        ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit

.thread:                                          ; preds = %.lr.ph, %.thread82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.465.0107, i64 8
  %i.au = add nuw nsw i64 %.sroa.866.0106, 1      ; 2 uses
  %.not95 = icmp eq i64 %i.au, %i.s
  br i1 %.not95, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.034.lcssa = phi ptr [ null, %bb.a ], [ %spec.select, %.thread ] ; 4 uses
  %i.av = sub i64 %i.j, %i.i
  %.fr122 = freeze i64 %i.av                      ; 4 uses
  %i.aw = icmp ugt i64 %.fr122, 4294967296
  br i1 %i.aw, label %switch.early.test, label %bb.d

switch.early.test:                                ; preds = %._crit_edge
  %i.ax = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.121)
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %.not45 = icmp eq ptr %.034.lcssa, null
  br i1 %.not45, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = tail call noundef i64 @_ZNK4LIEF5MachO20ThreadLocalVariables9nb_thunksEv(ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa) #24, !noalias !947 ; 3 uses
  %.not96109 = icmp eq i64 %i.ay, 0
  br i1 %.not96109, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  switch i32 %.fr, label %.lr.ph112.split.split [
    i32 -17958194, label %.lr.ph112.split.us.preheader
    i32 -822415874, label %.lr.ph112.split.us.preheader
  ]

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112, %.lr.ph112
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us.preheader, %bb.g
  %.sroa.4.0110.us = phi i64 [ %i.bf, %bb.g ], [ 0, %.lr.ph112.split.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !948
  call void @_ZNK4LIEF5MachO20ThreadLocalVariables3getEm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::optional") align 8 %1, ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa, i64 noundef %.sroa.4.0110.us) #24, !noalias !948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !948
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !950
  %i.bc = icmp ugt i64 %i.bb, %.fr122
  br i1 %i.bc, label %.split.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph112.split.us
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !951
  %i.be = icmp ugt i64 %i.bd, 65535
  br i1 %i.be, label %.split114.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bf = add nuw i64 %.sroa.4.0110.us, 1         ; 2 uses
  %.not96.us = icmp eq i64 %i.bf, %i.ay
  br i1 %.not96.us, label %.loopexit, label %.lr.ph112.split.us

.lr.ph112.split.split:                            ; preds = %.lr.ph112, %bb.i
  %.sroa.4.0110 = phi i64 [ %i.bm, %bb.i ], [ 0, %.lr.ph112 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !948
  call void @_ZNK4LIEF5MachO20ThreadLocalVariables3getEm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::optional") align 8 %1, ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa, i64 noundef %.sroa.4.0110) #24, !noalias !948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !948
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !950
  %i.bh = icmp ugt i64 %i.bg, %.fr122
  br i1 %i.bh, label %.split.us, label %bb.h

.split.us:                                        ; preds = %.lr.ph112.split.us, %.lr.ph112.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %.fr122, ptr %i.c, align 8, !tbaa !91
  %i.bi = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread90

end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.168) #28
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.167) #28
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !117
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !372
  %i.b = load i8, ptr %0, align 1, !tbaa !107     ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !107   ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !32

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !32

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !107
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.151) #28
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !117
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !107
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !126 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.160) #28
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !126
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !372
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %4, ptr %5, align 8, !tbaa !1377
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !1378
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !131
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !107
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !372
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.157) #28
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !107     ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !32

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !107   ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !32

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !32

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !107
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !107
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.157) #28
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1381, !nonnull !53, !align !54
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1382, !nonnull !53, !align !303
  store i32 1, ptr %i.am, align 4, !tbaa !372
  %i.an = load ptr, ptr %2, align 8, !tbaa !1383, !nonnull !53, !align !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !126
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.161) #28
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !126
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.157) #28
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1379

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !107 ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1379

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1379

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1381, !nonnull !53, !align !54 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1382, !nonnull !53, !align !303
  store i32 2, ptr %i.bl, align 4, !tbaa !372
  %i.bm = load ptr, ptr %2, align 8, !tbaa !1383, !nonnull !53, !align !54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !126
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #19 comdat {
bb.a:
  %4 = alloca %class.anon.746, align 1            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = load i32, ptr %3, align 4, !tbaa !268    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i64 %.01819.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 2
  %i.m = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.n = icmp ugt i64 %.01819.i, 9999
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.p = add i32 %.0.lcssa.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !107
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = and i32 %i.b, 4096
  %.not37 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %.str.136..str.137.i = select i1 %.not37, ptr @.str.137, ptr @.str.136
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i64 [ %i.ae, %.split.i ], [ %1, %bb.e ] ; 2 uses
  %.0.i6.idx = phi i64 [ %.0.i6.add, %.split.i ], [ 64, %bb.e ]
  %i.ab = and i64 %.012.i, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %.str.136..str.137.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !107
  %.0.i6.add = add nsw i64 %.0.i6.idx, -1         ; 4 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i6.add
  store i8 %i.ad, ptr %.ptr42, align 1, !tbaa !107
  %i.ae = lshr i64 %.012.i, 4                     ; 2 uses
  %.not.i7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i7, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !14

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.af = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.af, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ag = select i1 %.not37, i32 30768, i32 22576 ; 2 uses
  %.not.i8 = icmp eq i32 %2, 0
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = select i1 %.not.i8, i32 %i.ag, i32 %i.ah
  %i.aj = or i32 %i.ai, %2
  %i.ak = add i32 %i.aj, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i64 [ %i.ao, %.split.us.i ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 64, %bb.a ] ; 2 uses
  %i.al = trunc i64 %.012.us.i to i8
  %i.am = and i8 %i.al, 7
  %i.an = or disjoint i8 %i.am, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.an, ptr %.ptr41, align 1, !tbaa !107
  %i.ao = lshr i64 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i64 %i.ao, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, label %.split.us.i, !llvm.loop !14

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9: ; preds = %.split.us.i
  %i.ap = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9
  %gepdiff = sub nsw i64 65, %.0.us.i.idx
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp sge i64 %gepdiff, %i.as
  %i.au = icmp ne i64 %1, 0
  %or.cond.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i10, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i11:                                    ; preds = %bb.a, %.split.us.i11
  %.012.us.i12 = phi i64 [ %i.bb, %.split.us.i11 ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i13.idx = phi i64 [ %.0.us.i13.add, %.split.us.i11 ], [ 64, %bb.a ]
  %i.ay = trunc i64 %.012.us.i12 to i8
  %i.az = and i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 48
  %.0.us.i13.add = add nsw i64 %.0.us.i13.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i13.add
  store i8 %i.ba, ptr %.ptr, align 1, !tbaa !107
  %i.bb = lshr i64 %.012.us.i12, 1                ; 2 uses
  %.not.us.i14 = icmp eq i64 %i.bb, 0
  br i1 %.not.us.i14, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, label %.split.us.i11, !llvm.loop !14

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15: ; preds = %.split.us.i11
  %i.bc = and i32 %i.b, 8192
  %.not39 = icmp eq i32 %i.bc, 0
  br i1 %.not39, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %i.bd = and i32 %i.b, 4096
  %.not40 = icmp eq i32 %i.bd, 0
  %i.be = select i1 %.not40, i32 25136, i32 16944 ; 2 uses
  %.not.i16 = icmp eq i32 %2, 0
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = select i1 %.not.i16, i32 %i.be, i32 %i.bf
  %i.bh = or i32 %i.bg, %2
  %i.bi = add i32 %i.bh, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bj = trunc i64 %1 to i8
  %i.bk = and i32 %i.b, 7
  %i.bl = icmp eq i32 %i.bk, 1
  %i.bm = zext i1 %i.bl to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i8 %i.bm, ptr %4, align 1, !tbaa !292
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !293
  %i.bo = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %i.ak, %bb.f ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %i.ax, %bb.h ], [ %2, %bb.g ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %i.bi, %bb.i ], [ %2, %bb.c ], [ %2, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i13.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %.0.i6.add, %bb.f ], [ %.0.i6.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %.0.us.i13.add, %bb.i ], [ %i.q, %bb.c ], [ %i.y, %bb.d ] ; 5 uses
  %i.bp = trunc i64 %.0.i.idx to i32
  %i.bq = sub i32 64, %i.bp                       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !294 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !270 ; 4 uses
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = lshr i32 %.0, 24                        ; 2 uses
  %i.bz = add i32 %i.bq, %i.by                    ; 4 uses
  br i1 %i.bx, label %bb.k, label %bb.r
end_hunk_4
