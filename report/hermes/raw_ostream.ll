Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/raw_ostream?download=true
inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZN4llvh11raw_ostreamlsEPKv:bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEd(ptr noundef nonnull returned align 8 dereferenceable(36) %0, double noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh12write_doubleERNS_11raw_ostreamEdNS_10FloatStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, double noundef %1, i32 noundef 0, i64 undef, i8 0) #26
  ret ptr %0
}

declare void @_ZN4llvh12write_doubleERNS_11raw_ostreamEdNS_10FloatStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36), double noundef, i32 noundef, i64, i8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  store ptr %i.d, ptr %i.a, align 8, !tbaa !9
  %i.h = load ptr, ptr %0, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.d, i64 noundef %i.g) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i8 noundef zeroext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !17
  %.not13 = icmp ult ptr %i.d, %i.e
  br i1 %.not13, label %.loopexit, label %.lr.ph, !prof !40

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %.not235 = icmp eq ptr %i.h, null
  br i1 %.not235, label %.lr.ph36, label %._crit_edge, !prof !32

bb.b:                                             ; preds = %tailrecurse
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %.not2 = icmp eq ptr %i.i, null
  br i1 %.not2, label %.lr.ph36, label %._crit_edge, !prof !33

.lr.ph36:                                         ; preds = %.lr.ph, %bb.b
  %i.j = load i32, ptr %i.g, align 8, !tbaa !16
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %.lr.ph36
  store i8 %1, ptr %i.a, align 1, !tbaa !22
  %i.l = load ptr, ptr %0, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26
  br label %bb.d

tailrecurse:                                      ; preds = %.lr.ph36
  tail call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !17
  %.not = icmp ult ptr %i.o, %i.p
  br i1 %.not, label %.loopexit, label %bb.b, !prof !36

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa31 = phi ptr [ %i.d, %.lr.ph ], [ %i.o, %bb.b ]
  %.lcssa = phi ptr [ %i.h, %.lr.ph ], [ %i.i, %bb.b ] ; 3 uses
  %i.q = ptrtoint ptr %.lcssa31 to i64
  %i.r = ptrtoint ptr %.lcssa to i64
  %i.s = sub i64 %i.q, %i.r
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !9
  %i.t = load ptr, ptr %0, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.lcssa, i64 noundef %i.s) #26, !inline_history !41
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %._crit_edge
  %i.w = phi ptr [ %.pre, %._crit_edge ], [ %i.d, %bb.a ], [ %i.o, %tailrecurse ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.b, align 8, !tbaa !9
  store i8 %1, ptr %i.w, align 1, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %2
  br i1 %i.h, label %.lr.ph.lr.ph, label %tailrecurse.outer._crit_edge, !prof !42

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse.outer.backedge
  %i.k = phi i64 [ %i.g, %.lr.ph.lr.ph ], [ %.pre-phi92, %tailrecurse.outer.backedge ]
  %i.l = phi ptr [ %i.d, %.lr.ph.lr.ph ], [ %i.al, %tailrecurse.outer.backedge ]
  %.tr34.ph61 = phi i64 [ %2, %.lr.ph.lr.ph ], [ %.tr34.ph.be, %tailrecurse.outer.backedge ] ; 6 uses
  %.tr33.ph60 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.tr33.ph.be, %tailrecurse.outer.backedge ] ; 6 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %.not137 = icmp eq ptr %i.m, null
  br i1 %.not137, label %.lr.ph138, label %._crit_edge, !prof !32

bb.b:                                             ; preds = %tailrecurse
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.lr.ph138, label %._crit_edge, !prof !33

.lr.ph138:                                        ; preds = %.lr.ph, %bb.b
  %i.o = load i32, ptr %i.j, align 8, !tbaa !16
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %.lr.ph138
  %i.q = load ptr, ptr %0, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.tr33.ph60, i64 noundef %.tr34.ph61) #26
  br label %bb.l

tailrecurse:                                      ; preds = %.lr.ph138
  tail call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, %.tr34.ph61
  br i1 %i.y, label %bb.b, label %tailrecurse.outer._crit_edge, !prof !33

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa124 = phi i64 [ %i.k, %.lr.ph ], [ %i.x, %bb.b ] ; 4 uses
  %.lcssa121 = phi ptr [ %i.l, %.lr.ph ], [ %i.u, %bb.b ]
  %.lcssa = phi ptr [ %i.m, %.lr.ph ], [ %i.n, %bb.b ]
  %i.z = icmp eq ptr %.lcssa121, %.lcssa
  br i1 %i.z, label %bb.d, label %bb.f, !prof !43

bb.d:                                             ; preds = %._crit_edge
  %i.aa = urem i64 %.tr34.ph61, %.lcssa124        ; 4 uses
  %i.ab = sub nuw i64 %.tr34.ph61, %i.aa          ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.tr33.ph60, i64 noundef %i.ab) #26
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = icmp ugt i64 %i.aa, %i.aj
  br i1 %i.ak, label %tailrecurse.outer.backedge, label %bb.e

tailrecurse.outer.backedge:                       ; preds = %bb.d, %bb.f
  %.pre-phi92 = phi i64 [ %.pre91, %bb.f ], [ %i.aj, %bb.d ] ; 2 uses
  %i.al = phi ptr [ %.pre84, %bb.f ], [ %i.ag, %bb.d ] ; 2 uses
  %.pn = phi i64 [ %.lcssa124, %bb.f ], [ %i.ab, %bb.d ]
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
  %.sroa.023.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.ax, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 12 uses
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
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
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
  %2 = trunc i64 %i.t to i32                      ; 2 uses
  %i.af = icmp ult i32 %2, 80
  br i1 %i.af, label %bb.l, label %.preheader.i.i

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24
  %3 = and i64 %i.t, 127
  %i.ag = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %3) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

.preheader.i.i:                                   ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24, %.preheader.i.i
  %.01112.i.i = phi i32 [ %i.aj, %.preheader.i.i ], [ %2, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit24 ] ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %.01112.i.i, i32 79) ; 2 uses
  %i.ah = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.ai = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.ah) ; 0 uses
  %i.aj = sub i32 %.01112.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %.preheader.i.i, !llvm.loop !74

bb.m:                                             ; preds = %bb.g
  %4 = trunc i64 %i.t to i32                      ; 2 uses
  %i.ak = icmp ult i32 %4, 80
  br i1 %i.ak, label %bb.n, label %.preheader.i.i25

bb.n:                                             ; preds = %bb.m
  %5 = and i64 %i.t, 127
  %i.al = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %5) ; 0 uses
  br label %_ZN4llvh11raw_ostream6indentEj.exit29

.preheader.i.i25:                                 ; preds = %bb.m, %.preheader.i.i25
  %.01112.i.i26 = phi i32 [ %i.ao, %.preheader.i.i25 ], [ %4, %bb.m ] ; 2 uses
  %.sroa.speculated.i.i27 = tail call i32 @llvm.umin.i32(i32 %.01112.i.i26, i32 79) ; 2 uses
  %i.am = zext nneg i32 %.sroa.speculated.i.i27 to i64
  %i.an = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.am) ; 0 uses
  %i.ao = sub i32 %.01112.i.i26, %.sroa.speculated.i.i27 ; 2 uses
  %.not.i.i28 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i28, label %_ZN4llvh11raw_ostream6indentEj.exit29, label %.preheader.i.i25, !llvm.loop !74

_ZN4llvh11raw_ostream6indentEj.exit29:            ; preds = %.preheader.i.i25, %bb.n
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !tbaa !52 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %i.a, align 8, !tbaa !53 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9  ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ugt i64 %.sroa.23.0.copyload, %i.av
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvh11raw_ostream6indentEj.exit29
  %i.ax = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.sroa.02.0.copyload, i64 noundef %.sroa.23.0.copyload) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.p:                                             ; preds = %_ZN4llvh11raw_ostream6indentEj.exit29
  %.not.i30 = icmp eq i64 %.sroa.23.0.copyload, 0
  br i1 %.not.i30, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, i1 false)
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.23.0.copyload
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.r:                                             ; preds = %bb.g
  %i.ba = lshr i64 %i.t, 1                        ; 3 uses
  %6 = trunc i64 %i.ba to i32                     ; 2 uses
  %i.bb = icmp ult i32 %6, 80
  br i1 %i.bb, label %bb.s, label %.preheader.i.i32

bb.s:                                             ; preds = %bb.r
  %7 = and i64 %i.ba, 127
  %i.bc = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %7) ; 0 uses
  br label %_ZN4llvh11raw_ostream6indentEj.exit36

.preheader.i.i32:                                 ; preds = %bb.r, %.preheader.i.i32
  %.01112.i.i33 = phi i32 [ %i.bf, %.preheader.i.i32 ], [ %6, %bb.r ] ; 2 uses
  %.sroa.speculated.i.i34 = tail call i32 @llvm.umin.i32(i32 %.01112.i.i33, i32 79) ; 2 uses
  %i.bd = zext nneg i32 %.sroa.speculated.i.i34 to i64
  %i.be = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.bd) ; 0 uses
  %i.bf = sub i32 %.01112.i.i33, %.sroa.speculated.i.i34 ; 2 uses
  %.not.i.i35 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i35, label %_ZN4llvh11raw_ostream6indentEj.exit36, label %.preheader.i.i32, !llvm.loop !74

_ZN4llvh11raw_ostream6indentEj.exit36:            ; preds = %.preheader.i.i32, %bb.s
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !52 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8, !tbaa !53 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !9  ; 2 uses
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ugt i64 %.sroa.2.0.copyload, %i.bm
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvh11raw_ostream6indentEj.exit36
  %i.bo = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38

bb.u:                                             ; preds = %_ZN4llvh11raw_ostream6indentEj.exit36
  %.not.i37 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i37, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.2.0.copyload
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38:    ; preds = %bb.t, %bb.u, %bb.v
  %i.br = sub i64 %i.t, %i.ba                     ; 2 uses
  %8 = trunc i64 %i.br to i32                     ; 2 uses
  %i.bs = icmp ult i32 %8, 80
  br i1 %i.bs, label %bb.w, label %.preheader.i.i39

bb.w:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38
  %9 = and i64 %i.br, 127
  %i.bt = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %9) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

.preheader.i.i39:                                 ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38, %.preheader.i.i39
  %.01112.i.i40 = phi i32 [ %i.bw, %.preheader.i.i39 ], [ %8, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit38 ] ; 2 uses
  %.sroa.speculated.i.i41 = tail call i32 @llvm.umin.i32(i32 %.01112.i.i40, i32 79) ; 2 uses
  %i.bu = zext nneg i32 %.sroa.speculated.i.i41 to i64
  %i.bv = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.bu) ; 0 uses
  %i.bw = sub i32 %.01112.i.i40, %.sroa.speculated.i.i41 ; 2 uses
  %.not.i.i42 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i42, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %.preheader.i.i39, !llvm.loop !74

bb.x:                                             ; preds = %bb.g
  unreachable

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %.preheader.i.i39, %.preheader.i.i, %bb.w, %bb.q, %bb.p, %bb.o, %bb.l, %bb.f, %bb.e, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream6indentEj(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 80
  br i1 %i.a, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.b) ; 0 uses
  br label %_ZL13write_paddingILc32EERN4llvh11raw_ostreamES2_j.exit

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
  %.sroa.0150.0224 = phi ptr [ %.sroa.0150.0.copyload, %._crit_edge273 ], [ %i.ky, %_ZN4llvh11raw_ostreamlsEc.exit107 ] ; 5 uses
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
  %.pre274 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ck = phi ptr [ %.pre274, %bb.l ], [ %i.br, %bb.k ]
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
  %i.ej = load i8, ptr %.sroa.0150.0224, align 1, !tbaa !22
  %i.ek = zext i8 %i.ej to i64
  call void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.ek, i32 noundef %not., i64 2, i8 1) #26
  %exitcond.peel.not = icmp eq i64 %..i55, 1
  br i1 %exitcond.peel.not, label %._crit_edge212, label %.lr.ph211.peel.next

._crit_edge212:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.051.lcssa = phi i32 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit ], [ 2, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel ], [ %i.fc, %_ZN4llvh11raw_ostreamlsEPKc.exit57 ]
  %i.el = load i8, ptr %i.ao, align 2, !tbaa !101, !range !78, !noundef !79
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ab, label %_ZN4llvh11raw_ostreamlsEc.exit

.lr.ph211.peel.next:                              ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel, %_ZN4llvh11raw_ostreamlsEPKc.exit57
  %.050210 = phi i64 [ %i.fb, %_ZN4llvh11raw_ostreamlsEPKc.exit57 ], [ 1, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel ] ; 3 uses
  %.051209 = phi i32 [ %i.fc, %_ZN4llvh11raw_ostreamlsEPKc.exit57 ], [ 2, %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel ] ; 2 uses
  %i.en = load i8, ptr %i.ab, align 8, !tbaa !97
  %i.eo = zext i8 %i.en to i64
  %i.ep = urem i64 %.050210, %i.eo
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.y, label %_ZN4llvh11raw_ostreamlsEPKc.exit57

bb.y:                                             ; preds = %.lr.ph211.peel.next
  %i.er = add i32 %.051209, 1                     ; 2 uses
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
  %.1 = phi i32 [ %i.er, %bb.aa ], [ %.051209, %.lr.ph211.peel.next ], [ %i.er, %bb.z ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0150.0224, i64 %.050210
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !22
  %i.fa = zext i8 %i.ez to i64
  call void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.fa, i32 noundef %not., i64 2, i8 1) #26
  %i.fb = add nuw nsw i64 %.050210, 1             ; 2 uses
  %i.fc = add i32 %.1, 2                          ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, %..i55
  br i1 %exitcond.not, label %._crit_edge212, label %.lr.ph211.peel.next, !llvm.loop !102

bb.ab:                                            ; preds = %._crit_edge212
  %i.fd = sub i32 %i.aq, %.051.lcssa              ; 3 uses
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
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.hi, i64 noundef %i.hl) #26, !inline_history !100
  %i.hp = sub i64 %.tr34.ph61.i121, %.lcssa181
  %.pre.i124 = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.pre84.i125 = load ptr, ptr %i.al, align 8, !tbaa !9 ; 2 uses
  %.pre88.i126 = ptrtoint ptr %.pre.i124 to i64
  %.pre89.i127 = ptrtoint ptr %.pre84.i125 to i64
  %.pre91.i128 = sub i64 %.pre88.i126, %.pre89.i127
  br label %tailrecurse.outer.backedge.i129

tailrecurse.outer._crit_edge.i111:                ; preds = %tailrecurse.outer.backedge.i129, %tailrecurse.i134, %.preheader.i.i58
  %.tr33.ph.lcssa54.i112 = phi ptr [ %.tr33.ph60.i122, %tailrecurse.i134 ], [ @_ZZL13write_paddingILc32EERN4llvh11raw_ostreamES2_jE5Chars, %.preheader.i.i58 ], [ %.tr33.ph.be.i133, %tailrecurse.outer.backedge.i129 ] ; 5 uses
  %.tr34.ph.lcssa52.i113 = phi i64 [ %.tr34.ph61.i121, %tailrecurse.i134 ], [ %i.fh, %.preheader.i.i58 ], [ %.tr34.ph.be.i132, %tailrecurse.outer.backedge.i129 ] ; 3 uses
  %.lcssa37.i114 = phi ptr [ %i.fy, %tailrecurse.i134 ], [ %i.fj, %.preheader.i.i58 ], [ %i.gq, %tailrecurse.outer.backedge.i129 ] ; 5 uses
  switch i64 %.tr34.ph.lcssa52.i113, label %bb.ar [
    i64 4, label %bb.an
    i64 3, label %bb.ao
    i64 2, label %bb.ap
    i64 1, label %bb.aq
    i64 0, label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i115
  ]

bb.an:                                            ; preds = %tailrecurse.outer._crit_edge.i111
  %i.hq = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54.i112, i64 3
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !22
  %i.hs = getelementptr inbounds nuw i8, ptr %.lcssa37.i114, i64 3
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !22
  %.pre85.i118 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %tailrecurse.outer._crit_edge.i111
  %i.ht = phi ptr [ %.pre85.i118, %bb.an ], [ %.lcssa37.i114, %tailrecurse.outer._crit_edge.i111 ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54.i112, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !22
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !22
  %.pre86.i117 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %tailrecurse.outer._crit_edge.i111
  %i.hx = phi ptr [ %.pre86.i117, %bb.ao ], [ %.lcssa37.i114, %tailrecurse.outer._crit_edge.i111 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr33.ph.lcssa54.i112, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !22
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !22
  %.pre87.i116 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %tailrecurse.outer._crit_edge.i111
  %i.ib = phi ptr [ %.pre87.i116, %bb.ap ], [ %.lcssa37.i114, %tailrecurse.outer._crit_edge.i111 ]
  %i.ic = load i8, ptr %.tr33.ph.lcssa54.i112, align 1, !tbaa !22
  store i8 %i.ic, ptr %i.ib, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i115

bb.ar:                                            ; preds = %tailrecurse.outer._crit_edge.i111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa37.i114, ptr readonly align 1 %.tr33.ph.lcssa54.i112, i64 %.tr34.ph.lcssa52.i113, i1 false)
  br label %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i115

_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i115: ; preds = %bb.ar, %bb.aq, %tailrecurse.outer._crit_edge.i111
  %i.id = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %.tr34.ph.lcssa52.i113
  store ptr %i.ie, ptr %i.al, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostream5writeEPKcm.exit135

_ZN4llvh11raw_ostream5writeEPKcm.exit135:         ; preds = %bb.ae, %bb.ag, %_ZN4llvh11raw_ostream14copy_to_bufferEPKcm.exit.i115
  %i.if = sub i32 %.01112.i.i59, %.sroa.speculated.i.i60 ; 2 uses
  %.not.i.i61 = icmp eq i32 %i.if, 0
  br i1 %.not.i.i61, label %_ZN4llvh11raw_ostream6indentEj.exit62, label %.preheader.i.i58, !llvm.loop !74

_ZN4llvh11raw_ostream6indentEj.exit62:            ; preds = %_ZN4llvh11raw_ostream5writeEPKcm.exit135, %bb.ac
  %i.ig = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.ih = load ptr, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvh11raw_ostream6indentEj.exit62
  %i.ij = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit64

bb.at:                                            ; preds = %_ZN4llvh11raw_ostream6indentEj.exit62
  store i8 124, ptr %i.ih, align 1
  %i.ik = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store ptr %i.il, ptr %i.al, align 8, !tbaa !9
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit64

_ZN4llvh11raw_ostreamlsEPKc.exit64:               ; preds = %bb.as, %bb.at
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0150.0224, i64 %..i55
  br i1 %.not228, label %._crit_edge223, label %.lr.ph222

._crit_edge223:                                   ; preds = %_ZN4llvh11raw_ostreamlsEc.exit79, %_ZN4llvh11raw_ostreamlsEPKc.exit64
  %i.in = load ptr, ptr %i.al, align 8, !tbaa !9  ; 4 uses
  %i.io = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i = icmp ult ptr %i.in, %i.io
  br i1 %.not.i, label %bb.aw, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ip = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i = icmp eq ptr %i.ip, null
  br i1 %.not2.i10.i, label %.lr.ph.i, label %._crit_edge.i, !prof !32

bb.au:                                            ; preds = %tailrecurse.i.i
  %i.iq = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.iq, null
  br i1 %.not2.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !33

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.au
  %i.ir = load i32, ptr %i.an, align 8, !tbaa !16
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.av, label %tailrecurse.i.i

bb.av:                                            ; preds = %.lr.ph.i
  store i8 124, ptr %i.d, align 1, !tbaa !22
  %i.it = load ptr, ptr %0, align 8, !tbaa !7
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.d, i64 noundef 1) #26, !inline_history !34
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i

tailrecurse.i.i:                                  ; preds = %.lr.ph.i
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !35
  %i.iw = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.ix = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i.i65 = icmp ult ptr %i.iw, %i.ix
  br i1 %.not.i.i65, label %.loopexit.i.i, label %bb.au, !prof !36

._crit_edge.i:                                    ; preds = %bb.au, %.lr.ph.i.i
  %.lcssa6.i = phi ptr [ %i.in, %.lr.ph.i.i ], [ %i.iw, %bb.au ]
  %.lcssa.i = phi ptr [ %i.ip, %.lr.ph.i.i ], [ %i.iq, %bb.au ] ; 3 uses
  %i.iy = ptrtoint ptr %.lcssa6.i to i64
  %i.iz = ptrtoint ptr %.lcssa.i to i64
  %i.ja = sub i64 %i.iy, %i.iz
  store ptr %.lcssa.i, ptr %i.al, align 8, !tbaa !9
  %i.jb = load ptr, ptr %0, align 8, !tbaa !7
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.lcssa.i, i64 noundef %i.ja) #26, !inline_history !37
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %tailrecurse.i.i, %._crit_edge.i
  %i.je = phi ptr [ %.pre.i.i, %._crit_edge.i ], [ %i.iw, %tailrecurse.i.i ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  store ptr %i.jf, ptr %i.al, align 8, !tbaa !9
  store i8 124, ptr %i.je, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i

_ZN4llvh11raw_ostream5writeEh.exit.i:             ; preds = %.loopexit.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.aw:                                            ; preds = %._crit_edge223
  %i.jg = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  store ptr %i.jg, ptr %i.al, align 8, !tbaa !9
  store i8 124, ptr %i.in, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit

.lr.ph222:                                        ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit64, %_ZN4llvh11raw_ostreamlsEc.exit79
  %.049221 = phi ptr [ %i.kw, %_ZN4llvh11raw_ostreamlsEc.exit79 ], [ %.sroa.0150.0224, %_ZN4llvh11raw_ostreamlsEPKc.exit64 ] ; 2 uses
  %i.jh = load i8, ptr %.049221, align 1, !tbaa !22 ; 4 uses
  %i.ji = add i8 %i.jh, -32
  %i.jj = icmp ult i8 %i.ji, 95
  %i.jk = load ptr, ptr %i.al, align 8, !tbaa !9  ; 7 uses
  %i.jl = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i66 = icmp ult ptr %i.jk, %i.jl           ; 2 uses
  br i1 %i.jj, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %.lr.ph222
  br i1 %.not.i66, label %bb.ba, label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.jm = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i68 = icmp eq ptr %i.jm, null
  br i1 %.not2.i10.i68, label %.lr.ph.i75, label %._crit_edge.i69, !prof !32

bb.ay:                                            ; preds = %tailrecurse.i.i76
  %i.jn = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i78 = icmp eq ptr %i.jn, null
  br i1 %.not2.i.i78, label %.lr.ph.i75, label %._crit_edge.i69, !prof !33

.lr.ph.i75:                                       ; preds = %.lr.ph.i.i67, %bb.ay
  %i.jo = load i32, ptr %i.an, align 8, !tbaa !16
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.az, label %tailrecurse.i.i76

bb.az:                                            ; preds = %.lr.ph.i75
  store i8 %i.jh, ptr %i.c, align 1, !tbaa !22
  %i.jq = load ptr, ptr %0, align 8, !tbaa !7
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.c, i64 noundef 1) #26, !inline_history !34
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i74

tailrecurse.i.i76:                                ; preds = %.lr.ph.i75
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !35
  %i.jt = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.ju = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i.i77 = icmp ult ptr %i.jt, %i.ju
  br i1 %.not.i.i77, label %.loopexit.i.i73, label %bb.ay, !prof !36

._crit_edge.i69:                                  ; preds = %bb.ay, %.lr.ph.i.i67
  %.lcssa6.i70 = phi ptr [ %i.jk, %.lr.ph.i.i67 ], [ %i.jt, %bb.ay ]
  %.lcssa.i71 = phi ptr [ %i.jm, %.lr.ph.i.i67 ], [ %i.jn, %bb.ay ] ; 3 uses
  %i.jv = ptrtoint ptr %.lcssa6.i70 to i64
  %i.jw = ptrtoint ptr %.lcssa.i71 to i64
  %i.jx = sub i64 %i.jv, %i.jw
  store ptr %.lcssa.i71, ptr %i.al, align 8, !tbaa !9
  %i.jy = load ptr, ptr %0, align 8, !tbaa !7
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 56
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.lcssa.i71, i64 noundef %i.jx) #26, !inline_history !37
  %.pre.i.i72 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %.loopexit.i.i73

.loopexit.i.i73:                                  ; preds = %tailrecurse.i.i76, %._crit_edge.i69
  %i.kb = phi ptr [ %.pre.i.i72, %._crit_edge.i69 ], [ %i.jt, %tailrecurse.i.i76 ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 1
  store ptr %i.kc, ptr %i.al, align 8, !tbaa !9
  store i8 %i.jh, ptr %i.kb, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i74

_ZN4llvh11raw_ostream5writeEh.exit.i74:           ; preds = %.loopexit.i.i73, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4llvh11raw_ostreamlsEc.exit79

bb.ba:                                            ; preds = %bb.ax
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store ptr %i.kd, ptr %i.al, align 8, !tbaa !9
  store i8 %i.jh, ptr %i.jk, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit79

bb.bb:                                            ; preds = %.lr.ph222
  br i1 %.not.i66, label %bb.be, label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ke = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i82 = icmp eq ptr %i.ke, null
  br i1 %.not2.i10.i82, label %.lr.ph.i89, label %._crit_edge.i83, !prof !32

bb.bc:                                            ; preds = %tailrecurse.i.i90
  %i.kf = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i92 = icmp eq ptr %i.kf, null
  br i1 %.not2.i.i92, label %.lr.ph.i89, label %._crit_edge.i83, !prof !33

.lr.ph.i89:                                       ; preds = %.lr.ph.i.i81, %bb.bc
  %i.kg = load i32, ptr %i.an, align 8, !tbaa !16
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.bd, label %tailrecurse.i.i90

bb.bd:                                            ; preds = %.lr.ph.i89
  store i8 46, ptr %i.b, align 1, !tbaa !22
  %i.ki = load ptr, ptr %0, align 8, !tbaa !7
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.b, i64 noundef 1) #26, !inline_history !34
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i88

tailrecurse.i.i90:                                ; preds = %.lr.ph.i89
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !35
  %i.kl = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.km = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i.i91 = icmp ult ptr %i.kl, %i.km
  br i1 %.not.i.i91, label %.loopexit.i.i87, label %bb.bc, !prof !36

._crit_edge.i83:                                  ; preds = %bb.bc, %.lr.ph.i.i81
  %.lcssa6.i84 = phi ptr [ %i.jk, %.lr.ph.i.i81 ], [ %i.kl, %bb.bc ]
  %.lcssa.i85 = phi ptr [ %i.ke, %.lr.ph.i.i81 ], [ %i.kf, %bb.bc ] ; 3 uses
  %i.kn = ptrtoint ptr %.lcssa6.i84 to i64
  %i.ko = ptrtoint ptr %.lcssa.i85 to i64
  %i.kp = sub i64 %i.kn, %i.ko
  store ptr %.lcssa.i85, ptr %i.al, align 8, !tbaa !9
  %i.kq = load ptr, ptr %0, align 8, !tbaa !7
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.lcssa.i85, i64 noundef %i.kp) #26, !inline_history !37
  %.pre.i.i86 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %.loopexit.i.i87

.loopexit.i.i87:                                  ; preds = %tailrecurse.i.i90, %._crit_edge.i83
  %i.kt = phi ptr [ %.pre.i.i86, %._crit_edge.i83 ], [ %i.kl, %tailrecurse.i.i90 ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store ptr %i.ku, ptr %i.al, align 8, !tbaa !9
  store i8 46, ptr %i.kt, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i88

_ZN4llvh11raw_ostream5writeEh.exit.i88:           ; preds = %.loopexit.i.i87, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4llvh11raw_ostreamlsEc.exit79

bb.be:                                            ; preds = %bb.bb
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store ptr %i.kv, ptr %i.al, align 8, !tbaa !9
  store i8 46, ptr %i.jk, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit79

_ZN4llvh11raw_ostreamlsEc.exit79:                 ; preds = %bb.be, %_ZN4llvh11raw_ostream5writeEh.exit.i88, %bb.ba, %_ZN4llvh11raw_ostream5writeEh.exit.i74
  %i.kw = getelementptr inbounds nuw i8, ptr %.049221, i64 1 ; 2 uses
  %.not53 = icmp eq ptr %i.kw, %i.im
  br i1 %.not53, label %._crit_edge223, label %.lr.ph222

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.aw, %_ZN4llvh11raw_ostream5writeEh.exit.i, %._crit_edge212
  %i.kx = sub i64 %.sroa.6151.0226, %..i55        ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0150.0224, i64 %..i55
  %i.kz = add i64 %..i55, %.048227                ; 2 uses
  %i.la = icmp ult i64 %i.kz, %.fr
  br i1 %i.la, label %bb.bf, label %_ZN4llvh11raw_ostreamlsEc.exit107

bb.bf:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.lb = load ptr, ptr %i.al, align 8, !tbaa !9  ; 4 uses
  %i.lc = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i94 = icmp ult ptr %i.lb, %i.lc
  br i1 %.not.i94, label %bb.bi, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ld = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i96 = icmp eq ptr %i.ld, null
  br i1 %.not2.i10.i96, label %.lr.ph.i103, label %._crit_edge.i97, !prof !32

bb.bg:                                            ; preds = %tailrecurse.i.i104
  %i.le = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i106 = icmp eq ptr %i.le, null
  br i1 %.not2.i.i106, label %.lr.ph.i103, label %._crit_edge.i97, !prof !33

.lr.ph.i103:                                      ; preds = %.lr.ph.i.i95, %bb.bg
  %i.lf = load i32, ptr %i.an, align 8, !tbaa !16
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bh, label %tailrecurse.i.i104

bb.bh:                                            ; preds = %.lr.ph.i103
  store i8 10, ptr %i.a, align 1, !tbaa !22
  %i.lh = load ptr, ptr %0, align 8, !tbaa !7
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26, !inline_history !34
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i102

tailrecurse.i.i104:                               ; preds = %.lr.ph.i103
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !35
  %i.lk = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.ll = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i.i105 = icmp ult ptr %i.lk, %i.ll
  br i1 %.not.i.i105, label %.loopexit.i.i101, label %bb.bg, !prof !36

._crit_edge.i97:                                  ; preds = %bb.bg, %.lr.ph.i.i95
  %.lcssa6.i98 = phi ptr [ %i.lb, %.lr.ph.i.i95 ], [ %i.lk, %bb.bg ]
  %.lcssa.i99 = phi ptr [ %i.ld, %.lr.ph.i.i95 ], [ %i.le, %bb.bg ] ; 3 uses
  %i.lm = ptrtoint ptr %.lcssa6.i98 to i64
  %i.ln = ptrtoint ptr %.lcssa.i99 to i64
  %i.lo = sub i64 %i.lm, %i.ln
  store ptr %.lcssa.i99, ptr %i.al, align 8, !tbaa !9
  %i.lp = load ptr, ptr %0, align 8, !tbaa !7
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.lcssa.i99, i64 noundef %i.lo) #26, !inline_history !37
  %.pre.i.i100 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %.loopexit.i.i101

.loopexit.i.i101:                                 ; preds = %tailrecurse.i.i104, %._crit_edge.i97
  %i.ls = phi ptr [ %.pre.i.i100, %._crit_edge.i97 ], [ %i.lk, %tailrecurse.i.i104 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  store ptr %i.lt, ptr %i.al, align 8, !tbaa !9
  store i8 10, ptr %i.ls, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i102

_ZN4llvh11raw_ostream5writeEh.exit.i102:          ; preds = %.loopexit.i.i101, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4llvh11raw_ostreamlsEc.exit107

bb.bi:                                            ; preds = %bb.bf
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.lu, ptr %i.al, align 8, !tbaa !9
  store i8 10, ptr %i.lb, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit107

_ZN4llvh11raw_ostreamlsEc.exit107:                ; preds = %bb.bi, %_ZN4llvh11raw_ostream5writeEh.exit.i102, %_ZN4llvh11raw_ostreamlsEc.exit
  %i.lv = icmp eq i64 %i.kx, 0
  br i1 %i.lv, label %.loopexit, label %bb.e, !llvm.loop !104

.loopexit:                                        ; preds = %_ZN4llvh11raw_ostreamlsEc.exit107, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream11write_zerosEj(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 80
  br i1 %i.a, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc0EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.b) ; 0 uses
  br label %_ZL13write_paddingILc0EERN4llvh11raw_ostreamES2_j.exit

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.01112.i = phi i32 [ %i.f, %.preheader.i ], [ %1, %bb.a ] ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.01112.i, i32 79) ; 2 uses
  %i.d = zext nneg i32 %.sroa.speculated.i to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc0EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.d) ; 0 uses
  %i.f = sub i32 %.01112.i, %.sroa.speculated.i   ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL13write_paddingILc0EERN4llvh11raw_ostreamES2_j.exit, label %.preheader.i, !llvm.loop !105

_ZL13write_paddingILc0EERN4llvh11raw_ostreamES2_j.exit: ; preds = %.preheader.i, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh11raw_ostream6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh18format_object_base4homeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_code(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 align 2 {
bb.a:
  %7 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %bb.a
  %lhsc.i = load i8, ptr %1, align 1
  %i.d = icmp eq i8 %lhsc.i, 45
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29 ; 3 uses
  store i32 0, ptr %3, align 8, !tbaa !3
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.e, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !106
  %i.f = and i32 %6, 1
  %.not16.i = icmp eq i32 %i.f, 0
  br i1 %.not16.i, label %bb.b, label %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit

bb.b:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i
  %i.g = tail call { i32, ptr } @_ZN4llvh3sys20ChangeStdoutToBinaryEv() #26 ; 0 uses
  br label %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit

_ZNK4llvh9StringRef6equalsES0_.exit.thread.i:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.h = and i32 %5, 1
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 5, ptr %i.i, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.j, align 1, !tbaa !111
  store ptr %7, ptr %8, align 8, !tbaa !22
  %i.k = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %4, i32 noundef 3, i32 noundef %6, i32 noundef 438) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 5, ptr %i.l, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 1, ptr %i.m, align 1, !tbaa !111
  store ptr %7, ptr %9, align 8, !tbaa !22
  %i.n = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %4, i32 noundef 2, i32 noundef %6, i32 noundef 438) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { i32, ptr } [ %i.n, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.sink.i = extractvalue { i32, ptr } %.pn.i, 1
  %.sink24.i = extractvalue { i32, ptr } %.pn.i, 0 ; 2 uses
  store i32 %.sink24.i, ptr %3, align 8, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink.i, ptr %i.o, align 8, !tbaa !106
  %.not23.i = icmp eq i32 %.sink24.i, 0
  %i.p = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29
  %spec.select = select i1 %.not23.i, i32 %i.p, i32 -1
  br label %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit

_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit: ; preds = %bb.e, %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i, %bb.b
  %.pre-phi = phi ptr [ %.pre, %bb.e ], [ %i.e, %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i ], [ %i.e, %bb.b ]
  %.1.i = phi i32 [ %spec.select, %bb.e ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i ], [ 1, %bb.b ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh14raw_fd_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.1.i, ptr %i.s, align 4, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i8 1, ptr %i.t, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.u, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.pre-phi, ptr %i.v, align 8, !tbaa !118
  %i.w = icmp slt i32 %.1.i, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit
  store i8 0, ptr %i.t, align 8, !tbaa !116
  br label %_ZN4llvh14raw_fd_ostreamC2Eibb.exit

bb.g:                                             ; preds = %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit
  %i.x = icmp samesign ult i32 %.1.i, 3
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.t, align 8, !tbaa !116
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
end_hunk_0
begin_hunk_1_@_ZN4llvh8FmtAlign6formatERNS_11raw_ostreamENS_9StringRefE:bb.a
  %.not = icmp ugt i64 %i.u, %i.w
  br i1 %.not, label %bb.d, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw i64 %i.u, %i.w                   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !65
  switch i32 %i.z, label %bb.s [
    i32 0, label %bb.e
    i32 1, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %4, align 8, !tbaa !28
  %i.ab = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %i.aa, i64 noundef %i.w) ; 0 uses
  %i.ac = trunc i64 %i.x to i32                   ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i, %.lr.ph.i
  %.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bd, %_ZN4llvh11raw_ostreamlsEc.exit.i ]
  %i.ai = load i8, ptr %i.ad, align 8, !tbaa !68  ; 3 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !9  ; 4 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !17
  %.not.i.i = icmp ult ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i.i = icmp eq ptr %i.al, null
  br i1 %.not2.i10.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !32

bb.g:                                             ; preds = %tailrecurse.i.i.i
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not2.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !33

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.g
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !16
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %tailrecurse.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  store i8 %i.ai, ptr %i.d, align 1, !tbaa !22
  %i.ap = load ptr, ptr %1, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.d, i64 noundef 1) #26, !inline_history !148
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i.i

tailrecurse.i.i.i:                                ; preds = %.lr.ph.i.i
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %1), !inline_history !35
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !9  ; 3 uses
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !17
  %.not.i.i.i = icmp ult ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %bb.g, !prof !36

._crit_edge.i.i:                                  ; preds = %bb.g, %.lr.ph.i.i.i
  %.lcssa6.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.as, %bb.g ]
  %.lcssa.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.au = ptrtoint ptr %.lcssa6.i.i to i64
  %i.av = ptrtoint ptr %.lcssa.i.i to i64
  %i.aw = sub i64 %i.au, %i.av
  store ptr %.lcssa.i.i, ptr %i.ae, align 8, !tbaa !9
  %i.ax = load ptr, ptr %1, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %.lcssa.i.i, i64 noundef %i.aw) #26, !inline_history !149
  %.pre.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !9
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %tailrecurse.i.i.i, %._crit_edge.i.i
  %i.ba = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i ], [ %i.as, %tailrecurse.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.ae, align 8, !tbaa !9
  store i8 %i.ai, ptr %i.ba, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i.i

_ZN4llvh11raw_ostream5writeEh.exit.i.i:           ; preds = %.loopexit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.i:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.bc, ptr %i.ae, align 8, !tbaa !9
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

_ZN4llvh11raw_ostreamlsEc.exit.i:                 ; preds = %bb.i, %_ZN4llvh11raw_ostream5writeEh.exit.i.i
  %i.bd = add nuw i32 %.06.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bd, %i.ac
  br i1 %exitcond.not.i, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit, label %bb.f, !llvm.loop !150

bb.j:                                             ; preds = %bb.d
  %i.be = lshr i64 %i.x, 1                        ; 2 uses
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %.not.i19 = icmp eq i32 %i.bf, 0
  br i1 %.not.i19, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i31, %.lr.ph.i20
  %.06.i21 = phi i32 [ 0, %.lr.ph.i20 ], [ %i.cg, %_ZN4llvh11raw_ostreamlsEc.exit.i31 ]
  %i.bl = load i8, ptr %i.bg, align 8, !tbaa !68  ; 3 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !9  ; 4 uses
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !17
  %.not.i.i22 = icmp ult ptr %i.bm, %i.bn
  br i1 %.not.i.i22, label %bb.n, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i.i24 = icmp eq ptr %i.bo, null
  br i1 %.not2.i10.i.i24, label %.lr.ph.i.i33, label %._crit_edge.i.i25, !prof !32

bb.l:                                             ; preds = %tailrecurse.i.i.i34
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i.i36 = icmp eq ptr %i.bp, null
  br i1 %.not2.i.i.i36, label %.lr.ph.i.i33, label %._crit_edge.i.i25, !prof !33

.lr.ph.i.i33:                                     ; preds = %.lr.ph.i.i.i23, %bb.l
  %i.bq = load i32, ptr %i.bk, align 8, !tbaa !16
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.m, label %tailrecurse.i.i.i34

bb.m:                                             ; preds = %.lr.ph.i.i33
  store i8 %i.bl, ptr %i.c, align 1, !tbaa !22
  %i.bs = load ptr, ptr %1, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.c, i64 noundef 1) #26, !inline_history !148
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i.i30

tailrecurse.i.i.i34:                              ; preds = %.lr.ph.i.i33
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %1), !inline_history !35
  %i.bv = load ptr, ptr %i.bh, align 8, !tbaa !9  ; 3 uses
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !17
  %.not.i.i.i35 = icmp ult ptr %i.bv, %i.bw
  br i1 %.not.i.i.i35, label %.loopexit.i.i.i29, label %bb.l, !prof !36

._crit_edge.i.i25:                                ; preds = %bb.l, %.lr.ph.i.i.i23
  %.lcssa6.i.i26 = phi ptr [ %i.bm, %.lr.ph.i.i.i23 ], [ %i.bv, %bb.l ]
  %.lcssa.i.i27 = phi ptr [ %i.bo, %.lr.ph.i.i.i23 ], [ %i.bp, %bb.l ] ; 3 uses
  %i.bx = ptrtoint ptr %.lcssa6.i.i26 to i64
  %i.by = ptrtoint ptr %.lcssa.i.i27 to i64
  %i.bz = sub i64 %i.bx, %i.by
  store ptr %.lcssa.i.i27, ptr %i.bh, align 8, !tbaa !9
  %i.ca = load ptr, ptr %1, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %.lcssa.i.i27, i64 noundef %i.bz) #26, !inline_history !149
  %.pre.i.i.i28 = load ptr, ptr %i.bh, align 8, !tbaa !9
  br label %.loopexit.i.i.i29

.loopexit.i.i.i29:                                ; preds = %tailrecurse.i.i.i34, %._crit_edge.i.i25
  %i.cd = phi ptr [ %.pre.i.i.i28, %._crit_edge.i.i25 ], [ %i.bv, %tailrecurse.i.i.i34 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.ce, ptr %i.bh, align 8, !tbaa !9
  store i8 %i.bl, ptr %i.cd, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i.i30

_ZN4llvh11raw_ostream5writeEh.exit.i.i30:         ; preds = %.loopexit.i.i.i29, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i31

bb.n:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.cf, ptr %i.bh, align 8, !tbaa !9
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i31

_ZN4llvh11raw_ostreamlsEc.exit.i31:               ; preds = %bb.n, %_ZN4llvh11raw_ostream5writeEh.exit.i.i30
  %i.cg = add nuw i32 %.06.i21, 1                 ; 2 uses
  %exitcond.not.i32 = icmp eq i32 %i.cg, %i.bf
  br i1 %exitcond.not.i32, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37.loopexit, label %bb.k, !llvm.loop !150

_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37.loopexit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i31
  %.pre = load i32, ptr %i.m, align 8, !tbaa !30
  %.pre102 = zext i32 %.pre to i64
  br label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37

_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37: ; preds = %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37.loopexit, %bb.j
  %.pre-phi103 = phi i64 [ %.pre102, %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37.loopexit ], [ %i.w, %bb.j ]
  %i.ch = load ptr, ptr %4, align 8, !tbaa !28
  %i.ci = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %i.ch, i64 noundef %.pre-phi103) ; 0 uses
  %i.cj = sub i64 %i.x, %i.be
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %.not.i38 = icmp eq i32 %i.ck, 0
  br i1 %.not.i38, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i50, %.lr.ph.i39
  %.06.i40 = phi i32 [ 0, %.lr.ph.i39 ], [ %i.dl, %_ZN4llvh11raw_ostreamlsEc.exit.i50 ]
  %i.cq = load i8, ptr %i.cl, align 8, !tbaa !68  ; 3 uses
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !9  ; 4 uses
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !17
  %.not.i.i41 = icmp ult ptr %i.cr, %i.cs
  br i1 %.not.i.i41, label %bb.r, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i.i43 = icmp eq ptr %i.ct, null
  br i1 %.not2.i10.i.i43, label %.lr.ph.i.i52, label %._crit_edge.i.i44, !prof !32

bb.p:                                             ; preds = %tailrecurse.i.i.i53
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i.i55 = icmp eq ptr %i.cu, null
  br i1 %.not2.i.i.i55, label %.lr.ph.i.i52, label %._crit_edge.i.i44, !prof !33

.lr.ph.i.i52:                                     ; preds = %.lr.ph.i.i.i42, %bb.p
  %i.cv = load i32, ptr %i.cp, align 8, !tbaa !16
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.q, label %tailrecurse.i.i.i53

bb.q:                                             ; preds = %.lr.ph.i.i52
  store i8 %i.cq, ptr %i.b, align 1, !tbaa !22
  %i.cx = load ptr, ptr %1, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.b, i64 noundef 1) #26, !inline_history !148
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i.i49

tailrecurse.i.i.i53:                              ; preds = %.lr.ph.i.i52
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %1), !inline_history !35
  %i.da = load ptr, ptr %i.cm, align 8, !tbaa !9  ; 3 uses
  %i.db = load ptr, ptr %i.cn, align 8, !tbaa !17
  %.not.i.i.i54 = icmp ult ptr %i.da, %i.db
  br i1 %.not.i.i.i54, label %.loopexit.i.i.i48, label %bb.p, !prof !36

._crit_edge.i.i44:                                ; preds = %bb.p, %.lr.ph.i.i.i42
  %.lcssa6.i.i45 = phi ptr [ %i.cr, %.lr.ph.i.i.i42 ], [ %i.da, %bb.p ]
  %.lcssa.i.i46 = phi ptr [ %i.ct, %.lr.ph.i.i.i42 ], [ %i.cu, %bb.p ] ; 3 uses
  %i.dc = ptrtoint ptr %.lcssa6.i.i45 to i64
  %i.dd = ptrtoint ptr %.lcssa.i.i46 to i64
  %i.de = sub i64 %i.dc, %i.dd
  store ptr %.lcssa.i.i46, ptr %i.cm, align 8, !tbaa !9
  %i.df = load ptr, ptr %1, align 8, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %.lcssa.i.i46, i64 noundef %i.de) #26, !inline_history !149
  %.pre.i.i.i47 = load ptr, ptr %i.cm, align 8, !tbaa !9
  br label %.loopexit.i.i.i48

.loopexit.i.i.i48:                                ; preds = %tailrecurse.i.i.i53, %._crit_edge.i.i44
  %i.di = phi ptr [ %.pre.i.i.i47, %._crit_edge.i.i44 ], [ %i.da, %tailrecurse.i.i.i53 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %i.cm, align 8, !tbaa !9
  store i8 %i.cq, ptr %i.di, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i.i49

_ZN4llvh11raw_ostream5writeEh.exit.i.i49:         ; preds = %.loopexit.i.i.i48, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i50

bb.r:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.dk, ptr %i.cm, align 8, !tbaa !9
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i50

_ZN4llvh11raw_ostreamlsEc.exit.i50:               ; preds = %bb.r, %_ZN4llvh11raw_ostream5writeEh.exit.i.i49
  %i.dl = add nuw i32 %.06.i40, 1                 ; 2 uses
  %exitcond.not.i51 = icmp eq i32 %i.dl, %i.ck
  br i1 %exitcond.not.i51, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit, label %bb.o, !llvm.loop !150

bb.s:                                             ; preds = %bb.d
  %i.dm = trunc i64 %i.x to i32                   ; 2 uses
  %.not.i57 = icmp eq i32 %i.dm, 0
  br i1 %.not.i57, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit.sink.split, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i69, %.lr.ph.i58
  %.06.i59 = phi i32 [ 0, %.lr.ph.i58 ], [ %i.en, %_ZN4llvh11raw_ostreamlsEc.exit.i69 ]
  %i.ds = load i8, ptr %i.dn, align 8, !tbaa !68  ; 3 uses
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !9  ; 4 uses
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !17
  %.not.i.i60 = icmp ult ptr %i.dt, %i.du
  br i1 %.not.i.i60, label %bb.w, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i.i62 = icmp eq ptr %i.dv, null
  br i1 %.not2.i10.i.i62, label %.lr.ph.i.i71, label %._crit_edge.i.i63, !prof !32

bb.u:                                             ; preds = %tailrecurse.i.i.i72
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i.i74 = icmp eq ptr %i.dw, null
  br i1 %.not2.i.i.i74, label %.lr.ph.i.i71, label %._crit_edge.i.i63, !prof !33

.lr.ph.i.i71:                                     ; preds = %.lr.ph.i.i.i61, %bb.u
  %i.dx = load i32, ptr %i.dr, align 8, !tbaa !16
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.v, label %tailrecurse.i.i.i72

bb.v:                                             ; preds = %.lr.ph.i.i71
  store i8 %i.ds, ptr %i.a, align 1, !tbaa !22
  %i.dz = load ptr, ptr %1, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.a, i64 noundef 1) #26, !inline_history !148
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i.i68

tailrecurse.i.i.i72:                              ; preds = %.lr.ph.i.i71
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %1), !inline_history !35
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !9  ; 3 uses
  %i.ed = load ptr, ptr %i.dp, align 8, !tbaa !17
  %.not.i.i.i73 = icmp ult ptr %i.ec, %i.ed
  br i1 %.not.i.i.i73, label %.loopexit.i.i.i67, label %bb.u, !prof !36

._crit_edge.i.i63:                                ; preds = %bb.u, %.lr.ph.i.i.i61
  %.lcssa6.i.i64 = phi ptr [ %i.dt, %.lr.ph.i.i.i61 ], [ %i.ec, %bb.u ]
  %.lcssa.i.i65 = phi ptr [ %i.dv, %.lr.ph.i.i.i61 ], [ %i.dw, %bb.u ] ; 3 uses
  %i.ee = ptrtoint ptr %.lcssa6.i.i64 to i64
  %i.ef = ptrtoint ptr %.lcssa.i.i65 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  store ptr %.lcssa.i.i65, ptr %i.do, align 8, !tbaa !9
  %i.eh = load ptr, ptr %1, align 8, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %.lcssa.i.i65, i64 noundef %i.eg) #26, !inline_history !149
  %.pre.i.i.i66 = load ptr, ptr %i.do, align 8, !tbaa !9
  br label %.loopexit.i.i.i67

.loopexit.i.i.i67:                                ; preds = %tailrecurse.i.i.i72, %._crit_edge.i.i63
  %i.ek = phi ptr [ %.pre.i.i.i66, %._crit_edge.i.i63 ], [ %i.ec, %tailrecurse.i.i.i72 ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store ptr %i.el, ptr %i.do, align 8, !tbaa !9
  store i8 %i.ds, ptr %i.ek, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i.i68

_ZN4llvh11raw_ostream5writeEh.exit.i.i68:         ; preds = %.loopexit.i.i.i67, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i69

bb.w:                                             ; preds = %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store ptr %i.em, ptr %i.do, align 8, !tbaa !9
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i69

_ZN4llvh11raw_ostreamlsEc.exit.i69:               ; preds = %bb.w, %_ZN4llvh11raw_ostream5writeEh.exit.i.i68
  %i.en = add nuw i32 %.06.i59, 1                 ; 2 uses
  %exitcond.not.i70 = icmp eq i32 %i.en, %i.dm
  br i1 %exitcond.not.i70, label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit75.loopexit, label %bb.t, !llvm.loop !150

_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit75.loopexit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i69
  %.pre100 = load i32, ptr %i.m, align 8, !tbaa !30
  %.pre101 = zext i32 %.pre100 to i64
  br label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit.sink.split

_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit.sink.split: ; preds = %bb.s, %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit75.loopexit, %bb.c
  %.pre-phi.sink = phi i64 [ %i.w, %bb.c ], [ %.pre101, %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit75.loopexit ], [ %i.w, %bb.s ]
  %i.eo = load ptr, ptr %4, align 8, !tbaa !28
  %i.ep = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %i.eo, i64 noundef %.pre-phi.sink) ; 0 uses
  br label %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit

_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit:  ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i50, %_ZN4llvh11raw_ostreamlsEc.exit.i, %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit.sink.split, %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit37, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh11raw_ostreamE, i64 16), ptr %5, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !16
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %bb.x, label %_ZN4llvh11raw_ostreamD2Ev.exit

bb.x:                                             ; preds = %_ZN4llvh8FmtAlign4fillERNS_11raw_ostreamEj.exit
  %i.et = load ptr, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %_ZN4llvh11raw_ostreamD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.et) #28, !inline_history !86
end_hunk_1
