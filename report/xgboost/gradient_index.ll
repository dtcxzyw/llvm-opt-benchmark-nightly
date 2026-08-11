inline.NumInlined: 3303
inline.NumDeleted: 1033
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_:bb.a
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !134
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #31
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #22

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #10

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @nextafterf(float noundef, float noundef) local_unnamed_addr #26

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_11FeatureTypeEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !8      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !144
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  store i64 %i.s, ptr %i.d, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !144
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !8
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !505

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !506

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ar = lshr i64 %5, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat, ptr %i.aw, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !508

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !144
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !140

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 8
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.bb, ptr %.0.i.i.i.i.i, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !144
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -8                             ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec115, 3
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bi = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat117, ptr %i.bj, align 8, !tbaa !8
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !509

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !510

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !145   ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 4 uses
  %i.bq = sub nsw i64 1152921504606846975, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #32
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i64, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec141, 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cj = shl i64 %index145, 3
  %next.gep146 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x i64> %broadcast.splat143, ptr %next.gep146, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat143, ptr %i.ck, align 8, !tbaa !8
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cl, label %middle.block148, label %vector.body144, !llvm.loop !511

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !512

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cn = icmp sgt i64 %i.bx, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !140

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 8
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i64, ptr %i.bm, align 8, !tbaa !8
  store i64 %i.cp, ptr %i.ca, align 8, !tbaa !8
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !140

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #31
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !145
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !144
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !201
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.48") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.34, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !8
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.g ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.35, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEm.exit
  %i.e = load i32, ptr %2, align 4, !tbaa !137
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.g ; 0 uses

end_hunk_0
begin_hunk_1_@_ZN7xgboost6common15RefResourceViewImEC2EPmmSt10shared_ptrINS0_15ResourceHandlerEE:bb.a
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !8
  store ptr %1, ptr %0, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !301
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load <2 x ptr>, ptr %3, align 8, !tbaa !141
  store ptr null, ptr %i.f, align 8, !tbaa !130
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !141
  store ptr null, ptr %3, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !211  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(9) %i.h)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store i64 %i.l, ptr %i.b, align 8, !tbaa !8
  %.not.i = icmp ult i64 %i.l, %2
  br i1 %.not.i, label %bb.c, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.e

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %4, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull @.str.42, i32 noundef 57)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc7
  %i.n = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.g ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.43, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !236    ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.k

bb.f:                                             ; preds = %.noexc7, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #8
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !236  ; 4 uses
  %.not.i16 = icmp eq ptr %.pr17, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %.pr17, align 8, !tbaa !74 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr17, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !78
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr17, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.k:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #8
  resume { ptr, i32 } %.pn.pn

bb.l:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForIiZNS0_16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS5_EUlOS5_E_EEvS5_iOT0_EUlS5_E_EEvS5_iNS0_5SchedESF_(i32 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %6 = alloca %"class.xgboost::common::Range1d", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %9 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph96, label %.loopexit

.lr.ph96:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph96, %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next, %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit ] ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !763, !nonnull !33, !align !479
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = mul i64 %i.i, %indvars.iv                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.k = mul i64 %i.i, %indvars.iv.next
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !765, !nonnull !33, !align !479
  %i.m = load i64, ptr %i.l, align 8, !tbaa !8
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.m, i64 %i.k) ; 2 uses
  %.not.i55 = icmp ugt i64 %.sroa.speculated.i, %i.j
  br i1 %.not.i55, label %bb.c, label %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !766, !nonnull !33, !align !479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.j, i64 noundef %.sroa.speculated.i)
  %i.o = load i64, ptr %6, align 8, !tbaa !482    ; 4 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !484  ; 3 uses
  %i.q = icmp eq i64 %i.p, %i.o
  br i1 %i.q, label %_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sub i64 %i.p, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !767, !nonnull !33, !align !479
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !769, !nonnull !33, !align !479
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !226
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.o ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.r, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i.i.i
  %i.y = load i64, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  %10 = sub i64 %i.p, %i.o
  %i.z = add i64 %10, 2305843009213693951
  %11 = and i64 %i.z, 2305843009213693951         ; 2 uses
  %i.aa = add nuw nsw i64 %11, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %11, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat, ptr %i.ae, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !770

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.ph = phi ptr [ %i.w, %bb.d ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.y, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.x
  br i1 %.not.i.i.i.i.i.i, label %_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !771

_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit

_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit: ; preds = %bb.b, %_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i
  %exitcond108.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond108.not, label %.loopexit, label %bb.b, !llvm.loop !772

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !773
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !773
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.e
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %7, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.ah = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ah, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.g

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ai = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.h ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = load ptr, ptr %7, align 8, !tbaa !236   ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.af

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.g ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.ae

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %.pr70 = load ptr, ptr %7, align 8, !tbaa !236  ; 4 uses
  %.not.i64 = icmp eq ptr %.pr70, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %.pr70, align 8, !tbaa !74 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pr70, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !78
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr70, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  switch i32 %2, label %.thread [
    i32 0, label %.preheader73
    i32 1, label %bb.n
    i32 2, label %bb.s
    i32 3, label %.preheader82
  ]

.thread:                                          ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit

.preheader82:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ay = icmp sgt i32 %0, 0
  br i1 %i.ay, label %.lr.ph, label %bb.z

.preheader73:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.az = icmp sgt i32 %0, 0
  br i1 %i.az, label %.lr.ph94, label %bb.z

.lr.ph94:                                         ; preds = %.preheader73, %bb.l
  %.04493 = phi i32 [ %i.ba, %bb.l ], [ 0, %.preheader73 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common16ParallelForBlockImZNS3_22MakeFixedVecWithMallocImEENS3_15RefResourceViewIT_EEPKNS2_7ContextEmRKS7_EUlOS7_E_EEvS7_iOT0_EUlS7_E_JiEEEvS7_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull byval(%class.anon.136) align 8 %4, i32 noundef %.04493)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph94
  %i.ba = add nuw nsw i32 %.04493, 1              ; 2 uses
  %exitcond106.not = icmp eq i32 %i.ba, %0
  br i1 %exitcond106.not, label %thread-pre-split123, label %.lr.ph94, !llvm.loop !776

bb.m:                                             ; preds = %.lr.ph94
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.bc = icmp eq i64 %3, 0
  %i.bd = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.bc, label %.preheader74, label %.preheader76

.preheader76:                                     ; preds = %bb.n
  br i1 %i.bd, label %.lr.ph90, label %bb.z

.preheader74:                                     ; preds = %bb.n
  br i1 %i.bd, label %.lr.ph92, label %bb.z

.lr.ph92:                                         ; preds = %.preheader74, %bb.o
  %.04391 = phi i32 [ %i.be, %bb.o ], [ 0, %.preheader74 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common16ParallelForBlockImZNS3_22MakeFixedVecWithMallocImEENS3_15RefResourceViewIT_EEPKNS2_7ContextEmRKS7_EUlOS7_E_EEvS7_iOT0_EUlS7_E_JiEEEvS7_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull byval(%class.anon.136) align 8 %4, i32 noundef %.04391)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.lr.ph92
  %i.be = add nuw nsw i32 %.04391, 1              ; 2 uses
  %exitcond105.not = icmp eq i32 %i.be, %0
  br i1 %exitcond105.not, label %thread-pre-split123, label %.lr.ph92, !llvm.loop !777

bb.p:                                             ; preds = %.lr.ph92
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph90:                                         ; preds = %.preheader76, %bb.q
  %.04289 = phi i32 [ %i.bg, %bb.q ], [ 0, %.preheader76 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common16ParallelForBlockImZNS3_22MakeFixedVecWithMallocImEENS3_15RefResourceViewIT_EEPKNS2_7ContextEmRKS7_EUlOS7_E_EEvS7_iOT0_EUlS7_E_JiEEEvS7_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull byval(%class.anon.136) align 8 %4, i32 noundef %.04289)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph90
  %i.bg = add nuw nsw i32 %.04289, 1              ; 2 uses
  %exitcond104.not = icmp eq i32 %i.bg, %0
  br i1 %exitcond104.not, label %thread-pre-split123, label %.lr.ph90, !llvm.loop !778

bb.r:                                             ; preds = %.lr.ph90
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.bi = icmp eq i64 %3, 0
  %i.bj = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.bi, label %.preheader78, label %.preheader80

.preheader80:                                     ; preds = %bb.s
  br i1 %i.bj, label %.lr.ph86, label %bb.z

.preheader78:                                     ; preds = %bb.s
  br i1 %i.bj, label %.lr.ph88, label %bb.z

.lr.ph88:                                         ; preds = %.preheader78, %bb.t
  %.04187 = phi i32 [ %i.bk, %bb.t ], [ 0, %.preheader78 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common16ParallelForBlockImZNS3_22MakeFixedVecWithMallocImEENS3_15RefResourceViewIT_EEPKNS2_7ContextEmRKS7_EUlOS7_E_EEvS7_iOT0_EUlS7_E_JiEEEvS7_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull byval(%class.anon.136) align 8 %4, i32 noundef %.04187)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph88
  %i.bk = add nuw nsw i32 %.04187, 1              ; 2 uses
  %exitcond103.not = icmp eq i32 %i.bk, %0
  br i1 %exitcond103.not, label %thread-pre-split123, label %.lr.ph88, !llvm.loop !779

bb.u:                                             ; preds = %.lr.ph88
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph86:                                         ; preds = %.preheader80, %bb.v
  %.04085 = phi i32 [ %i.bm, %bb.v ], [ 0, %.preheader80 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common16ParallelForBlockImZNS3_22MakeFixedVecWithMallocImEENS3_15RefResourceViewIT_EEPKNS2_7ContextEmRKS7_EUlOS7_E_EEvS7_iOT0_EUlS7_E_JiEEEvS7_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull byval(%class.anon.136) align 8 %4, i32 noundef %.04085)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph86
  %i.bm = add nuw nsw i32 %.04085, 1              ; 2 uses
  %exitcond102.not = icmp eq i32 %i.bm, %0
  br i1 %exitcond102.not, label %thread-pre-split123, label %.lr.ph86, !llvm.loop !780

bb.w:                                             ; preds = %.lr.ph86
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.preheader82, %bb.x
  %.084 = phi i32 [ %i.bo, %bb.x ], [ 0, %.preheader82 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common16ParallelForBlockImZNS3_22MakeFixedVecWithMallocImEENS3_15RefResourceViewIT_EEPKNS2_7ContextEmRKS7_EUlOS7_E_EEvS7_iOT0_EUlS7_E_JiEEEvS7_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull byval(%class.anon.136) align 8 %4, i32 noundef %.084)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.bo = add nuw nsw i32 %.084, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bo, %0
  br i1 %exitcond.not, label %thread-pre-split123, label %.lr.ph, !llvm.loop !781

bb.y:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

thread-pre-split123:                              ; preds = %bb.x, %bb.v, %bb.t, %bb.q, %bb.o, %bb.l
  %.pr72.pr = load ptr, ptr %9, align 8, !tbaa !278
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split123, %.preheader73, %.preheader74, %.preheader76, %.preheader78, %.preheader80, %.preheader82
  %.pr72 = phi ptr [ %.pr72.pr, %thread-pre-split123 ], [ null, %.preheader73 ], [ null, %.preheader74 ], [ null, %.preheader76 ], [ null, %.preheader78 ], [ null, %.preheader80 ], [ null, %.preheader82 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i65 = icmp eq ptr %.pr72, null
  br i1 %.not.i65, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.z
  store ptr %.pr72, ptr %5, align 8, !tbaa !278
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #32
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.ab:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !278
  %.not.i2.i = icmp eq ptr %i.br, null
  br i1 %.not.i2.i, label %.body, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit, %.preheader, %_ZN4dmlc12OMPExceptionD2Ev.exit
  ret void

.body:                                            ; preds = %bb.ac, %bb.ab, %bb.y, %bb.w, %bb.u, %bb.r, %bb.p, %bb.m
  %.pn52 = phi { ptr, i32 } [ %i.bp, %bb.y ], [ %i.bb, %bb.m ], [ %i.bf, %bb.p ], [ %i.bh, %bb.r ], [ %i.bl, %bb.u ], [ %i.bn, %bb.w ], [ %i.bq, %bb.ab ], [ %i.bq, %bb.ac ]
  %i.bs = load ptr, ptr %9, align 8, !tbaa !278
  %.not.i.i67 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i67, label %_ZN4dmlc12OMPExceptionD2Ev.exit69, label %bb.ad

bb.ad:                                            ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #8
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit69

_ZN4dmlc12OMPExceptionD2Ev.exit69:                ; preds = %.body, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit69, %bb.i
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZN4dmlc12OMPExceptionD2Ev.exit69 ], [ %.pn, %bb.i ]
  resume { ptr, i32 } %.pn52.pn

bb.af:                                            ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZN7xgboost6common16ParallelForBlockImZNS3_22MakeFixedVecWithMallocImEENS3_15RefResourceViewIT_EEPKNS2_7ContextEmRKS7_EUlOS7_E_EEvS7_iOT0_EUlS7_E_JiEEEvS7_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef byval(%class.anon.136) align 8 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.xgboost::common::Range1d", align 8 ; 5 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = sext i32 %2 to i64
  %i.b = load ptr, ptr %1, align 8, !tbaa !763, !nonnull !33, !align !479
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = mul i64 %i.c, %i.a                       ; 2 uses
  %i.e = add nsw i32 %2, 1
  %i.f = sext i32 %i.e to i64
  %i.g = mul i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !765, !nonnull !33, !align !479
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.g) ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.speculated.i, %i.d
  br i1 %.not.i, label %bb.b, label %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !766, !nonnull !33, !align !479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.d, i64 noundef %.sroa.speculated.i)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.m = load i64, ptr %5, align 8, !tbaa !482    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !484  ; 3 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.q = sub i64 %i.o, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !767, !nonnull !33, !align !479
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !769, !nonnull !33, !align !479
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !226
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.m ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i.i
  %i.x = load i64, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %8 = sub i64 %i.o, %i.m
  %i.y = add i64 %8, 2305843009213693951
  %9 = and i64 %i.y, 2305843009213693951          ; 2 uses
  %i.z = add nuw nsw i64 %9, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %9, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !782

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c, %middle.block
  %.06.i.i.i.i.i.i.ph = phi ptr [ %i.v, %bb.c ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.x, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !783

_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { ptr, i32 } %i.ag, 1      ; 2 uses
  %i.aj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #8
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.al = call ptr @__cxa_begin_catch(ptr %i.ah) #8 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.an) #32
          to label %.noexc8 unwind label %bb.p

.noexc8:                                          ; preds = %bb.f
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.e
  %i.ao = load ptr, ptr %0, align 8, !tbaa !278
  %.not22 = icmp eq ptr %i.ao, null
  br i1 %.not22, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ap = load ptr, ptr %7, align 8, !tbaa !278
  store ptr null, ptr %7, align 8, !tbaa !278
  %i.aq = load ptr, ptr %0, align 8, !tbaa !278   ; 2 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !278
  store ptr %i.ap, ptr %0, align 8, !tbaa !278
  %.not.i.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i9, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %.pr = load ptr, ptr %7, align 8, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %.not.i10 = icmp eq ptr %.pr, null
  br i1 %.not.i10, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #8
  %i.as = icmp eq i32 %i.ai, %i.ar
  br i1 %i.as, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.at = call ptr @__cxa_begin_catch(ptr %i.ah) #8 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #8 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i11, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.av) #32
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %bb.k
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13:        ; preds = %bb.j
  %i.aw = load ptr, ptr %0, align 8, !tbaa !278
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.ax = load ptr, ptr %6, align 8, !tbaa !278
  store ptr null, ptr %6, align 8, !tbaa !278
  %i.ay = load ptr, ptr %0, align 8, !tbaa !278   ; 2 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !278
  store ptr %i.ax, ptr %0, align 8, !tbaa !278
  %.not.i.i14 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i14, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15: ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %.pr20 = load ptr, ptr %6, align 8, !tbaa !278
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.not.i16 = icmp eq ptr %.pr20, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.ba = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #8 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit

bb.p:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.bc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #8 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit

_ZZN7xgboost6common16ParallelForBlockImZNS0_22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS4_EUlOS4_E_EEvS4_iOT0_ENKUlS4_E_clIiEEDaS4_.exit: ; preds = %_ZZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_ENKUlOS3_E_clINS0_7Range1dEEEDaSA_.exit.i, %bb.a, %bb.q, %bb.o
  ret void

bb.r:                                             ; preds = %bb.p, %bb.n, %bb.i
  %.merged = phi { ptr, i32 } [ %i.az, %bb.n ], [ %i.ag, %bb.i ], [ %i.bb, %bb.p ]
  resume { ptr, i32 } %.merged

bb.s:                                             ; preds = %bb.p, %bb.n
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EEC2IS3_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
end_hunk_1
