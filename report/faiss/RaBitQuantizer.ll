Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/RaBitQuantizer?download=true
inline.NumInlined: 400
inline.NumDeleted: 220
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5faiss14RaBitQuantizer11decode_coreEPKhPfmPKf:bb.a
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  store ptr %2, ptr %i.b, align 8, !tbaa !31
  store i64 %3, ptr %i.c, align 8, !tbaa !33
  store ptr %4, ptr %i.d, align 8, !tbaa !31
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !28
  store i8 0, ptr %i.j, align 8, !tbaa !29
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #17 ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.l to i64                ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.o)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %5, align 8, !tbaa !30
  %i.q = load i64, ptr %i.k, align 8, !tbaa !28
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.n)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.t = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss14RaBitQuantizer11decode_coreEPKhPfmPKf, ptr noundef nonnull @.str.2, i32 noundef 189)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.x unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn15 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.u, %bb.h ]
  %i.v = load ptr, ptr %5, align 8, !tbaa !30     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.j, align 8, !tbaa !29
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %2, null
  br i1 %i.z, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.aa, ptr %6, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !28
  store i8 0, ptr %i.aa, align 8, !tbaa !29
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #17 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ae = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.af)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %6, align 8, !tbaa !30
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ai = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ae)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.ak = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss14RaBitQuantizer11decode_coreEPKhPfmPKf, ptr noundef nonnull @.str.2, i32 noundef 191)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.x unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ak) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.al, %bb.q ]
  %i.am = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.r
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.w

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = uitofp i64 %i.ar to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.at)
  %i.au = fdiv float 1.000000e+00, %sqrt
  %i.av = select i1 %i.as, float 1.000000e+00, float %i.au
  store float %i.av, ptr %i.e, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !23
  %i.ay = add i64 %i.ax, -1
  store i64 %i.ay, ptr %i.f, align 8, !tbaa !33
  %i.az = icmp ugt i64 %3, 1000
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK5faiss14RaBitQuantizer11decode_coreEPKhPfmPKf.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.h)
  store i32 %i.h, ptr %i.g, align 4, !tbaa !36
  call void @_ZNK5faiss14RaBitQuantizer11decode_coreEPKhPfmPKf.omp_outlined(ptr nonnull %i.g, ptr nonnull poison, ptr %i.c, ptr %i.a, ptr nonnull %0, ptr poison, ptr %i.b, ptr %i.e, ptr %i.d) #17
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.h)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  ret void

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  resume { ptr, i32 } %.pn15.pn

bb.x:                                             ; preds = %bb.p, %bb.g
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss14RaBitQuantizer11decode_coreEPKhPfmPKf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #18 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.g, ptr %i.b, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 1, ptr %i.c, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !33
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 6 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !33
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  %.not36 = icmp sgt i64 %i.k, %i.j
  br i1 %.not36, label %._crit_edge40.split, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !32     ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 8 uses
  %.pn.in.in.in = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pn.in.in = load i64, ptr %.pn.in.in.in, align 8, !tbaa !18 ; 16 uses
  %.pn.in = add i64 %.pn.in.in, 7
  %.pn = lshr i64 %.pn.in, 3                      ; 4 uses
  %.not43 = icmp eq i64 %.pn.in.in, 0
  br i1 %.not43, label %._crit_edge40.split, label %.lr.ph39.split

.lr.ph39.split:                                   ; preds = %.lr.ph39
  %i.o = load ptr, ptr %8, align 8, !tbaa !31     ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = load ptr, ptr %6, align 8, !tbaa !31     ; 4 uses
  %i.r = mul i64 %.pn.in.in, %i.k
  %i.s = shl i64 %i.r, 2
  %scevgep83.a = getelementptr i8, ptr %i.q, i64 %i.s ; 7 uses
  %i.t = shl i64 %i.j, 2
  %i.u = add i64 %i.t, 4
  %9 = mul i64 %.pn.in.in, %i.u
  %scevgep84 = getelementptr i8, ptr %i.q, i64 %9 ; 7 uses
  %10 = shl i64 %.pn.in.in, 2                     ; 7 uses
  %11 = mul i64 %i.n, %i.k                        ; 2 uses
  %12 = getelementptr i8, ptr %i.l, i64 %.pn
  %13 = getelementptr i8, ptr %12, i64 %11
  %scevgep85 = getelementptr i8, ptr %13, i64 4   ; 2 uses
  %i.v = mul i64 %i.n, %i.j                       ; 2 uses
  %14 = getelementptr i8, ptr %i.l, i64 %.pn
  %15 = getelementptr i8, ptr %14, i64 %i.v
  %scevgep86 = getelementptr i8, ptr %15, i64 8   ; 2 uses
  %scevgep87 = getelementptr i8, ptr %i.l, i64 %11 ; 2 uses
  %16 = add i64 %.pn.in.in, -1
  %17 = lshr i64 %16, 3
  %18 = getelementptr i8, ptr %i.l, i64 %17
  %19 = getelementptr i8, ptr %18, i64 %i.v
  %scevgep88 = getelementptr i8, ptr %19, i64 1   ; 2 uses
  %scevgep89 = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  br i1 %i.p, label %.lr.ph.us.preheader.a, label %.lr.ph.preheader

.lr.ph.us.preheader.a:                            ; preds = %.lr.ph39.split
  %min.iters.check107 = icmp ult i64 %.pn.in.in, 8
  %bound090 = icmp ult ptr %scevgep83.a, %scevgep86
  %bound191 = icmp ult ptr %scevgep85, %scevgep84
  %found.conflict92 = and i1 %bound090, %bound191
  %20 = or i64 %i.n, %10
  %21 = icmp slt i64 %20, 0
  %22 = or i1 %found.conflict92, %21
  %bound095 = icmp ult ptr %scevgep83.a, %scevgep88
  %bound196 = icmp ult ptr %scevgep87, %scevgep84
  %found.conflict97 = and i1 %bound095, %bound196
  %23 = or i64 %i.n, %10
  %24 = icmp slt i64 %23, 0
  %25 = or i1 %found.conflict97, %24
  %conflict.rdx100 = or i1 %22, %25
  %bound0101 = icmp ult ptr %scevgep83.a, %scevgep89
  %bound1102 = icmp ult ptr %7, %scevgep84
  %found.conflict103 = and i1 %bound0101, %bound1102
  %stride.check104 = icmp slt i64 %10, 0
  %26 = or i1 %found.conflict103, %stride.check104
  %conflict.rdx105 = or i1 %conflict.rdx100, %26
  %n.vec109 = and i64 %.pn.in.in, -4              ; 3 uses
  %cmp.n122 = icmp eq i64 %.pn.in.in, %n.vec109
  br label %.lr.ph.us

.lr.ph.preheader:                                 ; preds = %.lr.ph39.split
  %scevgep61.a = getelementptr i8, ptr %i.o, i64 %10
  %min.iters.check = icmp ult i64 %.pn.in.in, 8
  %bound0 = icmp ult ptr %scevgep83.a, %scevgep86
  %bound1 = icmp ult ptr %scevgep85, %scevgep84
  %found.conflict = and i1 %bound0, %bound1
  %27 = or i64 %i.n, %10
  %28 = icmp slt i64 %27, 0
  %29 = or i1 %found.conflict, %28
  %bound063 = icmp ult ptr %scevgep83.a, %scevgep88
  %bound164 = icmp ult ptr %scevgep87, %scevgep84
  %found.conflict65 = and i1 %bound063, %bound164
  %30 = or i64 %i.n, %10
  %31 = icmp slt i64 %30, 0
  %32 = or i1 %found.conflict65, %31
  %conflict.rdx = or i1 %29, %32
  %bound068 = icmp ult ptr %scevgep83.a, %scevgep89
  %bound169 = icmp ult ptr %7, %scevgep84
  %found.conflict70 = and i1 %bound068, %bound169
  %stride.check71 = icmp slt i64 %10, 0
  %i.w = or i1 %found.conflict70, %stride.check71
  %conflict.rdx72 = or i1 %conflict.rdx, %i.w
  %bound073 = icmp ult ptr %scevgep83.a, %scevgep61.a
  %bound174 = icmp ult ptr %i.o, %scevgep84
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx77 = or i1 %found.conflict75, %conflict.rdx72
  %n.vec = and i64 %.pn.in.in, -4                 ; 3 uses
  %cmp.n = icmp eq i64 %.pn.in.in, %n.vec
  br label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader.a, %._crit_edge.split.us.us
  %.03237.us = phi i64 [ %i.bi, %._crit_edge.split.us.us ], [ %i.k, %.lr.ph.us.preheader.a ] ; 4 uses
  %i.x = mul i64 %i.n, %.03237.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.pn
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = mul i64 %.pn.in.in, %.03237.us
  %i.ac = getelementptr [4 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  %brmerge = select i1 %min.iters.check107, i1 true, i1 %conflict.rdx105
  br i1 %brmerge, label %scalar.ph106.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph.us
  %i.ad = load float, ptr %i.aa, align 1, !tbaa !43, !alias.scope !114
  %broadcast.splatinsert115 = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat116 = shufflevector <4 x float> %broadcast.splatinsert115, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = load float, ptr %7, align 4, !tbaa !38, !alias.scope !115
  %broadcast.splatinsert117 = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat118 = shufflevector <4 x float> %broadcast.splatinsert117, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next119, %vector.body110 ] ; 3 uses
  %vec.ind112 = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph108 ], [ %vec.ind.next120, %vector.body110 ] ; 2 uses
  %i.af = and <4 x i8> %vec.ind112, splat (i8 7)
  %i.ag = lshr i64 %index111, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29, !alias.scope !116
  %broadcast.splatinsert113 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat114 = shufflevector <4 x i8> %broadcast.splatinsert113, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.aj = lshr <4 x i8> %broadcast.splat114, %i.af
  %i.ak = and <4 x i8> %i.aj, splat (i8 1)
  %i.al = uitofp nneg <4 x i8> %i.ak to <4 x float>
  %i.am = fadd nnan <4 x float> %i.al, splat (float -5.000000e-01)
  %i.an = fmul <4 x float> %broadcast.splat116, %i.am
  %i.ao = fmul <4 x float> %i.an, splat (float 2.000000e+00)
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %broadcast.splat118, <4 x float> zeroinitializer)
  %i.aq = getelementptr [4 x i8], ptr %i.ac, i64 %index111
  store <4 x float> %i.ap, ptr %i.aq, align 4, !tbaa !38, !alias.scope !117, !noalias !118
  %index.next119 = add nuw i64 %index111, 4       ; 2 uses
  %vec.ind.next120 = add <4 x i8> %vec.ind112, splat (i8 4)
  %i.ar = icmp eq i64 %index.next119, %n.vec109
  br i1 %i.ar, label %middle.block121, label %vector.body110, !llvm.loop !104

middle.block121:                                  ; preds = %vector.body110
  br i1 %cmp.n122, label %._crit_edge.split.us.us, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %.lr.ph.us, %middle.block121
  %.035.us.us.ph = phi i64 [ %n.vec109, %middle.block121 ], [ 0, %.lr.ph.us ]
  br label %scalar.ph106

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %.035.us.us = phi i64 [ %i.bh, %scalar.ph106 ], [ %.035.us.us.ph, %scalar.ph106.preheader ] ; 4 uses
  %i.as = trunc i64 %.035.us.us to i8
  %i.at = and i8 %i.as, 7
  %i.au = lshr i64 %.035.us.us, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = lshr i8 %i.aw, %i.at
  %i.ay = and i8 %i.ax, 1
  %i.az = uitofp nneg i8 %i.ay to float
  %i.ba = fadd nnan float %i.az, -5.000000e-01
  %i.bb = load float, ptr %i.aa, align 1, !tbaa !43
  %i.bc = fmul float %i.bb, %i.ba
  %i.bd = fmul float %i.bc, 2.000000e+00
  %i.be = load float, ptr %7, align 4, !tbaa !38
  %i.bf = call float @llvm.fmuladd.f32(float %i.bd, float %i.be, float 0.000000e+00)
  %i.bg = getelementptr [4 x i8], ptr %i.ac, i64 %.035.us.us
  store float %i.bf, ptr %i.bg, align 4, !tbaa !38
  %i.bh = add nuw i64 %.035.us.us, 1              ; 2 uses
  %exitcond46.not = icmp eq i64 %i.bh, %.pn.in.in
  br i1 %exitcond46.not, label %._crit_edge.split.us.us, label %scalar.ph106, !llvm.loop !105

._crit_edge.split.us.us:                          ; preds = %scalar.ph106, %middle.block121
  %i.bi = add i64 %.03237.us, 1
  %exitcond47.not = icmp eq i64 %.03237.us, %i.j
  br i1 %exitcond47.not, label %._crit_edge40.split, label %.lr.ph.us

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split
  %.03237 = phi i64 [ %i.cf, %._crit_edge.split ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %i.bj = mul i64 %i.n, %.03237
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.pn
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bn = mul i64 %.pn.in.in, %.03237
  %i.bo = getelementptr [4 x i8], ptr %i.q, i64 %i.bn ; 2 uses
  %brmerge125 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx77
  br i1 %brmerge125, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.bp = load float, ptr %i.bm, align 1, !tbaa !43, !alias.scope !119
  %broadcast.splatinsert78 = insertelement <4 x float> poison, float %i.bp, i64 0
  %broadcast.splat79 = shufflevector <4 x float> %broadcast.splatinsert78, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = load float, ptr %7, align 4, !tbaa !38, !alias.scope !120
  %broadcast.splatinsert80 = insertelement <4 x float> poison, float %i.bq, i64 0
  %broadcast.splat81 = shufflevector <4 x float> %broadcast.splatinsert80, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.br = and <4 x i8> %vec.ind, splat (i8 7)
  %i.bs = lshr i64 %index, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29, !alias.scope !121
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.bu, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bv = lshr <4 x i8> %broadcast.splat, %i.br
  %i.bw = and <4 x i8> %i.bv, splat (i8 1)
  %i.bx = uitofp nneg <4 x i8> %i.bw to <4 x float>
  %i.by = fadd nnan <4 x float> %i.bx, splat (float -5.000000e-01)
  %i.bz = fmul <4 x float> %broadcast.splat79, %i.by
  %i.ca = fmul <4 x float> %i.bz, splat (float 2.000000e+00)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %wide.load = load <4 x float>, ptr %i.cb, align 4, !tbaa !38, !alias.scope !122
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %broadcast.splat81, <4 x float> %wide.load)
  %i.cd = getelementptr [4 x i8], ptr %i.bo, i64 %index
  store <4 x float> %i.cc, ptr %i.cd, align 4, !tbaa !38, !alias.scope !123, !noalias !124
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 4)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.035.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge.split:                                ; preds = %scalar.ph, %middle.block
  %i.cf = add i64 %.03237, 1
  %exitcond45.not = icmp eq i64 %.03237, %i.j
  br i1 %exitcond45.not, label %._crit_edge40.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.035 = phi i64 [ %i.cx, %scalar.ph ], [ %.035.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cg = trunc i64 %.035 to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = lshr i64 %.035, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cl = lshr i8 %i.ck, %i.ch
  %i.cm = and i8 %i.cl, 1
  %i.cn = uitofp nneg i8 %i.cm to float
  %i.co = fadd nnan float %i.cn, -5.000000e-01
  %i.cp = load float, ptr %i.bm, align 1, !tbaa !43
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fmul float %i.cq, 2.000000e+00
  %i.cs = load float, ptr %7, align 4, !tbaa !38
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.035
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !38
  %i.cv = call float @llvm.fmuladd.f32(float %i.cr, float %i.cs, float %i.cu)
  %i.cw = getelementptr [4 x i8], ptr %i.bo, i64 %.035
  store float %i.cv, ptr %i.cw, align 4, !tbaa !38
  %i.cx = add nuw i64 %.035, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %.pn.in.in
  br i1 %exitcond.not, label %._crit_edge.split, label %scalar.ph, !llvm.loop !113

._crit_edge40.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph39, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge40.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZNK5faiss14RaBitQuantizer21get_distance_computerEhPKfb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i8 noundef zeroext %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i, label %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #28, !noalias !129 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, i8 0, i64 80, i1 false), !noalias !129
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS_9SIMDLevelE0EEE, i64 16), ptr %i.b, align 16, !tbaa !21, !noalias !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !129
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !130, !noalias !129
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.g, i8 0, i64 28, i1 false), !noalias !129
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  store i32 %i.i, ptr %i.c, align 16, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.k, ptr %i.l, align 16, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  store i64 %i.o, ptr %i.d, align 8, !tbaa !57
  br label %"_ZN5faiss25with_selected_simd_levelsILi95EZNKS_14RaBitQuantizer21get_distance_computerEhPKfbE3$_0EEDaOT0_.exit"

_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.p = zext i1 %3 to i8
  %i.q = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28, !noalias !131 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.q, i8 0, i64 208, i1 false), !noalias !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS_9SIMDLevelE0EEE, i64 16), ptr %i.q, align 16, !tbaa !21, !noalias !131
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.t, i8 0, i64 96, i1 false), !noalias !131
  store float 1.000000e+00, ptr %i.u, align 8, !tbaa !130, !noalias !131
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.v, i8 0, i64 28, i1 false), !noalias !131
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  store i64 0, ptr %i.x, align 16, !tbaa !64, !noalias !131
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !22
  store i32 %i.z, ptr %i.r, align 16, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ab, ptr %i.ac, align 16, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %2, ptr %i.ad, align 8, !tbaa !56
  store i8 %1, ptr %i.w, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 201
  store i8 %i.p, ptr %i.ae, align 1, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !57
  br label %"_ZN5faiss25with_selected_simd_levelsILi95EZNKS_14RaBitQuantizer21get_distance_computerEhPKfbE3$_0EEDaOT0_.exit"

"_ZN5faiss25with_selected_simd_levelsILi95EZNKS_14RaBitQuantizer21get_distance_computerEhPKfbE3$_0EEDaOT0_.exit": ; preds = %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i, %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.b, %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i ], [ %i.q, %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i ]
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS_9SIMDLevelE0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(152) initializes((24, 32)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !67
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS_9SIMDLevelE0EE9set_queryEPKf, ptr noundef nonnull @.str.2, i32 noundef 339) #29 ; 0 uses
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54
  %switch = icmp ult i32 %i.f, 2
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS_9SIMDLevelE0EE9set_queryEPKf, ptr noundef nonnull @.str.2, i32 noundef 342) #29 ; 0 uses
  tail call void @abort() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %.not27 = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef nonnull %1, ptr noundef nonnull %i.j, i64 noundef %i.l)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = tail call noundef float @_ZN5faiss15fvec_norm_L2sqrEPKfm(ptr noundef nonnull %1, i64 noundef %i.l)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi float [ %i.n, %bb.g ], [ %i.m, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store float %.sink, ptr %i.o, align 4, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !55   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !71   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 3 uses
  %i.z = icmp ugt i64 %i.r, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = sub nuw i64 %i.r, %i.y
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.aa)
  %.pre = load i64, ptr %i.q, align 8, !tbaa !55
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp ult i64 %i.r, %i.y
  br i1 %i.ab, label %bb.k, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.ac
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !70
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.ad = phi i64 [ %.pre, %bb.i ], [ %i.r, %bb.j ], [ %i.r, %bb.k ], [ %i.r, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 18 uses
end_hunk_0
