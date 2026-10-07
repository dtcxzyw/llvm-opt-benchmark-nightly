Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pathfn?download=true
inline.NumInlined: 49
inline.NumDeleted: 3
begin_hunk_0_@_Z14NextVolumeNamePwjb:bb.a
  %i.aj = zext i32 %1 to i64
  %i.ak = ptrtoint ptr %i.o to i64
  %i.al = ptrtoint ptr %0 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  %i.ao = sub nsw i64 %i.aj, %i.an
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.9, i64 noundef %i.ao)
  br label %_Z6GetExtPKw.exit54.thread

_Z6GetExtPKw.exit54:                              ; preds = %bb.g, %bb.f, %bb.i
  %.1.i.i53 = phi ptr [ %i.ab, %bb.i ], [ %0, %bb.f ], [ %0, %bb.g ]
  %i.ap = tail call ptr @wcsrchr(ptr noundef %.1.i.i53, i32 noundef signext 46) #17 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.o, label %_Z6GetExtPKw.exit54.thread

_Z6GetExtPKw.exit54.thread:                       ; preds = %bb.m, %bb.l, %_Z6GetExtPKw.exit54
  %.04556 = phi ptr [ %i.ap, %_Z6GetExtPKw.exit54 ], [ %i.o, %bb.l ], [ %i.o, %bb.m ] ; 7 uses
  %i.ar = load i32, ptr %.04556, align 4, !tbaa !11
  %.not = icmp eq i32 %i.ar, 46
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_Z6GetExtPKw.exit54.thread
  %i.as = getelementptr inbounds nuw i8, ptr %.04556, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z6GetExtPKw.exit54.thread57, %bb.n, %_Z6GetExtPKw.exit54.thread, %_Z6GetExtPKw.exit54
  store i32 0, ptr %0, align 4, !tbaa !11
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  br i1 %2, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = tail call noundef ptr @_Z13GetVolNumPartPKw(ptr noundef nonnull %0) ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %indvar = phi i64 [ %indvar.next, %bb.t ], [ 0, %bb.q ] ; 2 uses
  %.1 = phi ptr [ %i.ba, %bb.t ], [ %i.av, %bb.q ] ; 5 uses
  %i.ax = load i32, ptr %.1, align 4, !tbaa !11
  %i.ay = add nsw i32 %i.ax, 1                    ; 2 uses
  store i32 %i.ay, ptr %.1, align 4, !tbaa !11
  %i.az = icmp eq i32 %i.ay, 58
  br i1 %i.az, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  store i32 48, ptr %.1, align 4, !tbaa !11
  %i.ba = getelementptr inbounds i8, ptr %.1, i64 -4 ; 4 uses
  %i.bb = icmp ult ptr %i.ba, %0
  br i1 %i.bb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bd = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.bc)
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bd, label %bb.r, label %bb.u, !llvm.loop !27

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.be = tail call i64 @wcslen(ptr noundef nonnull %0) #17 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %.not4964 = icmp eq ptr %i.bf, %i.ba
  br i1 %.not4964, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.bg = shl nuw nsw i64 %i.be, 2                ; 3 uses
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %scevgep = getelementptr i8, ptr %i.bh, i64 4
  %i.bi = sub i64 %i.a, %i.aw
  %i.bj = shl i64 %indvar, 2
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = add i64 %i.bg, %i.bk                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = mul i64 %i.bm, -4                       ; 2 uses
  %scevgep75 = getelementptr i8, ptr %scevgep, i64 %i.bn
  %scevgep76 = getelementptr i8, ptr %0, i64 %i.bg
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.bn
  %i.bo = and i64 %i.bl, -4
  %i.bp = add i64 %i.bo, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep75, ptr align 4 %scevgep77, i64 %i.bp, i1 false), !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.u
  store i32 49, ptr %.1, align 4, !tbaa !11
  br label %.loopexit

bb.v:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %.04556, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.br)
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %.04556, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %i.bv = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.bu)
  br i1 %i.bv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bw = zext i32 %1 to i64
  %i.bx = ptrtoint ptr %.04556 to i64
  %i.by = ptrtoint ptr %0 to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = add nsw i64 %i.bw, -2
  %i.cc = sub nsw i64 %i.cb, %i.ca
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.bq, ptr noundef nonnull @.str.12, i64 noundef %i.cc)
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.cd = tail call i64 @wcslen(ptr noundef nonnull %.04556) #17
  %i.ce = getelementptr [4 x i8], ptr %.04556, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4     ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !11
  %i.ch = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !11
  %i.ci = icmp eq i32 %i.ch, 58
  br i1 %i.ci, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %bb.y, %bb.ab
  %.266 = phi ptr [ %i.cj, %bb.ab ], [ %i.cf, %bb.y ] ; 4 uses
  %.not50 = icmp ugt ptr %.266, %0
  br i1 %.not50, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph68
  %i.cj = getelementptr inbounds i8, ptr %.266, i64 -4 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 46
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %.lr.ph68
  store i32 97, ptr %.266, align 4, !tbaa !11
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  store i32 48, ptr %.266, align 4, !tbaa !11
  %i.cm = add nsw i32 %i.ck, 1                    ; 2 uses
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !11
  %i.cn = icmp eq i32 %i.cm, 58
  br i1 %i.cn, label %.lr.ph68, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %bb.r, %bb.ab, %bb.y, %._crit_edge, %bb.aa, %bb.x, %bb.o
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_Z12IsNameUsablePKw(ptr nofree noundef readonly %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @wcschr(ptr noundef %0, i32 noundef signext 58) #17
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %.not1417 = icmp eq i32 %i.b, 0
  br i1 %.not1417, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge19
  %i.c = phi i32 [ %.pre, %._crit_edge19 ], [ %i.b, %.preheader ] ; 2 uses
  %.01118 = phi ptr [ %i.f, %._crit_edge19 ], [ %0, %.preheader ] ; 2 uses
  %i.d = icmp ult i32 %i.c, 32
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.01118, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !11 ; 3 uses
  switch i32 %i.c, label %._crit_edge19 [
    i32 32, label %bb.c
    i32 46, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = icmp eq i32 %.pre, 47
  br i1 %i.e, label %.thread, label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.01118, i64 4
  %.not14 = icmp eq i32 %.pre, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %._crit_edge19
  %i.g = tail call ptr @wcspbrk(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #17
  %i.h = icmp eq ptr %i.g, null
  br label %.thread

.thread:                                          ; preds = %bb.c, %.lr.ph, %.preheader, %._crit_edge, %bb.a
  %.1 = phi i1 [ %i.h, %._crit_edge ], [ false, %bb.a ], [ false, %.preheader ], [ false, %.lr.ph ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define void @_Z14MakeNameUsablePwb(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %i.b = phi i32 [ %i.i, %bb.d ], [ %i.a, %.lr.ph ] ; 3 uses
  %.019.us = phi ptr [ %i.h, %bb.d ], [ %0, %.lr.ph ] ; 3 uses
  %i.c = tail call ptr @wcschr(ptr noundef nonnull @.str.13, i32 noundef signext %i.b) #17
  %.not16.us = icmp ne ptr %i.c, null
  %i.d = icmp ult i32 %i.b, 32
  %or.cond17.us = or i1 %i.d, %.not16.us
  br i1 %or.cond17.us, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  switch i32 %i.b, label %bb.d [
    i32 58, label %.sink.split
    i32 32, label %bb.c
    i32 46, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.019.us, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = icmp eq i32 %i.f, 47
  br i1 %i.g, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.b, %bb.c, %.lr.ph.split.us
  store i32 95, ptr %.019.us, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.019.us, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 2 uses
  %.not.us = icmp eq i32 %i.i, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.f, %bb.d, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %i.j = phi i32 [ %i.m, %bb.f ], [ %i.a, %.lr.ph ]
  %.019 = phi ptr [ %i.l, %bb.f ], [ %0, %.lr.ph ] ; 2 uses
  %i.k = tail call ptr @wcschr(ptr noundef nonnull @.str.14, i32 noundef signext %i.j) #17
  %.not16.not = icmp eq ptr %i.k, null
  br i1 %.not16.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  store i32 95, ptr %.019, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14UnixSlashToDosPKcPcm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.c, label %bb.b [
    i8 0, label %.critedge
    i8 47, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 92, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  store i8 %i.d, ptr %i.e, align 1, !tbaa !15
  %i.f = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !31

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  store i8 0, ptr %i.g, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14DosSlashToUnixPKcPcm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.c, label %bb.b [
    i8 0, label %.critedge
    i8 92, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 47, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  store i8 %i.d, ptr %i.e, align 1, !tbaa !15
  %i.f = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !32

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  store i8 0, ptr %i.g, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14UnixSlashToDosPKwPwm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 0, label %.critedge
    i32 47, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 92, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.013
  store i32 %i.d, ptr %i.e, align 4, !tbaa !11
  %i.f = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !33

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.c ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa
  store i32 0, ptr %i.g, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14DosSlashToUnixPKwPwm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 0, label %.critedge
    i32 92, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 47, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.013
  store i32 %i.d, ptr %i.e, align 4, !tbaa !11
  %i.f = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !34

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.c ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa
  store i32 0, ptr %i.g, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z17ConvertNameToFullPKwPwm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !11
  switch i32 %i.c, label %bb.f [
    i32 0, label %bb.c
    i32 47, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %1, align 4, !tbaa !11
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  store i32 0, ptr %1, align 4, !tbaa !11
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = call ptr @getcwd(ptr noundef nonnull %i.a, i64 noundef 2048) #18
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.a, align 16, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.g = call i64 @wcslen(ptr noundef %1) #17     ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_Z11AddEndSlashPwm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %.not10.i = icmp eq i32 %i.j, 47
  br i1 %.not10.i, label %_Z11AddEndSlashPwm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
