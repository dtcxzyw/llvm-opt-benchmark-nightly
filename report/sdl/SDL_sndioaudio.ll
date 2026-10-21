Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_sndioaudio?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
begin_hunk_0_@SNDIO_OpenDevice:bb.a
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not75 = icmp eq ptr %i.l, null
  br i1 %.not75, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.17) #6
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @SNDIO_sio_nfds, align 8
  %i.o = tail call i32 %i.n(ptr noundef nonnull %i.l) #6
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.q) #6
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.r, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %.not76 = icmp eq ptr %i.w, null
  br i1 %.not76, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.x = load ptr, ptr @SNDIO_sio_initpar, align 8
  call void %i.x(ptr noundef nonnull %1) #6
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load <2 x i32>, ptr %i.z, align 4
  store <2 x i32> %i.ab, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = shl i32 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = load i32, ptr %i.y, align 8
  %i.ai = call ptr @SDL_ClosestAudioFormats(i32 noundef %i.ah) #6 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %.not7789 = icmp eq i32 %i.aj, 0
  br i1 %.not7789, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge
  %i.ao = phi i32 [ %i.aj, %.lr.ph ], [ %i.bp, %.backedge ] ; 4 uses
  %.pn = phi ptr [ %i.ai, %.lr.ph ], [ %i.ap, %.backedge ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.aq = and i32 %i.ao, 256
  %.not78 = icmp eq i32 %i.aq, 0
  br i1 %.not78, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.ar = lshr i32 %i.ao, 12
  %.lobit = and i32 %i.ar, 1
  %i.as = xor i32 %.lobit, 1
  store i32 %i.as, ptr %i.ak, align 4
  %i.at = lshr i32 %i.ao, 15
  %.lobit81 = and i32 %i.at, 1
  store i32 %.lobit81, ptr %i.al, align 4
  %i.au = and i32 %i.ao, 255
  store i32 %i.au, ptr %1, align 4
  %i.av = load ptr, ptr @SNDIO_sio_setpar, align 8
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i32 %i.av(ptr noundef %i.ax, ptr noundef nonnull %1) #6
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr @SNDIO_sio_getpar, align 8
  %i.bb = load ptr, ptr %i.b, align 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call i32 %i.ba(ptr noundef %i.bc, ptr noundef nonnull %1) #6
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %i.am, align 4            ; 5 uses
  %i.bg = load i32, ptr %1, align 4               ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 9
  %i.bi = icmp ult i32 %i.bg, 17
  %i.bj = select i1 %i.bi, i32 2, i32 4
  %i.bk = select i1 %i.bh, i32 1, i32 %i.bj
  %.not82 = icmp eq i32 %i.bf, %i.bk
  br i1 %.not82, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  %i.bl = shl nuw nsw i32 %i.bf, 3
  %i.bm = icmp eq i32 %i.bg, %i.bl
  %i.bn = load i32, ptr %i.an, align 4
  %i.bo = icmp ne i32 %i.bn, 0
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond, label %bb.k, label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.j, %bb.g, %bb.i
  %i.bp = load i32, ptr %i.ap, align 4            ; 2 uses
  %.not77 = icmp eq i32 %i.bp, 0
  br i1 %.not77, label %.sink.split, label %bb.f, !llvm.loop !6

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp eq i32 %i.bf, 4
  %i.br = load i32, ptr %i.al, align 4
  %i.bs = icmp ne i32 %i.br, 0                    ; 4 uses
  %or.cond5 = select i1 %i.bq, i1 %i.bs, i1 false ; 2 uses
  %i.bt = load i32, ptr %i.ak, align 4
  %i.bu = icmp ne i32 %i.bt, 0                    ; 4 uses
  %or.cond8 = select i1 %or.cond5, i1 %i.bu, i1 false
  br i1 %or.cond8, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %or.cond11.not = xor i1 %or.cond5, true
  %or.cond14 = select i1 %or.cond11.not, i1 true, i1 %i.bu
  br i1 %or.cond14, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp eq i32 %i.bf, 2
  %or.cond17 = select i1 %i.bv, i1 %i.bs, i1 false ; 2 uses
  %or.cond20 = select i1 %or.cond17, i1 %i.bu, i1 false
  br i1 %or.cond20, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %or.cond23.not = xor i1 %or.cond17, true
  %or.cond26 = select i1 %or.cond23.not, i1 true, i1 %i.bu
  br i1 %or.cond26, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp eq i32 %i.bf, 1                    ; 2 uses
  %or.cond29 = select i1 %i.bw, i1 %i.bs, i1 false
  br i1 %or.cond29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not90 = xor i1 %i.bw, true
  %or.cond32 = select i1 %.not90, i1 true, i1 %i.bs
  br i1 %or.cond32, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink = phi i32 [ 32800, %bb.k ], [ 32784, %bb.m ], [ 32776, %bb.o ], [ 36880, %bb.n ], [ 36896, %bb.l ], [ 8, %bb.p ]
  store i32 %.sink, ptr %i.y, align 8
  %i.bx = load <2 x i32>, ptr %i.aa, align 4
  store <2 x i32> %i.bx, ptr %i.z, align 4
  %i.by = load i32, ptr %i.ae, align 4
  store i32 %i.by, ptr %i.ac, align 4
  call void @SDL_UpdatedAudioDeviceFormat(ptr noundef nonnull %0) #6
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.cb) #6
  %i.cd = load ptr, ptr %i.b, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cc, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.b, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not83 = icmp eq ptr %i.ch, null
  br i1 %.not83, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = load i32, ptr %i.bz, align 4
  %i.cm = sext i32 %i.cl to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 %i.ck, i64 %i.cm, i1 false)
  %i.cn = load ptr, ptr @SNDIO_sio_start, align 8
  %i.co = load ptr, ptr %i.b, align 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call i32 %i.cn(ptr noundef %i.cp) #6
  %.not84 = icmp eq i32 %i.cq, 0
  br i1 %.not84, label %.sink.split, label %bb.s

.sink.split:                                      ; preds = %.backedge, %bb.h, %bb.r, %bb.p, %bb.e
  %.str.21.sink = phi ptr [ @.str.20, %bb.p ], [ @.str.19, %bb.e ], [ @.str.21, %bb.r ], [ @.str.18, %bb.h ], [ @.str.19, %.backedge ]
  %i.cr = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.21.sink) #6
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r, %bb.q
  %.070 = phi i1 [ true, %bb.r ], [ false, %bb.q ], [ %i.cr, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %bb.a, %bb.s, %bb.c
  %.1 = phi i1 [ %.070, %bb.s ], [ false, %bb.a ], [ %i.m, %bb.c ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SNDIO_WaitDevice(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load i8, ptr %i.a, align 4, !range !3, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %1 = select i1 %i.c, i32 1, i32 4               ; 2 uses
  br i1 %i.c, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.a, %bb.f
  %i.f = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.d) #6
  %.not.us = icmp eq i32 %i.f, 0
  br i1 %.not.us, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split.us
  %i.g = load ptr, ptr @SNDIO_sio_eof, align 8
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.g(ptr noundef %i.i) #6
  %.not20.us = icmp eq i32 %i.j, 0
  br i1 %.not20.us, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @SNDIO_sio_pollfd, align 8
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.k(ptr noundef %i.m, ptr noundef %i.o, i32 noundef %1) #6 ; 2 uses
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.p to i64
  %i.v = tail call i32 @poll(ptr noundef %i.t, i64 noundef %i.u, i32 noundef 10) #6
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr @SNDIO_sio_revents, align 8
  %i.y = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 %i.x(ptr noundef %i.z, ptr noundef %i.ab) #6 ; 2 uses
  %i.ad = and i32 %i.ac, 4
  %.not22.us = icmp eq i32 %i.ad, 0
  br i1 %.not22.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = and i32 %i.ac, 16
  %.not23.us = icmp eq i32 %i.ae, 0
  br i1 %.not23.us, label %.split.us, label %.thread

.split:                                           ; preds = %bb.a, %bb.k
  %i.af = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.d) #6
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %.split
  %i.ag = load ptr, ptr @SNDIO_sio_eof, align 8
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i32 %i.ag(ptr noundef %i.ai) #6
  %.not20 = icmp eq i32 %i.aj, 0
  br i1 %.not20, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr @SNDIO_sio_pollfd, align 8
  %i.al = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i32 %i.ak(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef %1) #6 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.e, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = zext nneg i32 %i.ap to i64
  %i.av = tail call i32 @poll(ptr noundef %i.at, i64 noundef %i.au, i32 noundef 10) #6
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr @SNDIO_sio_revents, align 8
  %i.ay = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call i32 %i.ax(ptr noundef %i.az, ptr noundef %i.bb) #6 ; 2 uses
  %.not21 = trunc i32 %i.bc to i1
  br i1 %.not21, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = and i32 %i.bc, 16
  %.not23 = icmp eq i32 %i.bd, 0
  br i1 %.not23, label %.split, label %.thread

.thread:                                          ; preds = %.split.us, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %.split, %bb.h, %bb.i, %bb.k, %bb.j
  %.us-phi = phi i1 [ false, %bb.g ], [ true, %.split ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ true, %bb.e ], [ false, %bb.b ], [ true, %.split.us ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.us-phi
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SNDIO_PlayDevice(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @SNDIO_sio_write, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = tail call i64 %i.a(ptr noundef %i.d, ptr noundef %1, i64 noundef %i.e) #6
  %.not = icmp eq i64 %i.f, %i.e
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @SNDIO_GetDeviceBuf(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal void @SNDIO_CloseDevice(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @SNDIO_sio_stop, align 8
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.f = load ptr, ptr @SNDIO_sio_close, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.f(ptr noundef %i.h) #6
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.k) #6
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.n) #6
  %i.o = load ptr, ptr %i.a, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.o) #6
  store ptr null, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @SNDIO_RecordDevice(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @SNDIO_sio_read, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %2 to i64
  %i.f = tail call i64 %i.a(ptr noundef %i.d, ptr noundef %1, i64 noundef %i.e) #6 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @SNDIO_sio_eof, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.h(ptr noundef %i.j) #6
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = trunc i64 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @SNDIO_FlushRecording(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.b) #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @SNDIO_sio_read, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i64 %i.e(ptr noundef %i.g, ptr noundef nonnull %i.a, i64 noundef 512) #6
  %.not2 = icmp eq i64 %i.h, 0
  br i1 %.not2, label %.critedge, label %bb.b, !llvm.loop !7

.critedge:                                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SNDIO_Deinitialize() #0 {
bb.a:
  %i.a = load ptr, ptr @sndio_handle, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %UnloadSNDIOLibrary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SDL_UnloadObject_REAL(ptr noundef nonnull %i.a) #6
  store ptr null, ptr @sndio_handle, align 8
  br label %UnloadSNDIOLibrary.exit

UnloadSNDIOLibrary.exit:                          ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SNDIO_DetectDevices(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = tail call ptr @SDL_AddAudioDevice(i1 noundef zeroext false, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  store ptr %i.a, ptr %0, align 8
  %i.b = tail call ptr @SDL_AddAudioDevice(i1 noundef zeroext true, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef nonnull inttoptr (i64 2 to ptr)) #6
  store ptr %i.b, ptr %1, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @SDL_LoadObject_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @SDL_LoadFunction_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_UnloadObject_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #3

declare ptr @SDL_ClosestAudioFormats(i32 noundef) local_unnamed_addr #3

declare void @SDL_UpdatedAudioDeviceFormat(ptr noundef) local_unnamed_addr #3
end_hunk_0
