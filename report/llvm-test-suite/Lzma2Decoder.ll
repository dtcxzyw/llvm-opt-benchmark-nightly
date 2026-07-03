inline.NumInlined: 56
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZThn24_N9NCompress6NLzma28CDecoder11SetInStreamEP19ISequentialInStream:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !41 ; 0 uses
  br label %_ZN9NCompress6NLzma28CDecoder11SetInStreamEP19ISequentialInStream.exit

_ZN9NCompress6NLzma28CDecoder11SetInStreamEP19ISequentialInStream.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NLzma28CDecoder15ReleaseInStreamEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !42 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !33
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn24_N9NCompress6NLzma28CDecoder15ReleaseInStreamEv(ptr nofree noundef captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN9NCompress6NLzma28CDecoder15ReleaseInStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !43 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !33
  br label %_ZN9NCompress6NLzma28CDecoder15ReleaseInStreamEv.exit

_ZN9NCompress6NLzma28CDecoder15ReleaseInStreamEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NLzma28CDecoder16SetOutStreamSizeEPKy(ptr noundef nonnull align 8 dereferenceable(280) initializes((248, 249)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !12
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.d, ptr %i.e, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @Lzma2Dec_Init(ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.g, align 4, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  ret i32 0
}

declare void @Lzma2Dec_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn32_N9NCompress6NLzma28CDecoder16SetOutStreamSizeEPKy(ptr noundef initializes((216, 217)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !12
  br i1 %i.a, label %bb.b, label %_ZN9NCompress6NLzma28CDecoder16SetOutStreamSizeEPKy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.d, ptr %i.e, align 8, !tbaa !44
  br label %_ZN9NCompress6NLzma28CDecoder16SetOutStreamSizeEPKy.exit

_ZN9NCompress6NLzma28CDecoder16SetOutStreamSizeEPKy.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @Lzma2Dec_Init(ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.g, align 4, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NLzma28CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %4) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not54 = icmp eq ptr %5, null
  br label %bb.c

bb.c:                                             ; preds = %select.unfold, %bb.b
  %i.t = load i32, ptr %i.j, align 8, !tbaa !46
  %i.u = load i32, ptr %i.k, align 4, !tbaa !45
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 4, !tbaa !45
  store i32 0, ptr %i.j, align 8, !tbaa !46
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.x = load ptr, ptr %1, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.w, i32 noundef 1048576, ptr noundef nonnull %i.k) ; 2 uses
  %.not.not = icmp eq i32 %i.aa, 0
  br i1 %.not.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !47  ; 4 uses
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !48
  %i.ad = sub i64 %i.ac, %i.ab
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.ad, i64 4194304) ; 2 uses
  %i.ae = load i8, ptr %i.o, align 8, !tbaa !12, !range !49, !noundef !50
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !44
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !51
  %i.ai = sub i64 %i.ag, %i.ah
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ai, i64 %spec.store.select)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.146 = phi i64 [ %spec.select, %bb.f ], [ %spec.store.select, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !45
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !46  ; 2 uses
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = zext i32 %i.al to i64
  store i64 %i.am, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.an = add i64 %.146, %i.ab
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ap = zext i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = call i32 @Lzma2Dec_DecodeToDic(ptr noundef nonnull %i.l, i64 noundef %i.an, ptr noundef %i.aq, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.as = load i64, ptr %i.a, align 8, !tbaa !52  ; 3 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = load i32, ptr %i.j, align 8, !tbaa !46
  %i.av = add i32 %i.au, %i.at
  store i32 %i.av, ptr %i.j, align 8, !tbaa !46
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !38
  %i.ax = add i64 %i.aw, %i.as
  store i64 %i.ax, ptr %i.r, align 8, !tbaa !38
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !47  ; 5 uses
  %i.az = sub i64 %i.ay, %i.ab
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !51
  %i.bb = add i64 %i.ba, %i.az                    ; 2 uses
  store i64 %i.bb, ptr %i.q, align 8, !tbaa !51
  %i.bc = icmp eq i64 %i.as, 0
  %i.bd = icmp eq i64 %i.ay, %i.ab
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false     ; 2 uses
  %i.bf = load i8, ptr %i.o, align 8, !tbaa !12, !range !49, !noundef !50
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %6, label %9

6:                                                ; preds = %bb.g
  %7 = load i64, ptr %i.p, align 8, !tbaa !44
  %8 = icmp uge i64 %i.bb, %7
  br label %9

9:                                                ; preds = %6, %bb.g
  %10 = phi i1 [ false, %bb.g ], [ %8, %6 ]       ; 2 uses
  %.not52 = icmp eq i32 %i.ar, 0
  br i1 %.not52, label %bb.h, label %.critedge

bb.h:                                             ; preds = %9
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !48
  %i.bi = icmp eq i64 %i.ay, %i.bh
  %or.cond = select i1 %i.bi, i1 true, i1 %i.be
  %or.cond5 = select i1 %or.cond, i1 true, i1 %10
  br i1 %or.cond5, label %bb.i, label %.thread

.critedge:                                        ; preds = %9
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.bk = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.bj, i64 noundef %i.ay) ; 0 uses
  br label %.thread62

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.bm = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.bl, i64 noundef %i.ay) ; 2 uses
  %.not53 = icmp ne i32 %i.bm, 0
  %brmerge = select i1 %.not53, i1 true, i1 %10   ; 2 uses
  %.not56 = xor i1 %i.be, true
  %brmerge57 = select i1 %brmerge, i1 true, i1 %.not56
  br i1 %brmerge57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !54
  %i.bo = icmp ne i32 %i.bn, 1
  %i.bp = zext i1 %i.bo to i32
  br label %.thread62

bb.k:                                             ; preds = %bb.i
  br i1 %brmerge, label %.thread62, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.pre = load i64, ptr %i.m, align 8, !tbaa !47
  %.pre71 = load i64, ptr %i.n, align 8, !tbaa !48
  %i.bq = icmp eq i64 %.pre, %.pre71
  br i1 %i.bq, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.m, align 8, !tbaa !47
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.m, %bb.l
  br i1 %.not54, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.br = load ptr, ptr %5, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q) ; 2 uses
  %.not55 = icmp eq i32 %i.bu, 0
  br i1 %.not55, label %select.unfold, label %.thread62

.thread62:                                        ; preds = %bb.k, %bb.n, %.critedge, %bb.j
  %.8.ph = phi i32 [ %i.bp, %bb.j ], [ 1, %.critedge ], [ %i.bu, %bb.n ], [ %i.bm, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

select.unfold:                                    ; preds = %bb.n, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.c

.loopexit:                                        ; preds = %bb.d, %.thread62, %bb.a
  %.9 = phi i32 [ 1, %bb.a ], [ %.8.ph, %.thread62 ], [ %i.aa, %bb.d ]
  ret i32 %.9
}

declare i32 @Lzma2Dec_DecodeToDic(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NLzma28CDecoder4ReadEPvjPj(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #7 align 2 {
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
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.023 = phi i32 [ %2, %bb.c ], [ %i.au, %bb.k ] ; 2 uses
  %.022 = phi ptr [ %1, %bb.c ], [ %i.av, %bb.k ] ; 2 uses
  %i.m = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !45   ; 2 uses
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 4, !tbaa !45
  store i32 0, ptr %i.d, align 8, !tbaa !46
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i32 noundef 1048576, ptr noundef nonnull %i.e) ; 2 uses
  %.not35.not = icmp eq i32 %i.u, 0
  br i1 %.not35.not, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.e, align 4, !tbaa !45
  %.pre46 = load i32, ptr %i.d, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.v = phi i32 [ %.pre46, %._crit_edge ], [ %i.m, %bb.d ] ; 2 uses
  %i.w = phi i32 [ %.pre, %._crit_edge ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.x = sub i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  store i64 %i.y, ptr %i.a, align 8, !tbaa !52
  %i.z = load i8, ptr %i.h, align 8, !tbaa !12, !range !49, !noundef !50
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !44
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !51
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = zext i32 %.023 to i64
  %spec.select44 = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ae)
  %spec.select = trunc nuw i64 %spec.select44 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.225 = phi i32 [ %spec.select, %bb.g ], [ %.023, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.af = zext i32 %.225 to i64
  store i64 %i.af, ptr %i.b, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.ah = zext i32 %i.v to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = call i32 @Lzma2Dec_DecodeToBuf(ptr noundef nonnull %i.k, ptr noundef %.022, ptr noundef nonnull %i.b, ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.c)
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !52  ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = load i32, ptr %i.d, align 8, !tbaa !46
  %i.an = add i32 %i.am, %i.al
  store i32 %i.an, ptr %i.d, align 8, !tbaa !46
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !38
  %i.ap = add i64 %i.ao, %i.ak
  store i64 %i.ap, ptr %i.l, align 8, !tbaa !38
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !52  ; 4 uses
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !51
  %i.as = add i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.j, align 8, !tbaa !51
  %i.at = trunc i64 %i.aq to i32                  ; 2 uses
  %i.au = sub i32 %.225, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.022, i64 %i.aq
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %3, align 4, !tbaa !4
  %i.ax = add i32 %i.aw, %i.at
  store i32 %i.ax, ptr %3, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  switch i32 %i.aj, label %.thread.loopexit52 [
    i32 0, label %bb.k
    i32 2, label %.thread.loopexit
    i32 5, label %.thread
    i32 1, label %.thread.loopexit51
  ]

.thread.loopexit51:                               ; preds = %bb.j
  br label %.thread

.thread.loopexit52:                               ; preds = %bb.j
  br label %.thread

.thread.loopexit:                                 ; preds = %bb.j
  br label %.thread

.thread:                                          ; preds = %bb.j, %.thread.loopexit, %.thread.loopexit52, %.thread.loopexit51
  %.0.i.ph = phi i32 [ -2147467259, %.thread.loopexit52 ], [ 1, %.thread.loopexit51 ], [ -2147024882, %.thread.loopexit ], [ -2147024809, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq i64 %i.ak, 0
  %i.az = icmp eq i64 %i.aq, 0
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not37 = icmp eq i32 %i.au, 0
  %or.cond43 = select i1 %or.cond, i1 true, i1 %.not37
  br i1 %or.cond43, label %.loopexit, label %bb.d, !llvm.loop !56

.loopexit:                                        ; preds = %bb.e, %bb.k, %.thread
  %.5 = phi i32 [ %.0.i.ph, %.thread ], [ 0, %bb.k ], [ %i.u, %bb.e ]
  ret i32 %.5
}

declare i32 @Lzma2Dec_DecodeToBuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
end_hunk_0
