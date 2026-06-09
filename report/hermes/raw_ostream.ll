inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZN4llvh11raw_ostream5writeEPKcm:bb.a
  %.tr34.ph.be = phi i64 [ %i.aw, %bb.f ], [ %i.aa, %bb.d ] ; 3 uses
  %.tr33.ph.be = getelementptr inbounds nuw i8, ptr %.tr33.ph60, i64 %.pn ; 2 uses
  %i.am = icmp ult i64 %.pre-phi92, %.tr34.ph.be
  br i1 %i.am, label %.lr.ph, label %tailrecurse.outer._crit_edge, !prof !33

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.tr33.ph60, i64 %i.ab
  tail call void @_ZN4llvh11raw_ostream14copy_to_bufferEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.an, i64 noundef %i.aa)
  br label %bb.l

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZN4llvh11raw_ostream14copy_to_bufferEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.tr33.ph60, i64 noundef %.lcssa124)
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !14  ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !9
  %i.at = load ptr, ptr %0, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.ap, i64 noundef %i.as) #26, !inline_history !41
  %i.aw = sub i64 %.tr34.ph61, %.lcssa124
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17
  %.pre84 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.pre88 = ptrtoint ptr %.pre to i64
  %.pre89 = ptrtoint ptr %.pre84 to i64
  %.pre91 = sub i64 %.pre88, %.pre89
  br label %tailrecurse.outer.backedge

tailrecurse.outer._crit_edge:                     ; preds = %tailrecurse.outer.backedge, %tailrecurse, %bb.a
  %.tr33.ph.lcssa54 = phi ptr [ %.tr33.ph60, %tailrecurse ], [ %1, %bb.a ], [ %.tr33.ph.be, %tailrecurse.outer.backedge ] ; 5 uses
  %.tr34.ph.lcssa52 = phi i64 [ %.tr34.ph61, %tailrecurse ], [ %2, %bb.a ], [ %.tr34.ph.be, %tailrecurse.outer.backedge ] ; 3 uses
  %.lcssa37 = phi ptr [ %i.u, %tailrecurse ], [ %i.d, %bb.a ], [ %i.al, %tailrecurse.outer.backedge ] ; 5 uses
  switch i64 %.tr34.ph.lcssa52, label %bb.k [
    i64 4, label %bb.g
    i64 3, label %bb.h
    i64 2, label %bb.i
    i64 1, label %bb.j
    i64 0, label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit
  ]

bb.g:                                             ; preds = %tailrecurse.outer._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa37, i64 3
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !22
  %.pre85 = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %tailrecurse.outer._crit_edge
  %i.ba = phi ptr [ %.pre85, %bb.g ], [ %.lcssa37, %tailrecurse.outer._crit_edge ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !22
  %.pre86 = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %tailrecurse.outer._crit_edge
  %i.be = phi ptr [ %.pre86, %bb.h ], [ %.lcssa37, %tailrecurse.outer._crit_edge ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !22
  %.pre87 = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %tailrecurse.outer._crit_edge
  %i.bi = phi ptr [ %.pre87, %bb.i ], [ %.lcssa37, %tailrecurse.outer._crit_edge ]
  %i.bj = load i8, ptr %.tr33.ph.lcssa54, align 1, !tbaa !22
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit

bb.k:                                             ; preds = %tailrecurse.outer._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa37, ptr readonly align 1 %.tr33.ph.lcssa54, i64 %.tr34.ph.lcssa52, i1 false)
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit

_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit:  ; preds = %tailrecurse.outer._crit_edge, %bb.j, %bb.k
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.tr34.ph.lcssa52
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh11raw_ostream14copy_to_bufferEPKcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  switch i64 %2, label %bb.f [
    i64 4, label %bb.b
    i64 3, label %bb.c
    i64 2, label %bb.d
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.b, ptr %i.e, align 1, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.g, ptr %i.j, align 1, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.l, ptr %i.o, align 1, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = load i8, ptr %1, align 1, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9
  store i8 %i.p, ptr %i.r, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %2
  store ptr %i.w, ptr %i.u, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallString", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !31
  call void @_ZNK4llvh19formatv_object_base6formatERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.d = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.d) #26
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh19formatv_object_base6formatERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvh::FmtAlign", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not2627 = icmp eq ptr %i.b, %i.d
  br i1 %.not2627, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %.sroa.023.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.ax, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.023.028) ]
  %i.l = load i32, ptr %.sroa.023.028, align 8, !tbaa !46
  switch i32 %i.l, label %bb.g [
    i32 0, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 16
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !53 ; 5 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %.sroa.24.0.copyload, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %.sroa.03.0.copyload, i64 noundef %.sroa.24.0.copyload) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %.sroa.24.0.copyload, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, i1 false)
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.24.0.copyload
  store ptr %i.v, ptr %i.f, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !59   ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %.not = icmp ult i64 %i.x, %i.ad
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !52 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !53 ; 5 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !9   ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %.sroa.22.0.copyload, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.j:                                             ; preds = %bb.h
  %.not.i21 = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.i21, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i1 false)
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.22.0.copyload
  store ptr %i.an, ptr %i.f, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.l:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !64
  store ptr %i.ap, ptr %2, align 8, !tbaa !60
  store i32 %i.ar, ptr %i.i, align 8, !tbaa !65
  store i64 %i.at, ptr %i.j, align 8, !tbaa !67
  store i8 %i.av, ptr %i.k, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 48
  %.sroa.0.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !52
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 56
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !53
  call void @_ZN4llvh8FmtAlign6formatERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.b, %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 64 ; 2 uses
  %.not26 = icmp eq ptr %i.ax, %i.d
  br i1 %.not26, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !70
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.not = icmp ult i64 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8, !tbaa !52 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.b, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.sroa.010.0.copyload, i64 noundef %i.b) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.sroa.010.0.copyload, i64 %i.b, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.b
  store ptr %i.s, ptr %i.k, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %bb.b
  %i.t = sub nsw i64 %i.e, %i.b                   ; 6 uses
  switch i32 %i.g, label %bb.x [
    i32 1, label %bb.h
    i32 2, label %bb.m
    i32 3, label %bb.r
  ]

bb.h:                                             ; preds = %bb.g
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !52 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ugt i64 %i.b, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.sroa.04.0.copyload, i64 noundef %i.b) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24

bb.j:                                             ; preds = %bb.h
  %.not.i23 = icmp eq i64 %i.b, 0
  br i1 %.not.i23, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %.sroa.04.0.copyload, i64 %i.b, i1 false)
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.b
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24:    ; preds = %bb.i, %bb.j, %bb.k
  %i.af = trunc i64 %i.t to i32                   ; 2 uses
  %i.ag = icmp ult i32 %i.af, 80
  br i1 %i.ag, label %bb.l, label %.preheader.i.i

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24
  %i.ah = and i64 %i.t, 127
  %i.ai = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.ah) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

.preheader.i.i:                                   ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24, %.preheader.i.i
  %.01112.i.i = phi i32 [ %i.al, %.preheader.i.i ], [ %i.af, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24 ] ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %.01112.i.i, i32 79) ; 2 uses
  %i.aj = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.ak = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.aj) ; 0 uses
  %i.al = sub i32 %.01112.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %.preheader.i.i, !llvm.loop !74

bb.m:                                             ; preds = %bb.g
  %i.am = trunc i64 %i.t to i32                   ; 2 uses
  %i.an = icmp ult i32 %i.am, 80
  br i1 %i.an, label %bb.n, label %.preheader.i.i25

bb.n:                                             ; preds = %bb.m
  %i.ao = and i64 %i.t, 127
  %i.ap = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.ao) ; 0 uses
  br label %_ZN4llvh11raw_ostream6indentEj.exit29

.preheader.i.i25:                                 ; preds = %bb.m, %.preheader.i.i25
  %.01112.i.i26 = phi i32 [ %i.as, %.preheader.i.i25 ], [ %i.am, %bb.m ] ; 2 uses
  %.sroa.speculated.i.i27 = tail call i32 @llvm.umin.i32(i32 %.01112.i.i26, i32 79) ; 2 uses
  %i.aq = zext nneg i32 %.sroa.speculated.i.i27 to i64
  %i.ar = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.aq) ; 0 uses
  %i.as = sub i32 %.01112.i.i26, %.sroa.speculated.i.i27 ; 2 uses
  %.not.i.i28 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i28, label %_ZN4llvh11raw_ostream6indentEj.exit29, label %.preheader.i.i25, !llvm.loop !74

_ZN4llvh11raw_ostream6indentEj.exit29:            ; preds = %.preheader.i.i25, %bb.n
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !tbaa !52 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %i.a, align 8, !tbaa !53 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9  ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ugt i64 %.sroa.23.0.copyload, %i.az
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvh11raw_ostream6indentEj.exit29
  %i.bb = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.sroa.02.0.copyload, i64 noundef %.sroa.23.0.copyload) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.p:                                             ; preds = %_ZN4llvh11raw_ostream6indentEj.exit29
  %.not.i30 = icmp eq i64 %.sroa.23.0.copyload, 0
  br i1 %.not.i30, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, i1 false)
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.23.0.copyload
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.r:                                             ; preds = %bb.g
  %i.be = lshr i64 %i.t, 1                        ; 3 uses
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 80
  br i1 %i.bg, label %bb.s, label %.preheader.i.i32

bb.s:                                             ; preds = %bb.r
  %i.bh = and i64 %i.be, 127
  %i.bi = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.bh) ; 0 uses
  br label %_ZN4llvh11raw_ostream6indentEj.exit36

.preheader.i.i32:                                 ; preds = %bb.r, %.preheader.i.i32
  %.01112.i.i33 = phi i32 [ %i.bl, %.preheader.i.i32 ], [ %i.bf, %bb.r ] ; 2 uses
  %.sroa.speculated.i.i34 = tail call i32 @llvm.umin.i32(i32 %.01112.i.i33, i32 79) ; 2 uses
  %i.bj = zext nneg i32 %.sroa.speculated.i.i34 to i64
  %i.bk = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.bj) ; 0 uses
  %i.bl = sub i32 %.01112.i.i33, %.sroa.speculated.i.i34 ; 2 uses
  %.not.i.i35 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i35, label %_ZN4llvh11raw_ostream6indentEj.exit36, label %.preheader.i.i32, !llvm.loop !74

_ZN4llvh11raw_ostream6indentEj.exit36:            ; preds = %.preheader.i.i32, %bb.s
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !52 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8, !tbaa !53 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9  ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
end_hunk_0
begin_hunk_1_@_ZN4llvh11raw_ostream6indentEj:bb.a
.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.01112.i = phi i32 [ %i.f, %.preheader.i ], [ %1, %bb.a ] ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.01112.i, i32 79) ; 2 uses
  %i.d = zext nneg i32 %.sroa.speculated.i to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.d) ; 0 uses
  %i.f = sub i32 %.01112.i, %.sroa.speculated.i   ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL13write_paddingILc32EERN4llvh11raw_ostreamES2_j.exit, label %.preheader.i, !llvm.loop !74

_ZL13write_paddingILc32EERN4llvh11raw_ostreamES2_j.exit: ; preds = %.preheader.i, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.7", align 8 ; 9 uses
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !75, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.e = load i8, ptr %i.d, align 1, !tbaa !80, !range !78, !noundef !79
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.h = load i8, ptr %i.g, align 2, !range !78
  %i.i = trunc nuw i8 %i.h to i1                  ; 3 uses
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = xor i1 %i.f, true                       ; 2 uses
  %or.cond18 = select i1 %.not, i1 true, i1 %i.i
  br i1 %or.cond18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %or.cond22 = select i1 %.not, i1 %i.i, i1 false
  %spec.select = select i1 %or.cond22, i32 3, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ %spec.select, %bb.d ], [ 0, %bb.c ]
  %i.j = load i64, ptr %1, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = zext i32 %i.l to i64
  tail call void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.j, i32 noundef %.0, i64 %i.m, i8 1) #26
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 16, ptr %i.p, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.r, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !85
  call void @_ZN4llvh13write_integerERNS_11raw_ostreamElmNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %3, i64 noundef %i.t, i64 noundef 0, i32 noundef 0) #26
  %i.u = load i32, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !82   ; 2 uses
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %bb.g, label %_ZN4llvh11raw_ostream6indentEj.exit

bb.g:                                             ; preds = %bb.f
  %i.y = sub nuw i32 %i.w, %i.u                   ; 3 uses
  %i.z = icmp ult i32 %i.y, 80
  br i1 %i.z, label %bb.h, label %.preheader.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.aa) ; 0 uses
  br label %_ZN4llvh11raw_ostream6indentEj.exit

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i
  %.01112.i.i = phi i32 [ %i.ae, %.preheader.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %.01112.i.i, i32 79) ; 2 uses
  %i.ac = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.ac) ; 0 uses
  %i.ae = sub i32 %.01112.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostream6indentEj.exit, label %.preheader.i.i, !llvm.loop !74

_ZN4llvh11raw_ostream6indentEj.exit:              ; preds = %.preheader.i.i, %bb.h, %bb.f
  %i.af = load ptr, ptr %2, align 8, !tbaa !28
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !30
  %i.ah = zext i32 %i.ag to i64
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.af, i64 noundef %i.ah) ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh11raw_ostreamE, i64 16), ptr %3, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !16
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_ZN4llvh11raw_ostreamD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh11raw_ostream6indentEj.exit
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !14  ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN4llvh11raw_ostreamD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.am) #28, !inline_history !86
  br label %_ZN4llvh11raw_ostreamD2Ev.exit

_ZN4llvh11raw_ostreamD2Ev.exit:                   ; preds = %_ZN4llvh11raw_ostream6indentEj.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ao = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.n
  br i1 %i.ap, label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamD2Ev.exit
  call void @free(ptr noundef %i.ao) #26
  br label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit

_ZN4llvh11SmallVectorIcLj16EED2Ev.exit:           ; preds = %_ZN4llvh11raw_ostreamD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(43) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87
  %.fr = freeze i64 %i.f                          ; 5 uses
  %i.g = icmp eq i64 %.fr, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0150.0.copyload = load ptr, ptr %1, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.i = load i8, ptr %i.h, align 1, !tbaa !89, !range !78, !noundef !79
  %i.j = xor i8 %i.i, 1
  %not. = zext nneg i8 %i.j to i32                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !95, !range !78, !noundef !79
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !96   ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  br i1 %i.n, label %bb.c, label %._crit_edge273

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.k, align 8, !tbaa !53
  %i.s = urem i64 %.fr, %i.q
  %i.t = sub nuw i64 %.fr, %i.s
  %i.u = add i64 %i.t, %i.r                       ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge273, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 false)
  %i.x = sub nuw nsw i64 67, %i.w
  %i.y = lshr i64 %i.x, 2
  %i.z = tail call i64 @llvm.umax.i64(i64 %i.y, i64 4)
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i64 [ %i.z, %bb.d ], [ 4, %bb.c ], [ 0, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !97
  %i.ad = zext i8 %i.ac to i64                    ; 2 uses
  %i.ae = add nsw i64 %i.q, -1
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.af, %i.ad
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = shl i32 %i.p, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 60 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.ap = or disjoint i32 %i.ai, 1
  %i.aq = add i32 %i.ap, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge273, %_ZN4llvh11raw_ostreamlsEc.exit107
  %.048227 = phi i64 [ 0, %._crit_edge273 ], [ %i.kz, %_ZN4llvh11raw_ostreamlsEc.exit107 ] ; 2 uses
  %.sroa.6151.0226 = phi i64 [ %.fr, %._crit_edge273 ], [ %i.kx, %_ZN4llvh11raw_ostreamlsEc.exit107 ] ; 2 uses
  %.sroa.0150.0224 = phi ptr [ %.sroa.0150.0.copyload, %._crit_edge273 ], [ %i.ky, %_ZN4llvh11raw_ostreamlsEc.exit107 ] ; 6 uses
  %i.ar = load i32, ptr %i.aj, align 8, !tbaa !98 ; 3 uses
  %i.as = icmp ult i32 %i.ar, 80
  br i1 %i.as, label %bb.f, label %.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.at) ; 0 uses
  br label %_ZN4llvh11raw_ostream6indentEj.exit

.preheader.i.i:                                   ; preds = %bb.e, %_ZN4llvh11raw_ostream5writeEPKcm.exit
  %.01112.i.i = phi i32 [ %i.dt, %_ZN4llvh11raw_ostream5writeEPKcm.exit ], [ %i.ar, %bb.e ] ; 2 uses
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %.01112.i.i, i32 79) ; 2 uses
  %i.av = zext nneg i32 %.sroa.speculated.i.i to i64 ; 3 uses
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.av
  br i1 %i.bb, label %.lr.ph.i108, label %tailrecurse.outer._crit_edge.i, !prof !42

.lr.ph.i108:                                      ; preds = %.preheader.i.i, %tailrecurse.outer.backedge.i
  %i.bc = phi i64 [ %.pre-phi92.i, %tailrecurse.outer.backedge.i ], [ %i.ba, %.preheader.i.i ]
  %i.bd = phi ptr [ %i.ce, %tailrecurse.outer.backedge.i ], [ %i.ax, %.preheader.i.i ]
  %.tr34.ph61.i = phi i64 [ %.tr34.ph.be.i, %tailrecurse.outer.backedge.i ], [ %i.av, %.preheader.i.i ] ; 6 uses
  %.tr33.ph60.i = phi ptr [ %.tr33.ph.be.i, %tailrecurse.outer.backedge.i ], [ @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, %.preheader.i.i ] ; 10 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not.i109206 = icmp eq ptr %i.be, null
  br i1 %.not.i109206, label %.lr.ph, label %._crit_edge, !prof !32

bb.g:                                             ; preds = %tailrecurse.i
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not.i109 = icmp eq ptr %i.bf, null
  br i1 %.not.i109, label %.lr.ph, label %._crit_edge, !prof !33

.lr.ph:                                           ; preds = %.lr.ph.i108, %bb.g
  %i.bg = load i32, ptr %i.an, align 8, !tbaa !16
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %tailrecurse.i

bb.h:                                             ; preds = %.lr.ph
  %i.bi = load ptr, ptr %0, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.tr33.ph60.i, i64 noundef %.tr34.ph61.i) #26, !inline_history !99
  br label %_ZN4llvh11raw_ostream5writeEPKcm.exit

tailrecurse.i:                                    ; preds = %.lr.ph
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !99
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.tr34.ph61.i
  br i1 %i.bq, label %bb.g, label %tailrecurse.outer._crit_edge.i, !prof !33

._crit_edge:                                      ; preds = %bb.g, %.lr.ph.i108
  %.lcssa162 = phi i64 [ %i.bc, %.lr.ph.i108 ], [ %i.bp, %bb.g ] ; 6 uses
  %i.br = phi ptr [ %i.bd, %.lr.ph.i108 ], [ %i.bm, %bb.g ] ; 6 uses
  %.lcssa = phi ptr [ %i.be, %.lr.ph.i108 ], [ %i.bf, %bb.g ]
  %i.bs = icmp eq ptr %i.br, %.lcssa
  br i1 %i.bs, label %bb.i, label %bb.k, !prof !43

bb.i:                                             ; preds = %._crit_edge
  %i.bt = urem i64 %.tr34.ph61.i, %.lcssa162      ; 4 uses
  %i.bu = sub nuw i64 %.tr34.ph61.i, %i.bt        ; 3 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.tr33.ph60.i, i64 noundef %i.bu) #26, !inline_history !99
  %i.by = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = icmp ugt i64 %i.bt, %i.cc
  br i1 %i.cd, label %tailrecurse.outer.backedge.i, label %bb.j

tailrecurse.outer.backedge.i:                     ; preds = %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit, %bb.i
  %.pre-phi92.i = phi i64 [ %.pre91.i, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit ], [ %i.cc, %bb.i ] ; 2 uses
  %i.ce = phi ptr [ %.pre84.i, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit ], [ %i.bz, %bb.i ] ; 2 uses
  %.pn.i110 = phi i64 [ %.lcssa162, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit ], [ %i.bu, %bb.i ]
  %.tr34.ph.be.i = phi i64 [ %i.dd, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit ], [ %i.bt, %bb.i ] ; 3 uses
  %.tr33.ph.be.i = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i, i64 %.pn.i110 ; 2 uses
  %i.cf = icmp ult i64 %.pre-phi92.i, %.tr34.ph.be.i
  br i1 %i.cf, label %.lr.ph.i108, label %tailrecurse.outer._crit_edge.i, !prof !33

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i, i64 %i.bu
  call void @_ZN4llvh11raw_ostream14copy_to_bufferEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.cg, i64 noundef %i.bt), !inline_history !99
  br label %_ZN4llvh11raw_ostream5writeEPKcm.exit

bb.k:                                             ; preds = %._crit_edge
  switch i64 %.lcssa162, label %bb.p [
    i64 4, label %bb.l
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
    i64 0, label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !22
  %.pre274.a = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ck = phi ptr [ %.pre274.a, %bb.l ], [ %i.br, %bb.k ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !22
  %.pre275 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.co = phi ptr [ %.pre275, %bb.m ], [ %i.br, %bb.k ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !22
  %.pre276 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.cs = phi ptr [ %.pre276, %bb.n ], [ %i.br, %bb.k ]
  %i.ct = load i8, ptr %.tr33.ph60.i, align 1, !tbaa !22
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr readonly align 1 %.tr33.ph60.i, i64 %.lcssa162, i1 false)
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit

_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit:  ; preds = %bb.k, %bb.o, %bb.p
  %i.cu = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.lcssa162
  %i.cw = load ptr, ptr %i.am, align 8, !tbaa !14 ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.cw, ptr %i.al, align 8, !tbaa !9
  %i.da = load ptr, ptr %0, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.cw, i64 noundef %i.cz) #26, !inline_history !100
  %i.dd = sub i64 %.tr34.ph61.i, %.lcssa162
  %.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.pre84.i = load ptr, ptr %i.al, align 8, !tbaa !9 ; 2 uses
  %.pre88.i = ptrtoint ptr %.pre.i to i64
  %.pre89.i = ptrtoint ptr %.pre84.i to i64
  %.pre91.i = sub i64 %.pre88.i, %.pre89.i
  br label %tailrecurse.outer.backedge.i

tailrecurse.outer._crit_edge.i:                   ; preds = %tailrecurse.outer.backedge.i, %tailrecurse.i, %.preheader.i.i
  %.tr33.ph.lcssa54.i = phi ptr [ %.tr33.ph60.i, %tailrecurse.i ], [ @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, %.preheader.i.i ], [ %.tr33.ph.be.i, %tailrecurse.outer.backedge.i ] ; 5 uses
  %.tr34.ph.lcssa52.i = phi i64 [ %.tr34.ph61.i, %tailrecurse.i ], [ %i.av, %.preheader.i.i ], [ %.tr34.ph.be.i, %tailrecurse.outer.backedge.i ] ; 3 uses
  %.lcssa37.i = phi ptr [ %i.bm, %tailrecurse.i ], [ %i.ax, %.preheader.i.i ], [ %i.ce, %tailrecurse.outer.backedge.i ] ; 5 uses
  switch i64 %.tr34.ph.lcssa52.i, label %bb.u [
    i64 4, label %bb.q
    i64 3, label %bb.r
    i64 2, label %bb.s
    i64 1, label %bb.t
    i64 0, label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i
  ]

bb.q:                                             ; preds = %tailrecurse.outer._crit_edge.i
  %i.de = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54.i, i64 3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %.lcssa37.i, i64 3
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !22
  %.pre85.i = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %tailrecurse.outer._crit_edge.i
  %i.dh = phi ptr [ %.pre85.i, %bb.q ], [ %.lcssa37.i, %tailrecurse.outer._crit_edge.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54.i, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !22
  %.pre86.i = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %tailrecurse.outer._crit_edge.i
  %i.dl = phi ptr [ %.pre86.i, %bb.r ], [ %.lcssa37.i, %tailrecurse.outer._crit_edge.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54.i, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !22
  %.pre87.i = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %tailrecurse.outer._crit_edge.i
  %i.dp = phi ptr [ %.pre87.i, %bb.s ], [ %.lcssa37.i, %tailrecurse.outer._crit_edge.i ]
  %i.dq = load i8, ptr %.tr33.ph.lcssa54.i, align 1, !tbaa !22
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i

bb.u:                                             ; preds = %tailrecurse.outer._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa37.i, ptr readonly align 1 %.tr33.ph.lcssa54.i, i64 %.tr34.ph.lcssa52.i, i1 false)
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i

_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i: ; preds = %bb.u, %bb.t, %tailrecurse.outer._crit_edge.i
  %i.dr = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.tr34.ph.lcssa52.i
  store ptr %i.ds, ptr %i.al, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostream5writeEPKcm.exit

_ZN4llvh11raw_ostream5writeEPKcm.exit:            ; preds = %bb.h, %bb.j, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i
  %i.dt = sub i32 %.01112.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostream6indentEj.exit, label %.preheader.i.i, !llvm.loop !74

_ZN4llvh11raw_ostream6indentEj.exit:              ; preds = %_ZN4llvh11raw_ostream5writeEPKcm.exit, %bb.f
  %i.du = load i8, ptr %i.l, align 8, !tbaa !95, !range !78, !noundef !79
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.v, label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.v:                                             ; preds = %_ZN4llvh11raw_ostream6indentEj.exit
  %i.dw = load i64, ptr %i.k, align 8, !tbaa !53
  %i.dx = add i64 %i.dw, %.048227
  call void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.dx, i32 noundef %not., i64 %.0, i8 1) #26
  %i.dy = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.dz = load ptr, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ult i64 %i.ec, 2
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ee = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.x:                                             ; preds = %bb.v
  store i16 8250, ptr %i.dz, align 1
  %i.ef = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store ptr %i.eg, ptr %i.al, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.x, %bb.w, %_ZN4llvh11raw_ostream6indentEj.exit
  %i.eh = load i32, ptr %i.aa, align 4, !tbaa !96 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %..i55 = call i64 @llvm.umin.i64(i64 %i.ei, i64 %.sroa.6151.0226) ; 6 uses
  %.not228 = icmp eq i32 %i.eh, 0                 ; 2 uses
  br i1 %.not228, label %._crit_edge212, label %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel

_ZN4llvh11raw_ostreamlsEPKc.exit57.peel:          ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.0224) ]
  %i.ej = load i8, ptr %.sroa.0150.0224, align 1, !tbaa !22
  %i.ek = zext i8 %i.ej to i64
  call void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.ek, i32 noundef %not., i64 2, i8 1) #26
  %exitcond.peel.not = icmp eq i64 %..i55, 1
  br i1 %exitcond.peel.not, label %._crit_edge212, label %.lr.ph211.peel.next

._crit_edge212:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.050.lcssa = phi i32 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit ], [ 2, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel ], [ %i.fc, %_ZN4llvh11raw_ostreamlsEPKc.exit57 ]
  %i.el = load i8, ptr %i.ao, align 2, !tbaa !101, !range !78, !noundef !79
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ab, label %_ZN4llvh11raw_ostreamlsEc.exit

.lr.ph211.peel.next:                              ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel, %_ZN4llvh11raw_ostreamlsEPKc.exit57
  %.050210 = phi i32 [ %i.fc, %_ZN4llvh11raw_ostreamlsEPKc.exit57 ], [ 2, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel ] ; 2 uses
  %.052209 = phi i64 [ %i.fb, %_ZN4llvh11raw_ostreamlsEPKc.exit57 ], [ 1, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel ] ; 3 uses
  %i.en = load i8, ptr %i.ab, align 8, !tbaa !97
  %i.eo = zext i8 %i.en to i64
  %i.ep = urem i64 %.052209, %i.eo
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.y, label %_ZN4llvh11raw_ostreamlsEPKc.exit57

bb.y:                                             ; preds = %.lr.ph211.peel.next
  %i.er = add i32 %.050210, 1                     ; 2 uses
  %i.es = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.et = load ptr, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ev = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit57

bb.aa:                                            ; preds = %bb.y
  store i8 32, ptr %i.et, align 1
  %i.ew = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store ptr %i.ex, ptr %i.al, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit57

_ZN4llvh11raw_ostreamlsEPKc.exit57:               ; preds = %bb.aa, %bb.z, %.lr.ph211.peel.next
  %.1 = phi i32 [ %i.er, %bb.aa ], [ %.050210, %.lr.ph211.peel.next ], [ %i.er, %bb.z ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0150.0224, i64 %.052209
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !22
  %i.fa = zext i8 %i.ez to i64
  call void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.fa, i32 noundef %not., i64 2, i8 1) #26
  %i.fb = add nuw nsw i64 %.052209, 1             ; 2 uses
  %i.fc = add i32 %.1, 2                          ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, %..i55
  br i1 %exitcond.not, label %._crit_edge212, label %.lr.ph211.peel.next, !llvm.loop !102

bb.ab:                                            ; preds = %._crit_edge212
  %i.fd = sub i32 %i.aq, %.050.lcssa              ; 3 uses
  %i.fe = icmp ult i32 %i.fd, 80
  br i1 %i.fe, label %bb.ac, label %.preheader.i.i58

bb.ac:                                            ; preds = %bb.ab
  %i.ff = zext nneg i32 %i.fd to i64
  %i.fg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.ff) ; 0 uses
  br label %_ZN4llvh11raw_ostream6indentEj.exit62

.preheader.i.i58:                                 ; preds = %bb.ab, %_ZN4llvh11raw_ostream5writeEPKcm.exit135
  %.01112.i.i59 = phi i32 [ %i.if, %_ZN4llvh11raw_ostream5writeEPKcm.exit135 ], [ %i.fd, %bb.ab ] ; 2 uses
  %.sroa.speculated.i.i60 = call i32 @llvm.umin.i32(i32 %.01112.i.i59, i32 79) ; 2 uses
  %i.fh = zext nneg i32 %.sroa.speculated.i.i60 to i64 ; 3 uses
  %i.fi = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.fj = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fh
  br i1 %i.fn, label %.lr.ph.i120, label %tailrecurse.outer._crit_edge.i111, !prof !42

.lr.ph.i120:                                      ; preds = %.preheader.i.i58, %tailrecurse.outer.backedge.i129
  %i.fo = phi i64 [ %.pre-phi92.i130, %tailrecurse.outer.backedge.i129 ], [ %i.fm, %.preheader.i.i58 ]
  %i.fp = phi ptr [ %i.gq, %tailrecurse.outer.backedge.i129 ], [ %i.fj, %.preheader.i.i58 ]
  %.tr34.ph61.i121 = phi i64 [ %.tr34.ph.be.i132, %tailrecurse.outer.backedge.i129 ], [ %i.fh, %.preheader.i.i58 ] ; 6 uses
  %.tr33.ph60.i122 = phi ptr [ %.tr33.ph.be.i133, %tailrecurse.outer.backedge.i129 ], [ @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, %.preheader.i.i58 ] ; 10 uses
  %i.fq = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not.i123214 = icmp eq ptr %i.fq, null
  br i1 %.not.i123214, label %.lr.ph215, label %._crit_edge216, !prof !32

bb.ad:                                            ; preds = %tailrecurse.i134
  %i.fr = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not.i123 = icmp eq ptr %i.fr, null
  br i1 %.not.i123, label %.lr.ph215, label %._crit_edge216, !prof !33

.lr.ph215:                                        ; preds = %.lr.ph.i120, %bb.ad
  %i.fs = load i32, ptr %i.an, align 8, !tbaa !16
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.ae, label %tailrecurse.i134

bb.ae:                                            ; preds = %.lr.ph215
  %i.fu = load ptr, ptr %0, align 8, !tbaa !7
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.tr33.ph60.i122, i64 noundef %.tr34.ph61.i121) #26, !inline_history !99
  br label %_ZN4llvh11raw_ostream5writeEPKcm.exit135

tailrecurse.i134:                                 ; preds = %.lr.ph215
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !99
  %i.fx = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.fy = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %.tr34.ph61.i121
  br i1 %i.gc, label %bb.ad, label %tailrecurse.outer._crit_edge.i111, !prof !33

._crit_edge216:                                   ; preds = %bb.ad, %.lr.ph.i120
  %.lcssa181 = phi i64 [ %i.fo, %.lr.ph.i120 ], [ %i.gb, %bb.ad ] ; 6 uses
  %i.gd = phi ptr [ %i.fp, %.lr.ph.i120 ], [ %i.fy, %bb.ad ] ; 6 uses
  %.lcssa175 = phi ptr [ %i.fq, %.lr.ph.i120 ], [ %i.fr, %bb.ad ]
  %i.ge = icmp eq ptr %i.gd, %.lcssa175
  br i1 %i.ge, label %bb.af, label %bb.ah, !prof !43

bb.af:                                            ; preds = %._crit_edge216
  %i.gf = urem i64 %.tr34.ph61.i121, %.lcssa181   ; 4 uses
  %i.gg = sub nuw i64 %.tr34.ph61.i121, %i.gf     ; 3 uses
  %i.gh = load ptr, ptr %0, align 8, !tbaa !7
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.tr33.ph60.i122, i64 noundef %i.gg) #26, !inline_history !99
  %i.gk = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.gl = load ptr, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = icmp ugt i64 %i.gf, %i.go
  br i1 %i.gp, label %tailrecurse.outer.backedge.i129, label %bb.ag

tailrecurse.outer.backedge.i129:                  ; preds = %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136, %bb.af
  %.pre-phi92.i130 = phi i64 [ %.pre91.i128, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136 ], [ %i.go, %bb.af ] ; 2 uses
  %i.gq = phi ptr [ %.pre84.i125, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136 ], [ %i.gl, %bb.af ] ; 2 uses
  %.pn.i131 = phi i64 [ %.lcssa181, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136 ], [ %i.gg, %bb.af ]
  %.tr34.ph.be.i132 = phi i64 [ %i.hp, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136 ], [ %i.gf, %bb.af ] ; 3 uses
  %.tr33.ph.be.i133 = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i122, i64 %.pn.i131 ; 2 uses
  %i.gr = icmp ult i64 %.pre-phi92.i130, %.tr34.ph.be.i132
  br i1 %i.gr, label %.lr.ph.i120, label %tailrecurse.outer._crit_edge.i111, !prof !33

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i122, i64 %i.gg
  call void @_ZN4llvh11raw_ostream14copy_to_bufferEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.gs, i64 noundef %i.gf), !inline_history !99
  br label %_ZN4llvh11raw_ostream5writeEPKcm.exit135

bb.ah:                                            ; preds = %._crit_edge216
  switch i64 %.lcssa181, label %bb.am [
    i64 4, label %bb.ai
    i64 3, label %bb.aj
    i64 2, label %bb.ak
    i64 1, label %bb.al
    i64 0, label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i122, i64 3
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !22
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !22
  %.pre277 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gw = phi ptr [ %.pre277, %bb.ai ], [ %i.gd, %bb.ah ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i122, i64 2
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !22
  %.pre278 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.ha = phi ptr [ %.pre278, %bb.aj ], [ %i.gd, %bb.ah ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr33.ph60.i122, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !22
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !22
  %.pre279 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.he = phi ptr [ %.pre279, %bb.ak ], [ %i.gd, %bb.ah ]
  %i.hf = load i8, ptr %.tr33.ph60.i122, align 1, !tbaa !22
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136

bb.am:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr readonly align 1 %.tr33.ph60.i122, i64 %.lcssa181, i1 false)
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136

_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit136: ; preds = %bb.ah, %bb.al, %bb.am
  %i.hg = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.lcssa181
  %i.hi = load ptr, ptr %i.am, align 8, !tbaa !14 ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  store ptr %i.hi, ptr %i.al, align 8, !tbaa !9
  %i.hm = load ptr, ptr %0, align 8, !tbaa !7
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8
end_hunk_1
begin_hunk_2_@_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = call i64 @lseek(i32 noundef %.1.i, i64 noundef 0, i32 noundef 1) #26 ; 2 uses
  %i.z = icmp ne i64 %i.y, -1                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.ac, align 8, !tbaa !120
  br label %_ZN4llvh14raw_fd_ostreamC2Eibb.exit

bb.k:                                             ; preds = %bb.i
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !120
  br label %_ZN4llvh14raw_fd_ostreamC2Eibb.exit

_ZN4llvh14raw_fd_ostreamC2Eibb.exit:              ; preds = %bb.f, %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3, i32 noundef %4) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef 2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs10FileAccessE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3, i32 noundef %4) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef %4, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3, i32 noundef %4) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef 2, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2Eibb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %not..i.i = xor i1 %3, true
  %i.c = zext i1 %not..i.i to i32
  store i32 %i.c, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh14raw_fd_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.e, align 4, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i8 %i.a, ptr %i.f, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.g, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29
  store ptr %i.i, ptr %i.h, align 8, !tbaa !118
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 8, !tbaa !116
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i32 %1, 3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 8, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = tail call i64 @lseek(i32 noundef %1, i64 noundef 0, i32 noundef 1) #26 ; 2 uses
  %i.m = icmp ne i64 %i.l, -1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 1, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.p, align 8, !tbaa !120
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 %i.l, ptr %i.p, align 8, !tbaa !120
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh14raw_fd_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 4 uses
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !120
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8, !tbaa !120
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.015.i = phi i64 [ %i.j, %bb.c ], [ %.116.i, %bb.g ] ; 4 uses
  %.07.i = phi ptr [ %i.g, %bb.c ], [ %.1.i, %bb.g ] ; 4 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.015.i, i64 1073741824)
  %i.n = load i32, ptr %i.a, align 4, !tbaa !112
  %i.o = tail call i64 @write(i32 noundef %i.n, ptr noundef %.07.i, i64 noundef %.sroa.speculated.i) #26 ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #29
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.r, label %.thread.i [
    i32 4, label %bb.g
    i32 11, label %bb.g
  ]

.thread.i:                                        ; preds = %bb.e
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.r, ptr %i.t, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.s, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !106
  br label %_ZN4llvh11raw_ostream5flushEv.exit

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i, i64 %i.o
  %i.v = sub i64 %.015.i, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.e
  %.116.i = phi i64 [ %i.v, %bb.f ], [ %.015.i, %bb.e ], [ %.015.i, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.u, %bb.f ], [ %.07.i, %bb.e ], [ %.07.i, %bb.e ]
  %.not.i12 = icmp eq i64 %.116.i, 0
  br i1 %.not.i12, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.d, !llvm.loop !121

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.g, %.thread.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i8, ptr %i.w, align 8, !tbaa !116, !range !78, !noundef !79
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit
  %i.z = load i32, ptr %i.a, align 4, !tbaa !112
  %i.aa = tail call { i32, ptr } @_ZN4llvh3sys7Process25SafelyCloseFileDescriptorEi(i32 noundef %i.z) #26 ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.aa, 0      ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i32, ptr } %i.aa, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ab, ptr %i.ad, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ac, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !106
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %_ZN4llvh11raw_ostream5flushEv.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !117 ; 2 uses
  %.not7 = icmp eq i32 %i.af, 0
  br i1 %.not7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %.sroa.21.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i2, align 8, !tbaa !106, !nonnull !79, !noundef !79 ; 2 uses
  %i.ag = load ptr, ptr %.sroa.21.0.copyload.i, align 8, !tbaa !7, !noalias !122
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !122
  call void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.21.0.copyload.i, i32 noundef %i.af) #26, !inline_history !125
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @_ZN4llvh18report_fatal_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh11raw_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !16
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.m, label %_ZN4llvh11raw_ostreamD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4llvh11raw_ostreamD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #28, !inline_history !86
  br label %_ZN4llvh11raw_ostreamD2Ev.exit

_ZN4llvh11raw_ostreamD2Ev.exit:                   ; preds = %bb.l, %bb.m, %bb.n
  ret void
}

declare { i32, ptr } @_ZN4llvh3sys7Process25SafelyCloseFileDescriptorEi(i32 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN4llvh18report_fatal_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) #26 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !126
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !128  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !130  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !128
  %i.k = load i64, ptr %i.e, align 8, !tbaa !22
  store i64 %i.k, ptr %i.c, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !130
  store ptr %i.e, ptr %i.b, align 8, !tbaa !128
  store i64 0, ptr %i.m, align 8, !tbaa !130
  store i8 0, ptr %i.e, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamD0Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #28
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostream10write_implEPKcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !120
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.015 = phi i64 [ %2, %bb.a ], [ %.116, %bb.e ] ; 4 uses
  %.07 = phi ptr [ %1, %bb.a ], [ %.1, %bb.e ]    ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.015, i64 1073741824)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !112
  %i.f = tail call i64 @write(i32 noundef %i.e, ptr noundef %.07, i64 noundef %.sroa.speculated) #26 ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #29
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.i, label %.thread [
    i32 4, label %bb.e
    i32 11, label %bb.e
  ]

.thread:                                          ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.i, ptr %i.k, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !106
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 %i.f
  %i.m = sub i64 %.015, %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.d
  %.116 = phi i64 [ %i.m, %bb.d ], [ %.015, %bb.c ], [ %.015, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.l, %bb.d ], [ %.07, %bb.c ], [ %.07, %bb.c ]
  %.not = icmp eq i64 %.116, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !121

.loopexit:                                        ; preds = %bb.e, %.thread
  ret void
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostream5closeEv(ptr noundef nonnull align 8 dereferenceable(72) initializes((40, 41)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.a, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  store ptr %i.e, ptr %i.b, align 8, !tbaa !9
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.e, i64 noundef %i.h) #26, !inline_history !131
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !112
  %i.n = tail call { i32, ptr } @_ZN4llvh3sys7Process25SafelyCloseFileDescriptorEi(i32 noundef %i.m) #26 ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.n, 0        ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit
  %i.p = extractvalue { i32, ptr } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.o, ptr %i.q, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.p, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !106
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvh11raw_ostream5flushEv.exit
  store i32 -1, ptr %i.l, align 4, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4llvh14raw_fd_ostream4seekEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
end_hunk_2
