inline.NumInlined: 63
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9NCompress5NLzma8CDecoder22SetOutStreamSizeResumeEPKy:bb.a
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 1, !tbaa !31
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.d, ptr %i.e, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @LzmaDec_Init(ptr noundef nonnull %i.h)
  ret void
}

declare void @LzmaDec_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NLzma8CDecoder16SetOutStreamSizeEPKy(ptr noundef nonnull align 8 dereferenceable(273) initializes((72, 80), (217, 218), (232, 248), (264, 272)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.b, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.d = icmp ne ptr %1, null                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 1, !tbaa !31
  br i1 %i.d, label %bb.b, label %_ZN9NCompress5NLzma8CDecoder22SetOutStreamSizeResumeEPKy.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.g, ptr %i.h, align 8, !tbaa !45
  br label %_ZN9NCompress5NLzma8CDecoder22SetOutStreamSizeResumeEPKy.exit

_ZN9NCompress5NLzma8CDecoder22SetOutStreamSizeResumeEPKy.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @LzmaDec_Init(ptr noundef nonnull %i.k)
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn32_N9NCompress5NLzma8CDecoder16SetOutStreamSizeEPKy(ptr noundef initializes((40, 48), (185, 186), (200, 216), (232, 240)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.b, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.d = icmp ne ptr %1, null                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 1, !tbaa !31
  br i1 %i.d, label %bb.b, label %_ZN9NCompress5NLzma8CDecoder16SetOutStreamSizeEPKy.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.g, ptr %i.h, align 8, !tbaa !45
  br label %_ZN9NCompress5NLzma8CDecoder16SetOutStreamSizeEPKy.exit

_ZN9NCompress5NLzma8CDecoder16SetOutStreamSizeEPKy.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @LzmaDec_Init(ptr noundef nonnull %i.k)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NLzma8CDecoder8CodeSpecEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i8, ptr %i.g, align 8, !range !48
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond72 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond72, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ult i64 %i.q, %i.t
  %i.v = add i64 %i.p, %i.t
  %i.w = select i1 %i.u, i64 %i.n, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 217 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %.not68 = icmp eq ptr %3, null
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.045 = phi i64 [ %i.w, %bb.b ], [ %.146, %.backedge.backedge ] ; 3 uses
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !37
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !36
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.backedge
  store i32 0, ptr %i.y, align 4, !tbaa !36
  store i32 0, ptr %i.x, align 8, !tbaa !37
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.ak = load i32, ptr %i.z, align 8, !tbaa !43
  %i.al = load ptr, ptr %1, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %i.y) ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.backedge
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !50  ; 4 uses
  %i.aq = sub i64 %.045, %i.ap                    ; 3 uses
  %i.ar = load i8, ptr %i.aa, align 1, !tbaa !31, !range !48, !noundef !51
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %.not65 = icmp ugt i64 %i.av, %i.aq
  br i1 %.not65, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load i8, ptr %i.ad, align 8, !tbaa !34, !range !48, !noundef !51
  %spec.select = zext nneg i8 %i.aw to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.156 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %spec.select, %bb.f ]
  %.154 = phi i64 [ %i.aq, %bb.d ], [ %i.aq, %bb.e ], [ %i.av, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !36
  %i.ay = load i32, ptr %i.x, align 8, !tbaa !37  ; 2 uses
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = zext i32 %i.az to i64
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bb = add i64 %.154, %i.ap
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.bd = zext i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %i.l, i64 noundef %i.bb, ptr noundef %i.be, ptr noundef nonnull %i.a, i32 noundef %.156, ptr noundef nonnull %i.b)
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !52  ; 3 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = load i32, ptr %i.x, align 8, !tbaa !37
  %i.bj = add i32 %i.bi, %i.bh
  store i32 %i.bj, ptr %i.x, align 8, !tbaa !37
  %i.bk = load i64, ptr %i.j, align 8, !tbaa !35
  %i.bl = add i64 %i.bk, %i.bg
  store i64 %i.bl, ptr %i.j, align 8, !tbaa !35
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !50  ; 4 uses
  %i.bn = sub i64 %i.bm, %i.ap
  %i.bo = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  store i64 %i.bp, ptr %i.ac, align 8, !tbaa !46
  %i.bq = icmp eq i64 %i.bg, 0
  %i.br = icmp eq i64 %i.bm, %i.ap
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false     ; 2 uses
  %i.bt = load i8, ptr %i.aa, align 1, !tbaa !31, !range !48, !noundef !51
  %i.bu = trunc nuw i8 %i.bt to i1
  %4 = load i64, ptr %i.ab, align 8
  %5 = icmp uge i64 %i.bp, %4
  %6 = select i1 %i.bu, i1 %5, i1 false           ; 2 uses
  %.not66 = icmp eq i32 %i.bf, 0                  ; 2 uses
  br i1 %.not66, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = icmp eq i64 %i.bm, %.045
  %or.cond = select i1 %i.bv, i1 true, i1 %i.bs
  %or.cond8 = select i1 %or.cond, i1 true, i1 %6
  br i1 %or.cond8, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.bx = load i64, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = sub i64 %i.bm, %i.bx
  %i.ca = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.by, i64 noundef %i.bz) ; 2 uses
  %i.cb = load i64, ptr %i.o, align 8, !tbaa !50  ; 3 uses
  store i64 %i.cb, ptr %i.af, align 8, !tbaa !47
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.o, align 8, !tbaa !50
  store i64 0, ptr %i.af, align 8, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ce = phi i64 [ 0, %bb.j ], [ %i.cb, %bb.i ]  ; 2 uses
  %i.cf = sub i64 %i.cc, %i.ce
  %i.cg = load i32, ptr %i.r, align 8, !tbaa !33
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp ult i64 %i.cf, %i.ch
  %i.cj = add i64 %i.ce, %i.ch
  %i.ck = select i1 %i.ci, i64 %i.cc, i64 %i.cj
  br i1 %.not66, label %bb.l, label %.thread79

bb.l:                                             ; preds = %bb.k
  %.not67 = icmp ne i32 %i.ca, 0
  %brmerge = select i1 %.not67, i1 true, i1 %6    ; 2 uses
  %.not73 = xor i1 %i.bs, true
  %brmerge74 = select i1 %brmerge, i1 true, i1 %.not73
  br i1 %brmerge74, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %i.b, align 4, !tbaa !54
  %i.cm = icmp ne i32 %i.cl, 1
  %i.cn = zext i1 %i.cm to i32
  br label %.thread79

bb.n:                                             ; preds = %bb.l
  br i1 %brmerge, label %.thread79, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.146 = phi i64 [ %i.ck, %bb.n ], [ %.045, %bb.h ]
  br i1 %.not68, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.co = load i64, ptr %i.j, align 8, !tbaa !35
  %i.cp = sub i64 %i.co, %i.k
  store i64 %i.cp, ptr %i.c, align 8, !tbaa !44
  %i.cq = load ptr, ptr %3, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ac) ; 2 uses
  %.not69 = icmp eq i32 %i.ct, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not69, label %.backedge.backedge, label %.loopexit

.backedge.backedge:                               ; preds = %bb.p, %bb.q
  br label %.backedge, !llvm.loop !56

.thread79:                                        ; preds = %bb.n, %bb.k, %bb.m
  %.8.ph = phi i32 [ %i.cn, %bb.m ], [ 1, %bb.k ], [ %i.ca, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.backedge.backedge

.loopexit:                                        ; preds = %bb.p, %bb.c, %.thread79, %bb.a
  %.10 = phi i32 [ 1, %bb.a ], [ %.8.ph, %.thread79 ], [ %i.ao, %bb.c ], [ %i.ct, %bb.p ]
  ret i32 %.10
}

declare i32 @LzmaDec_DecodeToDic(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NLzma8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef %4) ; 0 uses
  %i.h = tail call noundef i32 @_ZN9NCompress5NLzma8CDecoder8CodeSpecEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef %1, ptr noundef %2, ptr noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ -2147024809, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NLzma8CDecoder11SetInStreamEP19ISequentialInStream(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(273) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !58 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !58 ; 0 uses
  br label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !39
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn24_N9NCompress5NLzma8CDecoder11SetInStreamEP19ISequentialInStream(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !59 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not6.i.i = icmp eq ptr %i.f, null
  br i1 %.not6.i.i, label %_ZN9NCompress5NLzma8CDecoder11SetInStreamEP19ISequentialInStream.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !59 ; 0 uses
  br label %_ZN9NCompress5NLzma8CDecoder11SetInStreamEP19ISequentialInStream.exit

_ZN9NCompress5NLzma8CDecoder11SetInStreamEP19ISequentialInStream.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !39
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NLzma8CDecoder15ReleaseInStreamEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(273) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !60 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !39
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn24_N9NCompress5NLzma8CDecoder15ReleaseInStreamEv(ptr nofree noundef captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN9NCompress5NLzma8CDecoder15ReleaseInStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !61 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !39
  br label %_ZN9NCompress5NLzma8CDecoder15ReleaseInStreamEv.exit

_ZN9NCompress5NLzma8CDecoder15ReleaseInStreamEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NLzma8CDecoder4ReadEPvjPj(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
end_hunk_0
