Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scaf?download=true
inline.NumInlined: 7499
inline.NumDeleted: 3448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN3igl8triangle4scaf7buildAmERKN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEERKNS2_12SparseMatrixIdLi0EiEESA_RKNS3_IdLin1ELin1ELi0ELin1ELin1EEERS8_:bb.a

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  call void @free(ptr noundef %i.x) #32
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86
  call void @free(ptr noundef %i.z) #32
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  call void @free(ptr noundef %i.ah) #32
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  call void @free(ptr noundef %i.aj) #32
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !87 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.al) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !88 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21:       ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !75
  call void @free(ptr noundef %i.aq) #32
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !86
  call void @free(ptr noundef %i.ar) #32
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !87 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21
  call void @_ZdaPv(ptr noundef nonnull %i.at) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !88 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit22, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit22

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit22:       ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ay = load ptr, ptr %6, align 8, !tbaa !527   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit22
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !528
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #36
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit22, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

bb.r:                                             ; preds = %bb.f, %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_7ProductINS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEES1_Li0EEEEERKNS_16SparseMatrixBaseIT_EE.exit20
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.be, %bb.r ], [ %i.bf, %bb.s ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.body18
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.r, %.body18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #32
  br label %.body

.body:                                            ; preds = %.body16, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.m, %.body16 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %7) #32
  %.pre = load ptr, ptr %6, align 8, !tbaa !527   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %.not.i.i.i23 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !528
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %.pre to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.bk) #36
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit24

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit24: ; preds = %.body.thread, %.body, %bb.v
  %.pn.pn.pn.pn36 = phi { ptr, i32 } [ %i.f, %.body.thread ], [ %.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn.pn.pn.pn36
}

declare void @_ZN3igl11slim_buildAERKN5Eigen12SparseMatrixIdLi0EiEES4_S4_RKNS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEERSt6vectorINS0_7TripletIdiEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl8triangle4scaf8buildRhsERKN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEERKNS3_IdLin1ELin1ELi0ELin1ELin1EEES9_RS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101
  %i.c = icmp eq i64 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27   ; 6 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = select i1 %i.c, i64 17179869184, i64 38654705664
  %sext = mul i64 %i.e, %i.g                      ; 2 uses
  %i.h = ashr exact i64 %sext, 32                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !69
  %.not.i.i = icmp eq i64 %i.h, %i.j
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %3, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.k) #32
  %i.l = icmp sgt i64 %i.h, 0
  br i1 %i.l, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.b
  %i.m = lshr exact i64 %sext, 29
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #33 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %3, align 8, !tbaa !70
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  store i64 %i.h, ptr %i.i, align 8, !tbaa !69
  %i.q = icmp sgt i32 %i.f, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !70     ; 6 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !94     ; 12 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !94     ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.d, align 8, !tbaa !27   ; 5 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !27   ; 5 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !70     ; 11 uses
  %.idx = shl i64 %i.w, 4                         ; 4 uses
  %.idx59 = mul i64 %i.w, 24                      ; 4 uses
  %.idx60 = shl i64 %i.v, 4                       ; 4 uses
  %.idx61 = mul i64 %i.v, 24                      ; 4 uses
  %i.y = shl i64 %i.e, 1
  %i.z = mul i64 %i.e, 3
  %i.aa = and i64 %i.e, 2147483647                ; 7 uses
  %i.ab = and i64 %i.y, 4294967294
  %i.ac = and i64 %i.z, 4294967295                ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa ; 8 uses
  %invariant.gep66 = getelementptr [8 x i8], ptr %i.x, i64 %i.ab ; 7 uses
  %invariant.gep68 = getelementptr [8 x i8], ptr %i.x, i64 %i.ac ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.aa, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ad = mul nuw nsw i64 %i.aa, 24
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 3 uses
  %i.af = shl nuw nsw i64 %i.aa, 3                ; 9 uses
  %i.ag = add nuw nsw i64 %i.ac, %i.aa
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah   ; 4 uses
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.af   ; 3 uses
  %i.ak = getelementptr i8, ptr %i.s, i64 %.idx61 ; 3 uses
  %i.al = getelementptr i8, ptr %i.s, i64 %.idx61
  %i.am = getelementptr i8, ptr %i.al, i64 %i.af  ; 3 uses
  %i.an = getelementptr i8, ptr %i.s, i64 %.idx60 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %.idx60
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.af  ; 3 uses
  %i.aq = shl i64 %i.v, 3                         ; 2 uses
  %i.ar = getelementptr i8, ptr %i.s, i64 %i.aq   ; 3 uses
  %i.as = getelementptr i8, ptr %i.s, i64 %i.aq
  %i.at = getelementptr i8, ptr %i.as, i64 %i.af  ; 3 uses
  %i.au = getelementptr i8, ptr %i.s, i64 %i.af   ; 3 uses
  %i.av = getelementptr i8, ptr %i.t, i64 %.idx59 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.t, i64 %.idx59
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.af  ; 3 uses
  %i.ay = getelementptr i8, ptr %i.t, i64 %.idx   ; 3 uses
  %i.az = getelementptr i8, ptr %i.t, i64 %.idx
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.af  ; 3 uses
  %i.bb = shl i64 %i.w, 3                         ; 2 uses
  %i.bc = getelementptr i8, ptr %i.t, i64 %i.bb   ; 3 uses
  %i.bd = getelementptr i8, ptr %i.t, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.af  ; 3 uses
  %i.bf = getelementptr i8, ptr %i.t, i64 %i.af   ; 4 uses
  %4 = insertelement <8 x ptr> poison, ptr %i.x, i64 0
  %5 = shufflevector <8 x ptr> %4, <8 x ptr> poison, <8 x i32> zeroinitializer
  %6 = insertelement <8 x ptr> poison, ptr %i.ae, i64 0 ; 2 uses
  %7 = insertelement <8 x ptr> %6, ptr %i.ai, i64 1
  %8 = insertelement <8 x ptr> %7, ptr %i.aj, i64 2
  %9 = insertelement <8 x ptr> %8, ptr %i.am, i64 3
  %10 = insertelement <8 x ptr> %9, ptr %i.ap, i64 4
  %11 = insertelement <8 x ptr> %10, ptr %i.at, i64 5
  %12 = insertelement <8 x ptr> %11, ptr %i.au, i64 6
  %13 = insertelement <8 x ptr> %12, ptr %i.ax, i64 7
  %14 = icmp ult <8 x ptr> %5, %13
  %15 = insertelement <8 x ptr> poison, ptr %invariant.gep66, i64 0 ; 2 uses
  %16 = insertelement <8 x ptr> %15, ptr %invariant.gep68, i64 1
  %17 = insertelement <8 x ptr> %16, ptr %i.r, i64 2
  %18 = insertelement <8 x ptr> %17, ptr %i.ak, i64 3
  %19 = insertelement <8 x ptr> %18, ptr %i.an, i64 4
  %20 = insertelement <8 x ptr> %19, ptr %i.ar, i64 5
  %21 = insertelement <8 x ptr> %20, ptr %i.s, i64 6
  %22 = insertelement <8 x ptr> %21, ptr %i.av, i64 7
  %23 = insertelement <8 x ptr> poison, ptr %invariant.gep, i64 0
  %24 = shufflevector <8 x ptr> %23, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %25 = icmp ult <8 x ptr> %22, %24
  %26 = and <8 x i1> %14, %25
  %bound0270 = icmp ult ptr %i.x, %i.ba
  %bound1271 = icmp ult ptr %i.ay, %invariant.gep
  %found.conflict272 = and i1 %bound0270, %bound1271
  %bound0274 = icmp ult ptr %i.x, %i.be
  %bound1275 = icmp ult ptr %i.bc, %invariant.gep
  %found.conflict276 = and i1 %bound0274, %bound1275
  %bound0278 = icmp ult ptr %i.x, %i.bf
  %bound1279 = icmp ult ptr %i.t, %invariant.gep
  %found.conflict280.a = and i1 %bound0278, %bound1279
  %27 = insertelement <8 x ptr> poison, ptr %i.ai, i64 0 ; 2 uses
  %28 = insertelement <8 x ptr> %27, ptr %i.aj, i64 1
  %29 = insertelement <8 x ptr> %28, ptr %i.am, i64 2
  %30 = insertelement <8 x ptr> %29, ptr %i.ap, i64 3
  %31 = insertelement <8 x ptr> %30, ptr %i.at, i64 4
  %32 = insertelement <8 x ptr> %31, ptr %i.au, i64 5
  %33 = insertelement <8 x ptr> %32, ptr %i.ax, i64 6
  %34 = insertelement <8 x ptr> %33, ptr %i.ba, i64 7
  %35 = icmp ult <8 x ptr> %24, %34
  %36 = insertelement <8 x ptr> poison, ptr %invariant.gep68, i64 0 ; 2 uses
  %37 = insertelement <8 x ptr> %36, ptr %i.r, i64 1
  %38 = insertelement <8 x ptr> %37, ptr %i.ak, i64 2
  %39 = insertelement <8 x ptr> %38, ptr %i.an, i64 3
  %40 = insertelement <8 x ptr> %39, ptr %i.ar, i64 4
  %41 = insertelement <8 x ptr> %40, ptr %i.s, i64 5
  %42 = insertelement <8 x ptr> %41, ptr %i.av, i64 6
  %43 = insertelement <8 x ptr> %42, ptr %i.ay, i64 7
  %44 = shufflevector <8 x ptr> %15, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %45 = icmp ult <8 x ptr> %43, %44
  %46 = and <8 x i1> %35, %45
  %bound0314 = icmp ult ptr %invariant.gep, %i.be
  %bound1315 = icmp ult ptr %i.bc, %invariant.gep66
  %found.conflict316 = and i1 %bound0314, %bound1315
  %bound0318 = icmp ult ptr %invariant.gep, %i.bf
  %bound1319 = icmp ult ptr %i.t, %invariant.gep66
  %found.conflict320.a = and i1 %bound0318, %bound1319
  %bound0322.a = icmp ult ptr %invariant.gep66, %i.ai
  %bound1323.a = icmp ult ptr %invariant.gep68, %i.ae
  %found.conflict324 = and i1 %bound0322.a, %bound1323.a
  %47 = insertelement <8 x ptr> poison, ptr %i.aj, i64 0
  %48 = insertelement <8 x ptr> %47, ptr %i.am, i64 1
  %49 = insertelement <8 x ptr> %48, ptr %i.ap, i64 2
  %50 = insertelement <8 x ptr> %49, ptr %i.at, i64 3
  %51 = insertelement <8 x ptr> %50, ptr %i.au, i64 4
  %52 = insertelement <8 x ptr> %51, ptr %i.ax, i64 5
  %53 = insertelement <8 x ptr> %52, ptr %i.ba, i64 6
  %54 = insertelement <8 x ptr> %53, ptr %i.be, i64 7 ; 2 uses
  %55 = icmp ult <8 x ptr> %44, %54
  %56 = insertelement <8 x ptr> poison, ptr %i.r, i64 0
  %57 = insertelement <8 x ptr> %56, ptr %i.ak, i64 1
  %58 = insertelement <8 x ptr> %57, ptr %i.an, i64 2
  %59 = insertelement <8 x ptr> %58, ptr %i.ar, i64 3
  %60 = insertelement <8 x ptr> %59, ptr %i.s, i64 4
  %61 = insertelement <8 x ptr> %60, ptr %i.av, i64 5
  %62 = insertelement <8 x ptr> %61, ptr %i.ay, i64 6
  %63 = insertelement <8 x ptr> %62, ptr %i.bc, i64 7 ; 2 uses
  %64 = shufflevector <8 x ptr> %6, <8 x ptr> poison, <8 x i32> zeroinitializer
  %65 = icmp ult <8 x ptr> %63, %64
  %66 = and <8 x i1> %55, %65
  %bound0358.a = icmp ult ptr %invariant.gep66, %i.bf
  %bound1359.a = icmp ult ptr %i.t, %i.ae
  %found.conflict360.a = and i1 %bound0358.a, %bound1359.a
  %67 = shufflevector <8 x ptr> %36, <8 x ptr> poison, <8 x i32> zeroinitializer
  %68 = icmp ult <8 x ptr> %67, %54
  %69 = shufflevector <8 x ptr> %27, <8 x ptr> poison, <8 x i32> zeroinitializer
  %70 = icmp ult <8 x ptr> %63, %69
  %71 = and <8 x i1> %68, %70
  %bound0394.a = icmp ult ptr %invariant.gep68, %i.bf
  %bound1395.a = icmp ult ptr %i.t, %i.ai
  %found.conflict396.a = and i1 %bound0394.a, %bound1395.a
  %rdx.op = or <8 x i1> %26, %46
  %rdx.op414 = or <8 x i1> %rdx.op, %66
  %rdx.op415 = or <8 x i1> %rdx.op414, %71
  %72 = bitcast <8 x i1> %rdx.op415 to i8
  %73 = icmp ne i8 %72, 0
  %op.rdx = or i1 %73, %found.conflict272
  %op.rdx416 = or i1 %found.conflict276, %found.conflict280.a
  %op.rdx417 = or i1 %found.conflict316, %found.conflict320.a
  %op.rdx418 = or i1 %found.conflict324, %found.conflict360.a
  %op.rdx419 = or i1 %op.rdx, %op.rdx416
  %op.rdx420 = or i1 %op.rdx417, %op.rdx418
  %op.rdx421 = or i1 %op.rdx419, %op.rdx420
  %op.rdx422 = or i1 %op.rdx421, %found.conflict396.a
  br i1 %op.rdx422, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2147483646               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 8 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index
  %wide.load = load <2 x double>, ptr %i.bg, align 8, !tbaa !68, !alias.scope !545 ; 4 uses
  %i.bh = getelementptr [8 x i8], ptr %i.s, i64 %index ; 5 uses
  %wide.load398 = load <2 x double>, ptr %i.bh, align 8, !tbaa !68, !alias.scope !546
  %i.bi = getelementptr [8 x i8], ptr %i.t, i64 %index ; 5 uses
  %wide.load399 = load <2 x double>, ptr %i.bi, align 8, !tbaa !68, !alias.scope !547
  %i.bj = getelementptr [8 x i8], ptr %i.bh, i64 %i.v ; 2 uses
  %wide.load400 = load <2 x double>, ptr %i.bj, align 8, !tbaa !68, !alias.scope !548
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.w ; 2 uses
  %wide.load401 = load <2 x double>, ptr %i.bk, align 8, !tbaa !68, !alias.scope !549
  %i.bl = fmul <2 x double> %wide.load400, %wide.load401
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load398, <2 x double> %wide.load399, <2 x double> %i.bl)
  %i.bn = fmul <2 x double> %wide.load, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x double> %i.bn, ptr %i.bo, align 8, !tbaa !68, !alias.scope !550, !noalias !551
  %wide.load402 = load <2 x double>, ptr %i.bh, align 8, !tbaa !68, !alias.scope !546
  %i.bp = getelementptr i8, ptr %i.bi, i64 %.idx  ; 2 uses
  %wide.load403 = load <2 x double>, ptr %i.bp, align 8, !tbaa !68, !alias.scope !552
  %wide.load404 = load <2 x double>, ptr %i.bj, align 8, !tbaa !68, !alias.scope !548
  %i.bq = getelementptr i8, ptr %i.bi, i64 %.idx59 ; 2 uses
  %wide.load405 = load <2 x double>, ptr %i.bq, align 8, !tbaa !68, !alias.scope !553
  %i.br = fmul <2 x double> %wide.load404, %wide.load405
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load402, <2 x double> %wide.load403, <2 x double> %i.br)
  %i.bt = fmul <2 x double> %wide.load, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !68, !alias.scope !554, !noalias !555
  %i.bv = getelementptr i8, ptr %i.bh, i64 %.idx60 ; 2 uses
  %wide.load406 = load <2 x double>, ptr %i.bv, align 8, !tbaa !68, !alias.scope !556
  %wide.load407 = load <2 x double>, ptr %i.bi, align 8, !tbaa !68, !alias.scope !547
  %i.bw = getelementptr i8, ptr %i.bh, i64 %.idx61 ; 2 uses
  %wide.load408 = load <2 x double>, ptr %i.bw, align 8, !tbaa !68, !alias.scope !557
  %wide.load409 = load <2 x double>, ptr %i.bk, align 8, !tbaa !68, !alias.scope !549
  %i.bx = fmul <2 x double> %wide.load408, %wide.load409
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load406, <2 x double> %wide.load407, <2 x double> %i.bx)
  %i.bz = fmul <2 x double> %wide.load, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep66, i64 %index
  store <2 x double> %i.bz, ptr %i.ca, align 8, !tbaa !68, !alias.scope !558, !noalias !559
  %wide.load410 = load <2 x double>, ptr %i.bv, align 8, !tbaa !68, !alias.scope !556
  %wide.load411 = load <2 x double>, ptr %i.bp, align 8, !tbaa !68, !alias.scope !552
  %wide.load412 = load <2 x double>, ptr %i.bw, align 8, !tbaa !68, !alias.scope !557
  %wide.load413 = load <2 x double>, ptr %i.bq, align 8, !tbaa !68, !alias.scope !553
  %i.cb = fmul <2 x double> %wide.load412, %wide.load413
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load410, <2 x double> %wide.load411, <2 x double> %i.cb)
  %i.cd = fmul <2 x double> %wide.load, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep68, i64 %index
  store <2 x double> %i.cd, ptr %i.ce, align 8, !tbaa !68, !alias.scope !560, !noalias !561
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 8 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !68 ; 4 uses
  %i.ci = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv ; 5 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !68
  %i.ck = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv ; 5 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !68
  %i.cm = getelementptr [8 x i8], ptr %i.ci, i64 %i.v ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !68
  %i.co = getelementptr [8 x i8], ptr %i.ck, i64 %i.w ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !68
  %i.cq = fmul double %i.cn, %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cl, double %i.cq)
  %i.cs = fmul double %i.ch, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store double %i.cs, ptr %i.ct, align 8, !tbaa !68
  %i.cu = load double, ptr %i.ci, align 8, !tbaa !68
  %i.cv = getelementptr i8, ptr %i.ck, i64 %.idx  ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !68
  %i.cx = load double, ptr %i.cm, align 8, !tbaa !68
  %i.cy = getelementptr i8, ptr %i.ck, i64 %.idx59 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !68
  %i.da = fmul double %i.cx, %i.cz
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cw, double %i.da)
  %i.dc = fmul double %i.ch, %i.db
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store double %i.dc, ptr %gep, align 8, !tbaa !68
  %i.dd = getelementptr i8, ptr %i.ci, i64 %.idx60 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !68
  %i.df = load double, ptr %i.ck, align 8, !tbaa !68
  %i.dg = getelementptr i8, ptr %i.ci, i64 %.idx61 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !68
  %i.di = load double, ptr %i.co, align 8, !tbaa !68
  %i.dj = fmul double %i.dh, %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.dj)
  %i.dl = fmul double %i.ch, %i.dk
  %gep67 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep66, i64 %indvars.iv
  store double %i.dl, ptr %gep67, align 8, !tbaa !68
  %i.dm = load double, ptr %i.dd, align 8, !tbaa !68
  %i.dn = load double, ptr %i.cv, align 8, !tbaa !68
  %i.do = load double, ptr %i.dg, align 8, !tbaa !68
  %i.dp = load double, ptr %i.cy, align 8, !tbaa !68
  %i.dq = fmul double %i.do, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %i.dq)
  %i.ds = fmul double %i.ch, %i.dr
  %gep69 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep68, i64 %indvars.iv
  store double %i.ds, ptr %gep69, align 8, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !544
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN3igl8triangle4scaf14get_complementERKN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEiRNS2_5ArrayIiLin1ELi1ELi0ELin1ELi1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !123
  %i.d = load ptr, ptr %0, align 8
  %i.e = load ptr, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.023 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ]  ; 3 uses
  %.01622 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 4 uses
  %.01821 = phi i32 [ 0, %.lr.ph ], [ %.119, %bb.f ] ; 4 uses
  %i.f = sext i32 %.023 to i64                    ; 2 uses
  %i.g = icmp sgt i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.f, %bb.b
  %.018.lcssa.ph = phi i32 [ %.01821, %bb.b ], [ %.119, %bb.f ]
  %.016.lcssa.ph = phi i32 [ %.01622, %bb.b ], [ %1, %bb.f ]
  %i.h = sext i32 %.018.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.critedge.loopexit ] ; 3 uses
  %.016.lcssa = phi i32 [ 0, %bb.a ], [ %.016.lcssa.ph, %.critedge.loopexit ] ; 5 uses
  %i.i = icmp slt i32 %.016.lcssa, %1
  br i1 %i.i, label %.lr.ph30, label %._crit_edge

.lr.ph30:                                         ; preds = %.critedge
  %i.j = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.k = xor i32 %.016.lcssa, -1
  %i.l = add i32 %1, %i.k                         ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph30
  %n.vec = and i64 %i.n, 8589934584               ; 4 uses
  %i.o = add nsw i64 %.018.lcssa, %n.vec
  %i.p = trunc i64 %n.vec to i32
  %i.q = add i32 %.016.lcssa, %i.p
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.016.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.r = getelementptr [4 x i8], ptr %i.j, i64 %.018.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %vec.ind, ptr %i.s, align 4, !tbaa !78
  store <4 x i32> %step.add, ptr %i.t, align 4, !tbaa !78
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph30, %middle.block
  %indvars.iv.ph = phi i64 [ %.018.lcssa, %.lr.ph30 ], [ %i.o, %middle.block ]
  %.11729.ph = phi i32 [ %.016.lcssa, %.lr.ph30 ], [ %i.q, %middle.block ]
  br label %scalar.ph

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78
end_hunk_0
