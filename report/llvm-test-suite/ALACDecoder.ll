Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ALACDecoder?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11ALACDecoderD2Ev:bb.a

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -108, 1) i32 @_ZN11ALACDecoder4InitEPvj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17    ; 2 uses
  %i.c = icmp eq i8 %i.b, 102
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = icmp eq i8 %i.e, 114
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17
  %i.i = icmp eq i8 %i.h, 109
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = icmp eq i8 %i.k, 97
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = add i32 %2, -12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.o = phi i8 [ %.pre, %bb.e ], [ %i.b, %bb.a ]
  %.028 = phi ptr [ %i.m, %bb.e ], [ %1, %bb.a ]  ; 8 uses
  %.0 = phi i32 [ %i.n, %bb.e ], [ %2, %bb.a ]    ; 5 uses
  %i.p = icmp eq i8 %i.o, 97
  br i1 %i.p, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = icmp eq i8 %i.r, 108
  br i1 %i.s, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.028, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = icmp eq i8 %i.u, 97
  br i1 %i.v, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = icmp eq i8 %i.x, 99
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.aa = add i32 %.0, -12
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.129 = phi ptr [ %i.z, %bb.j ], [ %.028, %bb.i ], [ %.028, %bb.h ], [ %.028, %bb.g ], [ %.028, %bb.f ], [ %1, %bb.d ], [ %1, %bb.c ], [ %1, %bb.b ] ; 8 uses
  %.1 = phi i32 [ %i.aa, %bb.j ], [ %.0, %bb.i ], [ %.0, %bb.h ], [ %.0, %bb.g ], [ %.0, %bb.f ], [ %2, %bb.d ], [ %2, %bb.c ], [ %2, %bb.b ]
  %i.ab = icmp ugt i32 %.1, 23
  br i1 %i.ab, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread
  %i.ac = load i32, ptr %.129, align 4, !tbaa !24
  %i.ad = tail call i32 @Swap32BtoN(i32 noundef %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.129, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.129, i64 8
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %.129, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %.129, i64 10
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %.129, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.129, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.129, i64 20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load <4 x i8>, ptr %i.ae, align 4, !tbaa !17
  %i.ap = load i8, ptr %i.ae, align 4, !tbaa !28
  %i.aq = tail call zeroext i16 @Swap16BtoN(i16 noundef zeroext %i.ak)
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !29
  %i.as = tail call i32 @Swap32BtoN(i32 noundef %i.ar)
  %i.at = load i32, ptr %i.am, align 4, !tbaa !30
  %i.au = tail call i32 @Swap32BtoN(i32 noundef %i.at)
  %i.av = load i32, ptr %i.an, align 4, !tbaa !31
  %i.aw = tail call i32 @Swap32BtoN(i32 noundef %i.av)
  store i32 %i.ad, ptr %0, align 8, !tbaa !7
  store <4 x i8> %i.ao, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ag, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !17
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ai, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !17
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.aq, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !18
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.as, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.au, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aw, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !7
  %i.ax = icmp eq i8 %i.ap, 0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext i32 %i.ad to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = tail call noalias ptr @calloc(i64 noundef %i.az, i64 noundef 1) #9 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !14
  %i.bc = load i32, ptr %0, align 8, !tbaa !32
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 1) #9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !15
  %i.bh = load i32, ptr %0, align 8, !tbaa !32
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call noalias ptr @calloc(i64 noundef %i.bj, i64 noundef 1) #9 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !19
  %.not = icmp eq ptr %i.ba, null
  %.not32 = icmp eq ptr %i.bf, null
  %or.cond = or i1 %.not, %.not32
  %.not33 = icmp eq ptr %i.bk, null
  %or.cond34 = or i1 %or.cond, %.not33
  %spec.select = select i1 %or.cond34, i32 -108, i32 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread, %bb.k
  %.031 = phi i32 [ -50, %bb.k ], [ %spec.select, %bb.l ], [ -50, %.thread ]
  ret i32 %.031
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @Swap32BtoN(i32 noundef) local_unnamed_addr #6

declare zeroext i16 @Swap16BtoN(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %struct.BitBuffer, align 8          ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.AGParamRec, align 4         ; 8 uses
  %i.c = alloca [32 x i16], align 16              ; 6 uses
  %i.d = alloca [32 x i16], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = icmp eq ptr %1, null
  %i.f = icmp eq ptr %2, null
  %or.cond.not416 = or i1 %i.e, %i.f
  %i.g = icmp eq ptr %5, null
  %or.cond3.not413 = or i1 %or.cond.not416, %i.g
  %.not = icmp eq i32 %4, 0
  %or.cond388 = or i1 %.not, %or.cond3.not413
  br i1 %or.cond388, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i16 0, ptr %i.h, align 8, !tbaa !50
  store i32 %3, ptr %5, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %ident.check.not = icmp eq i32 %4, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.bc
  %.0351 = phi i32 [ 0, %bb.b ], [ %.1352, %bb.bc ] ; 16 uses
  %.0334 = phi i32 [ %3, %bb.b ], [ %.3, %bb.bc ] ; 8 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !22
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.j, align 2, !tbaa !51    ; 2 uses
  %i.w = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 3)
  switch i8 %i.w, label %bb.bc [
    i8 0, label %bb.e
    i8 3, label %bb.e
    i8 1, label %bb.ab
    i8 2, label %.thread407
    i8 5, label %.thread407
    i8 4, label %bb.ay
    i8 6, label %bb.az
    i8 7, label %bb.bb
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.x = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4)
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw i32 1, %i.y
  %i.aa = load i16, ptr %i.h, align 8, !tbaa !50
  %i.ab = trunc i32 %i.z to i16
  %i.ac = or i16 %i.aa, %i.ab
  store i16 %i.ac, ptr %i.h, align 8, !tbaa !50
  %i.ad = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12)
  %i.ae = and i32 %i.ad, 65535
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 3 uses
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = lshr i8 %i.ah, 1
  %i.aj = and i8 %i.ai, 3                         ; 5 uses
  %.not383 = icmp eq i8 %i.aj, 3
  br i1 %.not383, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = and i32 %i.ag, 1
  %i.al = load i8, ptr %i.k, align 1, !tbaa !52
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i8 %i.aj, 3                 ; 2 uses
  %i.ao = zext nneg i8 %i.an to i32               ; 2 uses
  %i.ap = sub nsw i32 %i.am, %i.ao                ; 8 uses
  %i.aq = and i32 %i.ag, 248
  %.not384 = icmp eq i32 %i.aq, 0
  br i1 %.not384, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.as = shl i32 %i.ar, 16
  %i.at = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.au = or i32 %i.as, %i.at
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.au, %bb.h ], [ %.0334, %bb.g ] ; 22 uses
  %i.av = icmp eq i32 %i.ak, 0
  br i1 %i.av, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aw = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 0 uses
  %i.ax = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 0 uses
  %i.ay = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.az = and i32 %i.ay, 15
  %i.ba = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) ; 2 uses
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = and i32 %i.bb, 7
  %i.bd = and i32 %i.ba, 31                       ; 3 uses
  %.not502 = icmp eq i32 %i.bd, 0
  br i1 %.not502, label %._crit_edge446, label %.lr.ph445.preheader

.lr.ph445.preheader:                              ; preds = %bb.j
  %wide.trip.count555 = zext nneg i32 %i.bd to i64
  br label %.lr.ph445

.lr.ph445:                                        ; preds = %.lr.ph445.preheader, %.lr.ph445
  %indvars.iv552 = phi i64 [ 0, %.lr.ph445.preheader ], [ %indvars.iv.next553, %.lr.ph445 ] ; 2 uses
  %i.be = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.bf = trunc i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv552
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !18
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond556.not = icmp eq i64 %indvars.iv.next553, %wide.trip.count555
  br i1 %exitcond556.not, label %._crit_edge446, label %.lr.ph445, !llvm.loop !33

._crit_edge446:                                   ; preds = %.lr.ph445, %bb.j
  %.not385 = icmp eq i8 %i.aj, 0                  ; 2 uses
  br i1 %.not385, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %i.bh = mul i32 %.1, %i.ao
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.bh)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge446
  %i.bi = load i8, ptr %i.n, align 1, !tbaa !56
  %i.bj = zext i8 %i.bi to i32
  %i.bk = zext i8 %i.v to i32
  %i.bl = mul nuw nsw i32 %i.bc, %i.bk
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = load i8, ptr %i.o, align 8, !tbaa !57
  %i.bo = zext i8 %i.bn to i32
  %i.bp = load i16, ptr %i.p, align 2, !tbaa !58
  %i.bq = zext i16 %i.bp to i32
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef %i.bj, i32 noundef %i.bm, i32 noundef %i.bo, i32 noundef %.1, i32 noundef %.1, i32 noundef %i.bq)
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.bs = call i32 @dyn_decomp(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef %i.br, i32 noundef %.1, i32 noundef %i.ap, ptr noundef nonnull %i.a) ; 2 uses
  %.not386 = icmp eq i32 %i.bs, 0
  br i1 %.not386, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bt = and i32 %i.ay, 240
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !16  ; 3 uses
  br i1 %i.bu, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @unpc_block(ptr noundef %i.bv, ptr noundef %i.bv, i32 noundef %.1, ptr noundef null, i32 noundef 31, i32 noundef %i.ap, i32 noundef 0)
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.bx = sub nsw i32 32, %i.ap                   ; 3 uses
  %i.by = icmp ult i32 %i.ap, 17
  %.not501 = icmp eq i32 %.1, 0                   ; 2 uses
  br i1 %i.by, label %.preheader, label %.preheader421

.preheader421:                                    ; preds = %bb.o
  br i1 %.not501, label %.thread, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader421
  %i.bz = trunc i32 %i.ap to i8
  %i.ca = add i8 %i.bz, -16
  %wide.trip.count545 = zext i32 %.1 to i64
  br label %bb.q

.preheader:                                       ; preds = %bb.o
  br i1 %.not501, label %.thread, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader
  %i.cb = trunc nuw nsw i32 %i.ap to i8
  %wide.trip.count550 = zext i32 %.1 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph442, %bb.p
  %indvars.iv547 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next548, %bb.p ] ; 2 uses
  %i.cc = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.cb)
  %i.cd = shl i32 %i.cc, %i.bx
  %i.ce = ashr exact i32 %i.cd, %i.bx
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv547
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !7
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count550
  br i1 %exitcond551.not, label %.thread, label %bb.p, !llvm.loop !34

bb.q:                                             ; preds = %.lr.ph440, %bb.q
  %indvars.iv542 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next543, %bb.q ] ; 2 uses
  %i.ch = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %i.ci = shl i32 %i.ch, 16
  %i.cj = ashr i32 %i.ci, %i.bx
  %i.ck = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %i.ca)
  %i.cl = or i32 %i.cj, %i.ck
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv542
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !7
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %wide.trip.count545
  br i1 %exitcond546.not, label %.thread, label %bb.q, !llvm.loop !35

.thread:                                          ; preds = %bb.q, %bb.p, %.preheader421, %.preheader
  %i.co = mul i32 %.1, %i.ap
  store i32 %i.co, ptr %i.a, align 4, !tbaa !7
  br label %.loopexit420

bb.r:                                             ; preds = %bb.m, %bb.n
  %.sink = phi ptr [ %i.bw, %bb.n ], [ %i.bv, %bb.m ]
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !14
  call void @unpc_block(ptr noundef %.sink, ptr noundef %i.cp, i32 noundef %.1, ptr noundef nonnull %i.c, i32 noundef %i.bd, i32 noundef %i.ap, i32 noundef %i.az)
  br i1 %.not385, label %.loopexit420, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj:bb.a
  %i.jj = or i32 %i.jh, %i.ji
  %i.jk = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread400, label %.lr.ph, !llvm.loop !43

.thread400:                                       ; preds = %.lr.ph, %.lr.ph429, %bb.aq, %.preheader424
  %i.jm = mul i32 %.2, %i.ik                      ; 2 uses
  store i32 %i.jm, ptr %i.a, align 4, !tbaa !7
  store i32 %i.jm, ptr %i.b, align 4, !tbaa !7
  br label %.loopexit423

bb.ar:                                            ; preds = %bb.an, %bb.ao
  %.sink632 = phi ptr [ %i.ii, %bb.ao ], [ %i.ih, %bb.an ]
  %i.jn = load ptr, ptr %i.m, align 8, !tbaa !15
  call void @unpc_block(ptr noundef %.sink632, ptr noundef %i.jn, i32 noundef %.2, ptr noundef nonnull %i.d, i32 noundef %i.gz, i32 noundef %i.ga, i32 noundef %i.gv)
  br i1 %.not379, label %.loopexit423, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = shl i32 %.2, 1                          ; 2 uses
  %.not499 = icmp eq i32 %i.jo, 0
  br i1 %.not499, label %.loopexit423, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %bb.as
  %i.jp = zext i32 %i.jo to i64
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader, %.lr.ph438
  %indvars.iv539 = phi i64 [ 0, %.lr.ph438.preheader ], [ %indvars.iv.next540, %.lr.ph438 ] ; 3 uses
  %i.jq = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fx)
  %i.jr = trunc i32 %i.jq to i16
  %i.js = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv539
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !18
  %i.ju = call i32 @BitBufferRead(ptr noundef nonnull %6, i8 noundef zeroext %i.fx)
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %indvars.iv539
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  store i16 %i.jv, ptr %i.jy, align 2, !tbaa !18
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 2 ; 2 uses
  %i.jz = icmp samesign ult i64 %indvars.iv.next540, %i.jp
  br i1 %i.jz, label %.lr.ph438, label %.loopexit423, !llvm.loop !44

.loopexit423:                                     ; preds = %.lr.ph438, %bb.as, %.thread400, %bb.ar
  %.shrunk = phi i8 [ 0, %.thread400 ], [ 0, %bb.ar ], [ %i.ft, %bb.as ], [ %i.ft, %.lr.ph438 ]
  %.0349406 = phi i8 [ 0, %.thread400 ], [ %i.gk, %bb.ar ], [ %i.gk, %bb.as ], [ %i.gk, %.lr.ph438 ] ; 4 uses
  %.0350405 = phi i8 [ 0, %.thread400 ], [ %i.gi, %bb.ar ], [ %i.gi, %bb.as ], [ %i.gi, %.lr.ph438 ] ; 4 uses
  %i.ka = zext nneg i8 %.shrunk to i32            ; 2 uses
  %i.kb = load i8, ptr %i.k, align 1, !tbaa !52
  switch i8 %i.kb, label %bb.ax [
    i8 16, label %bb.at
    i8 20, label %bb.au
    i8 24, label %bb.av
    i8 32, label %bb.aw
  ]

bb.at:                                            ; preds = %.loopexit423
  %i.kc = zext i32 %.0351 to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.kc
  %i.ke = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.kf = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kg = zext i8 %.0350405 to i32
  %i.kh = sext i8 %.0349406 to i32
  call void @unmix16(ptr noundef %i.ke, ptr noundef %i.kf, ptr noundef nonnull %i.kd, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kg, i32 noundef %i.kh)
  br label %bb.ax

bb.au:                                            ; preds = %.loopexit423
  %i.ki = mul i32 %.0351, 3
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 %i.kj
  %i.kl = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.km = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.kn = zext i8 %.0350405 to i32
  %i.ko = sext i8 %.0349406 to i32
  call void @unmix20(ptr noundef %i.kl, ptr noundef %i.km, ptr noundef nonnull %i.kk, i32 noundef %4, i32 noundef %.2, i32 noundef %i.kn, i32 noundef %i.ko)
  br label %bb.ax

bb.av:                                            ; preds = %.loopexit423
  %i.kp = mul i32 %.0351, 3
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 %i.kq
  %i.ks = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.kt = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.ku = zext i8 %.0350405 to i32
  %i.kv = sext i8 %.0349406 to i32
  %i.kw = load ptr, ptr %i.r, align 8, !tbaa !19
  call void @unmix24(ptr noundef %i.ks, ptr noundef %i.kt, ptr noundef nonnull %i.kr, i32 noundef %4, i32 noundef %.2, i32 noundef %i.ku, i32 noundef %i.kv, ptr noundef %i.kw, i32 noundef %i.ka)
  br label %bb.ax

bb.aw:                                            ; preds = %.loopexit423
  %i.kx = zext i32 %.0351 to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kx
  %i.kz = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.la = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.lb = zext i8 %.0350405 to i32
  %i.lc = sext i8 %.0349406 to i32
  %i.ld = load ptr, ptr %i.r, align 8, !tbaa !19
  call void @unmix32(ptr noundef %i.kz, ptr noundef %i.la, ptr noundef nonnull %i.ky, i32 noundef %4, i32 noundef %.2, i32 noundef %i.lb, i32 noundef %i.lc, ptr noundef %i.ld, i32 noundef %i.ka)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %.loopexit423
  store i32 %.2, ptr %5, align 4, !tbaa !7
  br label %bb.bc

bb.ay:                                            ; preds = %bb.d
  %i.le = call noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1)
  br label %bb.bc

bb.az:                                            ; preds = %bb.d
  %i.lf = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4) ; 2 uses
  %i.lg = zext i8 %i.lf to i32
  %i.lh = icmp eq i8 %i.lf, 15
  br i1 %i.lh, label %bb.ba, label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

bb.ba:                                            ; preds = %bb.az
  %i.li = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 8)
  %i.lj = zext i8 %i.li to i32
  %i.lk = add nuw nsw i32 %i.lj, 14
  br label %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit

_ZN11ALACDecoder11FillElementEP9BitBuffer.exit:   ; preds = %bb.az, %bb.ba
  %.0.i = phi i32 [ %i.lk, %bb.ba ], [ %i.lg, %bb.az ]
  %i.ll = shl nuw nsw i32 %.0.i, 3
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.ll)
  %i.lm = load ptr, ptr %1, align 8, !tbaa !22
  %i.ln = load ptr, ptr %i.i, align 8, !tbaa !23
  %.not.i = icmp ugt ptr %i.lm, %i.ln
  %..i = select i1 %.not.i, i32 -50, i32 0
  br label %bb.bc

bb.bb:                                            ; preds = %bb.d
  call void @BitBufferByteAlign(ptr noundef nonnull %1, i32 noundef 0)
  br label %.loopexit

bb.bc:                                            ; preds = %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit, %bb.ay, %bb.ax, %.loopexit419, %bb.d
  %.1352 = phi i32 [ %.0351, %bb.d ], [ %i.fe, %.loopexit419 ], [ %i.ff, %bb.ax ], [ %.0351, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0351, %bb.ay ] ; 3 uses
  %.3338 = phi i32 [ 0, %bb.d ], [ 0, %.loopexit419 ], [ 0, %bb.ax ], [ %..i, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %i.le, %bb.ay ] ; 2 uses
  %.3 = phi i32 [ %.0334, %bb.d ], [ %.1, %.loopexit419 ], [ %.2, %bb.ax ], [ %.0334, %_ZN11ALACDecoder11FillElementEP9BitBuffer.exit ], [ %.0334, %bb.ay ] ; 2 uses
  %i.lo = icmp ult i32 %.1352, %4
  %i.lp = icmp eq i32 %.3338, 0
  %or.cond5 = and i1 %i.lo, %i.lp
  br i1 %or.cond5, label %bb.c, label %.thread407, !llvm.loop !45

.thread407:                                       ; preds = %bb.d, %bb.d, %bb.bc, %bb.ab
  %.2353 = phi i32 [ %.1352, %bb.bc ], [ %.0351, %bb.ab ], [ %.0351, %bb.d ], [ %.0351, %bb.d ] ; 4 uses
  %.4339 = phi i32 [ %.3338, %bb.bc ], [ 0, %bb.ab ], [ -50, %bb.d ], [ -50, %bb.d ] ; 8 uses
  %.4 = phi i32 [ %.3, %bb.bc ], [ %.0334, %bb.ab ], [ %.0334, %bb.d ], [ %.0334, %bb.d ]
  %i.lq = icmp ult i32 %.2353, %4
  br i1 %i.lq, label %.lr.ph455, label %.loopexit

.lr.ph455:                                        ; preds = %.thread407
  %.4.fr = freeze i32 %.4                         ; 3 uses
  %i.lr = icmp eq i32 %4, 1
  %i.ls = mul i32 %.4.fr, %4                      ; 5 uses
  %.not.i394 = icmp eq i32 %i.ls, 0               ; 3 uses
  %i.lt = zext i32 %.4.fr to i64                  ; 2 uses
  %i.lu = shl nuw nsw i64 %i.lt, 2
  %i.lv = mul i32 %.4.fr, 3                       ; 2 uses
  %i.lw = mul i32 %i.lv, %4                       ; 2 uses
  %i.lx = mul i32 %4, 3
  %i.ly = zext i32 %i.lv to i64
  %i.lz = shl nuw nsw i64 %i.lt, 1
  br i1 %i.lr, label %.lr.ph455.split.us.preheader, label %.lr.ph455.split

.lr.ph455.split.us.preheader:                     ; preds = %.lr.ph455
  %i.ma = zext i32 %.2353 to i64                  ; 3 uses
  %i.mb = load i8, ptr %i.k, align 1, !tbaa !52
  switch i8 %i.mb, label %.loopexit [
    i8 16, label %bb.bf
    i8 24, label %bb.be
    i8 32, label %bb.bd
  ]

bb.bd:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ma
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mc, i8 0, i64 %i.lu, i1 false)
  br label %.loopexit

bb.be:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.md = mul nuw nsw i64 %i.ma, 3
  %i.me = and i64 %i.md, 4294967295
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 %i.me
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mf, i8 0, i64 %i.ly, i1 false)
  br label %.loopexit

bb.bf:                                            ; preds = %.lr.ph455.split.us.preheader
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ma
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.mg, i8 0, i64 %i.lz, i1 false)
  br label %.loopexit

.lr.ph455.split:                                  ; preds = %.lr.ph455
  %.not.i391 = icmp eq i32 %i.lw, 0
  br i1 %.not.i391, label %.lr.ph455.split.split.us.split.split, label %.lr.ph455.split.split.preheader

.lr.ph455.split.split.preheader:                  ; preds = %.lr.ph455.split
  %i.mh = zext i32 %.2353 to i64
  %wide.trip.count570 = zext i32 %4 to i64
  br label %.lr.ph455.split.split

.lr.ph455.split.split.us.split.split:             ; preds = %.lr.ph455.split
  br i1 %.not.i394, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split.preheader

.lr.ph455.split.split.us.split.split.split.split.preheader: ; preds = %.lr.ph455.split.split.us.split.split
  %i.mi = zext i32 %.2353 to i64
  %wide.trip.count575 = zext i32 %4 to i64
  %.pre = load i8, ptr %i.k, align 1, !tbaa !52
  br label %.lr.ph455.split.split.us.split.split.split.split

.lr.ph455.split.split.us.split.split.split.split: ; preds = %.lr.ph455.split.split.us.split.split.split.split.preheader, %_ZL6Zero16Psjj.exit.us467
  %indvars.iv572 = phi i64 [ %i.mi, %.lr.ph455.split.split.us.split.split.split.split.preheader ], [ %indvars.iv.next573, %_ZL6Zero16Psjj.exit.us467 ] ; 3 uses
  switch i8 %.pre, label %_ZL6Zero16Psjj.exit.us467 [
    i8 16, label %.preheader.i.us462
    i8 32, label %.preheader.i393.us457
  ]

.preheader.i393.us457:                            ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i395.us459

.lr.ph.i395.us459:                                ; preds = %.lr.ph.i395.us459, %.preheader.i393.us457
  %.010.i396.us460 = phi i32 [ %i.mm, %.lr.ph.i395.us459 ], [ 0, %.preheader.i393.us457 ] ; 2 uses
  %i.mk = zext i32 %.010.i396.us460 to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mk
  store i32 0, ptr %i.ml, align 4, !tbaa !7
  %i.mm = add i32 %.010.i396.us460, %4            ; 2 uses
  %i.mn = icmp ult i32 %i.mm, %i.ls
  br i1 %i.mn, label %.lr.ph.i395.us459, label %_ZL6Zero16Psjj.exit.us467, !llvm.loop !46

.preheader.i.us462:                               ; preds = %.lr.ph455.split.split.us.split.split.split.split
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv572
  br label %.lr.ph.i.us464

.lr.ph.i.us464:                                   ; preds = %.lr.ph.i.us464, %.preheader.i.us462
  %.010.i.us465 = phi i32 [ %i.mr, %.lr.ph.i.us464 ], [ 0, %.preheader.i.us462 ] ; 2 uses
  %i.mp = zext i32 %.010.i.us465 to i64
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mp
  store i16 0, ptr %i.mq, align 2, !tbaa !18
  %i.mr = add i32 %.010.i.us465, %4               ; 2 uses
  %i.ms = icmp ult i32 %i.mr, %i.ls
  br i1 %i.ms, label %.lr.ph.i.us464, label %_ZL6Zero16Psjj.exit.us467, !llvm.loop !47

_ZL6Zero16Psjj.exit.us467:                        ; preds = %.lr.ph.i395.us459, %.lr.ph.i.us464, %.lr.ph455.split.split.us.split.split.split.split
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %wide.trip.count575
  br i1 %exitcond576.not, label %.loopexit, label %.lr.ph455.split.split.us.split.split.split.split, !llvm.loop !48

.lr.ph455.split.split:                            ; preds = %.lr.ph455.split.split.preheader, %_ZL6Zero16Psjj.exit
  %indvars.iv567 = phi i64 [ %i.mh, %.lr.ph455.split.split.preheader ], [ %indvars.iv.next568, %_ZL6Zero16Psjj.exit ] ; 4 uses
  %8 = load i8, ptr %i.k, align 1, !tbaa !52
  switch i8 %8, label %_ZL6Zero16Psjj.exit [
    i8 16, label %.preheader.i
    i8 24, label %.preheader.i390
    i8 32, label %.preheader.i393
  ]

.preheader.i:                                     ; preds = %.lr.ph455.split.split
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv567
  br i1 %.not.i394, label %_ZL6Zero16Psjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.010.i = phi i32 [ %i.mw, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.mu = zext i32 %.010.i to i64
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %i.mu
  store i16 0, ptr %i.mv, align 2, !tbaa !18
  %i.mw = add i32 %.010.i, %4                     ; 2 uses
  %i.mx = icmp ult i32 %i.mw, %i.ls
  br i1 %i.mx, label %.lr.ph.i, label %_ZL6Zero16Psjj.exit, !llvm.loop !47

.preheader.i390:                                  ; preds = %.lr.ph455.split.split
  %i.my = mul i64 %indvars.iv567, 3
  %i.mz = and i64 %i.my, 4294967295
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 %i.mz ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader.i390
  %.014.i = phi i32 [ 0, %.preheader.i390 ], [ %i.nj, %bb.bg ] ; 4 uses
  %i.nb = zext i32 %.014.i to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nb
  store i8 0, ptr %i.nc, align 1, !tbaa !17
  %i.nd = add nuw i32 %.014.i, 1
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ne
  store i8 0, ptr %i.nf, align 1, !tbaa !17
  %i.ng = add i32 %.014.i, 2
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nh
  store i8 0, ptr %i.ni, align 1, !tbaa !17
  %i.nj = add i32 %.014.i, %i.lx                  ; 2 uses
  %i.nk = icmp ult i32 %i.nj, %i.lw
  br i1 %i.nk, label %bb.bg, label %_ZL6Zero16Psjj.exit, !llvm.loop !49

.preheader.i393:                                  ; preds = %.lr.ph455.split.split
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv567
  br i1 %.not.i394, label %_ZL6Zero16Psjj.exit, label %.lr.ph.i395

.lr.ph.i395:                                      ; preds = %.preheader.i393, %.lr.ph.i395
  %.010.i396 = phi i32 [ %i.no, %.lr.ph.i395 ], [ 0, %.preheader.i393 ] ; 2 uses
  %i.nm = zext i32 %.010.i396 to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.nm
  store i32 0, ptr %i.nn, align 4, !tbaa !7
  %i.no = add i32 %.010.i396, %4                  ; 2 uses
  %i.np = icmp ult i32 %i.no, %i.ls
  br i1 %i.np, label %.lr.ph.i395, label %_ZL6Zero16Psjj.exit, !llvm.loop !46

_ZL6Zero16Psjj.exit:                              ; preds = %.lr.ph.i395, %bb.bg, %.lr.ph.i, %.preheader.i393, %.preheader.i, %.lr.ph455.split.split
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %.loopexit, label %.lr.ph455.split.split, !llvm.loop !48

.loopexit:                                        ; preds = %bb.l, %bb.aj, %bb.am, %bb.c, %bb.e, %bb.f, %bb.ac, %bb.ad, %_ZL6Zero16Psjj.exit, %_ZL6Zero16Psjj.exit.us467, %bb.bf, %bb.be, %bb.bd, %.lr.ph455.split.us.preheader, %.lr.ph455.split.split.us.split.split, %.thread407, %bb.bb, %bb.a
  %.0 = phi i32 [ %.4339, %.thread407 ], [ -50, %bb.a ], [ 0, %bb.bb ], [ %.4339, %bb.bf ], [ %.4339, %_ZL6Zero16Psjj.exit ], [ %.4339, %.lr.ph455.split.split.us.split.split ], [ %.4339, %_ZL6Zero16Psjj.exit.us467 ], [ %.4339, %.lr.ph455.split.us.preheader ], [ %.4339, %bb.bd ], [ %.4339, %bb.be ], [ -50, %bb.ad ], [ -50, %bb.f ], [ -50, %bb.ac ], [ %i.ie, %bb.am ], [ %i.hp, %bb.aj ], [ -50, %bb.c ], [ -50, %bb.e ], [ %i.bs, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i32 %.0
}

declare zeroext i8 @BitBufferReadSmall(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @BitBufferRead(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @BitBufferAdvance(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @set_ag_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dyn_decomp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @unpc_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo20(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo24Shift(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo24(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo32Shift(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @copyPredictorTo32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix16(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix20(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix24(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @unmix32(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -50, 1) i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) ; 0 uses
  %i.b = tail call zeroext i8 @BitBufferReadOne(ptr noundef %1)
  %i.c = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) ; 2 uses
  %i.d = zext i8 %i.c to i32
  %i.e = icmp eq i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8)
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 255
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BitBufferByteAlign(ptr noundef %1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = shl nuw nsw i32 %.0, 3
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not14 = icmp ugt ptr %i.j, %i.l
  %. = select i1 %.not14, i32 -50, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -50, 1) i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) ; 2 uses
  %i.b = zext i8 %i.a to i32
  %i.c = icmp eq i8 %i.a, 15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8)
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %i.g = shl nuw nsw i32 %.0, 3
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %.not = icmp ugt ptr %i.h, %i.j
  %. = select i1 %.not, i32 -50, i32 0
  ret i32 %.
}

declare void @BitBufferByteAlign(ptr noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i8 @BitBufferReadOne(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"_ZTS18ALACSpecificConfig", !6, i64 0, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !8, i64 10, !6, i64 12, !6, i64 16, !6, i64 20}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"p1 short", !10, i64 0}
!13 = !{!"_ZTS11ALACDecoder", !9, i64 0, !8, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !12, i64 56}
!14 = !{!13, !11, i64 32}
!15 = !{!13, !11, i64 40}
!16 = !{!13, !11, i64 48}
!17 = !{!5, !5, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!13, !12, i64 56}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"_ZTS9BitBuffer", !20, i64 0, !20, i64 8, !6, i64 16, !6, i64 20}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !20, i64 8}
!24 = !{!9, !6, i64 0}
!25 = !{!9, !5, i64 8}
!26 = !{!9, !5, i64 9}
!27 = !{!9, !8, i64 10}
!28 = !{!9, !5, i64 4}
!29 = !{!9, !6, i64 12}
!30 = !{!9, !6, i64 16}
!31 = !{!9, !6, i64 20}
!32 = !{!13, !6, i64 0}
!33 = distinct !{!33, !53}
!34 = distinct !{!34, !53}
!35 = distinct !{!35, !53}
!36 = distinct !{!36, !53}
!37 = distinct !{!37, !53, !59, !60}
!38 = distinct !{!38, !61}
!39 = distinct !{!39, !53, !59}
!40 = distinct !{!40, !53}
!41 = distinct !{!41, !53}
!42 = distinct !{!42, !53}
!43 = distinct !{!43, !53}
!44 = distinct !{!44, !53}
!45 = distinct !{!45, !53}
!46 = distinct !{!46, !53}
!47 = distinct !{!47, !53}
!48 = distinct !{!48, !53}
!49 = distinct !{!49, !53}
!50 = !{!13, !8, i64 24}
!51 = !{!13, !5, i64 6}
!52 = !{!13, !5, i64 5}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!20, !20, i64 0}
!55 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 4, !7, i64 20, i64 4, !7}
!56 = !{!13, !5, i64 7}
!57 = !{!13, !5, i64 8}
!58 = !{!13, !8, i64 10}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
