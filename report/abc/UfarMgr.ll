Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/UfarMgr?download=true
inline.NumInlined: 7368
inline.NumDeleted: 2730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4UFARL15unroll_with_cexEP10Wlc_Ntk_t_P10Abc_Cex_t_iiPib:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.mu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mt, i64 noundef 64) #42
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i156

bb.ad:                                            ; preds = %bb.ab
  %i.mv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i156

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i156:       ; preds = %bb.ad, %bb.ac
  %i.mw = phi ptr [ %i.mu, %bb.ac ], [ %i.mv, %bb.ad ]
  store ptr %i.mw, ptr %i.ms, align 8, !tbaa !131
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i152

bb.ae:                                            ; preds = %bb.aa
  %i.mx = icmp samesign ult i32 %i.mo, 1073741823
  %i.my = shl nuw nsw i32 %i.mo, 1
  %spec.select.i.i149 = select i1 %i.mx, i32 %i.my, i32 2147483647 ; 3 uses
  %.not.i9.i.i150 = icmp samesign ult i32 %i.mo, %spec.select.i.i149
  br i1 %.not.i9.i.i150, label %bb.af, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !131 ; 2 uses
  %.not9.i10.i.i151 = icmp eq ptr %i.na, null
  %i.nb = zext nneg i32 %spec.select.i.i149 to i64
  %i.nc = shl nuw nsw i64 %i.nb, 2                ; 2 uses
  br i1 %.not9.i10.i.i151, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.nd = call ptr @realloc(ptr noundef nonnull %i.na, i64 noundef %i.nc) #42
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ne = call noalias ptr @malloc(i64 noundef %i.nc) #41
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.nf = phi ptr [ %i.nd, %bb.ag ], [ %i.ne, %bb.ah ]
  store ptr %i.nf, ptr %i.mz, align 8, !tbaa !131
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i152

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i152: ; preds = %bb.ai, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i156
  %spec.select.sink.i.i153 = phi i32 [ %spec.select.i.i149, %bb.ai ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i156 ]
  store i32 %spec.select.sink.i.i153, ptr %i.mi, align 8, !tbaa !130
  %.pre.i154 = load i32, ptr %i.mn, align 4, !tbaa !129
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i:            ; preds = %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i152, %bb.ae, %.lr.ph
  %i.ng = phi i32 [ %i.mo, %.lr.ph ], [ %i.mo, %bb.ae ], [ %.pre.i154, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i152 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !131
  %i.nj = add nsw i32 %i.ng, 1
  store i32 %i.nj, ptr %i.mn, align 4, !tbaa !129
  %i.nk = sext i32 %i.ng to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.nk
  store i32 %i.mm, ptr %i.nl, align 4, !tbaa !52
  %i.nm = load ptr, ptr %i.bb, align 8, !tbaa !709
  %.not.i148 = icmp eq ptr %i.nm, null
  br i1 %.not.i148, label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i
  %i.nn = load i64, ptr %i.lj, align 4
  %i.no = and i64 %i.nn, 536870911
  %i.np = sub nsw i64 0, %i.no
  %i.nq = getelementptr inbounds [12 x i8], ptr %i.lj, i64 %i.np
  call void @Gia_ObjAddFanout(ptr noundef nonnull %i.t, ptr noundef nonnull %i.nq, ptr noundef nonnull %i.lj) #37
  br label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit

_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit:          ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i, %bb.aj
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229258, 1 ; 2 uses
  %.val122 = load i32, ptr %i.e, align 8, !tbaa !242 ; 3 uses
  %.val123 = load ptr, ptr %i.ay, align 8, !tbaa !247 ; 2 uses
  %i.nr = getelementptr i8, ptr %.val123, i64 4
  %.val123.val = load i32, ptr %i.nr, align 4, !tbaa !129
  %i.ns = sub nsw i32 %.val123.val, %.val122
  %i.nt = sext i32 %i.ns to i64
  %i.nu = icmp slt i64 %indvars.iv.next230, %i.nt
  br i1 %i.nu, label %.lr.ph204, label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit..critedge8.loopexit_crit_edge, !llvm.loop !706

_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit..critedge8.loopexit_crit_edge: ; preds = %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit
  br label %.critedge8, !llvm.loop !706

.critedge8:                                       ; preds = %.lr.ph204, %.lr.ph204.preheader, %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit..critedge8.loopexit_crit_edge, %.critedge6
  %.val115180233 = phi i32 [ %.val122199, %.critedge6 ], [ %.val122199, %.lr.ph204.preheader ], [ %.val122, %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit..critedge8.loopexit_crit_edge ], [ %.val122, %.lr.ph204 ]
  %i.nv = add nuw nsw i32 %.095207, 1
  %i.nw = load i32, ptr %i.ap, align 4, !tbaa !224
  %.not104.not = icmp slt i32 %.095207, %i.nw
  br i1 %.not104.not, label %.preheader176, label %.critedge._crit_edge, !llvm.loop !707

.critedge._crit_edge:                             ; preds = %.critedge8, %.critedge.preheader
  call void @Gia_ManHashStop(ptr noundef nonnull %i.t) #37
  call void @Gia_ManSetRegNum(ptr noundef nonnull %i.t, i32 noundef 0) #37
  %i.nx = call ptr @Gia_ManCleanup(ptr noundef nonnull %i.t) #37
  call void @Gia_ManStop(ptr noundef nonnull %i.t) #37
  call void @Gia_ManStop(ptr noundef nonnull %i.a) #37
  ret ptr %i.nx
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4UFARL22compute_core_using_satEP10Gia_Man_t_RSt6vectorIjSaIjEEiiibPS2_IS2_IiSaIiEESaIS7_EEbi(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef range(i32 -2147483647, -2147483648) %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6, i1 noundef zeroext %7, i32 noundef range(i32 0, 5001) %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %class.LogT, align 8                ; 5 uses
  %10 = alloca %"class.std::map", align 8         ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 29 uses
  %12 = alloca %class.LogT, align 8               ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %class.LogT, align 8               ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %15 = alloca %class.LogT, align 8               ; 8 uses
  %16 = alloca %class.LogT, align 8               ; 7 uses
  %17 = alloca %class.LogT, align 8               ; 7 uses
  %18 = alloca %class.LogT, align 8               ; 8 uses
  %19 = alloca %class.LogT, align 8               ; 5 uses
  %20 = alloca %"class.std::vector.3", align 8    ; 6 uses
  %21 = alloca %class.LogT, align 8               ; 5 uses
  %i.c = tail call ptr @Gia_ManToAigSimple(ptr noundef %0) #37 ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 140
  %.val146 = load i32, ptr %i.d, align 4, !tbaa !52
  %i.e = tail call ptr @Cnf_Derive(ptr noundef %i.c, i32 noundef %.val146) #37 ; 6 uses
  %i.f = tail call ptr @sat_solver_new() #37      ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !726
  tail call void @sat_solver_setnvars(ptr noundef %i.f, i32 noundef %i.h) #37
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !727
  %.not298 = icmp eq i32 %i.j, 0
  br i1 %.not298, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !733  ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val147262 = load i32, ptr %i.o, align 4, !tbaa !734
  %i.p = icmp sgt i32 %.val147262, 0
  br i1 %i.p, label %.lr.ph265, label %.critedge

.lr.ph265:                                        ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !735  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !142
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !142
  %i.w = tail call i32 @sat_solver_addclause(ptr noundef %i.f, ptr noundef %i.t, ptr noundef %i.v) #37 ; 0 uses
  %i.x = load i32, ptr %i.i, align 8, !tbaa !727
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !710

bb.c:                                             ; preds = %.lr.ph265, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit
  %indvars.iv305 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next306, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ] ; 2 uses
  %indvars.iv303 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next304, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ] ; 7 uses
  %storemerge257271 = phi ptr [ %i.l, %.lr.ph265 ], [ %storemerge257272, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ] ; 6 uses
  %spec.select.sink.i269 = phi i32 [ 100, %.lr.ph265 ], [ %spec.select.sink.i268, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ] ; 3 uses
  %i.aa = phi ptr [ %i.n, %.lr.ph265 ], [ %i.ax, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ]
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val145 = load ptr, ptr %i.ab, align 8, !tbaa !139
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val145, i64 %indvars.iv305
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !736
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !737
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !52
  %i.ak = shl nsw i32 %i.aj, 1
  %i.al = trunc nsw i64 %indvars.iv303 to i32
  %i.am = icmp eq i32 %spec.select.sink.i269, %i.al
  br i1 %i.am, label %bb.d, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.d:                                             ; preds = %bb.c
  %i.an = icmp samesign ult i64 %indvars.iv303, 16
  br i1 %i.an, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge257271, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge257271, i64 noundef 64) #42
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.h:                                             ; preds = %bb.d
  %i.aq = icmp samesign ult i64 %indvars.iv303, 1073741823
  %indvars.iv303.tr = trunc nsw i64 %indvars.iv303 to i32
  %i.ar = shl nsw i32 %indvars.iv303.tr, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 4 uses
  %22 = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv303, %22
  br i1 %.not.i9.i, label %bb.i, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge257271, null
  %i.as = zext nneg i32 %spec.select.i to i64
  %i.at = shl nuw nsw i64 %i.as, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = tail call ptr @realloc(ptr noundef nonnull %storemerge257271, i64 noundef %i.at) #42
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.k:                                             ; preds = %bb.i
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #41
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

_ZL11Vec_IntPushP10Vec_Int_t_i.exit:              ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge257272 = phi ptr [ %storemerge257271, %bb.c ], [ %storemerge257271, %bb.h ], [ %i.ap, %bb.g ], [ %i.ao, %bb.f ], [ %i.au, %bb.j ], [ %i.av, %bb.k ] ; 3 uses
  %spec.select.sink.i268 = phi i32 [ %spec.select.sink.i269, %bb.c ], [ %spec.select.sink.i269, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %storemerge257272, i64 %indvars.iv303
  store i32 %i.ak, ptr %i.aw, align 4, !tbaa !52
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !733 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %.val147 = load i32, ptr %i.ay, align 4, !tbaa !734
  %i.az = sext i32 %.val147 to i64
  %i.ba = icmp slt i64 %indvars.iv.next306, %i.az
  br i1 %i.ba, label %bb.c, label %.critedge, !llvm.loop !711

.critedge:                                        ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit, %._crit_edge
  %.val144 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next304, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ]
  %.val153 = phi ptr [ %i.l, %._crit_edge ], [ %storemerge257272, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ] ; 4 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val153, i64 %.val144
  %i.bc = tail call i32 @sat_solver_addclause(ptr noundef %i.f, ptr noundef %.val153, ptr noundef %i.bb) #37
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @_ZN4LogTC2Ej(ptr noundef nonnull align 8 dereferenceable(376) %9, i32 noundef 0)
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %9, ptr noundef nonnull @.str.92, i64 noundef 29) #37 ; 0 uses
  call void @_ZN4LogTD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.not.i = icmp eq ptr %.val153, null
  br i1 %.not.i, label %_ZL11Vec_IntFreeP10Vec_Int_t_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %.val153) #37
  br label %_ZL11Vec_IntFreeP10Vec_Int_t_.exit

_ZL11Vec_IntFreeP10Vec_Int_t_.exit:               ; preds = %bb.m, %bb.n
  %i.be = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #41 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store i32 0, ptr %i.bf, align 4, !tbaa !129
  store i32 100, ptr %i.be, align 8, !tbaa !130
  %i.bg = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #41 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !250
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !157
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !158
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !159
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.bm, align 8, !tbaa !160
  %i.bn = icmp sgt i32 %3, 0
  br i1 %i.bn, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %_ZL11Vec_IntFreeP10Vec_Int_t_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bp = getelementptr i8, ptr %i.c, i64 16
  %i.bq = sext i32 %4 to i64
  %i.br = select i1 %5, i64 0, i64 %i.bq
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.o

._crit_edge275:                                   ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169, %_ZL11Vec_IntFreeP10Vec_Int_t_.exit
  %.val151 = phi ptr [ %i.bg, %_ZL11Vec_IntFreeP10Vec_Int_t_.exit ], [ %i.cv, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169 ] ; 6 uses
  %.val141 = phi i32 [ 0, %_ZL11Vec_IntFreeP10Vec_Int_t_.exit ], [ %i.cx, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169 ] ; 7 uses
  %i.bs = load i32, ptr @_ZN4LogT8loglevelE, align 4, !tbaa !52
  %i.bt = icmp ugt i32 %i.bs, 2
  br i1 %i.bt, label %bb.x, label %bb.ad

bb.o:                                             ; preds = %.lr.ph274, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169
  %i.bu = phi ptr [ %i.bg, %.lr.ph274 ], [ %i.cv, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169 ] ; 6 uses
  %i.bv = phi i32 [ 100, %.lr.ph274 ], [ %i.cw, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169 ] ; 7 uses
  %i.bw = phi i32 [ 0, %.lr.ph274 ], [ %i.cx, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169 ] ; 3 uses
  %indvars.iv310 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next311, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !736
  %.val155 = load ptr, ptr %i.bp, align 8, !tbaa !738
  %i.by = getelementptr i8, ptr %.val155, i64 8
  %.val155.val = load ptr, ptr %i.by, align 8, !tbaa !139
  %i.bz = getelementptr [8 x i8], ptr %.val155.val, i64 %indvars.iv310
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %i.br
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !737
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !52
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !52
  %i.ch = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ci = trunc nuw nsw i64 %indvars.iv310 to i32
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !52
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !52
  %i.ck = shl nsw i32 %i.cj, 1
  %i.cl = icmp eq i32 %i.bw, %i.bv
  br i1 %i.cl, label %bb.p, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp slt i32 %i.bv, 16
  br i1 %i.cm, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i167 = icmp eq ptr %i.bu, null
  br i1 %.not9.i.i167, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef 64) #42
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i165

bb.s:                                             ; preds = %bb.q
  %i.co = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i165

bb.t:                                             ; preds = %bb.p
  %i.cp = icmp samesign ult i32 %i.bv, 1073741823
  %i.cq = shl nuw nsw i32 %i.bv, 1
  %spec.select.i162 = select i1 %i.cp, i32 %i.cq, i32 2147483647 ; 4 uses
  %.not.i9.i163 = icmp samesign ult i32 %i.bv, %spec.select.i162
  br i1 %.not.i9.i163, label %bb.u, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i164 = icmp eq ptr %i.bu, null
  %i.cr = zext nneg i32 %spec.select.i162 to i64
  %i.cs = shl nuw nsw i64 %i.cr, 2                ; 2 uses
  br i1 %.not9.i10.i164, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = call ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef %i.cs) #42
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i165

bb.w:                                             ; preds = %bb.u
  %i.cu = call noalias ptr @malloc(i64 noundef %i.cs) #41
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i165

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i165: ; preds = %bb.v, %bb.w, %bb.r, %bb.s
  %storemerge256 = phi ptr [ %i.co, %bb.s ], [ %i.cn, %bb.r ], [ %i.ct, %bb.v ], [ %i.cu, %bb.w ] ; 2 uses
  %spec.select.sink.i166 = phi i32 [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i162, %bb.v ], [ %spec.select.i162, %bb.w ] ; 2 uses
  store ptr %storemerge256, ptr %i.bh, align 8, !tbaa !131
  store i32 %spec.select.sink.i166, ptr %i.be, align 8, !tbaa !130
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit169

_ZL11Vec_IntPushP10Vec_Int_t_i.exit169:           ; preds = %bb.o, %bb.t, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i165
  %i.cv = phi ptr [ %i.bu, %bb.o ], [ %i.bu, %bb.t ], [ %storemerge256, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i165 ] ; 3 uses
  %i.cw = phi i32 [ %i.bv, %bb.o ], [ %i.bv, %bb.t ], [ %spec.select.sink.i166, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i165 ]
  %i.cx = add nuw nsw i32 %i.bw, 1                ; 3 uses
  store i32 %i.cx, ptr %i.bf, align 4, !tbaa !129
  %i.cy = zext nneg i32 %i.bw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cy
  store i32 %i.ck, ptr %i.cz, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge275, label %bb.o, !llvm.loop !712

bb.x:                                             ; preds = %._crit_edge275
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.da) #37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.da, align 8, !tbaa !100
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 328
  store ptr null, ptr %i.db, align 8, !tbaa !188
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 336
  store i8 0, ptr %i.dc, align 8, !tbaa !189
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 337
  store i8 0, ptr %i.dd, align 1, !tbaa !190
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, i8 0, i64 32, i1 false)
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.df, ptr %11, align 8, !tbaa !100
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.dh = getelementptr i8, ptr %i.df, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %11, i64 %i.di
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !100
  %i.dk = load ptr, ptr %11, align 8, !tbaa !100
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %11, i64 %i.dm
end_hunk_0
