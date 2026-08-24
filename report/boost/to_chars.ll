Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/to_chars?download=true
inline.NumInlined: 709
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost8charconv6detail3ryuL22generic_to_chars_fixedENS2_20floating_decimal_128EPcli:bb.a
  switch i128 %.sroa.0.0.copyload, label %bb.f [
    i128 0, label %bb.l
    i128 1298074214633706907132624082305024, label %bb.d
    i128 6917529027641081856, label %bb.d
    i128 2305843009213693952, label %bb.d
  ]

.thread.i:                                        ; preds = %bb.b
  switch i128 %.sroa.0.0.copyload, label %bb.j [
    i128 0, label %bb.l
    i128 1298074214633706907132624082305024, label %bb.h
    i128 6917529027641081856, label %bb.h
    i128 2305843009213693952, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.f = icmp sgt i64 %2, 9
  br i1 %i.f, label %bb.e, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.e, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.f:                                             ; preds = %bb.c
  %i.g = icmp sgt i64 %2, 8
  br i1 %i.g, label %bb.g, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.g:                                             ; preds = %bb.f
  store i64 2982630251155054958, ptr %i.e, align 1
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.h:                                             ; preds = %.thread.i, %.thread.i, %.thread.i
  %i.h = icmp sgt i64 %2, 8
  br i1 %i.h, label %bb.i, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.j:                                             ; preds = %.thread.i
  %i.i = icmp sgt i64 %2, 2
  br i1 %i.i, label %bb.k, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.l:                                             ; preds = %.thread.i, %bb.c
  %.0234.i = phi ptr [ %1, %.thread.i ], [ %i.e, %bb.c ]
  %narrow.i = add nuw nsw i8 %.sroa.2111.0.copyload, 3 ; 2 uses
  %i.j = zext nneg i8 %narrow.i to i64
  %.not25.i = icmp slt i64 %2, %i.j
  br i1 %.not25.i, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0234.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.k = zext nneg i8 %narrow.i to i32
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.n:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !22, !range !27, !noundef !28 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.096 = phi ptr [ %i.o, %bb.o ], [ %1, %bb.n ]  ; 15 uses
  %i.p = load i128, ptr %0, align 16, !tbaa !11
  %i.q = getelementptr inbounds i8, ptr %.096, i64 %2
  %i.r = tail call { ptr, i32 } @_ZN5boost8charconv6detail24to_chars_128integer_implIooEENS0_15to_chars_resultEPcS4_T_(ptr noundef %.096, ptr noundef %i.q, i128 noundef %i.p) #14 ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = sub nsw i32 0, %i.t
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.r:                                             ; preds = %bb.p
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %.096 to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = trunc i64 %i.x to i32                    ; 9 uses
  %i.z = icmp eq i32 %i.b, 0
  br i1 %i.z, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.aa = icmp sgt i32 %3, 0
  br i1 %i.aa, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ab = add nsw i32 %i.y, 1                     ; 2 uses
  %sext109 = shl i64 %i.x, 32
  %i.ac = ashr exact i64 %sext109, 32
  %i.ad = getelementptr inbounds i8, ptr %.096, i64 %i.ac
  store i8 46, ptr %i.ad, align 1, !tbaa !25
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds i8, ptr %.096, i64 %i.ae
  %i.ag = zext nneg i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 48, i64 %i.ag, i1 false)
  %i.ah = add nsw i32 %i.ab, %3
  br label %.thread

bb.u:                                             ; preds = %bb.r
  %i.ai = icmp sgt i32 %i.b, 0
  br i1 %i.ai, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.aj = add nsw i32 %i.b, %i.y
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %2, %i.ak
  br i1 %i.al, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = zext nneg i32 %i.b to i64               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 48, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 46, ptr %i.an, align 1, !tbaa !25
  %i.ap = add nuw nsw i32 %i.b, 1
  %i.aq = add nsw i32 %i.ap, %i.y
  br label %bb.ae

bb.x:                                             ; preds = %bb.u
  %i.ar = sub nsw i32 0, %i.b                     ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.y
  br i1 %i.as, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.at = add nsw i32 %i.b, 1
  %i.au = add i32 %i.at, %i.y
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %2, %i.av
  br i1 %i.aw, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = and i64 %i.x, 4294967295                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.096, i64 %i.ax
  %i.az = sext i32 %i.b to i64                    ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = zext nneg i32 %i.ar to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %i.ba, i64 %i.bc, i1 false)
  %i.bd = add nsw i64 %i.az, 1
  %i.be = add nsw i64 %i.bd, %i.ax                ; 3 uses
  store i8 46, ptr %i.ba, align 1
  %i.bf = add nuw nsw i32 %i.y, 1                 ; 3 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = sub nsw i64 %i.bg, %i.be
  %i.bi = sext i32 %3 to i64
  %i.bj = icmp sgt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bk = icmp sgt i32 %3, 0
  %i.bl = trunc i64 %i.be to i32
  %.089.v = select i1 %i.bk, i32 %3, i32 -1
  %.089 = add nsw i32 %.089.v, %i.bl              ; 5 uses
  %i.bm = sext i32 %.089 to i64
  %i.bn = getelementptr inbounds i8, ptr %.096, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25
  store i8 0, ptr %i.bn, align 1, !tbaa !25
  %i.bp = icmp sgt i8 %i.bo, 52
  br i1 %i.bp, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.aa
  %.088116 = add nsw i32 %.089, -1
  %i.bq = sext i32 %.088116 to i64                ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.096, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !25  ; 2 uses
  %.not118 = icmp eq i8 %i.bs, 46
  br i1 %.not118, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bq, %.preheader ]
  %i.bt = phi i8 [ %i.by, %.lr.ph ], [ %i.bs, %.preheader ] ; 2 uses
  %i.bu = phi ptr [ %i.bx, %.lr.ph ], [ %i.br, %.preheader ]
  %i.bv = icmp sgt i8 %i.bt, 56                   ; 2 uses
  %i.bw = add i8 %i.bt, 1
  %storemerge = select i1 %i.bv, i8 48, i8 %i.bw
  store i8 %storemerge, ptr %i.bu, align 1, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.096, i64 %indvars.iv.next ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !25  ; 2 uses
  %i.bz = icmp ne i8 %i.by, 46
  %i.ca = and i1 %i.bv, %i.bz
  br i1 %i.ca, label %.lr.ph, label %.thread, !llvm.loop !34

bb.ab:                                            ; preds = %bb.z
  %i.cb = trunc i64 %i.be to i32
  %.neg115 = xor i32 %i.y, -1
  %.neg = add i32 %3, %.neg115
  %i.cc = add i32 %.neg, %i.cb
  %i.cd = add nsw i32 %i.bf, %i.b
  %4 = sext i32 %i.cd to i64
  %i.ce = getelementptr i8, ptr %.096, i64 %4
  %i.cf = getelementptr i8, ptr %i.ce, i64 1
  br label %bb.ae

bb.ac:                                            ; preds = %bb.x
  %i.cg = sub i32 2, %i.b                         ; 3 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = icmp slt i64 %2, %i.ch
  br i1 %i.ci, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = sext i32 %i.b to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.096, i64 %i.ck
  %sext = shl i64 %i.x, 32
  %i.cm = ashr exact i64 %sext, 32                ; 2 uses
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %.096, i64 %i.cm, i1 false)
  store i16 11824, ptr %.096, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.096, i64 2
  %i.cr = add i32 %i.b, %i.y
  %i.cs = sub i32 0, %i.cr
  %i.ct = sext i32 %i.cs to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 48, i64 %i.ct, i1 false)
  %i.cu = add nsw i32 %i.b, %3
  %i.cv = sext i32 %i.cg to i64
  %i.cw = getelementptr inbounds i8, ptr %.096, i64 %i.cv
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.w, %bb.ad
  %.298 = phi ptr [ %i.cw, %bb.ad ], [ %i.cf, %bb.ab ], [ %i.ao, %bb.w ]
  %.195 = phi i32 [ %i.cu, %bb.ad ], [ %i.cc, %bb.ab ], [ %3, %bb.w ] ; 3 uses
  %.2 = phi i32 [ %i.cg, %bb.ad ], [ %i.bf, %bb.ab ], [ %i.aq, %bb.w ] ; 2 uses
  %i.cx = icmp sgt i32 %.195, 0
  br i1 %i.cx, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.cy = add nsw i32 %.2, %.195                  ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %2, %i.cz
  br i1 %i.da, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = zext nneg i32 %.195 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.298, i8 48, i64 %i.db, i1 false)
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.preheader, %bb.aa, %bb.s, %bb.t, %bb.ag, %bb.ae
  %.3 = phi i32 [ %i.cy, %bb.ag ], [ %.2, %bb.ae ], [ %.089, %bb.aa ], [ %i.ah, %bb.t ], [ %i.y, %bb.s ], [ %.089, %.preheader ], [ %.089, %.lr.ph ]
  %i.dc = zext nneg i8 %i.m to i32
  %i.dd = add nsw i32 %.3, %i.dc
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.q, %bb.af, %bb.ac, %bb.y, %bb.v, %.thread
  %.293 = phi i32 [ -34, %bb.af ], [ %i.u, %bb.q ], [ -75, %bb.ac ], [ %i.dd, %.thread ], [ -34, %bb.y ], [ -75, %bb.v ], [ 10, %bb.e ], [ -1, %bb.j ], [ 9, %bb.g ], [ -1, %bb.d ], [ 9, %bb.i ], [ -1, %bb.f ], [ 3, %bb.k ], [ -1, %bb.h ], [ %i.k, %bb.m ], [ -1, %bb.l ]
  ret i32 %.293
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail20to_chars_printf_implIeEENS0_15to_chars_resultEPcS4_T_NS0_12chars_formatEi(ptr noundef %0, ptr noundef %1, x86_fp80 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [14 x i8], align 1                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.b, i8 0, i64 13, i1 false)
  store i8 37, ptr %i.a, align 1
  %i.c = icmp ne i32 %4, -1
  %i.d = icmp ne i32 %3, 2
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 46, ptr %i.e, align 1, !tbaa !25
  %i.f = icmp ult i32 %4, 10
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = trunc nuw nsw i32 %4 to i8
  %i.i = or disjoint i8 %i.h, 48
  store i8 %i.i, ptr %i.g, align 1, !tbaa !25
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %4, 100
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = shl nuw nsw i32 %4, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2
  store i16 %i.o, ptr %i.k, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.q = call { ptr, i32 } @_ZN5boost8charconv6detail21to_chars_integer_implIiEENS0_15to_chars_resultEPcS4_T_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, i32 noundef %4) #14 ; 0 uses
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %3, 2
  br i1 %i.s, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i16 12334, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 76, ptr %i.u, align 1, !tbaa !25
  br label %.sink.split

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.g
  %.1 = phi i64 [ 1, %bb.g ], [ %i.r, %bb.f ], [ 3, %bb.c ], [ 4, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1
  store i8 76, ptr %i.v, align 1, !tbaa !25
  %i.w = add i64 %.1, 1                           ; 3 uses
  switch i32 %3, label %bb.k [
    i32 3, label %.sink.split
    i32 1, label %bb.i
    i32 4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i, %.thread, %bb.j
  %.sink39 = phi i64 [ %i.w, %bb.j ], [ 4, %.thread ], [ %i.w, %bb.i ], [ %i.w, %bb.h ]
  %.sink = phi i8 [ 97, %bb.j ], [ 102, %.thread ], [ 101, %bb.i ], [ 103, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink39
  store i8 %.sink, ptr %i.x, align 1, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.h
  %i.y = ptrtoint ptr %1 to i64
  %i.z = ptrtoint ptr %0 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %i.aa, ptr noundef nonnull %i.a, x86_fp80 noundef %2) #14 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call ptr @__errno_location() #16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.033.0 = phi ptr [ %1, %bb.l ], [ %i.ag, %bb.m ]
  %.sroa.3.0 = phi i32 [ %i.ae, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.033.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden { ptr, i32 } @_ZN5boost8charconv6detail15to_chars_detail22dragon_box_print_charsIfNS1_22dragonbox_float_traitsIfEEEENS0_15to_chars_resultENT0_12carrier_uintEiPcS9_NS0_12chars_formatE(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5.i.i = icmp eq i32 %1, 0
  br i1 %.not5.i.i, label %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.b, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %.046.i.i = phi i32 [ %i.a, %.lr.ph.i.i ], [ %1, %bb.a ] ; 2 uses
  %i.a = sdiv i32 %.046.i.i, 10
  %i.b = add nuw nsw i32 %.07.i.i, 1
  %.046.off.i.i = add i32 %.046.i.i, 9
  %.not.i.i = icmp ult i32 %.046.off.i.i, 19
  br i1 %.not.i.i, label %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !32

_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit.loopexit: ; preds = %.lr.ph.i.i
  %i.c = add nuw nsw i32 %.07.i.i, 13
  %i.d = zext nneg i32 %i.c to i64
  br label %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit

_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit: ; preds = %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit.loopexit, %bb.a
  %.0.lcssa.i.i = phi i64 [ 12, %bb.a ], [ %i.d, %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit.loopexit ]
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, %.0.lcssa.i.i
  br i1 %i.h, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit
  %i.i = icmp ugt i32 %0, 99999999
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
