inline.NumInlined: 60
inline.NumDeleted: 25
begin_hunk_0_@WebPINewYUV:bb.a
  %or.cond9.i = or i1 %or.cond7.i, %i.i
  br i1 %or.cond9.i, label %WebPINewYUVA.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.066.i = phi i32 [ 0, %bb.a ], [ %2, %bb.d ]
  %.065.i = phi ptr [ null, %bb.a ], [ %3, %bb.d ]
  %.064.i = phi i64 [ 0, %bb.a ], [ %4, %bb.d ]
  %.063.i = phi i32 [ 0, %bb.a ], [ %5, %bb.d ]
  %.062.i = phi ptr [ null, %bb.a ], [ %6, %bb.d ]
  %.061.i = phi i64 [ 0, %bb.a ], [ %7, %bb.d ]
  %.060.i = phi i32 [ 0, %bb.a ], [ %8, %bb.d ]
  %.056.i = phi i64 [ 0, %bb.a ], [ %1, %bb.d ]
  %.0.i = phi i32 [ 12, %bb.a ], [ 11, %bb.d ]
  %i.j = tail call fastcc ptr @NewDecoder(ptr noundef null, ptr noundef null) ; 16 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %WebPINewYUVA.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  store i32 %.0.i, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 364
  store i32 %i.a, ptr %i.m, align 4, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  store ptr %0, ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 400
  store i32 %.066.i, ptr %i.o, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  store i64 %.056.i, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  store ptr %.065.i, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 404
  store i32 %.063.i, ptr %i.r, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 424
  store i64 %.064.i, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  store ptr %.062.i, ptr %i.t, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  store i32 %.060.i, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  store i64 %.061.i, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  store ptr null, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 412
  store i32 0, ptr %i.x, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 440
  store i64 0, ptr %i.y, align 8, !tbaa !32
  br label %WebPINewYUVA.exit

WebPINewYUVA.exit:                                ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.055.i = phi ptr [ null, %bb.e ], [ %i.j, %bb.f ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.055.i
}

; Function Attrs: nounwind uwtable
define i32 @WebPIAppend(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %CheckMemBufferMode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 8, !tbaa !7     ; 3 uses
  %switch.selectcmp.i = icmp eq i32 %.val, 6
  %switch.select.i = select i1 %switch.selectcmp.i, i32 0, i32 5
  %switch.selectcmp3.i = icmp eq i32 %.val, 7
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 3, i32 %switch.select.i ; 2 uses
  %.not = icmp eq i32 %switch.select4.i, 5
  br i1 %.not, label %bb.c, label %CheckMemBufferMode.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  switch i32 %i.d, label %CheckMemBufferMode.exit.thread [
    i32 0, label %bb.d
    i32 1, label %CheckMemBufferMode.exit
  ]

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.c, align 8, !tbaa !21
  br label %CheckMemBufferMode.exit

CheckMemBufferMode.exit:                          ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %i.g = icmp eq i32 %.val, 0
  br i1 %i.g, label %NeedCompressedAlpha.exit.i, label %bb.e

bb.e:                                             ; preds = %CheckMemBufferMode.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.f, label %NeedCompressedAlpha.exit.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2968
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %.not5.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i, label %NeedCompressedAlpha.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2984
  %i.m = load i32, ptr %i.l, align 8, !tbaa !46
  %.not6.i.i = icmp ne i32 %i.m, 0
  br label %NeedCompressedAlpha.exit.i

NeedCompressedAlpha.exit.i:                       ; preds = %bb.g, %bb.f, %bb.e, %CheckMemBufferMode.exit
  %.0.i.i = phi i1 [ true, %bb.e ], [ true, %CheckMemBufferMode.exit ], [ true, %bb.f ], [ %.not6.i.i, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %NeedCompressedAlpha.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %NeedCompressedAlpha.exit.i
  %i.t = phi ptr [ %i.s, %bb.h ], [ null, %NeedCompressedAlpha.exit.i ] ; 2 uses
  br i1 %.0.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 2968
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi ptr [ %i.v, %bb.j ], [ %i.t, %bb.i ] ; 3 uses
  %i.x = icmp ugt i64 %2, 4294967286
  br i1 %i.x, label %CheckMemBufferMode.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 312        ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48   ; 3 uses
  %i.aa = add i64 %i.z, %2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  %i.ae = ptrtoint ptr %i.t to i64                ; 2 uses
  br i1 %i.ad, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 304       ; 2 uses
  %.val.i = load i64, ptr %i.ah, align 8, !tbaa !47
  %i.ai = sub i64 %i.z, %.val.i
  %i.aj = add i64 %i.ai, %i.ag                    ; 4 uses
  %i.ak = add nuw nsw i64 %2, 4095
  %i.al = add i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, -4096                    ; 2 uses
  %i.an = tail call ptr @WebPSafeMalloc(i64 noundef %i.am, i64 noundef 1) #6 ; 4 uses
  %.not51.i = icmp eq ptr %i.an, null
  br i1 %.not51.i, label %CheckMemBufferMode.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not50.i = icmp eq ptr %i.w, null
  br i1 %.not50.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.w, i64 %i.aj, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !28
  tail call void @WebPSafeFree(ptr noundef %i.ao) #6
  store ptr %i.an, ptr %i.n, align 8, !tbaa !28
  store i64 %i.am, ptr %i.ab, align 8, !tbaa !49
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !47
  store i64 %i.aj, ptr %i.y, align 8, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.ap = phi i64 [ %i.aj, %bb.p ], [ %i.z, %bb.l ]
  %i.aq = phi ptr [ %i.an, %bb.p ], [ %i.o, %bb.l ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.as = load i64, ptr %i.y, align 8, !tbaa !48
  %i.at = add i64 %i.as, %2
  store i64 %i.at, ptr %i.y, align 8, !tbaa !48
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ae
  tail call fastcc void @DoRemap(ptr noundef nonnull %0, i64 noundef %i.az)
  %i.ba = tail call fastcc i32 @IDecode(ptr noundef %0)
  br label %CheckMemBufferMode.exit.thread

CheckMemBufferMode.exit.thread:                   ; preds = %bb.c, %bb.k, %bb.m, %bb.b, %bb.a, %bb.q
  %.0 = phi i32 [ %switch.select4.i, %bb.b ], [ 2, %bb.a ], [ %i.ba, %bb.q ], [ 2, %bb.c ], [ 1, %bb.m ], [ 1, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @IDecode(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %.sroa.6.i = alloca [52 x i8], align 4          ; 4 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %1 = alloca %struct.WebPHeaderStructure, align 8 ; 12 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 312        ; 3 uses
  %.val36.i = load i64, ptr %i.j, align 8, !tbaa !48
  %i.k = sub i64 %.val36.i, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store ptr %i.i, ptr %1, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !53
  %i.n = call i32 @WebPParseHeaders(ptr noundef nonnull %1) #6 ; 2 uses
  switch i32 %i.n, label %bb.c [
    i32 7, label %DecodeWebPHeaders.exit
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 8, !tbaa !7
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %IDecError.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = call i32 @VP8ExitCritical(ptr noundef %i.r, ptr noundef nonnull %i.s) #6 ; 0 uses
  br label %IDecError.exit.i

IDecError.exit.i:                                 ; preds = %bb.d, %bb.c
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %DecodeWebPHeaders.exit

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %i.v, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.y, ptr %i.z, align 8, !tbaa !27
  %.not31.i = icmp eq i32 %i.y, 0
  br i1 %.not31.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = call ptr @VP8New() #6                   ; 5 uses
  %.not32.i = icmp eq ptr %i.aa, null
  br i1 %.not32.i, label %DecodeWebPHeaders.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i32 1, ptr %i.ab, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 2968
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 2976
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !59
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !60
  store i32 1, ptr %0, align 8, !tbaa !7
  %i.al = load i64, ptr %i.g, align 8, !tbaa !47
  %i.am = add i64 %i.al, %i.ak                    ; 3 uses
  store i64 %i.am, ptr %i.g, align 8, !tbaa !47
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !61
  %.val9.i.i = load i64, ptr %i.j, align 8, !tbaa !48
  %i.aq = sub i64 %.val9.i.i, %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !62
  br label %DecodeWebPHeaders.exit

bb.h:                                             ; preds = %bb.e
  %i.as = call ptr @VP8LNew() #6                  ; 2 uses
  %.not33.i = icmp eq ptr %i.as, null
  br i1 %.not33.i, label %DecodeWebPHeaders.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.as, ptr %i.at, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !60
  store i32 4, ptr %0, align 8, !tbaa !7
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !47
  %i.ax = add i64 %i.aw, %i.av                    ; 3 uses
  store i64 %i.ax, ptr %i.g, align 8, !tbaa !47
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !61
  %.val9.i37.i = load i64, ptr %i.j, align 8, !tbaa !48
  %i.bb = sub i64 %.val9.i37.i, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !62
  br label %DecodeWebPHeaders.exit

DecodeWebPHeaders.exit:                           ; preds = %bb.b, %IDecError.exit.i, %bb.f, %bb.g, %bb.h, %bb.i
  %.2.i = phi i32 [ 1, %bb.h ], [ %i.n, %IDecError.exit.i ], [ 5, %bb.b ], [ 1, %bb.f ], [ 0, %bb.i ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.pre = load i32, ptr %0, align 8, !tbaa !7
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %DecodeWebPHeaders.exit
  %i.bg = phi i32 [ %.pre, %DecodeWebPHeaders.exit ], [ %i.c, %bb.j ] ; 2 uses
  %.018 = phi i32 [ %.2.i, %DecodeWebPHeaders.exit ], [ 5, %bb.j ]
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !64 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 4 uses
  %i.bn = getelementptr i8, ptr %0, i64 312
  %.val19.i = load i64, ptr %i.bn, align 8, !tbaa !48
  %i.bo = sub i64 %.val19.i, %i.bl                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bp = icmp ult i64 %i.bo, 10
  br i1 %i.bp, label %DecodeVP8FrameHeader.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !19
  %i.bs = call i32 @VP8GetInfo(ptr noundef %i.bm, i64 noundef %i.bo, i64 noundef %i.br, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bt = load i32, ptr %0, align 8, !tbaa !7
  %i.bu = icmp eq i32 %i.bt, 3
  br i1 %i.bu, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = call i32 @VP8ExitCritical(ptr noundef %i.bw, ptr noundef nonnull %i.bx) #6 ; 0 uses
  br label %.sink.split.i

bb.p:                                             ; preds = %bb.m
  %i.bz = load i16, ptr %i.bm, align 1
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !32
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 16
  %i.cf = or disjoint i32 %i.ce, %i.ca
  %i.cg = lshr i32 %i.cf, 5
  %i.ch = add nuw nsw i32 %i.cg, 10
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.bm, ptr %i.ck, align 8, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.bo, ptr %i.cl, align 8, !tbaa !62
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.o, %bb.n
  %.sink.i = phi i32 [ 2, %bb.p ], [ 7, %bb.n ], [ 7, %bb.o ] ; 2 uses
  %.0.ph.i = phi i32 [ 0, %bb.p ], [ 3, %bb.n ], [ 3, %bb.o ]
  store i32 %.sink.i, ptr %0, align 8, !tbaa !7
  br label %DecodeVP8FrameHeader.exit

DecodeVP8FrameHeader.exit:                        ; preds = %bb.l, %.sink.split.i
  %.pr = phi i32 [ 1, %bb.l ], [ %.sink.i, %.sink.split.i ]
  %.0.i = phi i32 [ 5, %bb.l ], [ %.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.q

bb.q:                                             ; preds = %DecodeVP8FrameHeader.exit, %bb.k
  %i.cm = phi i32 [ %.pr, %DecodeVP8FrameHeader.exit ], [ %i.bg, %bb.k ] ; 2 uses
  %.119 = phi i32 [ %.0.i, %DecodeVP8FrameHeader.exit ], [ %.018, %bb.k ]
  %i.cn = icmp eq i32 %i.cm, 2
  br i1 %i.cn, label %bb.r, label %DecodePartition0.exit

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !26 ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cu = getelementptr i8, ptr %0, i64 304       ; 3 uses
  %.val.i = load i64, ptr %i.cu, align 8, !tbaa !47
  %i.cv = getelementptr i8, ptr %0, i64 312
  %.val49.i = load i64, ptr %i.cv, align 8, !tbaa !48
  %i.cw = sub i64 %.val49.i, %.val.i
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !65
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %DecodeVP8LHeader.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = call i32 @VP8GetHeaders(ptr noundef %i.cp, ptr noundef nonnull %i.cq) #6
  %.not.i20 = icmp eq i32 %i.da, 0
  br i1 %.not.i20, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.db = load i32, ptr %i.cp, align 8, !tbaa !67 ; 3 uses
  %i.dc = and i32 %i.db, -3
  %or.cond.i = icmp eq i32 %i.dc, 5
  %.pr42.pre69 = load i32, ptr %0, align 8, !tbaa !7 ; 2 uses
  br i1 %or.cond.i, label %DecodePartition0.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = icmp eq i32 %.pr42.pre69, 3
  br i1 %i.dd, label %.sink.split.sink.split.i, label %DecodePartition0.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.de = load i32, ptr %i.cq, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !69
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !70
  %i.dj = call i32 @WebPAllocateDecBuffer(i32 noundef %i.de, i32 noundef %i.dg, ptr noundef %i.di, ptr noundef %i.cs) #6 ; 4 uses
  store i32 %i.dj, ptr %i.cp, align 8, !tbaa !67
  %.not45.i = icmp eq i32 %i.dj, 0
  br i1 %.not45.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = load i32, ptr %0, align 8, !tbaa !7
  %i.dl = icmp eq i32 %i.dk, 3
  br i1 %i.dl, label %.sink.split.sink.split.i, label %DecodePartition0.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !70
  %i.dn = load i32, ptr %i.cq, align 8, !tbaa !68
  %i.do = load i32, ptr %i.df, align 4, !tbaa !69
  %i.dp = call i32 @VP8GetThreadMethod(ptr noundef %i.dm, ptr noundef null, i32 noundef %i.dn, i32 noundef %i.do) #6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 200
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !71
  %i.dr = load ptr, ptr %i.dh, align 8, !tbaa !70
  call void @VP8InitDithering(ptr noundef %i.dr, ptr noundef nonnull %i.cp) #6
  %i.ds = load ptr, ptr %i.co, align 8, !tbaa !26 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !72 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !73 ; 2 uses
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 4 uses
  %i.eb = icmp eq ptr %i.dv, %i.dx
  br i1 %i.eb, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load i32, ptr %i.ct, align 8, !tbaa !21
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ee = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.ea) #6 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr align 1 %i.ef, i64 %i.ea, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !29
  call void @VP8BitReaderSetBuffer(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.ee, i64 noundef %i.ea) #6
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.x
  %.1.i.ph.i = phi i32 [ 3, %bb.x ], [ 1, %bb.z ] ; 3 uses
  store i32 %.1.i.ph.i, ptr %i.cp, align 8, !tbaa !67
  %i.eh = load i32, ptr %0, align 8, !tbaa !7
  %i.ei = icmp eq i32 %i.eh, 3
  br i1 %i.ei, label %.sink.split.sink.split.i, label %DecodePartition0.exit.thread

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.ej = load i64, ptr %i.cu, align 8, !tbaa !47
  %i.ek = add i64 %i.ej, %i.ea
  store i64 %i.ek, ptr %i.cu, align 8, !tbaa !47
  store i32 0, ptr %i.cp, align 8, !tbaa !67
  %i.el = call i32 @VP8EnterCritical(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq) #6
  %.not47.i = icmp eq i32 %i.el, 0
  br i1 %.not47.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = load i32, ptr %i.cp, align 8, !tbaa !67 ; 2 uses
  %i.en = load i32, ptr %0, align 8, !tbaa !7
  %i.eo = icmp eq i32 %i.en, 3
  br i1 %i.eo, label %.sink.split.sink.split.i, label %DecodePartition0.exit.thread

bb.ae:                                            ; preds = %bb.ac
  store i32 3, ptr %0, align 8, !tbaa !7
  %i.ep = call i32 @VP8InitFrame(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq) #6
  %.not48.i = icmp eq i32 %i.ep, 0
  %.pr42.pre = load i32, ptr %0, align 8, !tbaa !7 ; 2 uses
  br i1 %.not48.i, label %bb.af, label %DecodePartition0.exit

bb.af:                                            ; preds = %bb.ae
  %i.eq = load i32, ptr %i.cp, align 8, !tbaa !67 ; 2 uses
  %i.er = icmp eq i32 %.pr42.pre, 3
  br i1 %i.er, label %.sink.split.sink.split.i, label %DecodePartition0.exit.thread

.sink.split.sink.split.i:                         ; preds = %bb.af, %bb.ad, %bb.ab, %bb.w, %bb.u
  %.1.ph.ph.i = phi i32 [ %i.em, %bb.ad ], [ %i.db, %bb.u ], [ %i.dj, %bb.w ], [ %.1.i.ph.i, %bb.ab ], [ %i.eq, %bb.af ]
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.et = call i32 @VP8ExitCritical(ptr noundef %i.es, ptr noundef nonnull %i.cq) #6 ; 0 uses
  br label %DecodePartition0.exit.thread

DecodePartition0.exit.thread:                     ; preds = %bb.u, %bb.w, %bb.ab, %bb.ad, %bb.af, %.sink.split.sink.split.i
  %.1.ph.i = phi i32 [ %i.dj, %bb.w ], [ %.1.i.ph.i, %bb.ab ], [ %i.em, %bb.ad ], [ %i.eq, %bb.af ], [ %i.db, %bb.u ], [ %.1.ph.ph.i, %.sink.split.sink.split.i ]
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.critedge

DecodePartition0.exit:                            ; preds = %bb.ae, %bb.t, %bb.q
  %.pr42 = phi i32 [ %.pr42.pre69, %bb.t ], [ %.pr42.pre, %bb.ae ], [ %i.cm, %bb.q ] ; 2 uses
  %.2.ph = phi i32 [ 5, %bb.t ], [ 0, %bb.ae ], [ %.119, %bb.q ]
  %i.eu = icmp eq i32 %.pr42, 3
  br i1 %i.eu, label %bb.ag, label %DecodeRemaining.exit

bb.ag:                                            ; preds = %DecodePartition0.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !26 ; 18 uses
  %.not = icmp eq ptr %i.ew, null
  br i1 %.not, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !74
  %.not.i22 = icmp eq i32 %i.ez, 0
  br i1 %.not.i22, label %IDecError.exit.i25, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ah
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 2908 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 412 ; 2 uses
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !75 ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !76
  %i.fe = icmp slt i32 %i.fc, %i.fd
  br i1 %i.fe, label %.lr.ph69.i, label %._crit_edge70.i

.lr.ph69.i:                                       ; preds = %.preheader.i
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 2904 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 408 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 440
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 432 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 2832 ; 3 uses
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.fn = getelementptr i8, ptr %0, i64 304       ; 2 uses
  br label %bb.ai

IDecError.exit.i25:                               ; preds = %bb.ah
  %i.fo = call i32 @VP8ExitCritical(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ex) #6 ; 0 uses
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.critedge

bb.ai:                                            ; preds = %bb.bc, %.lr.ph69.i
  %i.fp = phi i32 [ %i.fc, %.lr.ph69.i ], [ %i.ie, %bb.bc ]
  %i.fq = load i32, ptr %i.ff, align 8, !tbaa !20
  %.not50.i = icmp eq i32 %i.fq, %i.fp
  br i1 %.not50.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fr = call i32 @VP8ParseIntraModeRow(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ew) #6
  %.not51.i = icmp eq i32 %i.fr, 0
  br i1 %.not51.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fs = load i32, ptr %0, align 8, !tbaa !7
  %i.ft = icmp eq i32 %i.fs, 3
  br i1 %i.ft, label %bb.al, label %IDecError.exit56.i

bb.al:                                            ; preds = %bb.ak
  %i.fu = load ptr, ptr %i.ev, align 8, !tbaa !26
  %i.fv = call i32 @VP8ExitCritical(ptr noundef %i.fu, ptr noundef nonnull %i.ex) #6 ; 0 uses
  br label %IDecError.exit56.i

IDecError.exit56.i:                               ; preds = %bb.al, %bb.ak
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.critedge

bb.am:                                            ; preds = %bb.aj
  %i.fw = load i32, ptr %i.fa, align 4, !tbaa !75
  store i32 %i.fw, ptr %i.ff, align 8, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %i.fx = load i32, ptr %i.fh, align 8, !tbaa !77 ; 2 uses
  %i.fy = load i32, ptr %i.fi, align 8, !tbaa !78
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.an
  %.pre.i = load i32, ptr %i.fk, align 8, !tbaa !79
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az, %.lr.ph.preheader.i
  %i.ga = phi i32 [ %i.gn, %bb.az ], [ %.pre.i, %.lr.ph.preheader.i ]
  %i.gb = phi i32 [ %i.hv, %bb.az ], [ %i.fx, %.lr.ph.preheader.i ]
  %i.gc = load i32, ptr %i.fa, align 4, !tbaa !75
  %i.gd = and i32 %i.gc, %i.ga
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [48 x i8], ptr %i.fj, i64 %i.ge ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.gg = load ptr, ptr %i.fl, align 8, !tbaa !80 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -2
  %i.gi = load i16, ptr %i.gh, align 1
  %i.gj = sext i32 %i.gb to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.gf, i64 48, i1 false), !tbaa.struct !81
  %i.gm = call i32 @VP8DecodeMB(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.gf) #6
  %.not53.not.i = icmp eq i32 %i.gm, 0
  %i.gn = load i32, ptr %i.fk, align 8, !tbaa !79 ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0                    ; 2 uses
  br i1 %.not53.not.i, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %.lr.ph.i
  br i1 %i.go, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.val.i24 = load i64, ptr %i.fn, align 8, !tbaa !47
  %i.gp = getelementptr i8, ptr %0, i64 312
  %.val55.i = load i64, ptr %i.gp, align 8, !tbaa !48
  %i.gq = sub i64 %.val55.i, %.val.i24
  %i.gr = icmp ugt i64 %i.gq, 4096
  br i1 %i.gr, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gs = load i32, ptr %0, align 8, !tbaa !7
  %i.gt = icmp eq i32 %i.gs, 3
  br i1 %i.gt, label %bb.ar, label %IDecError.exit57.i

bb.ar:                                            ; preds = %bb.aq
  %i.gu = load ptr, ptr %i.ev, align 8, !tbaa !26
  %i.gv = call i32 @VP8ExitCritical(ptr noundef %i.gu, ptr noundef nonnull %i.ex) #6 ; 0 uses
  br label %IDecError.exit57.i

IDecError.exit57.i:                               ; preds = %bb.ar, %bb.aq
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.thread.i

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !71
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gz = call ptr @WebPGetWorkerInterface() #6
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !84
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  %i.hd = call i32 %i.hb(ptr noundef nonnull %i.hc) #6, !inline_history !86
  %.not54.i = icmp eq i32 %i.hd, 0
  br i1 %.not54.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.he = load i32, ptr %0, align 8, !tbaa !7
  %i.hf = icmp eq i32 %i.he, 3
  br i1 %i.hf, label %bb.av, label %IDecError.exit58.i

bb.av:                                            ; preds = %bb.au
  %i.hg = load ptr, ptr %i.ev, align 8, !tbaa !26
  %i.hh = call i32 @VP8ExitCritical(ptr noundef %i.hg, ptr noundef nonnull %i.ex) #6 ; 0 uses
  br label %IDecError.exit58.i

IDecError.exit58.i:                               ; preds = %bb.av, %bb.au
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.thread.i

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.hi = load ptr, ptr %i.fl, align 8, !tbaa !80
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -2
  store i16 %i.gi, ptr %i.hj, align 1
  %i.hk = load ptr, ptr %i.fl, align 8, !tbaa !80
  %i.hl = load i32, ptr %i.fh, align 8, !tbaa !77
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.hk, i64 %i.hm
  store i16 %i.gl, ptr %i.hn, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gf, ptr noundef nonnull align 4 dereferenceable(48) %.sroa.6.8..sroa_idx.i, i64 48, i1 false), !tbaa.struct !81
  br label %.thread.i

bb.ax:                                            ; preds = %.lr.ph.i
  br i1 %i.go, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !73
  %i.hq = load ptr, ptr %i.fm, align 8, !tbaa !63
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  store i64 %i.ht, ptr %i.fn, align 8, !tbaa !64
  br label %bb.az

.thread.i:                                        ; preds = %bb.aw, %IDecError.exit58.i, %IDecError.exit57.i
  %.2.ph.i = phi i32 [ 5, %bb.aw ], [ 3, %IDecError.exit57.i ], [ 3, %IDecError.exit58.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %DecodeRemaining.exitthread-pre-split

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.hu = load i32, ptr %i.fh, align 8, !tbaa !77
  %i.hv = add nsw i32 %i.hu, 1                    ; 3 uses
  store i32 %i.hv, ptr %i.fh, align 8, !tbaa !77
  %i.hw = load i32, ptr %i.fi, align 8, !tbaa !78
  %i.hx = icmp slt i32 %i.hv, %i.hw
  br i1 %i.hx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !87

._crit_edge.i:                                    ; preds = %bb.az, %bb.an
  call void @VP8InitScanline(ptr noundef nonnull %i.ew) #6
  %i.hy = call i32 @VP8ProcessRow(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ex) #6
  %.not52.i = icmp eq i32 %i.hy, 0
  br i1 %.not52.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %._crit_edge.i
  %i.hz = load i32, ptr %0, align 8, !tbaa !7
  %i.ia = icmp eq i32 %i.hz, 3
  br i1 %i.ia, label %bb.bb, label %IDecError.exit59.i

bb.bb:                                            ; preds = %bb.ba
  %i.ib = load ptr, ptr %i.ev, align 8, !tbaa !26
  %i.ic = call i32 @VP8ExitCritical(ptr noundef %i.ib, ptr noundef nonnull %i.ex) #6 ; 0 uses
  br label %IDecError.exit59.i

IDecError.exit59.i:                               ; preds = %bb.bb, %bb.ba
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.critedge

bb.bc:                                            ; preds = %._crit_edge.i
  %i.id = load i32, ptr %i.fa, align 4, !tbaa !75
  %i.ie = add nsw i32 %i.id, 1                    ; 3 uses
  store i32 %i.ie, ptr %i.fa, align 4, !tbaa !75
  %i.if = load i32, ptr %i.fb, align 4, !tbaa !76
  %i.ig = icmp slt i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.ai, label %._crit_edge70.i, !llvm.loop !89

._crit_edge70.i:                                  ; preds = %bb.bc, %.preheader.i
  %i.ih = call i32 @VP8ExitCritical(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ex) #6
  %.not49.i = icmp eq i32 %i.ih, 0
  br i1 %.not49.i, label %IDecError.exit60.i, label %bb.bd

IDecError.exit60.i:                               ; preds = %._crit_edge70.i
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.critedge

bb.bd:                                            ; preds = %._crit_edge70.i
  store i32 0, ptr %i.ey, align 4, !tbaa !74
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !25 ; 2 uses
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !22 ; 3 uses
  store i32 6, ptr %0, align 8, !tbaa !7
  %.not.i.i23 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i23, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.in = load i32, ptr %i.im, align 4, !tbaa !90
  %.not24.i.i = icmp eq i32 %i.in, 0
  br i1 %.not24.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.io = call i32 @WebPFlipBuffer(ptr noundef %i.il) #6 ; 2 uses
  %.not25.i.i = icmp eq i32 %i.io, 0
  br i1 %.not25.i.i, label %bb.bg, label %DecodeRemaining.exitthread-pre-split

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !23 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.iq, null
  br i1 %.not26.i.i, label %DecodeRemaining.exitthread-pre-split, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ir = call i32 @WebPCopyDecBufferPixels(ptr noundef %i.il, ptr noundef nonnull %i.iq) #6 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @WebPFreeDecBuffer(ptr noundef nonnull %i.is) #6
  %.not27.i.i = icmp eq i32 %i.ir, 0
  br i1 %.not27.i.i, label %.thread.i.i, label %DecodeRemaining.exitthread-pre-split

.thread.i.i:                                      ; preds = %bb.bh
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.il, ptr noundef nonnull align 8 dereferenceable(120) %i.it, i64 120, i1 false), !tbaa.struct !92
  store ptr null, ptr %i.ip, align 8, !tbaa !23
  br label %DecodeRemaining.exitthread-pre-split

DecodeRemaining.exitthread-pre-split:             ; preds = %.thread.i, %bb.bf, %bb.bg, %bb.bh, %.thread.i.i
  %.4.ph = phi i32 [ 0, %bb.bg ], [ 0, %.thread.i.i ], [ %i.io, %bb.bf ], [ %i.ir, %bb.bh ], [ %.2.ph.i, %.thread.i ]
  %.pr44 = load i32, ptr %0, align 8, !tbaa !7
  br label %DecodeRemaining.exit

DecodeRemaining.exit:                             ; preds = %DecodeRemaining.exitthread-pre-split, %DecodePartition0.exit
  %i.iu = phi i32 [ %.pr44, %DecodeRemaining.exitthread-pre-split ], [ %.pr42, %DecodePartition0.exit ]
  %.4 = phi i32 [ %.4.ph, %DecodeRemaining.exitthread-pre-split ], [ %.2.ph, %DecodePartition0.exit ]
  %i.iv = icmp eq i32 %i.iu, 4
  br i1 %i.iv, label %bb.bi, label %DecodeVP8LHeader.exit

bb.bi:                                            ; preds = %DecodeRemaining.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !26 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !66
  %i.jb = getelementptr i8, ptr %0, i64 304
  %.val.i26 = load i64, ptr %i.jb, align 8, !tbaa !47
  %i.jc = getelementptr i8, ptr %0, i64 312
  %.val30.i = load i64, ptr %i.jc, align 8, !tbaa !48
  %i.jd = sub i64 %.val30.i, %.val.i26            ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !19
  %i.jg = lshr i64 %i.jf, 3
  %i.jh = icmp ult i64 %i.jd, %i.jg
  br i1 %i.jh, label %DecodeVP8LHeader.exit.sink.split, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ji = call i32 @VP8LDecodeHeader(ptr noundef %i.iy, ptr noundef nonnull %i.iw) #6
  %.not.i27 = icmp eq i32 %i.ji, 0
  br i1 %.not.i27, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.jj = load i32, ptr %i.iy, align 8, !tbaa !93 ; 3 uses
  %i.jk = icmp eq i32 %i.jj, 3
  br i1 %i.jk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jl = load i64, ptr %i.je, align 8, !tbaa !19
  %i.jm = icmp ult i64 %i.jd, %i.jl
  br i1 %i.jm, label %DecodeVP8LHeader.exit.sink.split, label %.thread35.i

bb.bm:                                            ; preds = %bb.bk
  %i.jn = and i32 %i.jj, -3
  %or.cond.i.i = icmp eq i32 %i.jn, 5
  br i1 %or.cond.i.i, label %DecodeVP8LHeader.exit, label %.thread35.i

.thread35.i:                                      ; preds = %bb.bm, %bb.bl
  %i.jo = load i32, ptr %0, align 8, !tbaa !7
  %i.jp = icmp eq i32 %i.jo, 3
  br i1 %i.jp, label %bb.bn, label %IDecError.exit.i.i

bb.bn:                                            ; preds = %.thread35.i
  %i.jq = load ptr, ptr %i.ix, align 8, !tbaa !26
  %i.jr = call i32 @VP8ExitCritical(ptr noundef %i.jq, ptr noundef nonnull %i.iw) #6 ; 0 uses
  br label %IDecError.exit.i.i

IDecError.exit.i.i:                               ; preds = %bb.bn, %.thread35.i
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.critedge

bb.bo:                                            ; preds = %bb.bj
  %i.js = load i32, ptr %i.iw, align 8, !tbaa !68
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !69
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !70
  %i.jx = call i32 @WebPAllocateDecBuffer(i32 noundef %i.js, i32 noundef %i.ju, ptr noundef %i.jw, ptr noundef %i.ja) #6 ; 3 uses
  store i32 %i.jx, ptr %i.iy, align 8, !tbaa !93
  %.not29.i = icmp eq i32 %i.jx, 0
  br i1 %.not29.i, label %DecodeVP8LHeader.exit.thread50, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jy = load i32, ptr %0, align 8, !tbaa !7
  %i.jz = icmp eq i32 %i.jy, 3
  br i1 %i.jz, label %bb.bq, label %IDecError.exit.i28

bb.bq:                                            ; preds = %bb.bp
  %i.ka = load ptr, ptr %i.ix, align 8, !tbaa !26
  %i.kb = call i32 @VP8ExitCritical(ptr noundef %i.ka, ptr noundef nonnull %i.iw) #6 ; 0 uses
  br label %IDecError.exit.i28

IDecError.exit.i28:                               ; preds = %bb.bq, %bb.bp
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.critedge

DecodeVP8LHeader.exit.thread50:                   ; preds = %bb.bo
  store i32 5, ptr %0, align 8, !tbaa !7
  br label %bb.br

DecodeVP8LHeader.exit.sink.split:                 ; preds = %bb.bl, %bb.bi
  store i32 5, ptr %i.iy, align 8, !tbaa !93
  br label %DecodeVP8LHeader.exit

DecodeVP8LHeader.exit:                            ; preds = %DecodeVP8LHeader.exit.sink.split, %bb.r, %bb.bm, %DecodeRemaining.exit
  %.5.ph.ph = phi i32 [ %.4, %DecodeRemaining.exit ], [ 5, %bb.r ], [ 5, %bb.bm ], [ 5, %DecodeVP8LHeader.exit.sink.split ]
  %.pr47.pr = load i32, ptr %0, align 8, !tbaa !7
  %i.kc = icmp eq i32 %.pr47.pr, 5
  br i1 %i.kc, label %bb.br, label %.critedge

bb.br:                                            ; preds = %DecodeVP8LHeader.exit.thread50, %DecodeVP8LHeader.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !26 ; 3 uses
  %i.kf = getelementptr i8, ptr %0, i64 304
  %.val.i31 = load i64, ptr %i.kf, align 8, !tbaa !47
  %i.kg = getelementptr i8, ptr %0, i64 312
  %.val12.i = load i64, ptr %i.kg, align 8, !tbaa !48
  %i.kh = sub i64 %.val12.i, %.val.i31
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !19
  %i.kk = icmp ult i64 %i.kh, %i.kj
  %i.kl = zext i1 %i.kk to i32
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 80
  store i32 %i.kl, ptr %i.km, align 8, !tbaa !104
  %i.kn = call i32 @VP8LDecodeImage(ptr noundef %i.ke) #6
end_hunk_0
