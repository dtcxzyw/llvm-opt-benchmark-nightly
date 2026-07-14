inline.NumInlined: 5130
inline.NumDeleted: 1400
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZNK5arrow6Tensor15is_column_majorEv:bb.a

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.pr.pre.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9
  %i.q = load ptr, ptr %1, align 8, !tbaa !13     ; 5 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.n, %i.t
  br i1 %i.u, label %bb.f, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i

bb.f:                                             ; preds = %bb.e
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.not.i.i.i.i.i.i, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.k, ptr %i.q, i64 %i.n)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.w = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.not.i.i.i9.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i9.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit10.i, label %bb.j

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i:      ; preds = %bb.g, %bb.f, %bb.e, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.x = phi ptr [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ %.pr.pre.i, %_ZN5arrow6StatusD2Ev.exit.thread.i ] ; 3 uses
  %.07.i = phi i1 [ false, %bb.e ], [ true, %bb.f ], [ %.not9.i.i.i.i.i.i, %bb.g ], [ false, %_ZN5arrow6StatusD2Ev.exit.thread.i ]
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_126IsTensorStridesColumnMajorERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_.exit, label %bb.i

bb.i:                                             ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZN5arrow12_GLOBAL__N_126IsTensorStridesColumnMajorERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ah) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit10.i

_ZNSt6vectorIlSaIlEED2Ev.exit10.i:                ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.v

_ZN5arrow12_GLOBAL__N_126IsTensorStridesColumnMajorERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_.exit: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %.07.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5arrow6Tensor7type_idEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow6Tensor6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5arrow12TensorEqualsERKNS_6TensorES2_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN5arrow12TensorEqualsERKNS_6TensorES2_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Tensor12CountNonZeroEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.67") align 8 %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37, !noalias !252 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !37, !alias.scope !252
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109, !noalias !252 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !109, !alias.scope !252
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow6Tensor4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81, !noalias !252
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !252
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !252
  br label %_ZNK5arrow6Tensor4typeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !252 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !37
  br label %_ZNK5arrow6Tensor4typeEv.exit

_ZNK5arrow6Tensor4typeEv.exit:                    ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55, !noalias !255
  switch i32 %i.m, label %bb.al [
    i32 0, label %.invoke
    i32 1, label %.invoke
    i32 3, label %bb.e
    i32 2, label %bb.h
    i32 5, label %bb.k
    i32 4, label %bb.n
    i32 7, label %bb.q
    i32 6, label %bb.t
    i32 9, label %bb.w
    i32 8, label %bb.z
    i32 10, label %bb.ac
    i32 11, label %bb.af
    i32 12, label %bb.ai
    i32 13, label %.invoke
    i32 39, label %.invoke
    i32 14, label %.invoke
    i32 40, label %.invoke
    i32 34, label %.invoke
    i32 35, label %.invoke
    i32 15, label %.invoke
    i32 33, label %.invoke
    i32 16, label %.invoke
    i32 17, label %.invoke
    i32 18, label %.invoke
    i32 19, label %.invoke
    i32 20, label %.invoke
    i32 37, label %.invoke
    i32 21, label %.invoke
    i32 22, label %.invoke
    i32 43, label %.invoke
    i32 44, label %.invoke
    i32 23, label %.invoke
    i32 24, label %.invoke
    i32 25, label %.invoke
    i32 36, label %.invoke
    i32 41, label %.invoke
    i32 42, label %.invoke
    i32 30, label %.invoke
    i32 32, label %.invoke
    i32 26, label %.invoke
    i32 27, label %.invoke
    i32 28, label %.invoke
    i32 29, label %.invoke
    i32 38, label %.invoke
    i32 31, label %.invoke
  ]

bb.e:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o)
          to label %.noexc7 unwind label %bb.av

.noexc7:                                          ; preds = %bb.e
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84, !noalias !258 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !163, !range !53, !noalias !258, !noundef !54
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !258
  %i.x = select i1 %i.u, ptr %i.w, ptr null, !prof !42 ; 6 uses
  %5 = ptrtoint ptr %i.x to i64
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !83, !noalias !258 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83, !noalias !258 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i.i:     ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  br label %.lr.ph.i.i4.preheader.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ 1, %bb.f ]
  %.sroa.02.05.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.02.05.i.i.i.i.i.i, align 8, !tbaa !14, !noalias !258
  %i.ae = mul nsw i64 %i.ad, %.06.i.i.i.i.i.i     ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.aa
  br i1 %i.ag, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 %i.ae
  %.not7.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i.i

.lr.ph.i.i4.preheader.i.i.i.i:                    ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i.i
  %i.ai = phi ptr [ %i.ac, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i.i ], [ %i.ah, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i ] ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %5                       ; 3 uses
  %min.iters.check306 = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check306, label %.lr.ph.i.i4.i.i.i.i.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i.i
  %n.vec309 = and i64 %i.ak, -4                   ; 3 uses
  %i.al = getelementptr i8, ptr %i.x, i64 %n.vec309
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph307
  %index311 = phi i64 [ 0, %vector.ph307 ], [ %index.next317, %vector.body310 ] ; 2 uses
  %vec.phi312 = phi <2 x i64> [ zeroinitializer, %vector.ph307 ], [ %i.ar, %vector.body310 ]
  %vec.phi313 = phi <2 x i64> [ zeroinitializer, %vector.ph307 ], [ %i.as, %vector.body310 ]
  %next.gep314 = getelementptr i8, ptr %i.x, i64 %index311 ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep314, i64 2
  %wide.load315 = load <2 x i8>, ptr %next.gep314, align 1, !tbaa !81, !noalias !258
  %wide.load316 = load <2 x i8>, ptr %i.am, align 1, !tbaa !81, !noalias !258
  %i.an = icmp ne <2 x i8> %wide.load315, zeroinitializer
  %i.ao = icmp ne <2 x i8> %wide.load316, zeroinitializer
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi312, %i.ap        ; 2 uses
  %i.as = add <2 x i64> %vec.phi313, %i.aq        ; 2 uses
  %index.next317 = add nuw i64 %index311, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next317, %n.vec309
  br i1 %i.at, label %middle.block318, label %vector.body310, !llvm.loop !261

middle.block318:                                  ; preds = %vector.body310
  %bin.rdx319 = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx319) ; 2 uses
  %cmp.n320 = icmp eq i64 %i.ak, %n.vec309
  br i1 %cmp.n320, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i.i.preheader

.lr.ph.i.i4.i.i.i.i.preheader:                    ; preds = %.lr.ph.i.i4.preheader.i.i.i.i, %middle.block318
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i.i ], [ %i.au, %middle.block318 ]
  %.058.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i4.preheader.i.i.i.i ], [ %i.al, %middle.block318 ]
  br label %.lr.ph.i.i4.i.i.i.i

.lr.ph.i.i4.i.i.i.i:                              ; preds = %.lr.ph.i.i4.i.i.i.i.preheader, %.lr.ph.i.i4.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i.i.preheader ]
  %.058.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i4.i.i.i.i ], [ %.058.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i.i = load i8, ptr %.058.i.i.i.i.i.i, align 1, !tbaa !81, !noalias !258
  %.not6.i.i.i.i.i.i = icmp ne i8 %.05.val.i.i.i.i.i.i, 0
  %i.av = zext i1 %.not6.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i = add nuw nsw i64 %.09.i.i.i.i.i.i, %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i.i, !llvm.loop !264

bb.g:                                             ; preds = %.noexc7
  %i.ax = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_8Int8TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !258
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.h:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ba = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.az)
          to label %.noexc8 unwind label %bb.av

.noexc8:                                          ; preds = %bb.h
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !84, !noalias !265 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !163, !range !53, !noalias !265, !noundef !54
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !265
  %i.bi = select i1 %i.bf, ptr %i.bh, ptr null, !prof !42 ; 6 uses
  %6 = ptrtoint ptr %i.bi to i64
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !83, !noalias !265 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !83, !noalias !265 ; 2 uses
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i, label %.lr.ph.i.i.i.i.i92.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i:  ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  br label %.lr.ph.i.i4.preheader.i.i.i97.i

.lr.ph.i.i.i.i.i92.i:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i92.i
  %.06.i.i.i.i.i93.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i92.i ], [ 1, %bb.i ]
  %.sroa.02.05.i.i.i.i.i94.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i92.i ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = load i64, ptr %.sroa.02.05.i.i.i.i.i94.i, align 8, !tbaa !14, !noalias !265
  %i.bp = mul nsw i64 %i.bo, %.06.i.i.i.i.i93.i   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i94.i, i64 8 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bl
  br i1 %i.br, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, label %.lr.ph.i.i.i.i.i92.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i:          ; preds = %.lr.ph.i.i.i.i.i92.i
  %i.bs = getelementptr inbounds i8, ptr %i.bi, i64 %i.bp
  %.not7.i.i.i.i.i96.i = icmp eq i64 %i.bp, 0
  br i1 %.not7.i.i.i.i.i96.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i97.i

.lr.ph.i.i4.preheader.i.i.i97.i:                  ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i
  %i.bt = phi ptr [ %i.bn, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i ], [ %i.bs, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i ] ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %6                       ; 3 uses
  %min.iters.check288 = icmp ult i64 %i.bv, 4
  br i1 %min.iters.check288, label %.lr.ph.i.i4.i.i.i98.i.preheader, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i97.i
  %n.vec291 = and i64 %i.bv, -4                   ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bi, i64 %n.vec291
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph289
  %index293 = phi i64 [ 0, %vector.ph289 ], [ %index.next299, %vector.body292 ] ; 2 uses
  %vec.phi294 = phi <2 x i64> [ zeroinitializer, %vector.ph289 ], [ %i.cc, %vector.body292 ]
  %vec.phi295 = phi <2 x i64> [ zeroinitializer, %vector.ph289 ], [ %i.cd, %vector.body292 ]
  %next.gep296 = getelementptr i8, ptr %i.bi, i64 %index293 ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep296, i64 2
  %wide.load297 = load <2 x i8>, ptr %next.gep296, align 1, !tbaa !81, !noalias !265
  %wide.load298 = load <2 x i8>, ptr %i.bx, align 1, !tbaa !81, !noalias !265
  %i.by = icmp ne <2 x i8> %wide.load297, zeroinitializer
  %i.bz = icmp ne <2 x i8> %wide.load298, zeroinitializer
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = zext <2 x i1> %i.bz to <2 x i64>
  %i.cc = add <2 x i64> %vec.phi294, %i.ca        ; 2 uses
  %i.cd = add <2 x i64> %vec.phi295, %i.cb        ; 2 uses
  %index.next299 = add nuw i64 %index293, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next299, %n.vec291
  br i1 %i.ce, label %middle.block300, label %vector.body292, !llvm.loop !268

middle.block300:                                  ; preds = %vector.body292
  %bin.rdx301 = add <2 x i64> %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx301) ; 2 uses
  %cmp.n302 = icmp eq i64 %i.bv, %n.vec291
  br i1 %cmp.n302, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i98.i.preheader

.lr.ph.i.i4.i.i.i98.i.preheader:                  ; preds = %.lr.ph.i.i4.preheader.i.i.i97.i, %middle.block300
  %.09.i.i.i.i.i99.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i97.i ], [ %i.cf, %middle.block300 ]
  %.058.i.i.i.i.i100.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i4.preheader.i.i.i97.i ], [ %i.bw, %middle.block300 ]
  br label %.lr.ph.i.i4.i.i.i98.i

.lr.ph.i.i4.i.i.i98.i:                            ; preds = %.lr.ph.i.i4.i.i.i98.i.preheader, %.lr.ph.i.i4.i.i.i98.i
  %.09.i.i.i.i.i99.i = phi i64 [ %spec.select.i.i.i.i.i103.i, %.lr.ph.i.i4.i.i.i98.i ], [ %.09.i.i.i.i.i99.i.ph, %.lr.ph.i.i4.i.i.i98.i.preheader ]
  %.058.i.i.i.i.i100.i = phi ptr [ %i.ch, %.lr.ph.i.i4.i.i.i98.i ], [ %.058.i.i.i.i.i100.i.ph, %.lr.ph.i.i4.i.i.i98.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i101.i = load i8, ptr %.058.i.i.i.i.i100.i, align 1, !tbaa !81, !noalias !265
  %.not6.i.i.i.i.i102.i = icmp ne i8 %.05.val.i.i.i.i.i101.i, 0
  %i.cg = zext i1 %.not6.i.i.i.i.i102.i to i64
  %spec.select.i.i.i.i.i103.i = add nuw nsw i64 %.09.i.i.i.i.i99.i, %i.cg ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i100.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i104.i = icmp eq ptr %i.ch, %i.bt
  br i1 %.not.i.i.i.i.i104.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i98.i, !llvm.loop !269

bb.j:                                             ; preds = %.noexc8
  %i.ci = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9UInt8TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !265
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.k:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cl = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ck)
          to label %.noexc9 unwind label %bb.av

.noexc9:                                          ; preds = %bb.k
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc9
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !84, !noalias !270 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 9
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !163, !range !53, !noalias !270, !noundef !54
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !270
  %i.ct = select i1 %i.cq, ptr %i.cs, ptr null, !prof !42 ; 6 uses
  %7 = ptrtoint ptr %i.ct to i64
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !83, !noalias !270 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !83, !noalias !270 ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i, label %.lr.ph.i.i.i.i.i107.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i:  ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i112.i

.lr.ph.i.i.i.i.i107.i:                            ; preds = %bb.l, %.lr.ph.i.i.i.i.i107.i
  %.06.i.i.i.i.i108.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i107.i ], [ 1, %bb.l ]
  %.sroa.02.05.i.i.i.i.i109.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i107.i ], [ %i.cu, %bb.l ] ; 2 uses
  %i.cz = load i64, ptr %.sroa.02.05.i.i.i.i.i109.i, align 8, !tbaa !14, !noalias !270
  %i.da = mul nsw i64 %i.cz, %.06.i.i.i.i.i108.i  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i109.i, i64 8 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cw
  br i1 %i.dc, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, label %.lr.ph.i.i.i.i.i107.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i:         ; preds = %.lr.ph.i.i.i.i.i107.i
  %.idx.i.i.i.i = shl nsw i64 %i.da, 1
  %i.dd = getelementptr inbounds i8, ptr %i.ct, i64 %.idx.i.i.i.i
  %.not7.i.i.i.i.i111.i = icmp eq i64 %i.da, 0
  br i1 %.not7.i.i.i.i.i111.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i112.i

.lr.ph.i.i4.preheader.i.i.i112.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i
  %i.de = phi ptr [ %i.cy, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i ], [ %i.dd, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i ] ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %8 = add i64 %i.df, -2
  %i.dg = sub i64 %8, %7                          ; 2 uses
  %i.dh = lshr i64 %i.dg, 1
  %i.di = add nuw i64 %i.dh, 1                    ; 2 uses
  %min.iters.check270 = icmp ult i64 %i.dg, 6
  br i1 %min.iters.check270, label %.lr.ph.i.i4.i.i.i113.i.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i112.i
  %n.vec273 = and i64 %i.di, -4                   ; 3 uses
  %i.dj = shl i64 %n.vec273, 1
  %i.dk = getelementptr i8, ptr %i.ct, i64 %i.dj
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph271
  %index275 = phi i64 [ 0, %vector.ph271 ], [ %index.next281, %vector.body274 ] ; 2 uses
  %vec.phi276 = phi <2 x i64> [ zeroinitializer, %vector.ph271 ], [ %i.dr, %vector.body274 ]
  %vec.phi277 = phi <2 x i64> [ zeroinitializer, %vector.ph271 ], [ %i.ds, %vector.body274 ]
  %i.dl = shl i64 %index275, 1
  %next.gep278 = getelementptr i8, ptr %i.ct, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep278, i64 4
  %wide.load279 = load <2 x i16>, ptr %next.gep278, align 2, !tbaa !273, !noalias !270
  %wide.load280 = load <2 x i16>, ptr %i.dm, align 2, !tbaa !273, !noalias !270
  %i.dn = icmp ne <2 x i16> %wide.load279, zeroinitializer
  %i.do = icmp ne <2 x i16> %wide.load280, zeroinitializer
  %i.dp = zext <2 x i1> %i.dn to <2 x i64>
  %i.dq = zext <2 x i1> %i.do to <2 x i64>
  %i.dr = add <2 x i64> %vec.phi276, %i.dp        ; 2 uses
  %i.ds = add <2 x i64> %vec.phi277, %i.dq        ; 2 uses
  %index.next281 = add nuw i64 %index275, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next281, %n.vec273
  br i1 %i.dt, label %middle.block282, label %vector.body274, !llvm.loop !275

middle.block282:                                  ; preds = %vector.body274
  %bin.rdx283 = add <2 x i64> %i.ds, %i.dr
  %i.du = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx283) ; 2 uses
  %cmp.n284 = icmp eq i64 %i.di, %n.vec273
  br i1 %cmp.n284, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i113.i.preheader

.lr.ph.i.i4.i.i.i113.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i112.i, %middle.block282
  %.09.i.i.i.i.i114.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i112.i ], [ %i.du, %middle.block282 ]
  %.058.i.i.i.i.i115.i.ph = phi ptr [ %i.ct, %.lr.ph.i.i4.preheader.i.i.i112.i ], [ %i.dk, %middle.block282 ]
  br label %.lr.ph.i.i4.i.i.i113.i

.lr.ph.i.i4.i.i.i113.i:                           ; preds = %.lr.ph.i.i4.i.i.i113.i.preheader, %.lr.ph.i.i4.i.i.i113.i
  %.09.i.i.i.i.i114.i = phi i64 [ %spec.select.i.i.i.i.i118.i, %.lr.ph.i.i4.i.i.i113.i ], [ %.09.i.i.i.i.i114.i.ph, %.lr.ph.i.i4.i.i.i113.i.preheader ]
  %.058.i.i.i.i.i115.i = phi ptr [ %i.dw, %.lr.ph.i.i4.i.i.i113.i ], [ %.058.i.i.i.i.i115.i.ph, %.lr.ph.i.i4.i.i.i113.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i116.i = load i16, ptr %.058.i.i.i.i.i115.i, align 2, !tbaa !273, !noalias !270
  %.not6.i.i.i.i.i117.i = icmp ne i16 %.05.val.i.i.i.i.i116.i, 0
  %i.dv = zext i1 %.not6.i.i.i.i.i117.i to i64
  %spec.select.i.i.i.i.i118.i = add nuw nsw i64 %.09.i.i.i.i.i114.i, %i.dv ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i115.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i119.i = icmp eq ptr %i.dw, %i.de
  br i1 %.not.i.i.i.i.i119.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i113.i, !llvm.loop !276

bb.m:                                             ; preds = %.noexc9
  %i.dx = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int16TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !270
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.n:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ea = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dy, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dz)
          to label %.noexc10 unwind label %bb.av

.noexc10:                                         ; preds = %bb.n
  br i1 %i.ea, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc10
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !84, !noalias !277 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !163, !range !53, !noalias !277, !noundef !54
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !277
  %i.ei = select i1 %i.ef, ptr %i.eh, ptr null, !prof !42 ; 6 uses
  %9 = ptrtoint ptr %i.ei to i64
  %i.ej = load ptr, ptr %i.dy, align 8, !tbaa !83, !noalias !277 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !83, !noalias !277 ; 2 uses
  %i.em = icmp eq ptr %i.ej, %i.el
  br i1 %i.em, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i, label %.lr.ph.i.i.i.i.i122.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i:  ; preds = %bb.o
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i128.i

.lr.ph.i.i.i.i.i122.i:                            ; preds = %bb.o, %.lr.ph.i.i.i.i.i122.i
  %.06.i.i.i.i.i123.i = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i122.i ], [ 1, %bb.o ]
  %.sroa.02.05.i.i.i.i.i124.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i122.i ], [ %i.ej, %bb.o ] ; 2 uses
  %i.eo = load i64, ptr %.sroa.02.05.i.i.i.i.i124.i, align 8, !tbaa !14, !noalias !277
  %i.ep = mul nsw i64 %i.eo, %.06.i.i.i.i.i123.i  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i124.i, i64 8 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.el
  br i1 %i.er, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, label %.lr.ph.i.i.i.i.i122.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i:         ; preds = %.lr.ph.i.i.i.i.i122.i
  %.idx.i.i.i126.i = shl nsw i64 %i.ep, 1
  %i.es = getelementptr inbounds i8, ptr %i.ei, i64 %.idx.i.i.i126.i
  %.not7.i.i.i.i.i127.i = icmp eq i64 %i.ep, 0
  br i1 %.not7.i.i.i.i.i127.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i128.i

.lr.ph.i.i4.preheader.i.i.i128.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i
  %i.et = phi ptr [ %i.en, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i ], [ %i.es, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i ] ; 2 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %10 = add i64 %i.eu, -2
  %i.ev = sub i64 %10, %9                         ; 2 uses
  %i.ew = lshr i64 %i.ev, 1
  %i.ex = add nuw i64 %i.ew, 1                    ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.ev, 6
  br i1 %min.iters.check252, label %.lr.ph.i.i4.i.i.i129.i.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i128.i
  %n.vec255 = and i64 %i.ex, -4                   ; 3 uses
  %i.ey = shl i64 %n.vec255, 1
  %i.ez = getelementptr i8, ptr %i.ei, i64 %i.ey
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph253
  %index257 = phi i64 [ 0, %vector.ph253 ], [ %index.next263, %vector.body256 ] ; 2 uses
  %vec.phi258 = phi <2 x i64> [ zeroinitializer, %vector.ph253 ], [ %i.fg, %vector.body256 ]
  %vec.phi259 = phi <2 x i64> [ zeroinitializer, %vector.ph253 ], [ %i.fh, %vector.body256 ]
  %i.fa = shl i64 %index257, 1
  %next.gep260 = getelementptr i8, ptr %i.ei, i64 %i.fa ; 2 uses
  %i.fb = getelementptr i8, ptr %next.gep260, i64 4
  %wide.load261 = load <2 x i16>, ptr %next.gep260, align 2, !tbaa !273, !noalias !277
  %wide.load262 = load <2 x i16>, ptr %i.fb, align 2, !tbaa !273, !noalias !277
  %i.fc = icmp ne <2 x i16> %wide.load261, zeroinitializer
  %i.fd = icmp ne <2 x i16> %wide.load262, zeroinitializer
  %i.fe = zext <2 x i1> %i.fc to <2 x i64>
  %i.ff = zext <2 x i1> %i.fd to <2 x i64>
  %i.fg = add <2 x i64> %vec.phi258, %i.fe        ; 2 uses
  %i.fh = add <2 x i64> %vec.phi259, %i.ff        ; 2 uses
  %index.next263 = add nuw i64 %index257, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next263, %n.vec255
  br i1 %i.fi, label %middle.block264, label %vector.body256, !llvm.loop !280

middle.block264:                                  ; preds = %vector.body256
  %bin.rdx265 = add <2 x i64> %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx265) ; 2 uses
  %cmp.n266 = icmp eq i64 %i.ex, %n.vec255
  br i1 %cmp.n266, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i129.i.preheader

.lr.ph.i.i4.i.i.i129.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i128.i, %middle.block264
  %.09.i.i.i.i.i130.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i128.i ], [ %i.fj, %middle.block264 ]
  %.058.i.i.i.i.i131.i.ph = phi ptr [ %i.ei, %.lr.ph.i.i4.preheader.i.i.i128.i ], [ %i.ez, %middle.block264 ]
  br label %.lr.ph.i.i4.i.i.i129.i

.lr.ph.i.i4.i.i.i129.i:                           ; preds = %.lr.ph.i.i4.i.i.i129.i.preheader, %.lr.ph.i.i4.i.i.i129.i
  %.09.i.i.i.i.i130.i = phi i64 [ %spec.select.i.i.i.i.i134.i, %.lr.ph.i.i4.i.i.i129.i ], [ %.09.i.i.i.i.i130.i.ph, %.lr.ph.i.i4.i.i.i129.i.preheader ]
  %.058.i.i.i.i.i131.i = phi ptr [ %i.fl, %.lr.ph.i.i4.i.i.i129.i ], [ %.058.i.i.i.i.i131.i.ph, %.lr.ph.i.i4.i.i.i129.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i132.i = load i16, ptr %.058.i.i.i.i.i131.i, align 2, !tbaa !273, !noalias !277
  %.not6.i.i.i.i.i133.i = icmp ne i16 %.05.val.i.i.i.i.i132.i, 0
  %i.fk = zext i1 %.not6.i.i.i.i.i133.i to i64
  %spec.select.i.i.i.i.i134.i = add nuw nsw i64 %.09.i.i.i.i.i130.i, %i.fk ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i131.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i135.i = icmp eq ptr %i.fl, %i.et
  br i1 %.not.i.i.i.i.i135.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i129.i, !llvm.loop !281

bb.p:                                             ; preds = %.noexc10
  %i.fm = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt16TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !277
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.q:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fp = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fo)
          to label %.noexc11 unwind label %bb.av

.noexc11:                                         ; preds = %bb.q
  br i1 %i.fp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc11
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !84, !noalias !282 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 9
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !163, !range !53, !noalias !282, !noundef !54
  %i.fu = trunc nuw i8 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !282
  %i.fx = select i1 %i.fu, ptr %i.fw, ptr null, !prof !42 ; 6 uses
  %11 = ptrtoint ptr %i.fx to i64
  %i.fy = load ptr, ptr %i.fn, align 8, !tbaa !83, !noalias !282 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !83, !noalias !282 ; 2 uses
  %i.gb = icmp eq ptr %i.fy, %i.ga
  br i1 %i.gb, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i, label %.lr.ph.i.i.i.i.i138.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i:  ; preds = %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i144.i

.lr.ph.i.i.i.i.i138.i:                            ; preds = %bb.r, %.lr.ph.i.i.i.i.i138.i
  %.06.i.i.i.i.i139.i = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i138.i ], [ 1, %bb.r ]
  %.sroa.02.05.i.i.i.i.i140.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i138.i ], [ %i.fy, %bb.r ] ; 2 uses
  %i.gd = load i64, ptr %.sroa.02.05.i.i.i.i.i140.i, align 8, !tbaa !14, !noalias !282
  %i.ge = mul nsw i64 %i.gd, %.06.i.i.i.i.i139.i  ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i140.i, i64 8 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ga
  br i1 %i.gg, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, label %.lr.ph.i.i.i.i.i138.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i:         ; preds = %.lr.ph.i.i.i.i.i138.i
  %.idx.i.i.i142.i = shl nsw i64 %i.ge, 2
  %i.gh = getelementptr inbounds i8, ptr %i.fx, i64 %.idx.i.i.i142.i
  %.not7.i.i.i.i.i143.i = icmp eq i64 %i.ge, 0
  br i1 %.not7.i.i.i.i.i143.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i144.i

.lr.ph.i.i4.preheader.i.i.i144.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i
  %i.gi = phi ptr [ %i.gc, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i ], [ %i.gh, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i ] ; 2 uses
  %i.gj = ptrtoint ptr %i.gi to i64
  %12 = add i64 %i.gj, -4
  %i.gk = sub i64 %12, %11                        ; 2 uses
  %i.gl = lshr i64 %i.gk, 2
  %i.gm = add nuw nsw i64 %i.gl, 1                ; 2 uses
  %min.iters.check234 = icmp ult i64 %i.gk, 12
  br i1 %min.iters.check234, label %.lr.ph.i.i4.i.i.i145.i.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i144.i
  %n.vec237 = and i64 %i.gm, 9223372036854775804  ; 3 uses
  %i.gn = shl i64 %n.vec237, 2
  %i.go = getelementptr i8, ptr %i.fx, i64 %i.gn
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph235
  %index239 = phi i64 [ 0, %vector.ph235 ], [ %index.next245, %vector.body238 ] ; 2 uses
  %vec.phi240 = phi <2 x i64> [ zeroinitializer, %vector.ph235 ], [ %i.gv, %vector.body238 ]
  %vec.phi241 = phi <2 x i64> [ zeroinitializer, %vector.ph235 ], [ %i.gw, %vector.body238 ]
  %i.gp = shl i64 %index239, 2
  %next.gep242 = getelementptr i8, ptr %i.fx, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep242, i64 8
  %wide.load243 = load <2 x i32>, ptr %next.gep242, align 4, !tbaa !3, !noalias !282
  %wide.load244 = load <2 x i32>, ptr %i.gq, align 4, !tbaa !3, !noalias !282
  %i.gr = icmp ne <2 x i32> %wide.load243, zeroinitializer
  %i.gs = icmp ne <2 x i32> %wide.load244, zeroinitializer
  %i.gt = zext <2 x i1> %i.gr to <2 x i64>
  %i.gu = zext <2 x i1> %i.gs to <2 x i64>
  %i.gv = add <2 x i64> %vec.phi240, %i.gt        ; 2 uses
  %i.gw = add <2 x i64> %vec.phi241, %i.gu        ; 2 uses
  %index.next245 = add nuw i64 %index239, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next245, %n.vec237
  br i1 %i.gx, label %middle.block246, label %vector.body238, !llvm.loop !285

middle.block246:                                  ; preds = %vector.body238
  %bin.rdx247 = add <2 x i64> %i.gw, %i.gv
  %i.gy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx247) ; 2 uses
  %cmp.n248 = icmp eq i64 %i.gm, %n.vec237
  br i1 %cmp.n248, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i145.i.preheader

.lr.ph.i.i4.i.i.i145.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i144.i, %middle.block246
  %.09.i.i.i.i.i146.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i144.i ], [ %i.gy, %middle.block246 ]
  %.058.i.i.i.i.i147.i.ph = phi ptr [ %i.fx, %.lr.ph.i.i4.preheader.i.i.i144.i ], [ %i.go, %middle.block246 ]
  br label %.lr.ph.i.i4.i.i.i145.i

.lr.ph.i.i4.i.i.i145.i:                           ; preds = %.lr.ph.i.i4.i.i.i145.i.preheader, %.lr.ph.i.i4.i.i.i145.i
  %.09.i.i.i.i.i146.i = phi i64 [ %spec.select.i.i.i.i.i150.i, %.lr.ph.i.i4.i.i.i145.i ], [ %.09.i.i.i.i.i146.i.ph, %.lr.ph.i.i4.i.i.i145.i.preheader ]
  %.058.i.i.i.i.i147.i = phi ptr [ %i.ha, %.lr.ph.i.i4.i.i.i145.i ], [ %.058.i.i.i.i.i147.i.ph, %.lr.ph.i.i4.i.i.i145.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i148.i = load i32, ptr %.058.i.i.i.i.i147.i, align 4, !tbaa !3, !noalias !282
  %.not6.i.i.i.i.i149.i = icmp ne i32 %.05.val.i.i.i.i.i148.i, 0
  %i.gz = zext i1 %.not6.i.i.i.i.i149.i to i64
  %spec.select.i.i.i.i.i150.i = add nuw nsw i64 %.09.i.i.i.i.i146.i, %i.gz ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i147.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i151.i = icmp eq ptr %i.ha, %i.gi
  br i1 %.not.i.i.i.i.i151.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i145.i, !llvm.loop !286

bb.s:                                             ; preds = %.noexc11
  %i.hb = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int32TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !282
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.t:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.he = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hd)
          to label %.noexc12 unwind label %bb.av

.noexc12:                                         ; preds = %bb.t
  br i1 %i.he, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc12
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !84, !noalias !287 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 9
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !163, !range !53, !noalias !287, !noundef !54
  %i.hj = trunc nuw i8 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !287
  %i.hm = select i1 %i.hj, ptr %i.hl, ptr null, !prof !42 ; 6 uses
  %13 = ptrtoint ptr %i.hm to i64
  %i.hn = load ptr, ptr %i.hc, align 8, !tbaa !83, !noalias !287 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !83, !noalias !287 ; 2 uses
  %i.hq = icmp eq ptr %i.hn, %i.hp
  br i1 %i.hq, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i, label %.lr.ph.i.i.i.i.i154.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i:  ; preds = %bb.u
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i160.i

.lr.ph.i.i.i.i.i154.i:                            ; preds = %bb.u, %.lr.ph.i.i.i.i.i154.i
  %.06.i.i.i.i.i155.i = phi i64 [ %i.ht, %.lr.ph.i.i.i.i.i154.i ], [ 1, %bb.u ]
  %.sroa.02.05.i.i.i.i.i156.i = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i154.i ], [ %i.hn, %bb.u ] ; 2 uses
  %i.hs = load i64, ptr %.sroa.02.05.i.i.i.i.i156.i, align 8, !tbaa !14, !noalias !287
  %i.ht = mul nsw i64 %i.hs, %.06.i.i.i.i.i155.i  ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i156.i, i64 8 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.hp
  br i1 %i.hv, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, label %.lr.ph.i.i.i.i.i154.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i:         ; preds = %.lr.ph.i.i.i.i.i154.i
  %.idx.i.i.i158.i = shl nsw i64 %i.ht, 2
  %i.hw = getelementptr inbounds i8, ptr %i.hm, i64 %.idx.i.i.i158.i
  %.not7.i.i.i.i.i159.i = icmp eq i64 %i.ht, 0
  br i1 %.not7.i.i.i.i.i159.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i160.i

.lr.ph.i.i4.preheader.i.i.i160.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i
  %i.hx = phi ptr [ %i.hr, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i ], [ %i.hw, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i ] ; 2 uses
  %i.hy = ptrtoint ptr %i.hx to i64
  %14 = add i64 %i.hy, -4
  %i.hz = sub i64 %14, %13                        ; 2 uses
  %i.ia = lshr i64 %i.hz, 2
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check216 = icmp ult i64 %i.hz, 12
  br i1 %min.iters.check216, label %.lr.ph.i.i4.i.i.i161.i.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i160.i
  %n.vec219 = and i64 %i.ib, 9223372036854775804  ; 3 uses
  %i.ic = shl i64 %n.vec219, 2
  %i.id = getelementptr i8, ptr %i.hm, i64 %i.ic
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next227, %vector.body220 ] ; 2 uses
  %vec.phi222 = phi <2 x i64> [ zeroinitializer, %vector.ph217 ], [ %i.ik, %vector.body220 ]
  %vec.phi223 = phi <2 x i64> [ zeroinitializer, %vector.ph217 ], [ %i.il, %vector.body220 ]
  %i.ie = shl i64 %index221, 2
  %next.gep224 = getelementptr i8, ptr %i.hm, i64 %i.ie ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep224, i64 8
  %wide.load225 = load <2 x i32>, ptr %next.gep224, align 4, !tbaa !3, !noalias !287
  %wide.load226 = load <2 x i32>, ptr %i.if, align 4, !tbaa !3, !noalias !287
  %i.ig = icmp ne <2 x i32> %wide.load225, zeroinitializer
  %i.ih = icmp ne <2 x i32> %wide.load226, zeroinitializer
  %i.ii = zext <2 x i1> %i.ig to <2 x i64>
  %i.ij = zext <2 x i1> %i.ih to <2 x i64>
  %i.ik = add <2 x i64> %vec.phi222, %i.ii        ; 2 uses
  %i.il = add <2 x i64> %vec.phi223, %i.ij        ; 2 uses
  %index.next227 = add nuw i64 %index221, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next227, %n.vec219
  br i1 %i.im, label %middle.block228, label %vector.body220, !llvm.loop !290

middle.block228:                                  ; preds = %vector.body220
  %bin.rdx229 = add <2 x i64> %i.il, %i.ik
  %i.in = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx229) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.ib, %n.vec219
  br i1 %cmp.n230, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i161.i.preheader

.lr.ph.i.i4.i.i.i161.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i160.i, %middle.block228
  %.09.i.i.i.i.i162.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i160.i ], [ %i.in, %middle.block228 ]
  %.058.i.i.i.i.i163.i.ph = phi ptr [ %i.hm, %.lr.ph.i.i4.preheader.i.i.i160.i ], [ %i.id, %middle.block228 ]
  br label %.lr.ph.i.i4.i.i.i161.i

.lr.ph.i.i4.i.i.i161.i:                           ; preds = %.lr.ph.i.i4.i.i.i161.i.preheader, %.lr.ph.i.i4.i.i.i161.i
  %.09.i.i.i.i.i162.i = phi i64 [ %spec.select.i.i.i.i.i166.i, %.lr.ph.i.i4.i.i.i161.i ], [ %.09.i.i.i.i.i162.i.ph, %.lr.ph.i.i4.i.i.i161.i.preheader ]
  %.058.i.i.i.i.i163.i = phi ptr [ %i.ip, %.lr.ph.i.i4.i.i.i161.i ], [ %.058.i.i.i.i.i163.i.ph, %.lr.ph.i.i4.i.i.i161.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i164.i = load i32, ptr %.058.i.i.i.i.i163.i, align 4, !tbaa !3, !noalias !287
  %.not6.i.i.i.i.i165.i = icmp ne i32 %.05.val.i.i.i.i.i164.i, 0
  %i.io = zext i1 %.not6.i.i.i.i.i165.i to i64
  %spec.select.i.i.i.i.i166.i = add nuw nsw i64 %.09.i.i.i.i.i162.i, %i.io ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i163.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i167.i = icmp eq ptr %i.ip, %i.hx
  br i1 %.not.i.i.i.i.i167.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i161.i, !llvm.loop !291

bb.v:                                             ; preds = %.noexc12
  %i.iq = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt32TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !287
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.w:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.it = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ir, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.is)
          to label %.noexc13 unwind label %bb.av

.noexc13:                                         ; preds = %bb.w
  br i1 %i.it, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc13
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !84, !noalias !292 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 9
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !163, !range !53, !noalias !292, !noundef !54
  %i.iy = trunc nuw i8 %i.ix to i1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !292
  %i.jb = select i1 %i.iy, ptr %i.ja, ptr null, !prof !42 ; 6 uses
  %15 = ptrtoint ptr %i.jb to i64
  %i.jc = load ptr, ptr %i.ir, align 8, !tbaa !83, !noalias !292 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !83, !noalias !292 ; 2 uses
  %i.jf = icmp eq ptr %i.jc, %i.je
  br i1 %i.jf, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i, label %.lr.ph.i.i.i.i.i170.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i:  ; preds = %bb.x
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i176.i

.lr.ph.i.i.i.i.i170.i:                            ; preds = %bb.x, %.lr.ph.i.i.i.i.i170.i
  %.06.i.i.i.i.i171.i = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i170.i ], [ 1, %bb.x ]
  %.sroa.02.05.i.i.i.i.i172.i = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i170.i ], [ %i.jc, %bb.x ] ; 2 uses
  %i.jh = load i64, ptr %.sroa.02.05.i.i.i.i.i172.i, align 8, !tbaa !14, !noalias !292
  %i.ji = mul nsw i64 %i.jh, %.06.i.i.i.i.i171.i  ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i172.i, i64 8 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.je
  br i1 %i.jk, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, label %.lr.ph.i.i.i.i.i170.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i:         ; preds = %.lr.ph.i.i.i.i.i170.i
  %.idx.i.i.i174.i = shl nsw i64 %i.ji, 3
  %i.jl = getelementptr inbounds i8, ptr %i.jb, i64 %.idx.i.i.i174.i
  %.not7.i.i.i.i.i175.i = icmp eq i64 %i.ji, 0
  br i1 %.not7.i.i.i.i.i175.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i176.i

.lr.ph.i.i4.preheader.i.i.i176.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i
  %i.jm = phi ptr [ %i.jg, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i ], [ %i.jl, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i ] ; 2 uses
  %i.jn = ptrtoint ptr %i.jm to i64
  %16 = add i64 %i.jn, -8
  %i.jo = sub i64 %16, %15                        ; 2 uses
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.jo, 24
  br i1 %min.iters.check198, label %.lr.ph.i.i4.i.i.i177.i.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i176.i
  %n.vec201 = and i64 %i.jq, 4611686018427387900  ; 3 uses
  %i.jr = shl i64 %n.vec201, 3
  %i.js = getelementptr i8, ptr %i.jb, i64 %i.jr
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
  %index203 = phi i64 [ 0, %vector.ph199 ], [ %index.next209, %vector.body202 ] ; 2 uses
  %vec.phi204 = phi <2 x i64> [ zeroinitializer, %vector.ph199 ], [ %i.jz, %vector.body202 ]
  %vec.phi205 = phi <2 x i64> [ zeroinitializer, %vector.ph199 ], [ %i.ka, %vector.body202 ]
  %i.jt = shl i64 %index203, 3
  %next.gep206 = getelementptr i8, ptr %i.jb, i64 %i.jt ; 2 uses
  %i.ju = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8, !tbaa !14, !noalias !292
  %wide.load208 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !14, !noalias !292
  %i.jv = icmp ne <2 x i64> %wide.load207, zeroinitializer
  %i.jw = icmp ne <2 x i64> %wide.load208, zeroinitializer
  %i.jx = zext <2 x i1> %i.jv to <2 x i64>
  %i.jy = zext <2 x i1> %i.jw to <2 x i64>
  %i.jz = add <2 x i64> %vec.phi204, %i.jx        ; 2 uses
  %i.ka = add <2 x i64> %vec.phi205, %i.jy        ; 2 uses
  %index.next209 = add nuw i64 %index203, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next209, %n.vec201
  br i1 %i.kb, label %middle.block210, label %vector.body202, !llvm.loop !295

middle.block210:                                  ; preds = %vector.body202
  %bin.rdx211 = add <2 x i64> %i.ka, %i.jz
  %i.kc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx211) ; 2 uses
  %cmp.n212 = icmp eq i64 %i.jq, %n.vec201
  br i1 %cmp.n212, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i177.i.preheader

.lr.ph.i.i4.i.i.i177.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i176.i, %middle.block210
  %.09.i.i.i.i.i178.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i176.i ], [ %i.kc, %middle.block210 ]
  %.058.i.i.i.i.i179.i.ph = phi ptr [ %i.jb, %.lr.ph.i.i4.preheader.i.i.i176.i ], [ %i.js, %middle.block210 ]
  br label %.lr.ph.i.i4.i.i.i177.i

.lr.ph.i.i4.i.i.i177.i:                           ; preds = %.lr.ph.i.i4.i.i.i177.i.preheader, %.lr.ph.i.i4.i.i.i177.i
  %.09.i.i.i.i.i178.i = phi i64 [ %spec.select.i.i.i.i.i182.i, %.lr.ph.i.i4.i.i.i177.i ], [ %.09.i.i.i.i.i178.i.ph, %.lr.ph.i.i4.i.i.i177.i.preheader ]
  %.058.i.i.i.i.i179.i = phi ptr [ %i.ke, %.lr.ph.i.i4.i.i.i177.i ], [ %.058.i.i.i.i.i179.i.ph, %.lr.ph.i.i4.i.i.i177.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i180.i = load i64, ptr %.058.i.i.i.i.i179.i, align 8, !tbaa !14, !noalias !292
  %.not6.i.i.i.i.i181.i = icmp ne i64 %.05.val.i.i.i.i.i180.i, 0
  %i.kd = zext i1 %.not6.i.i.i.i.i181.i to i64
  %spec.select.i.i.i.i.i182.i = add nuw nsw i64 %.09.i.i.i.i.i178.i, %i.kd ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i179.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i183.i = icmp eq ptr %i.ke, %i.jm
  br i1 %.not.i.i.i.i.i183.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i177.i, !llvm.loop !296

bb.y:                                             ; preds = %.noexc13
  %i.kf = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int64TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !292
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.z:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ki = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.kg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.kh)
          to label %.noexc14 unwind label %bb.av

.noexc14:                                         ; preds = %bb.z
  br i1 %i.ki, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc14
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !84, !noalias !297 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 9
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !163, !range !53, !noalias !297, !noundef !54
  %i.kn = trunc nuw i8 %i.km to i1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !297
  %i.kq = select i1 %i.kn, ptr %i.kp, ptr null, !prof !42 ; 6 uses
  %17 = ptrtoint ptr %i.kq to i64
  %i.kr = load ptr, ptr %i.kg, align 8, !tbaa !83, !noalias !297 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !83, !noalias !297 ; 2 uses
  %i.ku = icmp eq ptr %i.kr, %i.kt
  br i1 %i.ku, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i, label %.lr.ph.i.i.i.i.i186.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i:  ; preds = %bb.aa
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i192.i

.lr.ph.i.i.i.i.i186.i:                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i186.i
  %.06.i.i.i.i.i187.i = phi i64 [ %i.kx, %.lr.ph.i.i.i.i.i186.i ], [ 1, %bb.aa ]
  %.sroa.02.05.i.i.i.i.i188.i = phi ptr [ %i.ky, %.lr.ph.i.i.i.i.i186.i ], [ %i.kr, %bb.aa ] ; 2 uses
  %i.kw = load i64, ptr %.sroa.02.05.i.i.i.i.i188.i, align 8, !tbaa !14, !noalias !297
  %i.kx = mul nsw i64 %i.kw, %.06.i.i.i.i.i187.i  ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i188.i, i64 8 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.kt
  br i1 %i.kz, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, label %.lr.ph.i.i.i.i.i186.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i:         ; preds = %.lr.ph.i.i.i.i.i186.i
  %.idx.i.i.i190.i = shl nsw i64 %i.kx, 3
  %i.la = getelementptr inbounds i8, ptr %i.kq, i64 %.idx.i.i.i190.i
  %.not7.i.i.i.i.i191.i = icmp eq i64 %i.kx, 0
  br i1 %.not7.i.i.i.i.i191.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i192.i

.lr.ph.i.i4.preheader.i.i.i192.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i
  %i.lb = phi ptr [ %i.kv, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i ], [ %i.la, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i ] ; 2 uses
  %i.lc = ptrtoint ptr %i.lb to i64
  %18 = add i64 %i.lc, -8
  %i.ld = sub i64 %18, %17                        ; 2 uses
  %i.le = lshr i64 %i.ld, 3
  %i.lf = add nuw nsw i64 %i.le, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.ld, 24
  br i1 %min.iters.check180, label %.lr.ph.i.i4.i.i.i193.i.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i192.i
  %n.vec183 = and i64 %i.lf, 4611686018427387900  ; 3 uses
  %i.lg = shl i64 %n.vec183, 3
  %i.lh = getelementptr i8, ptr %i.kq, i64 %i.lg
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next191, %vector.body184 ] ; 2 uses
  %vec.phi186 = phi <2 x i64> [ zeroinitializer, %vector.ph181 ], [ %i.lo, %vector.body184 ]
  %vec.phi187 = phi <2 x i64> [ zeroinitializer, %vector.ph181 ], [ %i.lp, %vector.body184 ]
  %i.li = shl i64 %index185, 3
  %next.gep188 = getelementptr i8, ptr %i.kq, i64 %i.li ; 2 uses
  %i.lj = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <2 x i64>, ptr %next.gep188, align 8, !tbaa !14, !noalias !297
  %wide.load190 = load <2 x i64>, ptr %i.lj, align 8, !tbaa !14, !noalias !297
  %i.lk = icmp ne <2 x i64> %wide.load189, zeroinitializer
  %i.ll = icmp ne <2 x i64> %wide.load190, zeroinitializer
  %i.lm = zext <2 x i1> %i.lk to <2 x i64>
  %i.ln = zext <2 x i1> %i.ll to <2 x i64>
  %i.lo = add <2 x i64> %vec.phi186, %i.lm        ; 2 uses
  %i.lp = add <2 x i64> %vec.phi187, %i.ln        ; 2 uses
  %index.next191 = add nuw i64 %index185, 4       ; 2 uses
  %i.lq = icmp eq i64 %index.next191, %n.vec183
  br i1 %i.lq, label %middle.block192, label %vector.body184, !llvm.loop !300

middle.block192:                                  ; preds = %vector.body184
  %bin.rdx193 = add <2 x i64> %i.lp, %i.lo
  %i.lr = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx193) ; 2 uses
  %cmp.n194 = icmp eq i64 %i.lf, %n.vec183
  br i1 %cmp.n194, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i193.i.preheader

.lr.ph.i.i4.i.i.i193.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i192.i, %middle.block192
  %.09.i.i.i.i.i194.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i192.i ], [ %i.lr, %middle.block192 ]
  %.058.i.i.i.i.i195.i.ph = phi ptr [ %i.kq, %.lr.ph.i.i4.preheader.i.i.i192.i ], [ %i.lh, %middle.block192 ]
  br label %.lr.ph.i.i4.i.i.i193.i

.lr.ph.i.i4.i.i.i193.i:                           ; preds = %.lr.ph.i.i4.i.i.i193.i.preheader, %.lr.ph.i.i4.i.i.i193.i
  %.09.i.i.i.i.i194.i = phi i64 [ %spec.select.i.i.i.i.i198.i, %.lr.ph.i.i4.i.i.i193.i ], [ %.09.i.i.i.i.i194.i.ph, %.lr.ph.i.i4.i.i.i193.i.preheader ]
  %.058.i.i.i.i.i195.i = phi ptr [ %i.lt, %.lr.ph.i.i4.i.i.i193.i ], [ %.058.i.i.i.i.i195.i.ph, %.lr.ph.i.i4.i.i.i193.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i196.i = load i64, ptr %.058.i.i.i.i.i195.i, align 8, !tbaa !14, !noalias !297
  %.not6.i.i.i.i.i197.i = icmp ne i64 %.05.val.i.i.i.i.i196.i, 0
  %i.ls = zext i1 %.not6.i.i.i.i.i197.i to i64
  %spec.select.i.i.i.i.i198.i = add nuw nsw i64 %.09.i.i.i.i.i194.i, %i.ls ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i195.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i199.i = icmp eq ptr %i.lt, %i.lb
  br i1 %.not.i.i.i.i.i199.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i193.i, !llvm.loop !301

bb.ab:                                            ; preds = %.noexc14
  %i.lu = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt64TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !297
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.ac:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lx = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lw)
          to label %.noexc15 unwind label %bb.av

.noexc15:                                         ; preds = %bb.ac
  br i1 %i.lx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc15
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !84, !noalias !302 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 9
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !163, !range !53, !noalias !302, !noundef !54
  %i.mc = trunc nuw i8 %i.mb to i1
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !noalias !302
  %i.mf = select i1 %i.mc, ptr %i.me, ptr null, !prof !42 ; 6 uses
  %19 = ptrtoint ptr %i.mf to i64
  %i.mg = load ptr, ptr %i.lv, align 8, !tbaa !83, !noalias !302 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !83, !noalias !302 ; 2 uses
  %i.mj = icmp eq ptr %i.mg, %i.mi
  br i1 %i.mj, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i, label %.lr.ph.i.i.i.i.i202.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i:  ; preds = %bb.ad
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i208.i

.lr.ph.i.i.i.i.i202.i:                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i202.i
  %.06.i.i.i.i.i203.i = phi i64 [ %i.mm, %.lr.ph.i.i.i.i.i202.i ], [ 1, %bb.ad ]
  %.sroa.02.05.i.i.i.i.i204.i = phi ptr [ %i.mn, %.lr.ph.i.i.i.i.i202.i ], [ %i.mg, %bb.ad ] ; 2 uses
  %i.ml = load i64, ptr %.sroa.02.05.i.i.i.i.i204.i, align 8, !tbaa !14, !noalias !302
  %i.mm = mul nsw i64 %i.ml, %.06.i.i.i.i.i203.i  ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i204.i, i64 8 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.mi
  br i1 %i.mo, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, label %.lr.ph.i.i.i.i.i202.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i:         ; preds = %.lr.ph.i.i.i.i.i202.i
  %.idx.i.i.i206.i = shl nsw i64 %i.mm, 1
  %i.mp = getelementptr inbounds i8, ptr %i.mf, i64 %.idx.i.i.i206.i
  %.not7.i.i.i.i.i207.i = icmp eq i64 %i.mm, 0
  br i1 %.not7.i.i.i.i.i207.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i208.i

.lr.ph.i.i4.preheader.i.i.i208.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i
  %i.mq = phi ptr [ %i.mk, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i ], [ %i.mp, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i ] ; 2 uses
  %i.mr = ptrtoint ptr %i.mq to i64
  %20 = add i64 %i.mr, -2
  %i.ms = sub i64 %20, %19                        ; 2 uses
  %i.mt = lshr i64 %i.ms, 1
  %i.mu = add nuw i64 %i.mt, 1                    ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.ms, 6
  br i1 %min.iters.check162, label %.lr.ph.i.i4.i.i.i209.i.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i208.i
  %n.vec165 = and i64 %i.mu, -4                   ; 3 uses
  %i.mv = shl i64 %n.vec165, 1
  %i.mw = getelementptr i8, ptr %i.mf, i64 %i.mv
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next173, %vector.body166 ] ; 2 uses
  %vec.phi168 = phi <2 x i64> [ zeroinitializer, %vector.ph163 ], [ %i.nd, %vector.body166 ]
  %vec.phi169 = phi <2 x i64> [ zeroinitializer, %vector.ph163 ], [ %i.ne, %vector.body166 ]
  %i.mx = shl i64 %index167, 1
  %next.gep170 = getelementptr i8, ptr %i.mf, i64 %i.mx ; 2 uses
  %i.my = getelementptr i8, ptr %next.gep170, i64 4
  %wide.load171 = load <2 x i16>, ptr %next.gep170, align 2, !tbaa !273, !noalias !302
  %wide.load172 = load <2 x i16>, ptr %i.my, align 2, !tbaa !273, !noalias !302
  %i.mz = icmp ne <2 x i16> %wide.load171, zeroinitializer
  %i.na = icmp ne <2 x i16> %wide.load172, zeroinitializer
  %i.nb = zext <2 x i1> %i.mz to <2 x i64>
  %i.nc = zext <2 x i1> %i.na to <2 x i64>
  %i.nd = add <2 x i64> %vec.phi168, %i.nb        ; 2 uses
  %i.ne = add <2 x i64> %vec.phi169, %i.nc        ; 2 uses
  %index.next173 = add nuw i64 %index167, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next173, %n.vec165
  br i1 %i.nf, label %middle.block174, label %vector.body166, !llvm.loop !305

middle.block174:                                  ; preds = %vector.body166
  %bin.rdx175 = add <2 x i64> %i.ne, %i.nd
  %i.ng = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx175) ; 2 uses
  %cmp.n176 = icmp eq i64 %i.mu, %n.vec165
  br i1 %cmp.n176, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i209.i.preheader

.lr.ph.i.i4.i.i.i209.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i208.i, %middle.block174
  %.09.i.i.i.i.i210.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i208.i ], [ %i.ng, %middle.block174 ]
  %.058.i.i.i.i.i211.i.ph = phi ptr [ %i.mf, %.lr.ph.i.i4.preheader.i.i.i208.i ], [ %i.mw, %middle.block174 ]
  br label %.lr.ph.i.i4.i.i.i209.i

.lr.ph.i.i4.i.i.i209.i:                           ; preds = %.lr.ph.i.i4.i.i.i209.i.preheader, %.lr.ph.i.i4.i.i.i209.i
  %.09.i.i.i.i.i210.i = phi i64 [ %spec.select.i.i.i.i.i214.i, %.lr.ph.i.i4.i.i.i209.i ], [ %.09.i.i.i.i.i210.i.ph, %.lr.ph.i.i4.i.i.i209.i.preheader ]
  %.058.i.i.i.i.i211.i = phi ptr [ %i.ni, %.lr.ph.i.i4.i.i.i209.i ], [ %.058.i.i.i.i.i211.i.ph, %.lr.ph.i.i4.i.i.i209.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i212.i = load i16, ptr %.058.i.i.i.i.i211.i, align 2, !tbaa !273, !noalias !302
  %.not6.i.i.i.i.i213.i = icmp ne i16 %.05.val.i.i.i.i.i212.i, 0
  %i.nh = zext i1 %.not6.i.i.i.i.i213.i to i64
  %spec.select.i.i.i.i.i214.i = add nuw nsw i64 %.09.i.i.i.i.i210.i, %i.nh ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i211.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i215.i = icmp eq ptr %i.ni, %i.mq
  br i1 %.not.i.i.i.i.i215.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i209.i, !llvm.loop !306

bb.ae:                                            ; preds = %.noexc15
  %i.nj = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_13HalfFloatTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !302
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.af:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nm = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.nk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.nl)
          to label %.noexc16 unwind label %bb.av

.noexc16:                                         ; preds = %bb.af
  br i1 %i.nm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc16
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !84, !noalias !307 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 9
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !163, !range !53, !noalias !307, !noundef !54
  %i.nr = trunc nuw i8 %i.nq to i1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !noalias !307
  %i.nu = select i1 %i.nr, ptr %i.nt, ptr null, !prof !42 ; 6 uses
  %21 = ptrtoint ptr %i.nu to i64
  %i.nv = load ptr, ptr %i.nk, align 8, !tbaa !83, !noalias !307 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !83, !noalias !307 ; 2 uses
  %i.ny = icmp eq ptr %i.nv, %i.nx
  br i1 %i.ny, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i, label %.lr.ph.i.i.i.i.i218.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i:  ; preds = %bb.ag
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i224.i

.lr.ph.i.i.i.i.i218.i:                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.i218.i
  %.06.i.i.i.i.i219.i = phi i64 [ %i.ob, %.lr.ph.i.i.i.i.i218.i ], [ 1, %bb.ag ]
  %.sroa.02.05.i.i.i.i.i220.i = phi ptr [ %i.oc, %.lr.ph.i.i.i.i.i218.i ], [ %i.nv, %bb.ag ] ; 2 uses
  %i.oa = load i64, ptr %.sroa.02.05.i.i.i.i.i220.i, align 8, !tbaa !14, !noalias !307
  %i.ob = mul nsw i64 %i.oa, %.06.i.i.i.i.i219.i  ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i220.i, i64 8 ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.nx
  br i1 %i.od, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, label %.lr.ph.i.i.i.i.i218.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i:         ; preds = %.lr.ph.i.i.i.i.i218.i
  %.idx.i.i.i222.i = shl nsw i64 %i.ob, 2
  %i.oe = getelementptr inbounds i8, ptr %i.nu, i64 %.idx.i.i.i222.i
  %.not6.i.i.i.i.i223.i = icmp eq i64 %i.ob, 0
  br i1 %.not6.i.i.i.i.i223.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i224.i

.lr.ph.i.i4.preheader.i.i.i224.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i
  %i.of = phi ptr [ %i.nz, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i ], [ %i.oe, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i ] ; 2 uses
  %i.og = ptrtoint ptr %i.of to i64
  %22 = add i64 %i.og, -4
  %i.oh = sub i64 %22, %21                        ; 2 uses
  %i.oi = lshr i64 %i.oh, 2
  %i.oj = add nuw nsw i64 %i.oi, 1                ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.oh, 12
  br i1 %min.iters.check144, label %.lr.ph.i.i4.i.i.i225.i.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i224.i
  %n.vec147 = and i64 %i.oj, 9223372036854775804  ; 3 uses
  %i.ok = shl i64 %n.vec147, 2
  %i.ol = getelementptr i8, ptr %i.nu, i64 %i.ok
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next155, %vector.body148 ] ; 2 uses
  %vec.phi150 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.os, %vector.body148 ]
  %vec.phi151 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.ot, %vector.body148 ]
  %i.om = shl i64 %index149, 2
  %next.gep152 = getelementptr i8, ptr %i.nu, i64 %i.om ; 2 uses
  %i.on = getelementptr i8, ptr %next.gep152, i64 8
  %wide.load153 = load <2 x float>, ptr %next.gep152, align 4, !tbaa !310, !noalias !307
  %wide.load154 = load <2 x float>, ptr %i.on, align 4, !tbaa !310, !noalias !307
  %i.oo = fcmp une <2 x float> %wide.load153, zeroinitializer
  %i.op = fcmp une <2 x float> %wide.load154, zeroinitializer
  %i.oq = zext <2 x i1> %i.oo to <2 x i64>
  %i.or = zext <2 x i1> %i.op to <2 x i64>
  %i.os = add <2 x i64> %vec.phi150, %i.oq        ; 2 uses
  %i.ot = add <2 x i64> %vec.phi151, %i.or        ; 2 uses
  %index.next155 = add nuw i64 %index149, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next155, %n.vec147
  br i1 %i.ou, label %middle.block156, label %vector.body148, !llvm.loop !312

middle.block156:                                  ; preds = %vector.body148
  %bin.rdx157 = add <2 x i64> %i.ot, %i.os
  %i.ov = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx157) ; 2 uses
  %cmp.n158 = icmp eq i64 %i.oj, %n.vec147
  br i1 %cmp.n158, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i225.i.preheader

.lr.ph.i.i4.i.i.i225.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i224.i, %middle.block156
  %.08.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i224.i ], [ %i.ov, %middle.block156 ]
  %.057.i.i.i.i.i.i.ph = phi ptr [ %i.nu, %.lr.ph.i.i4.preheader.i.i.i224.i ], [ %i.ol, %middle.block156 ]
  br label %.lr.ph.i.i4.i.i.i225.i

.lr.ph.i.i4.i.i.i225.i:                           ; preds = %.lr.ph.i.i4.i.i.i225.i.preheader, %.lr.ph.i.i4.i.i.i225.i
  %.08.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i227.i, %.lr.ph.i.i4.i.i.i225.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i225.i.preheader ]
  %.057.i.i.i.i.i.i = phi ptr [ %i.oy, %.lr.ph.i.i4.i.i.i225.i ], [ %.057.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i225.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i226.i = load float, ptr %.057.i.i.i.i.i.i, align 4, !tbaa !310, !noalias !307
  %i.ow = fcmp une float %.05.val.i.i.i.i.i226.i, 0.000000e+00
  %i.ox = zext i1 %i.ow to i64
  %spec.select.i.i.i.i.i227.i = add nuw nsw i64 %.08.i.i.i.i.i.i, %i.ox ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i228.i = icmp eq ptr %i.oy, %i.of
  br i1 %.not.i.i.i.i.i228.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i225.i, !llvm.loop !313

bb.ah:                                            ; preds = %.noexc16
  %i.oz = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9FloatTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !307
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.ai:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pc = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.pa, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.pb)
          to label %.noexc17 unwind label %bb.av

.noexc17:                                         ; preds = %bb.ai
  br i1 %i.pc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc17
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !84, !noalias !314 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 9
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !163, !range !53, !noalias !314, !noundef !54
  %i.ph = trunc nuw i8 %i.pg to i1
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !noalias !314
  %i.pk = select i1 %i.ph, ptr %i.pj, ptr null, !prof !42 ; 6 uses
  %23 = ptrtoint ptr %i.pk to i64
  %i.pl = load ptr, ptr %i.pa, align 8, !tbaa !83, !noalias !314 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !83, !noalias !314 ; 2 uses
  %i.po = icmp eq ptr %i.pl, %i.pn
  br i1 %i.po, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i, label %.lr.ph.i.i.i.i.i231.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i:  ; preds = %bb.aj
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i237.i

.lr.ph.i.i.i.i.i231.i:                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.i231.i
  %.06.i.i.i.i.i232.i = phi i64 [ %i.pr, %.lr.ph.i.i.i.i.i231.i ], [ 1, %bb.aj ]
  %.sroa.02.05.i.i.i.i.i233.i = phi ptr [ %i.ps, %.lr.ph.i.i.i.i.i231.i ], [ %i.pl, %bb.aj ] ; 2 uses
  %i.pq = load i64, ptr %.sroa.02.05.i.i.i.i.i233.i, align 8, !tbaa !14, !noalias !314
  %i.pr = mul nsw i64 %i.pq, %.06.i.i.i.i.i232.i  ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i233.i, i64 8 ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.pn
  br i1 %i.pt, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, label %.lr.ph.i.i.i.i.i231.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i:         ; preds = %.lr.ph.i.i.i.i.i231.i
  %.idx.i.i.i235.i = shl nsw i64 %i.pr, 3
  %i.pu = getelementptr inbounds i8, ptr %i.pk, i64 %.idx.i.i.i235.i
  %.not6.i.i.i.i.i236.i = icmp eq i64 %i.pr, 0
  br i1 %.not6.i.i.i.i.i236.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i237.i

.lr.ph.i.i4.preheader.i.i.i237.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i
  %i.pv = phi ptr [ %i.pp, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i ], [ %i.pu, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i ] ; 2 uses
  %i.pw = ptrtoint ptr %i.pv to i64
  %24 = add i64 %i.pw, -8
  %i.px = sub i64 %24, %23                        ; 2 uses
  %i.py = lshr i64 %i.px, 3
  %i.pz = add nuw nsw i64 %i.py, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.px, 24
  br i1 %min.iters.check, label %.lr.ph.i.i4.i.i.i238.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i4.preheader.i.i.i237.i
  %n.vec = and i64 %i.pz, 4611686018427387900     ; 3 uses
  %i.qa = shl i64 %n.vec, 3
  %i.qb = getelementptr i8, ptr %i.pk, i64 %i.qa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qi, %vector.body ]
  %vec.phi141 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qj, %vector.body ]
  %i.qc = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.pk, i64 %i.qc ; 2 uses
  %i.qd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !317, !noalias !314
  %wide.load142 = load <2 x double>, ptr %i.qd, align 8, !tbaa !317, !noalias !314
  %i.qe = fcmp une <2 x double> %wide.load, zeroinitializer
  %i.qf = fcmp une <2 x double> %wide.load142, zeroinitializer
  %i.qg = zext <2 x i1> %i.qe to <2 x i64>
  %i.qh = zext <2 x i1> %i.qf to <2 x i64>
  %i.qi = add <2 x i64> %vec.phi, %i.qg           ; 2 uses
  %i.qj = add <2 x i64> %vec.phi141, %i.qh        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qk = icmp eq i64 %index.next, %n.vec
  br i1 %i.qk, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.qj, %i.qi
  %i.ql = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.pz, %n.vec
  br i1 %cmp.n, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i238.i.preheader

.lr.ph.i.i4.i.i.i238.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i237.i, %middle.block
  %.08.i.i.i.i.i239.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i237.i ], [ %i.ql, %middle.block ]
  %.057.i.i.i.i.i240.i.ph = phi ptr [ %i.pk, %.lr.ph.i.i4.preheader.i.i.i237.i ], [ %i.qb, %middle.block ]
  br label %.lr.ph.i.i4.i.i.i238.i

.lr.ph.i.i4.i.i.i238.i:                           ; preds = %.lr.ph.i.i4.i.i.i238.i.preheader, %.lr.ph.i.i4.i.i.i238.i
  %.08.i.i.i.i.i239.i = phi i64 [ %spec.select.i.i.i.i.i242.i, %.lr.ph.i.i4.i.i.i238.i ], [ %.08.i.i.i.i.i239.i.ph, %.lr.ph.i.i4.i.i.i238.i.preheader ]
  %.057.i.i.i.i.i240.i = phi ptr [ %i.qo, %.lr.ph.i.i4.i.i.i238.i ], [ %.057.i.i.i.i.i240.i.ph, %.lr.ph.i.i4.i.i.i238.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i241.i = load double, ptr %.057.i.i.i.i.i240.i, align 8, !tbaa !317, !noalias !314
  %i.qm = fcmp une double %.05.val.i.i.i.i.i241.i, 0.000000e+00
  %i.qn = zext i1 %i.qm to i64
  %spec.select.i.i.i.i.i242.i = add nuw nsw i64 %.08.i.i.i.i.i239.i, %i.qn ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i240.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i243.i = icmp eq ptr %i.qo, %i.pv
  br i1 %.not.i.i.i.i.i243.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i238.i, !llvm.loop !320

bb.ak:                                            ; preds = %.noexc17
  %i.qp = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10DoubleTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !314
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

.invoke:                                          ; preds = %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_114NonZeroCounter5VisitERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.av

bb.al:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.av

_ZN5arrow6StatusD2Ev.exit.sink.split:             ; preds = %.lr.ph.i.i4.i.i.i238.i, %.lr.ph.i.i4.i.i.i225.i, %.lr.ph.i.i4.i.i.i209.i, %.lr.ph.i.i4.i.i.i193.i, %.lr.ph.i.i4.i.i.i177.i, %.lr.ph.i.i4.i.i.i161.i, %.lr.ph.i.i4.i.i.i145.i, %.lr.ph.i.i4.i.i.i129.i, %.lr.ph.i.i4.i.i.i113.i, %.lr.ph.i.i4.i.i.i98.i, %.lr.ph.i.i4.i.i.i.i, %middle.block, %middle.block156, %middle.block174, %middle.block192, %middle.block210, %middle.block228, %middle.block246, %middle.block264, %middle.block282, %middle.block300, %middle.block318, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, %bb.ak, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, %bb.ah, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, %bb.ae, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, %bb.ab, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, %bb.y, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, %bb.v, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, %bb.s, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, %bb.p, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, %bb.m, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, %bb.j, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i, %bb.g
  %.sroa.15.0.ph = phi i64 [ %spec.select.i.i.i.i.i166.i, %.lr.ph.i.i4.i.i.i161.i ], [ %spec.select.i.i.i.i.i150.i, %.lr.ph.i.i4.i.i.i145.i ], [ %spec.select.i.i.i.i.i134.i, %.lr.ph.i.i4.i.i.i129.i ], [ %spec.select.i.i.i.i.i118.i, %.lr.ph.i.i4.i.i.i113.i ], [ %spec.select.i.i.i.i.i103.i, %.lr.ph.i.i4.i.i.i98.i ], [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %spec.select.i.i.i.i.i227.i, %.lr.ph.i.i4.i.i.i225.i ], [ %spec.select.i.i.i.i.i214.i, %.lr.ph.i.i4.i.i.i209.i ], [ %spec.select.i.i.i.i.i198.i, %.lr.ph.i.i4.i.i.i193.i ], [ %spec.select.i.i.i.i.i182.i, %.lr.ph.i.i4.i.i.i177.i ], [ %i.ax, %bb.g ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i ], [ %i.ci, %bb.j ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i ], [ %i.dx, %bb.m ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i ], [ %i.fm, %bb.p ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i ], [ %i.hb, %bb.s ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i ], [ %i.iq, %bb.v ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i ], [ %i.kf, %bb.y ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i ], [ %i.lu, %bb.ab ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i ], [ %i.nj, %bb.ae ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i ], [ %i.oz, %bb.ah ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i ], [ %i.qp, %bb.ak ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i ], [ %i.au, %middle.block318 ], [ %i.cf, %middle.block300 ], [ %i.du, %middle.block282 ], [ %i.fj, %middle.block264 ], [ %i.gy, %middle.block246 ], [ %i.in, %middle.block228 ], [ %i.kc, %middle.block210 ], [ %i.lr, %middle.block192 ], [ %i.ng, %middle.block174 ], [ %i.ov, %middle.block156 ], [ %i.ql, %middle.block ], [ %spec.select.i.i.i.i.i242.i, %.lr.ph.i.i4.i.i.i238.i ]
  store ptr null, ptr %3, align 8, !tbaa !18, !alias.scope !255
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.invoke, %_ZN5arrow6StatusD2Ev.exit.sink.split, %bb.al
  %.sroa.15.0 = phi i64 [ 0, %.invoke ], [ %.sroa.15.0.ph, %_ZN5arrow6StatusD2Ev.exit.sink.split ], [ 0, %bb.al ]
  %i.qq = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  store ptr %i.qq, ptr %2, align 8, !tbaa !18
  store ptr null, ptr %3, align 8, !tbaa !18
  %i.qr = load ptr, ptr %i.c, align 8, !tbaa !109 ; 8 uses
  %.not.i.i = icmp eq ptr %i.qr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 4 uses
  %i.qt = load atomic i64, ptr %i.qs acquire, align 8 ; 2 uses
  %i.qu = icmp eq i64 %i.qt, 4294967297
  %i.qv = trunc i64 %i.qt to i32                  ; 2 uses
  br i1 %i.qu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.qs, align 8, !tbaa !111
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 12
  store i32 0, ptr %i.qw, align 4, !tbaa !113
  %i.qx = load ptr, ptr %i.qr, align 8, !tbaa !7
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8
  call void %i.qz(ptr noundef nonnull align 8 dereferenceable(16) %i.qr) #22, !inline_history !145
  %i.ra = load ptr, ptr %i.qr, align 8, !tbaa !7
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(16) %i.qr) #22, !inline_history !145
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.ao:                                            ; preds = %bb.am
  %i.rd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i = icmp eq i8 %i.rd, 0
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.re = add nsw i32 %i.qv, -1
  store i32 %i.re, ptr %i.qs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.rf = atomicrmw volatile add ptr %i.qs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i = phi i32 [ %i.qv, %bb.ap ], [ %i.rf, %bb.aq ]
  %i.rg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.rg, label %bb.ar, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, !prof !110

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qr) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.an
  %.pr = load ptr, ptr %2, align 8, !tbaa !18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, %_ZN5arrow6StatusD2Ev.exit
  %i.rh = phi ptr [ %.pr, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split ], [ %i.qq, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %_ZN5arrow6StatusD2Ev.exit56, label %bb.as, !prof !42

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  %i.rj = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %.not.i51 = icmp eq ptr %i.rj, null
  br i1 %.not.i51, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.at, !prof !42

bb.at:                                            ; preds = %bb.as
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !43, !range !53, !noundef !54
  %i.rm = trunc nuw i8 %i.rl to i1
  br i1 %i.rm, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  br label %_ZN5arrow6StatusD2Ev.exit52

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.aw

bb.av:                                            ; preds = %.invoke, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e
  %i.rn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.rn

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr null, ptr %0, align 8, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.0, ptr %i.ro, align 8, !tbaa !14
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit52, %_ZN5arrow6StatusD2Ev.exit56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.24", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !18
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !110

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
end_hunk_0
