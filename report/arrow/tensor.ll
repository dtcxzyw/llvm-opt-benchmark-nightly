inline.NumInlined: 5130
inline.NumDeleted: 1400
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZNK5arrow6Tensor15is_column_majorEv:bb.a

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
  %5 = ptrtoint ptr %i.ai to i64
  %6 = ptrtoint ptr %i.x to i64
  %i.aj = sub i64 %5, %6                          ; 3 uses
  %min.iters.check306 = icmp ult i64 %i.aj, 4
  br i1 %min.iters.check306, label %.lr.ph.i.i4.i.i.i.i.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i.i
  %n.vec309 = and i64 %i.aj, -4                   ; 3 uses
  %i.ak = getelementptr i8, ptr %i.x, i64 %n.vec309
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph307
  %index311 = phi i64 [ 0, %vector.ph307 ], [ %index.next317, %vector.body310 ] ; 2 uses
  %vec.phi312 = phi <2 x i64> [ zeroinitializer, %vector.ph307 ], [ %i.aq, %vector.body310 ]
  %vec.phi313 = phi <2 x i64> [ zeroinitializer, %vector.ph307 ], [ %i.ar, %vector.body310 ]
  %next.gep314 = getelementptr i8, ptr %i.x, i64 %index311 ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep314, i64 2
  %wide.load315 = load <2 x i8>, ptr %next.gep314, align 1, !tbaa !81, !noalias !258
  %wide.load316 = load <2 x i8>, ptr %i.al, align 1, !tbaa !81, !noalias !258
  %i.am = icmp ne <2 x i8> %wide.load315, zeroinitializer
  %i.an = icmp ne <2 x i8> %wide.load316, zeroinitializer
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi312, %i.ao        ; 2 uses
  %i.ar = add <2 x i64> %vec.phi313, %i.ap        ; 2 uses
  %index.next317 = add nuw i64 %index311, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next317, %n.vec309
  br i1 %i.as, label %middle.block318, label %vector.body310, !llvm.loop !261

middle.block318:                                  ; preds = %vector.body310
  %bin.rdx319 = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx319) ; 2 uses
  %cmp.n320 = icmp eq i64 %i.aj, %n.vec309
  br i1 %cmp.n320, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i.i.preheader

.lr.ph.i.i4.i.i.i.i.preheader:                    ; preds = %.lr.ph.i.i4.preheader.i.i.i.i, %middle.block318
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i.i ], [ %i.at, %middle.block318 ]
  %.058.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i4.preheader.i.i.i.i ], [ %i.ak, %middle.block318 ]
  br label %.lr.ph.i.i4.i.i.i.i

.lr.ph.i.i4.i.i.i.i:                              ; preds = %.lr.ph.i.i4.i.i.i.i.preheader, %.lr.ph.i.i4.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i.i.preheader ]
  %.058.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i4.i.i.i.i ], [ %.058.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i.i = load i8, ptr %.058.i.i.i.i.i.i, align 1, !tbaa !81, !noalias !258
  %.not6.i.i.i.i.i.i = icmp ne i8 %.05.val.i.i.i.i.i.i, 0
  %i.au = zext i1 %.not6.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i = add nuw nsw i64 %.09.i.i.i.i.i.i, %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i.i, !llvm.loop !264

bb.g:                                             ; preds = %.noexc7
  %i.aw = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_8Int8TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !258
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.h:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ay)
          to label %.noexc8 unwind label %bb.av

.noexc8:                                          ; preds = %bb.h
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !84, !noalias !265 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !163, !range !53, !noalias !265, !noundef !54
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !265
  %i.bh = select i1 %i.be, ptr %i.bg, ptr null, !prof !42 ; 6 uses
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !83, !noalias !265 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !83, !noalias !265 ; 2 uses
  %i.bl = icmp eq ptr %i.bi, %i.bk
  br i1 %i.bl, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i, label %.lr.ph.i.i.i.i.i92.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i:  ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  br label %.lr.ph.i.i4.preheader.i.i.i97.i

.lr.ph.i.i.i.i.i92.i:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i92.i
  %.06.i.i.i.i.i93.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i92.i ], [ 1, %bb.i ]
  %.sroa.02.05.i.i.i.i.i94.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i92.i ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bn = load i64, ptr %.sroa.02.05.i.i.i.i.i94.i, align 8, !tbaa !14, !noalias !265
  %i.bo = mul nsw i64 %i.bn, %.06.i.i.i.i.i93.i   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i94.i, i64 8 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bk
  br i1 %i.bq, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, label %.lr.ph.i.i.i.i.i92.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i:          ; preds = %.lr.ph.i.i.i.i.i92.i
  %i.br = getelementptr inbounds i8, ptr %i.bh, i64 %i.bo
  %.not7.i.i.i.i.i96.i = icmp eq i64 %i.bo, 0
  br i1 %.not7.i.i.i.i.i96.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i97.i

.lr.ph.i.i4.preheader.i.i.i97.i:                  ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i
  %i.bs = phi ptr [ %i.bm, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i ], [ %i.br, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i ] ; 2 uses
  %7 = ptrtoint ptr %i.bs to i64
  %8 = ptrtoint ptr %i.bh to i64
  %i.bt = sub i64 %7, %8                          ; 3 uses
  %min.iters.check288 = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check288, label %.lr.ph.i.i4.i.i.i98.i.preheader, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i97.i
  %n.vec291 = and i64 %i.bt, -4                   ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bh, i64 %n.vec291
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph289
  %index293 = phi i64 [ 0, %vector.ph289 ], [ %index.next299, %vector.body292 ] ; 2 uses
  %vec.phi294 = phi <2 x i64> [ zeroinitializer, %vector.ph289 ], [ %i.ca, %vector.body292 ]
  %vec.phi295 = phi <2 x i64> [ zeroinitializer, %vector.ph289 ], [ %i.cb, %vector.body292 ]
  %next.gep296 = getelementptr i8, ptr %i.bh, i64 %index293 ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep296, i64 2
  %wide.load297 = load <2 x i8>, ptr %next.gep296, align 1, !tbaa !81, !noalias !265
  %wide.load298 = load <2 x i8>, ptr %i.bv, align 1, !tbaa !81, !noalias !265
  %i.bw = icmp ne <2 x i8> %wide.load297, zeroinitializer
  %i.bx = icmp ne <2 x i8> %wide.load298, zeroinitializer
  %i.by = zext <2 x i1> %i.bw to <2 x i64>
  %i.bz = zext <2 x i1> %i.bx to <2 x i64>
  %i.ca = add <2 x i64> %vec.phi294, %i.by        ; 2 uses
  %i.cb = add <2 x i64> %vec.phi295, %i.bz        ; 2 uses
  %index.next299 = add nuw i64 %index293, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next299, %n.vec291
  br i1 %i.cc, label %middle.block300, label %vector.body292, !llvm.loop !268

middle.block300:                                  ; preds = %vector.body292
  %bin.rdx301 = add <2 x i64> %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx301) ; 2 uses
  %cmp.n302 = icmp eq i64 %i.bt, %n.vec291
  br i1 %cmp.n302, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i98.i.preheader

.lr.ph.i.i4.i.i.i98.i.preheader:                  ; preds = %.lr.ph.i.i4.preheader.i.i.i97.i, %middle.block300
  %.09.i.i.i.i.i99.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i97.i ], [ %i.cd, %middle.block300 ]
  %.058.i.i.i.i.i100.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i4.preheader.i.i.i97.i ], [ %i.bu, %middle.block300 ]
  br label %.lr.ph.i.i4.i.i.i98.i

.lr.ph.i.i4.i.i.i98.i:                            ; preds = %.lr.ph.i.i4.i.i.i98.i.preheader, %.lr.ph.i.i4.i.i.i98.i
  %.09.i.i.i.i.i99.i = phi i64 [ %spec.select.i.i.i.i.i103.i, %.lr.ph.i.i4.i.i.i98.i ], [ %.09.i.i.i.i.i99.i.ph, %.lr.ph.i.i4.i.i.i98.i.preheader ]
  %.058.i.i.i.i.i100.i = phi ptr [ %i.cf, %.lr.ph.i.i4.i.i.i98.i ], [ %.058.i.i.i.i.i100.i.ph, %.lr.ph.i.i4.i.i.i98.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i101.i = load i8, ptr %.058.i.i.i.i.i100.i, align 1, !tbaa !81, !noalias !265
  %.not6.i.i.i.i.i102.i = icmp ne i8 %.05.val.i.i.i.i.i101.i, 0
  %i.ce = zext i1 %.not6.i.i.i.i.i102.i to i64
  %spec.select.i.i.i.i.i103.i = add nuw nsw i64 %.09.i.i.i.i.i99.i, %i.ce ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i100.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i104.i = icmp eq ptr %i.cf, %i.bs
  br i1 %.not.i.i.i.i.i104.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i98.i, !llvm.loop !269

bb.j:                                             ; preds = %.noexc8
  %i.cg = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9UInt8TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !265
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.k:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cj = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ch, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ci)
          to label %.noexc9 unwind label %bb.av

.noexc9:                                          ; preds = %bb.k
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc9
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !84, !noalias !270 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !163, !range !53, !noalias !270, !noundef !54
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !270
  %i.cr = select i1 %i.co, ptr %i.cq, ptr null, !prof !42 ; 6 uses
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !83, !noalias !270 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83, !noalias !270 ; 2 uses
  %i.cv = icmp eq ptr %i.cs, %i.cu
  br i1 %i.cv, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i, label %.lr.ph.i.i.i.i.i107.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i:  ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i112.i

.lr.ph.i.i.i.i.i107.i:                            ; preds = %bb.l, %.lr.ph.i.i.i.i.i107.i
  %.06.i.i.i.i.i108.i = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i107.i ], [ 1, %bb.l ]
  %.sroa.02.05.i.i.i.i.i109.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i107.i ], [ %i.cs, %bb.l ] ; 2 uses
  %i.cx = load i64, ptr %.sroa.02.05.i.i.i.i.i109.i, align 8, !tbaa !14, !noalias !270
  %i.cy = mul nsw i64 %i.cx, %.06.i.i.i.i.i108.i  ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i109.i, i64 8 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cu
  br i1 %i.da, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, label %.lr.ph.i.i.i.i.i107.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i:         ; preds = %.lr.ph.i.i.i.i.i107.i
  %.idx.i.i.i.i = shl nsw i64 %i.cy, 1
  %i.db = getelementptr inbounds i8, ptr %i.cr, i64 %.idx.i.i.i.i
  %.not7.i.i.i.i.i111.i = icmp eq i64 %i.cy, 0
  br i1 %.not7.i.i.i.i.i111.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i112.i

.lr.ph.i.i4.preheader.i.i.i112.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i
  %i.dc = phi ptr [ %i.cw, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i ], [ %i.db, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i ] ; 2 uses
  %9 = ptrtoint ptr %i.dc to i64
  %10 = ptrtoint ptr %i.cr to i64
  %i.dd = sub i64 %9, %10
  %i.de = add i64 %i.dd, -2                       ; 2 uses
  %i.df = lshr i64 %i.de, 1
  %i.dg = add nuw i64 %i.df, 1                    ; 2 uses
  %min.iters.check270 = icmp ult i64 %i.de, 6
  br i1 %min.iters.check270, label %.lr.ph.i.i4.i.i.i113.i.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i112.i
  %n.vec273 = and i64 %i.dg, -4                   ; 3 uses
  %i.dh = shl i64 %n.vec273, 1
  %i.di = getelementptr i8, ptr %i.cr, i64 %i.dh
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph271
  %index275 = phi i64 [ 0, %vector.ph271 ], [ %index.next281, %vector.body274 ] ; 2 uses
  %vec.phi276 = phi <2 x i64> [ zeroinitializer, %vector.ph271 ], [ %i.dp, %vector.body274 ]
  %vec.phi277 = phi <2 x i64> [ zeroinitializer, %vector.ph271 ], [ %i.dq, %vector.body274 ]
  %i.dj = shl i64 %index275, 1
  %next.gep278 = getelementptr i8, ptr %i.cr, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep278, i64 4
  %wide.load279 = load <2 x i16>, ptr %next.gep278, align 2, !tbaa !273, !noalias !270
  %wide.load280 = load <2 x i16>, ptr %i.dk, align 2, !tbaa !273, !noalias !270
  %i.dl = icmp ne <2 x i16> %wide.load279, zeroinitializer
  %i.dm = icmp ne <2 x i16> %wide.load280, zeroinitializer
  %i.dn = zext <2 x i1> %i.dl to <2 x i64>
  %i.do = zext <2 x i1> %i.dm to <2 x i64>
  %i.dp = add <2 x i64> %vec.phi276, %i.dn        ; 2 uses
  %i.dq = add <2 x i64> %vec.phi277, %i.do        ; 2 uses
  %index.next281 = add nuw i64 %index275, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next281, %n.vec273
  br i1 %i.dr, label %middle.block282, label %vector.body274, !llvm.loop !275

middle.block282:                                  ; preds = %vector.body274
  %bin.rdx283 = add <2 x i64> %i.dq, %i.dp
  %i.ds = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx283) ; 2 uses
  %cmp.n284 = icmp eq i64 %i.dg, %n.vec273
  br i1 %cmp.n284, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i113.i.preheader

.lr.ph.i.i4.i.i.i113.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i112.i, %middle.block282
  %.09.i.i.i.i.i114.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i112.i ], [ %i.ds, %middle.block282 ]
  %.058.i.i.i.i.i115.i.ph = phi ptr [ %i.cr, %.lr.ph.i.i4.preheader.i.i.i112.i ], [ %i.di, %middle.block282 ]
  br label %.lr.ph.i.i4.i.i.i113.i

.lr.ph.i.i4.i.i.i113.i:                           ; preds = %.lr.ph.i.i4.i.i.i113.i.preheader, %.lr.ph.i.i4.i.i.i113.i
  %.09.i.i.i.i.i114.i = phi i64 [ %spec.select.i.i.i.i.i118.i, %.lr.ph.i.i4.i.i.i113.i ], [ %.09.i.i.i.i.i114.i.ph, %.lr.ph.i.i4.i.i.i113.i.preheader ]
  %.058.i.i.i.i.i115.i = phi ptr [ %i.du, %.lr.ph.i.i4.i.i.i113.i ], [ %.058.i.i.i.i.i115.i.ph, %.lr.ph.i.i4.i.i.i113.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i116.i = load i16, ptr %.058.i.i.i.i.i115.i, align 2, !tbaa !273, !noalias !270
  %.not6.i.i.i.i.i117.i = icmp ne i16 %.05.val.i.i.i.i.i116.i, 0
  %i.dt = zext i1 %.not6.i.i.i.i.i117.i to i64
  %spec.select.i.i.i.i.i118.i = add nuw nsw i64 %.09.i.i.i.i.i114.i, %i.dt ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i115.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i119.i = icmp eq ptr %i.du, %i.dc
  br i1 %.not.i.i.i.i.i119.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i113.i, !llvm.loop !276

bb.m:                                             ; preds = %.noexc9
  %i.dv = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int16TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !270
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.n:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dy = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dw, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dx)
          to label %.noexc10 unwind label %bb.av

.noexc10:                                         ; preds = %bb.n
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc10
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !84, !noalias !277 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 9
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !163, !range !53, !noalias !277, !noundef !54
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !277
  %i.eg = select i1 %i.ed, ptr %i.ef, ptr null, !prof !42 ; 6 uses
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !83, !noalias !277 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !83, !noalias !277 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i, label %.lr.ph.i.i.i.i.i122.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i:  ; preds = %bb.o
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i128.i

.lr.ph.i.i.i.i.i122.i:                            ; preds = %bb.o, %.lr.ph.i.i.i.i.i122.i
  %.06.i.i.i.i.i123.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i122.i ], [ 1, %bb.o ]
  %.sroa.02.05.i.i.i.i.i124.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i122.i ], [ %i.eh, %bb.o ] ; 2 uses
  %i.em = load i64, ptr %.sroa.02.05.i.i.i.i.i124.i, align 8, !tbaa !14, !noalias !277
  %i.en = mul nsw i64 %i.em, %.06.i.i.i.i.i123.i  ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i124.i, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ej
  br i1 %i.ep, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, label %.lr.ph.i.i.i.i.i122.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i:         ; preds = %.lr.ph.i.i.i.i.i122.i
  %.idx.i.i.i126.i = shl nsw i64 %i.en, 1
  %i.eq = getelementptr inbounds i8, ptr %i.eg, i64 %.idx.i.i.i126.i
  %.not7.i.i.i.i.i127.i = icmp eq i64 %i.en, 0
  br i1 %.not7.i.i.i.i.i127.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i128.i

.lr.ph.i.i4.preheader.i.i.i128.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i
  %i.er = phi ptr [ %i.el, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i ], [ %i.eq, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i ] ; 2 uses
  %11 = ptrtoint ptr %i.er to i64
  %12 = ptrtoint ptr %i.eg to i64
  %i.es = sub i64 %11, %12
  %i.et = add i64 %i.es, -2                       ; 2 uses
  %i.eu = lshr i64 %i.et, 1
  %i.ev = add nuw i64 %i.eu, 1                    ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.et, 6
  br i1 %min.iters.check252, label %.lr.ph.i.i4.i.i.i129.i.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i128.i
  %n.vec255 = and i64 %i.ev, -4                   ; 3 uses
  %i.ew = shl i64 %n.vec255, 1
  %i.ex = getelementptr i8, ptr %i.eg, i64 %i.ew
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph253
  %index257 = phi i64 [ 0, %vector.ph253 ], [ %index.next263, %vector.body256 ] ; 2 uses
  %vec.phi258 = phi <2 x i64> [ zeroinitializer, %vector.ph253 ], [ %i.fe, %vector.body256 ]
  %vec.phi259 = phi <2 x i64> [ zeroinitializer, %vector.ph253 ], [ %i.ff, %vector.body256 ]
  %i.ey = shl i64 %index257, 1
  %next.gep260 = getelementptr i8, ptr %i.eg, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep260, i64 4
  %wide.load261 = load <2 x i16>, ptr %next.gep260, align 2, !tbaa !273, !noalias !277
  %wide.load262 = load <2 x i16>, ptr %i.ez, align 2, !tbaa !273, !noalias !277
  %i.fa = icmp ne <2 x i16> %wide.load261, zeroinitializer
  %i.fb = icmp ne <2 x i16> %wide.load262, zeroinitializer
  %i.fc = zext <2 x i1> %i.fa to <2 x i64>
  %i.fd = zext <2 x i1> %i.fb to <2 x i64>
  %i.fe = add <2 x i64> %vec.phi258, %i.fc        ; 2 uses
  %i.ff = add <2 x i64> %vec.phi259, %i.fd        ; 2 uses
  %index.next263 = add nuw i64 %index257, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next263, %n.vec255
  br i1 %i.fg, label %middle.block264, label %vector.body256, !llvm.loop !280

middle.block264:                                  ; preds = %vector.body256
  %bin.rdx265 = add <2 x i64> %i.ff, %i.fe
  %i.fh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx265) ; 2 uses
  %cmp.n266 = icmp eq i64 %i.ev, %n.vec255
  br i1 %cmp.n266, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i129.i.preheader

.lr.ph.i.i4.i.i.i129.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i128.i, %middle.block264
  %.09.i.i.i.i.i130.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i128.i ], [ %i.fh, %middle.block264 ]
  %.058.i.i.i.i.i131.i.ph = phi ptr [ %i.eg, %.lr.ph.i.i4.preheader.i.i.i128.i ], [ %i.ex, %middle.block264 ]
  br label %.lr.ph.i.i4.i.i.i129.i

.lr.ph.i.i4.i.i.i129.i:                           ; preds = %.lr.ph.i.i4.i.i.i129.i.preheader, %.lr.ph.i.i4.i.i.i129.i
  %.09.i.i.i.i.i130.i = phi i64 [ %spec.select.i.i.i.i.i134.i, %.lr.ph.i.i4.i.i.i129.i ], [ %.09.i.i.i.i.i130.i.ph, %.lr.ph.i.i4.i.i.i129.i.preheader ]
  %.058.i.i.i.i.i131.i = phi ptr [ %i.fj, %.lr.ph.i.i4.i.i.i129.i ], [ %.058.i.i.i.i.i131.i.ph, %.lr.ph.i.i4.i.i.i129.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i132.i = load i16, ptr %.058.i.i.i.i.i131.i, align 2, !tbaa !273, !noalias !277
  %.not6.i.i.i.i.i133.i = icmp ne i16 %.05.val.i.i.i.i.i132.i, 0
  %i.fi = zext i1 %.not6.i.i.i.i.i133.i to i64
  %spec.select.i.i.i.i.i134.i = add nuw nsw i64 %.09.i.i.i.i.i130.i, %i.fi ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i131.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i135.i = icmp eq ptr %i.fj, %i.er
  br i1 %.not.i.i.i.i.i135.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i129.i, !llvm.loop !281

bb.p:                                             ; preds = %.noexc10
  %i.fk = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt16TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !277
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.q:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fn = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fl, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fm)
          to label %.noexc11 unwind label %bb.av

.noexc11:                                         ; preds = %bb.q
  br i1 %i.fn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc11
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !84, !noalias !282 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 9
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !163, !range !53, !noalias !282, !noundef !54
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !282
  %i.fv = select i1 %i.fs, ptr %i.fu, ptr null, !prof !42 ; 6 uses
  %i.fw = load ptr, ptr %i.fl, align 8, !tbaa !83, !noalias !282 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !83, !noalias !282 ; 2 uses
  %i.fz = icmp eq ptr %i.fw, %i.fy
  br i1 %i.fz, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i, label %.lr.ph.i.i.i.i.i138.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i:  ; preds = %bb.r
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i144.i

.lr.ph.i.i.i.i.i138.i:                            ; preds = %bb.r, %.lr.ph.i.i.i.i.i138.i
  %.06.i.i.i.i.i139.i = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i138.i ], [ 1, %bb.r ]
  %.sroa.02.05.i.i.i.i.i140.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i138.i ], [ %i.fw, %bb.r ] ; 2 uses
  %i.gb = load i64, ptr %.sroa.02.05.i.i.i.i.i140.i, align 8, !tbaa !14, !noalias !282
  %i.gc = mul nsw i64 %i.gb, %.06.i.i.i.i.i139.i  ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i140.i, i64 8 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fy
  br i1 %i.ge, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, label %.lr.ph.i.i.i.i.i138.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i:         ; preds = %.lr.ph.i.i.i.i.i138.i
  %.idx.i.i.i142.i = shl nsw i64 %i.gc, 2
  %i.gf = getelementptr inbounds i8, ptr %i.fv, i64 %.idx.i.i.i142.i
  %.not7.i.i.i.i.i143.i = icmp eq i64 %i.gc, 0
  br i1 %.not7.i.i.i.i.i143.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i144.i

.lr.ph.i.i4.preheader.i.i.i144.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i
  %i.gg = phi ptr [ %i.ga, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i ], [ %i.gf, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i ] ; 2 uses
  %13 = ptrtoint ptr %i.gg to i64
  %14 = ptrtoint ptr %i.fv to i64
  %i.gh = sub i64 %13, %14
  %i.gi = add i64 %i.gh, -4                       ; 2 uses
  %i.gj = lshr i64 %i.gi, 2
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check234 = icmp ult i64 %i.gi, 12
  br i1 %min.iters.check234, label %.lr.ph.i.i4.i.i.i145.i.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i144.i
  %n.vec237 = and i64 %i.gk, 9223372036854775804  ; 3 uses
  %i.gl = shl i64 %n.vec237, 2
  %i.gm = getelementptr i8, ptr %i.fv, i64 %i.gl
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph235
  %index239 = phi i64 [ 0, %vector.ph235 ], [ %index.next245, %vector.body238 ] ; 2 uses
  %vec.phi240 = phi <2 x i64> [ zeroinitializer, %vector.ph235 ], [ %i.gt, %vector.body238 ]
  %vec.phi241 = phi <2 x i64> [ zeroinitializer, %vector.ph235 ], [ %i.gu, %vector.body238 ]
  %i.gn = shl i64 %index239, 2
  %next.gep242 = getelementptr i8, ptr %i.fv, i64 %i.gn ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep242, i64 8
  %wide.load243 = load <2 x i32>, ptr %next.gep242, align 4, !tbaa !3, !noalias !282
  %wide.load244 = load <2 x i32>, ptr %i.go, align 4, !tbaa !3, !noalias !282
  %i.gp = icmp ne <2 x i32> %wide.load243, zeroinitializer
  %i.gq = icmp ne <2 x i32> %wide.load244, zeroinitializer
  %i.gr = zext <2 x i1> %i.gp to <2 x i64>
  %i.gs = zext <2 x i1> %i.gq to <2 x i64>
  %i.gt = add <2 x i64> %vec.phi240, %i.gr        ; 2 uses
  %i.gu = add <2 x i64> %vec.phi241, %i.gs        ; 2 uses
  %index.next245 = add nuw i64 %index239, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next245, %n.vec237
  br i1 %i.gv, label %middle.block246, label %vector.body238, !llvm.loop !285

middle.block246:                                  ; preds = %vector.body238
  %bin.rdx247 = add <2 x i64> %i.gu, %i.gt
  %i.gw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx247) ; 2 uses
  %cmp.n248 = icmp eq i64 %i.gk, %n.vec237
  br i1 %cmp.n248, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i145.i.preheader

.lr.ph.i.i4.i.i.i145.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i144.i, %middle.block246
  %.09.i.i.i.i.i146.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i144.i ], [ %i.gw, %middle.block246 ]
  %.058.i.i.i.i.i147.i.ph = phi ptr [ %i.fv, %.lr.ph.i.i4.preheader.i.i.i144.i ], [ %i.gm, %middle.block246 ]
  br label %.lr.ph.i.i4.i.i.i145.i

.lr.ph.i.i4.i.i.i145.i:                           ; preds = %.lr.ph.i.i4.i.i.i145.i.preheader, %.lr.ph.i.i4.i.i.i145.i
  %.09.i.i.i.i.i146.i = phi i64 [ %spec.select.i.i.i.i.i150.i, %.lr.ph.i.i4.i.i.i145.i ], [ %.09.i.i.i.i.i146.i.ph, %.lr.ph.i.i4.i.i.i145.i.preheader ]
  %.058.i.i.i.i.i147.i = phi ptr [ %i.gy, %.lr.ph.i.i4.i.i.i145.i ], [ %.058.i.i.i.i.i147.i.ph, %.lr.ph.i.i4.i.i.i145.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i148.i = load i32, ptr %.058.i.i.i.i.i147.i, align 4, !tbaa !3, !noalias !282
  %.not6.i.i.i.i.i149.i = icmp ne i32 %.05.val.i.i.i.i.i148.i, 0
  %i.gx = zext i1 %.not6.i.i.i.i.i149.i to i64
  %spec.select.i.i.i.i.i150.i = add nuw nsw i64 %.09.i.i.i.i.i146.i, %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i147.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i151.i = icmp eq ptr %i.gy, %i.gg
  br i1 %.not.i.i.i.i.i151.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i145.i, !llvm.loop !286

bb.s:                                             ; preds = %.noexc11
  %i.gz = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int32TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !282
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.t:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hc = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ha, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hb)
          to label %.noexc12 unwind label %bb.av

.noexc12:                                         ; preds = %bb.t
  br i1 %i.hc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc12
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !84, !noalias !287 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 9
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !163, !range !53, !noalias !287, !noundef !54
  %i.hh = trunc nuw i8 %i.hg to i1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !287
  %i.hk = select i1 %i.hh, ptr %i.hj, ptr null, !prof !42 ; 6 uses
  %i.hl = load ptr, ptr %i.ha, align 8, !tbaa !83, !noalias !287 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !83, !noalias !287 ; 2 uses
  %i.ho = icmp eq ptr %i.hl, %i.hn
  br i1 %i.ho, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i, label %.lr.ph.i.i.i.i.i154.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i:  ; preds = %bb.u
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i160.i

.lr.ph.i.i.i.i.i154.i:                            ; preds = %bb.u, %.lr.ph.i.i.i.i.i154.i
  %.06.i.i.i.i.i155.i = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i154.i ], [ 1, %bb.u ]
  %.sroa.02.05.i.i.i.i.i156.i = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i154.i ], [ %i.hl, %bb.u ] ; 2 uses
  %i.hq = load i64, ptr %.sroa.02.05.i.i.i.i.i156.i, align 8, !tbaa !14, !noalias !287
  %i.hr = mul nsw i64 %i.hq, %.06.i.i.i.i.i155.i  ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i156.i, i64 8 ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hn
  br i1 %i.ht, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, label %.lr.ph.i.i.i.i.i154.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i:         ; preds = %.lr.ph.i.i.i.i.i154.i
  %.idx.i.i.i158.i = shl nsw i64 %i.hr, 2
  %i.hu = getelementptr inbounds i8, ptr %i.hk, i64 %.idx.i.i.i158.i
  %.not7.i.i.i.i.i159.i = icmp eq i64 %i.hr, 0
  br i1 %.not7.i.i.i.i.i159.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i160.i

.lr.ph.i.i4.preheader.i.i.i160.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i
  %i.hv = phi ptr [ %i.hp, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i ], [ %i.hu, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i ] ; 2 uses
  %15 = ptrtoint ptr %i.hv to i64
  %16 = ptrtoint ptr %i.hk to i64
  %i.hw = sub i64 %15, %16
  %i.hx = add i64 %i.hw, -4                       ; 2 uses
  %i.hy = lshr i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check216 = icmp ult i64 %i.hx, 12
  br i1 %min.iters.check216, label %.lr.ph.i.i4.i.i.i161.i.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i160.i
  %n.vec219 = and i64 %i.hz, 9223372036854775804  ; 3 uses
  %i.ia = shl i64 %n.vec219, 2
  %i.ib = getelementptr i8, ptr %i.hk, i64 %i.ia
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next227, %vector.body220 ] ; 2 uses
  %vec.phi222 = phi <2 x i64> [ zeroinitializer, %vector.ph217 ], [ %i.ii, %vector.body220 ]
  %vec.phi223 = phi <2 x i64> [ zeroinitializer, %vector.ph217 ], [ %i.ij, %vector.body220 ]
  %i.ic = shl i64 %index221, 2
  %next.gep224 = getelementptr i8, ptr %i.hk, i64 %i.ic ; 2 uses
  %i.id = getelementptr i8, ptr %next.gep224, i64 8
  %wide.load225 = load <2 x i32>, ptr %next.gep224, align 4, !tbaa !3, !noalias !287
  %wide.load226 = load <2 x i32>, ptr %i.id, align 4, !tbaa !3, !noalias !287
  %i.ie = icmp ne <2 x i32> %wide.load225, zeroinitializer
  %i.if = icmp ne <2 x i32> %wide.load226, zeroinitializer
  %i.ig = zext <2 x i1> %i.ie to <2 x i64>
  %i.ih = zext <2 x i1> %i.if to <2 x i64>
  %i.ii = add <2 x i64> %vec.phi222, %i.ig        ; 2 uses
  %i.ij = add <2 x i64> %vec.phi223, %i.ih        ; 2 uses
  %index.next227 = add nuw i64 %index221, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next227, %n.vec219
  br i1 %i.ik, label %middle.block228, label %vector.body220, !llvm.loop !290

middle.block228:                                  ; preds = %vector.body220
  %bin.rdx229 = add <2 x i64> %i.ij, %i.ii
  %i.il = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx229) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.hz, %n.vec219
  br i1 %cmp.n230, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i161.i.preheader

.lr.ph.i.i4.i.i.i161.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i160.i, %middle.block228
  %.09.i.i.i.i.i162.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i160.i ], [ %i.il, %middle.block228 ]
  %.058.i.i.i.i.i163.i.ph = phi ptr [ %i.hk, %.lr.ph.i.i4.preheader.i.i.i160.i ], [ %i.ib, %middle.block228 ]
  br label %.lr.ph.i.i4.i.i.i161.i

.lr.ph.i.i4.i.i.i161.i:                           ; preds = %.lr.ph.i.i4.i.i.i161.i.preheader, %.lr.ph.i.i4.i.i.i161.i
  %.09.i.i.i.i.i162.i = phi i64 [ %spec.select.i.i.i.i.i166.i, %.lr.ph.i.i4.i.i.i161.i ], [ %.09.i.i.i.i.i162.i.ph, %.lr.ph.i.i4.i.i.i161.i.preheader ]
  %.058.i.i.i.i.i163.i = phi ptr [ %i.in, %.lr.ph.i.i4.i.i.i161.i ], [ %.058.i.i.i.i.i163.i.ph, %.lr.ph.i.i4.i.i.i161.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i164.i = load i32, ptr %.058.i.i.i.i.i163.i, align 4, !tbaa !3, !noalias !287
  %.not6.i.i.i.i.i165.i = icmp ne i32 %.05.val.i.i.i.i.i164.i, 0
  %i.im = zext i1 %.not6.i.i.i.i.i165.i to i64
  %spec.select.i.i.i.i.i166.i = add nuw nsw i64 %.09.i.i.i.i.i162.i, %i.im ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i163.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i167.i = icmp eq ptr %i.in, %i.hv
  br i1 %.not.i.i.i.i.i167.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i161.i, !llvm.loop !291

bb.v:                                             ; preds = %.noexc12
  %i.io = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt32TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !287
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.w:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ir = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ip, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.iq)
          to label %.noexc13 unwind label %bb.av

.noexc13:                                         ; preds = %bb.w
  br i1 %i.ir, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc13
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !84, !noalias !292 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 9
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !163, !range !53, !noalias !292, !noundef !54
  %i.iw = trunc nuw i8 %i.iv to i1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !292
  %i.iz = select i1 %i.iw, ptr %i.iy, ptr null, !prof !42 ; 6 uses
  %i.ja = load ptr, ptr %i.ip, align 8, !tbaa !83, !noalias !292 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !83, !noalias !292 ; 2 uses
  %i.jd = icmp eq ptr %i.ja, %i.jc
  br i1 %i.jd, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i, label %.lr.ph.i.i.i.i.i170.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i:  ; preds = %bb.x
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i176.i

.lr.ph.i.i.i.i.i170.i:                            ; preds = %bb.x, %.lr.ph.i.i.i.i.i170.i
  %.06.i.i.i.i.i171.i = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i170.i ], [ 1, %bb.x ]
  %.sroa.02.05.i.i.i.i.i172.i = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i170.i ], [ %i.ja, %bb.x ] ; 2 uses
  %i.jf = load i64, ptr %.sroa.02.05.i.i.i.i.i172.i, align 8, !tbaa !14, !noalias !292
  %i.jg = mul nsw i64 %i.jf, %.06.i.i.i.i.i171.i  ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i172.i, i64 8 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.jc
  br i1 %i.ji, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, label %.lr.ph.i.i.i.i.i170.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i:         ; preds = %.lr.ph.i.i.i.i.i170.i
  %.idx.i.i.i174.i = shl nsw i64 %i.jg, 3
  %i.jj = getelementptr inbounds i8, ptr %i.iz, i64 %.idx.i.i.i174.i
  %.not7.i.i.i.i.i175.i = icmp eq i64 %i.jg, 0
  br i1 %.not7.i.i.i.i.i175.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i176.i

.lr.ph.i.i4.preheader.i.i.i176.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i
  %i.jk = phi ptr [ %i.je, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i ], [ %i.jj, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i ] ; 2 uses
  %17 = ptrtoint ptr %i.jk to i64
  %18 = ptrtoint ptr %i.iz to i64
  %i.jl = sub i64 %17, %18
  %i.jm = add i64 %i.jl, -8                       ; 2 uses
  %i.jn = lshr i64 %i.jm, 3
  %i.jo = add nuw nsw i64 %i.jn, 1                ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.jm, 24
  br i1 %min.iters.check198, label %.lr.ph.i.i4.i.i.i177.i.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i176.i
  %n.vec201 = and i64 %i.jo, 4611686018427387900  ; 3 uses
  %i.jp = shl i64 %n.vec201, 3
  %i.jq = getelementptr i8, ptr %i.iz, i64 %i.jp
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
  %index203 = phi i64 [ 0, %vector.ph199 ], [ %index.next209, %vector.body202 ] ; 2 uses
  %vec.phi204 = phi <2 x i64> [ zeroinitializer, %vector.ph199 ], [ %i.jx, %vector.body202 ]
  %vec.phi205 = phi <2 x i64> [ zeroinitializer, %vector.ph199 ], [ %i.jy, %vector.body202 ]
  %i.jr = shl i64 %index203, 3
  %next.gep206 = getelementptr i8, ptr %i.iz, i64 %i.jr ; 2 uses
  %i.js = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8, !tbaa !14, !noalias !292
  %wide.load208 = load <2 x i64>, ptr %i.js, align 8, !tbaa !14, !noalias !292
  %i.jt = icmp ne <2 x i64> %wide.load207, zeroinitializer
  %i.ju = icmp ne <2 x i64> %wide.load208, zeroinitializer
  %i.jv = zext <2 x i1> %i.jt to <2 x i64>
  %i.jw = zext <2 x i1> %i.ju to <2 x i64>
  %i.jx = add <2 x i64> %vec.phi204, %i.jv        ; 2 uses
  %i.jy = add <2 x i64> %vec.phi205, %i.jw        ; 2 uses
  %index.next209 = add nuw i64 %index203, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next209, %n.vec201
  br i1 %i.jz, label %middle.block210, label %vector.body202, !llvm.loop !295

middle.block210:                                  ; preds = %vector.body202
  %bin.rdx211 = add <2 x i64> %i.jy, %i.jx
  %i.ka = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx211) ; 2 uses
  %cmp.n212 = icmp eq i64 %i.jo, %n.vec201
  br i1 %cmp.n212, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i177.i.preheader

.lr.ph.i.i4.i.i.i177.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i176.i, %middle.block210
  %.09.i.i.i.i.i178.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i176.i ], [ %i.ka, %middle.block210 ]
  %.058.i.i.i.i.i179.i.ph = phi ptr [ %i.iz, %.lr.ph.i.i4.preheader.i.i.i176.i ], [ %i.jq, %middle.block210 ]
  br label %.lr.ph.i.i4.i.i.i177.i

.lr.ph.i.i4.i.i.i177.i:                           ; preds = %.lr.ph.i.i4.i.i.i177.i.preheader, %.lr.ph.i.i4.i.i.i177.i
  %.09.i.i.i.i.i178.i = phi i64 [ %spec.select.i.i.i.i.i182.i, %.lr.ph.i.i4.i.i.i177.i ], [ %.09.i.i.i.i.i178.i.ph, %.lr.ph.i.i4.i.i.i177.i.preheader ]
  %.058.i.i.i.i.i179.i = phi ptr [ %i.kc, %.lr.ph.i.i4.i.i.i177.i ], [ %.058.i.i.i.i.i179.i.ph, %.lr.ph.i.i4.i.i.i177.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i180.i = load i64, ptr %.058.i.i.i.i.i179.i, align 8, !tbaa !14, !noalias !292
  %.not6.i.i.i.i.i181.i = icmp ne i64 %.05.val.i.i.i.i.i180.i, 0
  %i.kb = zext i1 %.not6.i.i.i.i.i181.i to i64
  %spec.select.i.i.i.i.i182.i = add nuw nsw i64 %.09.i.i.i.i.i178.i, %i.kb ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i179.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i183.i = icmp eq ptr %i.kc, %i.jk
  br i1 %.not.i.i.i.i.i183.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i177.i, !llvm.loop !296

bb.y:                                             ; preds = %.noexc13
  %i.kd = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int64TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !292
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.z:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kg = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ke, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.kf)
          to label %.noexc14 unwind label %bb.av

.noexc14:                                         ; preds = %bb.z
  br i1 %i.kg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc14
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !84, !noalias !297 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 9
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !163, !range !53, !noalias !297, !noundef !54
  %i.kl = trunc nuw i8 %i.kk to i1
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !297
  %i.ko = select i1 %i.kl, ptr %i.kn, ptr null, !prof !42 ; 6 uses
  %i.kp = load ptr, ptr %i.ke, align 8, !tbaa !83, !noalias !297 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !83, !noalias !297 ; 2 uses
  %i.ks = icmp eq ptr %i.kp, %i.kr
  br i1 %i.ks, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i, label %.lr.ph.i.i.i.i.i186.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i:  ; preds = %bb.aa
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i192.i

.lr.ph.i.i.i.i.i186.i:                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i186.i
  %.06.i.i.i.i.i187.i = phi i64 [ %i.kv, %.lr.ph.i.i.i.i.i186.i ], [ 1, %bb.aa ]
  %.sroa.02.05.i.i.i.i.i188.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i186.i ], [ %i.kp, %bb.aa ] ; 2 uses
  %i.ku = load i64, ptr %.sroa.02.05.i.i.i.i.i188.i, align 8, !tbaa !14, !noalias !297
  %i.kv = mul nsw i64 %i.ku, %.06.i.i.i.i.i187.i  ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i188.i, i64 8 ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.kr
  br i1 %i.kx, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, label %.lr.ph.i.i.i.i.i186.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i:         ; preds = %.lr.ph.i.i.i.i.i186.i
  %.idx.i.i.i190.i = shl nsw i64 %i.kv, 3
  %i.ky = getelementptr inbounds i8, ptr %i.ko, i64 %.idx.i.i.i190.i
  %.not7.i.i.i.i.i191.i = icmp eq i64 %i.kv, 0
  br i1 %.not7.i.i.i.i.i191.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i192.i

.lr.ph.i.i4.preheader.i.i.i192.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i
  %i.kz = phi ptr [ %i.kt, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i ], [ %i.ky, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i ] ; 2 uses
  %19 = ptrtoint ptr %i.kz to i64
  %20 = ptrtoint ptr %i.ko to i64
  %i.la = sub i64 %19, %20
  %i.lb = add i64 %i.la, -8                       ; 2 uses
  %i.lc = lshr i64 %i.lb, 3
  %i.ld = add nuw nsw i64 %i.lc, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.lb, 24
  br i1 %min.iters.check180, label %.lr.ph.i.i4.i.i.i193.i.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i192.i
  %n.vec183 = and i64 %i.ld, 4611686018427387900  ; 3 uses
  %i.le = shl i64 %n.vec183, 3
  %i.lf = getelementptr i8, ptr %i.ko, i64 %i.le
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next191, %vector.body184 ] ; 2 uses
  %vec.phi186 = phi <2 x i64> [ zeroinitializer, %vector.ph181 ], [ %i.lm, %vector.body184 ]
  %vec.phi187 = phi <2 x i64> [ zeroinitializer, %vector.ph181 ], [ %i.ln, %vector.body184 ]
  %i.lg = shl i64 %index185, 3
  %next.gep188 = getelementptr i8, ptr %i.ko, i64 %i.lg ; 2 uses
  %i.lh = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <2 x i64>, ptr %next.gep188, align 8, !tbaa !14, !noalias !297
  %wide.load190 = load <2 x i64>, ptr %i.lh, align 8, !tbaa !14, !noalias !297
  %i.li = icmp ne <2 x i64> %wide.load189, zeroinitializer
  %i.lj = icmp ne <2 x i64> %wide.load190, zeroinitializer
  %i.lk = zext <2 x i1> %i.li to <2 x i64>
  %i.ll = zext <2 x i1> %i.lj to <2 x i64>
  %i.lm = add <2 x i64> %vec.phi186, %i.lk        ; 2 uses
  %i.ln = add <2 x i64> %vec.phi187, %i.ll        ; 2 uses
  %index.next191 = add nuw i64 %index185, 4       ; 2 uses
  %i.lo = icmp eq i64 %index.next191, %n.vec183
  br i1 %i.lo, label %middle.block192, label %vector.body184, !llvm.loop !300

middle.block192:                                  ; preds = %vector.body184
  %bin.rdx193 = add <2 x i64> %i.ln, %i.lm
  %i.lp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx193) ; 2 uses
  %cmp.n194 = icmp eq i64 %i.ld, %n.vec183
  br i1 %cmp.n194, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i193.i.preheader

.lr.ph.i.i4.i.i.i193.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i192.i, %middle.block192
  %.09.i.i.i.i.i194.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i192.i ], [ %i.lp, %middle.block192 ]
  %.058.i.i.i.i.i195.i.ph = phi ptr [ %i.ko, %.lr.ph.i.i4.preheader.i.i.i192.i ], [ %i.lf, %middle.block192 ]
  br label %.lr.ph.i.i4.i.i.i193.i

.lr.ph.i.i4.i.i.i193.i:                           ; preds = %.lr.ph.i.i4.i.i.i193.i.preheader, %.lr.ph.i.i4.i.i.i193.i
  %.09.i.i.i.i.i194.i = phi i64 [ %spec.select.i.i.i.i.i198.i, %.lr.ph.i.i4.i.i.i193.i ], [ %.09.i.i.i.i.i194.i.ph, %.lr.ph.i.i4.i.i.i193.i.preheader ]
  %.058.i.i.i.i.i195.i = phi ptr [ %i.lr, %.lr.ph.i.i4.i.i.i193.i ], [ %.058.i.i.i.i.i195.i.ph, %.lr.ph.i.i4.i.i.i193.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i196.i = load i64, ptr %.058.i.i.i.i.i195.i, align 8, !tbaa !14, !noalias !297
  %.not6.i.i.i.i.i197.i = icmp ne i64 %.05.val.i.i.i.i.i196.i, 0
  %i.lq = zext i1 %.not6.i.i.i.i.i197.i to i64
  %spec.select.i.i.i.i.i198.i = add nuw nsw i64 %.09.i.i.i.i.i194.i, %i.lq ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i195.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i199.i = icmp eq ptr %i.lr, %i.kz
  br i1 %.not.i.i.i.i.i199.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i193.i, !llvm.loop !301

bb.ab:                                            ; preds = %.noexc14
  %i.ls = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt64TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !297
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.ac:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lv = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lu)
          to label %.noexc15 unwind label %bb.av

.noexc15:                                         ; preds = %bb.ac
  br i1 %i.lv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc15
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !84, !noalias !302 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 9
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !163, !range !53, !noalias !302, !noundef !54
  %i.ma = trunc nuw i8 %i.lz to i1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !302
  %i.md = select i1 %i.ma, ptr %i.mc, ptr null, !prof !42 ; 6 uses
  %i.me = load ptr, ptr %i.lt, align 8, !tbaa !83, !noalias !302 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !83, !noalias !302 ; 2 uses
  %i.mh = icmp eq ptr %i.me, %i.mg
  br i1 %i.mh, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i, label %.lr.ph.i.i.i.i.i202.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i:  ; preds = %bb.ad
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i208.i

.lr.ph.i.i.i.i.i202.i:                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i202.i
  %.06.i.i.i.i.i203.i = phi i64 [ %i.mk, %.lr.ph.i.i.i.i.i202.i ], [ 1, %bb.ad ]
  %.sroa.02.05.i.i.i.i.i204.i = phi ptr [ %i.ml, %.lr.ph.i.i.i.i.i202.i ], [ %i.me, %bb.ad ] ; 2 uses
  %i.mj = load i64, ptr %.sroa.02.05.i.i.i.i.i204.i, align 8, !tbaa !14, !noalias !302
  %i.mk = mul nsw i64 %i.mj, %.06.i.i.i.i.i203.i  ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i204.i, i64 8 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.mg
  br i1 %i.mm, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, label %.lr.ph.i.i.i.i.i202.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i:         ; preds = %.lr.ph.i.i.i.i.i202.i
  %.idx.i.i.i206.i = shl nsw i64 %i.mk, 1
  %i.mn = getelementptr inbounds i8, ptr %i.md, i64 %.idx.i.i.i206.i
  %.not7.i.i.i.i.i207.i = icmp eq i64 %i.mk, 0
  br i1 %.not7.i.i.i.i.i207.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i208.i

.lr.ph.i.i4.preheader.i.i.i208.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i
  %i.mo = phi ptr [ %i.mi, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i ], [ %i.mn, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i ] ; 2 uses
  %21 = ptrtoint ptr %i.mo to i64
  %22 = ptrtoint ptr %i.md to i64
  %i.mp = sub i64 %21, %22
  %i.mq = add i64 %i.mp, -2                       ; 2 uses
  %i.mr = lshr i64 %i.mq, 1
  %i.ms = add nuw i64 %i.mr, 1                    ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.mq, 6
  br i1 %min.iters.check162, label %.lr.ph.i.i4.i.i.i209.i.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i208.i
  %n.vec165 = and i64 %i.ms, -4                   ; 3 uses
  %i.mt = shl i64 %n.vec165, 1
  %i.mu = getelementptr i8, ptr %i.md, i64 %i.mt
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next173, %vector.body166 ] ; 2 uses
  %vec.phi168 = phi <2 x i64> [ zeroinitializer, %vector.ph163 ], [ %i.nb, %vector.body166 ]
  %vec.phi169 = phi <2 x i64> [ zeroinitializer, %vector.ph163 ], [ %i.nc, %vector.body166 ]
  %i.mv = shl i64 %index167, 1
  %next.gep170 = getelementptr i8, ptr %i.md, i64 %i.mv ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep170, i64 4
  %wide.load171 = load <2 x i16>, ptr %next.gep170, align 2, !tbaa !273, !noalias !302
  %wide.load172 = load <2 x i16>, ptr %i.mw, align 2, !tbaa !273, !noalias !302
  %i.mx = icmp ne <2 x i16> %wide.load171, zeroinitializer
  %i.my = icmp ne <2 x i16> %wide.load172, zeroinitializer
  %i.mz = zext <2 x i1> %i.mx to <2 x i64>
  %i.na = zext <2 x i1> %i.my to <2 x i64>
  %i.nb = add <2 x i64> %vec.phi168, %i.mz        ; 2 uses
  %i.nc = add <2 x i64> %vec.phi169, %i.na        ; 2 uses
  %index.next173 = add nuw i64 %index167, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next173, %n.vec165
  br i1 %i.nd, label %middle.block174, label %vector.body166, !llvm.loop !305

middle.block174:                                  ; preds = %vector.body166
  %bin.rdx175 = add <2 x i64> %i.nc, %i.nb
  %i.ne = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx175) ; 2 uses
  %cmp.n176 = icmp eq i64 %i.ms, %n.vec165
  br i1 %cmp.n176, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i209.i.preheader

.lr.ph.i.i4.i.i.i209.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i208.i, %middle.block174
  %.09.i.i.i.i.i210.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i208.i ], [ %i.ne, %middle.block174 ]
  %.058.i.i.i.i.i211.i.ph = phi ptr [ %i.md, %.lr.ph.i.i4.preheader.i.i.i208.i ], [ %i.mu, %middle.block174 ]
  br label %.lr.ph.i.i4.i.i.i209.i

.lr.ph.i.i4.i.i.i209.i:                           ; preds = %.lr.ph.i.i4.i.i.i209.i.preheader, %.lr.ph.i.i4.i.i.i209.i
  %.09.i.i.i.i.i210.i = phi i64 [ %spec.select.i.i.i.i.i214.i, %.lr.ph.i.i4.i.i.i209.i ], [ %.09.i.i.i.i.i210.i.ph, %.lr.ph.i.i4.i.i.i209.i.preheader ]
  %.058.i.i.i.i.i211.i = phi ptr [ %i.ng, %.lr.ph.i.i4.i.i.i209.i ], [ %.058.i.i.i.i.i211.i.ph, %.lr.ph.i.i4.i.i.i209.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i212.i = load i16, ptr %.058.i.i.i.i.i211.i, align 2, !tbaa !273, !noalias !302
  %.not6.i.i.i.i.i213.i = icmp ne i16 %.05.val.i.i.i.i.i212.i, 0
  %i.nf = zext i1 %.not6.i.i.i.i.i213.i to i64
  %spec.select.i.i.i.i.i214.i = add nuw nsw i64 %.09.i.i.i.i.i210.i, %i.nf ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i211.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i215.i = icmp eq ptr %i.ng, %i.mo
  br i1 %.not.i.i.i.i.i215.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i209.i, !llvm.loop !306

bb.ae:                                            ; preds = %.noexc15
  %i.nh = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_13HalfFloatTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !302
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.af:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nk = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ni, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.nj)
          to label %.noexc16 unwind label %bb.av

.noexc16:                                         ; preds = %bb.af
  br i1 %i.nk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc16
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !84, !noalias !307 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 9
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !163, !range !53, !noalias !307, !noundef !54
  %i.np = trunc nuw i8 %i.no to i1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !noalias !307
  %i.ns = select i1 %i.np, ptr %i.nr, ptr null, !prof !42 ; 6 uses
  %i.nt = load ptr, ptr %i.ni, align 8, !tbaa !83, !noalias !307 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !83, !noalias !307 ; 2 uses
  %i.nw = icmp eq ptr %i.nt, %i.nv
  br i1 %i.nw, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i, label %.lr.ph.i.i.i.i.i218.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i:  ; preds = %bb.ag
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i224.i

.lr.ph.i.i.i.i.i218.i:                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.i218.i
  %.06.i.i.i.i.i219.i = phi i64 [ %i.nz, %.lr.ph.i.i.i.i.i218.i ], [ 1, %bb.ag ]
  %.sroa.02.05.i.i.i.i.i220.i = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i218.i ], [ %i.nt, %bb.ag ] ; 2 uses
  %i.ny = load i64, ptr %.sroa.02.05.i.i.i.i.i220.i, align 8, !tbaa !14, !noalias !307
  %i.nz = mul nsw i64 %i.ny, %.06.i.i.i.i.i219.i  ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i220.i, i64 8 ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.nv
  br i1 %i.ob, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, label %.lr.ph.i.i.i.i.i218.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i:         ; preds = %.lr.ph.i.i.i.i.i218.i
  %.idx.i.i.i222.i = shl nsw i64 %i.nz, 2
  %i.oc = getelementptr inbounds i8, ptr %i.ns, i64 %.idx.i.i.i222.i
  %.not6.i.i.i.i.i223.i = icmp eq i64 %i.nz, 0
  br i1 %.not6.i.i.i.i.i223.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i224.i

.lr.ph.i.i4.preheader.i.i.i224.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i
  %i.od = phi ptr [ %i.nx, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i ], [ %i.oc, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i ] ; 2 uses
  %23 = ptrtoint ptr %i.od to i64
  %24 = ptrtoint ptr %i.ns to i64
  %i.oe = sub i64 %23, %24
  %i.of = add i64 %i.oe, -4                       ; 2 uses
  %i.og = lshr i64 %i.of, 2
  %i.oh = add nuw nsw i64 %i.og, 1                ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.of, 12
  br i1 %min.iters.check144, label %.lr.ph.i.i4.i.i.i225.i.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i224.i
  %n.vec147 = and i64 %i.oh, 9223372036854775804  ; 3 uses
  %i.oi = shl i64 %n.vec147, 2
  %i.oj = getelementptr i8, ptr %i.ns, i64 %i.oi
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next155, %vector.body148 ] ; 2 uses
  %vec.phi150 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.oq, %vector.body148 ]
  %vec.phi151 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.or, %vector.body148 ]
  %i.ok = shl i64 %index149, 2
  %next.gep152 = getelementptr i8, ptr %i.ns, i64 %i.ok ; 2 uses
  %i.ol = getelementptr i8, ptr %next.gep152, i64 8
  %wide.load153 = load <2 x float>, ptr %next.gep152, align 4, !tbaa !310, !noalias !307
  %wide.load154 = load <2 x float>, ptr %i.ol, align 4, !tbaa !310, !noalias !307
  %i.om = fcmp une <2 x float> %wide.load153, zeroinitializer
  %i.on = fcmp une <2 x float> %wide.load154, zeroinitializer
  %i.oo = zext <2 x i1> %i.om to <2 x i64>
  %i.op = zext <2 x i1> %i.on to <2 x i64>
  %i.oq = add <2 x i64> %vec.phi150, %i.oo        ; 2 uses
  %i.or = add <2 x i64> %vec.phi151, %i.op        ; 2 uses
  %index.next155 = add nuw i64 %index149, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next155, %n.vec147
  br i1 %i.os, label %middle.block156, label %vector.body148, !llvm.loop !312

middle.block156:                                  ; preds = %vector.body148
  %bin.rdx157 = add <2 x i64> %i.or, %i.oq
  %i.ot = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx157) ; 2 uses
  %cmp.n158 = icmp eq i64 %i.oh, %n.vec147
  br i1 %cmp.n158, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i225.i.preheader

.lr.ph.i.i4.i.i.i225.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i224.i, %middle.block156
  %.08.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i224.i ], [ %i.ot, %middle.block156 ]
  %.057.i.i.i.i.i.i.ph = phi ptr [ %i.ns, %.lr.ph.i.i4.preheader.i.i.i224.i ], [ %i.oj, %middle.block156 ]
  br label %.lr.ph.i.i4.i.i.i225.i

.lr.ph.i.i4.i.i.i225.i:                           ; preds = %.lr.ph.i.i4.i.i.i225.i.preheader, %.lr.ph.i.i4.i.i.i225.i
  %.08.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i227.i, %.lr.ph.i.i4.i.i.i225.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i225.i.preheader ]
  %.057.i.i.i.i.i.i = phi ptr [ %i.ow, %.lr.ph.i.i4.i.i.i225.i ], [ %.057.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i225.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i226.i = load float, ptr %.057.i.i.i.i.i.i, align 4, !tbaa !310, !noalias !307
  %i.ou = fcmp une float %.05.val.i.i.i.i.i226.i, 0.000000e+00
  %i.ov = zext i1 %i.ou to i64
  %spec.select.i.i.i.i.i227.i = add nuw nsw i64 %.08.i.i.i.i.i.i, %i.ov ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i228.i = icmp eq ptr %i.ow, %i.od
  br i1 %.not.i.i.i.i.i228.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i225.i, !llvm.loop !313

bb.ah:                                            ; preds = %.noexc16
  %i.ox = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9FloatTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !307
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.ai:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pa = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.oy, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.oz)
          to label %.noexc17 unwind label %bb.av

.noexc17:                                         ; preds = %bb.ai
  br i1 %i.pa, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc17
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !84, !noalias !314 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 9
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !163, !range !53, !noalias !314, !noundef !54
  %i.pf = trunc nuw i8 %i.pe to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !noalias !314
  %i.pi = select i1 %i.pf, ptr %i.ph, ptr null, !prof !42 ; 6 uses
  %i.pj = load ptr, ptr %i.oy, align 8, !tbaa !83, !noalias !314 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !83, !noalias !314 ; 2 uses
  %i.pm = icmp eq ptr %i.pj, %i.pl
  br i1 %i.pm, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i, label %.lr.ph.i.i.i.i.i231.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i:  ; preds = %bb.aj
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i237.i

.lr.ph.i.i.i.i.i231.i:                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.i231.i
  %.06.i.i.i.i.i232.i = phi i64 [ %i.pp, %.lr.ph.i.i.i.i.i231.i ], [ 1, %bb.aj ]
  %.sroa.02.05.i.i.i.i.i233.i = phi ptr [ %i.pq, %.lr.ph.i.i.i.i.i231.i ], [ %i.pj, %bb.aj ] ; 2 uses
  %i.po = load i64, ptr %.sroa.02.05.i.i.i.i.i233.i, align 8, !tbaa !14, !noalias !314
  %i.pp = mul nsw i64 %i.po, %.06.i.i.i.i.i232.i  ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i233.i, i64 8 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.pl
  br i1 %i.pr, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, label %.lr.ph.i.i.i.i.i231.i, !llvm.loop !251

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i:         ; preds = %.lr.ph.i.i.i.i.i231.i
  %.idx.i.i.i235.i = shl nsw i64 %i.pp, 3
  %i.ps = getelementptr inbounds i8, ptr %i.pi, i64 %.idx.i.i.i235.i
  %.not6.i.i.i.i.i236.i = icmp eq i64 %i.pp, 0
  br i1 %.not6.i.i.i.i.i236.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i237.i

.lr.ph.i.i4.preheader.i.i.i237.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i
  %i.pt = phi ptr [ %i.pn, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i ], [ %i.ps, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i ] ; 2 uses
  %25 = ptrtoint ptr %i.pt to i64
  %26 = ptrtoint ptr %i.pi to i64
  %i.pu = sub i64 %25, %26
  %i.pv = add i64 %i.pu, -8                       ; 2 uses
  %i.pw = lshr i64 %i.pv, 3
  %i.px = add nuw nsw i64 %i.pw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.pv, 24
  br i1 %min.iters.check, label %.lr.ph.i.i4.i.i.i238.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i4.preheader.i.i.i237.i
  %n.vec = and i64 %i.px, 4611686018427387900     ; 3 uses
  %i.py = shl i64 %n.vec, 3
  %i.pz = getelementptr i8, ptr %i.pi, i64 %i.py
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qg, %vector.body ]
  %vec.phi141 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qh, %vector.body ]
  %i.qa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.pi, i64 %i.qa ; 2 uses
  %i.qb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !317, !noalias !314
  %wide.load142 = load <2 x double>, ptr %i.qb, align 8, !tbaa !317, !noalias !314
  %i.qc = fcmp une <2 x double> %wide.load, zeroinitializer
  %i.qd = fcmp une <2 x double> %wide.load142, zeroinitializer
  %i.qe = zext <2 x i1> %i.qc to <2 x i64>
  %i.qf = zext <2 x i1> %i.qd to <2 x i64>
  %i.qg = add <2 x i64> %vec.phi, %i.qe           ; 2 uses
  %i.qh = add <2 x i64> %vec.phi141, %i.qf        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qi = icmp eq i64 %index.next, %n.vec
  br i1 %i.qi, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.qh, %i.qg
  %i.qj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.px, %n.vec
  br i1 %cmp.n, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i238.i.preheader

.lr.ph.i.i4.i.i.i238.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i237.i, %middle.block
  %.08.i.i.i.i.i239.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i237.i ], [ %i.qj, %middle.block ]
  %.057.i.i.i.i.i240.i.ph = phi ptr [ %i.pi, %.lr.ph.i.i4.preheader.i.i.i237.i ], [ %i.pz, %middle.block ]
  br label %.lr.ph.i.i4.i.i.i238.i

.lr.ph.i.i4.i.i.i238.i:                           ; preds = %.lr.ph.i.i4.i.i.i238.i.preheader, %.lr.ph.i.i4.i.i.i238.i
  %.08.i.i.i.i.i239.i = phi i64 [ %spec.select.i.i.i.i.i242.i, %.lr.ph.i.i4.i.i.i238.i ], [ %.08.i.i.i.i.i239.i.ph, %.lr.ph.i.i4.i.i.i238.i.preheader ]
  %.057.i.i.i.i.i240.i = phi ptr [ %i.qm, %.lr.ph.i.i4.i.i.i238.i ], [ %.057.i.i.i.i.i240.i.ph, %.lr.ph.i.i4.i.i.i238.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i241.i = load double, ptr %.057.i.i.i.i.i240.i, align 8, !tbaa !317, !noalias !314
  %i.qk = fcmp une double %.05.val.i.i.i.i.i241.i, 0.000000e+00
  %i.ql = zext i1 %i.qk to i64
  %spec.select.i.i.i.i.i242.i = add nuw nsw i64 %.08.i.i.i.i.i239.i, %i.ql ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i240.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i243.i = icmp eq ptr %i.qm, %i.pt
  br i1 %.not.i.i.i.i.i243.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i238.i, !llvm.loop !320

bb.ak:                                            ; preds = %.noexc17
  %i.qn = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10DoubleTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !314
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

.invoke:                                          ; preds = %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_114NonZeroCounter5VisitERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.av

bb.al:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.av

_ZN5arrow6StatusD2Ev.exit.sink.split:             ; preds = %.lr.ph.i.i4.i.i.i238.i, %.lr.ph.i.i4.i.i.i225.i, %.lr.ph.i.i4.i.i.i209.i, %.lr.ph.i.i4.i.i.i193.i, %.lr.ph.i.i4.i.i.i177.i, %.lr.ph.i.i4.i.i.i161.i, %.lr.ph.i.i4.i.i.i145.i, %.lr.ph.i.i4.i.i.i129.i, %.lr.ph.i.i4.i.i.i113.i, %.lr.ph.i.i4.i.i.i98.i, %.lr.ph.i.i4.i.i.i.i, %middle.block, %middle.block156, %middle.block174, %middle.block192, %middle.block210, %middle.block228, %middle.block246, %middle.block264, %middle.block282, %middle.block300, %middle.block318, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, %bb.ak, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, %bb.ah, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, %bb.ae, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, %bb.ab, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, %bb.y, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, %bb.v, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, %bb.s, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, %bb.p, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, %bb.m, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, %bb.j, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i, %bb.g
  %.sroa.15.0.ph = phi i64 [ %spec.select.i.i.i.i.i166.i, %.lr.ph.i.i4.i.i.i161.i ], [ %spec.select.i.i.i.i.i150.i, %.lr.ph.i.i4.i.i.i145.i ], [ %spec.select.i.i.i.i.i134.i, %.lr.ph.i.i4.i.i.i129.i ], [ %spec.select.i.i.i.i.i118.i, %.lr.ph.i.i4.i.i.i113.i ], [ %spec.select.i.i.i.i.i103.i, %.lr.ph.i.i4.i.i.i98.i ], [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %spec.select.i.i.i.i.i227.i, %.lr.ph.i.i4.i.i.i225.i ], [ %spec.select.i.i.i.i.i214.i, %.lr.ph.i.i4.i.i.i209.i ], [ %spec.select.i.i.i.i.i198.i, %.lr.ph.i.i4.i.i.i193.i ], [ %spec.select.i.i.i.i.i182.i, %.lr.ph.i.i4.i.i.i177.i ], [ %i.aw, %bb.g ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i ], [ %i.cg, %bb.j ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i ], [ %i.dv, %bb.m ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i ], [ %i.fk, %bb.p ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i ], [ %i.gz, %bb.s ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i ], [ %i.io, %bb.v ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i ], [ %i.kd, %bb.y ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i ], [ %i.ls, %bb.ab ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i ], [ %i.nh, %bb.ae ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i ], [ %i.ox, %bb.ah ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i ], [ %i.qn, %bb.ak ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i ], [ %i.at, %middle.block318 ], [ %i.cd, %middle.block300 ], [ %i.ds, %middle.block282 ], [ %i.fh, %middle.block264 ], [ %i.gw, %middle.block246 ], [ %i.il, %middle.block228 ], [ %i.ka, %middle.block210 ], [ %i.lp, %middle.block192 ], [ %i.ne, %middle.block174 ], [ %i.ot, %middle.block156 ], [ %i.qj, %middle.block ], [ %spec.select.i.i.i.i.i242.i, %.lr.ph.i.i4.i.i.i238.i ]
  store ptr null, ptr %3, align 8, !tbaa !18, !alias.scope !255
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.invoke, %_ZN5arrow6StatusD2Ev.exit.sink.split, %bb.al
  %.sroa.15.0 = phi i64 [ 0, %.invoke ], [ %.sroa.15.0.ph, %_ZN5arrow6StatusD2Ev.exit.sink.split ], [ 0, %bb.al ]
  %i.qo = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  store ptr %i.qo, ptr %2, align 8, !tbaa !18
  store ptr null, ptr %3, align 8, !tbaa !18
  %i.qp = load ptr, ptr %i.c, align 8, !tbaa !109 ; 8 uses
  %.not.i.i = icmp eq ptr %i.qp, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8 ; 4 uses
  %i.qr = load atomic i64, ptr %i.qq acquire, align 8 ; 2 uses
  %i.qs = icmp eq i64 %i.qr, 4294967297
  %i.qt = trunc i64 %i.qr to i32                  ; 2 uses
  br i1 %i.qs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.qq, align 8, !tbaa !111
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qp, i64 12
  store i32 0, ptr %i.qu, align 4, !tbaa !113
  %i.qv = load ptr, ptr %i.qp, align 8, !tbaa !7
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(16) %i.qp) #22, !inline_history !145
  %i.qy = load ptr, ptr %i.qp, align 8, !tbaa !7
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8
  call void %i.ra(ptr noundef nonnull align 8 dereferenceable(16) %i.qp) #22, !inline_history !145
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.ao:                                            ; preds = %bb.am
  %i.rb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i = icmp eq i8 %i.rb, 0
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rc = add nsw i32 %i.qt, -1
  store i32 %i.rc, ptr %i.qq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.rd = atomicrmw volatile add ptr %i.qq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i = phi i32 [ %i.qt, %bb.ap ], [ %i.rd, %bb.aq ]
  %i.re = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.re, label %bb.ar, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, !prof !110

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qp) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.an
  %.pr = load ptr, ptr %2, align 8, !tbaa !18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, %_ZN5arrow6StatusD2Ev.exit
  %i.rf = phi ptr [ %.pr, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split ], [ %i.qo, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %_ZN5arrow6StatusD2Ev.exit56, label %bb.as, !prof !42

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  %i.rh = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %.not.i51 = icmp eq ptr %i.rh, null
  br i1 %.not.i51, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.at, !prof !42

bb.at:                                            ; preds = %bb.as
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !43, !range !53, !noundef !54
  %i.rk = trunc nuw i8 %i.rj to i1
  br i1 %i.rk, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  br label %_ZN5arrow6StatusD2Ev.exit52

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.aw

bb.av:                                            ; preds = %.invoke, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.rl

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr null, ptr %0, align 8, !tbaa !18
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.0, ptr %i.rm, align 8, !tbaa !14
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
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultIlEC2ERKNS_6StatusE:bb.a
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6TensorD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6TensorE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !81
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !174

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !175
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIlSaIlEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit3

_ZNSt6vectorIlSaIlEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !109 ; 8 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ag, align 8, !tbaa !111
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !113
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22, !inline_history !186
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22, !inline_history !186
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i4 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.h ], [ %i.at, %bb.i ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit3, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ax, align 8, !tbaa !111
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !113
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !145
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !145
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i6 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.o:                                             ; preds = %bb.m
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i8 = phi i32 [ %i.ba, %bb.n ], [ %i.bk, %bb.o ]
  %i.bl = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.bl, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6TensorD0Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6TensorD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #25
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE14_M_fill_assignEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.i, label %bb.c, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load i64, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.n = add nsw i64 %i.j, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.n, 24
  br i1 %min.iters.check52, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %n.vec55 = and i64 %i.p, 4611686018427387900    ; 3 uses
  %i.q = shl i64 %n.vec55, 3
  %i.r = getelementptr i8, ptr %i.k, i64 %i.q
  %broadcast.splatinsert56 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat57 = shufflevector <2 x i64> %broadcast.splatinsert56, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph53
  %index59 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body58 ] ; 2 uses
  %i.s = shl i64 %index59, 3
  %next.gep60 = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x i64> %broadcast.splat57, ptr %next.gep60, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat57, ptr %i.t, align 8, !tbaa !14
  %index.next61 = add nuw i64 %index59, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next61, %n.vec55
  br i1 %i.u, label %middle.block62, label %vector.body58, !llvm.loop !321

middle.block62:                                   ; preds = %vector.body58
  %cmp.n63 = icmp eq i64 %i.p, %n.vec55
  br i1 %cmp.n63, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %middle.block62
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.r, %middle.block62 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.m, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !322

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block62
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !13
  store ptr %i.l, ptr %i.x, align 8, !tbaa !9
  store ptr %i.w, ptr %i.a, align 8, !tbaa !24
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9    ; 8 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %2, align 8, !tbaa !14    ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.z
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.af = sub i64 %i.aa, %i.e
  %i.ag = add i64 %i.af, -8                       ; 2 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.ag, 24
  br i1 %min.iters.check24, label %.lr.ph.i.i.i.i.preheader65, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec27 = and i64 %i.ai, 4611686018427387900   ; 3 uses
  %i.aj = shl i64 %n.vec27, 3
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.aj
  %broadcast.splatinsert28 = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat29 = shufflevector <2 x i64> %broadcast.splatinsert28, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph25
  %index31 = phi i64 [ 0, %vector.ph25 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.al = shl i64 %index31, 3
  %next.gep32 = getelementptr i8, ptr %i.c, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep32, i64 16
  store <2 x i64> %broadcast.splat29, ptr %next.gep32, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat29, ptr %i.am, align 8, !tbaa !14
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next33, %n.vec27
  br i1 %i.an, label %middle.block34, label %vector.body30, !llvm.loop !323

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %i.ai, %n.vec27
  br i1 %cmp.n35, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader65

.lr.ph.i.i.i.i.preheader65:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block34
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block34 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader65, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 2 uses
  store i64 %i.ae, ptr %.06.i.i.i.i, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ao, %i.z
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !324

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block34
  %.pre = load i64, ptr %2, align 8, !tbaa !14
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit, %bb.f
  %i.ap = phi i64 [ %.pre, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit.loopexit ], [ %i.ae, %bb.f ] ; 2 uses
  %i.aq = sub i64 %1, %i.ac
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.as = shl i64 %1, 3
  %i.at = sub i64 %i.as, %i.ab
  %i.au = add i64 %i.at, -8                       ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.au, 24
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit
  %n.vec41 = and i64 %i.aw, 4611686018427387900   ; 3 uses
  %i.ax = shl i64 %n.vec41, 3
  %i.ay = getelementptr i8, ptr %i.z, i64 %i.ax
  %broadcast.splatinsert42 = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat43 = shufflevector <2 x i64> %broadcast.splatinsert42, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph39
  %index45 = phi i64 [ 0, %vector.ph39 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.az = shl i64 %index45, 3
  %next.gep46 = getelementptr i8, ptr %i.z, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x i64> %broadcast.splat43, ptr %next.gep46, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat43, ptr %i.ba, align 8, !tbaa !14
  %index.next47 = add nuw i64 %index45, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.bb, label %middle.block48, label %vector.body44, !llvm.loop !325

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.aw, %n.vec41
  br i1 %cmp.n49, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit, %middle.block48
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElEvT_S7_RKT0_.exit ], [ %i.ay, %middle.block48 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.ap, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ar
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !326

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block48
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !9
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = icmp eq i64 %1, 0
  br i1 %i.bd, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 3               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.bf = load i64, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.bg = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i12.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.bi, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.bj
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat, ptr %i.bm, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i64 %i.bf, ptr %.06.i.i.i.i13, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bo, %i.be
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !328

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.be, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.z, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !9
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA22_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(22) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !329
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !329
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332, !noalias !329, !nonnull !54, !align !342
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #22, !noalias !329
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !329 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
  %min.iters.check = icmp ugt i64 %i.ab, 3
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph18
  %n.vec = and i64 %i.ab, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !317
  %wide.load27 = load <2 x double>, ptr %i.ao, align 8, !tbaa !317
  %i.ap = fptoui <2 x double> %wide.load to <2 x i16>
  %i.aq = fptoui <2 x double> %wide.load27 to <2 x i16>
  %i.ar = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  store <2 x i16> %i.ap, ptr %i.ar, align 2, !tbaa !273
  store <2 x i16> %i.aq, ptr %i.as, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.ay, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.prol
  %i.av = load double, ptr %i.au, align 8, !tbaa !317
  %i.aw = fptoui double %i.av to i16
  %i.ax = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ax
  store i16 %i.aw, ptr %gep.prol, align 2, !tbaa !273
  %i.ay = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !633

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %i.az = sub nsw i64 %.01117.ph, %i.ab
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bu, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !317
  %i.bd = fptoui double %i.bc to i16
  %i.be = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.be
  store i16 %i.bd, ptr %gep, align 2, !tbaa !273
  %i.bf = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !317
  %i.bi = fptoui double %i.bh to i16
  %i.bj = mul nsw i64 %i.bf, %i.aj
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bj
  store i16 %i.bi, ptr %gep.1, align 2, !tbaa !273
  %i.bk = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !317
  %i.bn = fptoui double %i.bm to i16
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.2, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !317
  %i.bs = fptoui double %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.3, align 2, !tbaa !273
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !634

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.l ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !317
  %i.cx = fptoui double %i.cw to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi i16 [ %i.cx, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !203
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !207
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !209
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [2 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [2 x i8], ptr %i.dg, i64 %i.df
  store i16 %i.cy, ptr %i.dh, align 2, !tbaa !273
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !635

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !636
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorItE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !641, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !203 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 1
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 1
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !642
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !642
  %i.ao = sext <2 x i8> %wide.load to <2 x i16>
  %i.ap = sext <2 x i8> %wide.load40 to <2 x i16>
  %i.aq = getelementptr i8, ptr %next.gep, i64 4
  store <2 x i16> %i.ao, ptr %next.gep, align 2, !tbaa !273, !alias.scope !645, !noalias !642
  store <2 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !273, !alias.scope !645, !noalias !642
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !647

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !203, !alias.scope !648, !noalias !650
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = sext i8 %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !273
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !651

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = sext i8 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !273
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = sext i8 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !273
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = sext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 6 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bo, ptr %i.bl, align 2, !tbaa !273
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = sext i8 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bs, ptr %i.bp, align 2, !tbaa !273
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = sext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 10 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bw, ptr %i.bt, align 2, !tbaa !273
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = sext i8 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ca, ptr %i.bx, align 2, !tbaa !273
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = sext i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 14 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ce, ptr %i.cb, align 2, !tbaa !273
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = sext i8 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ci, ptr %i.cf, align 2, !tbaa !273
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !652

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = sext i8 %i.dm to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i16 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !641, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !203 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !203
  store i16 %i.do, ptr %i.dq, align 2, !tbaa !273
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !653

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !654
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorItE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !641, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !203 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 1
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 1
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !657
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !657
  %i.ao = zext <2 x i8> %wide.load to <2 x i16>
  %i.ap = zext <2 x i8> %wide.load40 to <2 x i16>
  %i.aq = getelementptr i8, ptr %next.gep, i64 4
  store <2 x i16> %i.ao, ptr %next.gep, align 2, !tbaa !273, !alias.scope !660, !noalias !657
  store <2 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !273, !alias.scope !660, !noalias !657
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !203, !alias.scope !663, !noalias !665
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = zext i8 %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !273
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !666

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = zext i8 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !273
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !273
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = zext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 6 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bo, ptr %i.bl, align 2, !tbaa !273
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bs, ptr %i.bp, align 2, !tbaa !273
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 10 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bw, ptr %i.bt, align 2, !tbaa !273
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ca, ptr %i.bx, align 2, !tbaa !273
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = zext i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 14 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ce, ptr %i.cb, align 2, !tbaa !273
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ci, ptr %i.cf, align 2, !tbaa !273
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !667

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = zext i8 %i.dm to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i16 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !641, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !203 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !203
  store i16 %i.do, ptr %i.dq, align 2, !tbaa !273
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !668

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !669
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorItE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.al = load double, ptr %i.ak, align 8, !tbaa !317
  %i.am = fptoui double %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !317
  %i.ax = fptoui double %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !773

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !317
  %i.ci = fptoui double %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !774

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !317
  %i.da = fptoui double %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !775
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !780, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !210 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 2
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !781
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !781
  %i.ao = sext <2 x i8> %wide.load to <2 x i32>
  %i.ap = sext <2 x i8> %wide.load40 to <2 x i32>
  %i.aq = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ao, ptr %next.gep, align 4, !tbaa !3, !alias.scope !784, !noalias !781
  store <2 x i32> %i.ap, ptr %i.aq, align 4, !tbaa !3, !alias.scope !784, !noalias !781
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !210, !alias.scope !787, !noalias !789
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = sext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !790

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = sext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = sext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = sext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = sext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = sext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = sext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = sext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = sext i8 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !791

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = sext i8 %i.dm to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i32 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !780, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !210 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !210
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !792

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !793
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !780, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !210 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 2
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !796
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !796
  %i.ao = zext <2 x i8> %wide.load to <2 x i32>
  %i.ap = zext <2 x i8> %wide.load40 to <2 x i32>
  %i.aq = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ao, ptr %next.gep, align 4, !tbaa !3, !alias.scope !799, !noalias !796
  store <2 x i32> %i.ap, ptr %i.aq, align 4, !tbaa !3, !alias.scope !799, !noalias !796
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !801

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !210, !alias.scope !802, !noalias !804
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !805

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = zext i8 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !806

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = zext i8 %i.dm to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i32 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !780, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !210 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !210
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !807

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !808
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorImE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !860, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !860, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !861, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !219
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !221
  %i.am = sext i32 %i.al to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ag, i64 %i.am
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph18, %bb.e
  %.01117 = phi i64 [ 0, %.lr.ph18 ], [ %i.ar, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.ao = load double, ptr %i.an, align 8, !tbaa !317
  %i.ap = fptoui double %i.ao to i64
  %i.aq = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aq
  store i64 %i.ap, ptr %gep, align 8, !tbaa !14
  %i.ar = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.as = load i64, ptr %i.aa, align 8, !tbaa !404
  %i.at = icmp slt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %.loopexit, !llvm.loop !912

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.au = phi ptr [ %i.aa, %.lr.ph ], [ %i.cj, %bb.m ]
  %i.av = phi ptr [ %i.z, %.lr.ph ], [ %i.ci, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %bb.m ] ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !425
  %i.bd = add nsw i64 %i.bc, %.016                ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !81
  %i.bh = trunc i64 %i.bd to i8
  %i.bi = and i8 %i.bh, 7
  %i.bj = lshr i8 %i.bg, %i.bi
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !55
  switch i32 %i.bn, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.bo = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 noundef %.016)
  br i1 %i.bo, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bp = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 noundef %.016)
  br i1 %i.bp, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.br = load atomic i64, ptr %i.bq seq_cst, align 8
  %i.bs = load i64, ptr %i.au, align 8, !tbaa !404
  %.not = icmp eq i64 %i.br, %i.bs
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.bt = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 noundef %.016)
  br i1 %i.bt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !317
  %i.bw = fptoui double %i.bv to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.bx = phi i64 [ %i.bw, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.by = load ptr, ptr %1, align 8, !tbaa !861, !nonnull !54, !align !342
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83
  %i.ca = load i32, ptr %i.ad, align 8, !tbaa !219
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %.016, %i.cb
  %i.cd = load i32, ptr %i.ae, align 4, !tbaa !221
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %i.bz, i64 %i.cc
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %i.ce
  store i64 %i.bx, ptr %i.cg, align 8, !tbaa !14
  %i.ch = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !860, !nonnull !54, !align !342 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !404
  %i.cl = icmp slt i64 %i.ch, %i.ck
  br i1 %i.cl, label %bb.f, label %.loopexit, !llvm.loop !913

.loopexit:                                        ; preds = %bb.m, %bb.e, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !914
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorImE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !919, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 3
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 3
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !920
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !920
  %i.ao = sext <2 x i8> %wide.load to <2 x i64>
  %i.ap = sext <2 x i8> %wide.load40 to <2 x i64>
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ao, ptr %next.gep, align 8, !tbaa !14, !alias.scope !923, !noalias !920
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !14, !alias.scope !923, !noalias !920
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !925

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !83, !alias.scope !926, !noalias !928
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !929

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = sext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !930

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = sext i8 %i.dm to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i64 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !919, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !83
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !14
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !931

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !932
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorImE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !919, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 3
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 3
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !935
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !935
  %i.ao = zext <2 x i8> %wide.load to <2 x i64>
  %i.ap = zext <2 x i8> %wide.load40 to <2 x i64>
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ao, ptr %next.gep, align 8, !tbaa !14, !alias.scope !938, !noalias !935
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !14, !alias.scope !938, !noalias !935
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !940

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !83, !alias.scope !941, !noalias !943
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !944

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !945

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = zext i8 %i.dm to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i64 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !919, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !83
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !14
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !946

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !947
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorImE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
  %min.iters.check = icmp ugt i64 %i.ab, 3
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph18
  %n.vec = and i64 %i.ab, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !317
  %wide.load27 = load <2 x double>, ptr %i.ao, align 8, !tbaa !317
  %i.ap = fptosi <2 x double> %wide.load to <2 x i16>
  %i.aq = fptosi <2 x double> %wide.load27 to <2 x i16>
  %i.ar = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  store <2 x i16> %i.ap, ptr %i.ar, align 2, !tbaa !273
  store <2 x i16> %i.aq, ptr %i.as, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.ay, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.prol
  %i.av = load double, ptr %i.au, align 8, !tbaa !317
  %i.aw = fptosi double %i.av to i16
  %i.ax = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ax
  store i16 %i.aw, ptr %gep.prol, align 2, !tbaa !273
  %i.ay = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1197

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %i.az = sub nsw i64 %.01117.ph, %i.ab
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bu, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !317
  %i.bd = fptosi double %i.bc to i16
  %i.be = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.be
  store i16 %i.bd, ptr %gep, align 2, !tbaa !273
  %i.bf = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !317
  %i.bi = fptosi double %i.bh to i16
  %i.bj = mul nsw i64 %i.bf, %i.aj
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bj
  store i16 %i.bi, ptr %gep.1, align 2, !tbaa !273
  %i.bk = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !317
  %i.bn = fptosi double %i.bm to i16
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.2, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !317
  %i.bs = fptosi double %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.3, align 2, !tbaa !273
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1198

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.l ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !317
  %i.cx = fptosi double %i.cw to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi i16 [ %i.cx, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !203
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !225
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !227
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [2 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [2 x i8], ptr %i.dg, i64 %i.df
  store i16 %i.cy, ptr %i.dh, align 2, !tbaa !273
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1199

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1200
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !203 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 1
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 1
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1206
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1206
  %i.ao = sext <2 x i8> %wide.load to <2 x i16>
  %i.ap = sext <2 x i8> %wide.load40 to <2 x i16>
  %i.aq = getelementptr i8, ptr %next.gep, i64 4
  store <2 x i16> %i.ao, ptr %next.gep, align 2, !tbaa !273, !alias.scope !1209, !noalias !1206
  store <2 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !273, !alias.scope !1209, !noalias !1206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1211

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !203, !alias.scope !1212, !noalias !1214
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = sext i8 %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !273
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1215

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = sext i8 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !273
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = sext i8 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !273
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = sext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 6 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bo, ptr %i.bl, align 2, !tbaa !273
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = sext i8 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bs, ptr %i.bp, align 2, !tbaa !273
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = sext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 10 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bw, ptr %i.bt, align 2, !tbaa !273
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = sext i8 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ca, ptr %i.bx, align 2, !tbaa !273
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = sext i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 14 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ce, ptr %i.cb, align 2, !tbaa !273
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = sext i8 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ci, ptr %i.cf, align 2, !tbaa !273
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !1216

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = sext i8 %i.dm to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i16 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !203 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !203
  store i16 %i.do, ptr %i.dq, align 2, !tbaa !273
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !1217

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1218
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !203 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 1
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 1
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1221
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1221
  %i.ao = zext <2 x i8> %wide.load to <2 x i16>
  %i.ap = zext <2 x i8> %wide.load40 to <2 x i16>
  %i.aq = getelementptr i8, ptr %next.gep, i64 4
  store <2 x i16> %i.ao, ptr %next.gep, align 2, !tbaa !273, !alias.scope !1224, !noalias !1221
  store <2 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !273, !alias.scope !1224, !noalias !1221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1226

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !203, !alias.scope !1227, !noalias !1229
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = zext i8 %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !273
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1230

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = zext i8 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !273
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !273
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = zext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 6 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bo, ptr %i.bl, align 2, !tbaa !273
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bs, ptr %i.bp, align 2, !tbaa !273
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 10 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.bw, ptr %i.bt, align 2, !tbaa !273
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ca, ptr %i.bx, align 2, !tbaa !273
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = zext i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 14 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ce, ptr %i.cb, align 2, !tbaa !273
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !203
  store i16 %i.ci, ptr %i.cf, align 2, !tbaa !273
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !1231

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = zext i8 %i.dm to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i16 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !203 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !203
  store i16 %i.do, ptr %i.dq, align 2, !tbaa !273
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !1232

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.al = load double, ptr %i.ak, align 8, !tbaa !317
  %i.am = fptosi double %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !317
  %i.ax = fptosi double %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1340

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !317
  %i.ci = fptosi double %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1341

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !317
  %i.da = fptosi double %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1342
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !210 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 2
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1348
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1348
  %i.ao = sext <2 x i8> %wide.load to <2 x i32>
  %i.ap = sext <2 x i8> %wide.load40 to <2 x i32>
  %i.aq = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ao, ptr %next.gep, align 4, !tbaa !3, !alias.scope !1351, !noalias !1348
  store <2 x i32> %i.ap, ptr %i.aq, align 4, !tbaa !3, !alias.scope !1351, !noalias !1348
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1353

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !210, !alias.scope !1354, !noalias !1356
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = sext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1357

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = sext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = sext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = sext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = sext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = sext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = sext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = sext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = sext i8 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !1358

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = sext i8 %i.dm to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i32 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !210 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !210
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !1359

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1360
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !210 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 2
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1363
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1363
  %i.ao = zext <2 x i8> %wide.load to <2 x i32>
  %i.ap = zext <2 x i8> %wide.load40 to <2 x i32>
  %i.aq = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ao, ptr %next.gep, align 4, !tbaa !3, !alias.scope !1366, !noalias !1363
  store <2 x i32> %i.ap, ptr %i.aq, align 4, !tbaa !3, !alias.scope !1366, !noalias !1363
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1368

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !210, !alias.scope !1369, !noalias !1371
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1372

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = zext i8 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !210
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !1373

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = zext i8 %i.dm to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i32 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !210 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !210
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !1374

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1375
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIlE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1428, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1428, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1429, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !231
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !233
  %i.am = sext i32 %i.al to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ag, i64 %i.am
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph18, %bb.e
  %.01117 = phi i64 [ 0, %.lr.ph18 ], [ %i.ar, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.ao = load double, ptr %i.an, align 8, !tbaa !317
  %i.ap = fptosi double %i.ao to i64
  %i.aq = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aq
  store i64 %i.ap, ptr %gep, align 8, !tbaa !14
  %i.ar = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.as = load i64, ptr %i.aa, align 8, !tbaa !404
  %i.at = icmp slt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %.loopexit, !llvm.loop !1480

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.au = phi ptr [ %i.aa, %.lr.ph ], [ %i.cj, %bb.m ]
  %i.av = phi ptr [ %i.z, %.lr.ph ], [ %i.ci, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %bb.m ] ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !425
  %i.bd = add nsw i64 %i.bc, %.016                ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !81
  %i.bh = trunc i64 %i.bd to i8
  %i.bi = and i8 %i.bh, 7
  %i.bj = lshr i8 %i.bg, %i.bi
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !55
  switch i32 %i.bn, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.bo = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 noundef %.016)
  br i1 %i.bo, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bp = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 noundef %.016)
  br i1 %i.bp, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.br = load atomic i64, ptr %i.bq seq_cst, align 8
  %i.bs = load i64, ptr %i.au, align 8, !tbaa !404
  %.not = icmp eq i64 %i.br, %i.bs
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.bt = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 noundef %.016)
  br i1 %i.bt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !317
  %i.bw = fptosi double %i.bv to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.bx = phi i64 [ %i.bw, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.by = load ptr, ptr %1, align 8, !tbaa !1429, !nonnull !54, !align !342
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83
  %i.ca = load i32, ptr %i.ad, align 8, !tbaa !231
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %.016, %i.cb
  %i.cd = load i32, ptr %i.ae, align 4, !tbaa !233
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %i.bz, i64 %i.cc
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %i.ce
  store i64 %i.bx, ptr %i.cg, align 8, !tbaa !14
  %i.ch = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !1428, !nonnull !54, !align !342 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !404
  %i.cl = icmp slt i64 %i.ch, %i.ck
  br i1 %i.cl, label %bb.f, label %.loopexit, !llvm.loop !1481

.loopexit:                                        ; preds = %bb.m, %bb.e, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1482
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIlE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 3
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 3
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1488
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1488
  %i.ao = sext <2 x i8> %wide.load to <2 x i64>
  %i.ap = sext <2 x i8> %wide.load40 to <2 x i64>
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ao, ptr %next.gep, align 8, !tbaa !14, !alias.scope !1491, !noalias !1488
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !14, !alias.scope !1491, !noalias !1488
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1493

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !83, !alias.scope !1494, !noalias !1496
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1497

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = sext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !1498

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = sext i8 %i.dm to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i64 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !83
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !14
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !1499

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1500
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIlE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 3
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 3
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1503
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1503
  %i.ao = zext <2 x i8> %wide.load to <2 x i64>
  %i.ap = zext <2 x i8> %wide.load40 to <2 x i64>
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ao, ptr %next.gep, align 8, !tbaa !14, !alias.scope !1506, !noalias !1503
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !14, !alias.scope !1506, !noalias !1503
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1508

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !83, !alias.scope !1509, !noalias !1511
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1512

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.cj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01320 = phi ptr [ %i.ck, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8, !tbaa !83
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.ck, %i.ag
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !1513

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cl = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ]
  %i.cm = phi ptr [ %i.dt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ds, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !425
  %i.cu = add nsw i64 %i.ct, %.018                ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  switch i32 %i.de, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.df, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.di = load atomic i64, ptr %i.dh seq_cst, align 8
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.di, %i.dj
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dk = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, i64 noundef %.018)
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = zext i8 %i.dm to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.do = phi i64 [ %i.dn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dp = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !83
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !14
  %i.ds = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !404
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.loopexit, !llvm.loop !1514

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1515
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIlE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
  %min.iters.check = icmp ugt i64 %i.ab, 3
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph18
  %n.vec = and i64 %i.ab, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !317
  %wide.load27 = load <2 x double>, ptr %i.ao, align 8, !tbaa !317
  %i.ap = fptrunc <2 x double> %wide.load to <2 x float>
  %i.aq = fptrunc <2 x double> %wide.load27 to <2 x float>
  %i.ar = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  store <2 x float> %i.ap, ptr %i.ar, align 4, !tbaa !310
  store <2 x float> %i.aq, ptr %i.as, align 4, !tbaa !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.ay, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.prol
  %i.av = load double, ptr %i.au, align 8, !tbaa !317
  %i.aw = fptrunc double %i.av to float
  %i.ax = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ax
  store float %i.aw, ptr %gep.prol, align 4, !tbaa !310
  %i.ay = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1644

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %i.az = sub nsw i64 %.01117.ph, %i.ab
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bu, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !317
  %i.bd = fptrunc double %i.bc to float
  %i.be = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.be
  store float %i.bd, ptr %gep, align 4, !tbaa !310
  %i.bf = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !317
  %i.bi = fptrunc double %i.bh to float
  %i.bj = mul nsw i64 %i.bf, %i.aj
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bj
  store float %i.bi, ptr %gep.1, align 4, !tbaa !310
  %i.bk = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !317
  %i.bn = fptrunc double %i.bm to float
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bo
  store float %i.bn, ptr %gep.2, align 4, !tbaa !310
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !317
  %i.bs = fptrunc double %i.br to float
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  store float %i.bs, ptr %gep.3, align 4, !tbaa !310
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1645

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.l ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !317
  %i.cx = fptrunc double %i.cw to float
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi float [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !234
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !238
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !240
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store float %i.cy, ptr %i.dh, align 4, !tbaa !310
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1646

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1647
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1652, !nonnull !54, !align !342 ; 10 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !234 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 2
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1653
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1653
  %i.ao = sitofp <2 x i8> %wide.load to <2 x float>
  %i.ap = sitofp <2 x i8> %wide.load40 to <2 x float>
  %i.aq = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.ao, ptr %next.gep, align 4, !tbaa !310, !alias.scope !1656, !noalias !1653
  store <2 x float> %i.ap, ptr %i.aq, align 4, !tbaa !310, !alias.scope !1656, !noalias !1653
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1658

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !234, !alias.scope !1659, !noalias !1661
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = sitofp i8 %i.ay to float
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !234
  store float %i.az, ptr %i.ax, align 4, !tbaa !310
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1662

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.bt, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bu, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = sitofp i8 %i.bf to float
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !234
  store float %i.bg, ptr %i.be, align 4, !tbaa !310
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = sitofp i8 %i.bj to float
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !234
  store float %i.bk, ptr %i.bh, align 4, !tbaa !310
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = sitofp i8 %i.bn to float
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !234
  store float %i.bo, ptr %i.bl, align 4, !tbaa !310
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = sitofp i8 %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !234
  store float %i.bs, ptr %i.bp, align 4, !tbaa !310
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bu, %i.ag
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1663

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bv = phi ptr [ %i.de, %bb.l ], [ %i.ad, %.preheader ]
  %i.bw = phi ptr [ %i.dd, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dc, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.018                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.cs, %i.ct
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !81
  %i.cx = sitofp i8 %i.cw to float
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi float [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1652, !nonnull !54, !align !342 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !234 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !234
  store float %i.cy, ptr %i.da, align 4, !tbaa !310
  %i.dc = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !404
  %i.dg = icmp slt i64 %i.dc, %i.df
  br i1 %i.dg, label %.lr.ph, label %.loopexit, !llvm.loop !1664

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1665
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1652, !nonnull !54, !align !342 ; 10 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !234 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 2
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1668
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1668
  %i.ao = uitofp <2 x i8> %wide.load to <2 x float>
  %i.ap = uitofp <2 x i8> %wide.load40 to <2 x float>
  %i.aq = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.ao, ptr %next.gep, align 4, !tbaa !310, !alias.scope !1671, !noalias !1668
  store <2 x float> %i.ap, ptr %i.aq, align 4, !tbaa !310, !alias.scope !1671, !noalias !1668
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1673

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !234, !alias.scope !1674, !noalias !1676
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = uitofp i8 %i.ay to float
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !234
  store float %i.az, ptr %i.ax, align 4, !tbaa !310
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1677

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.bt, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bu, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = uitofp i8 %i.bf to float
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !234
  store float %i.bg, ptr %i.be, align 4, !tbaa !310
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = uitofp i8 %i.bj to float
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !234
  store float %i.bk, ptr %i.bh, align 4, !tbaa !310
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !234
  store float %i.bo, ptr %i.bl, align 4, !tbaa !310
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = uitofp i8 %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !234
  store float %i.bs, ptr %i.bp, align 4, !tbaa !310
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bu, %i.ag
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1678

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bv = phi ptr [ %i.de, %bb.l ], [ %i.ad, %.preheader ]
  %i.bw = phi ptr [ %i.dd, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dc, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.018                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.cs, %i.ct
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !81
  %i.cx = uitofp i8 %i.cw to float
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi float [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1652, !nonnull !54, !align !342 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !234 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !234
  store float %i.cy, ptr %i.da, align 4, !tbaa !310
  %i.dc = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !404
  %i.dg = icmp slt i64 %i.dc, %i.df
  br i1 %i.dg, label %.lr.ph, label %.loopexit, !llvm.loop !1679

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1680
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1650, !nonnull !54, !align !342
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 3
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 3
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.as, %i.aq
  %diff.check = icmp ugt i64 %i.at, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x double>, ptr %i.au, align 8, !tbaa !317
  %wide.load27 = load <2 x double>, ptr %i.av, align 8, !tbaa !317
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %wide.load, ptr %i.aw, align 8, !tbaa !317
  store <2 x double> %wide.load27, ptr %i.ax, align 8, !tbaa !317
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1814

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01117.prol
  %i.ba = load double, ptr %i.az, align 8, !tbaa !317
  %i.bb = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bb
  store double %i.ba, ptr %gep.prol, align 8, !tbaa !317
  %i.bc = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1815

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %.01117.ph, %i.ac
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bu, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01117
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !317
  %i.bh = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bh
  store double %i.bg, ptr %gep, align 8, !tbaa !317
  %i.bi = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !317
  %i.bl = mul nsw i64 %i.bi, %i.ak
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bl
  store double %i.bk, ptr %gep.1, align 8, !tbaa !317
  %i.bm = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !317
  %i.bp = mul nsw i64 %i.bm, %i.ak
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bp
  store double %i.bo, ptr %gep.2, align 8, !tbaa !317
  %i.bq = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !317
  %i.bt = mul nsw i64 %i.bq, %i.ak
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  store double %i.bs, ptr %gep.3, align 8, !tbaa !317
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1816

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.ab, %.lr.ph ], [ %i.dj, %bb.l ]
  %i.bw = phi ptr [ %i.aa, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.016
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !317
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cx = phi double [ %i.cw, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cy = load ptr, ptr %1, align 8, !tbaa !1734, !nonnull !54, !align !342
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !241
  %i.da = load i32, ptr %i.ae, align 8, !tbaa !245
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %.016, %i.db
  %i.dd = load i32, ptr %i.af, align 4, !tbaa !247
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [8 x i8], ptr %i.cz, i64 %i.dc
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  store double %i.cx, ptr %i.dg, align 8, !tbaa !317
  %i.dh = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !404
  %i.dl = icmp slt i64 %i.dh, %i.dk
  br i1 %i.dl, label %bb.e, label %.loopexit, !llvm.loop !1817

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1818
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1823, !nonnull !54, !align !342 ; 10 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !241 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 3
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 3
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1824
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1824
  %i.ao = sitofp <2 x i8> %wide.load to <2 x double>
  %i.ap = sitofp <2 x i8> %wide.load40 to <2 x double>
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.ao, ptr %next.gep, align 8, !tbaa !317, !alias.scope !1827, !noalias !1824
  store <2 x double> %i.ap, ptr %i.aq, align 8, !tbaa !317, !alias.scope !1827, !noalias !1824
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1829

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !241, !alias.scope !1830, !noalias !1832
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = sitofp i8 %i.ay to double
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !241
  store double %i.az, ptr %i.ax, align 8, !tbaa !317
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1833

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.bt, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bu, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = sitofp i8 %i.bf to double
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !241
  store double %i.bg, ptr %i.be, align 8, !tbaa !317
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = sitofp i8 %i.bj to double
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !241
  store double %i.bk, ptr %i.bh, align 8, !tbaa !317
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = sitofp i8 %i.bn to double
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !241
  store double %i.bo, ptr %i.bl, align 8, !tbaa !317
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = sitofp i8 %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !241
  store double %i.bs, ptr %i.bp, align 8, !tbaa !317
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bu, %i.ag
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1834

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bv = phi ptr [ %i.de, %bb.l ], [ %i.ad, %.preheader ]
  %i.bw = phi ptr [ %i.dd, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dc, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.018                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.cs, %i.ct
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !81
  %i.cx = sitofp i8 %i.cw to double
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi double [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1823, !nonnull !54, !align !342 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !241 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !241
  store double %i.cy, ptr %i.da, align 8, !tbaa !317
  %i.dc = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !404
  %i.dg = icmp slt i64 %i.dc, %i.df
  br i1 %i.dg, label %.lr.ph, label %.loopexit, !llvm.loop !1835

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1836
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %4 = ptrtoint ptr %i.k to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1823, !nonnull !54, !align !342 ; 10 uses
  %.promoted = load ptr, ptr %i.ah, align 8, !tbaa !241 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = shl i64 %i.i, 3
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.ai ; 2 uses
  %bound0 = icmp ult ptr %i.ah, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ah, %i.ag
  %bound132 = icmp ult ptr %i.m, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ag
  %bound135 = icmp ult ptr %i.m, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.aj = shl i64 %n.vec, 3
  %i.ak = getelementptr i8, ptr %.promoted, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.am ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1839
  %wide.load40 = load <2 x i8>, ptr %i.an, align 1, !tbaa !81, !alias.scope !1839
  %i.ao = uitofp <2 x i8> %wide.load to <2 x double>
  %i.ap = uitofp <2 x i8> %wide.load40 to <2 x double>
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.ao, ptr %next.gep, align 8, !tbaa !317, !alias.scope !1842, !noalias !1839
  store <2 x double> %i.ap, ptr %i.aq, align 8, !tbaa !317, !alias.scope !1842, !noalias !1839
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1844

middle.block:                                     ; preds = %vector.body
  %i.as = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !241, !alias.scope !1845, !noalias !1847
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.ak, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph21 ], [ %i.al, %middle.block ] ; 3 uses
  %i.au = add i64 %i.l, %i.i
  %i.av = add i64 %i.au, %4                       ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.aw = sub i64 %i.av, %.01320.ph43
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi ptr [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.az = uitofp i8 %i.ay to double
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !241
  store double %i.az, ptr %i.ax, align 8, !tbaa !317
  %i.bb = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1848

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub i64 %.01320.ph43, %i.av
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi ptr [ %i.bt, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bu, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bf = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bg = uitofp i8 %i.bf to double
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !241
  store double %i.bg, ptr %i.be, align 8, !tbaa !317
  %i.bi = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = uitofp i8 %i.bj to double
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !241
  store double %i.bk, ptr %i.bh, align 8, !tbaa !317
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = uitofp i8 %i.bn to double
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !241
  store double %i.bo, ptr %i.bl, align 8, !tbaa !317
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = uitofp i8 %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !241
  store double %i.bs, ptr %i.bp, align 8, !tbaa !317
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bu, %i.ag
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1849

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bv = phi ptr [ %i.de, %bb.l ], [ %i.ad, %.preheader ]
  %i.bw = phi ptr [ %i.dd, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dc, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.018                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.cs, %i.ct
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.018)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !81
  %i.cx = uitofp i8 %i.cw to double
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi double [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1823, !nonnull !54, !align !342 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !241 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !241
  store double %i.cy, ptr %i.da, align 8, !tbaa !317
  %i.dc = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !404
  %i.dg = icmp slt i64 %i.dc, %i.df
  br i1 %i.dg, label %.lr.ph, label %.loopexit, !llvm.loop !1850

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1851
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
end_hunk_9
