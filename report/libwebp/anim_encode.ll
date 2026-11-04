Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/anim_encode?download=true
inline.NumInlined: 122
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@MinimizeChangeRectangle:bb.a
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %IsEmptyRect.exit.a, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %.not108.not155 = icmp sgt i32 %i.hb, 0
  br i1 %.not108.not155, label %.lr.ph157, label %IsEmptyRect.exit.thread

.lr.ph157:                                        ; preds = %bb.t
  %i.hd = load i32, ptr %i.ev, align 4, !tbaa !43 ; 4 uses
  %i.he = add nsw i32 %i.hb, -1
  %.199154 = add i32 %i.he, %i.hd                 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !46
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !47 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !46
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !47 ; 2 uses
  %i.hn = sext i32 %.199154 to i64                ; 2 uses
  %i.ho = sext i32 %i.cc to i64                   ; 2 uses
  %i.hp = sext i32 %i.hd to i64                   ; 2 uses
  %invariant.gep222 = getelementptr [4 x i8], ptr %i.hg, i64 %i.ho ; 2 uses
  %invariant.gep224 = getelementptr [4 x i8], ptr %i.hk, i64 %i.ho ; 2 uses
  %i.hq = icmp sgt i32 %i.eu, 0                   ; 2 uses
  br i1 %.not.not, label %call.1132.us.preheader, label %call.0131.preheader

call.0131.preheader:                              ; preds = %.lr.ph157
  %i.hr = sext i32 %i.hm to i64
  %i.hs = sext i32 %i.hi to i64
  br label %call.0131

call.1132.us.preheader:                           ; preds = %.lr.ph157
  %i.ht = sext i32 %i.hi to i64
  %i.hu = sext i32 %i.hm to i64
  %i.hv = mul nsw i32 %i.g, 255                   ; 3 uses
  br i1 %i.hq, label %call.1132.us.us, label %call.1132.us.preheader339

call.1132.us.preheader339:                        ; preds = %call.1132.us.preheader
  %smin383 = tail call i32 @llvm.smin.i32(i32 %i.hd, i32 %.199154)
  %i.hw = sub i32 %smin383, %i.hd                 ; 2 uses
  store i32 %i.hw, ptr %i.ew, align 4, !tbaa !45
  br label %.thread118

call.1132.us.us:                                  ; preds = %call.1132.us.preheader, %ComparePixelsLossy.exit272.loopexit.us
  %i.hx = phi i32 [ %i.jc, %ComparePixelsLossy.exit272.loopexit.us ], [ %i.hb, %call.1132.us.preheader ] ; 5 uses
  %indvars.iv184.us = phi i64 [ %indvars.iv.next185.us, %ComparePixelsLossy.exit272.loopexit.us ], [ %i.hn, %call.1132.us.preheader ] ; 4 uses
  %i.hy = mul nsw i64 %indvars.iv184.us, %i.hu
  %gep225.us = getelementptr [4 x i8], ptr %invariant.gep224, i64 %i.hy
  %i.hz = mul nsw i64 %indvars.iv184.us, %i.ht
  %gep223.us = getelementptr [4 x i8], ptr %invariant.gep222, i64 %i.hz
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %call.1132.us.us
  %.in.i265.us = phi i32 [ %i.eu, %call.1132.us.us ], [ %i.ia, %bb.x ] ; 2 uses
  %.0914.i266.us = phi ptr [ %gep223.us, %call.1132.us.us ], [ %i.iz, %bb.x ] ; 2 uses
  %.01013.i267.us = phi ptr [ %gep225.us, %call.1132.us.us ], [ %i.ja, %bb.x ] ; 2 uses
  %i.ia = add nsw i32 %.in.i265.us, -1
  %i.ib = load i32, ptr %.0914.i266.us, align 4, !tbaa !12 ; 4 uses
  %i.ic = load i32, ptr %.01013.i267.us, align 4, !tbaa !12 ; 4 uses
  %i.id = lshr i32 %i.ib, 24                      ; 4 uses
  %i.ie = lshr i32 %i.ib, 8
  %i.if = and i32 %i.ie, 255
  %i.ig = and i32 %i.ib, 255
  %i.ih = lshr i32 %i.ic, 24
  %i.ii = lshr i32 %i.ic, 8
  %i.ij = and i32 %i.ii, 255
  %i.ik = and i32 %i.ic, 255
  %i.il = icmp eq i32 %i.id, %i.ih
  br i1 %i.il, label %bb.v, label %.thread118

bb.v:                                             ; preds = %bb.u
  %i.im = lshr i32 %i.ic, 16
  %i.in = and i32 %i.im, 255
  %i.io = lshr i32 %i.ib, 16
  %i.ip = and i32 %i.io, 255
  %i.iq = sub nsw i32 %i.ip, %i.in
  %i.ir = tail call i32 @llvm.abs.i32(i32 %i.iq, i1 true)
  %i.is = mul nuw nsw i32 %i.ir, %i.id
  %.not.i.i268.us = icmp sgt i32 %i.is, %i.hv
  br i1 %.not.i.i268.us, label %.thread118, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.it = sub nsw i32 %i.if, %i.ij
  %i.iu = tail call i32 @llvm.abs.i32(i32 %i.it, i1 true)
  %i.iv = mul nuw nsw i32 %i.iu, %i.id
  %.not23.i.i269.us = icmp samesign ugt i32 %i.iv, %i.hv
  br i1 %.not23.i.i269.us, label %.thread118, label %PixelsAreSimilar.exit.i270.us

PixelsAreSimilar.exit.i270.us:                    ; preds = %bb.w
  %i.iw = sub nsw i32 %i.ig, %i.ik
  %i.ix = tail call i32 @llvm.abs.i32(i32 %i.iw, i1 true)
  %i.iy = mul nuw nsw i32 %i.ix, %i.id
  %.not12.i271.us = icmp samesign ugt i32 %i.iy, %i.hv
  br i1 %.not12.i271.us, label %.thread118, label %bb.x

bb.x:                                             ; preds = %PixelsAreSimilar.exit.i270.us
  %i.iz = getelementptr inbounds nuw i8, ptr %.0914.i266.us, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %.01013.i267.us, i64 4
  %i.jb = icmp samesign ugt i32 %.in.i265.us, 1
  br i1 %i.jb, label %bb.u, label %ComparePixelsLossy.exit272.loopexit.us, !llvm.loop !108

ComparePixelsLossy.exit272.loopexit.us:           ; preds = %bb.x
  %i.jc = add nsw i32 %i.hx, -1                   ; 3 uses
  store i32 %i.jc, ptr %i.ew, align 4, !tbaa !45
  %indvars.iv.next185.us = add nsw i64 %indvars.iv184.us, -1
  %.not108.not.us.us = icmp sgt i64 %indvars.iv184.us, %i.hp
  br i1 %.not108.not.us.us, label %call.1132.us.us, label %.thread118, !llvm.loop !111

call.0131:                                        ; preds = %call.0131.preheader, %.loopexit295
  %i.jd = phi i32 [ %i.hb, %call.0131.preheader ], [ %i.jm, %.loopexit295 ] ; 2 uses
  %indvars.iv181 = phi i64 [ %i.hn, %call.0131.preheader ], [ %indvars.iv.next182, %.loopexit295 ] ; 4 uses
  br i1 %i.hq, label %.lr.ph.i274.preheader, label %.loopexit295

.lr.ph.i274.preheader:                            ; preds = %call.0131
  %i.je = mul nsw i64 %indvars.iv181, %i.hr
  %gep221 = getelementptr [4 x i8], ptr %invariant.gep224, i64 %i.je
  %i.jf = mul nsw i64 %indvars.iv181, %i.hs
  %gep219 = getelementptr [4 x i8], ptr %invariant.gep222, i64 %i.jf
  br label %.lr.ph.i274

.lr.ph.i274:                                      ; preds = %.lr.ph.i274.preheader, %bb.y
  %.in.i275 = phi i32 [ %i.ji, %bb.y ], [ %i.eu, %.lr.ph.i274.preheader ] ; 2 uses
  %.0811.i276 = phi ptr [ %i.jj, %bb.y ], [ %gep219, %.lr.ph.i274.preheader ] ; 2 uses
  %.0910.i277 = phi ptr [ %i.jk, %bb.y ], [ %gep221, %.lr.ph.i274.preheader ] ; 2 uses
  %i.jg = load i32, ptr %.0811.i276, align 4, !tbaa !12
  %i.jh = load i32, ptr %.0910.i277, align 4, !tbaa !12
  %.not.i278 = icmp eq i32 %i.jg, %i.jh
  br i1 %.not.i278, label %bb.y, label %.thread118

bb.y:                                             ; preds = %.lr.ph.i274
  %i.ji = add nsw i32 %.in.i275, -1
  %i.jj = getelementptr inbounds nuw i8, ptr %.0811.i276, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.0910.i277, i64 4
  %i.jl = icmp sgt i32 %.in.i275, 1
  br i1 %i.jl, label %.lr.ph.i274, label %.loopexit295, !llvm.loop !106

.loopexit295:                                     ; preds = %bb.y, %call.0131
  %i.jm = add nsw i32 %i.jd, -1                   ; 3 uses
  store i32 %i.jm, ptr %i.ew, align 4, !tbaa !45
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, -1
  %.not108.not = icmp sgt i64 %indvars.iv181, %i.hp
  br i1 %.not108.not, label %call.0131, label %.thread118, !llvm.loop !111

.thread118:                                       ; preds = %.loopexit295, %.lr.ph.i274, %ComparePixelsLossy.exit272.loopexit.us, %PixelsAreSimilar.exit.i270.us, %bb.w, %bb.v, %bb.u, %call.1132.us.preheader339
  %i.jn = phi i32 [ %i.hx, %PixelsAreSimilar.exit.i270.us ], [ %i.hw, %call.1132.us.preheader339 ], [ %i.jd, %.lr.ph.i274 ], [ %i.jc, %ComparePixelsLossy.exit272.loopexit.us ], [ %i.hx, %bb.u ], [ %i.hx, %bb.v ], [ %i.hx, %bb.w ], [ %i.jm, %.loopexit295 ]
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %IsEmptyRect.exit.a, label %IsEmptyRect.exit.thread

IsEmptyRect.exit.a:                               ; preds = %.thread118, %.loopexit, %.thread112, %.loopexit133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %IsEmptyRect.exit.thread

IsEmptyRect.exit.thread:                          ; preds = %bb.t, %.thread118, %IsEmptyRect.exit.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPAnimEncoderAdd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %4 = alloca %struct.FrameRectangle, align 4     ; 6 uses
  %5 = alloca %struct.FrameRectangle, align 4     ; 9 uses
  %6 = alloca %struct.WebPPicture, align 8        ; 9 uses
  %7 = alloca %struct.WebPPicture, align 8        ; 7 uses
  %8 = alloca %struct.WebPConfig, align 4         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 7 uses
  store i8 0, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56
  %i.h = sub i32 %2, %i.g                         ; 2 uses
  %i.i = icmp ugt i32 %i.h, 16777215
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not55 = icmp eq ptr %1, null
  br i1 %.not55, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 4, ptr %i.j, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str) #14 ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @IncreasePreviousDuration(ptr noundef %0, i32 noundef %i.h)
  %.not53 = trunc nuw i32 %i.l to i1
  br i1 %.not53, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.n = load i64, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc i32 @FlushFrames(ptr noundef %0)
  %.not54 = trunc nuw i32 %i.r to i1
  br i1 %.not54, label %bb.k, label %.critedge

bb.j:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 %2, ptr %i.s, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i32 1, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1156
  store i32 %2, ptr %i.v, align 4, !tbaa !56
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !49
  %i.y = load i32, ptr %0, align 8, !tbaa !60
  %.not56 = icmp eq i32 %i.x, %i.y
  br i1 %.not56, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !61
  %.not57 = icmp eq i32 %i.aa, %i.ac
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 4, ptr %i.ad, align 8, !tbaa !57
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.af = load i32, ptr %1, align 8, !tbaa !55
  %.not58 = icmp eq i32 %i.af, 0
  br i1 %.not58, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !62
  %.not59 = icmp eq i32 %i.ah, 0
  br i1 %.not59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 80, i64 1, ptr %i.ai) #16 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aj = tail call i32 @WebPPictureYUVAToARGB(ptr noundef nonnull %1) #14
  %.not60 = icmp eq i32 %i.aj, 0
  br i1 %.not60, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ak = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #14 ; 0 uses
  br label %.critedge

bb.u:                                             ; preds = %bb.s, %bb.p
  %.not61 = icmp eq ptr %3, null
  br i1 %.not61, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = tail call i32 @WebPValidateConfig(ptr noundef nonnull %3) #14
  %.not63 = icmp eq i32 %i.al, 0
  br i1 %.not63, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.am = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4) #14 ; 0 uses
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %8, ptr noundef nonnull align 4 dereferenceable(116) %3, i64 116, i1 false), !tbaa.struct !64
  br label %bb.ab

bb.y:                                             ; preds = %bb.u
  %i.an = call i32 @WebPConfigInitInternal(ptr noundef nonnull %8, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #14
  %.not62 = icmp eq i32 %i.an, 0
  br i1 %.not62, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ao = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  store i32 1, ptr %8, align 4, !tbaa !65
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 9 uses
  store ptr %1, ptr %i.ap, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %CopyCurrentCanvas.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @WebPCopyPixels(ptr noundef nonnull %1, ptr noundef nonnull %i.as) #14
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !66 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !67
  store <2 x ptr> %i.aw, ptr %i.av, align 8, !tbaa !67
  store i32 0, ptr %i.aq, align 8, !tbaa !30
  br label %CopyCurrentCanvas.exit

CopyCurrentCanvas.exit:                           ; preds = %bb.ab, %bb.ac
  %i.ax = phi ptr [ %1, %bb.ab ], [ %i.at, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 8 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !58 ; 3 uses
  %i.ba = getelementptr i8, ptr %0, i64 1096      ; 3 uses
  %.val135.i = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bb = getelementptr i8, ptr %0, i64 1112      ; 3 uses
  %.val136.i = load i64, ptr %i.bb, align 8, !tbaa !68
  %i.bc = getelementptr [104 x i8], ptr %.val135.i, i64 %.val136.i
  %i.bd = getelementptr [104 x i8], ptr %i.bc, i64 %i.az ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.be = add i64 %i.az, 1
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !58
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !40
  %.not.i65 = icmp eq i32 %i.bf, 0
  br i1 %.not.i65, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %CopyCurrentCanvas.exit
  %i.bg = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %8, i32 noundef 1, ptr noundef %4, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not124.i = icmp eq i32 %i.bg, 0
  br i1 %.not124.i, label %.thread.thread200.i, label %.thread161.i

.thread.thread200.i:                              ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 96 ; 2 uses
  store i32 1, ptr %i.bh, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 0, ptr %i.bi, align 8, !tbaa !72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store i32 0, ptr %i.bj, align 4, !tbaa !73
  br label %bb.at

bb.ae:                                            ; preds = %CopyCurrentCanvas.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 5 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !73
  %i.bm = add nsw i32 %i.bl, 1                    ; 3 uses
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !50 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.preheader.lr.ph.i.i, label %CopyIdenticalPixels.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bu = load i32, ptr %i.bq, align 8, !tbaa !49 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.preheader.preheader.i.i, label %CopyIdenticalPixels.exit.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !46
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %i.cc = phi i32 [ %i.cq, %._crit_edge.i.i ], [ %i.bo, %.preheader.preheader.i.i ]
  %i.cd = phi i32 [ %i.cr, %._crit_edge.i.i ], [ %i.bu, %.preheader.preheader.i.i ] ; 2 uses
  %i.ce = phi i32 [ %i.cs, %._crit_edge.i.i ], [ %i.bu, %.preheader.preheader.i.i ] ; 2 uses
  %.031.i.i = phi ptr [ %i.db, %._crit_edge.i.i ], [ %i.bx, %.preheader.preheader.i.i ] ; 2 uses
  %.02230.i.i = phi ptr [ %i.cy, %._crit_edge.i.i ], [ %i.bz, %.preheader.preheader.i.i ] ; 2 uses
  %.02329.i.i = phi ptr [ %i.cv, %._crit_edge.i.i ], [ %i.cb, %.preheader.preheader.i.i ] ; 2 uses
  %.02528.i.i = phi i32 [ %i.dc, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ]
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ag
  %i.cg = phi i32 [ %i.cn, %bb.ag ], [ %i.cd, %.preheader.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ag ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.02329.i.i, i64 %indvars.iv.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.02230.i.i, i64 %indvars.iv.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !12
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.031.i.i, i64 %indvars.iv.i.i
  store i32 %i.ci, ptr %i.cm, align 4, !tbaa !12
  %.pre.i.i = load i32, ptr %i.bq, align 8, !tbaa !49
  br label %bb.ag
end_hunk_0
begin_hunk_1_@WebPAnimEncoderAdd:bb.a
  %.not126.i = icmp eq i32 %i.gl, 0
  br i1 %.not126.i, label %CopyMaskedPixels.exit.i, label %bb.aw

bb.aw:                                            ; preds = %DisposeFrameRectangle.exit.i
  %i.gm = call i32 @WebPPictureView(ptr noundef nonnull %i.ey, i32 noundef %i.ge, i32 noundef %i.gg, i32 noundef %i.gi, i32 noundef %i.gk, ptr noundef nonnull %7) #14
  %.not127.i = icmp eq i32 %i.gm, 0
  br i1 %.not127.i, label %CopyMaskedPixels.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !74
  %.not128.i = icmp eq i32 %i.go, 0
  br i1 %.not128.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !32
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !50 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.preheader.lr.ph.i139.i, label %CopyMaskedPixels.exit.thread.i

.preheader.lr.ph.i139.i:                          ; preds = %bb.ay
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.gx = load i32, ptr %i.gu, align 8, !tbaa !49 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.preheader.preheader.i140.i, label %CopyMaskedPixels.exit.thread.i

.preheader.preheader.i140.i:                      ; preds = %.preheader.lr.ph.i139.i
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !46
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !46
  br label %.preheader.i141.i

.preheader.i141.i:                                ; preds = %._crit_edge.i143.i, %.preheader.preheader.i140.i
  %i.hd = phi i32 [ %i.hr, %._crit_edge.i143.i ], [ %i.gs, %.preheader.preheader.i140.i ]
  %i.he = phi i32 [ %i.hs, %._crit_edge.i143.i ], [ %i.gx, %.preheader.preheader.i140.i ] ; 2 uses
  %i.hf = phi i32 [ %i.ht, %._crit_edge.i143.i ], [ %i.gx, %.preheader.preheader.i140.i ] ; 3 uses
  %.029.i.i = phi ptr [ %i.ia, %._crit_edge.i143.i ], [ %i.ha, %.preheader.preheader.i140.i ] ; 2 uses
  %.02028.i.i = phi ptr [ %i.hx, %._crit_edge.i143.i ], [ %i.gq, %.preheader.preheader.i140.i ] ; 2 uses
  %.02127.i.i = phi ptr [ %i.hw, %._crit_edge.i143.i ], [ %i.hc, %.preheader.preheader.i140.i ] ; 2 uses
  %.02326.i.i = phi i32 [ %i.ib, %._crit_edge.i143.i ], [ 0, %.preheader.preheader.i140.i ]
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.i144.i, label %.preheader.._crit_edge_crit_edge.i.i

.preheader.._crit_edge_crit_edge.i.i:             ; preds = %.preheader.i141.i
  %.pre35.i142.i = sext i32 %i.hf to i64
  br label %._crit_edge.i143.i

.lr.ph.i144.i:                                    ; preds = %.preheader.i141.i, %bb.ba
  %i.hh = phi i32 [ %i.ho, %bb.ba ], [ %i.he, %.preheader.i141.i ]
  %indvars.iv.i145.i = phi i64 [ %indvars.iv.next.i146.i, %bb.ba ], [ 0, %.preheader.i141.i ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.02028.i.i, i64 %indvars.iv.i145.i
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !15
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i144.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.02127.i.i, i64 %indvars.iv.i145.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !12
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.029.i.i, i64 %indvars.iv.i145.i
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !12
  %.pre.i148.i = load i32, ptr %i.gu, align 8, !tbaa !49
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i144.i
  %i.ho = phi i32 [ %i.hh, %.lr.ph.i144.i ], [ %.pre.i148.i, %bb.az ] ; 4 uses
  %indvars.iv.next.i146.i = add nuw nsw i64 %indvars.iv.i145.i, 1 ; 2 uses
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = icmp slt i64 %indvars.iv.next.i146.i, %i.hp
  br i1 %i.hq, label %.lr.ph.i144.i, label %._crit_edge.loopexit.i147.i, !llvm.loop !114

._crit_edge.loopexit.i147.i:                      ; preds = %bb.ba
  %.pre34.i.i = load i32, ptr %i.gr, align 4, !tbaa !50
  br label %._crit_edge.i143.i

._crit_edge.i143.i:                               ; preds = %._crit_edge.loopexit.i147.i, %.preheader.._crit_edge_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre35.i142.i, %.preheader.._crit_edge_crit_edge.i.i ], [ %i.hp, %._crit_edge.loopexit.i147.i ]
  %i.hr = phi i32 [ %i.hd, %.preheader.._crit_edge_crit_edge.i.i ], [ %.pre34.i.i, %._crit_edge.loopexit.i147.i ] ; 2 uses
  %i.hs = phi i32 [ %i.he, %.preheader.._crit_edge_crit_edge.i.i ], [ %i.ho, %._crit_edge.loopexit.i147.i ]
  %i.ht = phi i32 [ %i.hf, %.preheader.._crit_edge_crit_edge.i.i ], [ %i.ho, %._crit_edge.loopexit.i147.i ]
  %i.hu = load i32, ptr %i.gv, align 8, !tbaa !47
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %.02127.i.i, i64 %i.hv
  %i.hx = getelementptr inbounds i8, ptr %.02028.i.i, i64 %.pre-phi.i.i
  %i.hy = load i32, ptr %i.gw, align 8, !tbaa !47
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %.029.i.i, i64 %i.hz
  %i.ib = add nuw nsw i32 %.02326.i.i, 1          ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %i.hr
  br i1 %i.ic, label %.preheader.i141.i, label %CopyMaskedPixels.exit.thread.i, !llvm.loop !115

bb.bb:                                            ; preds = %bb.ax
  call void @WebPCopyPixels(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  br label %CopyMaskedPixels.exit.thread.i

CopyMaskedPixels.exit.thread.i:                   ; preds = %._crit_edge.i143.i, %bb.bb, %.preheader.lr.ph.i139.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.bc

CopyMaskedPixels.exit.i:                          ; preds = %bb.aw, %DisposeFrameRectangle.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.thread161.i

bb.bc:                                            ; preds = %CopyMaskedPixels.exit.thread.i, %bb.at
  %i.id = phi ptr [ %i.es, %CopyMaskedPixels.exit.thread.i ], [ %i.eo, %bb.at ]
  %.3198.i = phi i32 [ %.3199.i, %CopyMaskedPixels.exit.thread.i ], [ %.3203.i, %bb.at ] ; 2 uses
  %i.ie = load ptr, ptr %i.ap, align 8, !tbaa !66
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 560
  call void @WebPCopyPixels(ptr noundef %i.ie, ptr noundef nonnull %i.if) #14
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i32 %.3198.i, ptr %i.ig, align 8, !tbaa !75
  %.not129.i = icmp eq i32 %.3198.i, 0
  br i1 %.not129.i, label %.sink.split.i, label %bb.bd

.sink.split.i:                                    ; preds = %bb.bc
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.ii = load i32, ptr %i.id, align 8, !tbaa !71
  %.not130.i = icmp eq i32 %i.ii, 0
  %..i = select i1 %.not130.i, ptr %5, ptr %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ih, ptr noundef nonnull align 4 dereferenceable(16) %..i, i64 16, i1 false)
  br label %bb.bd

.thread204.i:                                     ; preds = %bb.ak, %bb.ai
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !76
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !76
  br label %.thread161.i

bb.bd:                                            ; preds = %.sink.split.i, %bb.bc
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %.pre174.i = load i32, ptr %i.a, align 4
  %i.im = icmp eq i32 %.pre174.i, 0
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !76
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !76
  br i1 %i.im, label %CacheFrame.exit.thread, label %.thread161.i

.thread161.i:                                     ; preds = %bb.bd, %.thread204.i, %CopyMaskedPixels.exit.i, %bb.al, %bb.aj, %bb.ah, %bb.ad
  %.5168.i = phi i32 [ 0, %bb.bd ], [ %i.bg, %bb.ad ], [ %i.dh, %bb.ah ], [ 4, %CopyMaskedPixels.exit.i ], [ %i.dh, %bb.aj ], [ %i.do, %bb.al ], [ 0, %.thread204.i ] ; 3 uses
  %i.iq = phi i1 [ false, %bb.bd ], [ true, %bb.ad ], [ true, %bb.ah ], [ true, %CopyMaskedPixels.exit.i ], [ true, %bb.aj ], [ true, %bb.al ], [ false, %.thread204.i ]
  %.not.i149.i = icmp eq ptr %i.bd, null
  br i1 %.not.i149.i, label %FrameRelease.exit.i, label %bb.be

bb.be:                                            ; preds = %.thread161.i
  %i.ir = load ptr, ptr %i.bd, align 8, !tbaa !53
  call void @WebPFree(ptr noundef %i.ir) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !53
  call void @WebPFree(ptr noundef %i.it) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bd, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit.i

FrameRelease.exit.i:                              ; preds = %bb.be, %.thread161.i
  %i.iu = load i64, ptr %i.ay, align 8, !tbaa !58
  %i.iv = add i64 %i.iu, -1
  store i64 %i.iv, ptr %i.ay, align 8, !tbaa !58
  %i.iw = load i32, ptr %i.d, align 4, !tbaa !40
  %.not131.i = icmp eq i32 %i.iw, 0
  br i1 %.not131.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %FrameRelease.exit.i
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !73
  %i.iz = add nsw i32 %i.iy, -1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !73
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %FrameRelease.exit.i
  br i1 %i.iq, label %CacheFrame.exit, label %CacheFrame.exit.thread

CacheFrame.exit:                                  ; preds = %bb.bg
  %i.ja = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %.5168.i) #14 ; 0 uses
  %i.jb = load ptr, ptr %i.ap, align 8, !tbaa !66
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 136
  store i32 %.5168.i, ptr %i.jc, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.ap, align 8, !tbaa !66
  store i32 1, ptr %i.aq, align 8, !tbaa !30
  br label %.critedge

CacheFrame.exit.thread:                           ; preds = %bb.bg, %bb.bd
  %.5168.i.sink = phi i32 [ 0, %bb.bd ], [ %.5168.i, %bb.bg ]
  %i.jd = load ptr, ptr %i.ap, align 8, !tbaa !66
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 136
  store i32 %.5168.i.sink, ptr %i.je, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.jf = call fastcc i32 @FlushFrames(ptr noundef %0)
  %.not69 = trunc nuw i32 %i.jf to i1
  store ptr null, ptr %i.ap, align 8, !tbaa !66
  store i32 1, ptr %i.aq, align 8, !tbaa !30
  br i1 %.not69, label %bb.bh, label %.critedge

bb.bh:                                            ; preds = %CacheFrame.exit.thread
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1156
  store i32 %2, ptr %i.jg, align 4, !tbaa !56
  br label %.critedge

.critedge:                                        ; preds = %CacheFrame.exit, %bb.f, %bb.g, %bb.i, %CacheFrame.exit.thread, %bb.bh, %bb.a, %bb.z, %bb.w, %bb.t, %bb.o, %bb.l
  %.1 = phi i32 [ 0, %CacheFrame.exit.thread ], [ 1, %bb.l ], [ 0, %bb.o ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.t ], [ 1, %bb.bh ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %CacheFrame.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @IncreasePreviousDuration(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 5 uses
  %2 = alloca %struct.WebPData, align 8           ; 7 uses
  %i.b = alloca [72 x i8], align 16               ; 5 uses
  %3 = alloca %struct.WebPData, align 8           ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr i8, ptr %0, i64 1096
  %.val36 = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr i8, ptr %0, i64 1112
  %.val37 = load i64, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr [104 x i8], ptr %.val36, i64 %.val37
  %i.h = getelementptr [104 x i8], ptr %i.g, i64 %i.d ; 13 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -80      ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !118
  %i.k = add nsw i32 %i.j, %1                     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 16777215
  br i1 %i.l, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, ptr noundef nonnull align 16 dereferenceable(28) @__const.IncreasePreviousDuration.lossless_1x1_bytes, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.a, ptr %2, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 28, ptr %i.m, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, ptr noundef nonnull align 16 dereferenceable(72) @__const.IncreasePreviousDuration.lossy_1x1_bytes, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.b, ptr %3, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 72, ptr %i.n, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !119
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !78
  %.not33 = icmp eq i32 %i.r, 0                   ; 2 uses
  %i.s = select i1 %.not33, ptr %3, ptr %2
  %i.t = select i1 %.not33, i64 72, i64 28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i64 [ 28, %bb.b ], [ %i.t, %bb.c ]
  %. = phi ptr [ %2, %bb.b ], [ %i.s, %bb.c ]     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 0, ptr %i.v, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 3, ptr %i.w, align 4, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !121
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %i.z, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 0, ptr %i.aa, align 4, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %1, ptr %i.ab, align 8, !tbaa !118
  %i.ac = icmp eq ptr %i.h, null
  br i1 %i.ac, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.ad = call ptr @WebPMalloc(i64 noundef %i.u) #14 ; 3 uses
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !53
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %., i64 8
  %i.ag = load ptr, ptr %., align 8, !tbaa !53
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !77 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !77
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !73
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 %i.aj, ptr %i.ao, align 8, !tbaa !72
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i32 0, ptr %i.ap, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) @__const.IncreasePreviousDuration.rect, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store i32 %i.k, ptr %i.i, align 8, !tbaa !118
  %i.ar = getelementptr i8, ptr %i.h, i64 -32
  store i32 %i.k, ptr %i.ar, align 8, !tbaa !124
  br label %bb.h

.critedge:                                        ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @FlushFrames(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.EncodedFrame, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %.not47 = icmp eq i64 %i.b, 0
  br i1 %.not47, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1096
  %i.d = getelementptr i8, ptr %0, i64 1112       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %.val44.pre = load i64, ptr %i.d, align 8, !tbaa !68
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.val44 = phi i64 [ %.val44.pre, %.lr.ph ], [ %i.am, %bb.h ]
  %.val = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.i = getelementptr [104 x i8], ptr %.val, i64 %.val44 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !71
  %.not40 = icmp eq i32 %i.k, 0
  %.idx = select i1 %.not40, i64 0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 5 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.n = tail call i32 @WebPMuxPushFrame(ptr noundef %i.m, ptr noundef %i.l, i32 noundef 1) #14 ; 2 uses
  %.not41.not = icmp eq i32 %i.n, 1
  br i1 %.not41.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef %i.n) #14 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.f, align 8, !tbaa !62
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !125
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.14, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !84
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !84
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %FrameRelease.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !53
  tail call void @WebPFree(ptr noundef %i.ad) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53
  tail call void @WebPFree(ptr noundef %i.af) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit

FrameRelease.exit:                                ; preds = %bb.e, %bb.f
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !72
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !72
  %i.ai = load <2 x i64>, ptr %i.d, align 8, !tbaa !85
  %i.aj = add <2 x i64> %i.ai, <i64 1, i64 -1>    ; 3 uses
  store <2 x i64> %i.aj, ptr %i.d, align 8, !tbaa !85
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !34  ; 2 uses
  %.not43 = icmp eq i32 %i.ak, -1
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %FrameRelease.exit
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.h, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %FrameRelease.exit, %bb.g
  %.not = icmp eq i64 %i.ah, 0
  %i.am = extractelement <2 x i64> %i.aj, i64 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.an = extractelement <2 x i64> %i.aj, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.ao = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.an, %._crit_edge.loopexit ]
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %.not39 = icmp eq i64 %i.ar, 0
  br i1 %.not39, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.at, i64 104, i1 false), !tbaa.struct !126
  %i.au = shl i64 %i.ar, 32
  %i.av = ashr exact i64 %i.au, 32                ; 3 uses
  %i.aw = getelementptr inbounds [104 x i8], ptr %i.at, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull align 8 dereferenceable(104) %i.aw, i64 104, i1 false), !tbaa.struct !126
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.ay = getelementptr inbounds [104 x i8], ptr %i.ax, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !126
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !38 ; 2 uses
  %.not.i45 = icmp eq ptr %i.az, null
  br i1 %.not.i45, label %FrameRelease.exit46, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds [104 x i8], ptr %i.az, i64 %i.av ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53
  tail call void @WebPFree(ptr noundef %i.bb) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53
  tail call void @WebPFree(ptr noundef %i.bd) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ba, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit46

FrameRelease.exit46:                              ; preds = %bb.j, %bb.k
  store i64 0, ptr %i.aq, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge, %bb.i, %FrameRelease.exit46
  %.2 = phi i32 [ 0, %.thread ], [ 1, %FrameRelease.exit46 ], [ 1, %bb.i ], [ 1, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @WebPPictureYUVAToARGB(ptr noundef) local_unnamed_addr #3

declare i32 @WebPValidateConfig(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPAnimEncoderAssemble(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6) #14 ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.f = load i64, ptr %i.e, align 8, !tbaa !76   ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7) #14 ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %.not = icmp ne i32 %i.j, 0
  %.not45 = icmp eq i64 %i.f, 1
  %or.cond = or i1 %.not45, %.not
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %.not46 = icmp eq i64 %i.l, 0
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.p = load i32, ptr %i.o, align 8, !tbaa !59
  %i.q = sub i32 %i.n, %i.p
  %i.r = uitofp i32 %i.q to double
  %i.s = add i64 %i.f, -1
  %i.t = uitofp i64 %i.s to double
  %i.u = fdiv double %i.r, %i.t
  %i.v = fptosi double %i.u to i32
  %i.w = tail call fastcc i32 @IncreasePreviousDuration(ptr noundef %0, i32 noundef %i.v)
  %.not47 = trunc nuw i32 %i.w to i1
  br i1 %.not47, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 %i.y, ptr %i.z, align 8, !tbaa !72
  %i.aa = tail call fastcc i32 @FlushFrames(ptr noundef %0)
  %.not48 = trunc nuw i32 %i.aa to i1
  br i1 %.not48, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 3 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !61
  %i.ag = tail call i32 @WebPMuxSetCanvasSize(ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.af) #14 ; 2 uses
  %.not49 = icmp eq i32 %i.ag, 1
  br i1 %.not49, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = tail call i32 @WebPMuxSetAnimationParams(ptr noundef %i.ac, ptr noundef nonnull %i.ah) #14 ; 2 uses
  %.not50 = icmp eq i32 %i.ai, 1
  br i1 %.not50, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call i32 @WebPMuxAssemble(ptr noundef %i.ac, ptr noundef nonnull %1) #14 ; 2 uses
  %.not51 = icmp eq i32 %i.aj, 1
  br i1 %.not51, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !84
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = tail call fastcc i32 @OptimizeSingleFrame(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not52 = icmp eq i32 %i.an, 1
  br i1 %.not52, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.j
  %.036 = phi i32 [ %i.ag, %bb.j ], [ %i.ai, %bb.k ], [ %i.aj, %bb.l ], [ %i.an, %bb.n ]
  %i.ao = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef %.036) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.i, %bb.a, %bb.h, %bb.o, %bb.e, %bb.c
  %.1 = phi i32 [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.o ], [ 0, %bb.i ], [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.m ]
  ret i32 %.1
}

declare i32 @WebPMuxSetCanvasSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPMuxSetAnimationParams(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxAssemble(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @OptimizeSingleFrame(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.WebPPicture, align 8        ; 7 uses
  %3 = alloca %struct.WebPDecoderConfig, align 8  ; 13 uses
  %4 = alloca %struct.WebPMemoryWriter, align 8   ; 9 uses
  %5 = alloca %struct.WebPMemoryWriter, align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %6 = alloca %struct.WebPMuxFrameInfo, align 8   ; 12 uses
  %7 = alloca %struct.WebPData, align 8           ; 9 uses
  %8 = alloca %struct.WebPData, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.c = tail call ptr @WebPMuxCreateInternal(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 265) #14 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.e = call i32 @WebPMuxGetFrame(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %6) #14 ; 2 uses
  %i.f = icmp ne i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ne i32 %i.h, 3
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @WebPMuxGetCanvasSize(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 2 uses
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @WebPMemoryWriterInit(ptr noundef nonnull %4) #14
  call void @WebPMemoryWriterInit(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.l = call i32 @WebPInitDecoderConfigInternal(ptr noundef nonnull %3, i32 noundef 528) #14
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %DecodeFrameOntoCanvas.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50   ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph18.i9.i.i.i, label %WebPUtilClearPic.exit.i.i

.lr.ph18.i9.i.i.i:                                ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  %i.s = icmp sgt i32 %i.n, 0
  br i1 %i.s, label %.lr.ph.preheader.i10.i.i.i, label %WebPUtilClearPic.exit.i.i

.lr.ph.preheader.i10.i.i.i:                       ; preds = %.lr.ph18.i9.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 5 uses
  %i.v = add nsw i32 %i.n, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 4                  ; 5 uses
  %xtraiter = and i32 %i.p, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.p, 4
  br i1 %i.z, label %.lr.ph.i13.i.i.i.epil.preheader, label %.lr.ph.preheader.i10.i.i.i.new

.lr.ph.preheader.i10.i.i.i.new:                   ; preds = %.lr.ph.preheader.i10.i.i.i
  %unroll_iter = and i32 %i.p, 2147483644
  br label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.preheader.i10.i.i.i.new
  %.01416.i14.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i10.i.i.i.new ], [ %i.at, %.lr.ph.i13.i.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i10.i.i.i.new ], [ %niter.next.3, %.lr.ph.i13.i.i.i ]
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !47
  %i.ab = mul nsw i32 %i.aa, %.01416.i14.i.i.i
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %scevgep20.i15.i.i.i = getelementptr i8, ptr %i.u, i64 %i.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep20.i15.i.i.i, i8 0, i64 %i.y, i1 false), !tbaa !12
  %i.ae = or disjoint i32 %.01416.i14.i.i.i, 1
  %i.af = load i32, ptr %i.r, align 8, !tbaa !47
  %i.ag = mul nsw i32 %i.af, %i.ae
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  %scevgep20.i15.i.i.i.1 = getelementptr i8, ptr %i.u, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep20.i15.i.i.i.1, i8 0, i64 %i.y, i1 false), !tbaa !12
  %i.aj = or disjoint i32 %.01416.i14.i.i.i, 2
  %i.ak = load i32, ptr %i.r, align 8, !tbaa !47
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 2
  %scevgep20.i15.i.i.i.2 = getelementptr i8, ptr %i.u, i64 %i.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep20.i15.i.i.i.2, i8 0, i64 %i.y, i1 false), !tbaa !12
  %i.ao = or disjoint i32 %.01416.i14.i.i.i, 3
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !47
  %i.aq = mul nsw i32 %i.ap, %i.ao
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 2
  %scevgep20.i15.i.i.i.3 = getelementptr i8, ptr %i.u, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep20.i15.i.i.i.3, i8 0, i64 %i.y, i1 false), !tbaa !12
  %i.at = add nuw nsw i32 %.01416.i14.i.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i13.i.i.i, !llvm.loop !0

WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa:     ; preds = %.lr.ph.i13.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %WebPUtilClearPic.exit.i.i, label %.lr.ph.i13.i.i.i.epil.preheader

.lr.ph.i13.i.i.i.epil.preheader:                  ; preds = %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i10.i.i.i
  %.01416.i14.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i10.i.i.i ], [ %i.at, %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i13.i.i.i.epil

.lr.ph.i13.i.i.i.epil:                            ; preds = %.lr.ph.i13.i.i.i.epil, %.lr.ph.i13.i.i.i.epil.preheader
  %.01416.i14.i.i.i.epil = phi i32 [ %i.ay, %.lr.ph.i13.i.i.i.epil ], [ %.01416.i14.i.i.i.epil.init, %.lr.ph.i13.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i13.i.i.i.epil ], [ 0, %.lr.ph.i13.i.i.i.epil.preheader ]
  %i.au = load i32, ptr %i.r, align 8, !tbaa !47
  %i.av = mul nsw i32 %i.au, %.01416.i14.i.i.i.epil
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %scevgep20.i15.i.i.i.epil = getelementptr i8, ptr %i.u, i64 %i.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep20.i15.i.i.i.epil, i8 0, i64 %i.y, i1 false), !tbaa !12
  %i.ay = add nuw nsw i32 %.01416.i14.i.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %WebPUtilClearPic.exit.i.i, label %.lr.ph.i13.i.i.i.epil, !llvm.loop !127

WebPUtilClearPic.exit.i.i:                        ; preds = %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i13.i.i.i.epil, %.lr.ph18.i9.i.i.i, %bb.e
  %i.az = load ptr, ptr %6, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !77
  %i.bc = call i32 @WebPGetFeaturesInternal(ptr noundef %i.az, i64 noundef %i.bb, ptr noundef nonnull %3, i32 noundef 528) #14
  %.not9.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not9.i.i, label %bb.f, label %DecodeFrameOntoCanvas.exit.thread.i

bb.f:                                             ; preds = %WebPUtilClearPic.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !81
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !82
  %i.bh = load i32, ptr %3, align 8, !tbaa !132
end_hunk_1
begin_hunk_2_@OptimizeSingleFrame:bb.a
  %i.cl = call i32 @WebPEncode(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.k) #14
  %.not.i18.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i18.not.i, label %FrameToFullCanvas.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !91 ; 2 uses
  %i.co = load i64, ptr %i.cg, align 8, !tbaa !91
  %i.cp = icmp ult i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.k, label %FrameToFullCanvas.exit.thread28

bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %5, align 8, !tbaa !90
  store ptr %.val.i, ptr %7, align 8, !tbaa !53
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !77
  br label %FrameToFullCanvas.exit.thread28

FrameToFullCanvas.exit.thread28:                  ; preds = %bb.k, %bb.j
  %.sink.i.ph = phi ptr [ %5, %bb.j ], [ %4, %bb.k ]
  call void @WebPMemoryWriterClear(ptr noundef nonnull %.sink.i.ph) #14
  br label %FrameToFullCanvas.exit.thread

FrameToFullCanvas.exit:                           ; preds = %DecodeFrameOntoCanvas.exit.thread.i, %DecodeFrameOntoCanvas.exit.i, %bb.g, %bb.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %4) #14
  call void @WebPMemoryWriterClear(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.o

FrameToFullCanvas.exit.thread:                    ; preds = %bb.h, %FrameToFullCanvas.exit.thread28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.cq = call i32 @WebPMuxSetImage(ptr noundef nonnull %i.c, ptr noundef nonnull %7, i32 noundef 1) #14 ; 2 uses
  %.not24 = icmp eq i32 %i.cq, 1
  br i1 %.not24, label %bb.l, label %bb.o

bb.l:                                             ; preds = %FrameToFullCanvas.exit.thread
  %i.cr = call i32 @WebPMuxAssemble(ptr noundef nonnull %i.c, ptr noundef nonnull %8) #14 ; 2 uses
  %.not25 = icmp eq i32 %i.cr, 1
  br i1 %.not25, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !77
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !77
  %i.cw = icmp ult i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %1, align 8, !tbaa !53
  call void @WebPFree(ptr noundef %i.cx) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %FrameToFullCanvas.exit, %bb.m, %bb.n, %bb.l, %FrameToFullCanvas.exit.thread, %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.j, %bb.c ], [ %i.cq, %FrameToFullCanvas.exit.thread ], [ %i.cr, %bb.l ], [ 1, %bb.n ], [ 1, %bb.m ], [ -2, %FrameToFullCanvas.exit ]
  %i.cy = load ptr, ptr %6, align 8, !tbaa !53
  call void @WebPFree(ptr noundef %i.cy) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.cz = load ptr, ptr %7, align 8, !tbaa !53
  call void @WebPFree(ptr noundef %i.cz) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @WebPMuxDelete(ptr noundef nonnull %i.c) #14
  %i.da = load ptr, ptr %8, align 8, !tbaa !53
  call void @WebPFree(ptr noundef %i.da) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.018 = phi i32 [ %.0, %bb.o ], [ -2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @WebPAnimEncoderGetError(ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.0 = select i1 %i.a, ptr null, ptr %i.b
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @WebPAnimEncoderSetChunk(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = tail call i32 @WebPMuxSetChunk(ptr noundef %i.c, ptr noundef %1, ptr noundef %2, i32 noundef %3) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @WebPMuxSetChunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @WebPAnimEncoderGetChunk(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = tail call i32 @WebPMuxGetChunk(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @WebPMuxGetChunk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @WebPAnimEncoderDeleteChunk(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = tail call i32 @WebPMuxDeleteChunk(ptr noundef %i.c, ptr noundef %1) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @WebPMuxDeleteChunk(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPPictureInitInternal(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @WebPNewInternal(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @WebPFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @WebPMalloc(i64 noundef) local_unnamed_addr #3

declare i32 @WebPMuxPushFrame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPConfigInitInternal(ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @WebPCopyPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SetFrame(ptr noundef nonnull initializes((52, 284)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca [4 x %struct.Candidate], align 16   ; 13 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %struct.SubFrameParams, align 8     ; 19 uses
  %8 = alloca %struct.SubFrameParams, align 8     ; 15 uses
  %9 = alloca %struct.WebPConfig, align 4         ; 7 uses
  %10 = alloca %struct.WebPConfig, align 4        ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !67
  %i.d = load i32, ptr %1, align 4, !tbaa !65     ; 3 uses
  %.not = icmp eq i32 %i.d, 0                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !78
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  %not..not = xor i1 %.not, true
  %. = select i1 %not..not, i1 true, i1 %i.g
  %.121 = select i1 %.not, i1 true, i1 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1180
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40   ; 3 uses
  %.not63 = icmp eq i32 %i.i, 0
  %i.j = zext i1 %.not63 to i32
  %.not64 = trunc nuw i32 %2 to i1
  br i1 %.not64, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.l = load i32, ptr %i.k, align 8, !tbaa !75
  %.not65 = icmp eq i32 %i.l, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ %.not65, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %9, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %10, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false), !tbaa.struct !64
  store i32 1, ptr %9, align 4, !tbaa !65
  store i32 0, ptr %10, align 4, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.n, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false), !tbaa.struct !64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = load i32, ptr %1, align 4, !tbaa !65
  %.not66 = icmp eq i32 %i.p, 0
  %.122 = select i1 %.not66, ptr %9, ptr %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %i.o, ptr noundef nonnull align 4 dereferenceable(116) %.122, i64 116, i1 false)
  store i32 0, ptr %5, align 4, !tbaa !12
  store i32 1, ptr %7, align 8, !tbaa !137
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.j, ptr %i.q, align 4, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.s = call i32 @WebPPictureInitInternal(ptr noundef nonnull %i.r, i32 noundef 528) #14
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %SubFrameParamsInit.exit.thread, label %SubFrameParamsInit.exit

SubFrameParamsInit.exit:                          ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 296 ; 2 uses
  %i.u = call i32 @WebPPictureInitInternal(ptr noundef nonnull %i.t, i32 noundef 528) #14
  %.not6.i.not = icmp eq i32 %i.u, 0
  br i1 %.not6.i.not, label %SubFrameParamsInit.exit.thread, label %bb.d

bb.d:                                             ; preds = %SubFrameParamsInit.exit
  store i32 0, ptr %8, align 8, !tbaa !137
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.v, align 4, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.x = call i32 @WebPPictureInitInternal(ptr noundef nonnull %i.w, i32 noundef 528) #14
  %.not.i86 = icmp eq i32 %i.x, 0
  br i1 %.not.i86, label %SubFrameParamsInit.exit.thread, label %SubFrameParamsInit.exit90

SubFrameParamsInit.exit90:                        ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 296 ; 2 uses
  %i.z = call i32 @WebPPictureInitInternal(ptr noundef nonnull %i.y, i32 noundef 528) #14
  %.not6.i87.not = icmp eq i32 %i.z, 0
  br i1 %.not6.i87.not, label %SubFrameParamsInit.exit.thread, label %bb.e

bb.e:                                             ; preds = %SubFrameParamsInit.exit90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %6, i8 0, i64 416, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !94 ; 2 uses
  %i.ac = call fastcc i32 @GetSubRects(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %2, i32 noundef %i.i, float noundef %i.ab, ptr noundef %7)
  %.not69 = icmp eq i32 %i.ac, 0
  br i1 %.not69, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %., label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !44
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %.not112 = icmp eq i32 %i.ah, 0
  %or.cond = select i1 %i.af, i1 true, i1 %.not112
  br i1 %or.cond, label %IsEmptyRect.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.121, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 288
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 292
  %i.am = load i32, ptr %i.al, align 4
  %.not113 = icmp eq i32 %i.am, 0
  %or.cond116 = select i1 %i.ak, i1 true, i1 %.not113
  br i1 %or.cond116, label %IsEmptyRect.exit.thread, label %bb.j

IsEmptyRect.exit.thread:                          ; preds = %bb.i, %bb.g
  store i32 1, ptr %5, align 4, !tbaa !12
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.m, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  call void @WebPCopyPixels(ptr noundef nonnull %i.c, ptr noundef nonnull %i.an) #14
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !42 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.at = load i32, ptr %i.as, align 4, !tbaa !44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.av = load i32, ptr %i.au, align 8, !tbaa !45 ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.ar
  %i.ax = icmp sgt i32 %i.av, 0
  br i1 %i.ax, label %.lr.ph18.i.i.i, label %DisposeFrameRectangle.exit

.lr.ph18.i.i.i:                                   ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.az = icmp sgt i32 %i.at, 0
  br i1 %i.az, label %.lr.ph.preheader.i.i.i, label %DisposeFrameRectangle.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph18.i.i.i
  %i.ba = add i32 %i.at, %i.ap
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46
  %i.bd = sext i32 %i.ap to i64
  %i.be = shl nsw i64 %i.bd, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.bc, i64 %i.be
  %i.bf = add i32 %i.ap, 1
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.ba, i32 %i.bf)
  %i.bg = xor i32 %i.ap, -1
  %i.bh = add i32 %smax.i.i.i, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.01416.i.i.i = phi i32 [ %i.bp, %.lr.ph.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.bl = load i32, ptr %i.ay, align 8, !tbaa !47
  %i.bm = mul nsw i32 %i.bl, %.01416.i.i.i
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 2
  %scevgep20.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.bo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep20.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !12
  %i.bp = add nsw i32 %.01416.i.i.i, 1            ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.aw
  br i1 %i.bq, label %.lr.ph.i.i.i, label %DisposeFrameRectangle.exit, !llvm.loop !0

DisposeFrameRectangle.exit:                       ; preds = %.lr.ph.i.i.i, %bb.k, %.lr.ph18.i.i.i
  %i.br = call fastcc i32 @GetSubRects(ptr noundef %i.an, ptr noundef %i.b, i32 noundef %2, i32 noundef %i.i, float noundef %i.ab, ptr noundef %8)
  %.not72 = icmp eq i32 %i.br, 0
  br i1 %.not72, label %bb.t, label %bb.l

bb.l:                                             ; preds = %DisposeFrameRectangle.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !95
  %.not73 = icmp eq i32 %i.bt, 0
  br i1 %.not73, label %bb.m, label %.thread102

.thread102:                                       ; preds = %bb.l
  store i32 1, ptr %8, align 8, !tbaa !137
  store i32 1, ptr %7, align 8, !tbaa !137
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val84 = load i32, ptr %i.bu, align 8, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.val85 = load i32, ptr %i.bv, align 4, !tbaa !45
  %i.bw = mul i32 %.val85, %.val84
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val82 = load i32, ptr %i.bx, align 8, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.val83 = load i32, ptr %i.by, align 4, !tbaa !45
  %i.bz = mul i32 %.val83, %.val82
  %i.ca = icmp ult i32 %i.bw, %i.bz
  br i1 %i.ca, label %.thread108, label %bb.o

.critedge:                                        ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 288
  %.val80 = load i32, ptr %i.cb, align 8, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 292
  %.val81 = load i32, ptr %i.cc, align 4, !tbaa !45
  %i.cd = mul i32 %.val81, %.val80
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 288
  %.val = load i32, ptr %i.ce, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 292
  %.val79 = load i32, ptr %i.cf, align 4, !tbaa !45
  %i.cg = mul i32 %.val79, %.val
  %i.ch = icmp ult i32 %i.cd, %i.cg
  br i1 %i.ch, label %.thread108, label %bb.o

.thread108:                                       ; preds = %.critedge, %bb.n
  store i32 1, ptr %8, align 8, !tbaa !137
  store i32 0, ptr %7, align 8, !tbaa !137
  br label %bb.r

bb.o:                                             ; preds = %bb.n, %.critedge, %bb.j
  %.0.ph = phi ptr [ %i.an, %bb.n ], [ %i.an, %.critedge ], [ null, %bb.j ] ; 2 uses
  %.pr = load i32, ptr %7, align 8, !tbaa !137
  %.not74 = icmp eq i32 %.pr, 0
  br i1 %.not74, label %bb.q, label %bb.p
end_hunk_2
begin_hunk_3_@SetFrame:bb.a

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0101.ph = phi ptr [ %.0.ph, %bb.o ], [ %.0105, %bb.p ]
  %.pr107 = load i32, ptr %8, align 8, !tbaa !137
  %.not76 = icmp eq i32 %.pr107, 0
  br i1 %.not76, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread108, %bb.q
  %.0101111 = phi ptr [ %i.an, %.thread108 ], [ %.0101.ph, %bb.q ]
  %i.cj = call fastcc i32 @GenerateCandidates(ptr noundef %0, ptr noundef %6, i32 noundef 1, ptr noundef %.0101111, i32 noundef %i.d, i32 noundef %2, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %i.a, ptr noundef %4) ; 2 uses
  %.not77 = icmp eq i32 %i.cj, 0
  br i1 %.not77, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !80
  br label %.loopexit

bb.t:                                             ; preds = %DisposeFrameRectangle.exit, %bb.e, %bb.r, %bb.p
  %.2 = phi i32 [ %i.ci, %bb.p ], [ %i.cj, %bb.r ], [ 4, %bb.e ], [ 4, %DisposeFrameRectangle.exit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !97
  %.not78 = icmp eq i32 %i.cn, 0
  br i1 %.not78, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @WebPMemoryWriterClear(ptr noundef nonnull %6) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 204
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !97
  %.not78.1 = icmp eq i32 %i.cp, 0
  br i1 %.not78.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.cq) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 308
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !97
  %.not78.2 = icmp eq i32 %i.cs, 0
  br i1 %.not78.2, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 208
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.ct) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 412
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !97
  %.not78.3 = icmp eq i32 %i.cv, 0
  br i1 %.not78.3, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 312
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.cw) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.aa, %bb.s, %IsEmptyRect.exit.thread
  %.3 = phi i32 [ 0, %IsEmptyRect.exit.thread ], [ 0, %bb.s ], [ %.2, %bb.aa ], [ %.2, %bb.z ]
  call void @WebPPictureFree(ptr noundef nonnull %i.r) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.t) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.w) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.y) #14
  br label %SubFrameParamsInit.exit.thread

SubFrameParamsInit.exit.thread:                   ; preds = %bb.d, %bb.c, %SubFrameParamsInit.exit, %SubFrameParamsInit.exit90, %.loopexit
  %.058 = phi i32 [ %.3, %.loopexit ], [ 4, %SubFrameParamsInit.exit90 ], [ 4, %SubFrameParamsInit.exit ], [ 4, %bb.c ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.058
}

declare i32 @WebPPictureView(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetSubRects(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, float noundef %4, ptr noundef nonnull initializes((8, 24)) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !138
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.f = load <2 x i32>, ptr %i.c, align 8, !tbaa !12
  %i.g = load i32, ptr %i.c, align 8, !tbaa !49
  store <2 x i32> %i.f, ptr %i.d, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = icmp eq i32 %2, 0
  %i.l = icmp ne i32 %3, 0
  %or.cond.i = or i1 %i.k, %i.l                   ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @MinimizeChangeRectangle(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 1, float noundef %4)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %IsEmptyRect.exit.thread.i, label %IsEmptyRect.exit.i

IsEmptyRect.exit.i:                               ; preds = %bb.c
  %i.o = load i32, ptr %i.e, align 4, !tbaa !45   ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %IsEmptyRect.exit.thread.i, label %GetSubRect.exit

IsEmptyRect.exit.thread.i:                        ; preds = %IsEmptyRect.exit.i, %bb.c
  %.not19.i = icmp eq i32 %i.i, 0
  br i1 %.not19.i, label %GetSubRect.exit, label %GetSubRect.exit.thread

GetSubRect.exit:                                  ; preds = %IsEmptyRect.exit.i, %IsEmptyRect.exit.thread.i
  %i.p = phi i32 [ %i.o, %IsEmptyRect.exit.i ], [ 1, %IsEmptyRect.exit.thread.i ]
  %i.q = phi i32 [ %i.m, %IsEmptyRect.exit.i ], [ 1, %IsEmptyRect.exit.thread.i ]
  %i.r = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.s = and i32 %i.r, 1
  %i.t = add nsw i32 %i.s, %i.q                   ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !44
  %i.u = load i32, ptr %i.b, align 4, !tbaa !43   ; 2 uses
  %i.v = and i32 %i.u, 1
  %i.w = add nsw i32 %i.v, %i.p                   ; 2 uses
  store i32 %i.w, ptr %i.e, align 4, !tbaa !45
  %i.x = and i32 %i.r, -2                         ; 2 uses
  store i32 %i.x, ptr %i.a, align 8, !tbaa !42
  %i.y = and i32 %i.u, -2                         ; 2 uses
  store i32 %i.y, ptr %i.b, align 4, !tbaa !43
  %i.z = tail call i32 @WebPPictureView(ptr noundef nonnull %1, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.t, i32 noundef %i.w, ptr noundef nonnull %i.j) #14
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %GetSubRect.exit30, label %GetSubRect.exit.thread

GetSubRect.exit.thread:                           ; preds = %IsEmptyRect.exit.thread.i, %GetSubRect.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !80
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 296
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %GetSubRect.exit.thread
  tail call fastcc void @MinimizeChangeRectangle(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aa, i32 noundef 0, float noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %GetSubRect.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 288 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %IsEmptyRect.exit.thread.i28, label %IsEmptyRect.exit.i25

IsEmptyRect.exit.i25:                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !45 ; 2 uses
  %.not.i26 = icmp eq i32 %i.ah, 0
  br i1 %.not.i26, label %IsEmptyRect.exit.thread.i28, label %bb.f

IsEmptyRect.exit.thread.i28:                      ; preds = %IsEmptyRect.exit.i25, %bb.e
  %.not19.i29 = icmp eq i32 %i.ab, 0
  br i1 %.not19.i29, label %bb.f, label %GetSubRect.exit30

bb.f:                                             ; preds = %IsEmptyRect.exit.thread.i28, %IsEmptyRect.exit.i25
  %i.ai = phi i32 [ %i.ah, %IsEmptyRect.exit.i25 ], [ 1, %IsEmptyRect.exit.thread.i28 ]
  %i.aj = phi i32 [ %i.ae, %IsEmptyRect.exit.i25 ], [ 1, %IsEmptyRect.exit.thread.i28 ]
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %i.al = and i32 %i.ak, 1
  %i.am = add nsw i32 %i.al, %i.aj                ; 2 uses
  store i32 %i.am, ptr %i.ad, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 284 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43 ; 2 uses
  %i.ap = and i32 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.ar = add nsw i32 %i.ap, %i.ai                ; 2 uses
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !45
  %i.as = and i32 %i.ak, -2                       ; 2 uses
  store i32 %i.as, ptr %i.aa, align 8, !tbaa !42
  %i.at = and i32 %i.ao, -2                       ; 2 uses
  store i32 %i.at, ptr %i.an, align 4, !tbaa !43
  %i.au = tail call i32 @WebPPictureView(ptr noundef nonnull %1, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.am, i32 noundef %i.ar, ptr noundef nonnull %i.ac) #14
  br label %GetSubRect.exit30

GetSubRect.exit30:                                ; preds = %bb.f, %IsEmptyRect.exit.thread.i28, %GetSubRect.exit
  %.0 = phi i32 [ 0, %GetSubRect.exit ], [ %i.au, %bb.f ], [ 1, %IsEmptyRect.exit.thread.i28 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GenerateCandidates(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, ptr noundef nonnull %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef nonnull readonly captures(none) %8, ptr nofree noundef nonnull captures(none) %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #1 {
bb.a:
  %11 = alloca %struct.WebPConfig, align 4        ; 8 uses
  %12 = alloca %struct.WebPConfig, align 4        ; 8 uses
  %13 = trunc nuw i32 %2 to i1                    ; 3 uses
  %.idx = select i1 %13, i64 104, i64 0
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 19 uses
  %.v = select i1 %13, i64 312, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.v ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.e = select i1 %13, ptr %3, ptr %i.d          ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 11 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %CopyCurrentCanvas.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  tail call void @WebPCopyPixels(ptr noundef %i.i, ptr noundef nonnull %i.c) #14
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !67
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !67
  store i32 0, ptr %i.f, align 8, !tbaa !30
  br label %CopyCurrentCanvas.exit

CopyCurrentCanvas.exit:                           ; preds = %bb.a, %bb.b
  %.not = trunc nuw i32 %5 to i1                  ; 5 uses
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %CopyCurrentCanvas.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45   ; 2 uses
  %i.s = add nsw i32 %i.r, %i.p
  %i.t = icmp sgt i32 %i.r, 0
  br i1 %i.t, label %.lr.ph31.i, label %.thread136

.lr.ph31.i:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !44   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  br i1 %i.w, label %.lr.ph31.split.i, label %.thread136

.lr.ph31.split.i:                                 ; preds = %.lr.ph31.i
  %i.z = load i32, ptr %i.n, align 4, !tbaa !42   ; 2 uses
  %i.aa = add nsw i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !47
  %i.af = sext i32 %i.z to i64
  %i.ag = sext i32 %i.aa to i64
  %i.ah = sext i32 %i.p to i64
  %i.ai = sext i32 %i.ae to i64
  %i.aj = sext i32 %i.s to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph31.split.i
  %indvars.iv34.i = phi i64 [ %i.ah, %.lr.ph31.split.i ], [ %indvars.iv.next35.i, %._crit_edge.i ] ; 3 uses
  %i.ak = mul nsw i64 %indvars.iv34.i, %i.ai
  %i.al = getelementptr [4 x i8], ptr %i.ad, i64 %i.ak
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12 ; 2 uses
  %.not.i96 = icmp ugt i32 %i.an, -16777217
  br i1 %.not.i96, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !47
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %indvars.iv34.i, %i.aq
  %i.as = getelementptr [4 x i8], ptr %i.ao, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %.not26.i = icmp eq i32 %i.au, %i.an
  br i1 %.not26.i, label %.critedge.i, label %.loopexit

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.ag
  br i1 %i.av, label %bb.d, label %._crit_edge.i, !llvm.loop !140

._crit_edge.i:                                    ; preds = %.critedge.i
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next35.i, %i.aj
  br i1 %i.aw, label %.lr.ph.i, label %.loopexit, !llvm.loop !141

.loopexit:                                        ; preds = %._crit_edge.i, %bb.e
  %14 = phi i1 [ false, %bb.e ], [ true, %._crit_edge.i ] ; 2 uses
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  br label %.thread136

.thread136:                                       ; preds = %.loopexit, %bb.c, %.lr.ph31.i
  %17 = phi i32 [ %16, %.loopexit ], [ 0, %.lr.ph31.i ], [ 0, %bb.c ] ; 7 uses
  %18 = phi i1 [ %14, %.loopexit ], [ true, %.lr.ph31.i ], [ true, %bb.c ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !94
  %i.ba = fpext float %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+02
  %i.bc = tail call double @pow(double noundef %i.bb, double noundef 5.000000e-01) #14 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 284
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 292
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !45 ; 2 uses
  %i.bh = add nsw i32 %i.bg, %i.be
  %i.bi = icmp sgt i32 %i.bg, 0
  br i1 %i.bi, label %.lr.ph35.i, label %.thread

.lr.ph35.i:                                       ; preds = %.thread136
  %i.bj = fsub double 1.000000e+00, %i.bc
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double 3.100000e+01, double %i.bc)
  %i.bl = fadd double %i.bk, 5.000000e-01
  %i.bm = fptosi double %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !44 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bs = mul nsw i32 %i.bm, 255                  ; 3 uses
  br i1 %i.bp, label %.lr.ph35.split.i, label %.thread

.lr.ph35.split.i:                                 ; preds = %.lr.ph35.i
  %i.bt = load i32, ptr %i.ax, align 4, !tbaa !42 ; 2 uses
  %i.bu = add nsw i32 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !46
  %i.by = load i32, ptr %i.bv, align 8, !tbaa !47
  %i.bz = sext i32 %i.bt to i64
  %i.ca = sext i32 %i.bu to i64
  %i.cb = sext i32 %i.be to i64
  %i.cc = sext i32 %i.by to i64
  %i.cd = sext i32 %i.bh to i64
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %._crit_edge.i103, %.lr.ph35.split.i
  %indvars.iv38.i = phi i64 [ %i.cb, %.lr.ph35.split.i ], [ %indvars.iv.next39.i, %._crit_edge.i103 ] ; 3 uses
  %i.ce = mul nsw i64 %indvars.iv38.i, %i.cc
  %i.cf = getelementptr [4 x i8], ptr %i.bx, i64 %i.ce
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i101, %.lr.ph.i98
  %indvars.iv.i99 = phi i64 [ %i.bz, %.lr.ph.i98 ], [ %indvars.iv.next.i102, %.critedge.i101 ] ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %indvars.iv.i99
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !12 ; 5 uses
  %.not.i100 = icmp ugt i32 %i.ch, -16777217
  br i1 %.not.i100, label %.critedge.i101, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.cj = load i32, ptr %i.br, align 8, !tbaa !47
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %indvars.iv38.i, %i.ck
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr [4 x i8], ptr %i.cm, i64 %indvars.iv.i99
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !12 ; 4 uses
  %i.cp = lshr i32 %i.co, 24                      ; 4 uses
  %i.cq = lshr i32 %i.co, 8
  %i.cr = and i32 %i.cq, 255
  %i.cs = and i32 %i.co, 255
  %i.ct = lshr i32 %i.ch, 24
  %i.cu = lshr i32 %i.ch, 8
  %i.cv = and i32 %i.cu, 255
  %i.cw = and i32 %i.ch, 255
  %i.cx = icmp eq i32 %i.cp, %i.ct
  br i1 %i.cx, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cy = lshr i32 %i.ch, 16
  %i.cz = and i32 %i.cy, 255
  %i.da = lshr i32 %i.co, 16
  %i.db = and i32 %i.da, 255
  %i.dc = sub nsw i32 %i.db, %i.cz
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = mul nuw nsw i32 %i.dd, %i.cp
  %.not.i.i = icmp sgt i32 %i.de, %i.bs
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = sub nsw i32 %i.cr, %i.cv
  %i.dg = tail call i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dh = mul nuw nsw i32 %i.dg, %i.cp
  %.not23.i.i = icmp samesign ugt i32 %i.dh, %i.bs
  br i1 %.not23.i.i, label %.thread, label %PixelsAreSimilar.exit.i

PixelsAreSimilar.exit.i:                          ; preds = %bb.i
  %i.di = sub nsw i32 %i.cs, %i.cw
  %i.dj = tail call i32 @llvm.abs.i32(i32 %i.di, i1 true)
  %i.dk = mul nuw nsw i32 %i.dj, %i.cp
  %.not30.i = icmp samesign ugt i32 %i.dk, %i.bs
  br i1 %.not30.i, label %.thread, label %.critedge.i101

.critedge.i101:                                   ; preds = %PixelsAreSimilar.exit.i, %bb.f
  %indvars.iv.next.i102 = add nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %i.dl = icmp slt i64 %indvars.iv.next.i102, %i.ca
  br i1 %i.dl, label %bb.f, label %._crit_edge.i103, !llvm.loop !142

._crit_edge.i103:                                 ; preds = %.critedge.i101
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.dm = icmp slt i64 %indvars.iv.next39.i, %i.cd
  br i1 %i.dm, label %.lr.ph.i98, label %.thread, !llvm.loop !143

.thread:                                          ; preds = %._crit_edge.i103, %PixelsAreSimilar.exit.i, %bb.i, %bb.h, %bb.g, %.lr.ph35.i, %.thread136, %CopyCurrentCanvas.exit
  %not..i = phi i32 [ 1, %CopyCurrentCanvas.exit ], [ %17, %PixelsAreSimilar.exit.i ], [ %17, %.thread136 ], [ %17, %.lr.ph35.i ], [ %17, %bb.g ], [ %17, %bb.h ], [ %17, %bb.i ], [ %17, %._crit_edge.i103 ]
  %i.dn = phi i1 [ false, %CopyCurrentCanvas.exit ], [ %18, %PixelsAreSimilar.exit.i ], [ %18, %.thread136 ], [ %18, %.lr.ph35.i ], [ %18, %bb.g ], [ %18, %bb.h ], [ %18, %bb.i ], [ %18, %._crit_edge.i103 ] ; 2 uses
  %i.do = phi i1 [ false, %CopyCurrentCanvas.exit ], [ false, %PixelsAreSimilar.exit.i ], [ true, %.thread136 ], [ true, %.lr.ph35.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ true, %._crit_edge.i103 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !78
  %.not90 = icmp eq i32 %i.dq, 0
  br i1 %.not90, label %.split, label %bb.j

.split:                                           ; preds = %.thread
  %.not91 = icmp eq i32 %4, 0
  br i1 %.not91, label %PickBestCandidate.exit.thread, label %CopyCurrentCanvas.exit105

bb.j:                                             ; preds = %.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !95
  %.not92 = icmp eq i32 %i.ds, 0
  br i1 %.not92, label %bb.k, label %CopyCurrentCanvas.exit105

bb.k:                                             ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.du = tail call i32 @WebPGetColorPalette(ptr noundef nonnull %i.dt, ptr noundef null) #14 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 193
  br i1 %i.dv, label %PickBestCandidate.exit.thread, label %.thread138

.thread138:                                       ; preds = %bb.k
  %i.dw = icmp sgt i32 %i.du, 30                  ; 2 uses
  %.pre = load i32, ptr %i.f, align 8, !tbaa !30
  %i.dx = icmp eq i32 %.pre, 0
  br i1 %i.dx, label %CopyCurrentCanvas.exit105, label %bb.l

bb.l:                                             ; preds = %.thread138
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !66
  tail call void @WebPCopyPixels(ptr noundef %i.dz, ptr noundef nonnull %i.c) #14
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !66
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ed = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !67
  store <2 x ptr> %i.ed, ptr %i.ec, align 8, !tbaa !67
  store i32 0, ptr %i.f, align 8, !tbaa !30
  br label %CopyCurrentCanvas.exit105

CopyCurrentCanvas.exit105:                        ; preds = %bb.j, %.split, %.thread138, %bb.l
  %.083.shrunk141195 = phi i1 [ %i.dw, %bb.l ], [ %i.dw, %.thread138 ], [ true, %bb.j ], [ false, %.split ] ; 2 uses
  br i1 %i.dn, label %bb.m, label %bb.q

bb.m:                                             ; preds = %CopyCurrentCanvas.exit105
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !150
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !151
  %i.el = mul nsw i32 %i.ek, %i.ei
  %i.em = sext i32 %i.el to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ef, i8 0, i64 %i.em, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.eo = load i32, ptr %i.ej, align 4, !tbaa !45 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph41.i, label %IncreaseTransparency.exit

.lr.ph41.i:                                       ; preds = %bb.m
  %i.eq = load ptr, ptr %i.ee, align 8, !tbaa !31
  %i.er = load i32, ptr %i.en, align 4, !tbaa !43 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.pre.i = load i32, ptr %i.eg, align 8, !tbaa !42 ; 2 uses
  %.pre46.i = load i32, ptr %i.eh, align 8, !tbaa !44 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i106, %.lr.ph41.i
  %i.ew = phi i32 [ %i.eo, %.lr.ph41.i ], [ %i.ge, %._crit_edge.i106 ]
  %i.ex = phi i32 [ %i.er, %.lr.ph41.i ], [ %i.gf, %._crit_edge.i106 ]
  %i.ey = phi i32 [ %.pre46.i, %.lr.ph41.i ], [ %i.gg, %._crit_edge.i106 ] ; 2 uses
  %i.ez = phi i32 [ %.pre.i, %.lr.ph41.i ], [ %i.gh, %._crit_edge.i106 ] ; 2 uses
  %i.fa = phi i32 [ %.pre46.i, %.lr.ph41.i ], [ %i.gi, %._crit_edge.i106 ] ; 2 uses
  %i.fb = phi i32 [ %.pre.i, %.lr.ph41.i ], [ %i.gj, %._crit_edge.i106 ] ; 2 uses
  %.039.i = phi ptr [ %i.eq, %.lr.ph41.i ], [ %i.gl, %._crit_edge.i106 ] ; 2 uses
  %.03038.i = phi i32 [ 0, %.lr.ph41.i ], [ %.1.lcssa.i, %._crit_edge.i106 ] ; 2 uses
  %.03137.i = phi i32 [ %i.er, %.lr.ph41.i ], [ %i.gm, %._crit_edge.i106 ] ; 3 uses
  %i.fc = load ptr, ptr %i.es, align 8, !tbaa !46
  %i.fd = load i32, ptr %i.et, align 8, !tbaa !47
  %i.fe = mul nsw i32 %i.fd, %.03137.i
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.ff
  %i.fh = load ptr, ptr %i.eu, align 8, !tbaa !46
  %i.fi = load i32, ptr %i.ev, align 8, !tbaa !47
  %i.fj = mul nsw i32 %i.fi, %.03137.i
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = icmp sgt i32 %i.fa, 0
  br i1 %i.fm, label %.lr.ph.preheader.i, label %._crit_edge.i106

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.fn = sext i32 %i.fb to i64
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.p, %.lr.ph.preheader.i
  %i.fo = phi i32 [ %i.ey, %.lr.ph.preheader.i ], [ %i.fz, %bb.p ]
  %i.fp = phi i32 [ %i.ez, %.lr.ph.preheader.i ], [ %i.ga, %bb.p ]
  %indvars.iv.i108 = phi i64 [ %i.fn, %.lr.ph.preheader.i ], [ %indvars.iv.next.i110, %bb.p ] ; 4 uses
  %.135.i = phi i32 [ %.03038.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.p ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv.i108
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !12
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %indvars.iv.i108 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !12 ; 2 uses
  %i.fu = icmp ne i32 %i.fr, %i.ft
  %.not.i109 = icmp eq i32 %i.ft, 0
  %or.cond.i = or i1 %i.fu, %.not.i109
  br i1 %or.cond.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i107
  store i32 0, ptr %i.fs, align 4, !tbaa !12
  %i.fv = load i32, ptr %i.eg, align 8, !tbaa !42
  %i.fw = sext i32 %i.fv to i64
  %i.fx = sub nsw i64 %indvars.iv.i108, %i.fw
  %i.fy = getelementptr inbounds i8, ptr %.039.i, i64 %i.fx
  store i8 1, ptr %i.fy, align 1, !tbaa !15
  %.pre47.i = load i32, ptr %i.eg, align 8, !tbaa !42
  %.pre48.i = load i32, ptr %i.eh, align 8, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i107
  %i.fz = phi i32 [ %.pre48.i, %bb.o ], [ %i.fo, %.lr.ph.i107 ] ; 4 uses
  %i.ga = phi i32 [ %.pre47.i, %bb.o ], [ %i.fp, %.lr.ph.i107 ] ; 4 uses
  %.2.i = phi i32 [ 1, %bb.o ], [ %.135.i, %.lr.ph.i107 ] ; 2 uses
  %indvars.iv.next.i110 = add nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %i.gb = add nsw i32 %i.ga, %i.fz
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next.i110, %i.gc
  br i1 %i.gd, label %.lr.ph.i107, label %._crit_edge.loopexit.i, !llvm.loop !144

._crit_edge.loopexit.i:                           ; preds = %bb.p
  %.pre49.i = load i32, ptr %i.en, align 4, !tbaa !43
  %.pre50.i = load i32, ptr %i.ej, align 4, !tbaa !45
  br label %._crit_edge.i106

._crit_edge.i106:                                 ; preds = %._crit_edge.loopexit.i, %bb.n
  %i.ge = phi i32 [ %i.ew, %bb.n ], [ %.pre50.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gf = phi i32 [ %i.ex, %bb.n ], [ %.pre49.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gg = phi i32 [ %i.ey, %bb.n ], [ %i.fz, %._crit_edge.loopexit.i ]
  %i.gh = phi i32 [ %i.ez, %bb.n ], [ %i.ga, %._crit_edge.loopexit.i ]
  %i.gi = phi i32 [ %i.fa, %bb.n ], [ %i.fz, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gj = phi i32 [ %i.fb, %bb.n ], [ %i.ga, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.03038.i, %bb.n ], [ %.2.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gk = sext i32 %i.gi to i64
  %i.gl = getelementptr inbounds i8, ptr %.039.i, i64 %i.gk
  %i.gm = add nsw i32 %.03137.i, 1                ; 2 uses
  %i.gn = add nsw i32 %i.gf, %i.ge
  %i.go = icmp slt i32 %i.gm, %i.gn
  br i1 %i.go, label %bb.n, label %IncreaseTransparency.exit, !llvm.loop !145

IncreaseTransparency.exit:                        ; preds = %._crit_edge.i106, %bb.m
  %.030.lcssa.i = phi i32 [ 0, %bb.m ], [ %.1.lcssa.i, %._crit_edge.i106 ]
  store i32 %.030.lcssa.i, ptr %i.f, align 8, !tbaa !30
  br label %bb.q

bb.q:                                             ; preds = %IncreaseTransparency.exit, %CopyCurrentCanvas.exit105
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %12, ptr noundef nonnull readonly align 4 dereferenceable(116) %7, i64 116, i1 false), !tbaa.struct !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !80
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 3, ptr %i.gs, align 4, !tbaa !152
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.gu = load <2 x i32>, ptr %i.gq, align 4, !tbaa !12
  store <2 x i32> %i.gu, ptr %i.gt, align 8, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %i.gv, align 8, !tbaa !153
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 %not..i, ptr %i.gw, align 4, !tbaa !154
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.gx, align 8, !tbaa !155
  tail call void @WebPMemoryWriterInit(ptr noundef nonnull %i.a) #14
  %i.gy = load i32, ptr %12, align 4, !tbaa !65
  %i.gz = icmp eq i32 %i.gy, 0
  %or.cond.i111 = and i1 %i.dn, %i.gz
  br i1 %or.cond.i111, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ha = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 0, ptr %i.ha, align 4, !tbaa !156
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 0, ptr %i.hb, align 4, !tbaa !157
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 1, ptr %i.gp, align 8, !tbaa !55
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr @WebPMemoryWrite, ptr %i.hc, align 8, !tbaa !87
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr %i.a, ptr %i.hd, align 8, !tbaa !88
  %i.he = call i32 @WebPEncode(ptr noundef nonnull %12, ptr noundef nonnull %i.gp) #14
  %.not.i.not.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.not.i, label %EncodeCandidate.exit, label %EncodeCandidate.exit.thread

EncodeCandidate.exit.thread:                      ; preds = %bb.s
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  store i32 1, ptr %i.hf, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.t

EncodeCandidate.exit:                             ; preds = %bb.s
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !57 ; 2 uses
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %.not94 = icmp eq i32 %i.hh, 0
  br i1 %.not94, label %bb.t, label %PickBestCandidate.exit135

bb.t:                                             ; preds = %EncodeCandidate.exit.thread, %EncodeCandidate.exit
  %i.hi = load i32, ptr %i.f, align 8, !tbaa !30
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !158
  %i.hk = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !159
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !159
  %i.hq = icmp ult i64 %i.hn, %i.hp
  br i1 %i.hq, label %bb.v, label %.split146

bb.v:                                             ; preds = %bb.u, %bb.t
  %.idx.i = select i1 %.not, i64 48, i64 0
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 %.idx.i ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hr, ptr noundef nonnull align 8 dereferenceable(48) %i.hs, i64 48, i1 false), !tbaa.struct !160
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ht = getelementptr i8, ptr %i.a, i64 8
  %.val30.i = load i64, ptr %i.ht, align 8, !tbaa !91
  store ptr %.val.i, ptr %i.hr, align 8, !tbaa !53
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %.val30.i, ptr %i.hu, align 8, !tbaa !77
  br i1 %.not, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !58
  %i.hx = getelementptr i8, ptr %0, i64 1096
  %.val.i.i = load ptr, ptr %i.hx, align 8, !tbaa !38
  %i.hy = getelementptr i8, ptr %0, i64 1112
  %.val13.i.i = load i64, ptr %i.hy, align 8, !tbaa !68
  %i.hz = getelementptr [104 x i8], ptr %.val.i.i, i64 %.val13.i.i
  %i.ia = getelementptr [104 x i8], ptr %i.hz, i64 %i.hw ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !75
  %.not.i.i113 = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i113, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.id = getelementptr i8, ptr %i.ia, i64 -176
  store i32 %2, ptr %i.id, align 8, !tbaa !79
  br label %SetPreviousDisposeMethod.exit.i

bb.y:                                             ; preds = %bb.w
  %i.ie = getelementptr i8, ptr %i.ia, i64 -112
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !71
  %.not12.i.i = icmp eq i32 %i.if, 0
  %i.ig = select i1 %.not12.i.i, i64 -176, i64 -128
  br label %SetPreviousDisposeMethod.exit.i

SetPreviousDisposeMethod.exit.i:                  ; preds = %bb.y, %bb.x
  %.sink14.i.i = phi i64 [ %i.ig, %bb.y ], [ -128, %bb.x ]
  %i.ih = getelementptr i8, ptr %i.ia, i64 %.sink14.i.i
  store i32 %2, ptr %i.ih, align 8, !tbaa !83
  %i.ii = load i32, ptr %i.hj, align 8, !tbaa !158 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %i.ii, ptr %i.ij, align 8, !tbaa !74
  %.not28.i = icmp eq i32 %i.ii, 0
  br i1 %.not28.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %SetPreviousDisposeMethod.exit.i
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !32
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !31
  store ptr %i.in, ptr %i.ik, align 8, !tbaa !32
  store ptr %i.il, ptr %i.im, align 8, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %SetPreviousDisposeMethod.exit.i, %bb.v
  %i.io = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %.not29.i = icmp eq ptr %i.io, null
  br i1 %.not29.i, label %.split147, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.io) #14
  %i.ip = load ptr, ptr %9, align 8, !tbaa !67
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 100
  store i32 0, ptr %i.iq, align 4, !tbaa !97
  br label %.split147

.split147:                                        ; preds = %bb.ab, %bb.aa
  store ptr %i.a, ptr %9, align 8, !tbaa !67
  br i1 %.083.shrunk141195, label %PickBestCandidate.exit.thread, label %PickBestCandidate.exit135

.split146:                                        ; preds = %bb.u
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.a) #14
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  store i32 0, ptr %i.ir, align 4, !tbaa !97
  br i1 %.083.shrunk141195, label %PickBestCandidate.exit.thread, label %PickBestCandidate.exit135

PickBestCandidate.exit.thread:                    ; preds = %bb.k, %.split, %.split147, %.split146
  %i.is = load i32, ptr %i.f, align 8, !tbaa !30
  %.not.i114 = icmp eq i32 %i.is, 0
  br i1 %.not.i114, label %CopyCurrentCanvas.exit115, label %bb.ac

bb.ac:                                            ; preds = %PickBestCandidate.exit.thread
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !66
  call void @WebPCopyPixels(ptr noundef %i.iu, ptr noundef nonnull %i.c) #14
  %i.iv = load ptr, ptr %i.it, align 8, !tbaa !66
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 144
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.iy = load <2 x ptr>, ptr %i.iw, align 8, !tbaa !67
  store <2 x ptr> %i.iy, ptr %i.ix, align 8, !tbaa !67
  store i32 0, ptr %i.f, align 8, !tbaa !30
  br label %CopyCurrentCanvas.exit115

CopyCurrentCanvas.exit115:                        ; preds = %PickBestCandidate.exit.thread, %bb.ac
  br i1 %i.do, label %bb.ad, label %bb.bn

bb.ad:                                            ; preds = %CopyCurrentCanvas.exit115
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !31
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 11 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !161
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 292 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !162
  %i.jg = mul nsw i32 %i.jf, %i.jd
  %i.jh = sext i32 %i.jg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ja, i8 0, i64 %i.jh, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !94
  %i.jk = load ptr, ptr %i.iz, align 8, !tbaa !31
  %i.jl = fpext float %i.jj to double
  %i.jm = fdiv double %i.jl, 1.000000e+02
  %i.jn = call double @pow(double noundef %i.jm, double noundef 5.000000e-01) #14 ; 2 uses
  %i.jo = fsub double 1.000000e+00, %i.jn
  %i.jp = call double @llvm.fmuladd.f64(double %i.jo, double 3.100000e+01, double %i.jn)
  %i.jq = fadd double %i.jp, 5.000000e-01
  %i.jr = fptosi double %i.jq to i32              ; 24 uses
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 284
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !43 ; 3 uses
  %i.ju = and i32 %i.jt, -8
  %i.jv = add nsw i32 %i.ju, 8                    ; 3 uses
  %i.jw = load i32, ptr %i.je, align 4, !tbaa !45
  %i.jx = add nsw i32 %i.jw, %i.jt
  %i.jy = and i32 %i.jx, -8                       ; 2 uses
  %i.jz = load i32, ptr %i.jb, align 8, !tbaa !42 ; 3 uses
  %i.ka = and i32 %i.jz, -8
  %i.kb = add i32 %i.ka, 8                        ; 3 uses
  %i.kc = load i32, ptr %i.jc, align 8, !tbaa !44 ; 2 uses
  %i.kd = add nsw i32 %i.kc, %i.jz
  %i.ke = and i32 %i.kd, -8                       ; 2 uses
  %i.kf = icmp slt i32 %i.jv, %i.jy
  br i1 %i.kf, label %.preheader99.lr.ph.i, label %FlattenSimilarBlocks.exit

.preheader99.lr.ph.i:                             ; preds = %bb.ad
  %i.kg = icmp slt i32 %i.kb, %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ki = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 9 uses
  br i1 %i.kg, label %.preheader99.us.preheader.i, label %FlattenSimilarBlocks.exit

.preheader99.us.preheader.i:                      ; preds = %.preheader99.lr.ph.i
  %i.kl = sub nsw i32 %i.jv, %i.jt
  %i.km = mul nsw i32 %i.kl, %i.kc
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds i8, ptr %i.jk, i64 %i.kn
  %i.kp = sub nsw i32 %i.kb, %i.jz
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds i8, ptr %i.ko, i64 %i.kq
  %i.ks = sext i32 %i.kb to i64
  %i.kt = sext i32 %i.ke to i64
  br label %.preheader99.us.i

.preheader99.us.i:                                ; preds = %._crit_edge.us.i, %.preheader99.us.preheader.i
  %.090117.us.i = phi ptr [ %i.wi, %._crit_edge.us.i ], [ %i.kr, %.preheader99.us.preheader.i ] ; 2 uses
  %.091116.us.i = phi i32 [ %.293.us.i, %._crit_edge.us.i ], [ 0, %.preheader99.us.preheader.i ]
  %.094115.us.i = phi i32 [ %i.wj, %._crit_edge.us.i ], [ %i.jv, %.preheader99.us.preheader.i ] ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.us.i, %.preheader99.us.i
  %indvars.iv128.i = phi i64 [ %i.ks, %.preheader99.us.i ], [ %indvars.iv.next129.i, %.loopexit.us.i ] ; 3 uses
  %.089114.us.i = phi ptr [ %.090117.us.i, %.preheader99.us.i ], [ %i.sy, %.loopexit.us.i ] ; 9 uses
  %.192113.us.i = phi i32 [ %.091116.us.i, %.preheader99.us.i ], [ %.293.us.i, %.loopexit.us.i ]
  %i.ku = load ptr, ptr %i.kh, align 8, !tbaa !46
  %i.kv = load i32, ptr %i.ki, align 8, !tbaa !47 ; 2 uses
  %i.kw = mul nsw i32 %i.kv, %.094115.us.i
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.kx
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %indvars.iv128.i
  %i.la = load ptr, ptr %i.kj, align 8, !tbaa !46
  %i.lb = load i32, ptr %i.kk, align 8, !tbaa !47 ; 2 uses
  %i.lc = mul nsw i32 %i.lb, %.094115.us.i
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.ld
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.le, i64 %indvars.iv128.i ; 9 uses
  %i.lg = sext i32 %i.kv to i64
  %i.lh = sext i32 %i.lb to i64
  br label %.preheader98.us.i

bb.af:                                            ; preds = %.preheader98.us.i
  %i.li = load i32, ptr %invariant.gep138.i, align 4, !tbaa !12 ; 4 uses
  %i.lj = lshr i32 %i.wd, 8
  %i.lk = and i32 %i.lj, 255                      ; 2 uses
  %i.ll = and i32 %i.wd, 255                      ; 2 uses
  %i.lm = lshr i32 %i.li, 8
  %i.ln = and i32 %i.lm, 255
  %i.lo = and i32 %i.li, 255
  %i.lp = icmp ugt i32 %i.li, -16777217
  br i1 %i.lp, label %bb.ag, label %PixelsAreSimilar.exit.thread.us.i

bb.ag:                                            ; preds = %bb.af
  %i.lq = lshr i32 %i.li, 16
  %i.lr = and i32 %i.lq, 255
  %i.ls = lshr i32 %i.wd, 16
  %i.lt = and i32 %i.ls, 255                      ; 2 uses
  %i.lu = sub nsw i32 %i.lt, %i.lr
  %i.lv = call i32 @llvm.abs.i32(i32 %i.lu, i1 true)
  %.not.i.us.i = icmp sgt i32 %i.lv, %i.jr
  br i1 %.not.i.us.i, label %PixelsAreSimilar.exit.thread.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lw = sub nsw i32 %i.lk, %i.ln
  %i.lx = call i32 @llvm.abs.i32(i32 %i.lw, i1 true)
  %.not23.i.us.i = icmp samesign ugt i32 %i.lx, %i.jr
  br i1 %.not23.i.us.i, label %PixelsAreSimilar.exit.thread.us.i, label %PixelsAreSimilar.exit.us.i

PixelsAreSimilar.exit.us.i:                       ; preds = %bb.ah
  %i.ly = sub nsw i32 %i.ll, %i.lo
end_hunk_3
begin_hunk_4_@GenerateCandidates:bb.a
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.tc
  store i32 %i.sx, ptr %i.td, align 4, !tbaa !12
  %i.te = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.tf = mul nsw i32 %i.te, %.1111.us.i
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds i8, ptr %.089114.us.i, i64 %i.tg
  store i8 1, ptr %i.th, align 1, !tbaa !15
  %i.ti = load i32, ptr %i.kk, align 8, !tbaa !47
  %i.tj = mul nsw i32 %i.ti, %.1111.us.i
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr [4 x i8], ptr %i.lf, i64 %i.tk
  %i.tm = getelementptr i8, ptr %i.tl, i64 4
  store i32 %i.sx, ptr %i.tm, align 4, !tbaa !12
  %i.tn = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.to = mul nsw i32 %i.tn, %.1111.us.i
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr i8, ptr %.089114.us.i, i64 %i.tp
  %i.tr = getelementptr i8, ptr %i.tq, i64 1
  store i8 1, ptr %i.tr, align 1, !tbaa !15
  %i.ts = load i32, ptr %i.kk, align 8, !tbaa !47
  %i.tt = mul nsw i32 %i.ts, %.1111.us.i
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr [4 x i8], ptr %i.lf, i64 %i.tu
  %i.tw = getelementptr i8, ptr %i.tv, i64 8
  store i32 %i.sx, ptr %i.tw, align 4, !tbaa !12
  %i.tx = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.ty = mul nsw i32 %i.tx, %.1111.us.i
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr i8, ptr %.089114.us.i, i64 %i.tz
  %i.ub = getelementptr i8, ptr %i.ua, i64 2
  store i8 1, ptr %i.ub, align 1, !tbaa !15
  %i.uc = load i32, ptr %i.kk, align 8, !tbaa !47
  %i.ud = mul nsw i32 %i.uc, %.1111.us.i
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr [4 x i8], ptr %i.lf, i64 %i.ue
  %i.ug = getelementptr i8, ptr %i.uf, i64 12
  store i32 %i.sx, ptr %i.ug, align 4, !tbaa !12
  %i.uh = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.ui = mul nsw i32 %i.uh, %.1111.us.i
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr i8, ptr %.089114.us.i, i64 %i.uj
  %i.ul = getelementptr i8, ptr %i.uk, i64 3
  store i8 1, ptr %i.ul, align 1, !tbaa !15
  %i.um = load i32, ptr %i.kk, align 8, !tbaa !47
  %i.un = mul nsw i32 %i.um, %.1111.us.i
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr [4 x i8], ptr %i.lf, i64 %i.uo
  %i.uq = getelementptr i8, ptr %i.up, i64 16
  store i32 %i.sx, ptr %i.uq, align 4, !tbaa !12
  %i.ur = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.us = mul nsw i32 %i.ur, %.1111.us.i
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr i8, ptr %.089114.us.i, i64 %i.ut
  %i.uv = getelementptr i8, ptr %i.uu, i64 4
  store i8 1, ptr %i.uv, align 1, !tbaa !15
  %i.uw = load i32, ptr %i.kk, align 8, !tbaa !47
  %i.ux = mul nsw i32 %i.uw, %.1111.us.i
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr [4 x i8], ptr %i.lf, i64 %i.uy
  %i.va = getelementptr i8, ptr %i.uz, i64 20
  store i32 %i.sx, ptr %i.va, align 4, !tbaa !12
  %i.vb = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.vc = mul nsw i32 %i.vb, %.1111.us.i
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr i8, ptr %.089114.us.i, i64 %i.vd
  %i.vf = getelementptr i8, ptr %i.ve, i64 5
  store i8 1, ptr %i.vf, align 1, !tbaa !15
  %i.vg = load i32, ptr %i.kk, align 8, !tbaa !47
  %i.vh = mul nsw i32 %i.vg, %.1111.us.i
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr [4 x i8], ptr %i.lf, i64 %i.vi
  %i.vk = getelementptr i8, ptr %i.vj, i64 24
  store i32 %i.sx, ptr %i.vk, align 4, !tbaa !12
  %i.vl = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.vm = mul nsw i32 %i.vl, %.1111.us.i
  %i.vn = sext i32 %i.vm to i64
  %i.vo = getelementptr i8, ptr %.089114.us.i, i64 %i.vn
  %i.vp = getelementptr i8, ptr %i.vo, i64 6
  store i8 1, ptr %i.vp, align 1, !tbaa !15
  %i.vq = load i32, ptr %i.kk, align 8, !tbaa !47
  %i.vr = mul nsw i32 %i.vq, %.1111.us.i
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr [4 x i8], ptr %i.lf, i64 %i.vs
  %i.vu = getelementptr i8, ptr %i.vt, i64 28
  store i32 %i.sx, ptr %i.vu, align 4, !tbaa !12
  %i.vv = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.vw = mul nsw i32 %i.vv, %.1111.us.i
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr i8, ptr %.089114.us.i, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 7
  store i8 1, ptr %i.vz, align 1, !tbaa !15
  %i.wa = add nuw nsw i32 %.1111.us.i, 1          ; 2 uses
  %exitcond127.not.i = icmp eq i32 %i.wa, 8
  br i1 %exitcond127.not.i, label %.loopexit.us.i, label %.preheader.us.i, !llvm.loop !148

.preheader98.us.i:                                ; preds = %PixelsAreSimilar.exit.thread.us.i.7, %bb.ae
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %PixelsAreSimilar.exit.thread.us.i.7 ], [ 0, %bb.ae ] ; 3 uses
  %.078108.us.i = phi i32 [ %.2.us.i.7, %PixelsAreSimilar.exit.thread.us.i.7 ], [ 0, %bb.ae ] ; 6 uses
  %.080107.us.i = phi i32 [ %.282.us.i.7, %PixelsAreSimilar.exit.thread.us.i.7 ], [ 0, %bb.ae ] ; 6 uses
  %.083106.us.i = phi i32 [ %.285.us.i.7, %PixelsAreSimilar.exit.thread.us.i.7 ], [ 0, %bb.ae ] ; 6 uses
  %.086105.us.i = phi i32 [ %.288.us.i.7, %PixelsAreSimilar.exit.thread.us.i.7 ], [ 0, %bb.ae ] ; 6 uses
  %i.wb = mul nsw i64 %indvars.iv122.i, %i.lg
  %i.wc = mul nsw i64 %indvars.iv122.i, %i.lh
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.kz, i64 %i.wb ; 8 uses
  %invariant.gep138.i = getelementptr [4 x i8], ptr %i.lf, i64 %i.wc ; 8 uses
  %i.wd = load i32, ptr %invariant.gep.i, align 4, !tbaa !12 ; 4 uses
  %i.we = icmp ugt i32 %i.wd, -16777217
  br i1 %i.we, label %bb.af, label %PixelsAreSimilar.exit.thread.us.i

._crit_edge.us.i:                                 ; preds = %.loopexit.us.i
  %i.wf = load i32, ptr %i.jc, align 8, !tbaa !44
  %i.wg = shl nsw i32 %i.wf, 3
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds i8, ptr %.090117.us.i, i64 %i.wh
  %i.wj = add nsw i32 %.094115.us.i, 8            ; 2 uses
  %i.wk = icmp slt i32 %i.wj, %i.jy
  br i1 %i.wk, label %.preheader99.us.i, label %FlattenSimilarBlocks.exit, !llvm.loop !149

FlattenSimilarBlocks.exit:                        ; preds = %._crit_edge.us.i, %bb.ad, %.preheader99.lr.ph.i
  %.091.lcssa.i = phi i32 [ 0, %bb.ad ], [ 0, %.preheader99.lr.ph.i ], [ %.293.us.i, %._crit_edge.us.i ]
  store i32 %.091.lcssa.i, ptr %i.f, align 8, !tbaa !30
  br label %bb.bn

bb.bn:                                            ; preds = %FlattenSimilarBlocks.exit, %CopyCurrentCanvas.exit115
  %i.wl = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %6, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %11, ptr noundef nonnull readonly align 4 dereferenceable(116) %8, i64 116, i1 false), !tbaa.struct !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wn, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.wm, i64 16, i1 false), !tbaa.struct !80
  %i.wo = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 3, ptr %i.wo, align 4, !tbaa !152
  %i.wp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.wq = load <2 x i32>, ptr %i.wm, align 4, !tbaa !12
  store <2 x i32> %i.wq, ptr %i.wp, align 8, !tbaa !12
  %i.wr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.wr, align 8, !tbaa !153
  %not..i118.a = xor i1 %i.do, true
  %i.ws = zext i1 %not..i118.a to i32
  %i.wt = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.ws, ptr %i.wt, align 4, !tbaa !154
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.wu, align 8, !tbaa !155
  call void @WebPMemoryWriterInit(ptr noundef nonnull %i.b) #14
  %i.wv = load i32, ptr %11, align 4, !tbaa !65
  %i.ww = icmp eq i32 %i.wv, 0
  %or.cond.i119 = and i1 %i.do, %i.ww
  br i1 %or.cond.i119, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.wx = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 0, ptr %i.wx, align 4, !tbaa !156
  %i.wy = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 0, ptr %i.wy, align 4, !tbaa !157
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  store i32 1, ptr %i.wl, align 8, !tbaa !55
  %i.wz = getelementptr inbounds nuw i8, ptr %6, i64 392
  store ptr @WebPMemoryWrite, ptr %i.wz, align 8, !tbaa !87
  %i.xa = getelementptr inbounds nuw i8, ptr %6, i64 400
  store ptr %i.b, ptr %i.xa, align 8, !tbaa !88
  %i.xb = call i32 @WebPEncode(ptr noundef nonnull %11, ptr noundef nonnull %i.wl) #14
  %.not.i.not.i120 = icmp eq i32 %i.xb, 0
  br i1 %.not.i.not.i120, label %EncodeCandidate.exit122, label %EncodeCandidate.exit122.thread

EncodeCandidate.exit122.thread:                   ; preds = %bb.bp
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 1, ptr %i.xc, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.bq

EncodeCandidate.exit122:                          ; preds = %bb.bp
  %i.xd = getelementptr inbounds nuw i8, ptr %6, i64 432
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !57 ; 2 uses
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %.not95 = icmp eq i32 %i.xe, 0
  br i1 %.not95, label %bb.bq, label %PickBestCandidate.exit135

bb.bq:                                            ; preds = %EncodeCandidate.exit122.thread, %EncodeCandidate.exit122
  %i.xf = load i32, ptr %i.f, align 8, !tbaa !30
  %i.xg = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store i32 %i.xf, ptr %i.xg, align 8, !tbaa !158
  store i32 1, ptr %i.f, align 8, !tbaa !30
  %i.xh = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.xi = icmp eq ptr %i.xh, null
  br i1 %i.xi, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !159
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !159
  %i.xn = icmp ult i64 %i.xk, %i.xm
  br i1 %i.xn, label %bb.bs, label %bb.ca

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.idx.i124 = select i1 %.not, i64 48, i64 0
  %i.xo = getelementptr inbounds nuw i8, ptr %10, i64 %.idx.i124 ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.xo, ptr noundef nonnull align 8 dereferenceable(48) %i.xp, i64 48, i1 false), !tbaa.struct !160
  %.val.i125 = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.xq = getelementptr i8, ptr %i.b, i64 8
  %.val30.i126 = load i64, ptr %i.xq, align 8, !tbaa !91
  store ptr %.val.i125, ptr %i.xo, align 8, !tbaa !53
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  store i64 %.val30.i126, ptr %i.xr, align 8, !tbaa !77
  br i1 %.not, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !58
  %i.xu = getelementptr i8, ptr %0, i64 1096
  %.val.i.i128 = load ptr, ptr %i.xu, align 8, !tbaa !38
  %i.xv = getelementptr i8, ptr %0, i64 1112
  %.val13.i.i129 = load i64, ptr %i.xv, align 8, !tbaa !68
  %i.xw = getelementptr [104 x i8], ptr %.val.i.i128, i64 %.val13.i.i129
  %i.xx = getelementptr [104 x i8], ptr %i.xw, i64 %i.xt ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !75
  %.not.i.i130 = icmp eq i32 %i.xz, 0
  br i1 %.not.i.i130, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ya = getelementptr i8, ptr %i.xx, i64 -176
  store i32 %2, ptr %i.ya, align 8, !tbaa !79
  br label %SetPreviousDisposeMethod.exit.i131

bb.bv:                                            ; preds = %bb.bt
  %i.yb = getelementptr i8, ptr %i.xx, i64 -112
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !71
  %.not12.i.i134 = icmp eq i32 %i.yc, 0
  %i.yd = select i1 %.not12.i.i134, i64 -176, i64 -128
  br label %SetPreviousDisposeMethod.exit.i131

SetPreviousDisposeMethod.exit.i131:               ; preds = %bb.bv, %bb.bu
  %.sink14.i.i132 = phi i64 [ %i.yd, %bb.bv ], [ -128, %bb.bu ]
  %i.ye = getelementptr i8, ptr %i.xx, i64 %.sink14.i.i132
  store i32 %2, ptr %i.ye, align 8, !tbaa !83
  %i.yf = load i32, ptr %i.xg, align 8, !tbaa !158 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %i.yf, ptr %i.yg, align 8, !tbaa !74
  %.not28.i133 = icmp eq i32 %i.yf, 0
  br i1 %.not28.i133, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %SetPreviousDisposeMethod.exit.i131
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !32
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !31
  store ptr %i.yk, ptr %i.yh, align 8, !tbaa !32
  store ptr %i.yi, ptr %i.yj, align 8, !tbaa !31
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %SetPreviousDisposeMethod.exit.i131, %bb.bs
  %i.yl = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %.not29.i127 = icmp eq ptr %i.yl, null
  br i1 %.not29.i127, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.yl) #14
  %i.ym = load ptr, ptr %9, align 8, !tbaa !67
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 100
  store i32 0, ptr %i.yn, align 4, !tbaa !97
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  store ptr %i.b, ptr %9, align 8, !tbaa !67
  br label %PickBestCandidate.exit135

bb.ca:                                            ; preds = %bb.br
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.b) #14
  %i.yo = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.yo, align 4, !tbaa !97
  br label %PickBestCandidate.exit135

PickBestCandidate.exit135:                        ; preds = %bb.ca, %bb.bz, %.split147, %.split146, %EncodeCandidate.exit122, %EncodeCandidate.exit
  %.0 = phi i32 [ %i.xe, %EncodeCandidate.exit122 ], [ %i.hh, %EncodeCandidate.exit ], [ 0, %.split147 ], [ 0, %bb.ca ], [ 0, %.split146 ], [ 0, %bb.bz ]
  ret i32 %.0
}

declare void @WebPMemoryWriterClear(ptr noundef) local_unnamed_addr #3

declare i32 @WebPGetColorPalette(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WebPMemoryWriterInit(ptr noundef) local_unnamed_addr #3

declare i32 @WebPMemoryWrite(ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @WebPEncode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxGetFrame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxGetCanvasSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxSetImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @WebPMuxCreateInternal(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPDecode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPInitDecoderConfigInternal(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPGetFeaturesInternal(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !48}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"WebPMuxAnimParams", !6, i64 0, !6, i64 4}
!10 = !{!"WebPAnimEncoderOptions", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28}
!11 = !{!10, !6, i64 16}
!12 = !{!6, !6, i64 0}
!13 = !{!10, !6, i64 20}
!14 = !{!10, !6, i64 24}
!15 = !{!5, !5, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"float", !5, i64 0}
!20 = !{!"WebPConfig", !6, i64 0, !19, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !19, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112}
!21 = !{!"p1 _ZTS11WebPPicture", !16, i64 0}
!22 = !{!"p1 omnipotent char", !16, i64 0}
!23 = !{!"p1 int", !16, i64 0}
!24 = !{!"p1 _ZTS12WebPAuxStats", !16, i64 0}
!25 = !{!"WebPPicture", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !22, i64 16, !22, i64 24, !22, i64 32, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !5, i64 60, !23, i64 72, !6, i64 80, !5, i64 84, !16, i64 96, !16, i64 104, !6, i64 112, !22, i64 120, !24, i64 128, !6, i64 136, !16, i64 144, !16, i64 152, !5, i64 160, !22, i64 176, !22, i64 184, !5, i64 192, !16, i64 224, !16, i64 232, !5, i64 240}
!26 = !{!"long", !5, i64 0}
!27 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!28 = !{!"p1 _ZTS7WebPMux", !16, i64 0}
!29 = !{!"WebPAnimEncoder", !6, i64 0, !6, i64 4, !10, i64 8, !20, i64 52, !20, i64 168, !21, i64 288, !25, i64 296, !6, i64 552, !25, i64 560, !25, i64 816, !22, i64 1072, !6, i64 1080, !22, i64 1088, !16, i64 1096, !26, i64 1104, !26, i64 1112, !26, i64 1120, !26, i64 1128, !26, i64 1136, !6, i64 1144, !6, i64 1148, !6, i64 1152, !6, i64 1156, !6, i64 1160, !27, i64 1164, !6, i64 1180, !6, i64 1184, !26, i64 1192, !26, i64 1200, !28, i64 1208, !5, i64 1216}
!30 = !{!29, !6, i64 552}
!31 = !{!29, !22, i64 1072}
!32 = !{!29, !22, i64 1088}
!33 = !{!29, !26, i64 1136}
!34 = !{!29, !6, i64 1144}
!35 = !{!29, !6, i64 24}
!36 = !{!29, !6, i64 20}
!37 = !{!29, !26, i64 1104}
!38 = !{!29, !16, i64 1096}
!39 = !{!29, !28, i64 1208}
!40 = !{!29, !6, i64 1180}
!41 = !{!29, !6, i64 1184}
!42 = !{!27, !6, i64 0}
!43 = !{!27, !6, i64 4}
!44 = !{!27, !6, i64 8}
!45 = !{!27, !6, i64 12}
!46 = !{!25, !23, i64 72}
!47 = !{!25, !6, i64 80}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!25, !6, i64 8}
!50 = !{!25, !6, i64 12}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!"WebPData", !22, i64 0, !26, i64 8}
!53 = !{!52, !22, i64 0}
!54 = !{!"llvm.loop.unswitch.partial.disable"}
!55 = !{!25, !6, i64 0}
!56 = !{!29, !6, i64 1156}
!57 = !{!25, !6, i64 136}
!58 = !{!29, !26, i64 1120}
!59 = !{!29, !6, i64 1152}
!60 = !{!29, !6, i64 0}
!61 = !{!29, !6, i64 4}
!62 = !{!29, !6, i64 32}
end_hunk_4
