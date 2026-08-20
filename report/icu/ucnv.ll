inline.NumInlined: 68
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL24_fromUnicodeWithCallbackP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  store ptr %.3133, ptr %i.ag, align 8, !tbaa !84
  store i8 %.3, ptr %i.af, align 2, !tbaa !81
  br label %.critedge

thread-pre-split:                                 ; preds = %bb.ae
  %.pr = load i32, ptr %i.ah, align 4, !tbaa !58
  %i.ez = icmp ne i32 %i.ei, 10
  %i.fa = zext i1 %i.ez to i32
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split, %.thread
  %i.fb = phi i32 [ %.pr, %thread-pre-split ], [ %i.en, %.thread ] ; 5 uses
  %i.fc = phi i32 [ %i.fa, %thread-pre-split ], [ 1, %.thread ]
  %i.fd = icmp ult i32 %i.fb, 65536
  br i1 %i.fd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fe = trunc nuw i32 %i.fb to i16
  store i16 %i.fe, ptr %i.aj, align 4, !tbaa !100
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ff = lshr i32 %i.fb, 10
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = add i16 %i.fg, -10304
  store i16 %i.fh, ptr %i.aj, align 4, !tbaa !100
  %i.fi = trunc i32 %i.fb to i16
  %i.fj = and i16 %i.fi, 1023
  %i.fk = or disjoint i16 %i.fj, -9216
  store i16 %i.fk, ptr %i.ak, align 2, !tbaa !100
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1142 = phi i32 [ 1, %bb.ak ], [ 2, %bb.al ]   ; 3 uses
  %i.fl = trunc nuw nsw i32 %.1142 to i8
  store i8 %i.fl, ptr %i.al, align 4, !tbaa !60
  store i32 0, ptr %i.ah, align 4, !tbaa !58
  %i.fm = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.fn = load ptr, ptr %i.am, align 8, !tbaa !43
  call void %i.fm(ptr noundef %i.fn, ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i32 noundef %.1142, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef nonnull %1)
  br label %bb.k, !llvm.loop !101

.critedge:                                        ; preds = %bb.aa, %bb.af, %bb.ai, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ucnv_toUnicode_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, i8 noundef signext %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %struct.UConverterToUnicodeArgs, align 8 ; 11 uses
  store ptr %5, ptr %i.a, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = icmp eq ptr %7, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %7, align 4, !tbaa !8
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %7, align 4, !tbaa !8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %3, align 8, !tbaa !54     ; 5 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = add i64 %i.j, 2147483647
  %i.l = icmp ult ptr %2, inttoptr (i64 -2147483647 to ptr)
  %i.m = inttoptr i64 %i.k to ptr
  %i.n = select i1 %i.l, ptr %i.m, ptr inttoptr (i64 -1 to ptr)
  %i.o = icmp eq ptr %i.n, %2
  %spec.select.idx = sext i1 %i.o to i64
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.idx ; 5 uses
  %i.p = icmp ult ptr %4, %i.h
  %i.q = icmp ult ptr %spec.select, %i.i
  %or.cond59 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond59, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %4 to i64
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.t, 2147483647
  %i.v = icmp ugt ptr %4, %i.h
  %or.cond60 = and i1 %i.v, %i.u
  br i1 %or.cond60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = ptrtoint ptr %spec.select to i64
  %i.x = ptrtoint ptr %i.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, 2147483647
  %i.aa = icmp ule ptr %spec.select, %i.i
  %or.cond61.not65 = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = and i64 %i.y, 1
  %.not56 = icmp eq i64 %i.ab, 0
  %or.cond62 = and i1 %or.cond61.not65, %.not56
  br i1 %or.cond62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 1, ptr %7, align 4, !tbaa !8
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !70
  %i.ae = icmp sgt i8 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = call fastcc noundef signext i8 @_ZL28ucnv_outputOverflowToUnicodeP10UConverterPPDsPKDsPPiP10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %spec.select, ptr noundef nonnull %i.a, ptr noundef %7)
  %.not57 = icmp eq i8 %i.af, 0
  br i1 %.not57, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not58 = icmp eq i8 %6, 0
  %i.ag = icmp eq ptr %i.h, %4
  %or.cond63 = and i1 %.not58, %i.ag
  br i1 %or.cond63, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !72
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.ak, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i8 %6, ptr %i.al, align 2, !tbaa !102
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.ao, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %4, ptr %i.ap, align 8, !tbaa !105
  %i.aq = load ptr, ptr %1, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %spec.select, ptr %i.as, align 8, !tbaa !107
  store i16 56, ptr %8, align 8, !tbaa !108
  call fastcc void @_ZL22_toUnicodeWithCallbackP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %8, ptr noundef %7)
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !104
  store ptr %i.at, ptr %3, align 8, !tbaa !54
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !106
  store ptr %i.au, ptr %1, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.a, %bb.b, %bb.m, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL28ucnv_outputOverflowToUnicodeP10UConverterPPDsPKDsPPiP10UErrorCode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.036 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 93 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !70    ; 3 uses
  %i.f = icmp sgt i8 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i8 %i.e to i64     ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 9 uses
  %.03548 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.ae, %bb.h ] ; 4 uses
  %.13747 = phi ptr [ %.036, %.lr.ph.preheader ], [ %.2, %bb.h ] ; 5 uses
  %i.g = icmp eq ptr %.03548, %2
  br i1 %i.g, label %iter.check, label %bb.f

iter.check:                                       ; preds = %.lr.ph
  %i.h = zext nneg i8 %i.e to i64
  %i.i = add nuw nsw i64 %indvars.iv, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %wide.trip.count)
  %i.j = sub nsw i64 %umax, %indvars.iv           ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check71 = icmp ult i64 %i.j, 16
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 6 uses
  %i.l = add i64 %indvars.iv, %n.vec
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !tbaa !100
  %wide.load72 = load <8 x i16>, ptr %i.o, align 2, !tbaa !100
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <8 x i16> %wide.load, ptr %i.p, align 2, !tbaa !100
  store <8 x i16> %wide.load72, ptr %i.q, align 2, !tbaa !100
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.j, -4                     ; 5 uses
  %i.s = add i64 %indvars.iv, %n.vec73
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index74
  %wide.load75 = load <4 x i16>, ptr %i.u, align 2, !tbaa !100
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index74
  store <4 x i16> %wide.load75, ptr %i.v, align 2, !tbaa !100
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %i.j, %n.vec73
  br i1 %cmp.n77, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv60.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec73, %vec.epilog.middle.block ]
  %indvars.iv58.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %vec.epilog.scalar.ph ], [ %indvars.iv60.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %vec.epilog.scalar.ph ], [ %indvars.iv58.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv58
  %i.y = load i16, ptr %i.x, align 2, !tbaa !100
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv60
  store i16 %i.y, ptr %i.z, align 2, !tbaa !100
  %i.aa = icmp samesign ult i64 %indvars.iv.next59, %i.h
  br i1 %i.aa, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !112

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next61.lcssa = phi i64 [ %n.vec73, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next61, %vec.epilog.scalar.ph ]
  %i.ab = trunc i64 %indvars.iv.next61.lcssa to i8
  store i8 %i.ab, ptr %i.d, align 1, !tbaa !70
  store ptr %.03548, ptr %1, align 8, !tbaa !55
  %.not43 = icmp eq ptr %.13747, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  store ptr %.13747, ptr %3, align 8, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  store i32 15, ptr %4, align 4, !tbaa !8
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %.03548, i64 2 ; 2 uses
  store i16 %i.ad, ptr %.03548, align 2, !tbaa !100
  %.not42 = icmp eq ptr %.13747, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.13747, i64 4
  store i32 -1, ptr %.13747, align 4, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.af, %bb.g ], [ null, %bb.f ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.137.lcssa = phi ptr [ %.036, %bb.c ], [ %.2, %bb.h ] ; 2 uses
  %.035.lcssa = phi ptr [ %i.a, %bb.c ], [ %i.ae, %bb.h ]
  store i8 0, ptr %i.d, align 1, !tbaa !70
  store ptr %.035.lcssa, ptr %1, align 8, !tbaa !55
  %.not41 = icmp eq ptr %.137.lcssa, null
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %.137.lcssa, ptr %3, align 8, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %bb.e
  %.038 = phi i8 [ 1, %bb.e ], [ 0, %bb.i ], [ 0, %._crit_edge ]
  ret i8 %.038
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22_toUnicodeWithCallbackP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [31 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  br i1 %i.j, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.0144.ph = phi i32 [ 0, %bb.a ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0157 = phi ptr [ %i.p, %bb.b ], [ %i.s, %.sink.split ]
  %.0144 = phi i32 [ 0, %bb.b ], [ %.0144.ph, %.sink.split ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 282 ; 6 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !72    ; 2 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 250
  %i.ac = sub nsw i64 0, %i.w                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 2 %i.ab, i64 %i.ac, i1 false)
  store ptr %i.a, ptr %i.d, align 8, !tbaa !104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !105
  store i8 0, ptr %i.z, align 2, !tbaa !102
  store i8 0, ptr %i.t, align 2, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1145 = phi i32 [ -1, %bb.d ], [ %.0144, %bb.c ]
  %.0136 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ]
  %.0132 = phi ptr [ %i.y, %bb.d ], [ null, %bb.c ]
  %.0128 = phi i32 [ %.0144, %bb.d ], [ 0, %bb.c ]
  %.0127 = phi i8 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 250 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 90 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre = load i32, ptr %1, align 4, !tbaa !8
  br label %.loopexit
end_hunk_0
