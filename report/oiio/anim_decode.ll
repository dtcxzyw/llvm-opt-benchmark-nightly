inline.NumInlined: 25
inline.NumDeleted: 16
begin_hunk_0_@WebPAnimDecoderNewInternal:bb.a
  store ptr %i.al, ptr %i.am, align 8, !tbaa !34
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %ApplyDecoderOptions.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %i.t, align 8, !tbaa !29
  %i.ap = shl i32 %i.ao, 2
  %i.aq = zext i32 %i.ap to i64
  %i.ar = load i32, ptr %i.w, align 4, !tbaa !30
  %i.as = zext i32 %i.ar to i64
  %i.at = call ptr @WebPSafeCalloc(i64 noundef %i.aq, i64 noundef %i.as) #9 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  store ptr %i.at, ptr %i.au, align 8, !tbaa !35
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %ApplyDecoderOptions.exit.thread, label %WebPAnimDecoderReset.exit

WebPAnimDecoderReset.exit:                        ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  store i32 0, ptr %i.aw, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  call void @WebPDemuxReleaseIterator(ptr noundef nonnull %i.ax) #9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 404
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.ax, i8 0, i64 84, i1 false)
  store i32 1, ptr %i.ay, align 4, !tbaa !37
  br label %WebPAnimDecoderDelete.exit

ApplyDecoderOptions.exit.thread:                  ; preds = %.thread, %bb.e, %bb.h, %bb.g, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  call void @WebPDemuxReleaseIterator(ptr noundef nonnull %i.az) #9
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !28
  call void @WebPDemuxDelete(ptr noundef %i.ba) #9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !34
  call void @WebPSafeFree(ptr noundef %i.bc) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35
  call void @WebPSafeFree(ptr noundef %i.be) #9
  call void @WebPSafeFree(ptr noundef nonnull %i.f) #9
  br label %WebPAnimDecoderDelete.exit

WebPAnimDecoderDelete.exit:                       ; preds = %ApplyDecoderOptions.exit.thread, %bb.c, %bb.b, %bb.a, %WebPAnimDecoderReset.exit
  %.0 = phi ptr [ %i.f, %WebPAnimDecoderReset.exit ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %ApplyDecoderOptions.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @WebPSafeCalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @WebPDemuxGetI(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @WebPAnimDecoderReset(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @WebPDemuxReleaseIterator(ptr noundef nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 404
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.b, i8 0, i64 84, i1 false)
  store i32 1, ptr %i.c, align 4, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @WebPAnimDecoderDelete(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @WebPDemuxReleaseIterator(ptr noundef nonnull %i.a) #9
  %i.b = load ptr, ptr %0, align 8, !tbaa !28
  tail call void @WebPDemuxDelete(ptr noundef %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call void @WebPSafeFree(ptr noundef %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @WebPSafeFree(ptr noundef %i.f) #9
  tail call void @WebPSafeFree(ptr noundef nonnull %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @WebPAnimDecoderGetInfo(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %i.c, i64 36, i1 false), !tbaa.struct !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPAnimDecoderGetNext(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.WebPIterator, align 8       ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.t, label %WebPAnimDecoderHasMoreFrames.exit

WebPAnimDecoderHasMoreFrames.exit:                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33
  %.not139 = icmp sgt i32 %i.e, %i.g
  br i1 %.not139, label %bb.t, label %bb.b

bb.b:                                             ; preds = %WebPAnimDecoderHasMoreFrames.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29   ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !28
  %i.o = call i32 @WebPDemuxGetFrame(ptr noundef %i.n, i32 noundef %i.e, ptr noundef nonnull %3) #9
  %.not108 = icmp eq i32 %i.o, 0
  br i1 %.not108, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40
  %i.t = add nsw i32 %i.s, %i.q                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41
  %i.x = load i32, ptr %3, align 8, !tbaa !42
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %IsKeyFrame.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  %or.cond134 = select i1 %.not.i, i1 true, i1 %i.ad
  br i1 %or.cond134, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.ai = icmp ne i32 %i.af, %i.i
  %i.aj = icmp ne i32 %i.ah, %i.k
  %.not16.i = or i1 %i.ai, %i.aj
  br i1 %.not16.i, label %bb.f, label %IsKeyFrame.exit.thread

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !46
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %IsKeyFrame.exit, label %IsKeyFrame.exit.thread128

IsKeyFrame.exit:                                  ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !45
  %i.ar = icmp eq i32 %i.ao, %i.i
  %i.as = icmp eq i32 %i.aq, %i.k
  %i.at = and i1 %i.ar, %i.as
  %4 = icmp ne i32 %i.w, 0
  %5 = or i1 %4, %i.at
  br i1 %5, label %IsKeyFrame.exit.thread, label %IsKeyFrame.exit.thread128

IsKeyFrame.exit.thread:                           ; preds = %bb.c, %bb.e, %IsKeyFrame.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.aw = zext i32 %i.i to i64
  %i.ax = zext i32 %i.k to i64
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %i.az = mul i64 %i.ay, %i.ax
  call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.az, i1 false)
  br label %bb.g

IsKeyFrame.exit.thread128:                        ; preds = %bb.f, %IsKeyFrame.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = zext i32 %i.i to i64
  %i.bf = zext i32 %i.k to i64
  %i.bg = shl nuw nsw i64 %i.be, 2
  %i.bh = mul i64 %i.bg, %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr readonly align 1 %i.bb, i64 %i.bh, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %IsKeyFrame.exit.thread128, %IsKeyFrame.exit.thread
  %6 = phi i1 [ false, %IsKeyFrame.exit.thread128 ], [ true, %IsKeyFrame.exit.thread ]
  %.0.i114126 = phi i32 [ 0, %IsKeyFrame.exit.thread128 ], [ 1, %IsKeyFrame.exit.thread ]
  %i.bi = shl i32 %i.i, 2                         ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !45
  %i.bp = sext i32 %i.bo to i64
  %i.bq = zext i32 %i.bi to i64                   ; 2 uses
  %i.br = mul nsw i64 %i.bp, %i.bq
  %i.bs = load i32, ptr %i.bj, align 4, !tbaa !47
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.bt, %i.bq
  %i.bv = load i32, ptr %i.bk, align 8, !tbaa !48
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 2
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bi, ptr %i.cc, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.br, ptr %i.cd, align 8, !tbaa !53
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.bu
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.bx
  store ptr %i.ch, ptr %i.bm, align 8, !tbaa !54
  %i.ci = call i32 @WebPDecode(ptr noundef %i.cb, i64 noundef %i.bz, ptr noundef nonnull %i.bn) #9
  %.not109 = icmp eq i32 %i.ci, 0
  br i1 %.not109, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.cj = load i32, ptr %3, align 8, !tbaa !42
  %i.ck = icmp slt i32 %i.cj, 2
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.cm = load i32, ptr %i.cl, align 4
  %7 = icmp ne i32 %i.cm, 0
  %or.cond6.not112 = select i1 %i.ck, i1 true, i1 %7
  %or.cond8 = or i1 %6, %or.cond6.not112
  br i1 %or.cond8, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !55
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = load i32, ptr %i.bl, align 4, !tbaa !45
  %i.cr = icmp sgt i32 %i.cq, 0                   ; 2 uses
  br i1 %i.cp, label %.preheader, label %.preheader140

.preheader140:                                    ; preds = %bb.i
  br i1 %i.cr, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader140
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %bb.k

.preheader:                                       ; preds = %bb.i
  br i1 %i.cr, label %.lr.ph144, label %.loopexit

.lr.ph144:                                        ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph144, %bb.j
  %.0101143 = phi i32 [ 0, %.lr.ph144 ], [ %i.dl, %bb.j ] ; 2 uses
  %i.da = load i32, ptr %i.bj, align 4, !tbaa !47
  %i.db = add nsw i32 %i.da, %.0101143
  %i.dc = mul i32 %i.db, %i.i
  %i.dd = load i32, ptr %i.bk, align 8, !tbaa !48
  %i.de = add i32 %i.dc, %i.dd
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.df
  %i.di = load ptr, ptr %i.cy, align 8, !tbaa !35
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.df
  %i.dk = load i32, ptr %i.cz, align 8, !tbaa !44
  call void %i.m(ptr noundef %i.dh, ptr noundef %i.dj, i32 noundef %i.dk) #9
  %i.dl = add nuw nsw i32 %.0101143, 1            ; 2 uses
  %i.dm = load i32, ptr %i.bl, align 4, !tbaa !45
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.j, label %.loopexit, !llvm.loop !56

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %.0102142 = phi i32 [ 0, %.lr.ph ], [ %i.eu, %bb.o ] ; 2 uses
  %i.do = load i32, ptr %i.bj, align 4, !tbaa !47
  %i.dp = add nsw i32 %i.do, %.0102142            ; 4 uses
  %i.dq = load i32, ptr %i.bk, align 8, !tbaa !48 ; 5 uses
  %i.dr = load i32, ptr %i.cs, align 8, !tbaa !44 ; 2 uses
  %i.ds = add nsw i32 %i.dr, %i.dq                ; 3 uses
  %i.dt = load i32, ptr %i.ct, align 8, !tbaa !48 ; 4 uses
  %i.du = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.dv = add nsw i32 %i.du, %i.dt                ; 4 uses
  %i.dw = load i32, ptr %i.cv, align 4, !tbaa !47 ; 2 uses
  %i.dx = load i32, ptr %i.cw, align 4, !tbaa !45
  %i.dy = icmp sge i32 %i.dp, %i.dw
  %i.dz = add nsw i32 %i.dx, %i.dw
  %.not.i115 = icmp slt i32 %i.dp, %i.dz
  %or.cond.i = select i1 %i.dy, i1 %.not.i115, i1 false
  %.not39.i = icmp slt i32 %i.dq, %i.dv
  %or.cond43.i = select i1 %or.cond.i, i1 %.not39.i, i1 false
  %.not40.i = icmp sgt i32 %i.ds, %i.dt
  %or.cond135 = select i1 %or.cond43.i, i1 %.not40.i, i1 false
  br i1 %or.cond135, label %bb.l, label %FindBlendRangeAtRow.exit

bb.l:                                             ; preds = %bb.k
  %i.ea = icmp slt i32 %i.dq, %i.dt
  %i.eb = sub nsw i32 %i.dt, %i.dq
  %i.ec = icmp sgt i32 %i.ds, %i.dv               ; 2 uses
  %i.ed = sub nsw i32 %i.ds, %i.dv
  %spec.select137 = select i1 %i.ec, i32 %i.dv, i32 -1 ; 2 uses
  %spec.select138 = select i1 %i.ec, i32 %i.ed, i32 0 ; 2 uses
  br i1 %i.ea, label %FindBlendRangeAtRow.exit, label %FindBlendRangeAtRow.exit.thread

FindBlendRangeAtRow.exit:                         ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %i.dr, %bb.k ], [ %i.eb, %bb.l ] ; 2 uses
  %.0120 = phi i32 [ -1, %bb.k ], [ %spec.select137, %bb.l ] ; 2 uses
  %.0119 = phi i32 [ 0, %bb.k ], [ %spec.select138, %bb.l ] ; 2 uses
  %i.ee = icmp sgt i32 %.1, 0
  br i1 %i.ee, label %bb.m, label %FindBlendRangeAtRow.exit.thread

bb.m:                                             ; preds = %FindBlendRangeAtRow.exit
  %i.ef = mul i32 %i.dp, %i.i
  %i.eg = add i32 %i.dq, %i.ef
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load ptr, ptr %i.cx, align 8, !tbaa !35
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eh
  call void %i.m(ptr noundef %i.ej, ptr noundef %i.el, i32 noundef %.1) #9
  br label %FindBlendRangeAtRow.exit.thread

FindBlendRangeAtRow.exit.thread:                  ; preds = %bb.l, %bb.m, %FindBlendRangeAtRow.exit
  %.0119161 = phi i32 [ %.0119, %FindBlendRangeAtRow.exit ], [ %.0119, %bb.m ], [ %spec.select138, %bb.l ] ; 2 uses
  %.0120160 = phi i32 [ %.0120, %FindBlendRangeAtRow.exit ], [ %.0120, %bb.m ], [ %spec.select137, %bb.l ]
  %i.em = icmp sgt i32 %.0119161, 0
  br i1 %i.em, label %bb.n, label %bb.o

bb.n:                                             ; preds = %FindBlendRangeAtRow.exit.thread
  %i.en = mul i32 %i.dp, %i.i
  %i.eo = add i32 %.0120160, %i.en
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ep
  %i.es = load ptr, ptr %i.cx, align 8, !tbaa !35
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ep
  call void %i.m(ptr noundef %i.er, ptr noundef %i.et, i32 noundef %.0119161) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %FindBlendRangeAtRow.exit.thread
  %i.eu = add nuw nsw i32 %.0102142, 1            ; 2 uses
  %i.ev = load i32, ptr %i.bl, align 4, !tbaa !45
  %i.ew = icmp slt i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.k, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %bb.o, %bb.j, %.preheader140, %.preheader, %bb.h
  store i32 %i.t, ptr %i.p, align 8, !tbaa !36
  call void @WebPDemuxReleaseIterator(ptr noundef nonnull %i.u) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false), !tbaa.struct !59
  store i32 %.0.i114126, ptr %i.v, align 8, !tbaa !41
  %i.ex = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !35
  %i.fa = zext i32 %i.i to i64
  %i.fb = zext i32 %i.k to i64
  %i.fc = shl nuw nsw i64 %i.fa, 2
  %i.fd = mul i64 %i.fc, %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ez, ptr readonly align 1 %i.ex, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !55
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.p, label %ZeroFillFrameRect.exit

bb.p:                                             ; preds = %.loopexit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !63 ; 4 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i, label %ZeroFillFrameRect.exit

.lr.ph.i:                                         ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !65
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !66
  %i.fq = load ptr, ptr %i.ey, align 8, !tbaa !35
  %i.fr = mul nsw i32 %i.fn, %i.bi
  %i.fs = shl nsw i32 %i.fp, 2
  %i.ft = add nsw i32 %i.fs, %i.fr
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fq, i64 %i.fu ; 2 uses
  %i.fw = shl nsw i32 %i.fl, 2
  %i.fx = sext i32 %i.fw to i64                   ; 9 uses
  %i.fy = sext i32 %i.bi to i64                   ; 9 uses
  %xtraiter = and i32 %i.fi, 7                    ; 3 uses
  %i.fz = icmp ult i32 %i.fi, 8
  br i1 %i.fz, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.fi, 2147483640
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.new
  %.01011.i = phi ptr [ %i.fv, %.lr.ph.i.new ], [ %i.gh, %bb.q ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.q ]
  call void @llvm.memset.p0.i64(ptr align 1 %.01011.i, i8 0, i64 %i.fx, i1 false)
  %i.ga = getelementptr inbounds i8, ptr %.01011.i, i64 %i.fy ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ga, i8 0, i64 %i.fx, i1 false)
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %i.fy ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gb, i8 0, i64 %i.fx, i1 false)
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.fy ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gc, i8 0, i64 %i.fx, i1 false)
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %i.fy ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gd, i8 0, i64 %i.fx, i1 false)
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.fy ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.fx, i1 false)
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.fy ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gf, i8 0, i64 %i.fx, i1 false)
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fy ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gg, i8 0, i64 %i.fx, i1 false)
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fy ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %ZeroFillFrameRect.exit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !67

ZeroFillFrameRect.exit.loopexit.unr-lcssa:        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZeroFillFrameRect.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ZeroFillFrameRect.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01011.i.epil.init = phi ptr [ %i.fv, %.lr.ph.i ], [ %i.gh, %ZeroFillFrameRect.exit.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
end_hunk_0
