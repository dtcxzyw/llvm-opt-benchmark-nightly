inline.NumInlined: 118
inline.NumDeleted: 43
begin_hunk_0_@MinimizeChangeRectangle:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0132 = phi i32 [ %i.m, %.lr.ph ], [ %i.al, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = load i32, ptr %i.o, align 4, !tbaa !44   ; 2 uses
  %i.v = load i32, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.u
  %i.x = add nsw i32 %i.w, %.0132
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.y
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !48  ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.u
  %i.ad = add nsw i32 %i.ac, %.0132
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = load i32, ptr %i.s, align 4, !tbaa !46
  %i.ah = tail call i32 %i.a(ptr noundef %i.z, i32 noundef %i.v, ptr noundef %i.af, i32 noundef %i.ab, i32 noundef %i.ag, i32 noundef %i.i) #14, !callees !60
  %.not104 = icmp eq i32 %i.ah, 0
  %.pr = load i32, ptr %i.j, align 4, !tbaa !45   ; 3 uses
  br i1 %.not104, label %.loopexit124, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = add nsw i32 %.pr, -1                    ; 2 uses
  store i32 %i.ai, ptr %i.j, align 4, !tbaa !45
  %i.aj = load i32, ptr %2, align 4, !tbaa !43    ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %2, align 4, !tbaa !43
  %i.al = add nsw i32 %.0132, 1                   ; 2 uses
  %i.am = add i32 %.pr, %i.aj
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %bb.b, label %.loopexit124, !llvm.loop !61

.loopexit124:                                     ; preds = %bb.c, %bb.b, %bb.a
  %i.ao = phi i32 [ %i.k, %bb.a ], [ %.pr, %bb.b ], [ %i.ai, %bb.c ] ; 3 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %IsEmptyRect.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit124
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.not105.not135 = icmp sgt i32 %i.ao, 0
  br i1 %.not105.not135, label %.lr.ph137, label %.thread115.thread

.lr.ph137:                                        ; preds = %bb.d
  %i.ar = load i32, ptr %2, align 4, !tbaa !43
  %i.as = add nsw i32 %i.ar, %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph137, %bb.f
  %.1136.in = phi i32 [ %i.as, %.lr.ph137 ], [ %.1136, %bb.f ]
  %.1136 = add nsw i32 %.1136.in, -1              ; 4 uses
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.az = load i32, ptr %i.at, align 4, !tbaa !44 ; 2 uses
  %i.ba = load i32, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.az
  %i.bc = add nsw i32 %i.bb, %.1136
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bd
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.bg = load i32, ptr %i.aw, align 8, !tbaa !48 ; 2 uses
  %i.bh = mul nsw i32 %i.bg, %i.az
  %i.bi = add nsw i32 %i.bh, %.1136
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = load i32, ptr %i.ax, align 4, !tbaa !46
  %i.bm = tail call i32 %i.a(ptr noundef %i.be, i32 noundef %i.ba, ptr noundef %i.bk, i32 noundef %i.bg, i32 noundef %i.bl, i32 noundef %i.i) #14, !callees !60
  %.not106 = icmp eq i32 %i.bm, 0
  %.pre.pre = load i32, ptr %i.j, align 4, !tbaa !45 ; 2 uses
  br i1 %.not106, label %.thread115, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = add nsw i32 %.pre.pre, -1               ; 2 uses
  store i32 %i.bn, ptr %i.j, align 4, !tbaa !45
  %i.bo = load i32, ptr %2, align 4, !tbaa !43
  %.not105.not = icmp sgt i32 %.1136, %i.bo
  br i1 %.not105.not, label %bb.e, label %.thread115, !llvm.loop !62

.thread115:                                       ; preds = %bb.f, %bb.e
  %.pre = phi i32 [ %.pre.pre, %bb.e ], [ %i.bn, %bb.f ]
  %i.bp = icmp eq i32 %.pre, 0
  br i1 %i.bp, label %IsEmptyRect.exit, label %.thread115.thread

.thread115.thread:                                ; preds = %bb.d, %.thread115
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !46 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph140, label %.loopexit

.lr.ph140:                                        ; preds = %.thread115.thread
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph140, %bb.h
  %.098139 = phi i32 [ %i.bu, %.lr.ph140 ], [ %i.cq, %bb.h ] ; 3 uses
  %i.by = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !48
  %i.ca = mul nsw i32 %i.bz, %.098139
  %i.cb = load i32, ptr %2, align 4, !tbaa !43    ; 2 uses
  %i.cc = add nsw i32 %i.ca, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cd
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !47
  %i.cg = load i32, ptr %i.bx, align 8, !tbaa !48
  %i.ch = mul nsw i32 %i.cg, %.098139
  %i.ci = add nsw i32 %i.ch, %i.cb
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cj
  %i.cl = load i32, ptr %i.j, align 4, !tbaa !45
  %i.cm = tail call i32 %i.a(ptr noundef %i.ce, i32 noundef 1, ptr noundef %i.ck, i32 noundef 1, i32 noundef %i.cl, i32 noundef %i.i) #14, !callees !60
  %.not107 = icmp eq i32 %i.cm, 0
  %.pr120 = load i32, ptr %i.br, align 4, !tbaa !46 ; 3 uses
  br i1 %.not107, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = add nsw i32 %.pr120, -1                 ; 2 uses
  store i32 %i.cn, ptr %i.br, align 4, !tbaa !46
  %i.co = load i32, ptr %i.bq, align 4, !tbaa !44 ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.bq, align 4, !tbaa !44
  %i.cq = add nsw i32 %.098139, 1                 ; 2 uses
  %i.cr = add i32 %.pr120, %i.co
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.g, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %bb.h, %bb.g, %.thread115.thread
  %i.ct = phi i32 [ %i.bs, %.thread115.thread ], [ %.pr120, %bb.g ], [ %i.cn, %bb.h ] ; 3 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %IsEmptyRect.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %.not108.not144 = icmp sgt i32 %i.ct, 0
  br i1 %.not108.not144, label %.lr.ph146, label %.thread121.thread

.lr.ph146:                                        ; preds = %bb.i
  %i.cv = load i32, ptr %i.bq, align 4, !tbaa !44
  %i.cw = add nsw i32 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph146, %bb.k
  %.199145.in = phi i32 [ %i.cw, %.lr.ph146 ], [ %.199145, %bb.k ]
  %.199145 = add nsw i32 %.199145.in, -1          ; 4 uses
  %i.da = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.db = load i32, ptr %i.cx, align 8, !tbaa !48
  %i.dc = mul nsw i32 %i.db, %.199145
  %i.dd = load i32, ptr %2, align 4, !tbaa !43    ; 2 uses
  %i.de = add nsw i32 %i.dc, %i.dd
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.df
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !47
  %i.di = load i32, ptr %i.cz, align 8, !tbaa !48
  %i.dj = mul nsw i32 %i.di, %.199145
  %i.dk = add nsw i32 %i.dj, %i.dd
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dl
  %i.dn = load i32, ptr %i.j, align 4, !tbaa !45
  %i.do = tail call i32 %i.a(ptr noundef %i.dg, i32 noundef 1, ptr noundef %i.dm, i32 noundef 1, i32 noundef %i.dn, i32 noundef %i.i) #14, !callees !60
  %.not109 = icmp eq i32 %i.do, 0
  %.pre149.pre = load i32, ptr %i.br, align 4, !tbaa !46 ; 2 uses
  br i1 %.not109, label %.thread121, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = add nsw i32 %.pre149.pre, -1            ; 2 uses
  store i32 %i.dp, ptr %i.br, align 4, !tbaa !46
  %i.dq = load i32, ptr %i.bq, align 4, !tbaa !44
  %.not108.not = icmp sgt i32 %.199145, %i.dq
  br i1 %.not108.not, label %bb.j, label %.thread121, !llvm.loop !64

.thread121:                                       ; preds = %bb.k, %bb.j
  %.pre149 = phi i32 [ %.pre149.pre, %bb.j ], [ %i.dp, %bb.k ]
  %i.dr = icmp eq i32 %.pre149, 0
  br i1 %i.dr, label %IsEmptyRect.exit, label %.thread121.thread

.thread121.thread:                                ; preds = %bb.i, %.thread121
  %i.ds = load i32, ptr %i.j, align 4, !tbaa !45
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %IsEmptyRect.exit, label %IsEmptyRect.exit.thread

IsEmptyRect.exit:                                 ; preds = %.thread121.thread, %.thread121, %.loopexit, %.thread115, %.loopexit124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %IsEmptyRect.exit.thread

IsEmptyRect.exit.thread:                          ; preds = %.thread121.thread, %IsEmptyRect.exit
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPAnimEncoderAdd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %4 = alloca %struct.FrameRectangle, align 4     ; 6 uses
  %5 = alloca %struct.WebPConfig, align 4         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 7 uses
  store i8 0, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1156 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1148
  %i.g = load i32, ptr %i.f, align 4, !tbaa !65
  %i.h = sub i32 %2, %i.g                         ; 2 uses
  %i.i = icmp ugt i32 %i.h, 16777215
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not54 = icmp eq ptr %1, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 4, ptr %i.j, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str) #14 ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @IncreasePreviousDuration(ptr noundef %0, i32 noundef %i.h)
  %.not52 = icmp eq i32 %i.l, 0
  br i1 %.not52, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc i32 @FlushFrames(ptr noundef %0)
  %.not53 = icmp eq i32 %i.r, 0
  br i1 %.not53, label %.critedge, label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i32 %2, ptr %i.s, align 8, !tbaa !68
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i32 1, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store i32 %2, ptr %i.v, align 4, !tbaa !65
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !51
  %i.y = load i32, ptr %0, align 8, !tbaa !69
  %.not55 = icmp eq i32 %i.x, %i.y
  br i1 %.not55, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !70
  %.not56 = icmp eq i32 %i.aa, %i.ac
  br i1 %.not56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 4, ptr %i.ad, align 8, !tbaa !66
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.af = load i32, ptr %1, align 8, !tbaa !59
  %.not57 = icmp eq i32 %i.af, 0
  br i1 %.not57, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !71
  %.not58 = icmp eq i32 %i.ah, 0
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.aj = tail call i64 @fwrite(ptr nonnull @.str.2, i64 80, i64 1, ptr %i.ai) #16 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ak = tail call i32 @WebPPictureYUVAToARGB(ptr noundef nonnull %1) #14
  %.not59 = icmp eq i32 %i.ak, 0
  br i1 %.not59, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.al = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #14 ; 0 uses
  br label %.critedge

bb.u:                                             ; preds = %bb.s, %bb.p
  %.not60 = icmp eq ptr %3, null
  br i1 %.not60, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = tail call i32 @WebPValidateConfig(ptr noundef nonnull %3) #14
  %.not62 = icmp eq i32 %i.am, 0
  br i1 %.not62, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.an = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4) #14 ; 0 uses
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %5, ptr noundef nonnull align 4 dereferenceable(116) %3, i64 116, i1 false), !tbaa.struct !72
  br label %bb.ab

bb.y:                                             ; preds = %bb.u
  %i.ao = call i32 @WebPConfigInitInternal(ptr noundef nonnull %5, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #14
  %.not61 = icmp eq i32 %i.ao, 0
  br i1 %.not61, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  store i32 1, ptr %5, align 4, !tbaa !74
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 7 uses
  store ptr %1, ptr %i.aq, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !33
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %CopyCurrentCanvas.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @WebPCopyPixels(ptr noundef nonnull %1, ptr noundef nonnull %i.at) #14
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !76
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !76
  store i32 0, ptr %i.ar, align 8, !tbaa !33
  br label %CopyCurrentCanvas.exit

CopyCurrentCanvas.exit:                           ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 7 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !67 ; 3 uses
  %i.ba = getelementptr i8, ptr %0, i64 1088      ; 2 uses
  %.val106.i = load ptr, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr i8, ptr %0, i64 1104      ; 2 uses
  %.val107.i = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.bc = getelementptr [104 x i8], ptr %.val106.i, i64 %.val107.i
  %i.bd = getelementptr [104 x i8], ptr %i.bc, i64 %i.az ; 15 uses
  %i.be = add i64 %i.az, 1
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !67
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !41
  %.not.i64 = icmp eq i32 %i.bf, 0
  br i1 %.not.i64, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %CopyCurrentCanvas.exit
  %i.bg = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %5, i32 noundef 1, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not102.i = icmp eq i32 %i.bg, 0
  br i1 %.not102.i, label %bb.ae, label %.thread117.i

bb.ae:                                            ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i32 1, ptr %i.bh, align 8, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 0, ptr %i.bi, align 8, !tbaa !81
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i32 0, ptr %i.bj, align 4, !tbaa !82
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 0, ptr %i.bk, align 8, !tbaa !83
  br label %bb.av

bb.af:                                            ; preds = %CopyCurrentCanvas.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !82 ; 2 uses
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !37
  %.not91.not.i = icmp slt i32 %i.bm, %i.bp
  br i1 %.not91.not.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bq = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %5, i32 noundef 0, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not100.i = icmp eq i32 %i.bq, 0
  br i1 %.not100.i, label %bb.ah, label %.thread117.i

bb.ah:                                            ; preds = %bb.ag
  %i.br = load i32, ptr %i.a, align 4, !tbaa !3
  %.not101.i = icmp eq i32 %i.br, 0
  br i1 %.not101.i, label %bb.ai, label %.thread134.i

bb.ai:                                            ; preds = %bb.ah
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i32 0, ptr %i.bs, align 8, !tbaa !78
  %i.bt = load i64, ptr %i.ay, align 8, !tbaa !67
  %i.bu = add i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !81
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 0, ptr %i.bw, align 8, !tbaa !83
  br label %bb.av

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bx = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %5, i32 noundef 0, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not92.i = icmp eq i32 %i.bx, 0
  br i1 %.not92.i, label %bb.ak, label %.thread113.i

bb.ak:                                            ; preds = %bb.aj
  %i.by = load i32, ptr %i.a, align 4, !tbaa !3
  %.not93.i = icmp eq i32 %i.by, 0
  br i1 %.not93.i, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !84
  %i.ca = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %5, i32 noundef 1, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not94.i = icmp eq i32 %i.ca, 0
  br i1 %.not94.i, label %bb.am, label %.thread113.i

bb.am:                                            ; preds = %bb.al
  %i.cb = getelementptr i8, ptr %i.bd, i64 8
  %.val108.i = load i64, ptr %i.cb, align 8, !tbaa !85
  %i.cc = getelementptr i8, ptr %i.bd, i64 56
  %.val109.i = load i64, ptr %i.cc, align 8, !tbaa !86
  %i.cd = sub i64 %.val109.i, %.val108.i          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !34
  %.not95.i = icmp sgt i64 %i.cd, %i.cf           ; 2 uses
  br i1 %.not95.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !35 ; 2 uses
  %.not96.i = icmp eq i32 %i.ch, -1
  br i1 %.not96.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = sext i32 %i.ch to i64
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !39
  %.val105.i = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.cj = getelementptr [104 x i8], ptr %.val.i, i64 %.val105.i
  %i.ck = getelementptr [104 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  store i32 0, ptr %i.cl, align 8, !tbaa !78
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i32 1, ptr %i.cm, align 8, !tbaa !78
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 1, ptr %i.cn, align 8, !tbaa !83
  %i.co = trunc i64 %i.az to i32
  store i32 %i.co, ptr %i.cg, align 8, !tbaa !35
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !34
  %i.cp = load i64, ptr %i.ay, align 8, !tbaa !67
  %i.cq = add i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !81
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i32 0, ptr %i.cs, align 8, !tbaa !78
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 0, ptr %i.ct, align 8, !tbaa !83
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cu = load i32, ptr %i.bl, align 4, !tbaa !82
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !36
  %.not97.i = icmp slt i32 %i.cu, %i.cw
  br i1 %.not97.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cx = load i64, ptr %i.ay, align 8, !tbaa !67
  %i.cy = add i64 %i.cx, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !81
  store i32 0, ptr %i.bl, align 4, !tbaa !82
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i32 -1, ptr %i.da, align 8, !tbaa !35
  store i64 4294967296, ptr %i.ce, align 8, !tbaa !34
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %.not95.i, label %6, label %.thread.i

6:                                                ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bz, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !84
  br label %.thread.i

.thread.i:                                        ; preds = %6, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.av

.thread113.i:                                     ; preds = %bb.al, %bb.aj
  %.080.ph.i = phi i32 [ %i.bx, %bb.aj ], [ %i.ca, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.thread117.i

bb.au:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.thread134.i

.thread134.i:                                     ; preds = %bb.au, %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !87
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !87
  br label %.thread117.i

bb.av:                                            ; preds = %.thread.i, %bb.ai, %bb.ae
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @WebPCopyPixels(ptr noundef %i.de, ptr noundef nonnull %i.df) #14
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %.pre.i = load i32, ptr %i.a, align 4
  %i.dg = icmp eq i32 %.pre.i, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !87
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !87
  br i1 %i.dg, label %CacheFrame.exit.thread, label %.thread117.i

.thread117.i:                                     ; preds = %bb.av, %.thread134.i, %.thread113.i, %bb.ag, %bb.ad
  %7 = phi i1 [ false, %bb.av ], [ true, %bb.ad ], [ true, %bb.ag ], [ true, %.thread113.i ], [ false, %.thread134.i ]
  %.3122.i = phi i32 [ 0, %bb.av ], [ %i.bg, %bb.ad ], [ %i.bq, %bb.ag ], [ %.080.ph.i, %.thread113.i ], [ 0, %.thread134.i ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %FrameRelease.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.thread117.i
  %i.dk = load ptr, ptr %i.bd, align 8, !tbaa !55
  call void @WebPFree(ptr noundef %i.dk) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !55
  call void @WebPFree(ptr noundef %i.dm) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bd, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit.i

FrameRelease.exit.i:                              ; preds = %bb.aw, %.thread117.i
  %i.dn = load i64, ptr %i.ay, align 8, !tbaa !67
  %i.do = add i64 %i.dn, -1
  store i64 %i.do, ptr %i.ay, align 8, !tbaa !67
  %i.dp = load i32, ptr %i.d, align 4, !tbaa !41
  %.not103.i = icmp eq i32 %i.dp, 0
  br i1 %.not103.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %FrameRelease.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !82
  %i.ds = add nsw i32 %i.dr, -1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !82
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %FrameRelease.exit.i
  br i1 %7, label %CacheFrame.exit, label %CacheFrame.exit.thread

CacheFrame.exit:                                  ; preds = %bb.ay
  %i.dt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %.3122.i) #14 ; 0 uses
  %i.du = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 136
  store i32 %.3122.i, ptr %i.dv, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.aq, align 8, !tbaa !75
  store i32 1, ptr %i.ar, align 8, !tbaa !33
  br label %.critedge

CacheFrame.exit.thread:                           ; preds = %bb.ay, %bb.av
  %.3122.i.sink = phi i32 [ 0, %bb.av ], [ %.3122.i, %bb.ay ]
  %i.dw = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  store i32 %.3122.i.sink, ptr %i.dx, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.dy = call fastcc i32 @FlushFrames(ptr noundef %0)
  %.not68 = icmp eq i32 %i.dy, 0
  store ptr null, ptr %i.aq, align 8, !tbaa !75
  store i32 1, ptr %i.ar, align 8, !tbaa !33
  br i1 %.not68, label %.critedge, label %bb.az

bb.az:                                            ; preds = %CacheFrame.exit.thread
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store i32 %2, ptr %i.dz, align 4, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %CacheFrame.exit, %bb.f, %bb.g, %bb.i, %CacheFrame.exit.thread, %bb.az, %bb.a, %bb.z, %bb.w, %bb.t, %bb.o, %bb.l
  %.1 = phi i32 [ 0, %CacheFrame.exit.thread ], [ 1, %bb.l ], [ 0, %bb.o ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.t ], [ 1, %bb.az ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %CacheFrame.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @IncreasePreviousDuration(ptr noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 5 uses
  %2 = alloca %struct.WebPData, align 8           ; 7 uses
  %i.b = alloca [72 x i8], align 16               ; 5 uses
  %3 = alloca %struct.WebPData, align 8           ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr i8, ptr %0, i64 1088
  %.val36 = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %0, i64 1104
  %.val37 = load i64, ptr %i.f, align 8, !tbaa !77
  %i.g = getelementptr [104 x i8], ptr %.val36, i64 %.val37
  %i.h = getelementptr [104 x i8], ptr %i.g, i64 %i.d ; 13 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -80      ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !88
  %i.k = add nsw i32 %i.j, %1                     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 16777215
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, ptr noundef nonnull align 16 dereferenceable(28) @__const.IncreasePreviousDuration.lossless_1x1_bytes, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.a, ptr %2, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 28, ptr %i.m, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, ptr noundef nonnull align 16 dereferenceable(72) @__const.IncreasePreviousDuration.lossy_1x1_bytes, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.b, ptr %3, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 72, ptr %i.n, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !90
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !91
  %.not33 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not33, ptr %3, ptr %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %. = phi ptr [ %2, %bb.b ], [ %i.s, %bb.c ]     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 0, ptr %i.t, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 3, ptr %i.u, align 4, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %i.x, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 0, ptr %i.y, align 4, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %1, ptr %i.z, align 8, !tbaa !88
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %., i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !89 ; 2 uses
  %.not18.i = icmp eq i64 %i.ac, 0
  br i1 %.not18.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = call ptr @WebPMalloc(i64 noundef %i.ac) #14 ; 3 uses
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !55
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %., align 8, !tbaa !55
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !89 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.af, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !89
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.ai, ptr %i.an, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 0, ptr %i.ao, align 8, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) @__const.IncreasePreviousDuration.rect, i64 16, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i32 %i.k, ptr %i.i, align 8, !tbaa !88
  %i.aq = getelementptr i8, ptr %i.h, i64 -32
  store i32 %i.k, ptr %i.aq, align 8, !tbaa !97
  br label %bb.j

.critedge:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ 1, %bb.h ], [ 1, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @FlushFrames(ptr noundef nonnull captures(none) %0) unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.EncodedFrame, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81
  %.not47 = icmp eq i64 %i.b, 0
  br i1 %.not47, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1088
  %i.d = getelementptr i8, ptr %0, i64 1104       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %.val44.pre = load i64, ptr %i.d, align 8, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.val44 = phi i64 [ %.val44.pre, %.lr.ph ], [ %i.am, %bb.h ]
  %.val = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.i = getelementptr [104 x i8], ptr %.val, i64 %.val44 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78
  %.not40 = icmp eq i32 %i.k, 0
  %.idx = select i1 %.not40, i64 0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 5 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.n = tail call i32 @WebPMuxPushFrame(ptr noundef %i.m, ptr noundef %i.l, i32 noundef 1) #14 ; 2 uses
  %.not41.not = icmp eq i32 %i.n, 1
  br i1 %.not41.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef %i.n) #14 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.f, align 8, !tbaa !71
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !101
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.14, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !102
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !102
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %FrameRelease.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %i.ad) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %i.af) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit

FrameRelease.exit:                                ; preds = %bb.e, %bb.f
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !81
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !81
  %i.ai = load <2 x i64>, ptr %i.d, align 8, !tbaa !103
  %i.aj = add <2 x i64> %i.ai, <i64 1, i64 -1>    ; 3 uses
  store <2 x i64> %i.aj, ptr %i.d, align 8, !tbaa !103
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  %.not43 = icmp eq i32 %i.ak, -1
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %FrameRelease.exit
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.h, align 8, !tbaa !35
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
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  %.not39 = icmp eq i64 %i.ar, 0
  br i1 %.not39, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.at, i64 104, i1 false), !tbaa.struct !104
  %sext = shl i64 %i.ar, 32
  %i.au = ashr exact i64 %sext, 32                ; 3 uses
  %i.av = getelementptr inbounds [104 x i8], ptr %i.at, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull align 8 dereferenceable(104) %i.av, i64 104, i1 false), !tbaa.struct !104
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.ax = getelementptr inbounds [104 x i8], ptr %i.aw, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !104
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ay, null
  br i1 %.not.i45, label %FrameRelease.exit46, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds [104 x i8], ptr %i.ay, i64 %i.au ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %i.ba) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %i.bc) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit46

FrameRelease.exit46:                              ; preds = %bb.j, %bb.k
  store i64 0, ptr %i.aq, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge, %bb.i, %FrameRelease.exit46
  %.2 = phi i32 [ 0, %.thread ], [ 1, %FrameRelease.exit46 ], [ 1, %bb.i ], [ 1, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @WebPPictureYUVAToARGB(ptr noundef) local_unnamed_addr #3

declare i32 @WebPValidateConfig(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPAnimEncoderAssemble(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !12
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6) #14 ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87   ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7) #14 ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %.not = icmp ne i32 %i.j, 0
  %.not44 = icmp eq i64 %i.f, 1
  %or.cond = or i1 %.not44, %.not
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67
  %.not45 = icmp eq i64 %i.l, 0
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1148
  %i.n = load i32, ptr %i.m, align 4, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !68
  %i.q = sub i32 %i.n, %i.p
  %i.r = uitofp i32 %i.q to double
  %i.s = add i64 %i.f, -1
  %i.t = uitofp i64 %i.s to double
  %i.u = fdiv double %i.r, %i.t
  %i.v = fptosi double %i.u to i32
  %i.w = tail call fastcc i32 @IncreasePreviousDuration(ptr noundef %0, i32 noundef %i.v)
  %.not46.not = icmp eq i32 %i.w, 0
  br i1 %.not46.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.y = load i64, ptr %i.x, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.y, ptr %i.z, align 8, !tbaa !81
  %i.aa = tail call fastcc i32 @FlushFrames(ptr noundef %0)
  %.not47 = icmp eq i32 %i.aa, 0
  br i1 %.not47, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 3 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.ag = tail call i32 @WebPMuxSetCanvasSize(ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.af) #14 ; 2 uses
  %.not48 = icmp eq i32 %i.ag, 1
  br i1 %.not48, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = tail call i32 @WebPMuxSetAnimationParams(ptr noundef %i.ac, ptr noundef nonnull %i.ah) #14 ; 2 uses
  %.not49 = icmp eq i32 %i.ai, 1
  br i1 %.not49, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call i32 @WebPMuxAssemble(ptr noundef %i.ac, ptr noundef nonnull %1) #14 ; 2 uses
  %.not50 = icmp eq i32 %i.aj, 1
  br i1 %.not50, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !102
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = tail call fastcc i32 @OptimizeSingleFrame(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not51 = icmp eq i32 %i.an, 1
  br i1 %.not51, label %bb.p, label %bb.o

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
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
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
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load i32, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52   ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph18.i9.i.i.i, label %WebPUtilClearPic.exit.i.i

.lr.ph18.i9.i.i.i:                                ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.s = icmp sgt i32 %i.n, 0
  br i1 %i.s, label %.lr.ph.us.preheader.i10.i.i.i, label %WebPUtilClearPic.exit.i.i

.lr.ph.us.preheader.i10.i.i.i:                    ; preds = %.lr.ph18.i9.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 5 uses
  %i.v = add nsw i32 %i.n, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 4                  ; 5 uses
  %xtraiter = and i32 %i.p, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.p, 4
  br i1 %i.z, label %.lr.ph.us.i13.i.i.i.epil.preheader, label %.lr.ph.us.preheader.i10.i.i.i.new

.lr.ph.us.preheader.i10.i.i.i.new:                ; preds = %.lr.ph.us.preheader.i10.i.i.i
  %unroll_iter = and i32 %i.p, 2147483644
  br label %.lr.ph.us.i13.i.i.i

.lr.ph.us.i13.i.i.i:                              ; preds = %.lr.ph.us.i13.i.i.i, %.lr.ph.us.preheader.i10.i.i.i.new
  %.01416.us.i14.i.i.i = phi i32 [ 0, %.lr.ph.us.preheader.i10.i.i.i.new ], [ %i.at, %.lr.ph.us.i13.i.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.us.preheader.i10.i.i.i.new ], [ %niter.next.3, %.lr.ph.us.i13.i.i.i ]
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !48
  %i.ab = mul nsw i32 %i.aa, %.01416.us.i14.i.i.i
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %scevgep21.i15.i.i.i = getelementptr i8, ptr %i.u, i64 %i.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep21.i15.i.i.i, i8 0, i64 %i.y, i1 false), !tbaa !3
  %i.ae = or disjoint i32 %.01416.us.i14.i.i.i, 1
  %i.af = load i32, ptr %i.r, align 8, !tbaa !48
  %i.ag = mul nsw i32 %i.af, %i.ae
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  %scevgep21.i15.i.i.i.1 = getelementptr i8, ptr %i.u, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep21.i15.i.i.i.1, i8 0, i64 %i.y, i1 false), !tbaa !3
  %i.aj = or disjoint i32 %.01416.us.i14.i.i.i, 2
  %i.ak = load i32, ptr %i.r, align 8, !tbaa !48
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 2
  %scevgep21.i15.i.i.i.2 = getelementptr i8, ptr %i.u, i64 %i.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep21.i15.i.i.i.2, i8 0, i64 %i.y, i1 false), !tbaa !3
  %i.ao = or disjoint i32 %.01416.us.i14.i.i.i, 3
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !48
  %i.aq = mul nsw i32 %i.ap, %i.ao
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 2
  %scevgep21.i15.i.i.i.3 = getelementptr i8, ptr %i.u, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep21.i15.i.i.i.3, i8 0, i64 %i.y, i1 false), !tbaa !3
  %i.at = add nuw nsw i32 %.01416.us.i14.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.us.i13.i.i.i, !llvm.loop !49

WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa:     ; preds = %.lr.ph.us.i13.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %WebPUtilClearPic.exit.i.i, label %.lr.ph.us.i13.i.i.i.epil.preheader

.lr.ph.us.i13.i.i.i.epil.preheader:               ; preds = %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa, %.lr.ph.us.preheader.i10.i.i.i
  %.01416.us.i14.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.us.preheader.i10.i.i.i ], [ %i.at, %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.us.i13.i.i.i.epil

.lr.ph.us.i13.i.i.i.epil:                         ; preds = %.lr.ph.us.i13.i.i.i.epil, %.lr.ph.us.i13.i.i.i.epil.preheader
  %.01416.us.i14.i.i.i.epil = phi i32 [ %i.ay, %.lr.ph.us.i13.i.i.i.epil ], [ %.01416.us.i14.i.i.i.epil.init, %.lr.ph.us.i13.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.us.i13.i.i.i.epil ], [ 0, %.lr.ph.us.i13.i.i.i.epil.preheader ]
  %i.au = load i32, ptr %i.r, align 8, !tbaa !48
  %i.av = mul nsw i32 %i.au, %.01416.us.i14.i.i.i.epil
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %scevgep21.i15.i.i.i.epil = getelementptr i8, ptr %i.u, i64 %i.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep21.i15.i.i.i.epil, i8 0, i64 %i.y, i1 false), !tbaa !3
  %i.ay = add nuw nsw i32 %.01416.us.i14.i.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %WebPUtilClearPic.exit.i.i, label %.lr.ph.us.i13.i.i.i.epil, !llvm.loop !106

WebPUtilClearPic.exit.i.i:                        ; preds = %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa, %.lr.ph.us.i13.i.i.i.epil, %.lr.ph18.i9.i.i.i, %bb.e
  %i.az = load ptr, ptr %6, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !89
  %i.bc = call i32 @WebPGetFeaturesInternal(ptr noundef %i.az, i64 noundef %i.bb, ptr noundef nonnull %3, i32 noundef 528) #14
  %.not9.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not9.i.i, label %bb.f, label %DecodeFrameOntoCanvas.exit.thread.i

bb.f:                                             ; preds = %WebPUtilClearPic.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !98
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !99
  %i.bh = load i32, ptr %3, align 8, !tbaa !107
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !112
  %i.bk = call i32 @WebPPictureView(ptr noundef nonnull %i.k, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.bj, ptr noundef nonnull %2) #14
  %.not10.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not10.i.i, label %DecodeFrameOntoCanvas.exit.thread.i, label %DecodeFrameOntoCanvas.exit.i

DecodeFrameOntoCanvas.exit.thread.i:              ; preds = %bb.f, %WebPUtilClearPic.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %FrameToFullCanvas.exit

DecodeFrameOntoCanvas.exit.i:                     ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 1, ptr %i.bm, align 4, !tbaa !113
  store i32 3, ptr %i.bl, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !48
  %i.bs = shl nsw i32 %i.br, 2                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !52
  %i.bw = mul nsw i32 %i.bv, %i.bs
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !12
  %i.bz = load ptr, ptr %6, align 8, !tbaa !55
  %i.ca = load i64, ptr %i.ba, align 8, !tbaa !89
  %i.cb = call i32 @WebPDecode(ptr noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull %3) #14
  %.not11.i.not.i = icmp eq i32 %i.cb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.not11.i.not.i, label %bb.g, label %FrameToFullCanvas.exit

bb.g:                                             ; preds = %DecodeFrameOntoCanvas.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.k, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr @WebPMemoryWrite, ptr %i.cd, align 8, !tbaa !115
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store ptr %4, ptr %i.ce, align 8, !tbaa !116
  %i.cf = call i32 @WebPEncode(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.k) #14
  %.not.i16.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i16.not.i, label %FrameToFullCanvas.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val14.i = load ptr, ptr %4, align 8, !tbaa !117
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.val15.i = load i64, ptr %i.cg, align 8, !tbaa !119
  store ptr %.val14.i, ptr %7, align 8, !tbaa !55
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.val15.i, ptr %i.ch, align 8, !tbaa !89
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !91
  %.not11.i = icmp eq i32 %i.cj, 0
  br i1 %.not11.i, label %FrameToFullCanvas.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 1, ptr %i.k, align 8, !tbaa !59
  store ptr @WebPMemoryWrite, ptr %i.cd, align 8, !tbaa !115
  store ptr %5, ptr %i.ce, align 8, !tbaa !116
  %i.cl = call i32 @WebPEncode(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.k) #14
  %.not.i18.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i18.not.i, label %FrameToFullCanvas.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !119 ; 2 uses
  %i.co = load i64, ptr %i.cg, align 8, !tbaa !119
  %i.cp = icmp ult i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.k, label %FrameToFullCanvas.exit.thread28

bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %5, align 8, !tbaa !117
  store ptr %.val.i, ptr %7, align 8, !tbaa !55
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !89
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
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !89
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !89
  %i.cw = icmp ult i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %1, align 8, !tbaa !55
  call void @WebPFree(ptr noundef %i.cx) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %FrameToFullCanvas.exit, %bb.m, %bb.n, %bb.l, %FrameToFullCanvas.exit.thread, %bb.c, %bb.b
  %.018 = phi i32 [ %i.e, %bb.b ], [ %i.j, %bb.c ], [ %i.cq, %FrameToFullCanvas.exit.thread ], [ %i.cr, %bb.l ], [ 1, %bb.n ], [ 1, %bb.m ], [ -2, %FrameToFullCanvas.exit ]
  %i.cy = load ptr, ptr %6, align 8, !tbaa !55
  call void @WebPFree(ptr noundef %i.cy) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.cz = load ptr, ptr %7, align 8, !tbaa !55
  call void @WebPFree(ptr noundef %i.cz) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @WebPMuxDelete(ptr noundef nonnull %i.c) #14
  %i.da = load ptr, ptr %8, align 8, !tbaa !55
  call void @WebPFree(ptr noundef %i.da) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.0 = phi i32 [ %.018, %bb.o ], [ -2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @WebPAnimEncoderGetError(ptr noundef readnone captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.0 = select i1 %i.a, ptr null, ptr %i.b
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @WebPAnimEncoderSetChunk(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call i32 @WebPMuxSetChunk(ptr noundef %i.c, ptr noundef %1, ptr noundef %2, i32 noundef %3) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @WebPMuxSetChunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @WebPAnimEncoderGetChunk(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call i32 @WebPMuxGetChunk(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @WebPMuxGetChunk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @WebPAnimEncoderDeleteChunk(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
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
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @WebPFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @ComparePixelsLossless(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 %5) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.in = phi i32 [ %4, %.lr.ph ], [ %i.f, %bb.c ] ; 2 uses
  %.0811 = phi ptr [ %0, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %.0910 = phi ptr [ %2, %.lr.ph ], [ %i.h, %bb.c ] ; 2 uses
  %i.d = load i32, ptr %.0811, align 4, !tbaa !3
  %i.e = load i32, ptr %.0910, align 4, !tbaa !3
  %.not = icmp eq i32 %i.d, %i.e
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %.in, -1
  %i.g = getelementptr inbounds [4 x i8], ptr %.0811, i64 %i.b
  %i.h = getelementptr inbounds [4 x i8], ptr %.0910, i64 %i.c
  %i.i = icmp sgt i32 %.in, 1
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @ComparePixelsLossy(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %PixelsAreSimilar.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = mul nsw i32 %5, 255                      ; 3 uses
  %i.c = sext i32 %1 to i64
  %i.d = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.in = phi i32 [ %4, %.lr.ph ], [ %i.e, %bb.e ] ; 2 uses
  %.0914 = phi ptr [ %0, %.lr.ph ], [ %i.ad, %bb.e ] ; 2 uses
  %.01013 = phi ptr [ %2, %.lr.ph ], [ %i.ae, %bb.e ] ; 2 uses
  %i.e = add nsw i32 %.in, -1
  %i.f = load i32, ptr %.0914, align 4, !tbaa !3  ; 4 uses
  %i.g = load i32, ptr %.01013, align 4, !tbaa !3 ; 4 uses
  %i.h = lshr i32 %i.f, 24                        ; 4 uses
  %i.i = lshr i32 %i.f, 8
  %i.j = and i32 %i.i, 255
  %i.k = and i32 %i.f, 255
  %i.l = lshr i32 %i.g, 24
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 255
  %i.o = and i32 %i.g, 255
  %i.p = icmp eq i32 %i.h, %i.l
  br i1 %i.p, label %bb.c, label %PixelsAreSimilar.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i32 %i.g, 16
  %i.r = and i32 %i.q, 255
  %i.s = lshr i32 %i.f, 16
  %i.t = and i32 %i.s, 255
  %i.u = sub nsw i32 %i.t, %i.r
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true)
  %i.w = mul nuw nsw i32 %i.v, %i.h
  %.not.i = icmp sgt i32 %i.w, %i.b
  br i1 %.not.i, label %PixelsAreSimilar.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = sub nsw i32 %i.j, %i.n
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %i.z = mul nuw nsw i32 %i.y, %i.h
  %.not23.i = icmp samesign ugt i32 %i.z, %i.b
  br i1 %.not23.i, label %PixelsAreSimilar.exit.thread, label %PixelsAreSimilar.exit

PixelsAreSimilar.exit:                            ; preds = %bb.d
  %i.aa = sub nsw i32 %i.k, %i.o
  %i.ab = tail call i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %i.ac = mul nuw nsw i32 %i.ab, %i.h
  %.not12 = icmp samesign ugt i32 %i.ac, %i.b
  br i1 %.not12, label %PixelsAreSimilar.exit.thread, label %bb.e

bb.e:                                             ; preds = %PixelsAreSimilar.exit
  %i.ad = getelementptr inbounds [4 x i8], ptr %.0914, i64 %i.c
  %i.ae = getelementptr inbounds [4 x i8], ptr %.01013, i64 %i.d
  %i.af = icmp samesign ugt i32 %.in, 1
  br i1 %i.af, label %bb.b, label %PixelsAreSimilar.exit.thread, !llvm.loop !122

PixelsAreSimilar.exit.thread:                     ; preds = %PixelsAreSimilar.exit, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %PixelsAreSimilar.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @WebPMalloc(i64 noundef) local_unnamed_addr #3

declare i32 @WebPMuxPushFrame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPConfigInitInternal(ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @WebPCopyPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SetFrame(ptr noundef nonnull initializes((68, 300)) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr noundef writeonly captures(none) %3, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca [4 x %struct.Candidate], align 16   ; 48 uses
  %6 = alloca %struct.SubFrameParams, align 8     ; 19 uses
  %7 = alloca %struct.SubFrameParams, align 8     ; 15 uses
  %8 = alloca %struct.WebPConfig, align 4         ; 7 uses
  %9 = alloca %struct.WebPConfig, align 4         ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.c = load i32, ptr %1, align 4, !tbaa !74     ; 3 uses
  %.not = icmp eq i32 %i.c, 0                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !91
  %i.f = icmp ne i32 %i.e, 0                      ; 2 uses
  %not..not = xor i1 %.not, true
  %. = select i1 %not..not, i1 true, i1 %i.f
  %.121 = select i1 %.not, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41   ; 3 uses
  %.not63 = icmp eq i32 %i.h, 0
  %i.i = zext i1 %.not63 to i32
  %.not64 = icmp eq i32 %2, 0                     ; 3 uses
  br i1 %.not64, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.k = load i32, ptr %i.j, align 8, !tbaa !83
  %.not65 = icmp eq i32 %i.k, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %.not65, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %8, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false), !tbaa.struct !72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %9, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false), !tbaa.struct !72
  store i32 1, ptr %8, align 4, !tbaa !74
  store i32 0, ptr %9, align 4, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %i.m, ptr noundef nonnull align 4 dereferenceable(116) %1, i64 116, i1 false), !tbaa.struct !72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load i32, ptr %1, align 4, !tbaa !74
  %.not66 = icmp eq i32 %i.o, 0
  %.122 = select i1 %.not66, ptr %8, ptr %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %i.n, ptr noundef nonnull align 4 dereferenceable(116) %.122, i64 116, i1 false)
  store i32 0, ptr %4, align 4, !tbaa !3
  store i32 1, ptr %6, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.i, ptr %i.p, align 4, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.r = call i32 @WebPPictureInitInternal(ptr noundef nonnull %i.q, i32 noundef 528) #14
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %SubFrameParamsInit.exit.thread, label %SubFrameParamsInit.exit

SubFrameParamsInit.exit:                          ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 2 uses
  %i.t = call i32 @WebPPictureInitInternal(ptr noundef nonnull %i.s, i32 noundef 528) #14
  %.not6.i.not = icmp eq i32 %i.t, 0
  br i1 %.not6.i.not, label %SubFrameParamsInit.exit.thread, label %bb.d

bb.d:                                             ; preds = %SubFrameParamsInit.exit
  store i32 0, ptr %7, align 8, !tbaa !123
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.w = call i32 @WebPPictureInitInternal(ptr noundef nonnull %i.v, i32 noundef 528) #14
  %.not.i87 = icmp eq i32 %i.w, 0
  br i1 %.not.i87, label %SubFrameParamsInit.exit.thread, label %SubFrameParamsInit.exit91

SubFrameParamsInit.exit91:                        ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 296 ; 2 uses
  %i.y = call i32 @WebPPictureInitInternal(ptr noundef nonnull %i.x, i32 noundef 528) #14
  %.not6.i88.not = icmp eq i32 %i.y, 0
  br i1 %.not6.i88.not, label %SubFrameParamsInit.exit.thread, label %bb.e

bb.e:                                             ; preds = %SubFrameParamsInit.exit91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %5, i8 0, i64 416, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !126 ; 2 uses
  %i.ab = call fastcc i32 @GetSubRects(ptr noundef %i.b, ptr noundef %i.a, i32 noundef %2, i32 noundef %i.h, float noundef %i.aa, ptr noundef %6)
  %.not69 = icmp eq i32 %i.ab, 0
  br i1 %.not69, label %bb.av, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %., label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !45
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %.not110 = icmp eq i32 %i.ag, 0
  %or.cond = select i1 %i.ae, i1 true, i1 %.not110
  br i1 %or.cond, label %IsEmptyRect.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.121, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !45
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 292
  %i.al = load i32, ptr %i.ak, align 4
  %.not111 = icmp eq i32 %i.al, 0
  %or.cond114 = select i1 %i.aj, i1 true, i1 %.not111
  br i1 %or.cond114, label %IsEmptyRect.exit.thread, label %bb.j

IsEmptyRect.exit.thread:                          ; preds = %bb.i, %bb.g
  store i32 1, ptr %4, align 4, !tbaa !3
  br label %PickBestCandidate.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.l, label %bb.k, label %.thread100

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  call void @WebPCopyPixels(ptr noundef nonnull %i.b, ptr noundef nonnull %i.am) #14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !45 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46 ; 2 uses
  %i.av = add nsw i32 %i.au, %i.aq
  %i.aw = icmp sgt i32 %i.au, 0
  br i1 %i.aw, label %.lr.ph18.i.i.i, label %DisposeFrameRectangle.exit

.lr.ph18.i.i.i:                                   ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ay = icmp sgt i32 %i.as, 0
  br i1 %i.ay, label %.lr.ph.us.preheader.i.i.i, label %DisposeFrameRectangle.exit

.lr.ph.us.preheader.i.i.i:                        ; preds = %.lr.ph18.i.i.i
  %i.az = add i32 %i.as, %i.ao
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bc = sext i32 %i.ao to i64
  %i.bd = shl nsw i64 %i.bc, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.bb, i64 %i.bd
  %i.be = add i32 %i.ao, 1
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.az, i32 %i.be)
  %i.bf = xor i32 %i.ao, -1
  %i.bg = add i32 %smax.i.i.i, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 4
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i, %.lr.ph.us.preheader.i.i.i
  %.01416.us.i.i.i = phi i32 [ %i.bo, %.lr.ph.us.i.i.i ], [ %i.aq, %.lr.ph.us.preheader.i.i.i ] ; 2 uses
  %i.bk = load i32, ptr %i.ax, align 8, !tbaa !48
  %i.bl = mul nsw i32 %i.bk, %.01416.us.i.i.i
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 2
  %scevgep21.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep21.i.i.i, i8 0, i64 %i.bj, i1 false), !tbaa !3
  %i.bo = add nsw i32 %.01416.us.i.i.i, 1         ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %.lr.ph.us.i.i.i, label %DisposeFrameRectangle.exit, !llvm.loop !49

DisposeFrameRectangle.exit:                       ; preds = %.lr.ph.us.i.i.i, %bb.k, %.lr.ph18.i.i.i
  %i.bq = call fastcc i32 @GetSubRects(ptr noundef %i.am, ptr noundef %i.a, i32 noundef %2, i32 noundef %i.h, float noundef %i.aa, ptr noundef %7)
  %.not72 = icmp eq i32 %i.bq, 0
  br i1 %.not72, label %bb.av, label %bb.l

bb.l:                                             ; preds = %DisposeFrameRectangle.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !127
  %.not73 = icmp eq i32 %i.bs, 0
  br i1 %.not73, label %bb.m, label %.thread100.thread104

.thread100.thread104:                             ; preds = %bb.l
  store i32 1, ptr %7, align 8, !tbaa !123
  store i32 1, ptr %6, align 8, !tbaa !123
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val85 = load i32, ptr %i.bt, align 8, !tbaa !45
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.val86 = load i32, ptr %i.bu, align 4, !tbaa !46
  %i.bv = mul i32 %.val86, %.val85
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val83 = load i32, ptr %i.bw, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.val84 = load i32, ptr %i.bx, align 4, !tbaa !46
  %i.by = mul i32 %.val84, %.val83
  %i.bz = icmp ult i32 %i.bv, %i.by
  br i1 %i.bz, label %.thread107, label %.thread100

.critedge:                                        ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 288
  %.val81 = load i32, ptr %i.ca, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 292
  %.val82 = load i32, ptr %i.cb, align 4, !tbaa !46
  %i.cc = mul i32 %.val82, %.val81
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 288
  %.val = load i32, ptr %i.cd, align 8, !tbaa !45
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 292
  %.val80 = load i32, ptr %i.ce, align 4, !tbaa !46
  %i.cf = mul i32 %.val80, %.val
  %i.cg = icmp ult i32 %i.cc, %i.cf
  br i1 %i.cg, label %.thread107, label %.thread100

.thread107:                                       ; preds = %.critedge, %bb.n
  store i32 1, ptr %7, align 8, !tbaa !123
  store i32 0, ptr %6, align 8, !tbaa !123
  br label %bb.q

.thread100:                                       ; preds = %bb.n, %.critedge, %bb.j
  %.pr = load i32, ptr %6, align 8, !tbaa !123
  %.not74 = icmp eq i32 %.pr, 0
  br i1 %.not74, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread100.thread104, %.thread100
  %i.ch = call fastcc i32 @GenerateCandidates(ptr noundef %0, ptr noundef %5, i32 noundef 0, i32 noundef %i.c, i32 noundef %2, ptr noundef %6, ptr noundef %8, ptr noundef %9) ; 2 uses
  %.not75 = icmp eq i32 %i.ch, 0
  br i1 %.not75, label %bb.p, label %bb.av

bb.p:                                             ; preds = %bb.o, %.thread100
  %.pr106 = load i32, ptr %7, align 8, !tbaa !123
  %.not76 = icmp eq i32 %.pr106, 0
  br i1 %.not76, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread107, %bb.p
  %i.ci = call fastcc i32 @GenerateCandidates(ptr noundef %0, ptr noundef %5, i32 noundef 1, i32 noundef %i.c, i32 noundef %2, ptr noundef %7, ptr noundef %8, ptr noundef %9) ; 2 uses
  %.not77 = icmp eq i32 %i.ci, 0
  br i1 %.not77, label %bb.r, label %bb.av

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 16, !tbaa !128
  %.not43.i = icmp eq i32 %i.ck, 0                ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = load i64, ptr %i.cl, align 8            ; 4 uses
  %.not.i93 = icmp eq i64 %i.cm, -1
  %.240.i = select i1 %.not43.i, i64 -1, i64 %i.cm ; 3 uses
  %narrow = select i1 %.not43.i, i1 true, i1 %.not.i93
  %.2.i = sext i1 %narrow to i32                  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 5 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !128 ; 3 uses
  %.not43.1.i = icmp eq i32 %i.cp, 0              ; 3 uses
  br i1 %.not43.1.i, label %bb.al, label %bb.ak

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  br i1 %.not43.i, label %.preheader.split.1.i, label %bb.an

.preheader.split.us.preheader.i:                  ; preds = %.preheader.i
  br i1 %.not43.i, label %.preheader.split.us.1.i, label %bb.s

bb.s:                                             ; preds = %.preheader.split.us.preheader.i
  %i.cq = icmp eq i32 %.2.3.i, 0
  br i1 %i.cq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @WebPMemoryWriterClear(ptr noundef nonnull %5) #14
  store i32 0, ptr %i.cj, align 16, !tbaa !128
  %.pre117 = load i32, ptr %i.co, align 8, !tbaa !128
  br label %.preheader.split.us.1.i

bb.u:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 16 dereferenceable(48) %i.cr, i64 48, i1 false), !tbaa.struct !130
  %.val.us.i = load ptr, ptr %5, align 16, !tbaa !117
  store ptr %.val.us.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %i.cm, ptr %i.fj, align 8, !tbaa !89
  %i.cs = load i64, ptr %i.fn, align 8, !tbaa !67
  %.val.i.us.i = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.val13.i.us.i = load i64, ptr %i.fp, align 8, !tbaa !77
  %i.ct = getelementptr [104 x i8], ptr %.val.i.us.i, i64 %.val13.i.us.i
  %i.cu = getelementptr [104 x i8], ptr %i.ct, i64 %i.cs ; 3 uses
  %i.cv = load i32, ptr %i.fq, align 8, !tbaa !83
  %.not.i.us.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.us.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr i8, ptr %i.cu, i64 -176
  store i32 %i.fm, ptr %i.cw, align 8, !tbaa !95
  br label %.preheader.split.us.1.thread.i

bb.w:                                             ; preds = %bb.u
  %i.cx = getelementptr i8, ptr %i.cu, i64 -112
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !78
  %.not12.i.us.i = icmp eq i32 %i.cy, 0
  %i.cz = select i1 %.not12.i.us.i, i64 -176, i64 -128
  br label %.preheader.split.us.1.thread.i

.preheader.split.us.1.i:                          ; preds = %bb.t, %.preheader.split.us.preheader.i
  %i.da = phi i32 [ %.pre117, %bb.t ], [ %i.cp, %.preheader.split.us.preheader.i ]
  %.not.us.1.i = icmp eq i32 %i.da, 0
  br i1 %.not.us.1.i, label %.preheader.split.us.2.i, label %bb.x

.preheader.split.us.1.thread.i:                   ; preds = %bb.w, %bb.v
  %.sink14.i.us.i = phi i64 [ %i.cz, %bb.w ], [ -128, %bb.v ]
  %i.db = getelementptr i8, ptr %i.cu, i64 %.sink14.i.us.i
  store i32 %i.fm, ptr %i.db, align 8, !tbaa !100
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !84
  br i1 %.not43.1.i, label %.preheader.split.us.2.i, label %.thread.i

bb.x:                                             ; preds = %.preheader.split.us.1.i
  %i.dd = icmp eq i32 %.2.3.i, 1
  br i1 %i.dd, label %bb.y, label %.thread.i

.thread.i:                                        ; preds = %bb.x, %.preheader.split.us.1.thread.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.cn) #14
  store i32 0, ptr %i.co, align 8, !tbaa !128
  br label %.preheader.split.us.2.i

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 8 dereferenceable(48) %i.de, i64 48, i1 false), !tbaa.struct !130
  %.val.us.1.i = load ptr, ptr %i.cn, align 8, !tbaa !117
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.val45.us.1.i = load i64, ptr %i.df, align 16, !tbaa !119
  store ptr %.val.us.1.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.us.1.i, ptr %i.fj, align 8, !tbaa !89
  %i.dg = load i64, ptr %i.fn, align 8, !tbaa !67
  %.val.i.us.1.i = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.val13.i.us.1.i = load i64, ptr %i.fp, align 8, !tbaa !77
  %i.dh = getelementptr [104 x i8], ptr %.val.i.us.1.i, i64 %.val13.i.us.1.i
  %i.di = getelementptr [104 x i8], ptr %i.dh, i64 %i.dg ; 3 uses
  %i.dj = load i32, ptr %i.fq, align 8, !tbaa !83
  %.not.i.us.1.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i.us.1.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr i8, ptr %i.di, i64 -176
  store i32 %i.fm, ptr %i.dk, align 8, !tbaa !95
  br label %SetPreviousDisposeMethod.exit.us.1.i

bb.aa:                                            ; preds = %bb.y
  %i.dl = getelementptr i8, ptr %i.di, i64 -112
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !78
  %.not12.i.us.1.i = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not12.i.us.1.i, i64 -176, i64 -128
  br label %SetPreviousDisposeMethod.exit.us.1.i

SetPreviousDisposeMethod.exit.us.1.i:             ; preds = %bb.aa, %bb.z
  %.sink14.i.us.1.i = phi i64 [ %i.dn, %bb.aa ], [ -128, %bb.z ]
  %i.do = getelementptr i8, ptr %i.di, i64 %.sink14.i.us.1.i
  store i32 %i.fm, ptr %i.do, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false), !tbaa.struct !84
  br label %.preheader.split.us.2.i

.preheader.split.us.2.i:                          ; preds = %SetPreviousDisposeMethod.exit.us.1.i, %.thread.i, %.preheader.split.us.1.thread.i, %.preheader.split.us.1.i
  %i.dq = load i32, ptr %i.ew, align 16, !tbaa !128
  %.not.us.2.i = icmp eq i32 %i.dq, 0
  br i1 %.not.us.2.i, label %.preheader.split.us.3.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us.2.i
  %i.dr = icmp eq i32 %.2.3.i, 2
  br i1 %i.dr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.ev) #14
  store i32 0, ptr %i.ew, align 16, !tbaa !128
  br label %.preheader.split.us.3.i

bb.ad:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 16 dereferenceable(48) %i.ds, i64 48, i1 false), !tbaa.struct !130
  %.val.us.2.i = load ptr, ptr %i.ev, align 16, !tbaa !117
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 216
  %.val45.us.2.i = load i64, ptr %i.dt, align 8, !tbaa !119
  store ptr %.val.us.2.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.us.2.i, ptr %i.fj, align 8, !tbaa !89
  %i.du = load i64, ptr %i.fn, align 8, !tbaa !67
  %.val.i.us.2.i = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.val13.i.us.2.i = load i64, ptr %i.fp, align 8, !tbaa !77
  %i.dv = getelementptr [104 x i8], ptr %.val.i.us.2.i, i64 %.val13.i.us.2.i
  %i.dw = getelementptr [104 x i8], ptr %i.dv, i64 %i.du ; 3 uses
  %i.dx = load i32, ptr %i.fq, align 8, !tbaa !83
  %.not.i.us.2.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.us.2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr i8, ptr %i.dw, i64 -176
  store i32 %i.fm, ptr %i.dy, align 8, !tbaa !95
  br label %.preheader.split.us.3.thread.i

bb.af:                                            ; preds = %bb.ad
  %i.dz = getelementptr i8, ptr %i.dw, i64 -112
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !78
  %.not12.i.us.2.i = icmp eq i32 %i.ea, 0
  %i.eb = select i1 %.not12.i.us.2.i, i64 -176, i64 -128
  br label %.preheader.split.us.3.thread.i

.preheader.split.us.3.i:                          ; preds = %bb.ac, %.preheader.split.us.2.i
  %i.ec = load i32, ptr %i.fc, align 8, !tbaa !128
  %.not.us.3.i = icmp eq i32 %i.ec, 0
  br i1 %.not.us.3.i, label %PickBestCandidate.exit, label %bb.ag

.preheader.split.us.3.thread.i:                   ; preds = %bb.af, %bb.ae
  %.sink14.i.us.2.i = phi i64 [ %i.eb, %bb.af ], [ -128, %bb.ae ]
  %i.ed = getelementptr i8, ptr %i.dw, i64 %.sink14.i.us.2.i
  store i32 %i.fm, ptr %i.ed, align 8, !tbaa !100
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.ee, i64 16, i1 false), !tbaa.struct !84
  %i.ef = load i32, ptr %i.fc, align 8, !tbaa !128
  %.not.us.355.i = icmp eq i32 %i.ef, 0
  br i1 %.not.us.355.i, label %PickBestCandidate.exit, label %.thread56.i

bb.ag:                                            ; preds = %.preheader.split.us.3.i
  %i.eg = icmp eq i32 %.2.3.i, 3
  br i1 %i.eg, label %bb.ah, label %.thread56.i

.thread56.i:                                      ; preds = %bb.ag, %.preheader.split.us.3.thread.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.fb) #14
  store i32 0, ptr %i.fc, align 8, !tbaa !128
  br label %PickBestCandidate.exit

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 8 dereferenceable(48) %i.eh, i64 48, i1 false), !tbaa.struct !130
  %.val.us.3.i = load ptr, ptr %i.fb, align 8, !tbaa !117
  %.val45.us.3.i = load i64, ptr %i.fe, align 16, !tbaa !119
  store ptr %.val.us.3.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.us.3.i, ptr %i.fj, align 8, !tbaa !89
  %i.ei = load i64, ptr %i.fn, align 8, !tbaa !67
  %.val.i.us.3.i = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.val13.i.us.3.i = load i64, ptr %i.fp, align 8, !tbaa !77
  %i.ej = getelementptr [104 x i8], ptr %.val.i.us.3.i, i64 %.val13.i.us.3.i
  %i.ek = getelementptr [104 x i8], ptr %i.ej, i64 %i.ei ; 3 uses
  %i.el = load i32, ptr %i.fq, align 8, !tbaa !83
  %.not.i.us.3.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.us.3.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = getelementptr i8, ptr %i.ek, i64 -176
  store i32 %i.fm, ptr %i.em, align 8, !tbaa !95
  br label %SetPreviousDisposeMethod.exit.us.3.i

bb.aj:                                            ; preds = %bb.ah
  %i.en = getelementptr i8, ptr %i.ek, i64 -112
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !78
  %.not12.i.us.3.i = icmp eq i32 %i.eo, 0
  %i.ep = select i1 %.not12.i.us.3.i, i64 -176, i64 -128
  br label %SetPreviousDisposeMethod.exit.us.3.i

SetPreviousDisposeMethod.exit.us.3.i:             ; preds = %bb.aj, %bb.ai
  %.sink14.i.us.3.i = phi i64 [ %i.ep, %bb.aj ], [ -128, %bb.ai ]
  %i.eq = getelementptr i8, ptr %i.ek, i64 %.sink14.i.us.3.i
  store i32 %i.fm, ptr %i.eq, align 8, !tbaa !100
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i64 16, i1 false), !tbaa.struct !84
  br label %PickBestCandidate.exit

bb.ak:                                            ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.et = load i64, ptr %i.es, align 16, !tbaa !131 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %.240.i
  %spec.select.1.i = call i64 @llvm.umin.i64(i64 %i.et, i64 %.240.i)
  %spec.select44.1.i = select i1 %i.eu, i32 1, i32 %.2.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.r
  %.240.1.i = phi i64 [ %spec.select.1.i, %bb.ak ], [ %.240.i, %bb.r ] ; 3 uses
  %.2.1.i = phi i32 [ %spec.select44.1.i, %bb.ak ], [ %.2.i, %bb.r ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 304 ; 5 uses
  %i.ex = load i32, ptr %i.ew, align 16, !tbaa !128
  %.not43.2.i = icmp eq i32 %i.ex, 0
  br i1 %.not43.2.i, label %.preheader.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !131 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %.240.1.i
  %spec.select.2.i = call i64 @llvm.umin.i64(i64 %i.ez, i64 %.240.1.i)
  %spec.select44.2.i = select i1 %i.fa, i32 2, i32 %.2.1.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.am, %bb.al
  %.240.2.i = phi i64 [ %spec.select.2.i, %bb.am ], [ %.240.1.i, %bb.al ]
  %.2.2.i = phi i32 [ %spec.select44.2.i, %bb.am ], [ %.2.1.i, %bb.al ]
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 312 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 408 ; 7 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !128
  %.not43.3.i = icmp eq i32 %i.fd, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 16
  %i.fg = icmp uge i64 %i.ff, %.240.2.i
  %i.fh = select i1 %.not43.3.i, i1 true, i1 %i.fg
  %.2.3.i = select i1 %i.fh, i32 %.2.2.i, i32 3   ; 9 uses
  %.idx.i = select i1 %.not64, i64 0, i64 48
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i ; 17 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 8 uses
  %i.fk = and i32 %.2.3.i, -3
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = zext i1 %i.fl to i32                    ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 4 uses
  %i.fo = getelementptr i8, ptr %0, i64 1088      ; 4 uses
  %i.fp = getelementptr i8, ptr %0, i64 1104      ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  br i1 %.not64, label %.preheader.split.us.preheader.i, label %.preheader.split.preheader.i

bb.an:                                            ; preds = %.preheader.split.preheader.i
  %i.fs = icmp eq i32 %.2.3.i, 0
  br i1 %i.fs, label %.preheader.split.1.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @WebPMemoryWriterClear(ptr noundef nonnull %5) #14
  store i32 0, ptr %i.cj, align 16, !tbaa !128
  %.pre = load i32, ptr %i.co, align 8, !tbaa !128
  br label %.preheader.split.1.i

.preheader.split.1.i:                             ; preds = %bb.ao, %.preheader.split.preheader.i
  %i.ft = phi i32 [ %.pre, %bb.ao ], [ %i.cp, %.preheader.split.preheader.i ]
  %.not.1.i = icmp eq i32 %i.ft, 0
  br i1 %.not.1.i, label %.preheader.split.2.i, label %bb.ap

.preheader.split.1.thread.i:                      ; preds = %bb.an
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 16 dereferenceable(48) %i.fu, i64 48, i1 false), !tbaa.struct !130
  %.val.i = load ptr, ptr %5, align 16, !tbaa !117
  store ptr %.val.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %i.cm, ptr %i.fj, align 8, !tbaa !89
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !84
  br i1 %.not43.1.i, label %.preheader.split.2.i, label %.thread58.i

bb.ap:                                            ; preds = %.preheader.split.1.i
  %i.fw = icmp eq i32 %.2.3.i, 1
  br i1 %i.fw, label %bb.aq, label %.thread58.i

.thread58.i:                                      ; preds = %bb.ap, %.preheader.split.1.thread.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.cn) #14
  store i32 0, ptr %i.co, align 8, !tbaa !128
  br label %.preheader.split.2.i

bb.aq:                                            ; preds = %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 8 dereferenceable(48) %i.fx, i64 48, i1 false), !tbaa.struct !130
  %.val.1.i = load ptr, ptr %i.cn, align 8, !tbaa !117
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.val45.1.i = load i64, ptr %i.fy, align 16, !tbaa !119
  store ptr %.val.1.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.1.i, ptr %i.fj, align 8, !tbaa !89
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !tbaa.struct !84
  br label %.preheader.split.2.i

.preheader.split.2.i:                             ; preds = %bb.aq, %.thread58.i, %.preheader.split.1.thread.i, %.preheader.split.1.i
  %i.ga = load i32, ptr %i.ew, align 16, !tbaa !128
  %.not.2.i = icmp eq i32 %i.ga, 0
  br i1 %.not.2.i, label %.preheader.split.3.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader.split.2.i
  %i.gb = icmp eq i32 %.2.3.i, 2
  br i1 %i.gb, label %.preheader.split.3.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.ev) #14
  store i32 0, ptr %i.ew, align 16, !tbaa !128
  br label %.preheader.split.3.i

.preheader.split.3.i:                             ; preds = %bb.as, %.preheader.split.2.i
  %i.gc = load i32, ptr %i.fc, align 8, !tbaa !128
  %.not.3.i = icmp eq i32 %i.gc, 0
  br i1 %.not.3.i, label %PickBestCandidate.exit, label %bb.at

.preheader.split.3.thread.i:                      ; preds = %bb.ar
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 16 dereferenceable(48) %i.gd, i64 48, i1 false), !tbaa.struct !130
  %.val.2.i = load ptr, ptr %i.ev, align 16, !tbaa !117
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 216
  %.val45.2.i = load i64, ptr %i.ge, align 8, !tbaa !119
  store ptr %.val.2.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.2.i, ptr %i.fj, align 8, !tbaa !89
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.gf, i64 16, i1 false), !tbaa.struct !84
  %i.gg = load i32, ptr %i.fc, align 8, !tbaa !128
  %.not.359.i = icmp eq i32 %i.gg, 0
  br i1 %.not.359.i, label %PickBestCandidate.exit, label %.thread60.i

bb.at:                                            ; preds = %.preheader.split.3.i
  %i.gh = icmp eq i32 %.2.3.i, 3
  br i1 %i.gh, label %bb.au, label %.thread60.i

.thread60.i:                                      ; preds = %bb.at, %.preheader.split.3.thread.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.fb) #14
  store i32 0, ptr %i.fc, align 8, !tbaa !128
  br label %PickBestCandidate.exit

bb.au:                                            ; preds = %bb.at
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 8 dereferenceable(48) %i.gi, i64 48, i1 false), !tbaa.struct !130
  %.val.3.i = load ptr, ptr %i.fb, align 8, !tbaa !117
  %.val45.3.i = load i64, ptr %i.fe, align 16, !tbaa !119
  store ptr %.val.3.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.3.i, ptr %i.fj, align 8, !tbaa !89
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i64 16, i1 false), !tbaa.struct !84
  br label %PickBestCandidate.exit

bb.av:                                            ; preds = %DisposeFrameRectangle.exit, %bb.e, %bb.q, %bb.o
  %.4 = phi i32 [ %i.ch, %bb.o ], [ %i.ci, %bb.q ], [ 4, %bb.e ], [ 4, %DisposeFrameRectangle.exit ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.gl = load i32, ptr %i.gk, align 16, !tbaa !128
  %.not78 = icmp eq i32 %i.gl, 0
  br i1 %.not78, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @WebPMemoryWriterClear(ptr noundef nonnull %5) #14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !128
  %.not78.1 = icmp eq i32 %i.gn, 0
  br i1 %.not78.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.go) #14
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.gq = load i32, ptr %i.gp, align 16, !tbaa !128
  %.not78.2 = icmp eq i32 %i.gq, 0
  br i1 %.not78.2, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.gr) #14
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 408
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !128
  %.not78.3 = icmp eq i32 %i.gt, 0
  br i1 %.not78.3, label %PickBestCandidate.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 312
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.gu) #14
  br label %PickBestCandidate.exit

PickBestCandidate.exit:                           ; preds = %bb.bb, %bb.bc, %bb.au, %.thread60.i, %.preheader.split.3.thread.i, %.preheader.split.3.i, %SetPreviousDisposeMethod.exit.us.3.i, %.thread56.i, %.preheader.split.us.3.thread.i, %.preheader.split.us.3.i, %IsEmptyRect.exit.thread
  %.5 = phi i32 [ 0, %IsEmptyRect.exit.thread ], [ 0, %bb.au ], [ 0, %.preheader.split.us.3.i ], [ 0, %.preheader.split.us.3.thread.i ], [ 0, %.thread56.i ], [ 0, %SetPreviousDisposeMethod.exit.us.3.i ], [ 0, %.preheader.split.3.i ], [ 0, %.preheader.split.3.thread.i ], [ 0, %.thread60.i ], [ %.4, %bb.bc ], [ %.4, %bb.bb ]
  call void @WebPPictureFree(ptr noundef nonnull %i.q) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.s) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.v) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.x) #14
  br label %SubFrameParamsInit.exit.thread

SubFrameParamsInit.exit.thread:                   ; preds = %bb.d, %bb.c, %SubFrameParamsInit.exit, %SubFrameParamsInit.exit91, %PickBestCandidate.exit
  %.0 = phi i32 [ %.5, %PickBestCandidate.exit ], [ 4, %SubFrameParamsInit.exit ], [ 4, %SubFrameParamsInit.exit91 ], [ 4, %bb.c ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetSubRects(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, float noundef %4, ptr noundef nonnull initializes((8, 24)) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store i32 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 8 uses
  store i32 0, ptr %i.b, align 4, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = icmp eq i32 %2, 0
  %i.m = icmp ne i32 %3, 0
  %or.cond.i = or i1 %i.l, %i.m                   ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %MinimizeChangeRectangle.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fpext float %4 to double
  %i.o = fdiv double %i.n, 1.000000e+02
  %i.p = tail call double @pow(double noundef %i.o, double noundef 5.000000e-01) #14, !tbaa !3 ; 0 uses
  %i.q = load i32, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %.loopexit124.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = load i32, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.t = load i32, ptr %i.h, align 4, !tbaa !46   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !44  ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.aa
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !48  ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = sext i32 %i.ae to i64
  %i.ah = sext i32 %i.aa to i64
  %i.ai = sext i32 %i.s to i64
  %i.aj = sext i32 %i.ac to i64
  %i.ak = sext i32 %i.af to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.z, i64 %i.aj
  %invariant.gep272 = getelementptr [4 x i8], ptr %i.ad, i64 %i.ak
  br label %.lr.ph.i84.us

.lr.ph.i84.us:                                    ; preds = %.loopexit159.us, %.lr.ph.i.split.us
  %i.al = phi i32 [ %i.at, %.loopexit159.us ], [ %i.s, %.lr.ph.i.split.us ] ; 2 uses
  %.pr.i125.us = phi i32 [ %i.as, %.loopexit159.us ], [ %i.q, %.lr.ph.i.split.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit159.us ], [ %i.ai, %.lr.ph.i.split.us ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep273 = getelementptr [4 x i8], ptr %invariant.gep272, i64 %indvars.iv
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i84.us
  %.in.i85.us = phi i32 [ %i.t, %.lr.ph.i84.us ], [ %i.ao, %bb.d ] ; 2 uses
  %.0811.i86.us = phi ptr [ %gep273, %.lr.ph.i84.us ], [ %i.ap, %bb.d ] ; 2 uses
  %.0910.i87.us = phi ptr [ %gep, %.lr.ph.i84.us ], [ %i.aq, %bb.d ] ; 2 uses
  %i.am = load i32, ptr %.0811.i86.us, align 4, !tbaa !3
  %i.an = load i32, ptr %.0910.i87.us, align 4, !tbaa !3
  %.not.i88.us = icmp eq i32 %i.am, %i.an
  br i1 %.not.i88.us, label %bb.d, label %.loopexit124.i

bb.d:                                             ; preds = %bb.c
  %i.ao = add nsw i32 %.in.i85.us, -1
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0811.i86.us, i64 %i.ag
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0910.i87.us, i64 %i.ah
  %i.ar = icmp sgt i32 %.in.i85.us, 1
  br i1 %i.ar, label %bb.c, label %.loopexit159.us, !llvm.loop !121

.loopexit159.us:                                  ; preds = %bb.d
  %i.as = add nsw i32 %.pr.i125.us, -1            ; 3 uses
  store i32 %i.as, ptr %i.e, align 8, !tbaa !45
  %i.at = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !43
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.au = add i32 %i.al, %.pr.i125.us
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph.i84.us, label %.loopexit124.i, !llvm.loop !61

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ax = add i32 %i.q, %i.s                      ; 2 uses
  %i.ay = add i32 %i.s, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.ay) ; 2 uses
  %i.az = sub i32 %i.ax, %smax                    ; 2 uses
  store i32 %i.az, ptr %i.e, align 8, !tbaa !45
  store i32 %smax, ptr %i.a, align 8, !tbaa !43
  br label %.loopexit124.i

.loopexit124.i:                                   ; preds = %.loopexit159.us, %bb.c, %.lr.ph.i.split, %bb.b
  %.promoted171 = phi i32 [ %.pr.i125.us, %bb.c ], [ %i.q, %bb.b ], [ %i.az, %.lr.ph.i.split ], [ %i.as, %.loopexit159.us ] ; 5 uses
  %i.ba = icmp eq i32 %.promoted171, 0
  br i1 %i.ba, label %MinimizeChangeRectangle.exit.thread, label %bb.e

bb.e:                                             ; preds = %.loopexit124.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.not105.not135.i = icmp sgt i32 %.promoted171, 0
  %.pre = load i32, ptr %i.h, align 4, !tbaa !46  ; 5 uses
  br i1 %.not105.not135.i, label %.lr.ph137.i, label %.thread115.thread.i

.lr.ph137.i:                                      ; preds = %bb.e
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.bd = add i32 %i.bc, %.promoted171            ; 2 uses
  %i.be = icmp sgt i32 %.pre, 0
  br i1 %i.be, label %.lr.ph137.i.split.us, label %.lr.ph137.i.split

.lr.ph137.i.split.us:                             ; preds = %.lr.ph137.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !47
  %i.bj = load i32, ptr %i.bf, align 8, !tbaa !48 ; 2 uses
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !44  ; 2 uses
  %i.bl = mul nsw i32 %i.bk, %i.bj
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bn = load i32, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %i.bo = mul nsw i32 %i.bn, %i.bk
  %i.bp = sext i32 %i.bn to i64
  %i.bq = sext i32 %i.bj to i64
  %i.br = sext i32 %i.bd to i64
  %i.bs = sext i32 %i.bl to i64
  %i.bt = sext i32 %i.bo to i64
  %i.bu = sext i32 %i.bc to i64
end_hunk_0
begin_hunk_1_@GetSubRects:bb.a
  %i.bw = load i32, ptr %.0910.i80.us, align 4, !tbaa !3
  %.not.i81.us = icmp eq i32 %i.bv, %i.bw
  br i1 %.not.i81.us, label %bb.g, label %.thread115.i

bb.g:                                             ; preds = %bb.f
  %i.bx = add nsw i32 %.in.i78.us, -1
  %i.by = getelementptr inbounds [4 x i8], ptr %.0811.i79.us, i64 %i.bp
  %i.bz = getelementptr inbounds [4 x i8], ptr %.0910.i80.us, i64 %i.bq
  %i.ca = icmp sgt i32 %.in.i78.us, 1
  br i1 %i.ca, label %bb.f, label %.loopexit158.us, !llvm.loop !121

.loopexit158.us:                                  ; preds = %bb.g
  %i.cb = add nsw i32 %.pre.pre.i129.us, -1       ; 3 uses
  store i32 %i.cb, ptr %i.e, align 8, !tbaa !45
  %.not105.not.i.us = icmp sgt i64 %indvars.iv.next195, %i.bu
  br i1 %.not105.not.i.us, label %.lr.ph.i77.us, label %.thread115.i, !llvm.loop !62

.lr.ph137.i.split:                                ; preds = %.lr.ph137.i
  %i.cc = add i32 %i.bd, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.cc)
  %i.cd = sub i32 %smin, %i.bc                    ; 2 uses
  store i32 %i.cd, ptr %i.e, align 8, !tbaa !45
  br label %.thread115.i

.thread115.i:                                     ; preds = %.loopexit158.us, %bb.f, %.lr.ph137.i.split
  %.pre.i = phi i32 [ %.pre.pre.i129.us, %bb.f ], [ %i.cd, %.lr.ph137.i.split ], [ %i.cb, %.loopexit158.us ] ; 2 uses
  %i.ce = icmp eq i32 %.pre.i, 0
  br i1 %i.ce, label %MinimizeChangeRectangle.exit.thread, label %.thread115.thread.i

.thread115.thread.i:                              ; preds = %.thread115.i, %bb.e
  %i.cf = phi i32 [ %.pre.i, %.thread115.i ], [ %.promoted171, %bb.e ] ; 6 uses
  %i.cg = icmp sgt i32 %.pre, 0
  br i1 %i.cg, label %.lr.ph140.i, label %.loopexit.i

.lr.ph140.i:                                      ; preds = %.thread115.thread.i
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !44  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.cm = load i32, ptr %i.ci, align 8, !tbaa !48
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !43
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !47
  %i.cp = load i32, ptr %i.ck, align 8, !tbaa !48
  %i.cq = icmp sgt i32 %i.cf, 0
  %i.cr = sext i32 %i.ch to i64
  %i.cs = sext i32 %i.cm to i64
  %i.ct = sext i32 %i.cn to i64                   ; 2 uses
  %i.cu = sext i32 %i.cp to i64
  %invariant.gep278 = getelementptr [4 x i8], ptr %i.co, i64 %i.ct
  %invariant.gep280 = getelementptr [4 x i8], ptr %i.cl, i64 %i.ct
  br label %bb.h

bb.h:                                             ; preds = %.loopexit157, %.lr.ph140.i
  %i.cv = phi i32 [ %i.df, %.loopexit157 ], [ %i.ch, %.lr.ph140.i ] ; 2 uses
  %.pr120.i133 = phi i32 [ %i.de, %.loopexit157 ], [ %.pre, %.lr.ph140.i ] ; 3 uses
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %.loopexit157 ], [ %i.cr, %.lr.ph140.i ] ; 3 uses
  br i1 %i.cq, label %.lr.ph.i70.preheader, label %.loopexit157

.lr.ph.i70.preheader:                             ; preds = %bb.h
  %i.cw = mul nsw i64 %indvars.iv197, %i.cu
  %gep279 = getelementptr [4 x i8], ptr %invariant.gep278, i64 %i.cw
  %i.cx = mul nsw i64 %indvars.iv197, %i.cs
  %gep281 = getelementptr [4 x i8], ptr %invariant.gep280, i64 %i.cx
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70.preheader, %bb.i
  %.in.i71 = phi i32 [ %i.da, %bb.i ], [ %i.cf, %.lr.ph.i70.preheader ] ; 2 uses
  %.0811.i72 = phi ptr [ %i.db, %bb.i ], [ %gep281, %.lr.ph.i70.preheader ] ; 2 uses
  %.0910.i73 = phi ptr [ %i.dc, %bb.i ], [ %gep279, %.lr.ph.i70.preheader ] ; 2 uses
  %i.cy = load i32, ptr %.0811.i72, align 4, !tbaa !3
  %i.cz = load i32, ptr %.0910.i73, align 4, !tbaa !3
  %.not.i74 = icmp eq i32 %i.cy, %i.cz
  br i1 %.not.i74, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %.lr.ph.i70
  %i.da = add nsw i32 %.in.i71, -1
  %i.db = getelementptr inbounds nuw i8, ptr %.0811.i72, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.0910.i73, i64 4
  %i.dd = icmp sgt i32 %.in.i71, 1
  br i1 %i.dd, label %.lr.ph.i70, label %.loopexit157, !llvm.loop !121

.loopexit157:                                     ; preds = %bb.i, %bb.h
  %i.de = add nsw i32 %.pr120.i133, -1            ; 3 uses
  store i32 %i.de, ptr %i.h, align 4, !tbaa !46
  %i.df = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.df, ptr %i.b, align 4, !tbaa !44
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.dg = add i32 %i.cv, %.pr120.i133
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next198, %i.dh
  br i1 %i.di, label %bb.h, label %.loopexit.i, !llvm.loop !63

.loopexit.i:                                      ; preds = %.loopexit157, %.lr.ph.i70, %.thread115.thread.i
  %i.dj = phi i32 [ %.pr120.i133, %.lr.ph.i70 ], [ %.pre, %.thread115.thread.i ], [ %i.de, %.loopexit157 ] ; 5 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %MinimizeChangeRectangle.exit.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %.not108.not144.i = icmp sgt i32 %i.dj, 0
  br i1 %.not108.not144.i, label %.lr.ph146.i, label %MinimizeChangeRectangle.exit

.lr.ph146.i:                                      ; preds = %bb.j
  %i.dl = load i32, ptr %i.b, align 4, !tbaa !44  ; 2 uses
  %i.dm = add i32 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dq = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.dr = load i32, ptr %i.dn, align 8, !tbaa !48
  %i.ds = load i32, ptr %i.a, align 8, !tbaa !43
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !47
  %i.du = load i32, ptr %i.dp, align 8, !tbaa !48
  %i.dv = icmp sgt i32 %i.cf, 0
  %i.dw = sext i32 %i.dm to i64
  %i.dx = sext i32 %i.dr to i64
  %i.dy = sext i32 %i.ds to i64                   ; 2 uses
  %i.dz = sext i32 %i.du to i64
  %i.ea = sext i32 %i.dl to i64
  %invariant.gep282 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dy
  %invariant.gep284 = getelementptr [4 x i8], ptr %i.dq, i64 %i.dy
  br label %bb.k

bb.k:                                             ; preds = %.loopexit156, %.lr.ph146.i
  %.pre149.pre.i137 = phi i32 [ %i.ej, %.loopexit156 ], [ %i.dj, %.lr.ph146.i ] ; 2 uses
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %.loopexit156 ], [ %i.dw, %.lr.ph146.i ]
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, -1 ; 4 uses
  br i1 %i.dv, label %.lr.ph.i67.preheader, label %.loopexit156

.lr.ph.i67.preheader:                             ; preds = %bb.k
  %i.eb = mul nsw i64 %indvars.iv.next201, %i.dz
  %gep283 = getelementptr [4 x i8], ptr %invariant.gep282, i64 %i.eb
  %i.ec = mul nsw i64 %indvars.iv.next201, %i.dx
  %gep285 = getelementptr [4 x i8], ptr %invariant.gep284, i64 %i.ec
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67.preheader, %bb.l
  %.in.i = phi i32 [ %i.ef, %bb.l ], [ %i.cf, %.lr.ph.i67.preheader ] ; 2 uses
  %.0811.i = phi ptr [ %i.eg, %bb.l ], [ %gep285, %.lr.ph.i67.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.eh, %bb.l ], [ %gep283, %.lr.ph.i67.preheader ] ; 2 uses
  %i.ed = load i32, ptr %.0811.i, align 4, !tbaa !3
  %i.ee = load i32, ptr %.0910.i, align 4, !tbaa !3
  %.not.i68 = icmp eq i32 %i.ed, %i.ee
  br i1 %.not.i68, label %bb.l, label %.thread121.i

bb.l:                                             ; preds = %.lr.ph.i67
  %i.ef = add nsw i32 %.in.i, -1
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %i.ei = icmp sgt i32 %.in.i, 1
  br i1 %i.ei, label %.lr.ph.i67, label %.loopexit156, !llvm.loop !121

.loopexit156:                                     ; preds = %bb.l, %bb.k
  %i.ej = add nsw i32 %.pre149.pre.i137, -1       ; 3 uses
  store i32 %i.ej, ptr %i.h, align 4, !tbaa !46
  %.not108.not.i = icmp sgt i64 %indvars.iv.next201, %i.ea
  br i1 %.not108.not.i, label %bb.k, label %.thread121.i, !llvm.loop !64

.thread121.i:                                     ; preds = %.loopexit156, %.lr.ph.i67
  %.pre149.i = phi i32 [ %.pre149.pre.i137, %.lr.ph.i67 ], [ %i.ej, %.loopexit156 ] ; 2 uses
  %i.ek = icmp eq i32 %.pre149.i, 0
  br i1 %i.ek, label %MinimizeChangeRectangle.exit.thread, label %MinimizeChangeRectangle.exit

MinimizeChangeRectangle.exit.thread:              ; preds = %.loopexit124.i, %.thread115.i, %.loopexit.i, %.thread121.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %IsEmptyRect.exit.thread.i

MinimizeChangeRectangle.exit:                     ; preds = %bb.j, %.thread121.i, %bb.a
  %i.el = phi i32 [ %i.dj, %bb.j ], [ %i.g, %bb.a ], [ %.pre149.i, %.thread121.i ] ; 2 uses
  %i.em = phi i32 [ %i.cf, %bb.j ], [ %i.d, %bb.a ], [ %i.cf, %.thread121.i ] ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  %.not.i = icmp eq i32 %i.el, 0
  %or.cond = select i1 %i.en, i1 true, i1 %.not.i
  br i1 %or.cond, label %IsEmptyRect.exit.thread.i, label %GetSubRect.exit

IsEmptyRect.exit.thread.i:                        ; preds = %MinimizeChangeRectangle.exit.thread, %MinimizeChangeRectangle.exit
  %.not19.i = icmp eq i32 %i.j, 0
  br i1 %.not19.i, label %GetSubRect.exit, label %GetSubRect.exit.thread

GetSubRect.exit:                                  ; preds = %MinimizeChangeRectangle.exit, %IsEmptyRect.exit.thread.i
  %i.eo = phi i32 [ %i.el, %MinimizeChangeRectangle.exit ], [ 1, %IsEmptyRect.exit.thread.i ]
  %i.ep = phi i32 [ %i.em, %MinimizeChangeRectangle.exit ], [ 1, %IsEmptyRect.exit.thread.i ]
  %i.eq = load i32, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.er = and i32 %i.eq, 1
  %i.es = add nsw i32 %i.er, %i.ep                ; 2 uses
  store i32 %i.es, ptr %i.e, align 8, !tbaa !45
  %i.et = load i32, ptr %i.b, align 4, !tbaa !44  ; 2 uses
  %i.eu = and i32 %i.et, 1
  %i.ev = add nsw i32 %i.eu, %i.eo                ; 2 uses
  store i32 %i.ev, ptr %i.h, align 4, !tbaa !46
  %i.ew = and i32 %i.eq, -2                       ; 2 uses
  store i32 %i.ew, ptr %i.a, align 8, !tbaa !43
  %i.ex = and i32 %i.et, -2                       ; 2 uses
  store i32 %i.ex, ptr %i.b, align 4, !tbaa !44
  %i.ey = tail call i32 @WebPPictureView(ptr noundef nonnull %1, i32 noundef %i.ew, i32 noundef %i.ex, i32 noundef %i.es, i32 noundef %i.ev, ptr noundef nonnull %i.k) #14
  %.not = icmp eq i32 %i.ey, 0
  br i1 %.not, label %GetSubRect.exit30, label %GetSubRect.exit.thread

GetSubRect.exit.thread:                           ; preds = %IsEmptyRect.exit.thread.i, %GetSubRect.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !84
  %i.fa = load i32, ptr %i.i, align 4, !tbaa !125
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 296
  br i1 %or.cond.i, label %bb.m, label %GetSubRect.exit.thread.MinimizeChangeRectangle.exit65_crit_edge

GetSubRect.exit.thread.MinimizeChangeRectangle.exit65_crit_edge: ; preds = %GetSubRect.exit.thread
  %.phi.trans.insert220 = getelementptr inbounds nuw i8, ptr %5, i64 288
  %.pre221 = load i32, ptr %.phi.trans.insert220, align 8, !tbaa !45
  br label %MinimizeChangeRectangle.exit65

bb.m:                                             ; preds = %GetSubRect.exit.thread
  %i.fc = fpext float %4 to double
  %i.fd = fdiv double %i.fc, 1.000000e+02
  %i.fe = tail call double @pow(double noundef %i.fd, double noundef 5.000000e-01) #14, !tbaa !3 ; 2 uses
  %i.ff = fsub double 1.000000e+00, %i.fe
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double 3.100000e+01, double %i.fe)
  %i.fh = fadd double %i.fg, 5.000000e-01
  %i.fi = fptosi double %i.fh to i32              ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 288 ; 4 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !45 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i61, label %.loopexit124.i33

.lr.ph.i61:                                       ; preds = %bb.m
  %i.fm = load i32, ptr %i.ez, align 8, !tbaa !43 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 284
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !46 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  %i.fv = mul nsw i32 %i.fi, 255                  ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.loopexit155, %.lr.ph.i61
  %i.fw = phi i32 [ %i.fm, %.lr.ph.i61 ], [ %i.hp, %.loopexit155 ] ; 2 uses
  %.pr.i64143 = phi i32 [ %i.fk, %.lr.ph.i61 ], [ %i.ho, %.loopexit155 ] ; 6 uses
  %.0132.i62 = phi i32 [ %i.fm, %.lr.ph.i61 ], [ %i.hq, %.loopexit155 ] ; 3 uses
  br i1 %i.fu, label %.lr.ph.i114, label %.loopexit155

.lr.ph.i114:                                      ; preds = %bb.n
  %i.fx = load ptr, ptr %i.fq, align 8, !tbaa !47
  %i.fy = load i32, ptr %i.fr, align 8, !tbaa !48 ; 2 uses
  %i.fz = load i32, ptr %i.fo, align 4, !tbaa !44 ; 2 uses
  %i.ga = mul nsw i32 %i.fz, %i.fy
  %i.gb = add nsw i32 %i.ga, %.0132.i62
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gc
  %i.ge = load ptr, ptr %i.fn, align 8, !tbaa !47
  %i.gf = load i32, ptr %i.fp, align 8, !tbaa !48 ; 2 uses
  %i.gg = mul nsw i32 %i.gf, %i.fz
  %i.gh = add nsw i32 %i.gg, %.0132.i62
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gi
  %i.gk = sext i32 %i.gf to i64
  %i.gl = sext i32 %i.fy to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i114
  %.in.i115 = phi i32 [ %i.ft, %.lr.ph.i114 ], [ %i.gm, %bb.r ] ; 2 uses
  %.0914.i116 = phi ptr [ %i.gj, %.lr.ph.i114 ], [ %i.hl, %bb.r ] ; 2 uses
  %.01013.i117 = phi ptr [ %i.gd, %.lr.ph.i114 ], [ %i.hm, %bb.r ] ; 2 uses
  %i.gm = add nsw i32 %.in.i115, -1
  %i.gn = load i32, ptr %.0914.i116, align 4, !tbaa !3 ; 4 uses
  %i.go = load i32, ptr %.01013.i117, align 4, !tbaa !3 ; 4 uses
  %i.gp = lshr i32 %i.gn, 24                      ; 4 uses
  %i.gq = lshr i32 %i.gn, 8
  %i.gr = and i32 %i.gq, 255
  %i.gs = and i32 %i.gn, 255
  %i.gt = lshr i32 %i.go, 24
  %i.gu = lshr i32 %i.go, 8
  %i.gv = and i32 %i.gu, 255
  %i.gw = and i32 %i.go, 255
  %i.gx = icmp eq i32 %i.gp, %i.gt
  br i1 %i.gx, label %bb.p, label %.loopexit124.i33

bb.p:                                             ; preds = %bb.o
  %i.gy = lshr i32 %i.go, 16
  %i.gz = and i32 %i.gy, 255
  %i.ha = lshr i32 %i.gn, 16
  %i.hb = and i32 %i.ha, 255
  %i.hc = sub nsw i32 %i.hb, %i.gz
  %i.hd = tail call i32 @llvm.abs.i32(i32 %i.hc, i1 true)
  %i.he = mul nuw nsw i32 %i.hd, %i.gp
  %.not.i.i118 = icmp sgt i32 %i.he, %i.fv
  br i1 %.not.i.i118, label %.loopexit124.i33, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hf = sub nsw i32 %i.gr, %i.gv
  %i.hg = tail call i32 @llvm.abs.i32(i32 %i.hf, i1 true)
  %i.hh = mul nuw nsw i32 %i.hg, %i.gp
  %.not23.i.i119 = icmp samesign ugt i32 %i.hh, %i.fv
  br i1 %.not23.i.i119, label %.loopexit124.i33, label %PixelsAreSimilar.exit.i120

PixelsAreSimilar.exit.i120:                       ; preds = %bb.q
  %i.hi = sub nsw i32 %i.gs, %i.gw
  %i.hj = tail call i32 @llvm.abs.i32(i32 %i.hi, i1 true)
  %i.hk = mul nuw nsw i32 %i.hj, %i.gp
  %.not12.i121 = icmp samesign ugt i32 %i.hk, %i.fv
  br i1 %.not12.i121, label %.loopexit124.i33, label %bb.r

bb.r:                                             ; preds = %PixelsAreSimilar.exit.i120
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0914.i116, i64 %i.gk
  %i.hm = getelementptr inbounds [4 x i8], ptr %.01013.i117, i64 %i.gl
  %i.hn = icmp samesign ugt i32 %.in.i115, 1
  br i1 %i.hn, label %bb.o, label %.loopexit155, !llvm.loop !122

.loopexit155:                                     ; preds = %bb.r, %bb.n
  %i.ho = add nsw i32 %.pr.i64143, -1             ; 3 uses
  store i32 %i.ho, ptr %i.fj, align 8, !tbaa !45
  %i.hp = add nsw i32 %i.fw, 1                    ; 2 uses
  store i32 %i.hp, ptr %i.ez, align 8, !tbaa !43
  %i.hq = add nsw i32 %.0132.i62, 1               ; 2 uses
  %i.hr = add i32 %i.fw, %.pr.i64143
  %i.hs = icmp slt i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.n, label %.loopexit124.i33, !llvm.loop !61

.loopexit124.i33:                                 ; preds = %.loopexit155, %PixelsAreSimilar.exit.i120, %bb.o, %bb.p, %bb.q, %bb.m
  %.promoted174 = phi i32 [ %.pr.i64143, %PixelsAreSimilar.exit.i120 ], [ %i.fk, %bb.m ], [ %.pr.i64143, %bb.q ], [ %.pr.i64143, %bb.p ], [ %.pr.i64143, %bb.o ], [ %i.ho, %.loopexit155 ] ; 5 uses
  %i.ht = icmp eq i32 %.promoted174, 0
  br i1 %i.ht, label %MinimizeChangeRectangle.exit65.thread, label %bb.s

bb.s:                                             ; preds = %.loopexit124.i33
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.not105.not135.i34 = icmp sgt i32 %.promoted174, 0
  br i1 %.not105.not135.i34, label %.lr.ph137.i53, label %..thread115.thread.i35_crit_edge

..thread115.thread.i35_crit_edge:                 ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 292
  %.pre217 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !46
  br label %.thread115.thread.i35

.lr.ph137.i53:                                    ; preds = %bb.s
  %i.hv = load i32, ptr %i.ez, align 8, !tbaa !43 ; 4 uses
  %i.hw = add i32 %i.hv, %.promoted174            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !46 ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, 0
  %i.ia = mul nsw i32 %i.fi, 255                  ; 3 uses
  br i1 %i.hz, label %.lr.ph137.i53.split.us, label %.lr.ph137.i53.split

.lr.ph137.i53.split.us:                           ; preds = %.lr.ph137.i53
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 284
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !47
  %i.ig = load i32, ptr %i.ib, align 8, !tbaa !48 ; 2 uses
  %i.ih = load i32, ptr %i.ie, align 4, !tbaa !44 ; 2 uses
  %i.ii = mul nsw i32 %i.ih, %i.ig
  %i.ij = load ptr, ptr %i.hu, align 8, !tbaa !47
  %i.ik = load i32, ptr %i.id, align 8, !tbaa !48 ; 2 uses
  %i.il = mul nsw i32 %i.ik, %i.ih
  %i.im = sext i32 %i.ik to i64
  %i.in = sext i32 %i.ig to i64
  %i.io = sext i32 %i.hw to i64
  %i.ip = sext i32 %i.ii to i64
  %i.iq = sext i32 %i.il to i64
  %i.ir = sext i32 %i.hv to i64
  %invariant.gep286 = getelementptr [4 x i8], ptr %i.if, i64 %i.ip
  %invariant.gep288 = getelementptr [4 x i8], ptr %i.ij, i64 %i.iq
  br label %.lr.ph.i104.us

.lr.ph.i104.us:                                   ; preds = %.loopexit154.us, %.lr.ph137.i53.split.us
  %.pre.pre.i57146 = phi i32 [ %i.ju, %.loopexit154.us ], [ %.promoted174, %.lr.ph137.i53.split.us ] ; 5 uses
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %.loopexit154.us ], [ %i.io, %.lr.ph137.i53.split.us ]
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, -1 ; 4 uses
  %gep287 = getelementptr [4 x i8], ptr %invariant.gep286, i64 %indvars.iv.next205
  %gep289 = getelementptr [4 x i8], ptr %invariant.gep288, i64 %indvars.iv.next205
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i104.us
  %.in.i105.us = phi i32 [ %i.hy, %.lr.ph.i104.us ], [ %i.is, %bb.w ] ; 2 uses
  %.0914.i106.us = phi ptr [ %gep289, %.lr.ph.i104.us ], [ %i.jr, %bb.w ] ; 2 uses
  %.01013.i107.us = phi ptr [ %gep287, %.lr.ph.i104.us ], [ %i.js, %bb.w ] ; 2 uses
  %i.is = add nsw i32 %.in.i105.us, -1
  %i.it = load i32, ptr %.0914.i106.us, align 4, !tbaa !3 ; 4 uses
  %i.iu = load i32, ptr %.01013.i107.us, align 4, !tbaa !3 ; 4 uses
  %i.iv = lshr i32 %i.it, 24                      ; 4 uses
  %i.iw = lshr i32 %i.it, 8
  %i.ix = and i32 %i.iw, 255
  %i.iy = and i32 %i.it, 255
  %i.iz = lshr i32 %i.iu, 24
  %i.ja = lshr i32 %i.iu, 8
  %i.jb = and i32 %i.ja, 255
  %i.jc = and i32 %i.iu, 255
  %i.jd = icmp eq i32 %i.iv, %i.iz
  br i1 %i.jd, label %bb.u, label %.thread115.i59

bb.u:                                             ; preds = %bb.t
  %i.je = lshr i32 %i.iu, 16
  %i.jf = and i32 %i.je, 255
  %i.jg = lshr i32 %i.it, 16
  %i.jh = and i32 %i.jg, 255
  %i.ji = sub nsw i32 %i.jh, %i.jf
  %i.jj = tail call i32 @llvm.abs.i32(i32 %i.ji, i1 true)
  %i.jk = mul nuw nsw i32 %i.jj, %i.iv
  %.not.i.i108.us = icmp sgt i32 %i.jk, %i.ia
  br i1 %.not.i.i108.us, label %.thread115.i59, label %bb.v
end_hunk_1
begin_hunk_2_@GenerateCandidates:bb.a
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %CopyCurrentCanvas.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  tail call void @WebPCopyPixels(ptr noundef %i.i, ptr noundef nonnull %i.d) #14
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !76
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !76
  store i32 0, ptr %i.f, align 8, !tbaa !33
  br label %CopyCurrentCanvas.exit

CopyCurrentCanvas.exit:                           ; preds = %bb.a, %bb.b
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %CopyCurrentCanvas.exit
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46   ; 2 uses
  %i.s = add nsw i32 %i.r, %i.p
  %i.t = icmp sgt i32 %i.r, 0
  br i1 %i.t, label %.lr.ph31.i, label %.thread99

.lr.ph31.i:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  br i1 %i.w, label %.lr.ph31.split.us.i, label %.thread99

.lr.ph31.split.us.i:                              ; preds = %.lr.ph31.i
  %i.z = load i32, ptr %i.n, align 4, !tbaa !43   ; 2 uses
  %i.aa = add nsw i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !48
  %i.af = sext i32 %i.z to i64
  %i.ag = sext i32 %i.aa to i64
  %i.ah = sext i32 %i.p to i64
  %i.ai = sext i32 %i.s to i64
  %i.aj = sext i32 %i.ae to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph31.split.us.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %._crit_edge.us.i ], [ %i.ah, %.lr.ph31.split.us.i ] ; 3 uses
  %i.ak = mul nsw i64 %indvars.iv35.i, %i.aj
  %i.al = getelementptr [4 x i8], ptr %i.ad, i64 %i.ak
  br label %bb.d

bb.d:                                             ; preds = %.critedge.us.i, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.us.i ], [ %indvars.iv.next.i, %.critedge.us.i ] ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %.not.us.i = icmp ugt i32 %i.an, -16777217
  br i1 %.not.us.i, label %.critedge.us.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !48
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %indvars.iv35.i, %i.aq
  %i.as = getelementptr [4 x i8], ptr %i.ao, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %.not26.us.i = icmp eq i32 %i.au, %i.an
  br i1 %.not26.us.i, label %.critedge.us.i, label %.thread99

.critedge.us.i:                                   ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.ag
  br i1 %i.av, label %bb.d, label %._crit_edge.us.i, !llvm.loop !136

._crit_edge.us.i:                                 ; preds = %.critedge.us.i
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next36.i, %i.ai
  br i1 %i.aw, label %.lr.ph.us.i, label %.thread99, !llvm.loop !137

.thread99:                                        ; preds = %._crit_edge.us.i, %bb.e, %bb.c, %.lr.ph31.i
  %i.ax = phi i1 [ true, %bb.c ], [ true, %.lr.ph31.i ], [ false, %bb.e ], [ true, %._crit_edge.us.i ] ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !126
  %i.bb = fpext float %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+02
  %i.bd = tail call double @pow(double noundef %i.bc, double noundef 5.000000e-01) #14, !tbaa !3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 284
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !44 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !46 ; 2 uses
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = icmp sgt i32 %i.bh, 0
  br i1 %i.bj, label %.lr.ph35.i, label %.thread

.lr.ph35.i:                                       ; preds = %.thread99
  %i.bk = fsub double 1.000000e+00, %i.bd
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double 3.100000e+01, double %i.bd)
  %i.bm = fadd double %i.bl, 5.000000e-01
  %i.bn = fptosi double %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !45 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bt = mul nsw i32 %i.bn, 255                  ; 3 uses
  br i1 %i.bq, label %.lr.ph35.split.us.i, label %.thread

.lr.ph35.split.us.i:                              ; preds = %.lr.ph35.i
  %i.bu = load i32, ptr %i.ay, align 4, !tbaa !43 ; 2 uses
  %i.bv = add nsw i32 %i.bu, %i.bp
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !48
  %i.ca = sext i32 %i.bu to i64
  %i.cb = sext i32 %i.bv to i64
  %i.cc = sext i32 %i.bf to i64
  %i.cd = sext i32 %i.bi to i64
  %i.ce = sext i32 %i.bz to i64
  br label %.lr.ph.us.i74

.lr.ph.us.i74:                                    ; preds = %._crit_edge.us.i79, %.lr.ph35.split.us.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %._crit_edge.us.i79 ], [ %i.cc, %.lr.ph35.split.us.i ] ; 3 uses
  %i.cf = mul nsw i64 %indvars.iv39.i, %i.ce
  %i.cg = getelementptr [4 x i8], ptr %i.by, i64 %i.cf
  br label %bb.f

bb.f:                                             ; preds = %.critedge.us.i77, %.lr.ph.us.i74
  %indvars.iv.i75 = phi i64 [ %i.ca, %.lr.ph.us.i74 ], [ %indvars.iv.next.i78, %.critedge.us.i77 ] ; 3 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i75
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3  ; 5 uses
  %.not.us.i76 = icmp ugt i32 %i.ci, -16777217
  br i1 %.not.us.i76, label %.critedge.us.i77, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.ck = load i32, ptr %i.bs, align 8, !tbaa !48
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %indvars.iv39.i, %i.cl
  %i.cn = getelementptr [4 x i8], ptr %i.cj, i64 %i.cm
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %indvars.iv.i75
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 4 uses
  %i.cq = lshr i32 %i.cp, 24                      ; 4 uses
  %i.cr = lshr i32 %i.cp, 8
  %i.cs = and i32 %i.cr, 255
  %i.ct = and i32 %i.cp, 255
  %i.cu = lshr i32 %i.ci, 24
  %i.cv = lshr i32 %i.ci, 8
  %i.cw = and i32 %i.cv, 255
  %i.cx = and i32 %i.ci, 255
  %i.cy = icmp eq i32 %i.cq, %i.cu
  br i1 %i.cy, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cz = lshr i32 %i.ci, 16
  %i.da = and i32 %i.cz, 255
  %i.db = lshr i32 %i.cp, 16
  %i.dc = and i32 %i.db, 255
  %i.dd = sub nsw i32 %i.dc, %i.da
  %i.de = tail call i32 @llvm.abs.i32(i32 %i.dd, i1 true)
  %i.df = mul nuw nsw i32 %i.de, %i.cq
  %.not.i.us.i = icmp sgt i32 %i.df, %i.bt
  br i1 %.not.i.us.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dg = sub nsw i32 %i.cs, %i.cw
  %i.dh = tail call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = mul nuw nsw i32 %i.dh, %i.cq
  %.not23.i.us.i = icmp samesign ugt i32 %i.di, %i.bt
  br i1 %.not23.i.us.i, label %.thread, label %PixelsAreSimilar.exit.us.i

PixelsAreSimilar.exit.us.i:                       ; preds = %bb.i
  %i.dj = sub nsw i32 %i.ct, %i.cx
  %i.dk = tail call i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dl = mul nuw nsw i32 %i.dk, %i.cq
  %.not30.us.i = icmp samesign ugt i32 %i.dl, %i.bt
  br i1 %.not30.us.i, label %.thread, label %.critedge.us.i77

.critedge.us.i77:                                 ; preds = %PixelsAreSimilar.exit.us.i, %bb.f
  %indvars.iv.next.i78 = add nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %i.dm = icmp slt i64 %indvars.iv.next.i78, %i.cb
  br i1 %i.dm, label %bb.f, label %._crit_edge.us.i79, !llvm.loop !138

._crit_edge.us.i79:                               ; preds = %.critedge.us.i77
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next40.i, %i.cd
  br i1 %i.dn, label %.lr.ph.us.i74, label %.thread, !llvm.loop !139

.thread:                                          ; preds = %._crit_edge.us.i79, %PixelsAreSimilar.exit.us.i, %bb.i, %bb.h, %bb.g, %.lr.ph35.i, %.thread99, %CopyCurrentCanvas.exit
  %i.do = phi i1 [ false, %CopyCurrentCanvas.exit ], [ %i.ax, %.thread99 ], [ %i.ax, %.lr.ph35.i ], [ %i.ax, %PixelsAreSimilar.exit.us.i ], [ %i.ax, %bb.g ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ %i.ax, %._crit_edge.us.i79 ] ; 3 uses
  %i.dp = phi i1 [ false, %CopyCurrentCanvas.exit ], [ true, %.thread99 ], [ true, %.lr.ph35.i ], [ false, %PixelsAreSimilar.exit.us.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ true, %._crit_edge.us.i79 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !91
  %.not67 = icmp eq i32 %i.dr, 0
  br i1 %.not67, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %.not68 = icmp eq i32 %3, 0
  br i1 %.not68, label %.thread106, label %.thread101

bb.k:                                             ; preds = %.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !127
  %.not69 = icmp eq i32 %i.dt, 0
  br i1 %.not69, label %bb.l, label %.thread101

bb.l:                                             ; preds = %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dv = tail call i32 @WebPGetColorPalette(ptr noundef nonnull %i.du, ptr noundef null) #14 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 193
  %i.dx = icmp sgt i32 %i.dv, 30
  br i1 %i.dw, label %.thread106, label %.thread101

.thread101:                                       ; preds = %bb.k, %bb.j, %bb.l
  %.059.shrunk104 = phi i1 [ false, %bb.j ], [ %i.dx, %bb.l ], [ true, %bb.k ]
  %i.dy = load i32, ptr %i.f, align 8, !tbaa !33
  %.not.i80 = icmp eq i32 %i.dy, 0
  br i1 %.not.i80, label %CopyCurrentCanvas.exit81, label %bb.m

bb.m:                                             ; preds = %.thread101
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !75
  tail call void @WebPCopyPixels(ptr noundef %i.ea, ptr noundef nonnull %i.d) #14
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !75
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ee = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !76
  store <2 x ptr> %i.ee, ptr %i.ed, align 8, !tbaa !76
  store i32 0, ptr %i.f, align 8, !tbaa !33
  br label %CopyCurrentCanvas.exit81

CopyCurrentCanvas.exit81:                         ; preds = %.thread101, %bb.m
  br i1 %i.do, label %bb.n, label %bb.r

bb.n:                                             ; preds = %CopyCurrentCanvas.exit81
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !46 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph32.i, label %IncreaseTransparency.exit

.lr.ph32.i:                                       ; preds = %bb.n
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !44 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !47
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !47
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre.i = load i32, ptr %i.ef, align 4, !tbaa !43 ; 2 uses
  %.pre36.i = load i32, ptr %i.er, align 4, !tbaa !45 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph32.i
  %i.es = phi i32 [ %i.ei, %.lr.ph32.i ], [ %i.fu, %._crit_edge.i ]
  %i.et = phi i32 [ %i.ek, %.lr.ph32.i ], [ %i.fv, %._crit_edge.i ]
  %i.eu = phi i32 [ %.pre36.i, %.lr.ph32.i ], [ %i.fw, %._crit_edge.i ] ; 2 uses
  %i.ev = phi i32 [ %.pre.i, %.lr.ph32.i ], [ %i.fx, %._crit_edge.i ] ; 2 uses
  %i.ew = phi i32 [ %.pre36.i, %.lr.ph32.i ], [ %i.fy, %._crit_edge.i ] ; 2 uses
  %i.ex = phi i32 [ %.pre.i, %.lr.ph32.i ], [ %i.fz, %._crit_edge.i ] ; 2 uses
  %.02430.i = phi i32 [ %i.ek, %.lr.ph32.i ], [ %i.ga, %._crit_edge.i ] ; 3 uses
  %.02529.i = phi i32 [ 0, %.lr.ph32.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ey = load i32, ptr %i.en, align 8, !tbaa !48
  %i.ez = mul nsw i32 %i.ey, %.02430.i
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fa
  %i.fc = load i32, ptr %i.eq, align 8, !tbaa !48
  %i.fd = mul nsw i32 %i.fc, %.02430.i
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.fe
  %i.fg = icmp sgt i32 %i.ew, 0
  br i1 %i.fg, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.fh = sext i32 %i.ex to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %i.fi = phi i32 [ %i.eu, %.lr.ph.preheader.i ], [ %i.fp, %bb.q ]
  %i.fj = phi i32 [ %i.ev, %.lr.ph.preheader.i ], [ %i.fq, %bb.q ]
  %indvars.iv.i82 = phi i64 [ %i.fh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i84, %bb.q ] ; 3 uses
  %.127.i = phi i32 [ %.02529.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.q ]
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv.i82
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %indvars.iv.i82 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3  ; 2 uses
  %i.fo = icmp ne i32 %i.fl, %i.fn
  %.not.i83 = icmp eq i32 %i.fn, 0
  %or.cond.i = or i1 %i.fo, %.not.i83
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  store i32 0, ptr %i.fm, align 4, !tbaa !3
  %.pre37.i = load i32, ptr %i.ef, align 4, !tbaa !43
  %.pre38.i = load i32, ptr %i.er, align 4, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %i.fp = phi i32 [ %.pre38.i, %bb.p ], [ %i.fi, %.lr.ph.i ] ; 4 uses
  %i.fq = phi i32 [ %.pre37.i, %bb.p ], [ %i.fj, %.lr.ph.i ] ; 4 uses
  %.2.i = phi i32 [ 1, %bb.p ], [ %.127.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i84 = add nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %i.fr = add nsw i32 %i.fq, %i.fp
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next.i84, %i.fs
  br i1 %i.ft, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !140

._crit_edge.loopexit.i:                           ; preds = %bb.q
  %.pre39.i = load i32, ptr %i.eg, align 4, !tbaa !44
  %.pre40.i = load i32, ptr %i.eh, align 4, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.o
  %i.fu = phi i32 [ %i.es, %bb.o ], [ %.pre40.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fv = phi i32 [ %i.et, %bb.o ], [ %.pre39.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fw = phi i32 [ %i.eu, %bb.o ], [ %i.fp, %._crit_edge.loopexit.i ]
  %i.fx = phi i32 [ %i.ev, %bb.o ], [ %i.fq, %._crit_edge.loopexit.i ]
  %i.fy = phi i32 [ %i.ew, %bb.o ], [ %i.fp, %._crit_edge.loopexit.i ]
  %i.fz = phi i32 [ %i.ex, %bb.o ], [ %i.fq, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.02529.i, %bb.o ], [ %.2.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ga = add nsw i32 %.02430.i, 1                ; 2 uses
  %i.gb = add nsw i32 %i.fv, %i.fu
  %i.gc = icmp slt i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.o, label %IncreaseTransparency.exit, !llvm.loop !141

IncreaseTransparency.exit:                        ; preds = %._crit_edge.i, %bb.n
  %.025.lcssa.i = phi i32 [ 0, %bb.n ], [ %.1.lcssa.i, %._crit_edge.i ]
  store i32 %.025.lcssa.i, ptr %i.f, align 8, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %IncreaseTransparency.exit, %CopyCurrentCanvas.exit81
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %9, ptr noundef nonnull readonly align 4 dereferenceable(116) %6, i64 116, i1 false), !tbaa.struct !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !84
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 3, ptr %i.gg, align 4, !tbaa !142
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.gi = load <2 x i32>, ptr %i.ge, align 4, !tbaa !3
  store <2 x i32> %i.gi, ptr %i.gh, align 8, !tbaa !3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.gj, align 8, !tbaa !143
  %not..i = xor i1 %i.do, true
  %i.gk = zext i1 %not..i to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !144
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.gm, align 8, !tbaa !145
  tail call void @WebPMemoryWriterInit(ptr noundef nonnull %i.b) #14
  %i.gn = load i32, ptr %9, align 4, !tbaa !74
  %i.go = icmp eq i32 %i.gn, 0
  %or.cond.i85 = and i1 %i.do, %i.go
  br i1 %or.cond.i85, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.gp, align 4, !tbaa !146
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 0, ptr %i.gq, align 4, !tbaa !147
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i32 1, ptr %i.gd, align 8, !tbaa !59
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr @WebPMemoryWrite, ptr %i.gr, align 8, !tbaa !115
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr %i.b, ptr %i.gs, align 8, !tbaa !116
  %i.gt = call i32 @WebPEncode(ptr noundef nonnull %9, ptr noundef nonnull %i.gd) #14
  %.not.i.not.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !66
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.b) #14
  br label %EncodeCandidate.exit

bb.v:                                             ; preds = %bb.t
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 1, ptr %i.gw, align 8, !tbaa !128
  br label %EncodeCandidate.exit

EncodeCandidate.exit:                             ; preds = %bb.u, %bb.v
  %.0.i = phi i32 [ 0, %bb.v ], [ %i.gv, %bb.u ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %.not71 = icmp eq i32 %.0.i, 0
  %brmerge.not = and i1 %.059.shrunk104, %.not71
  br i1 %brmerge.not, label %.thread106, label %bb.ak

.thread106:                                       ; preds = %bb.l, %bb.j, %EncodeCandidate.exit
  %i.gx = load i32, ptr %i.f, align 8, !tbaa !33
  %.not.i86 = icmp eq i32 %i.gx, 0
  br i1 %.not.i86, label %CopyCurrentCanvas.exit87, label %bb.w

bb.w:                                             ; preds = %.thread106
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !75
  call void @WebPCopyPixels(ptr noundef %i.gz, ptr noundef nonnull %i.d) #14
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !75
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 144
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.hd = load <2 x ptr>, ptr %i.hb, align 8, !tbaa !76
  store <2 x ptr> %i.hd, ptr %i.hc, align 8, !tbaa !76
  store i32 0, ptr %i.f, align 8, !tbaa !33
  br label %CopyCurrentCanvas.exit87

CopyCurrentCanvas.exit87:                         ; preds = %.thread106, %bb.w
  br i1 %i.dp, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %CopyCurrentCanvas.exit87
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !126
  %i.hh = fpext float %i.hg to double
  %i.hi = fdiv double %i.hh, 1.000000e+02
  %i.hj = call double @pow(double noundef %i.hi, double noundef 5.000000e-01) #14, !tbaa !3 ; 2 uses
  %i.hk = fsub double 1.000000e+00, %i.hj
  %i.hl = call double @llvm.fmuladd.f64(double %i.hk, double 3.100000e+01, double %i.hj)
  %i.hm = fadd double %i.hl, 5.000000e-01
  %i.hn = fptosi double %i.hm to i32              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 284
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !44 ; 2 uses
  %i.hq = and i32 %i.hp, -8
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !46
  %i.ht = add nsw i32 %i.hs, %i.hp
  %i.hu = and i32 %i.ht, -8                       ; 2 uses
  %i.hv = load i32, ptr %i.he, align 4, !tbaa !43 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !45
  %i.hy = add nsw i32 %i.hx, %i.hv
  %i.hz = and i32 %i.hy, -8                       ; 2 uses
  %.062100.i = add nsw i32 %i.hq, 8               ; 2 uses
  %i.ia = icmp slt i32 %.062100.i, %i.hu
  br i1 %i.ia, label %.preheader83.lr.ph.i, label %FlattenSimilarBlocks.exit

.preheader83.lr.ph.i:                             ; preds = %bb.x
  %i.ib = and i32 %i.hv, -8
  %.097.i = add nsw i32 %i.ib, 8                  ; 2 uses
  %i.ic = icmp slt i32 %.097.i, %i.hz
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 57 uses
  %i.if = mul nsw i32 %i.hn, 255                  ; 2 uses
  br i1 %i.ic, label %.preheader83.lr.ph.split.us.i, label %FlattenSimilarBlocks.exit

.preheader83.lr.ph.split.us.i:                    ; preds = %.preheader83.lr.ph.i
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !47
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !47
  %i.ik = sext i32 %.097.i to i64
  %i.il = sext i32 %i.hz to i64
  br label %.preheader83.us.i

.preheader83.us.i:                                ; preds = %..loopexit84_crit_edge.us.i, %.preheader83.lr.ph.split.us.i
  %.062102.us.i = phi i32 [ %.062100.i, %.preheader83.lr.ph.split.us.i ], [ %.062.us.i, %..loopexit84_crit_edge.us.i ] ; 3 uses
  %.063101.us.i = phi i32 [ 0, %.preheader83.lr.ph.split.us.i ], [ %.2.us.i, %..loopexit84_crit_edge.us.i ]
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.us.i, %.preheader83.us.i
  %indvars.iv112.i = phi i64 [ %i.ik, %.preheader83.us.i ], [ %indvars.iv.next113.i, %.loopexit.us.i ] ; 3 uses
  %.198.us.i = phi i32 [ %.063101.us.i, %.preheader83.us.i ], [ %.2.us.i, %.loopexit.us.i ]
  %i.im = load i32, ptr %i.id, align 8, !tbaa !48 ; 2 uses
  %i.in = mul nsw i32 %i.im, %.062102.us.i
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.io
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %indvars.iv112.i
  %i.ir = load i32, ptr %i.ie, align 8, !tbaa !48 ; 2 uses
  %i.is = mul nsw i32 %i.ir, %.062102.us.i
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv112.i ; 59 uses
  %i.iw = sext i32 %i.im to i64
  %i.ix = sext i32 %i.ir to i64
  br label %.preheader82.us.i

bb.z:                                             ; preds = %bb.aa
  %i.iy = icmp eq i32 %.266.us.i, 64
  br i1 %i.iy, label %.preheader.us.i, label %.loopexit.us.i

.preheader.us.i:                                  ; preds = %bb.z
  %i.iz = sdiv i32 %.269.us.i, 64
  %i.ja = shl i32 %i.iz, 16
  %i.jb = sdiv i32 %.279.us.i, 64
  %i.jc = shl i32 %i.jb, 8
  %i.jd = sdiv i32 %.276.us.i, 64
  %i.je = or i32 %i.jd, %i.jc
  %i.jf = or i32 %i.je, %i.ja                     ; 57 uses
  %i.jg = insertelement <4 x i32> poison, i32 %i.jf, i64 0
  %i.jh = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.jh, ptr %i.iv, align 4, !tbaa !3
  %i.ji = getelementptr i8, ptr %i.iv, i64 16
  store <4 x i32> %i.jh, ptr %i.ji, align 4, !tbaa !3
  %i.jj = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.jk
  store i32 %i.jf, ptr %i.jl, align 4, !tbaa !3
  %i.jm = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr [4 x i8], ptr %i.iv, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 4
  store i32 %i.jf, ptr %i.jp, align 4, !tbaa !3
  %i.jq = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr [4 x i8], ptr %i.iv, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.js, i64 8
  store i32 %i.jf, ptr %i.jt, align 4, !tbaa !3
  %i.ju = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr [4 x i8], ptr %i.iv, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 12
  store i32 %i.jf, ptr %i.jx, align 4, !tbaa !3
  %i.jy = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr [4 x i8], ptr %i.iv, i64 %i.jz
  %i.kb = getelementptr i8, ptr %i.ka, i64 16
  store i32 %i.jf, ptr %i.kb, align 4, !tbaa !3
  %i.kc = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr [4 x i8], ptr %i.iv, i64 %i.kd
  %i.kf = getelementptr i8, ptr %i.ke, i64 20
  store i32 %i.jf, ptr %i.kf, align 4, !tbaa !3
  %i.kg = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr [4 x i8], ptr %i.iv, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 24
  store i32 %i.jf, ptr %i.kj, align 4, !tbaa !3
  %i.kk = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr [4 x i8], ptr %i.iv, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.km, i64 28
  store i32 %i.jf, ptr %i.kn, align 4, !tbaa !3
  %i.ko = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.kp = shl nsw i32 %i.ko, 1
  %i.kq = sext i32 %i.kp to i64
end_hunk_2
begin_hunk_3_@GenerateCandidates:bb.a
  store i32 %i.jf, ptr %i.qn, align 4, !tbaa !3
  %i.qo = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.qp = mul nsw i32 %i.qo, 6
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.qq
  store i32 %i.jf, ptr %i.qr, align 4, !tbaa !3
  %i.qs = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.qt = mul nsw i32 %i.qs, 6
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr [4 x i8], ptr %i.iv, i64 %i.qu
  %i.qw = getelementptr i8, ptr %i.qv, i64 4
  store i32 %i.jf, ptr %i.qw, align 4, !tbaa !3
  %i.qx = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.qy = mul nsw i32 %i.qx, 6
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr [4 x i8], ptr %i.iv, i64 %i.qz
  %i.rb = getelementptr i8, ptr %i.ra, i64 8
  store i32 %i.jf, ptr %i.rb, align 4, !tbaa !3
  %i.rc = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.rd = mul nsw i32 %i.rc, 6
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr [4 x i8], ptr %i.iv, i64 %i.re
  %i.rg = getelementptr i8, ptr %i.rf, i64 12
  store i32 %i.jf, ptr %i.rg, align 4, !tbaa !3
  %i.rh = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.ri = mul nsw i32 %i.rh, 6
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr [4 x i8], ptr %i.iv, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 16
  store i32 %i.jf, ptr %i.rl, align 4, !tbaa !3
  %i.rm = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.rn = mul nsw i32 %i.rm, 6
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr [4 x i8], ptr %i.iv, i64 %i.ro
  %i.rq = getelementptr i8, ptr %i.rp, i64 20
  store i32 %i.jf, ptr %i.rq, align 4, !tbaa !3
  %i.rr = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.rs = mul nsw i32 %i.rr, 6
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr [4 x i8], ptr %i.iv, i64 %i.rt
  %i.rv = getelementptr i8, ptr %i.ru, i64 24
  store i32 %i.jf, ptr %i.rv, align 4, !tbaa !3
  %i.rw = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.rx = mul nsw i32 %i.rw, 6
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr [4 x i8], ptr %i.iv, i64 %i.ry
  %i.sa = getelementptr i8, ptr %i.rz, i64 28
  store i32 %i.jf, ptr %i.sa, align 4, !tbaa !3
  %i.sb = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.sc = mul nsw i32 %i.sb, 7
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.sd
  store i32 %i.jf, ptr %i.se, align 4, !tbaa !3
  %i.sf = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.sg = mul nsw i32 %i.sf, 7
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr [4 x i8], ptr %i.iv, i64 %i.sh
  %i.sj = getelementptr i8, ptr %i.si, i64 4
  store i32 %i.jf, ptr %i.sj, align 4, !tbaa !3
  %i.sk = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.sl = mul nsw i32 %i.sk, 7
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr [4 x i8], ptr %i.iv, i64 %i.sm
  %i.so = getelementptr i8, ptr %i.sn, i64 8
  store i32 %i.jf, ptr %i.so, align 4, !tbaa !3
  %i.sp = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.sq = mul nsw i32 %i.sp, 7
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr [4 x i8], ptr %i.iv, i64 %i.sr
  %i.st = getelementptr i8, ptr %i.ss, i64 12
  store i32 %i.jf, ptr %i.st, align 4, !tbaa !3
  %i.su = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.sv = mul nsw i32 %i.su, 7
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr [4 x i8], ptr %i.iv, i64 %i.sw
  %i.sy = getelementptr i8, ptr %i.sx, i64 16
  store i32 %i.jf, ptr %i.sy, align 4, !tbaa !3
  %i.sz = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.ta = mul nsw i32 %i.sz, 7
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr [4 x i8], ptr %i.iv, i64 %i.tb
  %i.td = getelementptr i8, ptr %i.tc, i64 20
  store i32 %i.jf, ptr %i.td, align 4, !tbaa !3
  %i.te = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.tf = mul nsw i32 %i.te, 7
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr [4 x i8], ptr %i.iv, i64 %i.tg
  %i.ti = getelementptr i8, ptr %i.th, i64 24
  store i32 %i.jf, ptr %i.ti, align 4, !tbaa !3
  %i.tj = load i32, ptr %i.ie, align 8, !tbaa !48
  %i.tk = mul nsw i32 %i.tj, 7
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr [4 x i8], ptr %i.iv, i64 %i.tl
  %i.tn = getelementptr i8, ptr %i.tm, i64 28
  store i32 %i.jf, ptr %i.tn, align 4, !tbaa !3
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.preheader.us.i, %bb.z
  %.2.us.i = phi i32 [ %.198.us.i, %bb.z ], [ 1, %.preheader.us.i ] ; 3 uses
  %indvars.iv.next113.i = add nsw i64 %indvars.iv112.i, 8 ; 2 uses
  %i.to = icmp slt i64 %indvars.iv.next113.i, %i.il
  br i1 %i.to, label %bb.y, label %..loopexit84_crit_edge.us.i, !llvm.loop !148

bb.aa:                                            ; preds = %PixelsAreSimilar.exit.thread.us.i
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 8
  br i1 %exitcond109.not.i, label %bb.z, label %.preheader82.us.i, !llvm.loop !149

bb.ab:                                            ; preds = %.preheader82.us.i, %PixelsAreSimilar.exit.thread.us.i
  %indvars.iv.i89 = phi i64 [ 0, %.preheader82.us.i ], [ %indvars.iv.next.i90, %PixelsAreSimilar.exit.thread.us.i ] ; 3 uses
  %.16589.us.i = phi i32 [ %.06494.us.i, %.preheader82.us.i ], [ %.266.us.i, %PixelsAreSimilar.exit.thread.us.i ] ; 6 uses
  %.16888.us.i = phi i32 [ %.06793.us.i, %.preheader82.us.i ], [ %.269.us.i, %PixelsAreSimilar.exit.thread.us.i ] ; 6 uses
  %.17586.us.i = phi i32 [ %.07491.us.i, %.preheader82.us.i ], [ %.276.us.i, %PixelsAreSimilar.exit.thread.us.i ] ; 6 uses
  %.17885.us.i = phi i32 [ %.07790.us.i, %.preheader82.us.i ], [ %.279.us.i, %PixelsAreSimilar.exit.thread.us.i ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i89
  %i.tp = load i32, ptr %gep.i, align 4, !tbaa !3 ; 4 uses
  %i.tq = icmp ugt i32 %i.tp, -16777217
  br i1 %i.tq, label %bb.ac, label %PixelsAreSimilar.exit.thread.us.i

bb.ac:                                            ; preds = %bb.ab
  %gep120.i = getelementptr [4 x i8], ptr %invariant.gep119.i, i64 %indvars.iv.i89
  %i.tr = load i32, ptr %gep120.i, align 4, !tbaa !3 ; 4 uses
  %i.ts = lshr i32 %i.tp, 8
  %i.tt = and i32 %i.ts, 255                      ; 2 uses
  %i.tu = and i32 %i.tp, 255                      ; 2 uses
  %i.tv = lshr i32 %i.tr, 8
  %i.tw = and i32 %i.tv, 255
  %i.tx = and i32 %i.tr, 255
  %i.ty = icmp ugt i32 %i.tr, -16777217
  br i1 %i.ty, label %bb.ad, label %PixelsAreSimilar.exit.thread.us.i

bb.ad:                                            ; preds = %bb.ac
  %i.tz = lshr i32 %i.tr, 16
  %i.ua = and i32 %i.tz, 255
  %i.ub = lshr i32 %i.tp, 16
  %i.uc = and i32 %i.ub, 255                      ; 2 uses
  %i.ud = sub nsw i32 %i.uc, %i.ua
  %i.ue = call i32 @llvm.abs.i32(i32 %i.ud, i1 true)
  %.not.i.us.i91 = icmp sgt i32 %i.ue, %i.hn
  br i1 %.not.i.us.i91, label %PixelsAreSimilar.exit.thread.us.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.uf = sub nsw i32 %i.tt, %i.tw
  %i.ug = call i32 @llvm.abs.i32(i32 %i.uf, i1 true)
  %i.uh = mul nuw nsw i32 %i.ug, 255
  %.not23.i.us.i92 = icmp samesign ugt i32 %i.uh, %i.if
  br i1 %.not23.i.us.i92, label %PixelsAreSimilar.exit.thread.us.i, label %PixelsAreSimilar.exit.us.i93

PixelsAreSimilar.exit.us.i93:                     ; preds = %bb.ae
  %i.ui = sub nsw i32 %i.tu, %i.tx
  %i.uj = call i32 @llvm.abs.i32(i32 %i.ui, i1 true)
  %i.uk = mul nuw nsw i32 %i.uj, 255
  %.not81.us.i = icmp samesign ugt i32 %i.uk, %i.if
  br i1 %.not81.us.i, label %PixelsAreSimilar.exit.thread.us.i, label %bb.af

bb.af:                                            ; preds = %PixelsAreSimilar.exit.us.i93
  %i.ul = add nsw i32 %.16589.us.i, 1
  %i.um = add i32 %i.uc, %.16888.us.i
  %i.un = add i32 %i.tt, %.17885.us.i
  %i.uo = add i32 %i.tu, %.17586.us.i
  br label %PixelsAreSimilar.exit.thread.us.i

PixelsAreSimilar.exit.thread.us.i:                ; preds = %bb.af, %PixelsAreSimilar.exit.us.i93, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.279.us.i = phi i32 [ %i.un, %bb.af ], [ %.17885.us.i, %PixelsAreSimilar.exit.us.i93 ], [ %.17885.us.i, %bb.ab ], [ %.17885.us.i, %bb.ae ], [ %.17885.us.i, %bb.ad ], [ %.17885.us.i, %bb.ac ] ; 3 uses
  %.276.us.i = phi i32 [ %i.uo, %bb.af ], [ %.17586.us.i, %PixelsAreSimilar.exit.us.i93 ], [ %.17586.us.i, %bb.ab ], [ %.17586.us.i, %bb.ae ], [ %.17586.us.i, %bb.ad ], [ %.17586.us.i, %bb.ac ] ; 3 uses
  %.269.us.i = phi i32 [ %i.um, %bb.af ], [ %.16888.us.i, %PixelsAreSimilar.exit.us.i93 ], [ %.16888.us.i, %bb.ab ], [ %.16888.us.i, %bb.ae ], [ %.16888.us.i, %bb.ad ], [ %.16888.us.i, %bb.ac ] ; 3 uses
  %.266.us.i = phi i32 [ %i.ul, %bb.af ], [ %.16589.us.i, %PixelsAreSimilar.exit.us.i93 ], [ %.16589.us.i, %bb.ab ], [ %.16589.us.i, %bb.ae ], [ %.16589.us.i, %bb.ad ], [ %.16589.us.i, %bb.ac ] ; 3 uses
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i90, 8
  br i1 %exitcond.not.i, label %bb.aa, label %bb.ab, !llvm.loop !150

.preheader82.us.i:                                ; preds = %bb.aa, %bb.y
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i, %bb.aa ], [ 0, %bb.y ] ; 3 uses
  %.06494.us.i = phi i32 [ %.266.us.i, %bb.aa ], [ 0, %bb.y ]
  %.06793.us.i = phi i32 [ %.269.us.i, %bb.aa ], [ 0, %bb.y ]
  %.07491.us.i = phi i32 [ %.276.us.i, %bb.aa ], [ 0, %bb.y ]
  %.07790.us.i = phi i32 [ %.279.us.i, %bb.aa ], [ 0, %bb.y ]
  %i.up = mul nsw i64 %indvars.iv106.i, %i.iw
  %i.uq = mul nsw i64 %indvars.iv106.i, %i.ix
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.iq, i64 %i.up
  %invariant.gep119.i = getelementptr [4 x i8], ptr %i.iv, i64 %i.uq
  br label %bb.ab

..loopexit84_crit_edge.us.i:                      ; preds = %.loopexit.us.i
  %.062.us.i = add nsw i32 %.062102.us.i, 8       ; 2 uses
  %i.ur = icmp slt i32 %.062.us.i, %i.hu
  br i1 %i.ur, label %.preheader83.us.i, label %FlattenSimilarBlocks.exit, !llvm.loop !151

FlattenSimilarBlocks.exit:                        ; preds = %..loopexit84_crit_edge.us.i, %bb.x, %.preheader83.lr.ph.i
  %.063.lcssa.i = phi i32 [ 0, %bb.x ], [ 0, %.preheader83.lr.ph.i ], [ %.2.us.i, %..loopexit84_crit_edge.us.i ]
  store i32 %.063.lcssa.i, ptr %i.f, align 8, !tbaa !33
  br label %bb.ag

bb.ag:                                            ; preds = %FlattenSimilarBlocks.exit, %CopyCurrentCanvas.exit87
  %i.us = getelementptr inbounds nuw i8, ptr %5, i64 296 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %8, ptr noundef nonnull readonly align 4 dereferenceable(116) %7, i64 116, i1 false), !tbaa.struct !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i8 0, i64 104, i1 false)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ut, i64 16, i1 false), !tbaa.struct !84
  %i.uv = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 3, ptr %i.uv, align 4, !tbaa !142
  %i.uw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ux = load <2 x i32>, ptr %i.ut, align 4, !tbaa !3
  store <2 x i32> %i.ux, ptr %i.uw, align 8, !tbaa !3
  %i.uy = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.uy, align 8, !tbaa !143
  %not..i94 = xor i1 %i.dp, true
  %i.uz = zext i1 %not..i94 to i32
  %i.va = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.uz, ptr %i.va, align 4, !tbaa !144
  %i.vb = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.vb, align 8, !tbaa !145
  call void @WebPMemoryWriterInit(ptr noundef nonnull %i.c) #14
  %i.vc = load i32, ptr %8, align 4, !tbaa !74
  %i.vd = icmp eq i32 %i.vc, 0
  %or.cond.i95 = and i1 %i.dp, %i.vd
  br i1 %or.cond.i95, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ve = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 0, ptr %i.ve, align 4, !tbaa !146
  %i.vf = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 0, ptr %i.vf, align 4, !tbaa !147
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i32 1, ptr %i.us, align 8, !tbaa !59
  %i.vg = getelementptr inbounds nuw i8, ptr %5, i64 392
  store ptr @WebPMemoryWrite, ptr %i.vg, align 8, !tbaa !115
  %i.vh = getelementptr inbounds nuw i8, ptr %5, i64 400
  store ptr %i.c, ptr %i.vh, align 8, !tbaa !116
  %i.vi = call i32 @WebPEncode(ptr noundef nonnull %8, ptr noundef nonnull %i.us) #14
  %.not.i.not.i96 = icmp eq i32 %i.vi, 0
  br i1 %.not.i.not.i96, label %EncodeCandidate.exit98, label %EncodeCandidate.exit98.thread

EncodeCandidate.exit98.thread:                    ; preds = %bb.ai
  %i.vj = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 1, ptr %i.vj, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.aj

EncodeCandidate.exit98:                           ; preds = %bb.ai
  %i.vk = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !66 ; 2 uses
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %.not72 = icmp eq i32 %i.vl, 0
  br i1 %.not72, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %EncodeCandidate.exit98.thread, %EncodeCandidate.exit98
  store i32 1, ptr %i.f, align 8, !tbaa !33
  br label %bb.ak

bb.ak:                                            ; preds = %EncodeCandidate.exit, %bb.aj, %EncodeCandidate.exit98
  %.0 = phi i32 [ %i.vl, %EncodeCandidate.exit98 ], [ %.0.i, %EncodeCandidate.exit ], [ 0, %bb.aj ]
  ret i32 %.0
}

declare void @WebPMemoryWriterClear(ptr noundef) local_unnamed_addr #3

declare i32 @WebPPictureView(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 16}
!8 = !{!"WebPAnimEncoderOptions", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28}
!9 = !{!"WebPMuxAnimParams", !4, i64 0, !4, i64 4}
!10 = !{!8, !4, i64 20}
!11 = !{!8, !4, i64 24}
!12 = !{!5, !5, i64 0}
!13 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !3, i64 28, i64 16, !12}
!14 = !{!8, !4, i64 8}
!15 = !{!8, !4, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!20, !4, i64 320}
!20 = !{!"WebPAnimEncoder", !4, i64 0, !4, i64 4, !8, i64 8, !21, i64 52, !22, i64 68, !22, i64 184, !24, i64 304, !25, i64 312, !4, i64 568, !25, i64 576, !25, i64 832, !18, i64 1088, !29, i64 1096, !29, i64 1104, !29, i64 1112, !29, i64 1120, !29, i64 1128, !4, i64 1136, !4, i64 1140, !4, i64 1144, !4, i64 1148, !4, i64 1152, !4, i64 1156, !4, i64 1160, !29, i64 1168, !29, i64 1176, !30, i64 1184, !5, i64 1192}
!21 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!22 = !{!"WebPConfig", !4, i64 0, !23, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !23, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112}
!23 = !{!"float", !5, i64 0}
!24 = !{!"p1 _ZTS11WebPPicture", !18, i64 0}
!25 = !{!"WebPPicture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !26, i64 16, !26, i64 24, !26, i64 32, !4, i64 40, !4, i64 44, !26, i64 48, !4, i64 56, !5, i64 60, !27, i64 72, !4, i64 80, !5, i64 84, !18, i64 96, !18, i64 104, !4, i64 112, !26, i64 120, !28, i64 128, !4, i64 136, !18, i64 144, !18, i64 152, !5, i64 160, !26, i64 176, !26, i64 184, !5, i64 192, !18, i64 224, !18, i64 232, !5, i64 240}
!26 = !{!"p1 omnipotent char", !18, i64 0}
!27 = !{!"p1 int", !18, i64 0}
!28 = !{!"p1 _ZTS12WebPAuxStats", !18, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = !{!"p1 _ZTS7WebPMux", !18, i64 0}
!31 = !{!20, !4, i64 324}
!32 = !{!20, !4, i64 312}
!33 = !{!20, !4, i64 568}
!34 = !{!20, !29, i64 1128}
!35 = !{!20, !4, i64 1136}
!36 = !{!20, !4, i64 24}
!37 = !{!20, !4, i64 20}
!38 = !{!20, !29, i64 1096}
!39 = !{!20, !18, i64 1088}
!40 = !{!20, !30, i64 1184}
!41 = !{!20, !4, i64 1156}
!42 = !{!20, !4, i64 1160}
!43 = !{!21, !4, i64 0}
!44 = !{!21, !4, i64 4}
!45 = !{!21, !4, i64 8}
!46 = !{!21, !4, i64 12}
!47 = !{!25, !27, i64 72}
!48 = !{!25, !4, i64 80}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!25, !4, i64 8}
!52 = !{!25, !4, i64 12}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!56, !26, i64 0}
!56 = !{!"WebPData", !26, i64 0, !29, i64 8}
!57 = distinct !{!57, !50, !58}
!58 = !{!"llvm.loop.unswitch.partial.disable"}
!59 = !{!25, !4, i64 0}
!60 = !{ptr @ComparePixelsLossless, ptr @ComparePixelsLossy}
!61 = distinct !{!61, !50}
!62 = distinct !{!62, !50}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !50}
!65 = !{!20, !4, i64 1148}
!66 = !{!25, !4, i64 136}
!67 = !{!20, !29, i64 1112}
!68 = !{!20, !4, i64 1144}
!69 = !{!20, !4, i64 0}
!70 = !{!20, !4, i64 4}
!71 = !{!20, !4, i64 32}
!72 = !{i64 0, i64 4, !3, i64 4, i64 4, !73, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !73, i64 24, i64 4, !3, i64 28, i64 4, !3, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 4, !3, i64 44, i64 4, !3, i64 48, i64 4, !3, i64 52, i64 4, !3, i64 56, i64 4, !3, i64 60, i64 4, !3, i64 64, i64 4, !3, i64 68, i64 4, !3, i64 72, i64 4, !3, i64 76, i64 4, !3, i64 80, i64 4, !3, i64 84, i64 4, !3, i64 88, i64 4, !3, i64 92, i64 4, !3, i64 96, i64 4, !3, i64 100, i64 4, !3, i64 104, i64 4, !3, i64 108, i64 4, !3, i64 112, i64 4, !3}
!73 = !{!23, !23, i64 0}
!74 = !{!22, !4, i64 0}
!75 = !{!20, !24, i64 304}
!76 = !{!18, !18, i64 0}
!77 = !{!20, !29, i64 1104}
!78 = !{!79, !4, i64 96}
!79 = !{!"", !80, i64 0, !80, i64 48, !4, i64 96}
!80 = !{!"WebPMuxFrameInfo", !56, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !5, i64 40}
!81 = !{!20, !29, i64 1120}
!82 = !{!20, !4, i64 1140}
!83 = !{!20, !4, i64 1152}
!84 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3}
!85 = !{!79, !29, i64 8}
!86 = !{!79, !29, i64 56}
!87 = !{!20, !29, i64 1168}
!88 = !{!79, !4, i64 24}
!89 = !{!56, !29, i64 8}
!90 = !{!20, !4, i64 68}
!91 = !{!20, !4, i64 28}
!92 = !{!79, !4, i64 28}
!93 = !{!79, !4, i64 16}
!94 = !{!79, !4, i64 20}
!95 = !{!79, !4, i64 32}
!96 = !{!79, !4, i64 36}
!97 = !{!79, !4, i64 72}
!98 = !{!80, !4, i64 16}
!99 = !{!80, !4, i64 20}
!100 = !{!80, !4, i64 32}
!101 = !{!80, !4, i64 36}
!102 = !{!20, !29, i64 1176}
!103 = !{!29, !29, i64 0}
!104 = !{i64 0, i64 8, !105, i64 8, i64 8, !103, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !3, i64 28, i64 4, !3, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 4, !12, i64 48, i64 8, !105, i64 56, i64 8, !103, i64 64, i64 4, !3, i64 68, i64 4, !3, i64 72, i64 4, !3, i64 76, i64 4, !3, i64 80, i64 4, !3, i64 84, i64 4, !3, i64 88, i64 4, !12, i64 96, i64 4, !3}
!105 = !{!26, !26, i64 0}
!106 = distinct !{!106, !54}
!107 = !{!108, !4, i64 0}
!108 = !{!"WebPDecoderConfig", !109, i64 0, !110, i64 40, !111, i64 160}
!109 = !{!"WebPBitstreamFeatures", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20}
!110 = !{!"WebPDecBuffer", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !5, i64 16, !5, i64 96, !26, i64 112}
!111 = !{!"WebPDecoderOptions", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !5, i64 56}
!112 = !{!108, !4, i64 4}
!113 = !{!108, !4, i64 52}
!114 = !{!108, !4, i64 40}
!115 = !{!25, !18, i64 96}
!116 = !{!25, !18, i64 104}
!117 = !{!118, !26, i64 0}
!118 = !{!"WebPMemoryWriter", !26, i64 0, !29, i64 8, !29, i64 16, !5, i64 24}
!119 = !{!118, !29, i64 8}
!120 = !{i64 0, i64 8, !105, i64 8, i64 8, !103}
!121 = distinct !{!121, !50}
!122 = distinct !{!122, !50}
!123 = !{!124, !4, i64 0}
!124 = !{!"", !4, i64 0, !4, i64 4, !21, i64 8, !25, i64 24, !21, i64 280, !25, i64 296}
!125 = !{!124, !4, i64 4}
!126 = !{!22, !23, i64 4}
!127 = !{!20, !4, i64 16}
!128 = !{!129, !4, i64 96}
!129 = !{!"", !118, i64 0, !80, i64 32, !21, i64 80, !4, i64 96}
!130 = !{i64 0, i64 8, !105, i64 8, i64 8, !103, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !3, i64 28, i64 4, !3, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 4, !12}
!131 = !{!129, !29, i64 8}
!132 = !{!124, !4, i64 8}
!133 = !{!124, !4, i64 12}
!134 = !{!124, !4, i64 16}
!135 = !{!124, !4, i64 20}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = distinct !{!140, !50}
!141 = distinct !{!141, !50}
!142 = !{!129, !4, i64 60}
!143 = !{!129, !4, i64 64}
!144 = !{!129, !4, i64 68}
!145 = !{!129, !4, i64 56}
!146 = !{!22, !4, i64 44}
!147 = !{!22, !4, i64 32}
!148 = distinct !{!148, !50}
!149 = distinct !{!149, !50}
!150 = distinct !{!150, !50}
!151 = distinct !{!151, !50}
end_hunk_3
