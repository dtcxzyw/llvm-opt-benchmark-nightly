Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_flydigi?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
begin_hunk_0_@HIDAPI_DriverFlydigi_InitDevice:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = icmp eq i16 %i.bn, 9217
  br i1 %i.bo, label %bb.q, label %.critedge.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.SDL_HIDAPI_Flydigi_SendInfoRequest.cmd, i64 6, i1 false)
  store i8 0, ptr %i.c, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i32 @SDL_hid_write_REAL(ptr noundef %i.bq, ptr noundef nonnull %i.c, i64 noundef 6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.p, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call i32 @SDL_hid_write_REAL(ptr noundef %i.bt, ptr noundef nonnull %i.d, i64 noundef 6) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i.i

HIDAPI_DriverFlydigi_WritePacket.exit.i.i:        ; preds = %.critedge.i.i.i, %bb.q
  %.0.i.i.i = phi i32 [ %i.br, %bb.q ], [ %i.bu, %.critedge.i.i.i ]
  %i.bv = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.bv, label %SDL_HIDAPI_Flydigi_SendInfoRequest.exit.i, label %SDL_HIDAPI_Flydigi_SendInfoRequest.exit.thread.i

SDL_HIDAPI_Flydigi_SendInfoRequest.exit.thread.i: ; preds = %HIDAPI_DriverFlydigi_WritePacket.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.r

SDL_HIDAPI_Flydigi_SendInfoRequest.exit.i:        ; preds = %HIDAPI_DriverFlydigi_WritePacket.exit.i.i
  %i.bw = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.26) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br i1 %i.bw, label %bb.r, label %HIDAPI_DriverFlydigi_InitControllerV2.exit

bb.r:                                             ; preds = %SDL_HIDAPI_Flydigi_SendInfoRequest.exit.i, %SDL_HIDAPI_Flydigi_SendInfoRequest.exit.thread.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %bb.r
  %.02130.i.i = phi i32 [ 0, %bb.r ], [ %i.co, %bb.x ]
  call void @SDL_Delay_REAL(i32 noundef 1) #7
  %i.cb = load ptr, ptr %i.by, align 8
  %i.cc = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.cb, ptr noundef nonnull %i.e, i64 noundef 64, i32 noundef 0) #7 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %cond.i.i = icmp eq i32 %i.cc, 32
  br i1 %cond.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ce = load i8, ptr %i.bz, align 1             ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 90
  %i.cg = load i8, ptr %i.bx, align 2             ; 2 uses
  %i.ch = icmp eq i8 %i.cg, -91
  %or.cond.i10 = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %or.cond.i10, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %i.e, ptr noundef nonnull align 1 dereferenceable(31) %i.bz, i64 31, i1 false)
  store i8 0, ptr %i.ca, align 1
  %.pre.i = load i8, ptr %i.bz, align 1
  %.pre25.i = load i8, ptr %i.bx, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ci = phi i8 [ %.pre25.i, %bb.v ], [ %i.cg, %bb.u ]
  %i.cj = phi i8 [ %.pre.i, %bb.v ], [ %i.ce, %bb.u ]
  %i.ck = load i8, ptr %i.e, align 16
  %i.cl = icmp eq i8 %i.ck, 90
  %i.cm = icmp eq i8 %i.cj, -91
  %or.cond22.i = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = icmp eq i8 %i.ci, 1
  %or.cond24.i = select i1 %or.cond22.i, i1 %i.cn, i1 false
  br i1 %or.cond24.i, label %GetReply.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.co = add nuw nsw i32 %.02130.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.co, 100
  br i1 %exitcond.not.i.i, label %bb.y, label %bb.s, !llvm.loop !8

bb.y:                                             ; preds = %bb.x, %bb.s
  %i.cp = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.24) #7
  br label %HIDAPI_DriverFlydigi_InitControllerV2.exit

GetReply.exit.i:                                  ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cr = load i8, ptr %i.cq, align 16
  %i.cs = zext i8 %i.cr to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i16
  %i.cw = shl nuw i16 %i.cv, 8
  %i.cx = or disjoint i16 %i.cw, %i.cs            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2            ; 2 uses
  %switch.selectcmp.i = icmp eq i16 %i.da, 9217
  %switch.select.i = select i1 %switch.selectcmp.i, i32 28993, i32 0
  %switch.selectcmp13.i = icmp eq i16 %i.da, 9473
  %switch.select14.i = select i1 %switch.selectcmp13.i, i32 28721, i32 %switch.select.i
  %i.db = zext i16 %i.cx to i32
  %i.dc = icmp samesign ugt i32 %switch.select14.i, %i.db
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %GetReply.exit.i
  %i.dd = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #7
  br label %HIDAPI_DriverFlydigi_InitControllerV2.exit

bb.aa:                                            ; preds = %GetReply.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.df = load i8, ptr %i.de, align 2
  switch i8 %i.df, label %bb.ac [
    i8 1, label %.sink.split.i11
    i8 2, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %.sink.split.i11

.sink.split.i11:                                  ; preds = %bb.ab, %bb.aa
  %.sink.i12 = phi i8 [ 1, %bb.ab ], [ 0, %bb.aa ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  store i8 %.sink.i12, ptr %i.dg, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i11, %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.di, ptr %i.dj, align 8
  call fastcc void @HIDAPI_DriverFlydigi_UpdateDeviceIdentity(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 279271939, ptr %i.b, align 4
  %i.dk = load i16, ptr %i.k, align 8
  %i.dl = icmp eq i16 %i.dk, 14295
  br i1 %i.dl, label %bb.ad, label %.critedge.i.i15.i

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i16, ptr %i.cz, align 2
  %i.dn = icmp eq i16 %i.dm, 9217
  br i1 %i.dn, label %bb.ae, label %.critedge.i.i15.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 279271936, ptr %i.a, align 16
  %i.do = load ptr, ptr %i.by, align 8
  %i.dp = call i32 @SDL_hid_write_REAL(ptr noundef %i.do, ptr noundef nonnull %i.a, i64 noundef 4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i16.i

.critedge.i.i15.i:                                ; preds = %bb.ad, %bb.ac
  %i.dq = load ptr, ptr %i.by, align 8
  %i.dr = call i32 @SDL_hid_write_REAL(ptr noundef %i.dq, ptr noundef nonnull %i.b, i64 noundef 4) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i16.i

HIDAPI_DriverFlydigi_WritePacket.exit.i16.i:      ; preds = %.critedge.i.i15.i, %bb.ae
  %.0.i.i17.i = phi i32 [ %i.dp, %bb.ae ], [ %i.dr, %.critedge.i.i15.i ]
  %i.ds = icmp slt i32 %.0.i.i17.i, 0
  br i1 %i.ds, label %bb.af, label %SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i

bb.af:                                            ; preds = %HIDAPI_DriverFlydigi_WritePacket.exit.i16.i
  %i.dt = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.27) #7 ; 0 uses
  br label %SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i

SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i:      ; preds = %bb.af, %HIDAPI_DriverFlydigi_WritePacket.exit.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %HIDAPI_DriverFlydigi_InitControllerV2.exit

HIDAPI_DriverFlydigi_InitControllerV2.exit:       ; preds = %SDL_HIDAPI_Flydigi_SendInfoRequest.exit.i, %bb.y, %bb.z, %SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i
  %.1.i = phi i1 [ false, %SDL_HIDAPI_Flydigi_SendInfoRequest.exit.i ], [ %i.cp, %bb.y ], [ %i.dd, %bb.z ], [ true, %SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %HIDAPI_DriverFlydigi_InitControllerV1.exit

HIDAPI_DriverFlydigi_InitControllerV1.exit:       ; preds = %bb.f, %._crit_edge.i, %bb.a, %HIDAPI_DriverFlydigi_InitControllerV2.exit
  %.0 = phi i1 [ false, %bb.a ], [ %.1.i, %HIDAPI_DriverFlydigi_InitControllerV2.exit ], [ true, %._crit_edge.i ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @HIDAPI_DriverFlydigi_GetDevicePlayerIndex(ptr nofree readnone captures(none) %0, i32 %1) #1 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @HIDAPI_DriverFlydigi_SetDevicePlayerIndex(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverFlydigi_UpdateDevice(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [3 x float], align 4              ; 8 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [6 x i8], align 1                 ; 4 uses
  %i.g = alloca [64 x i8], align 16               ; 5 uses
  %i.h = alloca [32 x i8], align 16               ; 7 uses
  %i.i = alloca [64 x i8], align 16               ; 38 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8              ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.l = tail call i64 @SDL_GetTicks_REAL() #7    ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call ptr @SDL_GetJoystickFromID_REAL(i32 noundef %i.s) #7 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = icmp eq i16 %i.v, 14295
  %i.x = icmp ne ptr %i.t, null                   ; 2 uses
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not = icmp ne i64 %i.z, 0
  %.not35 = icmp ult i64 %i.l, %i.z
  %or.cond37 = select i1 %.not, i1 %.not35, i1 false
  br i1 %or.cond37, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store <8 x i8> <i8 3, i8 90, i8 -91, i8 28, i8 23, i8 1, i8 83, i8 68>, ptr %i.h, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 76, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ab, i8 0, i64 23, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = icmp eq i16 %i.ad, 9217
  br i1 %i.ae, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(32) %i.h, i64 32, i1 false)
  store i8 0, ptr %i.g, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i32 @SDL_hid_write_REAL(ptr noundef %i.ag, ptr noundef nonnull %i.g, i64 noundef 32) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i

.critedge.i.i:                                    ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 @SDL_hid_write_REAL(ptr noundef %i.aj, ptr noundef nonnull %i.h, i64 noundef 32) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i

HIDAPI_DriverFlydigi_WritePacket.exit.i:          ; preds = %.critedge.i.i, %bb.e
  %.0.i.i = phi i32 [ %i.ah, %bb.e ], [ %i.ak, %.critedge.i.i ]
  %i.al = icmp slt i32 %.0.i.i, 0
  br i1 %i.al, label %bb.f, label %SDL_HIDAPI_Flydigi_SendAcquireRequest.exit

bb.f:                                             ; preds = %HIDAPI_DriverFlydigi_WritePacket.exit.i
  %i.am = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.28) #7 ; 0 uses
  br label %SDL_HIDAPI_Flydigi_SendAcquireRequest.exit

SDL_HIDAPI_Flydigi_SendAcquireRequest.exit:       ; preds = %HIDAPI_DriverFlydigi_WritePacket.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.f, ptr noundef nonnull align 1 dereferenceable(6) @__const.SDL_HIDAPI_Flydigi_SendInfoRequest.cmd, i64 6, i1 false)
  %i.an = load i16, ptr %i.u, align 8
  %i.ao = icmp eq i16 %i.an, 14295
  br i1 %i.ao, label %bb.g, label %.critedge.i.i38

bb.g:                                             ; preds = %SDL_HIDAPI_Flydigi_SendAcquireRequest.exit
  %i.ap = load i16, ptr %i.ac, align 2
  %i.aq = icmp eq i16 %i.ap, 9217
  br i1 %i.aq, label %bb.h, label %.critedge.i.i38

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @__const.SDL_HIDAPI_Flydigi_SendInfoRequest.cmd, i64 6, i1 false)
  store i8 0, ptr %i.e, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i32 @SDL_hid_write_REAL(ptr noundef %i.as, ptr noundef nonnull %i.e, i64 noundef 6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i39

.critedge.i.i38:                                  ; preds = %bb.g, %SDL_HIDAPI_Flydigi_SendAcquireRequest.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i32 @SDL_hid_write_REAL(ptr noundef %i.av, ptr noundef nonnull %i.f, i64 noundef 6) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i39

HIDAPI_DriverFlydigi_WritePacket.exit.i39:        ; preds = %.critedge.i.i38, %bb.h
  %.0.i.i40 = phi i32 [ %i.at, %bb.h ], [ %i.aw, %.critedge.i.i38 ]
  %i.ax = icmp slt i32 %.0.i.i40, 0
  br i1 %i.ax, label %bb.i, label %SDL_HIDAPI_Flydigi_SendInfoRequest.exit

bb.i:                                             ; preds = %HIDAPI_DriverFlydigi_WritePacket.exit.i39
  %i.ay = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.26) #7 ; 0 uses
  br label %SDL_HIDAPI_Flydigi_SendInfoRequest.exit

SDL_HIDAPI_Flydigi_SendInfoRequest.exit:          ; preds = %HIDAPI_DriverFlydigi_WritePacket.exit.i39, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %i.az = add i64 %i.l, 30000
  store i64 %i.az, ptr %i.y, align 8
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.c, %SDL_HIDAPI_Flydigi_SendInfoRequest.exit, %bb.b
  %i.ba = phi i1 [ false, %.thread ], [ true, %bb.c ], [ true, %SDL_HIDAPI_Flydigi_SendInfoRequest.exit ], [ %i.x, %bb.b ]
  %i.bb = phi ptr [ %i.p, %.thread ], [ %i.u, %bb.c ], [ %i.u, %SDL_HIDAPI_Flydigi_SendInfoRequest.exit ], [ %i.u, %bb.b ] ; 2 uses
  %.0121 = phi ptr [ null, %.thread ], [ %i.t, %bb.c ], [ %i.t, %SDL_HIDAPI_Flydigi_SendInfoRequest.exit ], [ %i.t, %bb.b ] ; 57 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.bd, ptr noundef nonnull %i.i, i64 noundef 64, i32 noundef 0) #7 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %.sroa.gep.sroa.gep116 = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %.not32.i = icmp eq ptr %.0121, null            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 75
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 77
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 11 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 78
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 15 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 73
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 9 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 74
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 10 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 71
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 7 ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 17 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 19 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 21 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 22 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 23 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 26 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 18 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 29
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 11 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 15 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 13 ; 3 uses
  %.sroa.gep123 = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 2 uses
  %.sroa.gep125 = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %.sroa.gep129 = getelementptr inbounds nuw i8, ptr %i.i, i64 14 ; 2 uses
  %.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.gep135 = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %.sroa.gep136 = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %.sroa.gep145 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.gep160 = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %.sroa.gep161 = getelementptr inbounds nuw i8, ptr %i.i, i64 6 ; 2 uses
  %.sroa.gep162 = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %.sroa.gep167 = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %HIDAPI_DriverFlydigi_HandlePacketV1.exit
  %i.ct = phi i32 [ %i.be, %.lr.ph ], [ %i.oy, %HIDAPI_DriverFlydigi_HandlePacketV1.exit ] ; 2 uses
  store i64 %i.l, ptr %i.bg, align 8
  %i.cu = load i16, ptr %i.bb, align 8
  %i.cv = icmp eq i16 %i.cu, 1204
  %i.cw = load i8, ptr %i.i, align 16             ; 2 uses
  br i1 %i.cv, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp eq i8 %i.cw, 4
  br i1 %.not.i, label %bb.m, label %HIDAPI_DriverFlydigi_HandlePacketV1.exit

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %.sroa.gep, align 1
  %i.cy = icmp eq i8 %i.cx, -2
  %or.cond.i = and i1 %i.ba, %i.cy
  br i1 %or.cond.i, label %bb.n, label %HIDAPI_DriverFlydigi_HandlePacketV1.exit

bb.n:                                             ; preds = %bb.m
  %i.cz = call i64 @SDL_GetTicksNS_REAL() #7      ; 26 uses
  %i.da = load i8, ptr %i.bw, align 1
  %i.db = load i8, ptr %i.bx, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.da, %i.db
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = and i8 %i.db, 15
  %switch.tableidx = add nsw i8 %i.dc, -1         ; 2 uses
  %i.dd = icmp ult i8 %switch.tableidx, 12
  br i1 %i.dd, label %switch.lookup, label %bb.p

switch.lookup:                                    ; preds = %bb.o
  %i.de = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.HIDAPI_DriverFlydigi_UpdateDevice.4, i64 %i.de
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %switch.lookup
  %.0.i.i42 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.o ]
  call void @SDL_SendJoystickHat(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 0, i8 noundef zeroext %.0.i.i42) #7
  %i.df = load i8, ptr %i.bx, align 1
  %i.dg = and i8 %i.df, 16
  %i.dh = icmp ne i8 %i.dg, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 0, i1 noundef zeroext %i.dh) #7
  %i.di = load i8, ptr %i.bx, align 1
  %i.dj = and i8 %i.di, 32
  %i.dk = icmp ne i8 %i.dj, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 1, i1 noundef zeroext %i.dk) #7
  %i.dl = load i8, ptr %i.bx, align 1
  %i.dm = and i8 %i.dl, 64
  %i.dn = icmp ne i8 %i.dm, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 4, i1 noundef zeroext %i.dn) #7
  %i.do = load i8, ptr %i.bx, align 1
  %i.dp = icmp slt i8 %i.do, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 2, i1 noundef zeroext %i.dp) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.dq = load i8, ptr %i.by, align 2
  %i.dr = load i8, ptr %i.bz, align 2             ; 2 uses
  %.not131.i.i = icmp eq i8 %i.dq, %i.dr
  br i1 %.not131.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = trunc i8 %i.dr to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 3, i1 noundef zeroext %i.ds) #7
  %i.dt = load i8, ptr %i.bz, align 2
  %i.du = and i8 %i.dt, 2
  %i.dv = icmp ne i8 %i.du, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 6, i1 noundef zeroext %i.dv) #7
  %i.dw = load i8, ptr %i.bz, align 2
  %i.dx = and i8 %i.dw, 4
  %i.dy = icmp ne i8 %i.dx, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 9, i1 noundef zeroext %i.dy) #7
  %i.dz = load i8, ptr %i.bz, align 2
  %i.ea = and i8 %i.dz, 8
  %i.eb = icmp ne i8 %i.ea, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 10, i1 noundef zeroext %i.eb) #7
  %i.ec = load i8, ptr %i.bz, align 2
  %i.ed = and i8 %i.ec, 64
  %i.ee = icmp ne i8 %i.ed, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 7, i1 noundef zeroext %i.ee) #7
  %i.ef = load i8, ptr %i.bz, align 2
  %i.eg = icmp slt i8 %i.ef, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 8, i1 noundef zeroext %i.eg) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eh = load i8, ptr %i.ca, align 1
  %i.ei = load i8, ptr %i.cb, align 1             ; 2 uses
  %.not132.i.i = icmp eq i8 %i.eh, %i.ei
  br i1 %.not132.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = and i8 %i.ei, 4
  %i.ek = icmp ne i8 %i.ej, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 11, i1 noundef zeroext %i.ek) #7
  %i.el = load i8, ptr %i.cb, align 1
  %i.em = and i8 %i.el, 8
  %i.en = icmp ne i8 %i.em, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 12, i1 noundef zeroext %i.en) #7
  %i.eo = load i8, ptr %i.cb, align 1
  %i.ep = and i8 %i.eo, 16
  %i.eq = icmp ne i8 %i.ep, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 13, i1 noundef zeroext %i.eq) #7
  %i.er = load i8, ptr %i.cb, align 1
  %i.es = and i8 %i.er, 32
  %i.et = icmp ne i8 %i.es, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 14, i1 noundef zeroext %i.et) #7
  %i.eu = load i8, ptr %i.bk, align 2, !range !3, !noundef !4
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ew = load i8, ptr %i.cb, align 1
  %i.ex = trunc i8 %i.ew to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 15, i1 noundef zeroext %i.ex) #7
  %i.ey = load i8, ptr %i.cb, align 1
  %i.ez = and i8 %i.ey, 2
  %i.fa = icmp ne i8 %i.ez, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 16, i1 noundef zeroext %i.fa) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.fb = load i8, ptr %i.cc, align 8
  %i.fc = load i8, ptr %i.cd, align 8             ; 2 uses
  %.not133.i.i = icmp eq i8 %i.fb, %i.fc
  br i1 %.not133.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = and i8 %i.fc, 8
  %i.fe = icmp ne i8 %i.fd, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 5, i1 noundef zeroext %i.fe) #7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ff = load i8, ptr %i.ce, align 1             ; 2 uses
  %i.fg = icmp eq i8 %i.ff, 127
  br i1 %i.fg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fh = zext i8 %i.ff to i32
  %i.fi = add nsw i32 %i.fh, -127
  %i.fj = sitofp i32 %i.fi to float
  %i.fk = call float @HIDAPI_RemapVal(float noundef %i.fj, float noundef -1.270000e+02, float noundef 1.280000e+02, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.fl = fptosi float %i.fk to i16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fm = phi i16 [ %i.fl, %bb.y ], [ 0, %bb.x ]
  call void @SDL_SendJoystickAxis(i64 noundef %i.cz, ptr noundef nonnull %.0121, i8 noundef zeroext 0, i16 noundef signext %i.fm) #7
  %i.fn = load i8, ptr %i.cf, align 1             ; 2 uses
  %i.fo = icmp eq i8 %i.fn, 127
  br i1 %i.fo, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fp = zext i8 %i.fn to i32
  %i.fq = add nsw i32 %i.fp, -127
  %i.fr = sitofp i32 %i.fq to float
  %i.fs = call float @HIDAPI_RemapVal(float noundef %i.fr, float noundef -1.270000e+02, float noundef 1.280000e+02, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.ft = fptosi float %i.fs to i16
end_hunk_0
begin_hunk_1_@HIDAPI_DriverFlydigi_UpdateDevice:bb.a
  %i.ko = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel100.v.sroa.sel, align 1
  %i.kp = and i8 %i.ko, 16
  %i.kq = icmp ne i8 %i.kp, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 0, i1 noundef zeroext %i.kq) #7
  %i.kr = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel100.v.sroa.sel, align 1
  %i.ks = and i8 %i.kr, 32
  %i.kt = icmp ne i8 %i.ks, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 1, i1 noundef zeroext %i.kt) #7
  %i.ku = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel100.v.sroa.sel, align 1
  %i.kv = and i8 %i.ku, 64
  %i.kw = icmp ne i8 %i.kv, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 4, i1 noundef zeroext %i.kw) #7
  %i.kx = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel100.v.sroa.sel, align 1
  %i.ky = icmp slt i8 %i.kx, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 2, i1 noundef zeroext %i.ky) #7
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %i.kz = load i8, ptr %i.bi, align 4
  %.026.idx.i.sroa.sel.sroa.sel97.v.sroa.sel = select i1 %.not.i43, ptr %i.cs, ptr %.sroa.gep125 ; 6 uses
  %i.la = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel97.v.sroa.sel, align 1 ; 2 uses
  %.not156.i = icmp eq i8 %i.kz, %i.la
  br i1 %.not156.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lb = trunc i8 %i.la to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 3, i1 noundef zeroext %i.lb) #7
  %i.lc = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel97.v.sroa.sel, align 1
  %i.ld = and i8 %i.lc, 2
  %i.le = icmp ne i8 %i.ld, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 6, i1 noundef zeroext %i.le) #7
  %i.lf = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel97.v.sroa.sel, align 1
  %i.lg = and i8 %i.lf, 4
  %i.lh = icmp ne i8 %i.lg, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 9, i1 noundef zeroext %i.lh) #7
  %i.li = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel97.v.sroa.sel, align 1
  %i.lj = and i8 %i.li, 8
  %i.lk = icmp ne i8 %i.lj, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 10, i1 noundef zeroext %i.lk) #7
  %i.ll = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel97.v.sroa.sel, align 1
  %i.lm = and i8 %i.ll, 64
  %i.ln = icmp ne i8 %i.lm, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 7, i1 noundef zeroext %i.ln) #7
  %i.lo = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel97.v.sroa.sel, align 1
  %i.lp = icmp slt i8 %i.lo, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 8, i1 noundef zeroext %i.lp) #7
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.lq = load i8, ptr %i.bj, align 1
  %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel = select i1 %.not.i43, ptr %.sroa.gep129, ptr %i.cs ; 8 uses
  %i.lr = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel, align 1 ; 2 uses
  %.not157.i = icmp eq i8 %i.lq, %i.lr
  br i1 %.not157.i, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ls = and i8 %i.lr, 4
  %i.lt = icmp ne i8 %i.ls, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 11, i1 noundef zeroext %i.lt) #7
  %i.lu = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel, align 1
  %i.lv = and i8 %i.lu, 8
  %i.lw = icmp ne i8 %i.lv, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 12, i1 noundef zeroext %i.lw) #7
  %i.lx = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel, align 1
  %i.ly = and i8 %i.lx, 16
  %i.lz = icmp ne i8 %i.ly, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 13, i1 noundef zeroext %i.lz) #7
  %i.ma = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel, align 1
  %i.mb = and i8 %i.ma, 32
  %i.mc = icmp ne i8 %i.mb, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 14, i1 noundef zeroext %i.mc) #7
  %i.md = load i8, ptr %i.bk, align 2, !range !3, !noundef !4
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.mf = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel, align 1
  %i.mg = trunc i8 %i.mf to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 15, i1 noundef zeroext %i.mg) #7
  %i.mh = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel, align 1
  %i.mi = and i8 %i.mh, 2
  %i.mj = icmp ne i8 %i.mi, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 16, i1 noundef zeroext %i.mj) #7
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0.i47 = phi i8 [ 17, %bb.bp ], [ 15, %bb.bo ] ; 4 uses
  %i.mk = load i8, ptr %i.bl, align 1, !range !3, !noundef !4
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.mm = add nuw nsw i8 %.0.i47, 1
  %i.mn = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel, align 1
  %i.mo = and i8 %i.mn, 64
  %i.mp = icmp ne i8 %i.mo, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext %.0.i47, i1 noundef zeroext %i.mp) #7
  %i.mq = add nuw nsw i8 %.0.i47, 2
  %i.mr = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel94.v.sroa.sel, align 1
  %i.ms = icmp slt i8 %i.mr, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext %i.mm, i1 noundef zeroext %i.ms) #7
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bn
  %i.mt = load i8, ptr %i.bk, align 2, !range !3, !noundef !4
  %i.mu = trunc nuw i8 %i.mt to i1
  %spec.select.i = select i1 %i.mu, i8 17, i8 15
  %i.mv = load i8, ptr %i.bl, align 1, !range !3, !noundef !4
  %i.mw = shl nuw nsw i8 %i.mv, 1
  %spec.select164.i = add nuw nsw i8 %spec.select.i, %i.mw
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.2.i = phi i8 [ %i.mq, %bb.br ], [ %.0.i47, %bb.bq ], [ %spec.select164.i, %bb.bs ]
  %i.mx = load i8, ptr %i.bm, align 2
  %.026.idx.i.sroa.sel.sroa.sel91.v.sroa.sel = select i1 %.not.i43, ptr %i.cr, ptr %.sroa.gep129 ; 2 uses
  %i.my = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel91.v.sroa.sel, align 1 ; 2 uses
  %.not158.i = icmp eq i8 %i.mx, %i.my
  br i1 %.not158.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mz = and i8 %i.my, 8
  %i.na = icmp ne i8 %i.mz, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 5, i1 noundef zeroext %i.na) #7
  %i.nb = load i8, ptr %i.bn, align 4, !range !3, !noundef !4
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.nd = load i8, ptr %.026.idx.i.sroa.sel.sroa.sel91.v.sroa.sel, align 1
  %i.ne = trunc i8 %i.nd to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext %.2.i, i1 noundef zeroext %i.ne) #7
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.sroa.gep133.val = load i16, ptr %.sroa.gep133, align 4
  %.sroa.gep123.val186 = load i16, ptr %.sroa.gep123, align 1
  %i.nf = select i1 %.not.i43, i16 %.sroa.gep133.val, i16 %.sroa.gep123.val186
  call void @SDL_SendJoystickAxis(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 0, i16 noundef signext %i.nf) #7
  %.sroa.gep135.val = load i8, ptr %.sroa.gep135, align 2 ; 2 uses
  %.sroa.gep136.val = load i8, ptr %.sroa.gep136, align 1
  %i.ng = select i1 %.not.i43, i8 %.sroa.gep135.val, i8 %.sroa.gep136.val
  %i.nh = zext i8 %i.ng to i16
  %.val = load i8, ptr %i.cb, align 1
  %i.ni = select i1 %.not.i43, i8 %.val, i8 %.sroa.gep135.val
  %.neg160.i = sub i8 0, %i.ni
  %.neg160.z.i = zext i8 %.neg160.i to i16
  %.neg.i = shl nuw i16 %.neg160.z.i, 8
  %.neg159.i = sub i16 %.neg.i, %i.nh             ; 2 uses
  %i.nj = icmp eq i16 %.neg159.i, -32768
  %spec.store.select.i = select i1 %i.nj, i16 32767, i16 %.neg159.i
  call void @SDL_SendJoystickAxis(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 1, i16 noundef signext %spec.store.select.i) #7
  %.val188 = load i16, ptr %i.cd, align 8
  %.val189 = load i16, ptr %i.cb, align 1
  %i.nk = select i1 %.not.i43, i16 %.val188, i16 %.val189
  call void @SDL_SendJoystickAxis(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 2, i16 noundef signext %i.nk) #7
  %.val190 = load i8, ptr %i.bz, align 2          ; 2 uses
  %.val191 = load i8, ptr %i.bx, align 1
  %i.nl = select i1 %.not.i43, i8 %.val190, i8 %.val191
  %i.nm = zext i8 %i.nl to i16
  %.val192 = load i8, ptr %i.cq, align 1
  %i.nn = select i1 %.not.i43, i8 %.val192, i8 %.val190
  %.neg163.i = sub i8 0, %i.nn
  %.neg163.z.i = zext i8 %.neg163.i to i16
  %.neg161.i = shl nuw i16 %.neg163.z.i, 8
  %.neg162.i = sub i16 %.neg161.i, %i.nm          ; 2 uses
  %i.no = icmp eq i16 %.neg162.i, -32768
  %spec.store.select1.i = select i1 %i.no, i16 32767, i16 %.neg162.i
  call void @SDL_SendJoystickAxis(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 3, i16 noundef signext %spec.store.select1.i) #7
  %.sroa.gep145.val = load i8, ptr %.sroa.gep145, align 16
  %.val194 = load i8, ptr %i.cr, align 1
  %i.np = select i1 %.not.i43, i8 %.sroa.gep145.val, i8 %.val194
  %i.nq = zext i8 %i.np to i16
  %i.nr = mul nuw i16 %i.nq, 257
  %i.ns = xor i16 %i.nr, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 4, i16 noundef signext %i.ns) #7
  %.val195 = load i8, ptr %i.ce, align 1
  %.sroa.gep145.val196 = load i8, ptr %.sroa.gep145, align 16
  %i.nt = select i1 %.not.i43, i8 %.val195, i8 %.sroa.gep145.val196
  %i.nu = zext i8 %i.nt to i16
  %i.nv = mul nuw i16 %i.nu, 257
  %i.nw = xor i16 %i.nv, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.ki, ptr noundef nonnull %.0121, i8 noundef zeroext 5, i16 noundef signext %i.nw) #7
  %i.nx = load i8, ptr %i.bo, align 1, !range !3, !noundef !4
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.bx, label %HIDAPI_DriverFlydigi_HandleStatePacketV2.exit

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.nz = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.oa = load i64, ptr %i.bq, align 8
  %i.ob = add i64 %i.oa, %i.nz
  store i64 %i.ob, ptr %i.bp, align 8
  %i.oc = load float, ptr %i.br, align 4          ; 4 uses
  %.val197 = load i16, ptr %i.cl, align 2
  %.val198 = load i16, ptr %i.ce, align 1
  %i.od = select i1 %.not.i43, i16 %.val197, i16 %.val198
  %i.oe = sitofp i16 %i.od to float
  %i.of = fneg float %i.oc                        ; 3 uses
  %i.og = call float @HIDAPI_RemapVal(float noundef %i.oe, float noundef -3.276800e+04, float noundef 3.276700e+04, float noundef %i.of, float noundef %i.oc) #7
  store float %i.og, ptr %i.a, align 4
  %.val199 = load i16, ptr %i.ch, align 2
  %.val200 = load i16, ptr %i.cg, align 1
  %i.oh = select i1 %.not.i43, i16 %.val199, i16 %.val200
  %i.oi = sitofp i16 %i.oh to float
  %i.oj = call float @HIDAPI_RemapVal(float noundef %i.oi, float noundef -3.276800e+04, float noundef 3.276700e+04, float noundef %i.of, float noundef %i.oc) #7
  store float %i.oj, ptr %i.bs, align 4
  %.val201 = load i16, ptr %i.cm, align 4
  %.val202 = load i16, ptr %i.cf, align 1
  %i.ok = select i1 %.not.i43, i16 %.val201, i16 %.val202
  %i.ol = sitofp i16 %i.ok to float
  %i.om = fneg float %i.ol
  %i.on = call float @HIDAPI_RemapVal(float noundef %i.om, float noundef -3.276800e+04, float noundef 3.276700e+04, float noundef %i.of, float noundef %i.oc) #7
  store float %i.on, ptr %i.bt, align 4
  call void @SDL_SendJoystickSensor(i64 noundef %i.ki, ptr noundef nonnull %.0121, i32 noundef 2, i64 noundef %i.nz, ptr noundef nonnull %i.a, i32 noundef 3) #7
  %i.oo = load float, ptr %i.bu, align 8          ; 3 uses
  %.val203 = load i16, ptr %i.cj, align 8
  %.val204 = load i16, ptr %i.ci, align 1
  %i.op = select i1 %.not.i43, i16 %.val203, i16 %.val204
  %1 = sitofp i16 %i.op to float
  %2 = fmul float %i.oo, %1
  store float %2, ptr %i.a, align 4
  %.026.idx.i.sroa.sel.sroa.sel52.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i43, i64 28, i64 27
  %.026.idx.i.sroa.sel.sroa.sel52.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.i, i64 %.026.idx.i.sroa.sel.sroa.sel52.v.sroa.sel.v.sroa.sel.v
  %3 = load i16, ptr %.026.idx.i.sroa.sel.sroa.sel52.v.sroa.sel.v.sroa.sel, align 1
  %4 = sitofp i16 %3 to float
  %5 = fmul float %i.oo, %4
  store float %5, ptr %i.bs, align 4
  %.val205 = load i16, ptr %i.ck, align 2
  %.sroa.gep160.val = load i16, ptr %.sroa.gep160, align 1
  %i.oq = select i1 %.not.i43, i16 %.val205, i16 %.sroa.gep160.val
  %i.or = sext i16 %i.oq to i32
  %i.os = sub nsw i32 0, %i.or
  %i.ot = sitofp i32 %i.os to float
  %i.ou = fmul float %i.oo, %i.ot
  store float %i.ou, ptr %i.bt, align 4
  call void @SDL_SendJoystickSensor(i64 noundef %i.ki, ptr noundef nonnull %.0121, i32 noundef 1, i64 noundef %i.nz, ptr noundef nonnull %i.a, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %HIDAPI_DriverFlydigi_HandleStatePacketV2.exit

HIDAPI_DriverFlydigi_HandleStatePacketV2.exit:    ; preds = %bb.bw, %bb.bx
  %i.ov = call i32 @llvm.umin.i32(i32 range(i32 31, -2147483648) %.0.i44, i32 64)
  %i.ow = zext nneg i32 %i.ov to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull readonly align 1 dereferenceable(1) %.026.idx.i.sroa.sel, i64 %i.ow, i1 false)
  br label %HIDAPI_DriverFlydigi_HandlePacketV1.exit

HIDAPI_DriverFlydigi_HandlePacketV1.exit:         ; preds = %HIDAPI_DriverFlydigi_HandleStatePacketV2.exit, %bb.bh, %bb.bg, %bb.bd, %bb.bc, %bb.bb, %HIDAPI_DriverFlydigi_SetAvailable.exit.sink.split.i.i, %bb.ay, %bb.av, %HIDAPI_DriverFlydigi_HandleStatusUpdate.exit.i, %HIDAPI_DriverFlydigi_HandleInfoResponse.exit, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %HIDAPI_DriverFlydigi_HandleStatePacketV1.exit.i, %bb.m, %bb.l
  %i.ox = load ptr, ptr %i.bc, align 8
  %i.oy = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.ox, ptr noundef nonnull %i.i, i64 noundef 64, i32 noundef 0) #7 ; 3 uses
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %bb.k, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %HIDAPI_DriverFlydigi_HandlePacketV1.exit, %bb.j
  %.lcssa = phi i32 [ %i.be, %bb.j ], [ %i.oy, %HIDAPI_DriverFlydigi_HandlePacketV1.exit ] ; 2 uses
  %i.pa = load i16, ptr %i.bb, align 8
  %i.pb = icmp eq i16 %i.pa, 14295
  br i1 %i.pb, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %._crit_edge
  %i.pc = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.pd = load i64, ptr %i.pc, align 8
  %i.pe = add i64 %i.pd, 100
  %.not36 = icmp ult i64 %i.l, %i.pe
  br i1 %.not36, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pf = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.l, ptr %i.pf, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %._crit_edge
  %i.pg = icmp slt i32 %.lcssa, 0
  br i1 %i.pg, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.ph = load i32, ptr %i.m, align 4
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pk = load ptr, ptr %i.pj, align 8
  %i.pl = load i32, ptr %i.pk, align 4
  call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.pl) #7
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.pm = icmp eq i32 %.lcssa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  ret i1 %i.pm
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverFlydigi_OpenJoystick(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((68, 72), (96, 100), (112, 116)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  tail call void @SDL_AssertJoysticksLocked() #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  store i32 15, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.f = load i8, ptr %i.e, align 2, !range !3, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  %spec.store.select = select i1 %i.g, i32 17, i32 15 ; 3 uses
  store i32 %spec.store.select, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.i = load i8, ptr %i.h, align 1, !range !3, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i32 %spec.store.select, 2    ; 2 uses
  store i32 %i.k, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %i.k, %bb.b ], [ %spec.store.select, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.n = load i8, ptr %i.m, align 4, !range !3, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 6, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 13 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !range !3, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 228
  store i32 2, ptr %i.v, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.x = load i8, ptr %i.w, align 2, !range !3, !noundef !4
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.s, align 1, !range !3, !noundef !4
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.aa, float 1.000000e+03, float 5.000000e+02 ; 2 uses
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %1, i32 noundef 2, float noundef %i.ab) #7
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %1, i32 noundef 1, float noundef %i.ab) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverFlydigi_RumbleJoystick(ptr noundef %0, ptr nofree readnone captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [10 x i8], align 1                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i16, ptr %i.c, align 8
  %i.e = icmp eq i16 %i.d, 1204
  %i.f = lshr i16 %2, 8
  %i.g = trunc nuw i16 %i.f to i8                 ; 2 uses
  %i.h = lshr i16 %3, 8
  %i.i = trunc nuw i16 %i.h to i8                 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 3845, ptr %i.a, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.g, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.i, ptr %i.k, align 1
  %i.l = call i32 @SDL_HIDAPI_SendRumble(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4) #7
  %.not11.not = icmp eq i32 %i.l, 4
  br i1 %.not11.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @__const.HIDAPI_DriverFlydigi_RumbleJoystick.rumble_packet.30, i64 10, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.g, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.i, ptr %i.o, align 1
  %i.p = call i32 @SDL_HIDAPI_SendRumble(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 10) #7
  %.not.not = icmp eq i32 %i.p, 10
  br i1 %.not.not, label %.thread13, label %bb.e

.thread13:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.thread13, %bb.e, %bb.c
  %.2 = phi i1 [ %i.q, %bb.e ], [ %i.m, %bb.c ], [ true, %.thread13 ], [ true, %.thread ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverFlydigi_RumbleJoystickTriggers(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i16 zeroext %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.31) #7
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @HIDAPI_DriverFlydigi_GetJoystickCapabilities(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret i32 16
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverFlydigi_SetJoystickLED(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
end_hunk_1
