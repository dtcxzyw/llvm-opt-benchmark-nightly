Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Builder?download=true
inline.NumInlined: 164
inline.NumDeleted: 109
begin_hunk_0_@_ZNK4mlir6tblgen7Builder9Parameter10getCppTypeEv:bb.a
bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23, !nonnull !59, !align !60
  %i.l = tail call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.k, ptr nonnull @.str, i64 4, i32 noundef 0) #5
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i.i = mul nuw nsw i64 %i.q, 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i
  %.not18.i.i = icmp eq i32 %i.p, 0
  br i1 %.not18.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01419.i.i = phi ptr [ %i.t, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.01419.i.i, align 8, !tbaa !63
  %.not15.i.i = icmp eq ptr %i.s, %i.l
  br i1 %.not15.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01419.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit.thread, label %.lr.ph.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit:    ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.01419.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69
  %.not10 = icmp eq ptr %i.v, null
  br i1 %.not10, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit.thread, label %bb.e

_ZNK4llvm6Record8getValueENS_9StringRefE.exit.thread: ; preds = %bb.d, %bb.c, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !70
  store ptr @.str.1, ptr %1, align 8, !tbaa !73
  store i8 3, ptr %i.w, align 8, !tbaa !74
  call void @_ZN4llvm15PrintFatalErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %1) #6
  unreachable

bb.e:                                             ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit
  %i.y = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.g, ptr nonnull @.str, i64 4) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.fca.1.insert.merged = phi { ptr, i64 } [ %i.y, %bb.e ], [ %i.i, %bb.b ]
  ret { ptr, i64 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZN4llvm15PrintFatalErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp eq i8 %i.d, 20
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !76
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @_ZNK4llvm6Record24getValueAsOptionalStringENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(192) %i.h, ptr nonnull @.str.2, i64 12) #5
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !76, !range !82, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ne i64 %i.m, 0
  %or.cond.not = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.o, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

declare void @_ZNK4llvm6Record24getValueAsOptionalStringENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6tblgen7BuilderC2EPKN4llvm6RecordENS2_8ArrayRefINS2_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0, ptr noundef nonnull %1, ptr %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional", align 8     ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %6 = alloca %"class.mlir::tblgen::Builder::Parameter", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !90
  %i.e = tail call noundef ptr @_ZNK4llvm6Record13getValueAsDagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.3, i64 9) #5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp ne i8 %i.i, 5
  %.not44 = icmp eq ptr %i.g, null
  %.not = or i1 %.not44, %i.j
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !21
  %.not.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i, 3
  br i1 %.not.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8, !tbaa !96 ; 2 uses
  %i.o = load i16, ptr %.sroa.0.0.copyload.i.i, align 1
  %i.p = xor i16 %i.o, 28265
  %i.q = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i16
  %i.t = xor i16 %i.s, 115
  %i.u = or i16 %i.p, %i.t
  %i.v = icmp ne i16 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not45 = icmp eq i32 %i.w, 0
  br i1 %.not45, label %_ZN4llvmneENS_9StringRefES0_.exit.thread39, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit, %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !62
  %i.ac = zext i32 %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ae, align 1, !tbaa !70
  store ptr @.str.5, ptr %5, align 8, !tbaa !73
  store i8 3, ptr %i.ad, align 8, !tbaa !74
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.z, i64 %i.ac, ptr noundef nonnull align 8 dereferenceable(34) %5) #6
  unreachable

_ZN4llvmneENS_9StringRefES0_.exit.thread39:       ; preds = %_ZN4llvmneENS_9StringRefES0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !97 ; 2 uses
  %.not50 = icmp eq i32 %i.ag, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count = zext i32 %i.ag to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread39
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit ] ; 3 uses
  %.049 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit ] ; 2 uses
  %.sroa.029.047 = phi ptr [ undef, %.lr.ph ], [ %.sroa.029.1, %_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit ]
  %.sroa.2.046 = phi i64 [ undef, %.lr.ph ], [ %.sroa.2.1, %_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit ]
  %i.al = load i32, ptr %i.af, align 8, !tbaa !97
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !98 ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !75 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.as, align 8, !tbaa !96
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.330.0 = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  %.sroa.2.1 = phi i64 [ %.sroa.2.0.copyload.i, %bb.d ], [ %.sroa.2.046, %bb.c ] ; 2 uses
  %.sroa.029.1 = phi ptr [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.029.047, %bb.c ] ; 2 uses
  store ptr %.sroa.029.1, ptr %6, align 8
  store i64 %.sroa.2.1, ptr %.sroa.435.0..sroa_idx, align 8
  store i8 %.sroa.330.0, ptr %.sroa.536.0..sroa_idx, align 8
  store ptr %i.ar, ptr %i.ai, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i8, ptr %i.at, align 8, !tbaa !17, !noalias !99
  %i.av = icmp eq i8 %i.au, 20
  br i1 %i.av, label %_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !77, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5, !noalias !99
  call void @_ZNK4llvm6Record24getValueAsOptionalStringENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(192) %i.ax, ptr nonnull @.str.2, i64 12) #5, !noalias !99
  %i.ay = load i8, ptr %i.aj, align 8, !tbaa !76, !range !82, !noalias !99, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i64, ptr %i.ak, align 8, !noalias !99
  %i.bb = icmp ne i64 %i.ba, 0
  %or.cond.not.i = select i1 %i.az, i1 %i.bb, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5, !noalias !99
  %.049.not = xor i1 %.049, true
  %brmerge = or i1 %or.cond.not.i, %.049.not
  br i1 %brmerge, label %_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread42, label %bb.g

_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread: ; preds = %bb.e
  br i1 %.049, label %bb.g, label %_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread42

bb.g:                                             ; preds = %bb.f, %_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !70
  store ptr @.str.6, ptr %7, align 8, !tbaa !73
  store i8 3, ptr %i.bc, align 8, !tbaa !74
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %7) #6
  unreachable

_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread42: ; preds = %bb.f, %_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread
  %.1 = phi i1 [ false, %_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread ], [ %or.cond.not.i, %bb.f ]
  %i.be = load i32, ptr %i.c, align 8, !tbaa !62  ; 2 uses
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !90
  %.not.i = icmp ult i32 %i.be, %i.bf
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !102

bb.h:                                             ; preds = %_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread42
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen7Builder9ParameterELb1EE18growAndEmplaceBackIJRS4_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit

bb.i:                                             ; preds = %_ZNK4mlir6tblgen7Builder9Parameter15getDefaultValueEv.exit.thread42
  %i.bh = zext i32 %i.be to i64
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.bk = load i32, ptr %i.c, align 8, !tbaa !62
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.c, align 8, !tbaa !62
  br label %_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit

_ZN4llvm15SmallVectorImplIN4mlir6tblgen7Builder9ParameterEE12emplace_backIJRS4_EEES7_DpOT_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !103
}

declare noundef ptr @_ZNK4llvm6Record13getValueAsDagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir6tblgen7Builder7getBodyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.a = load ptr, ptr %1, align 8, !tbaa !83
  call void @_ZNK4llvm6Record24getValueAsOptionalStringENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr nonnull @.str.7, i64 4) #5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !76, !range !82, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ne i64 %i.f, 0
  %or.cond.not = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir6tblgen7Builder20getDeprecatedMessageEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.a = load ptr, ptr %1, align 8, !tbaa !83
  call void @_ZNK4llvm6Record24getValueAsOptionalStringENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr nonnull @.str.8, i64 16) #5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !76, !range !82, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ne i64 %i.f, 0
  %or.cond.not = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

declare noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240), ptr, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen7Builder9ParameterELb1EE18growAndEmplaceBackIJRS4_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::tblgen::Builder::Parameter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !90
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !102

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen7Builder9ParameterELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !62
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen7Builder9ParameterELb1EE9push_backERKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !62
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !62
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen7Builder9ParameterELb1EE9push_backERKS4_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen7Builder9ParameterELb1EE9push_backERKS4_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.k = load ptr, ptr %0, align 8, !tbaa !61
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -32
  ret ptr %i.n
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen7Builder9ParameterELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::tblgen::Builder::Parameter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #5
  %i.f = load ptr, ptr %0, align 8, !tbaa !61
  %i.g = load i32, ptr %i.a, align 8, !tbaa !62
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !62
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
