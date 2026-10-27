Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv?download=true
inline.NumInlined: 68
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ucnv_convertEx_78:bb.a
  br i1 %i.ea, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eb = icmp slt i32 %i.dz, 1
  br i1 %i.eb, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ec = load i8, ptr %i.cs, align 8, !tbaa !62
  %i.ed = icmp sgt i8 %i.ec, 0
  br i1 %i.ed, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store ptr %.0163.sroa.phi259, ptr %.0166, align 8, !tbaa !50
  store ptr %.0163.sroa.phi259, ptr %.0164, align 8, !tbaa !50
  br label %.backedge.backedge

bb.bd:                                            ; preds = %bb.ba
  %i.ee = icmp eq i32 %i.dz, -127
  br i1 %i.ee, label %.sink.split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.ct, label %.critedge.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ef = load i8, ptr %i.cs, align 8, !tbaa !62
  %i.eg = icmp sgt i8 %i.ef, 0
  br i1 %i.eg, label %.sink.split, label %.critedge.thread228

.critedge.thread228:                              ; preds = %bb.bf
  call fastcc void @_ZL6_resetP10UConverter21UConverterResetChoicea(ptr noundef nonnull %1, i32 noundef 1, i8 noundef signext 0)
  call fastcc void @_ZL6_resetP10UConverter21UConverterResetChoicea(ptr noundef nonnull %0, i32 noundef 2, i8 noundef signext 0)
  %i.eh = load ptr, ptr %i.ck, align 8, !tbaa !82
  store ptr %i.eh, ptr %4, align 8, !tbaa !49
  %i.ei = load ptr, ptr %i.cf, align 8, !tbaa !74 ; 2 uses
  store ptr %i.ei, ptr %2, align 8, !tbaa !49
  %.pre234 = load i32, ptr %12, align 4, !tbaa !9
  br label %bb.bp

.sink.split:                                      ; preds = %bb.bf, %bb.bd
  %.sink = phi i32 [ 0, %bb.bd ], [ 11, %bb.bf ]
  store i32 %.sink, ptr %12, align 4, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %bb.bb, %bb.aw, %bb.av, %bb.au
  store ptr %.0163, ptr %i.cv, align 8, !tbaa !84
  call fastcc void @_ZL22_toUnicodeWithCallbackP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %13, ptr noundef %12)
  %i.ej = load ptr, ptr %i.cv, align 8, !tbaa !84 ; 2 uses
  store ptr %i.ej, ptr %.0166, align 8, !tbaa !50
  %i.ek = load i32, ptr %12, align 4, !tbaa !9    ; 3 uses
  %i.el = icmp eq i32 %i.ek, 15
  br i1 %i.el, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.em = icmp slt i32 %i.ek, 1
  br i1 %i.em, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ct, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.en = icmp eq ptr %i.ej, %.0163
  br i1 %i.en, label %.critedge.thread, label %.backedge.backedge

bb.bk:                                            ; preds = %bb.bg
  store i32 0, ptr %12, align 4, !tbaa !9
  %i.eo = load ptr, ptr %i.ck, align 8
  %i.ep = icmp ne ptr %i.eo, %.0162
  %or.cond220.not = select i1 %i.ct, i1 true, i1 %i.ep
  br i1 %or.cond220.not, label %.backedge.backedge, label %bb.bm

.backedge.backedge:                               ; preds = %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bj, %bb.ao, %bb.ap, %bb.bc
  br label %.backedge, !llvm.loop !125

bb.bl:                                            ; preds = %bb.bi
  %.old = load ptr, ptr %i.ck, align 8, !tbaa !82
  %.old219 = icmp eq ptr %.old, %.0162
  br i1 %.old219, label %bb.bm, label %.backedge.backedge

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.eq = load i8, ptr %i.cr, align 2, !tbaa !65
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.bn, label %.backedge.backedge

bb.bn:                                            ; preds = %bb.bm
  %i.es = load i8, ptr %i.cq, align 1, !tbaa !63
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.bo, label %.backedge.backedge

bb.bo:                                            ; preds = %bb.bn
  store i8 1, ptr %i.cc, align 2, !tbaa !70
  br label %.backedge.backedge

.critedge.thread:                                 ; preds = %bb.be, %bb.bj
  %i.eu = load ptr, ptr %i.ck, align 8, !tbaa !82
  store ptr %i.eu, ptr %4, align 8, !tbaa !49
  %i.ev = load ptr, ptr %i.cf, align 8, !tbaa !74
  store ptr %i.ev, ptr %2, align 8, !tbaa !49
  br label %bb.bu

.critedge:                                        ; preds = %bb.bh, %bb.az, %bb.at, %bb.am
  %i.ew = phi i32 [ %i.df, %bb.am ], [ %i.ek, %bb.bh ], [ 15, %bb.az ], [ %i.di, %bb.at ]
  %i.ex = load ptr, ptr %i.ck, align 8, !tbaa !82
  store ptr %i.ex, ptr %4, align 8, !tbaa !49
  %i.ey = load ptr, ptr %i.cf, align 8, !tbaa !74 ; 2 uses
  store ptr %i.ey, ptr %2, align 8, !tbaa !49
  br i1 %i.ct, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %.critedge.thread228, %.critedge
  %i.ez = phi i32 [ %.pre234, %.critedge.thread228 ], [ %i.ew, %.critedge ]
  %i.fa = phi ptr [ %i.ei, %.critedge.thread228 ], [ %i.ey, %.critedge ] ; 2 uses
  %i.fb = icmp sgt i32 %i.ez, 0
  br i1 %i.fb, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not204 = icmp eq ptr %i.fa, %3
  br i1 %.not204, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i8 0, ptr %i.fa, align 1, !tbaa !10
  %i.fc = load i32, ptr %12, align 4, !tbaa !9
  %i.fd = icmp eq i32 %i.fc, -124
  br i1 %i.fd, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %12, align 4, !tbaa !9
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  store i32 -124, ptr %12, align 4, !tbaa !9
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge.thread, %.critedge, %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.ad, %bb.y, %bb.a, %bb.b, %bb.s, %bb.n, %bb.k, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define i32 @ucnv_convert_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.UConverter, align 8         ; 3 uses
  %8 = alloca %struct.UConverter, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %6, align 4, !tbaa !9
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %4, null
  %i.e = icmp slt i32 %5, -1
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %3, 0
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %3, 0
  %i.h = icmp eq ptr %2, null
  %or.cond5 = and i1 %i.h, %i.g
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %6, align 4, !tbaa !9
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %5, 0
  br i1 %i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = icmp slt i32 %5, 0
  br i1 %i.j, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = load i8, ptr %4, align 1, !tbaa !10
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.m = tail call i32 @u_terminateChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %6)
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.n = call ptr @ucnv_createConverter_78(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %6) ; 3 uses
  %i.o = load i32, ptr %6, align 4, !tbaa !9
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.q = call ptr @ucnv_createConverter_78(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %6) ; 2 uses
  %i.r = load i32, ptr %6, align 4, !tbaa !9
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @ucnv_close_78(ptr noundef %i.n)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %9 = call fastcc noundef i32 @_ZL20ucnv_internalConvertP10UConverterS0_PciPKciP10UErrorCode(ptr noundef %i.q, ptr noundef %i.n, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  call void @ucnv_close_78(ptr noundef %i.n)
  call void @ucnv_close_78(ptr noundef %i.q)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.a, %bb.b, %bb.m, %bb.l, %bb.i, %bb.e
  %.0 = phi i32 [ %9, %bb.m ], [ 0, %bb.e ], [ %i.m, %bb.i ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL20ucnv_internalConvertP10UConverterS0_PciPKciP10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, -2147483648) %3, ptr noundef nonnull %4, i32 noundef range(i32 -1, -2147483648) %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca [1024 x i16], align 16            ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca [1024 x i8], align 16             ; 5 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.g = icmp slt i32 %5, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %strlen.pn = phi i64 [ %strlen, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.032 = getelementptr inbounds i8, ptr %4, i64 %strlen.pn ; 2 uses
  %i.i = icmp eq i64 %strlen.pn, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @u_terminateChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %6)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  store ptr %i.b, ptr %i.d, align 8, !tbaa !50
  store ptr %i.b, ptr %i.c, align 8, !tbaa !50
  store ptr %2, ptr %i.e, align 8, !tbaa !49
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2048
  call void @ucnv_convertEx_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %.032, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.m, i8 noundef signext 0, i8 noundef signext 1, ptr noundef nonnull %6)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %2 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = load i32, ptr %6, align 4, !tbaa !9
  %i.t = icmp eq i32 %i.s, 15
  br i1 %i.t, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.f, %bb.g
  %.038 = phi i32 [ %i.r, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 1024
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2048
  %i.w = ptrtoint ptr %i.f to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread
  %.1 = phi i32 [ %.038, %.thread ], [ %i.ab, %bb.h ]
  store i32 0, ptr %6, align 4, !tbaa !9
  store ptr %i.f, ptr %i.e, align 8, !tbaa !49
  call void @ucnv_convertEx_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %.032, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.v, i8 noundef signext 0, i8 noundef signext 1, ptr noundef nonnull %6)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.w
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add nsw i32 %.1, %i.aa                  ; 2 uses
  %i.ac = load i32, ptr %6, align 4, !tbaa !9
  %i.ad = icmp eq i32 %i.ac, 15
  br i1 %i.ad, label %bb.h, label %bb.i, !llvm.loop !128

bb.i:                                             ; preds = %bb.h
  %i.ae = call i32 @u_terminateChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %i.ab, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.e
  %.033 = phi i32 [ %i.j, %bb.e ], [ %i.ae, %bb.i ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.033
}

; Function Attrs: mustprogress uwtable
define noundef i32 @ucnv_toAlgorithmic_78(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL23ucnv_convertAlgorithmica14UConverterTypeP10UConverterPciPKciP10UErrorCode(i8 noundef signext 1, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL23ucnv_convertAlgorithmica14UConverterTypeP10UConverterPciPKciP10UErrorCode(i8 noundef signext range(i8 0, 2) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.UConverter, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.a = icmp eq ptr %7, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %7, align 4, !tbaa !9
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  %i.e = icmp eq ptr %5, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %6, -1
  %or.cond3 = or i1 %or.cond, %i.f
  %i.g = icmp slt i32 %4, 0
  %or.cond5 = or i1 %i.g, %or.cond3
  br i1 %or.cond5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i32 %4, 0
  %i.i = icmp eq ptr %3, null
  %or.cond7 = and i1 %i.i, %i.h
  br i1 %or.cond7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %7, align 4, !tbaa !9
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %6, 0
  br i1 %i.j, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp slt i32 %6, 0
  br i1 %i.k, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.l = load i8, ptr %5, align 1, !tbaa !10
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.n = tail call i32 @u_terminateChars_78(ptr noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %7)
  br label %bb.o

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.o = call ptr @ucnv_createAlgorithmicConverter_78(ptr noundef nonnull %8, i32 noundef %1, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull %7) ; 3 uses
  %i.p = load i32, ptr %7, align 4, !tbaa !9
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.not49 = icmp eq i8 %0, 0
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @ucnv_resetToUnicode_78(ptr noundef nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @ucnv_resetFromUnicode_78(ptr noundef nonnull %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.041 = phi ptr [ %i.o, %bb.l ], [ %2, %bb.m ]
  %.0 = phi ptr [ %2, %bb.l ], [ %i.o, %bb.m ]
  %i.r = call fastcc noundef i32 @_ZL20ucnv_internalConvertP10UConverterS0_PciPKciP10UErrorCode(ptr noundef %.041, ptr noundef %.0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  call void @ucnv_close_78(ptr noundef %i.o)
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.a, %bb.b, %bb.n, %bb.i, %bb.e
  %.042 = phi i32 [ %i.r, %bb.n ], [ 0, %bb.e ], [ %i.n, %bb.i ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i32 %.042
}

; Function Attrs: mustprogress uwtable
define noundef i32 @ucnv_fromAlgorithmic_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %1, 33
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %6, align 4, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef i32 @_ZL23ucnv_convertAlgorithmica14UConverterTypeP10UConverterPciPKciP10UErrorCode(i8 noundef signext 0, i32 noundef %1, ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
