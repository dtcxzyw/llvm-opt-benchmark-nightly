Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/tensor?download=true
inline.NumInlined: 5130
inline.NumDeleted: 1400
loop-unroll.NumRuntimeUnrolled: 144
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZNK5arrow6Tensor15is_column_majorEv:bb.a

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.pr.pre.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = load ptr, ptr %1, align 8, !tbaa !21     ; 5 uses
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
  %i.w = load ptr, ptr %1, align 8, !tbaa !21     ; 3 uses
  %.not.i.i.i9.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i9.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit10.i, label %bb.j

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i:      ; preds = %bb.g, %bb.f, %bb.e, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.x = phi ptr [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ %.pr.pre.i, %_ZN5arrow6StatusD2Ev.exit.thread.i ] ; 3 uses
  %.07.i = phi i1 [ false, %bb.e ], [ true, %bb.f ], [ %.not9.i.i.i.i.i.i, %bb.g ], [ false, %_ZN5arrow6StatusD2Ev.exit.thread.i ]
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_126IsTensorStridesColumnMajorERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_.exit, label %bb.i

bb.i:                                             ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZN5arrow12_GLOBAL__N_126IsTensorStridesColumnMajorERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !62
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
define void @_ZNK5arrow6Tensor12CountNonZeroEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.67") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33, !noalias !411 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !33, !alias.scope !411
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81, !noalias !411 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !81, !alias.scope !411
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow6Tensor4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64, !noalias !411
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !14, !noalias !411
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !14, !noalias !411
  br label %_ZNK5arrow6Tensor4typeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !411 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !33
  br label %_ZNK5arrow6Tensor4typeEv.exit

_ZNK5arrow6Tensor4typeEv.exit:                    ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !62, !noalias !412
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68, !noalias !413 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !94, !range !45, !noalias !413, !noundef !46
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !413
  %i.x = select i1 %i.u, ptr %i.w, ptr null, !prof !34 ; 6 uses
  %5 = ptrtoaddr ptr %i.x to i64
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !65, !noalias !413 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65, !noalias !413 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i.i:     ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  br label %.lr.ph.i.i4.preheader.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ 1, %bb.f ]
  %.sroa.02.05.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.02.05.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !413
  %i.ae = mul nsw i64 %i.ad, %.06.i.i.i.i.i.i     ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.aa
  br i1 %i.ag, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 %i.ae
  %.not7.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i.i

.lr.ph.i.i4.preheader.i.i.i.i:                    ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i.i
  %i.ai = phi ptr [ %i.ac, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i.i ], [ %i.ah, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i ] ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %5                       ; 3 uses
  %min.iters.check297 = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check297, label %.lr.ph.i.i4.i.i.i.i.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i.i
  %n.vec299 = and i64 %i.ak, -4                   ; 3 uses
  %i.al = getelementptr i8, ptr %i.x, i64 %n.vec299
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next307, %vector.body300 ] ; 2 uses
  %vec.phi302 = phi <2 x i64> [ zeroinitializer, %vector.ph298 ], [ %i.ar, %vector.body300 ]
  %vec.phi303 = phi <2 x i64> [ zeroinitializer, %vector.ph298 ], [ %i.as, %vector.body300 ]
  %next.gep304 = getelementptr i8, ptr %i.x, i64 %index301 ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep304, i64 2
  %wide.load305 = load <2 x i8>, ptr %next.gep304, align 1, !tbaa !64, !noalias !413
  %wide.load306 = load <2 x i8>, ptr %i.am, align 1, !tbaa !64, !noalias !413
  %i.an = icmp ne <2 x i8> %wide.load305, zeroinitializer
  %i.ao = icmp ne <2 x i8> %wide.load306, zeroinitializer
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi302, %i.ap        ; 2 uses
  %i.as = add <2 x i64> %vec.phi303, %i.aq        ; 2 uses
  %index.next307 = add nuw i64 %index301, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next307, %n.vec299
  br i1 %i.at, label %middle.block308, label %vector.body300, !llvm.loop !369

middle.block308:                                  ; preds = %vector.body300
  %bin.rdx309 = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx309) ; 2 uses
  %cmp.n310 = icmp eq i64 %i.ak, %n.vec299
  br i1 %cmp.n310, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i.i.preheader

.lr.ph.i.i4.i.i.i.i.preheader:                    ; preds = %.lr.ph.i.i4.preheader.i.i.i.i, %middle.block308
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i.i ], [ %i.au, %middle.block308 ]
  %.058.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i4.preheader.i.i.i.i ], [ %i.al, %middle.block308 ]
  br label %.lr.ph.i.i4.i.i.i.i

.lr.ph.i.i4.i.i.i.i:                              ; preds = %.lr.ph.i.i4.i.i.i.i.preheader, %.lr.ph.i.i4.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i.i.preheader ]
  %.058.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i4.i.i.i.i ], [ %.058.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i.i = load i8, ptr %.058.i.i.i.i.i.i, align 1, !tbaa !64, !noalias !413
  %.not6.i.i.i.i.i.i = icmp ne i8 %.05.val.i.i.i.i.i.i, 0
  %i.av = zext i1 %.not6.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i = add nuw nsw i64 %.09.i.i.i.i.i.i, %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i.i, !llvm.loop !370

bb.g:                                             ; preds = %.noexc7
  %i.ax = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_8Int8TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !413
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
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !68, !noalias !414 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !94, !range !45, !noalias !414, !noundef !46
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !414
  %i.bi = select i1 %i.bf, ptr %i.bh, ptr null, !prof !34 ; 6 uses
  %6 = ptrtoaddr ptr %i.bi to i64
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !65, !noalias !414 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !65, !noalias !414 ; 2 uses
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i, label %.lr.ph.i.i.i.i.i92.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i:  ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  br label %.lr.ph.i.i4.preheader.i.i.i97.i

.lr.ph.i.i.i.i.i92.i:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i92.i
  %.06.i.i.i.i.i93.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i92.i ], [ 1, %bb.i ]
  %.sroa.02.05.i.i.i.i.i94.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i92.i ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = load i64, ptr %.sroa.02.05.i.i.i.i.i94.i, align 8, !tbaa !23, !noalias !414
  %i.bp = mul nsw i64 %i.bo, %.06.i.i.i.i.i93.i   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i94.i, i64 8 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bl
  br i1 %i.br, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, label %.lr.ph.i.i.i.i.i92.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i:          ; preds = %.lr.ph.i.i.i.i.i92.i
  %i.bs = getelementptr inbounds i8, ptr %i.bi, i64 %i.bp
  %.not7.i.i.i.i.i96.i = icmp eq i64 %i.bp, 0
  br i1 %.not7.i.i.i.i.i96.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i97.i

.lr.ph.i.i4.preheader.i.i.i97.i:                  ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i
  %i.bt = phi ptr [ %i.bn, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i105.i ], [ %i.bs, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i ] ; 2 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %6                       ; 3 uses
  %min.iters.check280 = icmp ult i64 %i.bv, 4
  br i1 %min.iters.check280, label %.lr.ph.i.i4.i.i.i98.i.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i97.i
  %n.vec282 = and i64 %i.bv, -4                   ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bi, i64 %n.vec282
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next290, %vector.body283 ] ; 2 uses
  %vec.phi285 = phi <2 x i64> [ zeroinitializer, %vector.ph281 ], [ %i.cc, %vector.body283 ]
  %vec.phi286 = phi <2 x i64> [ zeroinitializer, %vector.ph281 ], [ %i.cd, %vector.body283 ]
  %next.gep287 = getelementptr i8, ptr %i.bi, i64 %index284 ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep287, i64 2
  %wide.load288 = load <2 x i8>, ptr %next.gep287, align 1, !tbaa !64, !noalias !414
  %wide.load289 = load <2 x i8>, ptr %i.bx, align 1, !tbaa !64, !noalias !414
  %i.by = icmp ne <2 x i8> %wide.load288, zeroinitializer
  %i.bz = icmp ne <2 x i8> %wide.load289, zeroinitializer
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = zext <2 x i1> %i.bz to <2 x i64>
  %i.cc = add <2 x i64> %vec.phi285, %i.ca        ; 2 uses
  %i.cd = add <2 x i64> %vec.phi286, %i.cb        ; 2 uses
  %index.next290 = add nuw i64 %index284, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next290, %n.vec282
  br i1 %i.ce, label %middle.block291, label %vector.body283, !llvm.loop !373

middle.block291:                                  ; preds = %vector.body283
  %bin.rdx292 = add <2 x i64> %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx292) ; 2 uses
  %cmp.n293 = icmp eq i64 %i.bv, %n.vec282
  br i1 %cmp.n293, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i98.i.preheader

.lr.ph.i.i4.i.i.i98.i.preheader:                  ; preds = %.lr.ph.i.i4.preheader.i.i.i97.i, %middle.block291
  %.09.i.i.i.i.i99.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i97.i ], [ %i.cf, %middle.block291 ]
  %.058.i.i.i.i.i100.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i4.preheader.i.i.i97.i ], [ %i.bw, %middle.block291 ]
  br label %.lr.ph.i.i4.i.i.i98.i

.lr.ph.i.i4.i.i.i98.i:                            ; preds = %.lr.ph.i.i4.i.i.i98.i.preheader, %.lr.ph.i.i4.i.i.i98.i
  %.09.i.i.i.i.i99.i = phi i64 [ %spec.select.i.i.i.i.i103.i, %.lr.ph.i.i4.i.i.i98.i ], [ %.09.i.i.i.i.i99.i.ph, %.lr.ph.i.i4.i.i.i98.i.preheader ]
  %.058.i.i.i.i.i100.i = phi ptr [ %i.ch, %.lr.ph.i.i4.i.i.i98.i ], [ %.058.i.i.i.i.i100.i.ph, %.lr.ph.i.i4.i.i.i98.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i101.i = load i8, ptr %.058.i.i.i.i.i100.i, align 1, !tbaa !64, !noalias !414
  %.not6.i.i.i.i.i102.i = icmp ne i8 %.05.val.i.i.i.i.i101.i, 0
  %i.cg = zext i1 %.not6.i.i.i.i.i102.i to i64
  %spec.select.i.i.i.i.i103.i = add nuw nsw i64 %.09.i.i.i.i.i99.i, %i.cg ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i100.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i104.i = icmp eq ptr %i.ch, %i.bt
  br i1 %.not.i.i.i.i.i104.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i98.i, !llvm.loop !374

bb.j:                                             ; preds = %.noexc8
  %i.ci = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9UInt8TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !414
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
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !68, !noalias !415 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 9
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !94, !range !45, !noalias !415, !noundef !46
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !415
  %i.ct = select i1 %i.cq, ptr %i.cs, ptr null, !prof !34 ; 6 uses
  %7 = ptrtoaddr ptr %i.ct to i64
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !65, !noalias !415 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !65, !noalias !415 ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i, label %.lr.ph.i.i.i.i.i107.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i:  ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i112.i

.lr.ph.i.i.i.i.i107.i:                            ; preds = %bb.l, %.lr.ph.i.i.i.i.i107.i
  %.06.i.i.i.i.i108.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i107.i ], [ 1, %bb.l ]
  %.sroa.02.05.i.i.i.i.i109.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i107.i ], [ %i.cu, %bb.l ] ; 2 uses
  %i.cz = load i64, ptr %.sroa.02.05.i.i.i.i.i109.i, align 8, !tbaa !23, !noalias !415
  %i.da = mul nsw i64 %i.cz, %.06.i.i.i.i.i108.i  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i109.i, i64 8 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cw
  br i1 %i.dc, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, label %.lr.ph.i.i.i.i.i107.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i:         ; preds = %.lr.ph.i.i.i.i.i107.i
  %.idx.i.i.i.i = shl nsw i64 %i.da, 1
  %i.dd = getelementptr inbounds i8, ptr %i.ct, i64 %.idx.i.i.i.i
  %.not7.i.i.i.i.i111.i = icmp eq i64 %i.da, 0
  br i1 %.not7.i.i.i.i.i111.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i112.i

.lr.ph.i.i4.preheader.i.i.i112.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i
  %i.de = phi ptr [ %i.cy, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i120.i ], [ %i.dd, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i ] ; 2 uses
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = add i64 %i.df, -2
  %i.dh = sub i64 %i.dg, %7                       ; 2 uses
  %i.di = lshr i64 %i.dh, 1
  %i.dj = add nuw i64 %i.di, 1                    ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.dh, 6
  br i1 %min.iters.check263, label %.lr.ph.i.i4.i.i.i113.i.preheader, label %vector.ph264

vector.ph264:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i112.i
  %n.vec265 = and i64 %i.dj, -4                   ; 3 uses
  %i.dk = shl i64 %n.vec265, 1
  %i.dl = getelementptr i8, ptr %i.ct, i64 %i.dk
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph264
  %index267 = phi i64 [ 0, %vector.ph264 ], [ %index.next273, %vector.body266 ] ; 2 uses
  %vec.phi268 = phi <2 x i64> [ zeroinitializer, %vector.ph264 ], [ %i.ds, %vector.body266 ]
  %vec.phi269 = phi <2 x i64> [ zeroinitializer, %vector.ph264 ], [ %i.dt, %vector.body266 ]
  %i.dm = shl i64 %index267, 1
  %next.gep270 = getelementptr i8, ptr %i.ct, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep270, i64 4
  %wide.load271 = load <2 x i16>, ptr %next.gep270, align 2, !tbaa !153, !noalias !415
  %wide.load272 = load <2 x i16>, ptr %i.dn, align 2, !tbaa !153, !noalias !415
  %i.do = icmp ne <2 x i16> %wide.load271, zeroinitializer
  %i.dp = icmp ne <2 x i16> %wide.load272, zeroinitializer
  %i.dq = zext <2 x i1> %i.do to <2 x i64>
  %i.dr = zext <2 x i1> %i.dp to <2 x i64>
  %i.ds = add <2 x i64> %vec.phi268, %i.dq        ; 2 uses
  %i.dt = add <2 x i64> %vec.phi269, %i.dr        ; 2 uses
  %index.next273 = add nuw i64 %index267, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next273, %n.vec265
  br i1 %i.du, label %middle.block274, label %vector.body266, !llvm.loop !377

middle.block274:                                  ; preds = %vector.body266
  %bin.rdx275 = add <2 x i64> %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx275) ; 2 uses
  %cmp.n276 = icmp eq i64 %i.dj, %n.vec265
  br i1 %cmp.n276, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i113.i.preheader

.lr.ph.i.i4.i.i.i113.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i112.i, %middle.block274
  %.09.i.i.i.i.i114.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i112.i ], [ %i.dv, %middle.block274 ]
  %.058.i.i.i.i.i115.i.ph = phi ptr [ %i.ct, %.lr.ph.i.i4.preheader.i.i.i112.i ], [ %i.dl, %middle.block274 ]
  br label %.lr.ph.i.i4.i.i.i113.i

.lr.ph.i.i4.i.i.i113.i:                           ; preds = %.lr.ph.i.i4.i.i.i113.i.preheader, %.lr.ph.i.i4.i.i.i113.i
  %.09.i.i.i.i.i114.i = phi i64 [ %spec.select.i.i.i.i.i118.i, %.lr.ph.i.i4.i.i.i113.i ], [ %.09.i.i.i.i.i114.i.ph, %.lr.ph.i.i4.i.i.i113.i.preheader ]
  %.058.i.i.i.i.i115.i = phi ptr [ %i.dx, %.lr.ph.i.i4.i.i.i113.i ], [ %.058.i.i.i.i.i115.i.ph, %.lr.ph.i.i4.i.i.i113.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i116.i = load i16, ptr %.058.i.i.i.i.i115.i, align 2, !tbaa !153, !noalias !415
  %.not6.i.i.i.i.i117.i = icmp ne i16 %.05.val.i.i.i.i.i116.i, 0
  %i.dw = zext i1 %.not6.i.i.i.i.i117.i to i64
  %spec.select.i.i.i.i.i118.i = add nuw nsw i64 %.09.i.i.i.i.i114.i, %i.dw ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i115.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i119.i = icmp eq ptr %i.dx, %i.de
  br i1 %.not.i.i.i.i.i119.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i113.i, !llvm.loop !378

bb.m:                                             ; preds = %.noexc9
  %i.dy = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int16TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !415
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.n:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eb = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ea)
          to label %.noexc10 unwind label %bb.av

.noexc10:                                         ; preds = %bb.n
  br i1 %i.eb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc10
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !68, !noalias !416 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 9
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !94, !range !45, !noalias !416, !noundef !46
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !416
  %i.ej = select i1 %i.eg, ptr %i.ei, ptr null, !prof !34 ; 6 uses
  %8 = ptrtoaddr ptr %i.ej to i64
  %i.ek = load ptr, ptr %i.dz, align 8, !tbaa !65, !noalias !416 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !65, !noalias !416 ; 2 uses
  %i.en = icmp eq ptr %i.ek, %i.em
  br i1 %i.en, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i, label %.lr.ph.i.i.i.i.i122.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i:  ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i128.i

.lr.ph.i.i.i.i.i122.i:                            ; preds = %bb.o, %.lr.ph.i.i.i.i.i122.i
  %.06.i.i.i.i.i123.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i122.i ], [ 1, %bb.o ]
  %.sroa.02.05.i.i.i.i.i124.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i122.i ], [ %i.ek, %bb.o ] ; 2 uses
  %i.ep = load i64, ptr %.sroa.02.05.i.i.i.i.i124.i, align 8, !tbaa !23, !noalias !416
  %i.eq = mul nsw i64 %i.ep, %.06.i.i.i.i.i123.i  ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i124.i, i64 8 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.em
  br i1 %i.es, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, label %.lr.ph.i.i.i.i.i122.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i:         ; preds = %.lr.ph.i.i.i.i.i122.i
  %.idx.i.i.i126.i = shl nsw i64 %i.eq, 1
  %i.et = getelementptr inbounds i8, ptr %i.ej, i64 %.idx.i.i.i126.i
  %.not7.i.i.i.i.i127.i = icmp eq i64 %i.eq, 0
  br i1 %.not7.i.i.i.i.i127.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i128.i

.lr.ph.i.i4.preheader.i.i.i128.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i
  %i.eu = phi ptr [ %i.eo, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i136.i ], [ %i.et, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i ] ; 2 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64
  %i.ew = add i64 %i.ev, -2
  %i.ex = sub i64 %i.ew, %8                       ; 2 uses
  %i.ey = lshr i64 %i.ex, 1
  %i.ez = add nuw i64 %i.ey, 1                    ; 2 uses
  %min.iters.check246 = icmp ult i64 %i.ex, 6
  br i1 %min.iters.check246, label %.lr.ph.i.i4.i.i.i129.i.preheader, label %vector.ph247

vector.ph247:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i128.i
  %n.vec248 = and i64 %i.ez, -4                   ; 3 uses
  %i.fa = shl i64 %n.vec248, 1
  %i.fb = getelementptr i8, ptr %i.ej, i64 %i.fa
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next256, %vector.body249 ] ; 2 uses
  %vec.phi251 = phi <2 x i64> [ zeroinitializer, %vector.ph247 ], [ %i.fi, %vector.body249 ]
  %vec.phi252 = phi <2 x i64> [ zeroinitializer, %vector.ph247 ], [ %i.fj, %vector.body249 ]
  %i.fc = shl i64 %index250, 1
  %next.gep253 = getelementptr i8, ptr %i.ej, i64 %i.fc ; 2 uses
  %i.fd = getelementptr i8, ptr %next.gep253, i64 4
  %wide.load254 = load <2 x i16>, ptr %next.gep253, align 2, !tbaa !153, !noalias !416
  %wide.load255 = load <2 x i16>, ptr %i.fd, align 2, !tbaa !153, !noalias !416
  %i.fe = icmp ne <2 x i16> %wide.load254, zeroinitializer
  %i.ff = icmp ne <2 x i16> %wide.load255, zeroinitializer
  %i.fg = zext <2 x i1> %i.fe to <2 x i64>
  %i.fh = zext <2 x i1> %i.ff to <2 x i64>
  %i.fi = add <2 x i64> %vec.phi251, %i.fg        ; 2 uses
  %i.fj = add <2 x i64> %vec.phi252, %i.fh        ; 2 uses
  %index.next256 = add nuw i64 %index250, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next256, %n.vec248
  br i1 %i.fk, label %middle.block257, label %vector.body249, !llvm.loop !381

middle.block257:                                  ; preds = %vector.body249
  %bin.rdx258 = add <2 x i64> %i.fj, %i.fi
  %i.fl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx258) ; 2 uses
  %cmp.n259 = icmp eq i64 %i.ez, %n.vec248
  br i1 %cmp.n259, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i129.i.preheader

.lr.ph.i.i4.i.i.i129.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i128.i, %middle.block257
  %.09.i.i.i.i.i130.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i128.i ], [ %i.fl, %middle.block257 ]
  %.058.i.i.i.i.i131.i.ph = phi ptr [ %i.ej, %.lr.ph.i.i4.preheader.i.i.i128.i ], [ %i.fb, %middle.block257 ]
  br label %.lr.ph.i.i4.i.i.i129.i

.lr.ph.i.i4.i.i.i129.i:                           ; preds = %.lr.ph.i.i4.i.i.i129.i.preheader, %.lr.ph.i.i4.i.i.i129.i
  %.09.i.i.i.i.i130.i = phi i64 [ %spec.select.i.i.i.i.i134.i, %.lr.ph.i.i4.i.i.i129.i ], [ %.09.i.i.i.i.i130.i.ph, %.lr.ph.i.i4.i.i.i129.i.preheader ]
  %.058.i.i.i.i.i131.i = phi ptr [ %i.fn, %.lr.ph.i.i4.i.i.i129.i ], [ %.058.i.i.i.i.i131.i.ph, %.lr.ph.i.i4.i.i.i129.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i132.i = load i16, ptr %.058.i.i.i.i.i131.i, align 2, !tbaa !153, !noalias !416
  %.not6.i.i.i.i.i133.i = icmp ne i16 %.05.val.i.i.i.i.i132.i, 0
  %i.fm = zext i1 %.not6.i.i.i.i.i133.i to i64
  %spec.select.i.i.i.i.i134.i = add nuw nsw i64 %.09.i.i.i.i.i130.i, %i.fm ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i131.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i135.i = icmp eq ptr %i.fn, %i.eu
  br i1 %.not.i.i.i.i.i135.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i129.i, !llvm.loop !382

bb.p:                                             ; preds = %.noexc10
  %i.fo = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt16TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !416
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.q:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fr = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fp, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fq)
          to label %.noexc11 unwind label %bb.av

.noexc11:                                         ; preds = %bb.q
  br i1 %i.fr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc11
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !68, !noalias !417 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 9
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !94, !range !45, !noalias !417, !noundef !46
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !417
  %i.fz = select i1 %i.fw, ptr %i.fy, ptr null, !prof !34 ; 6 uses
  %9 = ptrtoaddr ptr %i.fz to i64
  %i.ga = load ptr, ptr %i.fp, align 8, !tbaa !65, !noalias !417 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !65, !noalias !417 ; 2 uses
  %i.gd = icmp eq ptr %i.ga, %i.gc
  br i1 %i.gd, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i, label %.lr.ph.i.i.i.i.i138.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i:  ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i144.i

.lr.ph.i.i.i.i.i138.i:                            ; preds = %bb.r, %.lr.ph.i.i.i.i.i138.i
  %.06.i.i.i.i.i139.i = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.i138.i ], [ 1, %bb.r ]
  %.sroa.02.05.i.i.i.i.i140.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i138.i ], [ %i.ga, %bb.r ] ; 2 uses
  %i.gf = load i64, ptr %.sroa.02.05.i.i.i.i.i140.i, align 8, !tbaa !23, !noalias !417
  %i.gg = mul nsw i64 %i.gf, %.06.i.i.i.i.i139.i  ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i140.i, i64 8 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.gc
  br i1 %i.gi, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, label %.lr.ph.i.i.i.i.i138.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i:         ; preds = %.lr.ph.i.i.i.i.i138.i
  %.idx.i.i.i142.i = shl nsw i64 %i.gg, 2
  %i.gj = getelementptr inbounds i8, ptr %i.fz, i64 %.idx.i.i.i142.i
  %.not7.i.i.i.i.i143.i = icmp eq i64 %i.gg, 0
  br i1 %.not7.i.i.i.i.i143.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i144.i

.lr.ph.i.i4.preheader.i.i.i144.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i
  %i.gk = phi ptr [ %i.ge, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i152.i ], [ %i.gj, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i ] ; 2 uses
  %i.gl = ptrtoaddr ptr %i.gk to i64
  %i.gm = add i64 %i.gl, -4
  %i.gn = sub i64 %i.gm, %9                       ; 2 uses
  %i.go = lshr i64 %i.gn, 2
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.gn, 12
  br i1 %min.iters.check229, label %.lr.ph.i.i4.i.i.i145.i.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i144.i
  %n.vec231 = and i64 %i.gp, 9223372036854775804  ; 3 uses
  %i.gq = shl i64 %n.vec231, 2
  %i.gr = getelementptr i8, ptr %i.fz, i64 %i.gq
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body232 ] ; 2 uses
  %vec.phi234 = phi <2 x i64> [ zeroinitializer, %vector.ph230 ], [ %i.gy, %vector.body232 ]
  %vec.phi235 = phi <2 x i64> [ zeroinitializer, %vector.ph230 ], [ %i.gz, %vector.body232 ]
  %i.gs = shl i64 %index233, 2
  %next.gep236 = getelementptr i8, ptr %i.fz, i64 %i.gs ; 2 uses
  %i.gt = getelementptr i8, ptr %next.gep236, i64 8
  %wide.load237 = load <2 x i32>, ptr %next.gep236, align 4, !tbaa !14, !noalias !417
  %wide.load238 = load <2 x i32>, ptr %i.gt, align 4, !tbaa !14, !noalias !417
  %i.gu = icmp ne <2 x i32> %wide.load237, zeroinitializer
  %i.gv = icmp ne <2 x i32> %wide.load238, zeroinitializer
  %i.gw = zext <2 x i1> %i.gu to <2 x i64>
  %i.gx = zext <2 x i1> %i.gv to <2 x i64>
  %i.gy = add <2 x i64> %vec.phi234, %i.gw        ; 2 uses
  %i.gz = add <2 x i64> %vec.phi235, %i.gx        ; 2 uses
  %index.next239 = add nuw i64 %index233, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next239, %n.vec231
  br i1 %i.ha, label %middle.block240, label %vector.body232, !llvm.loop !385

middle.block240:                                  ; preds = %vector.body232
  %bin.rdx241 = add <2 x i64> %i.gz, %i.gy
  %i.hb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx241) ; 2 uses
  %cmp.n242 = icmp eq i64 %i.gp, %n.vec231
  br i1 %cmp.n242, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i145.i.preheader

.lr.ph.i.i4.i.i.i145.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i144.i, %middle.block240
  %.09.i.i.i.i.i146.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i144.i ], [ %i.hb, %middle.block240 ]
  %.058.i.i.i.i.i147.i.ph = phi ptr [ %i.fz, %.lr.ph.i.i4.preheader.i.i.i144.i ], [ %i.gr, %middle.block240 ]
  br label %.lr.ph.i.i4.i.i.i145.i

.lr.ph.i.i4.i.i.i145.i:                           ; preds = %.lr.ph.i.i4.i.i.i145.i.preheader, %.lr.ph.i.i4.i.i.i145.i
  %.09.i.i.i.i.i146.i = phi i64 [ %spec.select.i.i.i.i.i150.i, %.lr.ph.i.i4.i.i.i145.i ], [ %.09.i.i.i.i.i146.i.ph, %.lr.ph.i.i4.i.i.i145.i.preheader ]
  %.058.i.i.i.i.i147.i = phi ptr [ %i.hd, %.lr.ph.i.i4.i.i.i145.i ], [ %.058.i.i.i.i.i147.i.ph, %.lr.ph.i.i4.i.i.i145.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i148.i = load i32, ptr %.058.i.i.i.i.i147.i, align 4, !tbaa !14, !noalias !417
  %.not6.i.i.i.i.i149.i = icmp ne i32 %.05.val.i.i.i.i.i148.i, 0
  %i.hc = zext i1 %.not6.i.i.i.i.i149.i to i64
  %spec.select.i.i.i.i.i150.i = add nuw nsw i64 %.09.i.i.i.i.i146.i, %i.hc ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i147.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i151.i = icmp eq ptr %i.hd, %i.gk
  br i1 %.not.i.i.i.i.i151.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i145.i, !llvm.loop !386

bb.s:                                             ; preds = %.noexc11
  %i.he = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int32TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !417
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.t:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hh = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hg)
          to label %.noexc12 unwind label %bb.av

.noexc12:                                         ; preds = %bb.t
  br i1 %i.hh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc12
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !68, !noalias !418 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 9
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !94, !range !45, !noalias !418, !noundef !46
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !418
  %i.hp = select i1 %i.hm, ptr %i.ho, ptr null, !prof !34 ; 6 uses
  %10 = ptrtoaddr ptr %i.hp to i64
  %i.hq = load ptr, ptr %i.hf, align 8, !tbaa !65, !noalias !418 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !65, !noalias !418 ; 2 uses
  %i.ht = icmp eq ptr %i.hq, %i.hs
  br i1 %i.ht, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i, label %.lr.ph.i.i.i.i.i154.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i:  ; preds = %bb.u
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i160.i

.lr.ph.i.i.i.i.i154.i:                            ; preds = %bb.u, %.lr.ph.i.i.i.i.i154.i
  %.06.i.i.i.i.i155.i = phi i64 [ %i.hw, %.lr.ph.i.i.i.i.i154.i ], [ 1, %bb.u ]
  %.sroa.02.05.i.i.i.i.i156.i = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i154.i ], [ %i.hq, %bb.u ] ; 2 uses
  %i.hv = load i64, ptr %.sroa.02.05.i.i.i.i.i156.i, align 8, !tbaa !23, !noalias !418
  %i.hw = mul nsw i64 %i.hv, %.06.i.i.i.i.i155.i  ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i156.i, i64 8 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.hs
  br i1 %i.hy, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, label %.lr.ph.i.i.i.i.i154.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i:         ; preds = %.lr.ph.i.i.i.i.i154.i
  %.idx.i.i.i158.i = shl nsw i64 %i.hw, 2
  %i.hz = getelementptr inbounds i8, ptr %i.hp, i64 %.idx.i.i.i158.i
  %.not7.i.i.i.i.i159.i = icmp eq i64 %i.hw, 0
  br i1 %.not7.i.i.i.i.i159.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i160.i

.lr.ph.i.i4.preheader.i.i.i160.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i
  %i.ia = phi ptr [ %i.hu, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i168.i ], [ %i.hz, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i ] ; 2 uses
  %i.ib = ptrtoaddr ptr %i.ia to i64
  %i.ic = add i64 %i.ib, -4
  %i.id = sub i64 %i.ic, %10                      ; 2 uses
  %i.ie = lshr i64 %i.id, 2
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check212 = icmp ult i64 %i.id, 12
  br i1 %min.iters.check212, label %.lr.ph.i.i4.i.i.i161.i.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i160.i
  %n.vec214 = and i64 %i.if, 9223372036854775804  ; 3 uses
  %i.ig = shl i64 %n.vec214, 2
  %i.ih = getelementptr i8, ptr %i.hp, i64 %i.ig
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next222, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <2 x i64> [ zeroinitializer, %vector.ph213 ], [ %i.io, %vector.body215 ]
  %vec.phi218 = phi <2 x i64> [ zeroinitializer, %vector.ph213 ], [ %i.ip, %vector.body215 ]
  %i.ii = shl i64 %index216, 2
  %next.gep219 = getelementptr i8, ptr %i.hp, i64 %i.ii ; 2 uses
  %i.ij = getelementptr i8, ptr %next.gep219, i64 8
  %wide.load220 = load <2 x i32>, ptr %next.gep219, align 4, !tbaa !14, !noalias !418
  %wide.load221 = load <2 x i32>, ptr %i.ij, align 4, !tbaa !14, !noalias !418
  %i.ik = icmp ne <2 x i32> %wide.load220, zeroinitializer
  %i.il = icmp ne <2 x i32> %wide.load221, zeroinitializer
  %i.im = zext <2 x i1> %i.ik to <2 x i64>
  %i.in = zext <2 x i1> %i.il to <2 x i64>
  %i.io = add <2 x i64> %vec.phi217, %i.im        ; 2 uses
  %i.ip = add <2 x i64> %vec.phi218, %i.in        ; 2 uses
  %index.next222 = add nuw i64 %index216, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next222, %n.vec214
  br i1 %i.iq, label %middle.block223, label %vector.body215, !llvm.loop !389

middle.block223:                                  ; preds = %vector.body215
  %bin.rdx224 = add <2 x i64> %i.ip, %i.io
  %i.ir = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx224) ; 2 uses
  %cmp.n225 = icmp eq i64 %i.if, %n.vec214
  br i1 %cmp.n225, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i161.i.preheader

.lr.ph.i.i4.i.i.i161.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i160.i, %middle.block223
  %.09.i.i.i.i.i162.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i160.i ], [ %i.ir, %middle.block223 ]
  %.058.i.i.i.i.i163.i.ph = phi ptr [ %i.hp, %.lr.ph.i.i4.preheader.i.i.i160.i ], [ %i.ih, %middle.block223 ]
  br label %.lr.ph.i.i4.i.i.i161.i

.lr.ph.i.i4.i.i.i161.i:                           ; preds = %.lr.ph.i.i4.i.i.i161.i.preheader, %.lr.ph.i.i4.i.i.i161.i
  %.09.i.i.i.i.i162.i = phi i64 [ %spec.select.i.i.i.i.i166.i, %.lr.ph.i.i4.i.i.i161.i ], [ %.09.i.i.i.i.i162.i.ph, %.lr.ph.i.i4.i.i.i161.i.preheader ]
  %.058.i.i.i.i.i163.i = phi ptr [ %i.it, %.lr.ph.i.i4.i.i.i161.i ], [ %.058.i.i.i.i.i163.i.ph, %.lr.ph.i.i4.i.i.i161.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i164.i = load i32, ptr %.058.i.i.i.i.i163.i, align 4, !tbaa !14, !noalias !418
  %.not6.i.i.i.i.i165.i = icmp ne i32 %.05.val.i.i.i.i.i164.i, 0
  %i.is = zext i1 %.not6.i.i.i.i.i165.i to i64
  %spec.select.i.i.i.i.i166.i = add nuw nsw i64 %.09.i.i.i.i.i162.i, %i.is ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i163.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i167.i = icmp eq ptr %i.it, %i.ia
  br i1 %.not.i.i.i.i.i167.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i161.i, !llvm.loop !390

bb.v:                                             ; preds = %.noexc12
  %i.iu = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt32TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !418
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.w:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ix = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.iv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.iw)
          to label %.noexc13 unwind label %bb.av

.noexc13:                                         ; preds = %bb.w
  br i1 %i.ix, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc13
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !68, !noalias !419 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 9
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !94, !range !45, !noalias !419, !noundef !46
  %i.jc = trunc nuw i8 %i.jb to i1
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !419
  %i.jf = select i1 %i.jc, ptr %i.je, ptr null, !prof !34 ; 6 uses
  %11 = ptrtoaddr ptr %i.jf to i64
  %i.jg = load ptr, ptr %i.iv, align 8, !tbaa !65, !noalias !419 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !65, !noalias !419 ; 2 uses
  %i.jj = icmp eq ptr %i.jg, %i.ji
  br i1 %i.jj, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i, label %.lr.ph.i.i.i.i.i170.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i:  ; preds = %bb.x
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i176.i

.lr.ph.i.i.i.i.i170.i:                            ; preds = %bb.x, %.lr.ph.i.i.i.i.i170.i
  %.06.i.i.i.i.i171.i = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i170.i ], [ 1, %bb.x ]
  %.sroa.02.05.i.i.i.i.i172.i = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i170.i ], [ %i.jg, %bb.x ] ; 2 uses
  %i.jl = load i64, ptr %.sroa.02.05.i.i.i.i.i172.i, align 8, !tbaa !23, !noalias !419
  %i.jm = mul nsw i64 %i.jl, %.06.i.i.i.i.i171.i  ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i172.i, i64 8 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.ji
  br i1 %i.jo, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, label %.lr.ph.i.i.i.i.i170.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i:         ; preds = %.lr.ph.i.i.i.i.i170.i
  %.idx.i.i.i174.i = shl nsw i64 %i.jm, 3
  %i.jp = getelementptr inbounds i8, ptr %i.jf, i64 %.idx.i.i.i174.i
  %.not7.i.i.i.i.i175.i = icmp eq i64 %i.jm, 0
  br i1 %.not7.i.i.i.i.i175.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i176.i

.lr.ph.i.i4.preheader.i.i.i176.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i
  %i.jq = phi ptr [ %i.jk, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i184.i ], [ %i.jp, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i ] ; 2 uses
  %i.jr = ptrtoaddr ptr %i.jq to i64
  %i.js = add i64 %i.jr, -8
  %i.jt = sub i64 %i.js, %11                      ; 2 uses
  %i.ju = lshr i64 %i.jt, 3
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %i.jt, 24
  br i1 %min.iters.check195, label %.lr.ph.i.i4.i.i.i177.i.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i176.i
  %n.vec197 = and i64 %i.jv, 4611686018427387900  ; 3 uses
  %i.jw = shl i64 %n.vec197, 3
  %i.jx = getelementptr i8, ptr %i.jf, i64 %i.jw
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next205, %vector.body198 ] ; 2 uses
  %vec.phi200 = phi <2 x i64> [ zeroinitializer, %vector.ph196 ], [ %i.ke, %vector.body198 ]
  %vec.phi201 = phi <2 x i64> [ zeroinitializer, %vector.ph196 ], [ %i.kf, %vector.body198 ]
  %i.jy = shl i64 %index199, 3
  %next.gep202 = getelementptr i8, ptr %i.jf, i64 %i.jy ; 2 uses
  %i.jz = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load203 = load <2 x i64>, ptr %next.gep202, align 8, !tbaa !23, !noalias !419
  %wide.load204 = load <2 x i64>, ptr %i.jz, align 8, !tbaa !23, !noalias !419
  %i.ka = icmp ne <2 x i64> %wide.load203, zeroinitializer
  %i.kb = icmp ne <2 x i64> %wide.load204, zeroinitializer
  %i.kc = zext <2 x i1> %i.ka to <2 x i64>
  %i.kd = zext <2 x i1> %i.kb to <2 x i64>
  %i.ke = add <2 x i64> %vec.phi200, %i.kc        ; 2 uses
  %i.kf = add <2 x i64> %vec.phi201, %i.kd        ; 2 uses
  %index.next205 = add nuw i64 %index199, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next205, %n.vec197
  br i1 %i.kg, label %middle.block206, label %vector.body198, !llvm.loop !393

middle.block206:                                  ; preds = %vector.body198
  %bin.rdx207 = add <2 x i64> %i.kf, %i.ke
  %i.kh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx207) ; 2 uses
  %cmp.n208 = icmp eq i64 %i.jv, %n.vec197
  br i1 %cmp.n208, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i177.i.preheader

.lr.ph.i.i4.i.i.i177.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i176.i, %middle.block206
  %.09.i.i.i.i.i178.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i176.i ], [ %i.kh, %middle.block206 ]
  %.058.i.i.i.i.i179.i.ph = phi ptr [ %i.jf, %.lr.ph.i.i4.preheader.i.i.i176.i ], [ %i.jx, %middle.block206 ]
  br label %.lr.ph.i.i4.i.i.i177.i

.lr.ph.i.i4.i.i.i177.i:                           ; preds = %.lr.ph.i.i4.i.i.i177.i.preheader, %.lr.ph.i.i4.i.i.i177.i
  %.09.i.i.i.i.i178.i = phi i64 [ %spec.select.i.i.i.i.i182.i, %.lr.ph.i.i4.i.i.i177.i ], [ %.09.i.i.i.i.i178.i.ph, %.lr.ph.i.i4.i.i.i177.i.preheader ]
  %.058.i.i.i.i.i179.i = phi ptr [ %i.kj, %.lr.ph.i.i4.i.i.i177.i ], [ %.058.i.i.i.i.i179.i.ph, %.lr.ph.i.i4.i.i.i177.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i180.i = load i64, ptr %.058.i.i.i.i.i179.i, align 8, !tbaa !23, !noalias !419
  %.not6.i.i.i.i.i181.i = icmp ne i64 %.05.val.i.i.i.i.i180.i, 0
  %i.ki = zext i1 %.not6.i.i.i.i.i181.i to i64
  %spec.select.i.i.i.i.i182.i = add nuw nsw i64 %.09.i.i.i.i.i178.i, %i.ki ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i179.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i183.i = icmp eq ptr %i.kj, %i.jq
  br i1 %.not.i.i.i.i.i183.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i177.i, !llvm.loop !394

bb.y:                                             ; preds = %.noexc13
  %i.kk = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int64TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !419
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.z:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kn = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.kl, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.km)
          to label %.noexc14 unwind label %bb.av

.noexc14:                                         ; preds = %bb.z
  br i1 %i.kn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc14
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !68, !noalias !420 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 9
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !94, !range !45, !noalias !420, !noundef !46
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !420
  %i.kv = select i1 %i.ks, ptr %i.ku, ptr null, !prof !34 ; 6 uses
  %12 = ptrtoaddr ptr %i.kv to i64
  %i.kw = load ptr, ptr %i.kl, align 8, !tbaa !65, !noalias !420 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !65, !noalias !420 ; 2 uses
  %i.kz = icmp eq ptr %i.kw, %i.ky
  br i1 %i.kz, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i, label %.lr.ph.i.i.i.i.i186.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i:  ; preds = %bb.aa
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i192.i

.lr.ph.i.i.i.i.i186.i:                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i186.i
  %.06.i.i.i.i.i187.i = phi i64 [ %i.lc, %.lr.ph.i.i.i.i.i186.i ], [ 1, %bb.aa ]
  %.sroa.02.05.i.i.i.i.i188.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i186.i ], [ %i.kw, %bb.aa ] ; 2 uses
  %i.lb = load i64, ptr %.sroa.02.05.i.i.i.i.i188.i, align 8, !tbaa !23, !noalias !420
  %i.lc = mul nsw i64 %i.lb, %.06.i.i.i.i.i187.i  ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i188.i, i64 8 ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.ky
  br i1 %i.le, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, label %.lr.ph.i.i.i.i.i186.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i:         ; preds = %.lr.ph.i.i.i.i.i186.i
  %.idx.i.i.i190.i = shl nsw i64 %i.lc, 3
  %i.lf = getelementptr inbounds i8, ptr %i.kv, i64 %.idx.i.i.i190.i
  %.not7.i.i.i.i.i191.i = icmp eq i64 %i.lc, 0
  br i1 %.not7.i.i.i.i.i191.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i192.i

.lr.ph.i.i4.preheader.i.i.i192.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i
  %i.lg = phi ptr [ %i.la, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i200.i ], [ %i.lf, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i ] ; 2 uses
  %i.lh = ptrtoaddr ptr %i.lg to i64
  %i.li = add i64 %i.lh, -8
  %i.lj = sub i64 %i.li, %12                      ; 2 uses
  %i.lk = lshr i64 %i.lj, 3
  %i.ll = add nuw nsw i64 %i.lk, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %i.lj, 24
  br i1 %min.iters.check178, label %.lr.ph.i.i4.i.i.i193.i.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i192.i
  %n.vec180 = and i64 %i.ll, 4611686018427387900  ; 3 uses
  %i.lm = shl i64 %n.vec180, 3
  %i.ln = getelementptr i8, ptr %i.kv, i64 %i.lm
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body181 ] ; 2 uses
  %vec.phi183 = phi <2 x i64> [ zeroinitializer, %vector.ph179 ], [ %i.lu, %vector.body181 ]
  %vec.phi184 = phi <2 x i64> [ zeroinitializer, %vector.ph179 ], [ %i.lv, %vector.body181 ]
  %i.lo = shl i64 %index182, 3
  %next.gep185 = getelementptr i8, ptr %i.kv, i64 %i.lo ; 2 uses
  %i.lp = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load186 = load <2 x i64>, ptr %next.gep185, align 8, !tbaa !23, !noalias !420
  %wide.load187 = load <2 x i64>, ptr %i.lp, align 8, !tbaa !23, !noalias !420
  %i.lq = icmp ne <2 x i64> %wide.load186, zeroinitializer
  %i.lr = icmp ne <2 x i64> %wide.load187, zeroinitializer
  %i.ls = zext <2 x i1> %i.lq to <2 x i64>
  %i.lt = zext <2 x i1> %i.lr to <2 x i64>
  %i.lu = add <2 x i64> %vec.phi183, %i.ls        ; 2 uses
  %i.lv = add <2 x i64> %vec.phi184, %i.lt        ; 2 uses
  %index.next188 = add nuw i64 %index182, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next188, %n.vec180
  br i1 %i.lw, label %middle.block189, label %vector.body181, !llvm.loop !397

middle.block189:                                  ; preds = %vector.body181
  %bin.rdx190 = add <2 x i64> %i.lv, %i.lu
  %i.lx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx190) ; 2 uses
  %cmp.n191 = icmp eq i64 %i.ll, %n.vec180
  br i1 %cmp.n191, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i193.i.preheader

.lr.ph.i.i4.i.i.i193.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i192.i, %middle.block189
  %.09.i.i.i.i.i194.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i192.i ], [ %i.lx, %middle.block189 ]
  %.058.i.i.i.i.i195.i.ph = phi ptr [ %i.kv, %.lr.ph.i.i4.preheader.i.i.i192.i ], [ %i.ln, %middle.block189 ]
  br label %.lr.ph.i.i4.i.i.i193.i

.lr.ph.i.i4.i.i.i193.i:                           ; preds = %.lr.ph.i.i4.i.i.i193.i.preheader, %.lr.ph.i.i4.i.i.i193.i
  %.09.i.i.i.i.i194.i = phi i64 [ %spec.select.i.i.i.i.i198.i, %.lr.ph.i.i4.i.i.i193.i ], [ %.09.i.i.i.i.i194.i.ph, %.lr.ph.i.i4.i.i.i193.i.preheader ]
  %.058.i.i.i.i.i195.i = phi ptr [ %i.lz, %.lr.ph.i.i4.i.i.i193.i ], [ %.058.i.i.i.i.i195.i.ph, %.lr.ph.i.i4.i.i.i193.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i196.i = load i64, ptr %.058.i.i.i.i.i195.i, align 8, !tbaa !23, !noalias !420
  %.not6.i.i.i.i.i197.i = icmp ne i64 %.05.val.i.i.i.i.i196.i, 0
  %i.ly = zext i1 %.not6.i.i.i.i.i197.i to i64
  %spec.select.i.i.i.i.i198.i = add nuw nsw i64 %.09.i.i.i.i.i194.i, %i.ly ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i195.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i199.i = icmp eq ptr %i.lz, %i.lg
  br i1 %.not.i.i.i.i.i199.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i193.i, !llvm.loop !398

bb.ab:                                            ; preds = %.noexc14
  %i.ma = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt64TypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !420
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.ac:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.md = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.mb, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.mc)
          to label %.noexc15 unwind label %bb.av

.noexc15:                                         ; preds = %bb.ac
  br i1 %i.md, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc15
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !68, !noalias !421 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 9
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !94, !range !45, !noalias !421, !noundef !46
  %i.mi = trunc nuw i8 %i.mh to i1
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !noalias !421
  %i.ml = select i1 %i.mi, ptr %i.mk, ptr null, !prof !34 ; 6 uses
  %13 = ptrtoaddr ptr %i.ml to i64
  %i.mm = load ptr, ptr %i.mb, align 8, !tbaa !65, !noalias !421 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !65, !noalias !421 ; 2 uses
  %i.mp = icmp eq ptr %i.mm, %i.mo
  br i1 %i.mp, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i, label %.lr.ph.i.i.i.i.i202.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i:  ; preds = %bb.ad
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 2
  br label %.lr.ph.i.i4.preheader.i.i.i208.i

.lr.ph.i.i.i.i.i202.i:                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i202.i
  %.06.i.i.i.i.i203.i = phi i64 [ %i.ms, %.lr.ph.i.i.i.i.i202.i ], [ 1, %bb.ad ]
  %.sroa.02.05.i.i.i.i.i204.i = phi ptr [ %i.mt, %.lr.ph.i.i.i.i.i202.i ], [ %i.mm, %bb.ad ] ; 2 uses
  %i.mr = load i64, ptr %.sroa.02.05.i.i.i.i.i204.i, align 8, !tbaa !23, !noalias !421
  %i.ms = mul nsw i64 %i.mr, %.06.i.i.i.i.i203.i  ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i204.i, i64 8 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.mo
  br i1 %i.mu, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, label %.lr.ph.i.i.i.i.i202.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i:         ; preds = %.lr.ph.i.i.i.i.i202.i
  %.idx.i.i.i206.i = shl nsw i64 %i.ms, 1
  %i.mv = getelementptr inbounds i8, ptr %i.ml, i64 %.idx.i.i.i206.i
  %.not7.i.i.i.i.i207.i = icmp eq i64 %i.ms, 0
  br i1 %.not7.i.i.i.i.i207.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i208.i

.lr.ph.i.i4.preheader.i.i.i208.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i
  %i.mw = phi ptr [ %i.mq, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i216.i ], [ %i.mv, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i ] ; 2 uses
  %i.mx = ptrtoaddr ptr %i.mw to i64
  %i.my = add i64 %i.mx, -2
  %i.mz = sub i64 %i.my, %13                      ; 2 uses
  %i.na = lshr i64 %i.mz, 1
  %i.nb = add nuw i64 %i.na, 1                    ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.mz, 6
  br i1 %min.iters.check161, label %.lr.ph.i.i4.i.i.i209.i.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i208.i
  %n.vec163 = and i64 %i.nb, -4                   ; 3 uses
  %i.nc = shl i64 %n.vec163, 1
  %i.nd = getelementptr i8, ptr %i.ml, i64 %i.nc
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body164 ] ; 2 uses
  %vec.phi166 = phi <2 x i64> [ zeroinitializer, %vector.ph162 ], [ %i.nk, %vector.body164 ]
  %vec.phi167 = phi <2 x i64> [ zeroinitializer, %vector.ph162 ], [ %i.nl, %vector.body164 ]
  %i.ne = shl i64 %index165, 1
  %next.gep168 = getelementptr i8, ptr %i.ml, i64 %i.ne ; 2 uses
  %i.nf = getelementptr i8, ptr %next.gep168, i64 4
  %wide.load169 = load <2 x i16>, ptr %next.gep168, align 2, !tbaa !153, !noalias !421
  %wide.load170 = load <2 x i16>, ptr %i.nf, align 2, !tbaa !153, !noalias !421
  %i.ng = icmp ne <2 x i16> %wide.load169, zeroinitializer
  %i.nh = icmp ne <2 x i16> %wide.load170, zeroinitializer
  %i.ni = zext <2 x i1> %i.ng to <2 x i64>
  %i.nj = zext <2 x i1> %i.nh to <2 x i64>
  %i.nk = add <2 x i64> %vec.phi166, %i.ni        ; 2 uses
  %i.nl = add <2 x i64> %vec.phi167, %i.nj        ; 2 uses
  %index.next171 = add nuw i64 %index165, 4       ; 2 uses
  %i.nm = icmp eq i64 %index.next171, %n.vec163
  br i1 %i.nm, label %middle.block172, label %vector.body164, !llvm.loop !401

middle.block172:                                  ; preds = %vector.body164
  %bin.rdx173 = add <2 x i64> %i.nl, %i.nk
  %i.nn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx173) ; 2 uses
  %cmp.n174 = icmp eq i64 %i.nb, %n.vec163
  br i1 %cmp.n174, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i209.i.preheader

.lr.ph.i.i4.i.i.i209.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i208.i, %middle.block172
  %.09.i.i.i.i.i210.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i208.i ], [ %i.nn, %middle.block172 ]
  %.058.i.i.i.i.i211.i.ph = phi ptr [ %i.ml, %.lr.ph.i.i4.preheader.i.i.i208.i ], [ %i.nd, %middle.block172 ]
  br label %.lr.ph.i.i4.i.i.i209.i

.lr.ph.i.i4.i.i.i209.i:                           ; preds = %.lr.ph.i.i4.i.i.i209.i.preheader, %.lr.ph.i.i4.i.i.i209.i
  %.09.i.i.i.i.i210.i = phi i64 [ %spec.select.i.i.i.i.i214.i, %.lr.ph.i.i4.i.i.i209.i ], [ %.09.i.i.i.i.i210.i.ph, %.lr.ph.i.i4.i.i.i209.i.preheader ]
  %.058.i.i.i.i.i211.i = phi ptr [ %i.np, %.lr.ph.i.i4.i.i.i209.i ], [ %.058.i.i.i.i.i211.i.ph, %.lr.ph.i.i4.i.i.i209.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i212.i = load i16, ptr %.058.i.i.i.i.i211.i, align 2, !tbaa !153, !noalias !421
  %.not6.i.i.i.i.i213.i = icmp ne i16 %.05.val.i.i.i.i.i212.i, 0
  %i.no = zext i1 %.not6.i.i.i.i.i213.i to i64
  %spec.select.i.i.i.i.i214.i = add nuw nsw i64 %.09.i.i.i.i.i210.i, %i.no ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i.i211.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i215.i = icmp eq ptr %i.np, %i.mw
  br i1 %.not.i.i.i.i.i215.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i209.i, !llvm.loop !402

bb.ae:                                            ; preds = %.noexc15
  %i.nq = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_13HalfFloatTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !421
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.af:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nt = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.nr, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ns)
          to label %.noexc16 unwind label %bb.av

.noexc16:                                         ; preds = %bb.af
  br i1 %i.nt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc16
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !68, !noalias !422 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 9
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !94, !range !45, !noalias !422, !noundef !46
  %i.ny = trunc nuw i8 %i.nx to i1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !noalias !422
  %i.ob = select i1 %i.ny, ptr %i.oa, ptr null, !prof !34 ; 6 uses
  %14 = ptrtoaddr ptr %i.ob to i64
  %i.oc = load ptr, ptr %i.nr, align 8, !tbaa !65, !noalias !422 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !65, !noalias !422 ; 2 uses
  %i.of = icmp eq ptr %i.oc, %i.oe
  br i1 %i.of, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i, label %.lr.ph.i.i.i.i.i218.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i:  ; preds = %bb.ag
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  br label %.lr.ph.i.i4.preheader.i.i.i224.i

.lr.ph.i.i.i.i.i218.i:                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.i218.i
  %.06.i.i.i.i.i219.i = phi i64 [ %i.oi, %.lr.ph.i.i.i.i.i218.i ], [ 1, %bb.ag ]
  %.sroa.02.05.i.i.i.i.i220.i = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i218.i ], [ %i.oc, %bb.ag ] ; 2 uses
  %i.oh = load i64, ptr %.sroa.02.05.i.i.i.i.i220.i, align 8, !tbaa !23, !noalias !422
  %i.oi = mul nsw i64 %i.oh, %.06.i.i.i.i.i219.i  ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i220.i, i64 8 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.oe
  br i1 %i.ok, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, label %.lr.ph.i.i.i.i.i218.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i:         ; preds = %.lr.ph.i.i.i.i.i218.i
  %.idx.i.i.i222.i = shl nsw i64 %i.oi, 2
  %i.ol = getelementptr inbounds i8, ptr %i.ob, i64 %.idx.i.i.i222.i
  %.not6.i.i.i.i.i223.i = icmp eq i64 %i.oi, 0
  br i1 %.not6.i.i.i.i.i223.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i224.i

.lr.ph.i.i4.preheader.i.i.i224.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i
  %i.om = phi ptr [ %i.og, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i229.i ], [ %i.ol, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i ] ; 2 uses
  %i.on = ptrtoaddr ptr %i.om to i64
  %i.oo = add i64 %i.on, -4
  %i.op = sub i64 %i.oo, %14                      ; 2 uses
  %i.oq = lshr i64 %i.op, 2
  %i.or = add nuw nsw i64 %i.oq, 1                ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.op, 12
  br i1 %min.iters.check144, label %.lr.ph.i.i4.i.i.i225.i.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i.i4.preheader.i.i.i224.i
  %n.vec146 = and i64 %i.or, 9223372036854775804  ; 3 uses
  %i.os = shl i64 %n.vec146, 2
  %i.ot = getelementptr i8, ptr %i.ob, i64 %i.os
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body147 ] ; 2 uses
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.pa, %vector.body147 ]
  %vec.phi150 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.pb, %vector.body147 ]
  %i.ou = shl i64 %index148, 2
  %next.gep151 = getelementptr i8, ptr %i.ob, i64 %i.ou ; 2 uses
  %i.ov = getelementptr i8, ptr %next.gep151, i64 8
  %wide.load152 = load <2 x float>, ptr %next.gep151, align 4, !tbaa !155, !noalias !422
  %wide.load153 = load <2 x float>, ptr %i.ov, align 4, !tbaa !155, !noalias !422
  %i.ow = fcmp une <2 x float> %wide.load152, zeroinitializer
  %i.ox = fcmp une <2 x float> %wide.load153, zeroinitializer
  %i.oy = zext <2 x i1> %i.ow to <2 x i64>
  %i.oz = zext <2 x i1> %i.ox to <2 x i64>
  %i.pa = add <2 x i64> %vec.phi149, %i.oy        ; 2 uses
  %i.pb = add <2 x i64> %vec.phi150, %i.oz        ; 2 uses
  %index.next154 = add nuw i64 %index148, 4       ; 2 uses
  %i.pc = icmp eq i64 %index.next154, %n.vec146
  br i1 %i.pc, label %middle.block155, label %vector.body147, !llvm.loop !405

middle.block155:                                  ; preds = %vector.body147
  %bin.rdx156 = add <2 x i64> %i.pb, %i.pa
  %i.pd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx156) ; 2 uses
  %cmp.n157 = icmp eq i64 %i.or, %n.vec146
  br i1 %cmp.n157, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i225.i.preheader

.lr.ph.i.i4.i.i.i225.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i224.i, %middle.block155
  %.08.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i224.i ], [ %i.pd, %middle.block155 ]
  %.057.i.i.i.i.i.i.ph = phi ptr [ %i.ob, %.lr.ph.i.i4.preheader.i.i.i224.i ], [ %i.ot, %middle.block155 ]
  br label %.lr.ph.i.i4.i.i.i225.i

.lr.ph.i.i4.i.i.i225.i:                           ; preds = %.lr.ph.i.i4.i.i.i225.i.preheader, %.lr.ph.i.i4.i.i.i225.i
  %.08.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i227.i, %.lr.ph.i.i4.i.i.i225.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i225.i.preheader ]
  %.057.i.i.i.i.i.i = phi ptr [ %i.pg, %.lr.ph.i.i4.i.i.i225.i ], [ %.057.i.i.i.i.i.i.ph, %.lr.ph.i.i4.i.i.i225.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i226.i = load float, ptr %.057.i.i.i.i.i.i, align 4, !tbaa !155, !noalias !422
  %i.pe = fcmp une float %.05.val.i.i.i.i.i226.i, 0.000000e+00
  %i.pf = zext i1 %i.pe to i64
  %spec.select.i.i.i.i.i227.i = add nuw nsw i64 %.08.i.i.i.i.i.i, %i.pf ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i228.i = icmp eq ptr %i.pg, %i.om
  br i1 %.not.i.i.i.i.i228.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i225.i, !llvm.loop !406

bb.ah:                                            ; preds = %.noexc16
  %i.ph = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9FloatTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !422
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

bb.ai:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pk = invoke noundef zeroext i1 @_ZN5arrow8internal25IsTensorStridesContiguousERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEESA_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.pi, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.pj)
          to label %.noexc17 unwind label %bb.av

.noexc17:                                         ; preds = %bb.ai
  br i1 %i.pk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc17
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !68, !noalias !423 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 9
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !94, !range !45, !noalias !423, !noundef !46
  %i.pp = trunc nuw i8 %i.po to i1
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !noalias !423
  %i.ps = select i1 %i.pp, ptr %i.pr, ptr null, !prof !34 ; 6 uses
  %15 = ptrtoaddr ptr %i.ps to i64
  %i.pt = load ptr, ptr %i.pi, align 8, !tbaa !65, !noalias !423 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !65, !noalias !423 ; 2 uses
  %i.pw = icmp eq ptr %i.pt, %i.pv
  br i1 %i.pw, label %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i, label %.lr.ph.i.i.i.i.i231.i

_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i:  ; preds = %bb.aj
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  br label %.lr.ph.i.i4.preheader.i.i.i237.i

.lr.ph.i.i.i.i.i231.i:                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.i231.i
  %.06.i.i.i.i.i232.i = phi i64 [ %i.pz, %.lr.ph.i.i.i.i.i231.i ], [ 1, %bb.aj ]
  %.sroa.02.05.i.i.i.i.i233.i = phi ptr [ %i.qa, %.lr.ph.i.i.i.i.i231.i ], [ %i.pt, %bb.aj ] ; 2 uses
  %i.py = load i64, ptr %.sroa.02.05.i.i.i.i.i233.i, align 8, !tbaa !23, !noalias !423
  %i.pz = mul nsw i64 %i.py, %.06.i.i.i.i.i232.i  ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i233.i, i64 8 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.pv
  br i1 %i.qb, label %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, label %.lr.ph.i.i.i.i.i231.i, !llvm.loop !4

_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i:         ; preds = %.lr.ph.i.i.i.i.i231.i
  %.idx.i.i.i235.i = shl nsw i64 %i.pz, 3
  %i.qc = getelementptr inbounds i8, ptr %i.ps, i64 %.idx.i.i.i235.i
  %.not6.i.i.i.i.i236.i = icmp eq i64 %i.pz, 0
  br i1 %.not6.i.i.i.i.i236.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.preheader.i.i.i237.i

.lr.ph.i.i4.preheader.i.i.i237.i:                 ; preds = %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i
  %i.qd = phi ptr [ %i.px, %_ZNK5arrow6Tensor4sizeEv.exit.thread.i.i.i244.i ], [ %i.qc, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i ] ; 2 uses
  %i.qe = ptrtoaddr ptr %i.qd to i64
  %i.qf = add i64 %i.qe, -8
  %i.qg = sub i64 %i.qf, %15                      ; 2 uses
  %i.qh = lshr i64 %i.qg, 3
  %i.qi = add nuw nsw i64 %i.qh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.qg, 24
  br i1 %min.iters.check, label %.lr.ph.i.i4.i.i.i238.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i4.preheader.i.i.i237.i
  %n.vec = and i64 %i.qi, 4611686018427387900     ; 3 uses
  %i.qj = shl i64 %n.vec, 3
  %i.qk = getelementptr i8, ptr %i.ps, i64 %i.qj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qr, %vector.body ]
  %vec.phi141 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qs, %vector.body ]
  %i.ql = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ps, i64 %i.ql ; 2 uses
  %i.qm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !157, !noalias !423
  %wide.load142 = load <2 x double>, ptr %i.qm, align 8, !tbaa !157, !noalias !423
  %i.qn = fcmp une <2 x double> %wide.load, zeroinitializer
  %i.qo = fcmp une <2 x double> %wide.load142, zeroinitializer
  %i.qp = zext <2 x i1> %i.qn to <2 x i64>
  %i.qq = zext <2 x i1> %i.qo to <2 x i64>
  %i.qr = add <2 x i64> %vec.phi, %i.qp           ; 2 uses
  %i.qs = add <2 x i64> %vec.phi141, %i.qq        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qt = icmp eq i64 %index.next, %n.vec
  br i1 %i.qt, label %middle.block, label %vector.body, !llvm.loop !409

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.qs, %i.qr
  %i.qu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.qi, %n.vec
  br i1 %cmp.n, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i238.i.preheader

.lr.ph.i.i4.i.i.i238.i.preheader:                 ; preds = %.lr.ph.i.i4.preheader.i.i.i237.i, %middle.block
  %.08.i.i.i.i.i239.i.ph = phi i64 [ 0, %.lr.ph.i.i4.preheader.i.i.i237.i ], [ %i.qu, %middle.block ]
  %.057.i.i.i.i.i240.i.ph = phi ptr [ %i.ps, %.lr.ph.i.i4.preheader.i.i.i237.i ], [ %i.qk, %middle.block ]
  br label %.lr.ph.i.i4.i.i.i238.i

.lr.ph.i.i4.i.i.i238.i:                           ; preds = %.lr.ph.i.i4.i.i.i238.i.preheader, %.lr.ph.i.i4.i.i.i238.i
  %.08.i.i.i.i.i239.i = phi i64 [ %spec.select.i.i.i.i.i242.i, %.lr.ph.i.i4.i.i.i238.i ], [ %.08.i.i.i.i.i239.i.ph, %.lr.ph.i.i4.i.i.i238.i.preheader ]
  %.057.i.i.i.i.i240.i = phi ptr [ %i.qx, %.lr.ph.i.i4.i.i.i238.i ], [ %.057.i.i.i.i.i240.i.ph, %.lr.ph.i.i4.i.i.i238.i.preheader ] ; 2 uses
  %.05.val.i.i.i.i.i241.i = load double, ptr %.057.i.i.i.i.i240.i, align 8, !tbaa !157, !noalias !423
  %i.qv = fcmp une double %.05.val.i.i.i.i.i241.i, 0.000000e+00
  %i.qw = zext i1 %i.qv to i64
  %spec.select.i.i.i.i.i242.i = add nuw nsw i64 %.08.i.i.i.i.i239.i, %i.qw ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i240.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i243.i = icmp eq ptr %i.qx, %i.qd
  br i1 %.not.i.i.i.i.i243.i, label %_ZN5arrow6StatusD2Ev.exit.sink.split, label %.lr.ph.i.i4.i.i.i238.i, !llvm.loop !410

bb.ak:                                            ; preds = %.noexc17
  %i.qy = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10DoubleTypeEEElilRKNS_6TensorE(i32 noundef 0, i64 noundef 0, ptr noundef nonnull readonly align 8 dereferenceable(112) %1), !noalias !423
  br label %_ZN5arrow6StatusD2Ev.exit.sink.split

.invoke:                                          ; preds = %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit, %_ZNK5arrow6Tensor4typeEv.exit
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_114NonZeroCounter5VisitERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.av

bb.al:                                            ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.av

_ZN5arrow6StatusD2Ev.exit.sink.split:             ; preds = %.lr.ph.i.i4.i.i.i238.i, %.lr.ph.i.i4.i.i.i225.i, %.lr.ph.i.i4.i.i.i209.i, %.lr.ph.i.i4.i.i.i193.i, %.lr.ph.i.i4.i.i.i177.i, %.lr.ph.i.i4.i.i.i161.i, %.lr.ph.i.i4.i.i.i145.i, %.lr.ph.i.i4.i.i.i129.i, %.lr.ph.i.i4.i.i.i113.i, %.lr.ph.i.i4.i.i.i98.i, %.lr.ph.i.i4.i.i.i.i, %middle.block, %middle.block155, %middle.block172, %middle.block189, %middle.block206, %middle.block223, %middle.block240, %middle.block257, %middle.block274, %middle.block291, %middle.block308, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i, %bb.ak, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i, %bb.ah, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i, %bb.ae, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i, %bb.ab, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i, %bb.y, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i, %bb.v, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i, %bb.s, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i, %bb.p, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i, %bb.m, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i, %bb.j, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i, %bb.g
  %.sroa.15.0.ph = phi i64 [ %spec.select.i.i.i.i.i166.i, %.lr.ph.i.i4.i.i.i161.i ], [ %spec.select.i.i.i.i.i150.i, %.lr.ph.i.i4.i.i.i145.i ], [ %spec.select.i.i.i.i.i134.i, %.lr.ph.i.i4.i.i.i129.i ], [ %spec.select.i.i.i.i.i118.i, %.lr.ph.i.i4.i.i.i113.i ], [ %spec.select.i.i.i.i.i103.i, %.lr.ph.i.i4.i.i.i98.i ], [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %spec.select.i.i.i.i.i227.i, %.lr.ph.i.i4.i.i.i225.i ], [ %spec.select.i.i.i.i.i214.i, %.lr.ph.i.i4.i.i.i209.i ], [ %spec.select.i.i.i.i.i198.i, %.lr.ph.i.i4.i.i.i193.i ], [ %spec.select.i.i.i.i.i182.i, %.lr.ph.i.i4.i.i.i177.i ], [ %i.ax, %bb.g ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i.i ], [ %i.ci, %bb.j ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i95.i ], [ %i.dy, %bb.m ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i110.i ], [ %i.fo, %bb.p ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i125.i ], [ %i.he, %bb.s ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i141.i ], [ %i.iu, %bb.v ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i157.i ], [ %i.kk, %bb.y ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i173.i ], [ %i.ma, %bb.ab ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i189.i ], [ %i.nq, %bb.ae ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i205.i ], [ %i.ph, %bb.ah ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i221.i ], [ %i.qy, %bb.ak ], [ 0, %_ZNK5arrow6Tensor4sizeEv.exit.i.i.i234.i ], [ %i.au, %middle.block308 ], [ %i.cf, %middle.block291 ], [ %i.dv, %middle.block274 ], [ %i.fl, %middle.block257 ], [ %i.hb, %middle.block240 ], [ %i.ir, %middle.block223 ], [ %i.kh, %middle.block206 ], [ %i.lx, %middle.block189 ], [ %i.nn, %middle.block172 ], [ %i.pd, %middle.block155 ], [ %i.qu, %middle.block ], [ %spec.select.i.i.i.i.i242.i, %.lr.ph.i.i4.i.i.i238.i ]
  store ptr null, ptr %3, align 8, !tbaa !27, !alias.scope !412
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.invoke, %_ZN5arrow6StatusD2Ev.exit.sink.split, %bb.al
  %.sroa.15.0 = phi i64 [ 0, %.invoke ], [ %.sroa.15.0.ph, %_ZN5arrow6StatusD2Ev.exit.sink.split ], [ 0, %bb.al ]
  %i.qz = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  store ptr %i.qz, ptr %2, align 8, !tbaa !27
  store ptr null, ptr %3, align 8, !tbaa !27
  %i.ra = load ptr, ptr %i.c, align 8, !tbaa !81  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ra, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8 ; 4 uses
  %i.rc = load atomic i64, ptr %i.rb acquire, align 8 ; 2 uses
  %i.rd = icmp eq i64 %i.rc, 4294967297
  %i.re = trunc i64 %i.rc to i32                  ; 2 uses
  br i1 %i.rd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.rb, align 8, !tbaa !84
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  store i32 0, ptr %i.rf, align 4, !tbaa !85
  %i.rg = load ptr, ptr %i.ra, align 8, !tbaa !16
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #22, !inline_history !0
  %i.rj = load ptr, ptr %i.ra, align 8, !tbaa !16
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #22, !inline_history !0
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.ao:                                            ; preds = %bb.am
  %i.rm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i = icmp eq i8 %i.rm, 0
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rn = add nsw i32 %i.re, -1
  store i32 %i.rn, ptr %i.rb, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ro = atomicrmw volatile add ptr %i.rb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i = phi i32 [ %i.re, %bb.ap ], [ %i.ro, %bb.aq ]
  %i.rp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.rp, label %bb.ar, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, !prof !82

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.an
  %.pr = load ptr, ptr %2, align 8, !tbaa !27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, %_ZN5arrow6StatusD2Ev.exit
  %i.rq = phi ptr [ %.pr, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split ], [ %i.qz, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.rr = icmp eq ptr %i.rq, null
  br i1 %i.rr, label %_ZN5arrow6StatusD2Ev.exit56, label %bb.as, !prof !34

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  %i.rs = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %.not.i51 = icmp eq ptr %i.rs, null
  br i1 %.not.i51, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.at, !prof !34

bb.at:                                            ; preds = %bb.as
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 1
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !44, !range !45, !noundef !46
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  br label %_ZN5arrow6StatusD2Ev.exit52

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.aw

bb.av:                                            ; preds = %.invoke, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.rw

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr null, ptr %0, align 8, !tbaa !27
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.0, ptr %i.rx, align 8, !tbaa !23
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
  store ptr null, ptr %0, align 8, !tbaa !27
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !82

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
end_hunk_0
