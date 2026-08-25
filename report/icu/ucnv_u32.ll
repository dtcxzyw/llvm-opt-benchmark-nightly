Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u32?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL26_UTF32ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51   ; 2 uses
  %i.k = icmp ult ptr %i.d, %i.f
  br i1 %i.k, label %.outer.split.us.lr.ph.lr.ph, label %.loopexit

.outer.split.us.lr.ph.lr.ph:                      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.m = icmp eq ptr %i.h, null                   ; 2 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !31
  %i.o = icmp sgt i32 %i.n, 0
  br label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer.outer, %.outer.split.us.lr.ph.lr.ph
  %.088.ph.ph175 = phi i32 [ %i.j, %.outer.split.us.lr.ph.lr.ph ], [ %.2, %.outer.outer ] ; 9 uses
  %.091.ph.ph174 = phi ptr [ %i.d, %.outer.split.us.lr.ph.lr.ph ], [ %.192, %.outer.outer ] ; 12 uses
  br i1 %i.o, label %.critedge, label %.outer.split.us.split.preheader

.outer.split.us.jt8:                              ; preds = %.outer.outer.jt8, %.outer
  %.0.ph.ph176222 = phi i32 [ 0, %.outer ], [ %.1.jt8, %.outer.outer.jt8 ] ; 2 uses
  %.091.ph167.jt8 = phi ptr [ %i.an, %.outer ], [ %.192.jt8, %.outer.outer.jt8 ] ; 2 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !31
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %.split122.us

.outer.split.us.jt5:                              ; preds = %.outer.outer.jt5
  %i.r = load i32, ptr %1, align 4, !tbaa !31
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.critedge, label %.split.us

.outer.split.us.jt9:                              ; preds = %.outer.outer.jt9
  %i.t = load i32, ptr %1, align 4, !tbaa !31
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.critedge, label %.split125.us

.outer.split.us.split.preheader:                  ; preds = %.outer.split.us
  switch i32 %.088.ph.ph175, label %.outer.outer [
    i32 0, label %bb.b
    i32 1, label %.split.us
    i32 2, label %.split.us
    i32 3, label %.split.us
    i32 5, label %.split.us
    i32 6, label %.split.us
    i32 7, label %.split.us
    i32 8, label %.split122.us.loopexit
    i32 9, label %.split125.us
  ]

bb.b:                                             ; preds = %.outer.split.us.split.preheader
  %i.v = load i8, ptr %.091.ph.ph174, align 1, !tbaa !25
  switch i8 %i.v, label %.split122.us.loopexit [
    i8 0, label %.loopexit102.split.us.loopexit
    i8 -1, label %.outer.outer.jt5
  ]

.split.us:                                        ; preds = %.outer.split.us.jt5, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader
  %.091.ph167226 = phi ptr [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %i.bg, %.outer.split.us.jt5 ] ; 3 uses
  %.088.ph168225 = phi i32 [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.189.jt5, %.outer.split.us.jt5 ] ; 4 uses
  %i.w = load i8, ptr %.091.ph167226, align 1, !tbaa !25
  %i.x = zext nneg i32 %.088.ph168225 to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %i.aa = icmp eq i8 %i.w, %i.z
  br i1 %i.aa, label %bb.c, label %bb.f

.split122.us.loopexit:                            ; preds = %.outer.split.us.split.preheader, %bb.b
  br label %.split122.us

.split122.us:                                     ; preds = %.split122.us.loopexit, %.outer.split.us.jt8
  %.091.ph167229 = phi ptr [ %.091.ph167.jt8, %.outer.split.us.jt8 ], [ %.091.ph.ph174, %.split122.us.loopexit ]
  %.0.ph.ph176224 = phi i32 [ %.0.ph.ph176222, %.outer.split.us.jt8 ], [ 0, %.split122.us.loopexit ]
  store ptr %.091.ph167229, ptr %i.c, align 8, !tbaa !8
  br i1 %i.m, label %bb.h, label %bb.i

.split125.us:                                     ; preds = %.outer.split.us.split.preheader, %.outer.split.us.jt9
  %.091.ph167227 = phi ptr [ %.192.jt9, %.outer.split.us.jt9 ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ]
  %.0.ph.ph176221 = phi i32 [ %.1.jt9, %.outer.split.us.jt9 ], [ 0, %.outer.split.us.split.preheader ]
  store ptr %.091.ph167227, ptr %i.c, align 8, !tbaa !8
  br i1 %i.m, label %bb.k, label %bb.l

.loopexit102.split.us.loopexit:                   ; preds = %bb.b
  br label %.outer.outer.jt5

bb.c:                                             ; preds = %.split.us
  %i.ab = add nuw nsw i32 %.088.ph168225, 1       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.091.ph167226, i64 1 ; 5 uses
  switch i32 %i.ab, label %.outer.outer [
    i32 4, label %bb.d
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32
  br label %.outer.outer.jt8

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  br label %.outer.outer.jt9

bb.f:                                             ; preds = %.split.us
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !8   ; 4 uses
  %i.ao = ptrtoint ptr %.091.ph167226 to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = and i32 %.088.ph168225, 3               ; 2 uses
  %i.at = icmp eq i32 %i.as, %i.ar
  br i1 %i.at, label %.outer, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load i8, ptr %i.l, align 2, !tbaa !52
  %i.av = and i32 %.088.ph168225, 4
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.aw ; 2 uses
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !8
  %i.ay = sub nsw i32 %i.as, %i.ar
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.az
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !17
  store i8 0, ptr %i.l, align 2, !tbaa !52
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !17
  store i8 %i.au, ptr %i.l, align 2, !tbaa !52
  br label %.outer

.outer:                                           ; preds = %bb.f, %bb.g
  %i.bb = icmp ult ptr %i.an, %i.f
  br i1 %i.bb, label %.outer.split.us.jt8, label %.critedge

bb.h:                                             ; preds = %.split122.us
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.j

bb.i:                                             ; preds = %.split122.us
  tail call void @_ZL44T_UConverter_toUnicode_UTF32_BE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !8
  br label %.outer.outer.jt8

bb.k:                                             ; preds = %.split125.us
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.l:                                             ; preds = %.split125.us
  tail call void @_ZL44T_UConverter_toUnicode_UTF32_LE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !8
  br label %.outer.outer.jt9

.outer.outer:                                     ; preds = %.outer.split.us.split.preheader, %bb.c
  %.192 = phi ptr [ %i.ac, %bb.c ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ] ; 3 uses
  %.2 = phi i32 [ %i.ab, %bb.c ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ] ; 2 uses
  %i.be = icmp ult ptr %.192, %i.f
  br i1 %i.be, label %.outer.split.us, label %.critedge, !llvm.loop !53

.outer.outer.jt8:                                 ; preds = %bb.j, %bb.d
  %.192.jt8 = phi ptr [ %i.ac, %bb.d ], [ %i.bc, %bb.j ] ; 3 uses
  %.1.jt8 = phi i32 [ %i.ah, %bb.d ], [ %.0.ph.ph176224, %bb.j ] ; 2 uses
  %i.bf = icmp ult ptr %.192.jt8, %i.f
  br i1 %i.bf, label %.outer.split.us.jt8, label %.critedge, !llvm.loop !53

.outer.outer.jt5:                                 ; preds = %.loopexit102.split.us.loopexit, %bb.b
  %.189.jt5 = phi i32 [ 1, %.loopexit102.split.us.loopexit ], [ 5, %bb.b ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.091.ph.ph174, i64 1 ; 4 uses
  %i.bh = icmp ult ptr %i.bg, %i.f
  br i1 %i.bh, label %.outer.split.us.jt5, label %.critedge, !llvm.loop !53

.outer.outer.jt9:                                 ; preds = %bb.e, %bb.m
  %.192.jt9 = phi ptr [ %i.bd, %bb.m ], [ %i.ac, %bb.e ] ; 4 uses
  %.1.jt9 = phi i32 [ %.0.ph.ph176221, %bb.m ], [ %i.am, %bb.e ] ; 3 uses
  %i.bi = icmp ult ptr %.192.jt9, %i.f
  br i1 %i.bi, label %.outer.split.us.jt9, label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %.outer.outer, %.outer.outer.jt5, %.outer.split.us, %.outer.split.us.jt5, %.outer.outer.jt9, %.outer.outer.jt8, %.outer, %.outer.split.us.jt9, %.outer.split.us.jt8
  %.us-phi = phi i32 [ %.1.jt9, %.outer.outer.jt9 ], [ 0, %.outer ], [ %.0.ph.ph176222, %.outer.split.us.jt8 ], [ %.1.jt8, %.outer.outer.jt8 ], [ %.1.jt9, %.outer.split.us.jt9 ], [ 0, %.outer.split.us.jt5 ], [ 0, %.outer.split.us ], [ 0, %.outer.outer.jt5 ], [ 0, %.outer.outer ] ; 3 uses
  %.us-phi116 = phi ptr [ %.192.jt9, %.outer.outer.jt9 ], [ %i.an, %.outer ], [ %.091.ph167.jt8, %.outer.split.us.jt8 ], [ %.192.jt8, %.outer.outer.jt8 ], [ %.192.jt9, %.outer.split.us.jt9 ], [ %.192, %.outer.outer ], [ %i.bg, %.outer.outer.jt5 ], [ %.091.ph.ph174, %.outer.split.us ], [ %i.bg, %.outer.split.us.jt5 ] ; 4 uses
  %.us-phi117 = phi i32 [ 9, %.outer.outer.jt9 ], [ 8, %.outer ], [ 8, %.outer.split.us.jt8 ], [ 8, %.outer.outer.jt8 ], [ 9, %.outer.split.us.jt9 ], [ %.2, %.outer.outer ], [ %.189.jt5, %.outer.outer.jt5 ], [ %.088.ph.ph175, %.outer.split.us ], [ %.189.jt5, %.outer.split.us.jt5 ] ; 4 uses
  %i.bj = icmp ne ptr %i.h, null
  %i.bk = icmp ne i32 %.us-phi, 0
  %or.cond = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.critedge
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !33  ; 3 uses
  %i.bm = icmp ult ptr %i.h, %i.bl
  br i1 %i.bm, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.bn = ptrtoaddr ptr %i.bl to i64
  %i.bo = ptrtoaddr ptr %i.h to i64               ; 2 uses
  %2 = add i64 %i.bo, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %2)
  %i.bp = xor i64 %i.bo, -1
  %i.bq = add i64 %3, %i.bp                       ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 28
  br i1 %min.iters.check, label %.lr.ph.preheader259, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.us-phi, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !34
  %wide.load258 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !34
  %i.bx = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.by = add nsw <4 x i32> %wide.load258, %broadcast.splat
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !tbaa !34
  store <4 x i32> %i.by, ptr %i.bw, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader259

.lr.ph.preheader259:                              ; preds = %.lr.ph.preheader, %middle.block
  %.090180.ph = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader259, %.lr.ph
  %.090180 = phi ptr [ %i.ca, %.lr.ph ], [ %.090180.ph, %.lr.ph.preheader259 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.090180, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.090180, align 4, !tbaa !34
  %i.cc = add nsw i32 %i.cb, %.us-phi
  store i32 %i.cc, ptr %.090180, align 4, !tbaa !34
  %i.cd = icmp ult ptr %i.ca, %i.bl
  br i1 %i.cd, label %.lr.ph, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a, %bb.n, %.critedge
  %.us-phi117235 = phi i32 [ %i.j, %bb.a ], [ %.us-phi117, %.critedge ], [ %.us-phi117, %bb.n ], [ %.us-phi117, %middle.block ], [ %.us-phi117, %.lr.ph ] ; 6 uses
  %.us-phi116234 = phi ptr [ %i.d, %bb.a ], [ %.us-phi116, %.critedge ], [ %.us-phi116, %bb.n ], [ %.us-phi116, %middle.block ], [ %.us-phi116, %.lr.ph ] ; 3 uses
  store ptr %.us-phi116234, ptr %i.c, align 8, !tbaa !8
  %i.ce = icmp eq ptr %.us-phi116234, %i.f
  br i1 %i.ce, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !52
  %.not100 = icmp eq i8 %i.cg, 0
  br i1 %.not100, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.us-phi117235, label %bb.s [
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
  %i.ch = and i32 %.us-phi117235, 4
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.ci ; 2 uses
  store ptr %i.cj, ptr %i.c, align 8, !tbaa !8
  %i.ck = and i32 %.us-phi117235, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  store ptr %i.cm, ptr %i.e, align 8, !tbaa !17
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  store ptr %.us-phi116234, ptr %i.c, align 8, !tbaa !8
  store ptr %i.f, ptr %i.e, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.o, %.loopexit
  %.3 = phi i32 [ 8, %bb.s ], [ %.us-phi117235, %bb.p ], [ 8, %bb.q ], [ 9, %bb.r ], [ %.us-phi117235, %bb.o ], [ %.us-phi117235, %.loopexit ]
  store i32 %.3, ptr %i.i, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 1114112) i32 @_ZL18_UTF32GetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  switch i32 %i.d, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit [
    i32 8, label %bb.b
    i32 9, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 10 uses
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
  store i8 %i.p, ptr %i.r, align 8, !tbaa !20
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.o
  store ptr %i.s, ptr %i.e, align 8, !tbaa !8
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
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !8
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
  store i8 4, ptr %i.ar, align 8, !tbaa !20
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8  ; 7 uses
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
  store i8 %i.bd, ptr %i.bf, align 8, !tbaa !20
  %i.bg = getelementptr inbounds i8, ptr %i.at, i64 %i.bc
  store ptr %i.bg, ptr %i.as, align 8, !tbaa !8
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.at, align 1            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !8
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
  store i8 4, ptr %i.bp, align 8, !tbaa !20
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split: ; preds = %bb.g, %bb.i, %bb.k, %bb.b, %bb.d, %bb.f
  %.sink.i7.sink = phi i32 [ 8, %bb.b ], [ 12, %bb.f ], [ 11, %bb.d ], [ 12, %bb.k ], [ 11, %bb.i ], [ 8, %bb.g ]
  store i32 %.sink.i7.sink, ptr %1, align 4, !tbaa !31
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split, %bb.j, %bb.e, %bb.a
  %.0 = phi i32 [ %i.bh, %bb.j ], [ -9, %bb.a ], [ %i.aj, %bb.e ], [ 65535, %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 16}
!9 = !{!"_ZTS23UConverterToUnicodeArgs", !10, i64 0, !6, i64 2, !11, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !14, i64 40, !15, i64 48}
!10 = !{!"short", !6, i64 0}
!11 = !{!"p1 _ZTS10UConverter", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 char16_t", !12, i64 0}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!9, !14, i64 32}
!17 = !{!9, !13, i64 24}
!18 = !{!9, !14, i64 40}
!19 = !{!9, !11, i64 8}
!20 = !{!21, !6, i64 64}
!21 = !{!"_ZTS10UConverter", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !22, i64 48, !5, i64 56, !6, i64 60, !6, i64 61, !6, i64 62, !6, i64 63, !6, i64 64, !6, i64 65, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93, !6, i64 94, !6, i64 95, !6, i64 96, !6, i64 104, !6, i64 136, !6, i64 140, !6, i64 144, !5, i64 208, !6, i64 212, !6, i64 250, !6, i64 281, !6, i64 282, !6, i64 283, !23, i64 284}
!22 = !{!"p1 _ZTS20UConverterSharedData", !12, i64 0}
!23 = !{!"_ZTS24UConverterCallbackReason", !6, i64 0}
!24 = !{!21, !5, i64 72}
!25 = !{!6, !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"char16_t", !6, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!21, !6, i64 93}
!31 = !{!32, !32, i64 0}
!32 = !{!"_ZTS10UErrorCode", !6, i64 0}
!33 = !{!9, !15, i64 48}
!34 = !{!5, !5, i64 0}
!35 = distinct !{!35, !29}
!36 = !{!37, !14, i64 16}
!37 = !{!"_ZTS25UConverterFromUnicodeArgs", !10, i64 0, !6, i64 2, !11, i64 8, !14, i64 16, !14, i64 24, !13, i64 32, !13, i64 40, !15, i64 48}
!38 = !{!37, !14, i64 24}
!39 = !{!37, !13, i64 40}
!40 = !{!37, !11, i64 8}
!41 = !{!21, !5, i64 80}
!42 = !{!37, !13, i64 32}
!43 = !{!21, !5, i64 84}
!44 = !{!37, !6, i64 2}
!45 = !{!21, !6, i64 91}
!46 = !{!37, !15, i64 48}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = !{!21, !5, i64 76}
!52 = !{!9, !6, i64 2}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29, !55, !56}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = distinct !{!57, !29, !56, !55}
end_hunk_0
