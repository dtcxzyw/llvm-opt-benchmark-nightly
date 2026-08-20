inline.NumInlined: 1428
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bssl41ssl_parse_client_hello_with_trailing_dataEPK6ssl_stP6cbs_stP22ssl_early_callback_ctx:bb.a
  %.not41.not = icmp eq i32 %i.s, 0
  br i1 %.not41.not, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 131, ptr noundef nonnull @.str, i32 noundef 134)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %5, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.t, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.w, ptr %i.x, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.z = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %1, ptr noundef nonnull %6)
  %.not42 = icmp eq i32 %i.z, 0
  br i1 %.not42, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 1
  %i.ad = and i64 %i.ab, 1
  %.not43 = icmp eq i64 %i.ad, 0
  %or.cond = and i1 %i.ac, %.not43
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %1, ptr noundef nonnull %7)
  %.not44 = icmp eq i32 %i.ae, 0
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 131, ptr noundef nonnull @.str, i32 noundef 149)
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %6, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !29
  %i.ak = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !30
  %i.am = load ptr, ptr %7, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.am, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.ag, ptr %i.ao, align 8, !tbaa !32
  %i.ap = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.as = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %1, ptr noundef nonnull %8)
  %.not45 = icmp eq i32 %i.as, 0
  br i1 %.not45, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = call fastcc noundef zeroext i1 @_ZN4bsslL31tls1_check_duplicate_extensionsEPK6cbs_st(ptr noundef %8)
  br i1 %i.at, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 131, ptr noundef nonnull @.str, i32 noundef 168)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.u

.critedge:                                        ; preds = %bb.r
  %i.au = load ptr, ptr %8, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.au, ptr %i.av, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.p
  %i.az = phi i64 [ %.pre, %.critedge ], [ 0, %bb.p ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ba, align 8, !tbaa !35
  %i.bb = sub i64 %.sroa.4.0.copyload, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !36
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.n
  %.3 = phi i1 [ false, %bb.n ], [ true, %bb.t ], [ false, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u, %bb.e
  %.4 = phi i1 [ false, %bb.e ], [ %.3, %bb.u ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBS_get_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBS_get_u8_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_is_dtls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @CBS_get_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4bsslL31tls1_check_duplicate_extensionsEPK6cbs_st(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.cbs_st, align 8             ; 10 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %2 = alloca %struct.cbs_st, align 8             ; 4 uses
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %.not68 = icmp eq i64 %i.c, 0
  br i1 %.not68, label %_ZN4bssl5ArrayItED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.02669 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.d = call i32 @CBS_get_u16(ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  %.not37 = icmp eq i32 %i.d, 0
  br i1 %.not37, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not38 = icmp eq i32 %i.e, 0
  br i1 %.not38, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.02669, 1                       ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.g = load i64, ptr %i.b, align 8, !tbaa !20
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.c
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_ZN4bssl5ArrayItED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %i.i = icmp slt i64 %i.f, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str.2, i32 noundef 220)
          to label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  %i.j = shl nuw i64 %i.f, 1                      ; 2 uses
  %i.k = invoke ptr @OPENSSL_malloc(i64 noundef %i.j)
          to label %.noexc44 unwind label %bb.g   ; 13 uses

.noexc44:                                         ; preds = %bb.f
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit

bb.g:                                             ; preds = %.noexc45, %.critedge42, %bb.f, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.k, %.noexc45 ], [ %i.k, %.critedge42 ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.d ]
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit:       ; preds = %.noexc44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !37
  br label %_ZN4bssl5ArrayItEixEm.exit

_ZN4bssl5ArrayItEixEm.exit:                       ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit, %.critedge40
  %.02270 = phi i64 [ 0, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit ], [ %i.r, %.critedge40 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.02270
  %i.o = invoke i32 @CBS_get_u16(ptr noundef nonnull %1, ptr noundef nonnull %i.n)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN4bssl5ArrayItEixEm.exit
  %.not32 = icmp eq i32 %i.o, 0
  br i1 %.not32, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = invoke i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %1, ptr noundef nonnull %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %bb.l, label %.critedge40

bb.k:                                             ; preds = %bb.i, %_ZN4bssl5ArrayItEixEm.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.n

.critedge40:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.r = add nuw i64 %.02270, 1
  %exitcond.not = icmp eq i64 %.02270, %.02669
  br i1 %exitcond.not, label %.critedge42, label %_ZN4bssl5ArrayItEixEm.exit, !llvm.loop !40

bb.l:                                             ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

.critedge42:                                      ; preds = %.critedge40
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 2 uses
  %i.t = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = xor i64 %i.u, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.s, i64 noundef %i.v)
          to label %.noexc45 unwind label %bb.g

.noexc45:                                         ; preds = %.critedge42
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.s)
          to label %_ZSt4sortIPtEvT_S1_.exit.preheader unwind label %bb.g

_ZSt4sortIPtEvT_S1_.exit.preheader:               ; preds = %.noexc45
  %.not3671 = icmp eq i64 %.02669, 0
  br i1 %.not3671, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, label %_ZN4bssl5ArrayItEixEm.exit48

_ZN4bssl5ArrayItEixEm.exit48:                     ; preds = %_ZSt4sortIPtEvT_S1_.exit.preheader, %_ZN4bssl5ArrayItEixEm.exit48
  %.072 = phi i64 [ %i.aa, %_ZN4bssl5ArrayItEixEm.exit48 ], [ 1, %_ZSt4sortIPtEvT_S1_.exit.preheader ] ; 4 uses
  %i.w = getelementptr [2 x i8], ptr %i.k, i64 %.072
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !41
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.072
  %i.z = load i16, ptr %4, align 2, !tbaa !41
  %.not80 = icmp ne i16 %i.y, %i.z                ; 2 uses
  %i.aa = add nuw i64 %.072, 1
  %exitcond76.not = icmp ne i64 %.072, %.02669
  %or.cond.not = select i1 %.not80, i1 %exitcond76.not, i1 false
  br i1 %or.cond.not, label %_ZN4bssl5ArrayItEixEm.exit48, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, !llvm.loop !42

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread: ; preds = %_ZN4bssl5ArrayItEixEm.exit48, %_ZSt4sortIPtEvT_S1_.exit.preheader, %bb.e, %.noexc44, %bb.l
  %.sroa.0.264 = phi ptr [ %i.k, %bb.l ], [ null, %.noexc44 ], [ null, %bb.e ], [ %i.k, %_ZSt4sortIPtEvT_S1_.exit.preheader ], [ %i.k, %_ZN4bssl5ArrayItEixEm.exit48 ]
  %.6 = phi i1 [ false, %bb.l ], [ false, %.noexc44 ], [ false, %bb.e ], [ true, %_ZSt4sortIPtEvT_S1_.exit.preheader ], [ %.not80, %_ZN4bssl5ArrayItEixEm.exit48 ]
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.264)
          to label %_ZN4bssl5ArrayItED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #22
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.g
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.g ], [ %i.k, %bb.k ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.q, %bb.k ]
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.1)
          to label %_ZN4bssl5ArrayItED2Ev.exit49 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #22
  unreachable

_ZN4bssl5ArrayItED2Ev.exit49:                     ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %.lr.ph, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN4bssl5ArrayItED2Ev.exit

_ZN4bssl5ArrayItED2Ev.exit:                       ; preds = %bb.a, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, %._crit_edge, %.critedge
  %.7 = phi i1 [ false, %.critedge ], [ true, %._crit_edge ], [ %.6, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl30ssl_client_hello_get_extensionEPK22ssl_early_callback_ctxP6cbs_stt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 6 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %4 = alloca %struct.cbs_st, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !20
  %.not10 = icmp eq i64 %i.e, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph

thread-pre-split:                                 ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pr = load i64, ptr %i.f, align 8, !tbaa !20
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.g = call i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.a)
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %i.a, align 2, !tbaa !41
  %i.j = icmp eq i16 %i.i, %2
  br i1 %i.j, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !37
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.b, %bb.d
  %.1.ph = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

.loopexit:                                        ; preds = %thread-pre-split, %bb.a, %.thread
  %.2 = phi i1 [ %.1.ph, %.thread ], [ false, %bb.a ], [ false, %thread-pre-split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN4bssl18tls1_get_grouplistEPKNS_13SSL_HANDSHAKEE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.d, %bb.b ], [ 3, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ @_ZN4bsslL14kDefaultGroupsE, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl21tls1_get_shared_groupEPNS_13SSL_HANDSHAKEEPt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !165    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !163  ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN4bssl18tls1_get_grouplistEPKNS_13SSL_HANDSHAKEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.i = shl nuw nsw i64 %i.e, 1
  br label %_ZN4bssl18tls1_get_grouplistEPKNS_13SSL_HANDSHAKEE.exit

_ZN4bssl18tls1_get_grouplistEPKNS_13SSL_HANDSHAKEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.i, %bb.b ], [ 6, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ @_ZN4bsslL14kDefaultGroupsE, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.k = load i32, ptr %i.j, align 8, !tbaa !166
  %i.l = and i32 %i.k, 4194304
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !164  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.p = load i64, ptr %i.o, align 8, !tbaa !163  ; 4 uses
  br i1 %.not, label %bb.c, label %.lr.ph64

bb.c:                                             ; preds = %_ZN4bssl18tls1_get_grouplistEPKNS_13SSL_HANDSHAKEE.exit
  %.not3861.not = icmp eq i64 %i.p, 0
  br i1 %.not3861.not, label %.critedge43, label %.lr.ph64.thread

.lr.ph64.thread:                                  ; preds = %bb.c
  %.idx = shl nuw nsw i64 %i.p, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i
  br label %.lr.ph.preheader

.lr.ph64:                                         ; preds = %_ZN4bssl18tls1_get_grouplistEPKNS_13SSL_HANDSHAKEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i
  %.idx66 = shl nuw nsw i64 %i.p, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx66
  %.not3953 = icmp eq i64 %i.p, 0
  br i1 %.not3953, label %.critedge43, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph64.thread, %.lr.ph64
  %i.u = phi ptr [ %i.r, %.lr.ph64.thread ], [ %i.t, %.lr.ph64 ] ; 2 uses
  %.sroa.046.08290 = phi ptr [ %.sroa.0.0.i, %.lr.ph64.thread ], [ %i.n, %.lr.ph64 ] ; 2 uses
  %.sroa.048.08389 = phi ptr [ %i.n, %.lr.ph64.thread ], [ %.sroa.0.0.i, %.lr.ph64 ]
  %i.v = phi ptr [ %i.q, %.lr.ph64.thread ], [ %i.s, %.lr.ph64 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..critedge41_crit_edge
  %.03462 = phi ptr [ %i.ag, %..critedge41_crit_edge ], [ %.sroa.048.08389, %.lr.ph.preheader ] ; 2 uses
  %i.w = load i16, ptr %.03462, align 2, !tbaa !41
  %.fr = freeze i16 %i.w                          ; 4 uses
  switch i16 %.fr, label %.lr.ph.split [
    i16 25497, label %.lr.ph.split.us.preheader
    i16 4588, label %.lr.ph.split.us.preheader
  ]

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %.054.us = phi ptr [ %i.ab, %bb.e ], [ %.sroa.046.08290, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.x = load i16, ptr %.054.us, align 2, !tbaa !41
  %i.y = icmp eq i16 %.fr, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us
end_hunk_0
begin_hunk_1_@_ZN4bsslL50ext_quic_transport_params_parse_serverhello_legacyEPNS_13SSL_HANDSHAKEEPhP6cbs_st
define internal noundef zeroext i1 @_ZN4bsslL50ext_quic_transport_params_parse_serverhello_legacyEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !165    ; 2 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 269
  %i.f = load i16, ptr %i.e, align 1
  %i.g = and i16 %i.f, 512
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @SSL_is_quic(ptr noundef %i.a)
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 109, ptr %1, align 1, !tbaa !196
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !245  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 576 ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20   ; 6 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !202
  tail call void @OPENSSL_free(ptr noundef %i.o)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @OPENSSL_malloc(i64 noundef %i.n) ; 4 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !202
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 584
  store i64 %i.n, ptr %i.s, align 8, !tbaa !200
  %i.t = icmp sgt i64 %i.n, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !246

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i64 %i.n, 1
  br i1 %i.u, label %bb.j, label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

bb.j:                                             ; preds = %bb.i
  %i.v = load i8, ptr %i.l, align 1, !tbaa !196
  store i8 %i.v, ptr %i.q, align 1, !tbaa !196
  br label %_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit

_ZN4bsslL48ext_quic_transport_params_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %bb.f ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL50ext_quic_transport_params_parse_clienthello_legacyEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL48ext_quic_transport_params_parse_clienthello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL48ext_quic_transport_params_add_serverhello_legacyEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL46ext_quic_transport_params_add_serverhello_implEPNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL32cert_compression_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  %5 = alloca %struct.cbb_st, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !165
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !615  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.g = load i64, ptr %i.f, align 8, !tbaa !616  ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not32 = icmp eq i64 %i.g, 0
  br i1 %.not32, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.01634 = phi ptr [ %i.s, %bb.g ], [ %i.e, %bb.a ] ; 3 uses
  %.01733 = phi i8 [ %.118, %bb.g ], [ 1, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01634, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !617
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = trunc nuw i8 %.01733 to i1
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @CBB_add_u16(ptr noundef %2, i16 noundef zeroext 27)
  %.not22 = icmp eq i32 %i.m, 0
  br i1 %.not22, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @CBB_add_u16_length_prefixed(ptr noundef %2, ptr noundef nonnull %4)
  %.not23 = icmp eq i32 %i.n, 0
  br i1 %.not23, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @CBB_add_u8_length_prefixed(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not24 = icmp eq i32 %i.o, 0
  br i1 %.not24, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.01634, i64 16
  %i.q = load i16, ptr %i.p, align 8, !tbaa !619
  %i.r = call i32 @CBB_add_u16(ptr noundef nonnull %5, i16 noundef zeroext %i.q)
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.118 = phi i8 [ %.01733, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01634, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  %i.t = trunc nuw i8 %.118 to i1
  br i1 %i.t, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.u = call i32 @CBB_flush(ptr noundef %2)
  %i.v = icmp ne i32 %i.u, 0
  br label %select.unfold

select.unfold:                                    ; preds = %bb.f, %bb.d, %bb.e, %bb.c, %bb.a, %._crit_edge, %bb.h
  %.3 = phi i1 [ %i.v, %bb.h ], [ true, %._crit_edge ], [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL34cert_compression_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readnone captures(address_is_null) %2) #14 {
bb.a:
  %i.a = icmp eq ptr %2, null
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL34cert_compression_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 7 uses
  %i.a = alloca i16, align 2                      ; 10 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !165
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 528 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !616
  %.fr106 = freeze i64 %i.h                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.i = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZN4bssl5ArrayItED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %.not55 = icmp eq i64 %i.k, 0
  br i1 %.not55, label %bb.d, label %_ZN4bssl5ArrayItED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20   ; 6 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i64 %i.m, 1
  %.not56 = icmp eq i64 %i.o, 0
  %or.cond87 = and i1 %i.n, %.not56
  br i1 %or.cond87, label %bb.e, label %_ZN4bssl5ArrayItED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = lshr exact i64 %i.m, 1                   ; 4 uses
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  %i.q = invoke ptr @OPENSSL_malloc(i64 noundef %i.m)
          to label %.noexc65 unwind label %bb.k   ; 10 uses

.noexc65:                                         ; preds = %.noexc
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader: ; preds = %.noexc65
  %i.s = load i64, ptr %i.l, align 8, !tbaa !20
  %.not5795 = icmp eq i64 %i.s, 0
  br i1 %.not5795, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader
  %.not107 = icmp eq i64 %.fr106, 0
  br i1 %.not107, label %.lr.ph98.split, label %.lr.ph98.split.us

.lr.ph98.split.us:                                ; preds = %.lr.ph98, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us
  %.03897.us = phi i64 [ %i.u, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us ], [ 0, %.lr.ph98 ] ; 3 uses
  %.03996.us = phi i64 [ %.5.us, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us ], [ %.fr106, %.lr.ph98 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.t = invoke i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %.lr.ph98.split.us
  %.not61.not.us = icmp eq i32 %i.t, 0
  br i1 %.not61.not.us, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nuw i64 %.03897.us, 1
  %exitcond114.not = icmp eq i64 %.03897.us, %i.p
  br i1 %exitcond114.not, label %.split100.us, label %_ZN4bssl5ArrayItEixEm.exit.us

_ZN4bssl5ArrayItEixEm.exit.us:                    ; preds = %bb.g
  %i.v = load i16, ptr %i.a, align 2, !tbaa !41   ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.03897.us
  store i16 %i.v, ptr %i.w, align 2, !tbaa !41
  %i.x = load i64, ptr %i.g, align 8, !tbaa !616
  br label %bb.h

bb.h:                                             ; preds = %_ZN4bssl5ArrayItEixEm.exit.us, %bb.i
  %.03794.us = phi i64 [ 0, %_ZN4bssl5ArrayItEixEm.exit.us ], [ %i.ae, %bb.i ] ; 4 uses
  %exitcond.not = icmp eq i64 %.03794.us, %i.x
  br i1 %exitcond.not, label %.split102.us, label %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit.us

_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit.us: ; preds = %bb.h
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !615
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03794.us ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !619
  %i.ac = icmp ne i16 %i.ab, %i.v
  %i.ad = load ptr, ptr %i.z, align 8
  %.not62.us = icmp eq ptr %i.ad, null
  %or.cond.us = select i1 %i.ac, i1 true, i1 %.not62.us
  br i1 %or.cond.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit.us
  %i.ae = add nuw i64 %.03794.us, 1               ; 2 uses
  %exitcond113.not = icmp eq i64 %i.ae, %.fr106
  br i1 %exitcond113.not, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us, label %bb.h, !llvm.loop !620

bb.j:                                             ; preds = %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit.us
  %spec.select.us = call i64 @llvm.umin.i64(i64 %.03794.us, i64 %.03996.us)
  br label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us:    ; preds = %bb.i, %bb.j
  %.5.us = phi i64 [ %spec.select.us, %bb.j ], [ %.03996.us, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.af = load i64, ptr %i.l, align 8, !tbaa !20
  %.not57.us = icmp eq i64 %i.af, 0
  br i1 %.not57.us, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge, label %.lr.ph98.split.us, !llvm.loop !621

.split.us:                                        ; preds = %.lr.ph98.split.us
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %.noexc, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph98.split:                                   ; preds = %.lr.ph98, %_ZN4bssl5ArrayItEixEm.exit
  %.03897 = phi i64 [ %i.ak, %_ZN4bssl5ArrayItEixEm.exit ], [ 0, %.lr.ph98 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ai = invoke i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.a)
          to label %bb.l unwind label %.split

bb.l:                                             ; preds = %.lr.ph98.split
  %.not61.not = icmp eq i32 %i.ai, 0
  br i1 %.not61.not, label %.critedge, label %bb.n

.split:                                           ; preds = %.lr.ph98.split
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.aj, %.split ], [ %i.ag, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %exitcond115.not = icmp eq i64 %.03897, %i.p
  br i1 %exitcond115.not, label %.split100.us, label %_ZN4bssl5ArrayItEixEm.exit

.split100.us:                                     ; preds = %bb.g, %bb.n
  call void @abort() #22
  unreachable

_ZN4bssl5ArrayItEixEm.exit:                       ; preds = %bb.n
  %i.ak = add nuw i64 %.03897, 1
  %i.al = load i16, ptr %i.a, align 2, !tbaa !41
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.03897
  store i16 %i.al, ptr %i.am, align 2, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.an = load i64, ptr %i.l, align 8, !tbaa !20
  %.not57 = icmp eq i64 %i.an, 0
  br i1 %.not57, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge, label %.lr.ph98.split, !llvm.loop !621

.split102.us:                                     ; preds = %bb.h
  call void @abort() #22
  unreachable

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge: ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us, %_ZN4bssl5ArrayItEixEm.exit, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader
  %.039.lcssa = phi i64 [ %.fr106, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader ], [ 0, %_ZN4bssl5ArrayItEixEm.exit ], [ %.5.us, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  invoke void @_ZSt4sortIPtEvT_S1_(ptr noundef nonnull %i.q, ptr noundef nonnull %i.ao)
          to label %.preheader.split unwind label %bb.p

.preheader.split:                                 ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge
  %.not58104 = icmp ugt i64 %i.m, 2
  br i1 %.not58104, label %.lr.ph.preheader, label %.critedge64

.lr.ph.preheader:                                 ; preds = %.preheader.split
  %4 = add nuw i64 %i.p, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.p, i64 2)
  br label %.lr.ph

bb.o:                                             ; preds = %_ZN4bssl5ArrayItEixEm.exit66
  %i.ap = add nuw nsw i64 %.0105, 1               ; 2 uses
  %exitcond117.not = icmp eq i64 %i.ap, %umax
  br i1 %exitcond117.not, label %.critedge64, label %.lr.ph, !llvm.loop !622

bb.p:                                             ; preds = %bb.q, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.0105 = phi i64 [ %i.ap, %bb.o ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %exitcond116.not = icmp eq i64 %.0105, %4
  br i1 %exitcond116.not, label %5, label %_ZN4bssl5ArrayItEixEm.exit66

5:                                                ; preds = %.lr.ph
  call void @abort() #22
  unreachable

_ZN4bssl5ArrayItEixEm.exit66:                     ; preds = %.lr.ph
  %i.ar = getelementptr [2 x i8], ptr %i.q, i64 %.0105
  %i.as = getelementptr i8, ptr %i.ar, i64 -2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !41
  %6 = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.0105
  %i.au = load i16, ptr %6, align 2, !tbaa !41
  %i.av = icmp eq i16 %i.at, %i.au
  br i1 %i.av, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, label %bb.o

.critedge64:                                      ; preds = %bb.o, %.preheader.split
  %i.aw = icmp ult i64 %.039.lcssa, %.fr106
  br i1 %i.aw, label %bb.q, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

bb.q:                                             ; preds = %.critedge64
  %i.ax = load ptr, ptr %0, align 8, !tbaa !165
  %i.ay = invoke noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.ax)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.az = icmp ugt i16 %i.ay, 771
  br i1 %i.az, label %bb.s, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = or i32 %i.bb, 2097152
  store i32 %i.bc, ptr %i.ba, align 8
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !616
  %i.be = icmp ult i64 %.039.lcssa, %i.bd
  br i1 %i.be, label %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit68, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @abort() #22
  unreachable

_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit68: ; preds = %bb.s
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !615
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.039.lcssa
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !619
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i16 %i.bi, ptr %i.bj, align 8, !tbaa !623
  br label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

.critedge:                                        ; preds = %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread: ; preds = %_ZN4bssl5ArrayItEixEm.exit66, %.noexc65, %.critedge, %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit68, %bb.r, %.critedge64
  %.452 = phi i1 [ false, %.noexc65 ], [ true, %.critedge64 ], [ false, %.critedge ], [ true, %bb.r ], [ true, %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit68 ], [ false, %_ZN4bssl5ArrayItEixEm.exit66 ]
  invoke void @OPENSSL_free(ptr noundef %i.q)
          to label %_ZN4bssl5ArrayItED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #22
  unreachable

bb.v:                                             ; preds = %bb.m, %bb.p, %bb.k
  %.sroa.0.1 = phi ptr [ %i.q, %bb.p ], [ %i.q, %bb.m ], [ null, %bb.k ]
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %.us-phi, %bb.m ], [ %i.ah, %bb.k ]
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.1)
          to label %_ZN4bssl5ArrayItED2Ev.exit69 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #22
  unreachable

_ZN4bssl5ArrayItED2Ev.exit69:                     ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn.pn

_ZN4bssl5ArrayItED2Ev.exit:                       ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, %bb.b, %bb.c, %bb.d
  %.553 = phi i1 [ false, %bb.b ], [ %.452, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread ], [ false, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZN4bssl5ArrayItED2Ev.exit
  %.6 = phi i1 [ %.553, %_ZN4bssl5ArrayItED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL32cert_compression_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL40ext_delegated_credential_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3) #14 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL42ext_delegated_credential_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !165
  %i.c = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.b)
  %i.d = icmp ult i16 %i.c, 772
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.e = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %.not7 = icmp eq i64 %i.j, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.l = call fastcc noundef zeroext i1 @_ZN4bsslL15parse_u16_arrayEPK6cbs_stPNS_5ArrayItEE(ptr noundef nonnull %3, ptr noundef nonnull %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.c ], [ %i.l, %bb.e ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  %.1 = phi i1 [ %.0, %bb.f ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL24ext_alps_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL29ext_alps_add_clienthello_implEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tEb(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL26ext_alps_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL31ext_alps_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL24ext_alps_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL29ext_alps_add_serverhello_implEPNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL28ext_alps_add_clienthello_oldEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL29ext_alps_add_clienthello_implEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tEb(ptr noundef %0, ptr noundef %2, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL30ext_alps_parse_serverhello_oldEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL31ext_alps_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL28ext_alps_add_serverhello_oldEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL29ext_alps_add_serverhello_implEPNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL43ext_certificate_authorities_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.cbb_st, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = tail call noundef zeroext i1 @_ZN4bssl16ssl_has_CA_namesEPKNS_10SSL_CONFIGE(ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = tail call i32 @CBB_add_u16(ptr noundef %2, i16 noundef zeroext 47)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @CBB_add_u16_length_prefixed(ptr noundef %2, ptr noundef nonnull %4)
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1
