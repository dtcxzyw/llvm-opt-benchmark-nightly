Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IPAddressV6?download=true
inline.NumInlined: 844
inline.NumDeleted: 405
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5folly6detail5Bytes5toHexB5cxx11EPKhm:bb.a
  unreachable

.thread7.i.i:                                     ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 1
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #39 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  store i64 %i.a, ptr %i.b, align 8, !tbaa !20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %cond = icmp eq i64 %i.a, 0
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread7.i.i
  %i.g = phi ptr [ %i.f, %.thread7.i.i ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.a, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %i.g, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.j, align 1, !tbaa !20
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i64 %2, 1
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.014 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = lshr i32 %i.n, 4
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = shl i64 %.014, 1                         ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %i.r, ptr %i.u, align 1, !tbaa !20
  %i.v = and i32 %i.n, 15
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = load ptr, ptr %0, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !20
  %i.ac = or disjoint i64 %.014, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20
  %i.ak = shl i64 %i.ac, 1                        ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 %i.aj, ptr %i.am, align 1, !tbaa !20
  %i.an = and i32 %i.af, 15
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = load ptr, ptr %0, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.aq, ptr %i.at, align 1, !tbaa !20
  %i.au = add nuw i64 %.014, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !151

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.014.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.014.epil.init
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !20
  %i.bc = shl i64 %.014.epil.init, 1              ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 %i.bb, ptr %i.be, align 1, !tbaa !20
  %i.bf = and i32 %i.ax, 15
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = load ptr, ptr %0, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  ret void
}

declare void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #31

; Function Attrs: nounwind
declare ptr @if_indextoname(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV616toFullyQualifiedB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(18) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !154
  %i.b = call noundef i64 @_ZN5folly6detail22fastIpv6ToBufferUnsafeERK8in6_addrPc(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %i.a), !noalias !154 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !26, !alias.scope !154
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.b, 0
  br i1 %i.e, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #37
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.b, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !27

.noexc9.i.i:                                      ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !18, !alias.scope !154
  store i64 %i.b, ptr %i.c, align 8, !tbaa !20, !alias.scope !154
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.b, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5folly6detail16fastIpv6ToStringB5cxx11ERK8in6_addr.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.a, align 16, !tbaa !20, !noalias !154
  store i8 %i.j, ptr %i.i, align 1, !tbaa !20
  br label %_ZN5folly6detail16fastIpv6ToStringB5cxx11ERK8in6_addr.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 16 %i.a, i64 %i.b, i1 false)
  br label %_ZN5folly6detail16fastIpv6ToStringB5cxx11ERK8in6_addr.exit

_ZN5folly6detail16fastIpv6ToStringB5cxx11ERK8in6_addr.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8, !tbaa !19, !alias.scope !154
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  store i8 0, ptr %i.l, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !154
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail22fastIpv6ToBufferUnsafeERK8in6_addrPc(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !40
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.b = insertelement <4 x i16> poison, i16 %rev.i, i64 0
  %i.c = shufflevector <4 x i16> %i.b, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.d = and <4 x i16> %i.c, <i16 -1, i16 4095, i16 255, i16 15> ; 2 uses
  %i.e = lshr <4 x i16> %i.d, <i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.f = icmp ult <4 x i16> %i.d, <i16 -24576, i16 2560, i16 160, i16 10>
  %i.g = or disjoint <4 x i16> %i.e, splat (i16 48)
  %i.h = add nuw nsw <4 x i16> %i.e, splat (i16 87)
  %i.i = select <4 x i1> %i.f, <4 x i16> %i.g, <4 x i16> %i.h
  %i.j = trunc nuw nsw <4 x i16> %i.i to <4 x i8>
  store <4 x i8> %i.j, ptr %1, align 1, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 58, ptr %i.k, align 1, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !40
  %rev.i.1 = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.o = insertelement <4 x i16> poison, i16 %rev.i.1, i64 0
  %i.p = shufflevector <4 x i16> %i.o, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.q = and <4 x i16> %i.p, <i16 -1, i16 4095, i16 255, i16 15> ; 2 uses
  %i.r = lshr <4 x i16> %i.q, <i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.s = icmp ult <4 x i16> %i.q, <i16 -24576, i16 2560, i16 160, i16 10>
  %i.t = or disjoint <4 x i16> %i.r, splat (i16 48)
  %i.u = add nuw nsw <4 x i16> %i.r, splat (i16 87)
  %i.v = select <4 x i1> %i.s, <4 x i16> %i.t, <4 x i16> %i.u
  %i.w = trunc nuw nsw <4 x i16> %i.v to <4 x i8>
  store <4 x i8> %i.w, ptr %i.l, align 1, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 58, ptr %i.x, align 1, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !40
  %rev.i.2 = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ab = insertelement <4 x i16> poison, i16 %rev.i.2, i64 0
  %i.ac = shufflevector <4 x i16> %i.ab, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ad = and <4 x i16> %i.ac, <i16 -1, i16 4095, i16 255, i16 15> ; 2 uses
  %i.ae = lshr <4 x i16> %i.ad, <i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.af = icmp ult <4 x i16> %i.ad, <i16 -24576, i16 2560, i16 160, i16 10>
  %i.ag = or disjoint <4 x i16> %i.ae, splat (i16 48)
  %i.ah = add nuw nsw <4 x i16> %i.ae, splat (i16 87)
  %i.ai = select <4 x i1> %i.af, <4 x i16> %i.ag, <4 x i16> %i.ah
  %i.aj = trunc nuw nsw <4 x i16> %i.ai to <4 x i8>
  store <4 x i8> %i.aj, ptr %i.y, align 1, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 58, ptr %i.ak, align 1, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.an = load i16, ptr %i.am, align 2, !tbaa !40
  %rev.i.3 = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ao = insertelement <4 x i16> poison, i16 %rev.i.3, i64 0
  %i.ap = shufflevector <4 x i16> %i.ao, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.aq = and <4 x i16> %i.ap, <i16 -1, i16 4095, i16 255, i16 15> ; 2 uses
  %i.ar = lshr <4 x i16> %i.aq, <i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.as = icmp ult <4 x i16> %i.aq, <i16 -24576, i16 2560, i16 160, i16 10>
  %i.at = or disjoint <4 x i16> %i.ar, splat (i16 48)
  %i.au = add nuw nsw <4 x i16> %i.ar, splat (i16 87)
  %i.av = select <4 x i1> %i.as, <4 x i16> %i.at, <4 x i16> %i.au
  %i.aw = trunc nuw nsw <4 x i16> %i.av to <4 x i8>
  store <4 x i8> %i.aw, ptr %i.al, align 1, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 58, ptr %i.ax, align 1, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !40
  %rev.i.4 = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bb = insertelement <4 x i16> poison, i16 %rev.i.4, i64 0
  %i.bc = shufflevector <4 x i16> %i.bb, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bd = and <4 x i16> %i.bc, <i16 -1, i16 4095, i16 255, i16 15> ; 2 uses
  %i.be = lshr <4 x i16> %i.bd, <i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.bf = icmp ult <4 x i16> %i.bd, <i16 -24576, i16 2560, i16 160, i16 10>
  %i.bg = or disjoint <4 x i16> %i.be, splat (i16 48)
  %i.bh = add nuw nsw <4 x i16> %i.be, splat (i16 87)
  %i.bi = select <4 x i1> %i.bf, <4 x i16> %i.bg, <4 x i16> %i.bh
  %i.bj = trunc nuw nsw <4 x i16> %i.bi to <4 x i8>
  store <4 x i8> %i.bj, ptr %i.ay, align 1, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 58, ptr %i.bk, align 1, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !40
  %rev.i.5 = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bo = insertelement <4 x i16> poison, i16 %rev.i.5, i64 0
  %i.bp = shufflevector <4 x i16> %i.bo, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bq = and <4 x i16> %i.bp, <i16 -1, i16 4095, i16 255, i16 15> ; 2 uses
  %i.br = lshr <4 x i16> %i.bq, <i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.bs = icmp ult <4 x i16> %i.bq, <i16 -24576, i16 2560, i16 160, i16 10>
  %i.bt = or disjoint <4 x i16> %i.br, splat (i16 48)
  %i.bu = add nuw nsw <4 x i16> %i.br, splat (i16 87)
  %i.bv = select <4 x i1> %i.bs, <4 x i16> %i.bt, <4 x i16> %i.bu
  %i.bw = trunc nuw nsw <4 x i16> %i.bv to <4 x i8>
  store <4 x i8> %i.bw, ptr %i.bl, align 1, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 58, ptr %i.bx, align 1, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !40
  %rev.i.6 = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cb = insertelement <4 x i16> poison, i16 %rev.i.6, i64 0
  %i.cc = shufflevector <4 x i16> %i.cb, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cd = and <4 x i16> %i.cc, <i16 -1, i16 4095, i16 255, i16 15> ; 2 uses
  %i.ce = lshr <4 x i16> %i.cd, <i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.cf = icmp ult <4 x i16> %i.cd, <i16 -24576, i16 2560, i16 160, i16 10>
  %i.cg = or disjoint <4 x i16> %i.ce, splat (i16 48)
  %i.ch = add nuw nsw <4 x i16> %i.ce, splat (i16 87)
  %i.ci = select <4 x i1> %i.cf, <4 x i16> %i.cg, <4 x i16> %i.ch
  %i.cj = trunc nuw nsw <4 x i16> %i.ci to <4 x i8>
  store <4 x i8> %i.cj, ptr %i.by, align 1, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i8 58, ptr %i.ck, align 1, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !40
  %rev.i.7 = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.co = insertelement <4 x i16> poison, i16 %rev.i.7, i64 0
  %i.cp = shufflevector <4 x i16> %i.co, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cq = and <4 x i16> %i.cp, <i16 -1, i16 4095, i16 255, i16 15> ; 2 uses
  %i.cr = lshr <4 x i16> %i.cq, <i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.cs = icmp ult <4 x i16> %i.cq, <i16 -24576, i16 2560, i16 160, i16 10>
  %i.ct = or disjoint <4 x i16> %i.cr, splat (i16 48)
  %i.cu = add nuw nsw <4 x i16> %i.cr, splat (i16 87)
  %i.cv = select <4 x i1> %i.cs, <4 x i16> %i.ct, <4 x i16> %i.cu
  %i.cw = trunc nuw nsw <4 x i16> %i.cv to <4 x i8>
  store <4 x i8> %i.cw, ptr %i.cl, align 1, !tbaa !20
  ret i64 39
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV622toFullyQualifiedAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = call noundef i64 @_ZN5folly6detail22fastIpv6ToBufferUnsafeERK8in6_addrPc(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = icmp ult i64 %i.d, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i.i, label %_ZN5folly6detail22fastIpv6AppendToStringERK8in6_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.a, align 16, !tbaa !20
  store i8 %i.o, ptr %i.n, align 1, !tbaa !20
  br label %_ZN5folly6detail22fastIpv6AppendToStringERK8in6_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.a, i64 %i.b, i1 false)
  br label %_ZN5folly6detail22fastIpv6AppendToStringERK8in6_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.b)
  br label %_ZN5folly6detail22fastIpv6AppendToStringERK8in6_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5folly6detail22fastIpv6AppendToStringERK8in6_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !19
  %i.p = load ptr, ptr %1, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV617toInverseArpaNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"struct.std::array.56", align 1    ; 36 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20    ; 2 uses
  %i.c = and i8 %i.b, 15
  %i.d = zext nneg i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  store i8 %i.f, ptr %3, align 1, !tbaa !20
  %i.g = lshr i8 %i.b, 4
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.m = load i8, ptr %i.l, align 2, !tbaa !20    ; 2 uses
  %i.n = and i8 %i.m, 15
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.q, ptr %i.r, align 1, !tbaa !20
  %i.s = lshr i8 %i.m, 4
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20    ; 2 uses
  %i.z = and i8 %i.y, 15
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !20
  %i.ae = lshr i8 %i.y, 4
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !20  ; 2 uses
  %i.al = and i8 %i.ak, 15
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !20
  %i.aq = lshr i8 %i.ak, 4
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %i.at, ptr %i.au, align 1, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20  ; 2 uses
  %i.ax = and i8 %i.aw, 15
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !20
  %i.bc = lshr i8 %i.aw, 4
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !20  ; 2 uses
  %i.bj = and i8 %i.bi, 15
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !20
  %i.bo = lshr i8 %i.bi, 4
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !20  ; 2 uses
  %i.bv = and i8 %i.bu, 15
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !20
  %i.ca = lshr i8 %i.bu, 4
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !20  ; 2 uses
  %i.ch = and i8 %i.cg, 15
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !20
  %i.cm = lshr i8 %i.cg, 4
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !20  ; 2 uses
  %i.ct = and i8 %i.cs, 15
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !20
  %i.cy = lshr i8 %i.cs, 4
  %i.cz = zext nneg i8 %i.cy to i64
end_hunk_0
