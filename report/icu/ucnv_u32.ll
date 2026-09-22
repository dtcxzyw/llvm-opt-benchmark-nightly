Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u32?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL46T_UConverter_fromUnicode_UTF32_LE_OFFSET_LOGICP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %.478.1, i64 1
  store i8 %i.av, ptr %.478.1, align 1, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %.4.1, i64 4
  store i32 %.2, ptr %.4.1, align 4, !tbaa !33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.478.2 = phi ptr [ %i.by, %bb.u ], [ %.478.1, %bb.t ] ; 4 uses
  %.4.2 = phi ptr [ %i.bz, %bb.u ], [ %.4.1, %bb.t ] ; 3 uses
  %i.ca = icmp ult ptr %.478.2, %i.f
  br i1 %i.ca, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 91 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !43  ; 2 uses
  %i.cf = add i8 %i.ce, 1
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !43
  %i.cg = sext i8 %i.ce to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 %i.cg
  store i8 0, ptr %i.ch, align 1, !tbaa !25
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.478.2, i64 1
  store i8 0, ptr %.478.2, align 1, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %.4.2, i64 4
  store i32 %.2, ptr %.4.2, align 4, !tbaa !33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.478.3 = phi ptr [ %i.ci, %bb.x ], [ %.478.2, %bb.w ]
  %.4.3 = phi ptr [ %i.cj, %bb.x ], [ %.4.2, %bb.w ]
  %i.ck = add nsw i32 %.2, 1
  %i.cl = and i32 %.170, 2031616
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = add nsw i32 %i.ck, %i.cn
  br label %bb.f, !llvm.loop !51

.sink.split.sink.split:                           ; preds = %bb.h, %bb.j
  %.069.sink = phi i32 [ %.069, %bb.j ], [ %i.ab, %bb.h ]
  %.383.ph.ph = phi ptr [ %.181, %bb.j ], [ %i.z, %bb.h ]
  %.579.ph.ph = phi ptr [ %.175, %bb.j ], [ %.074, %bb.h ]
  %.5.ph.ph = phi ptr [ %.172, %bb.j ], [ %.071, %bb.h ]
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 84
  store i32 %.069.sink, ptr %i.cq, align 4, !tbaa !41
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.l
  %.383.ph = phi ptr [ %.181, %bb.l ], [ %.383.ph.ph, %.sink.split.sink.split ]
  %.579.ph = phi ptr [ %.175, %bb.l ], [ %.579.ph.ph, %.sink.split.sink.split ]
  %.5.ph = phi ptr [ %.172, %bb.l ], [ %.5.ph.ph, %.sink.split.sink.split ]
  store i32 12, ptr %1, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.l, %bb.f
  %.383 = phi ptr [ %.181, %bb.l ], [ %.080, %bb.f ], [ %.383.ph, %.sink.split ] ; 2 uses
  %.579 = phi ptr [ %.175, %bb.l ], [ %.074, %bb.f ], [ %.579.ph, %.sink.split ] ; 2 uses
  %.5 = phi ptr [ %.172, %bb.l ], [ %.071, %bb.f ], [ %.5.ph, %.sink.split ]
  %i.cr = icmp uge ptr %.383, %i.d
  %.not90 = icmp ult ptr %.579, %i.f
  %or.cond = select i1 %i.cr, i1 true, i1 %.not90
  br i1 %or.cond, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = load i32, ptr %1, align 4, !tbaa !31
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr %.579, ptr %i.q, align 8, !tbaa !40
  store ptr %.383, ptr %i.a, align 8, !tbaa !35
  store ptr %.5, ptr %i.s, align 8, !tbaa !44
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 0, 1114112) i32 @_ZL34T_UConverter_getNextUChar_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 4
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  %sext = shl i64 %i.g, 32
  %i.m = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.b, i64 %i.m, i1 false)
  %i.n = trunc i64 %i.g to i8
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 %i.n, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.m
  store ptr %i.q, ptr %i.a, align 8, !tbaa !15
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.b, i64 2
  %i.s = load i16, ptr %i.r, align 1              ; 2 uses
  %i.t = zext i16 %i.s to i32
  %i.u = shl nuw i32 %i.t, 16
  %i.v = load i16, ptr %i.b, align 1
  %i.w = zext i16 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.y, ptr %i.a, align 8, !tbaa !15
  %i.z = icmp ugt i16 %i.s, 16
  %i.aa = and i32 %i.x, 2095104
  %i.ab = icmp eq i32 %i.aa, 55296
  %or.cond = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 65
  %i.af = load i32, ptr %i.b, align 1
  store i32 %i.af, ptr %i.ae, align 1
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i8 4, ptr %i.ah, align 8, !tbaa !23
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c, %bb.e
  %.sink = phi i32 [ 12, %bb.e ], [ 11, %bb.c ], [ 8, %bb.a ]
  store i32 %.sink, ptr %1, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i32 [ %i.x, %bb.d ], [ 65535, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL10_UTF32OpenP10UConverterP18UConverterLoadArgsP10UErrorCode(ptr nofree noundef writeonly captures(none) initializes((76, 84)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.a, align 4, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.b, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL11_UTF32ResetP10UConverter21UConverterResetChoice(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.b, align 4, !tbaa !45
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.c, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL26_UTF32ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45   ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %3 = icmp eq ptr %i.h, null                     ; 2 uses
  %i.k = icmp ult ptr %i.d, %i.f
  br i1 %i.k, label %.outer.split.us.lr.ph.lr.ph, label %.critedge

.outer.split.us.lr.ph.lr.ph:                      ; preds = %bb.a
  %i.l = load i32, ptr %1, align 4, !tbaa !31
  %i.m = icmp sgt i32 %i.l, 0
  br label %.outer.split.us

.outer.jt1:                                       ; preds = %bb.b, %.loopexit117
  %.189.jt1 = phi i32 [ 5, %.loopexit117 ], [ 1, %bb.b ] ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %.091.ph.ph174, i64 1 ; 4 uses
  %5 = icmp ult ptr %4, %i.f
  br i1 %5, label %.outer.split.us.jt8, label %.critedge

.outer.jt9:                                       ; preds = %bb.e, %bb.m
  %.192.jt9 = phi ptr [ %i.ba, %bb.m ], [ %i.aa, %bb.e ] ; 4 uses
  %.1.jt9 = phi i32 [ %.0.ph.ph165, %bb.m ], [ %i.ak, %bb.e ] ; 3 uses
  %6 = icmp ult ptr %.192.jt9, %i.f
  br i1 %6, label %.outer.split.us.jt5, label %.critedge

.outer.jt8:                                       ; preds = %bb.g, %bb.f, %bb.j, %bb.d
  %.0.ph.ph166 = phi i32 [ %.0.ph.ph168, %bb.j ], [ %i.af, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ] ; 3 uses
  %.091.ph.jt8 = phi ptr [ %i.az, %bb.j ], [ %i.aa, %bb.d ], [ %i.al, %bb.f ], [ %i.al, %bb.g ] ; 4 uses
  %7 = icmp ult ptr %.091.ph.jt8, %i.f
  br i1 %7, label %.outer.split.us.jt9, label %.critedge

.outer.split.us:                                  ; preds = %.outer.split.us.lr.ph.lr.ph, %.outer.outer.jt9
  %.088.ph.ph175 = phi i32 [ %.1.jt9.a, %.outer.outer.jt9 ], [ %i.j, %.outer.split.us.lr.ph.lr.ph ] ; 9 uses
  %.091.ph.ph174 = phi ptr [ %.192.jt9.a, %.outer.outer.jt9 ], [ %i.d, %.outer.split.us.lr.ph.lr.ph ] ; 12 uses
  br i1 %i.m, label %.critedge, label %.outer.split.us.split.preheader

.outer.split.us.jt8:                              ; preds = %.outer.jt1
  %i.n = load i32, ptr %1, align 4, !tbaa !31
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.critedge, label %.split.us

.outer.split.us.jt5:                              ; preds = %.outer.jt9
  %i.p = load i32, ptr %1, align 4, !tbaa !31
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %.loopexit145

.outer.split.us.jt9:                              ; preds = %.outer.jt8
  %i.r = load i32, ptr %1, align 4, !tbaa !31
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.critedge, label %.outer

.outer.split.us.split.preheader:                  ; preds = %.outer.split.us
  switch i32 %.088.ph.ph175, label %.outer.outer.jt9 [
    i32 0, label %bb.b
    i32 1, label %.split.us
    i32 2, label %.split.us
    i32 3, label %.split.us
    i32 5, label %.split.us
    i32 6, label %.split.us
    i32 7, label %.split.us
    i32 8, label %.loopexit138.loopexit
    i32 9, label %.loopexit145
  ]

bb.b:                                             ; preds = %.outer.split.us.split.preheader
  %i.t = load i8, ptr %.091.ph.ph174, align 1, !tbaa !25
  switch i8 %i.t, label %.loopexit138.loopexit [
    i8 0, label %.outer.jt1
    i8 -1, label %.loopexit117
  ]

.loopexit117:                                     ; preds = %bb.b
  br label %.outer.jt1

.split.us:                                        ; preds = %.outer.split.us.jt8, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader
  %.088.ph162 = phi i32 [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.189.jt1, %.outer.split.us.jt8 ] ; 4 uses
  %.091.ph157 = phi ptr [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %4, %.outer.split.us.jt8 ] ; 3 uses
  %i.u = load i8, ptr %.091.ph157, align 1, !tbaa !25
  %i.v = zext nneg i32 %.088.ph162 to i64
  %i.w = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !25
  %i.y = icmp eq i8 %i.u, %i.x
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.split.us
  %i.z = add nuw nsw i32 %.088.ph162, 1           ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.091.ph157, i64 1 ; 5 uses
  switch i32 %i.z, label %.outer.outer.jt9 [
    i32 4, label %bb.d
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32
  br label %.outer.jt8

bb.e:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  br label %.outer.jt9

bb.f:                                             ; preds = %.split.us
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !15  ; 3 uses
  %i.am = ptrtoint ptr %.091.ph157 to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = and i32 %.088.ph162, 3                  ; 2 uses
  %i.ar = icmp eq i32 %i.aq, %i.ap
  br i1 %i.ar, label %.outer.jt8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i8, ptr %2, align 2, !tbaa !55
  %i.at = and i32 %.088.ph162, 4
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.au ; 2 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !15
  %i.aw = sub nsw i32 %i.aq, %i.ap
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ax
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !17
  store i8 0, ptr %2, align 2, !tbaa !55
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !17
  store i8 %i.as, ptr %2, align 2, !tbaa !55
  br label %.outer.jt8

.loopexit138.loopexit:                            ; preds = %.outer.split.us.split.preheader, %bb.b
  br label %.outer

.outer:                                           ; preds = %.loopexit138.loopexit, %.outer.split.us.jt9
  %.0.ph.ph168 = phi i32 [ %.0.ph.ph166, %.outer.split.us.jt9 ], [ 0, %.loopexit138.loopexit ]
  %.091.ph160 = phi ptr [ %.091.ph.jt8, %.outer.split.us.jt9 ], [ %.091.ph.ph174, %.loopexit138.loopexit ]
  store ptr %.091.ph160, ptr %i.c, align 8, !tbaa !15
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.outer
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.j

bb.i:                                             ; preds = %.outer
  tail call void @_ZL44T_UConverter_toUnicode_UTF32_BE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !15
  br label %.outer.jt8

.loopexit145:                                     ; preds = %.outer.split.us.split.preheader, %.outer.split.us.jt5
  %.0.ph.ph165 = phi i32 [ %.1.jt9, %.outer.split.us.jt5 ], [ 0, %.outer.split.us.split.preheader ]
  %.091.ph158 = phi ptr [ %.192.jt9, %.outer.split.us.jt5 ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ]
  store ptr %.091.ph158, ptr %i.c, align 8, !tbaa !15
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit145
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.l:                                             ; preds = %.loopexit145
  tail call void @_ZL44T_UConverter_toUnicode_UTF32_LE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !15
  br label %.outer.jt9

.outer.outer.jt9:                                 ; preds = %.outer.split.us.split.preheader, %bb.c
  %.192.jt9.a = phi ptr [ %i.aa, %bb.c ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ] ; 3 uses
  %.1.jt9.a = phi i32 [ %i.z, %bb.c ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ] ; 2 uses
  %i.bb = icmp ult ptr %.192.jt9.a, %i.f
  br i1 %i.bb, label %.outer.split.us, label %.critedge, !llvm.loop !52

.critedge:                                        ; preds = %.outer.outer.jt9, %.outer.split.us, %.outer.jt1, %.outer.split.us.jt8, %bb.a, %.outer.split.us.jt5, %.outer.jt9, %.outer.split.us.jt9, %.outer.jt8
  %.us-phi = phi i32 [ %.0.ph.ph166, %.outer.split.us.jt9 ], [ %.0.ph.ph166, %.outer.jt8 ], [ %.1.jt9, %.outer.split.us.jt5 ], [ %.1.jt9, %.outer.jt9 ], [ 0, %bb.a ], [ 0, %.outer.split.us.jt8 ], [ 0, %.outer.jt1 ], [ 0, %.outer.split.us ], [ 0, %.outer.outer.jt9 ] ; 3 uses
  %.088.ph161 = phi i32 [ 8, %.outer.split.us.jt9 ], [ 8, %.outer.jt8 ], [ 9, %.outer.split.us.jt5 ], [ 9, %.outer.jt9 ], [ %i.j, %bb.a ], [ %.1.jt9.a, %.outer.outer.jt9 ], [ %.088.ph.ph175, %.outer.split.us ], [ %.189.jt1, %.outer.jt1 ], [ %.189.jt1, %.outer.split.us.jt8 ] ; 6 uses
  %.091.ph156 = phi ptr [ %.091.ph.jt8, %.outer.split.us.jt9 ], [ %.091.ph.jt8, %.outer.jt8 ], [ %.192.jt9, %.outer.split.us.jt5 ], [ %.192.jt9, %.outer.jt9 ], [ %i.d, %bb.a ], [ %.192.jt9.a, %.outer.outer.jt9 ], [ %.091.ph.ph174, %.outer.split.us ], [ %4, %.outer.jt1 ], [ %4, %.outer.split.us.jt8 ] ; 3 uses
  %i.bc = icmp ne ptr %i.h, null
  %i.bd = icmp ne i32 %.us-phi, 0
  %or.cond = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.critedge
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !32  ; 3 uses
  %i.bf = icmp ult ptr %i.h, %i.be
  br i1 %i.bf, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.bg = ptrtoaddr ptr %i.be to i64
  %i.bh = ptrtoaddr ptr %i.h to i64
  %i.bi = xor i64 %i.bh, -1
  %i.bj = add i64 %i.bi, %i.bg                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 28
  br i1 %min.iters.check, label %.lr.ph.preheader259, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bl, 9223372036854775800     ; 3 uses
  %i.bm = shl i64 %n.vec, 2
  %i.bn = getelementptr i8, ptr %i.h, i64 %i.bm
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.us-phi, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bo ; 3 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.load258 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !33
  %i.bq = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.br = add nsw <4 x i32> %wide.load258, %broadcast.splat
  store <4 x i32> %i.bq, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %i.br, ptr %i.bp, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader259

.lr.ph.preheader259:                              ; preds = %.lr.ph.preheader, %middle.block
  %.090180.ph = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader259, %.lr.ph
  %.090180 = phi ptr [ %i.bt, %.lr.ph ], [ %.090180.ph, %.lr.ph.preheader259 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.090180, i64 4 ; 2 uses
  %i.bu = load i32, ptr %.090180, align 4, !tbaa !33
  %i.bv = add nsw i32 %i.bu, %.us-phi
  store i32 %i.bv, ptr %.090180, align 4, !tbaa !33
  %i.bw = icmp ult ptr %i.bt, %i.be
  br i1 %i.bw, label %.lr.ph, label %.loopexit, !llvm.loop !54

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.n, %.critedge
  store ptr %.091.ph156, ptr %i.c, align 8, !tbaa !15
  %i.bx = icmp eq ptr %.091.ph156, %i.f
  br i1 %i.bx, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.loopexit
  %i.by = load i8, ptr %2, align 2, !tbaa !55
  %.not100 = icmp eq i8 %i.by, 0
  br i1 %.not100, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.088.ph161, label %bb.s [
    i32 0, label %bb.t
    i32 8, label %bb.q
    i32 9, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.bz = and i32 %.088.ph161, 4
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.ca ; 2 uses
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !15
  %i.cc = and i32 %.088.ph161, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  store ptr %i.ce, ptr %i.e, align 8, !tbaa !17
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  store ptr %.091.ph156, ptr %i.c, align 8, !tbaa !15
  store ptr %i.f, ptr %i.e, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.o, %.loopexit
  %.3 = phi i32 [ 8, %bb.s ], [ %.088.ph161, %bb.p ], [ 8, %bb.q ], [ 9, %bb.r ], [ %.088.ph161, %bb.o ], [ %.088.ph161, %.loopexit ]
  store i32 %.3, ptr %i.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 1114112) i32 @_ZL18_UTF32GetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  switch i32 %i.d, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit [
    i32 8, label %bb.b
    i32 9, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp slt i32 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %sext.i = shl i64 %i.k, 32
  %i.o = ashr exact i64 %sext.i, 32               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.o, i1 false)
  %i.p = trunc i64 %i.k to i8
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i8 %i.p, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.o
  store ptr %i.s, ptr %i.e, align 8, !tbaa !15
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.f, align 1, !tbaa !25
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw i32 %i.u, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !25
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = or disjoint i32 %i.z, %i.v              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !25
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.aa            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !15
  %i.al = icmp ugt i32 %i.aa, 1114111
  %i.am = and i32 %i.aj, 2095104
  %i.an = icmp eq i32 %i.am, 55296
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond.i, label %bb.f, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.ap = load i32, ptr %i.f, align 1
  store i32 %i.ap, ptr %i.ao, align 1
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i8 4, ptr %i.ar, align 8, !tbaa !23
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %.not.i5 = icmp ult ptr %i.at, %i.av
  br i1 %.not.i5, label %bb.h, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp slt i32 %i.az, 4
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %sext.i10 = shl i64 %i.ay, 32
  %i.bc = ashr exact i64 %sext.i10, 32            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.at, i64 %i.bc, i1 false)
  %i.bd = trunc i64 %i.ay to i8
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i8 %i.bd, ptr %i.bf, align 8, !tbaa !23
  %i.bg = getelementptr inbounds i8, ptr %i.at, i64 %i.bc
  store ptr %i.bg, ptr %i.as, align 8, !tbaa !15
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.at, align 1            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !15
  %i.bj = icmp ugt i32 %i.bh, 1114111
  %i.bk = and i32 %i.bh, 2095104
  %i.bl = icmp eq i32 %i.bk, 55296
  %or.cond.i9 = or i1 %i.bj, %i.bl
  br i1 %or.cond.i9, label %bb.k, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.bn = load i32, ptr %i.at, align 1
  store i32 %i.bn, ptr %i.bm, align 1
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i8 4, ptr %i.bp, align 8, !tbaa !23
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split: ; preds = %bb.g, %bb.i, %bb.k, %bb.b, %bb.d, %bb.f
  %.sink.i7.sink = phi i32 [ 8, %bb.b ], [ 12, %bb.f ], [ 11, %bb.d ], [ 12, %bb.k ], [ 11, %bb.i ], [ 8, %bb.g ]
  store i32 %.sink.i7.sink, ptr %1, align 4, !tbaa !31
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split, %bb.j, %bb.e, %bb.a
  %.0 = phi i32 [ %i.bh, %bb.j ], [ -9, %bb.a ], [ %i.aj, %bb.e ], [ 65535, %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS10UConverter", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 char16_t", !9, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"_ZTS23UConverterToUnicodeArgs", !8, i64 0, !4, i64 2, !10, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !12, i64 40, !13, i64 48}
!15 = !{!14, !11, i64 16}
!16 = !{!14, !12, i64 32}
!17 = !{!14, !11, i64 24}
!18 = !{!14, !12, i64 40}
!19 = !{!14, !10, i64 8}
!20 = !{!"p1 _ZTS20UConverterSharedData", !9, i64 0}
!21 = !{!"_ZTS24UConverterCallbackReason", !4, i64 0}
!22 = !{!"_ZTS10UConverter", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !11, i64 40, !20, i64 48, !5, i64 56, !4, i64 60, !4, i64 61, !4, i64 62, !4, i64 63, !4, i64 64, !4, i64 65, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91, !4, i64 92, !4, i64 93, !4, i64 94, !4, i64 95, !4, i64 96, !4, i64 104, !4, i64 136, !4, i64 140, !4, i64 144, !5, i64 208, !4, i64 212, !4, i64 250, !4, i64 281, !4, i64 282, !4, i64 283, !21, i64 284}
!23 = !{!22, !4, i64 64}
!24 = !{!22, !5, i64 72}
!25 = !{!4, !4, i64 0}
!26 = !{!"char16_t", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!22, !4, i64 93}
!30 = !{!"_ZTS10UErrorCode", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!14, !13, i64 48}
!33 = !{!5, !5, i64 0}
!34 = !{!"_ZTS25UConverterFromUnicodeArgs", !8, i64 0, !4, i64 2, !10, i64 8, !12, i64 16, !12, i64 24, !11, i64 32, !11, i64 40, !13, i64 48}
!35 = !{!34, !12, i64 16}
!36 = !{!34, !12, i64 24}
!37 = !{!34, !11, i64 40}
!38 = !{!34, !10, i64 8}
!39 = !{!22, !5, i64 80}
!40 = !{!34, !11, i64 32}
!41 = !{!22, !5, i64 84}
!42 = !{!34, !4, i64 2}
!43 = !{!22, !4, i64 91}
!44 = !{!34, !13, i64 48}
!45 = !{!22, !5, i64 76}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
end_hunk_0
