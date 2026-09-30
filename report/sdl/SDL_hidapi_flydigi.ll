Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_flydigi?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"SDL_JOYSTICK_HIDAPI_FLYDIGI\00", align 1
@SDL_HIDAPI_DriverFlydigi = hidden local_unnamed_addr global { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 1, [7 x i8] zeroinitializer, ptr @HIDAPI_DriverFlydigi_RegisterHints, ptr @HIDAPI_DriverFlydigi_UnregisterHints, ptr @HIDAPI_DriverFlydigi_IsEnabled, ptr @HIDAPI_DriverFlydigi_IsSupportedDevice, ptr @HIDAPI_DriverFlydigi_InitDevice, ptr @HIDAPI_DriverFlydigi_GetDevicePlayerIndex, ptr @HIDAPI_DriverFlydigi_SetDevicePlayerIndex, ptr @HIDAPI_DriverFlydigi_UpdateDevice, ptr @HIDAPI_DriverFlydigi_OpenJoystick, ptr @HIDAPI_DriverFlydigi_RumbleJoystick, ptr @HIDAPI_DriverFlydigi_RumbleJoystickTriggers, ptr @HIDAPI_DriverFlydigi_GetJoystickCapabilities, ptr @HIDAPI_DriverFlydigi_SetJoystickLED, ptr @HIDAPI_DriverFlydigi_SendJoystickEffect, ptr @HIDAPI_DriverFlydigi_SetJoystickSensorsEnabled, ptr @HIDAPI_DriverFlydigi_CloseJoystick, ptr @HIDAPI_DriverFlydigi_FreeDevice }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"SDL_JOYSTICK_HIDAPI\00", align 1
@__const.HIDAPI_DriverFlydigi_InitControllerV1.request = private unnamed_addr constant <{ i8, i8, [10 x i8] }> <{ i8 5, i8 -20, [10 x i8] zeroinitializer }>, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%.2x%.2x%.2x%.2x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VADER\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"VADER2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"VADER3\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"VADER4\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Vader 5\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"APEX\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"APEX2\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"APEX3\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"APEX4\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"APEX5\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Flydigi Apex 2\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Flydigi Apex 3\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Flydigi Apex 4\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Flydigi Apex 5\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Flydigi Vader 2\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Flydigi Vader 2 Pro\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Flydigi Vader 3\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Flydigi Vader 3 Pro\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Flydigi Vader 4 Pro\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Flydigi Vader 5 Pro\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"Unknown FlyDigi controller with ID %d, name '%s'\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Couldn't get controller info\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Unsupported firmware version\00", align 1
@__const.SDL_HIDAPI_Flydigi_SendInfoRequest.cmd = private unnamed_addr constant [6 x i8] c"\03Z\A5\01\02\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Couldn't query controller info\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Couldn't query controller status\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Couldn't send acquire command\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Couldn't send rumble packet\00", align 1
@__const.HIDAPI_DriverFlydigi_RumbleJoystick.rumble_packet.30 = private unnamed_addr constant [10 x i8] c"\03Z\A5\12\06\00\00\00\00\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"That operation is not supported\00", align 1
@switch.table.HIDAPI_DriverFlydigi_UpdateDevice.4 = private unnamed_addr constant [12 x i8] c"\01\02\03\04\00\06\00\08\09\00\00\0C", align 1

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverFlydigi_RegisterHints(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %1) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverFlydigi_UnregisterHints(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverFlydigi_IsEnabled() #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.1, i1 noundef zeroext true) #7
  %i.b = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str, i1 noundef zeroext %i.a) #7
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverFlydigi_IsSupportedDevice(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 zeroext %5, i32 noundef %6, i32 %7, i32 %8, i32 %9) #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_IsJoystickFlydigiController(i16 noundef zeroext %3, i16 noundef zeroext %4) #7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i16 %3, 1204
  %i.c = icmp eq i32 %6, 2
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverFlydigi_InitDevice(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = alloca [6 x i8], align 1                 ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 12 uses
  %i.f = alloca [12 x i8], align 1                ; 4 uses
  %i.g = alloca [64 x i8], align 16               ; 12 uses
  %i.h = alloca [9 x i8], align 1                 ; 4 uses
  %i.i = tail call noalias dereferenceable_or_null(128) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 128) #8 ; 9 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %HIDAPI_DriverFlydigi_InitControllerV1.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq i16 %i.l, 1204
  br i1 %i.m, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.c
  call fastcc void @HIDAPI_DriverFlydigi_UpdateDeviceIdentity(ptr noundef nonnull %0)
  %i.ab = load ptr, ptr %i.j, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 9 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !3, !noundef !4
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %bb.d, label %HIDAPI_DriverFlydigi_InitControllerV1.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = call zeroext i1 @HIDAPI_JoystickConnected(ptr noundef nonnull %0, ptr noundef null) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i8 1, ptr %i.ac, align 1
  br label %HIDAPI_DriverFlydigi_InitControllerV1.exit

HIDAPI_DriverFlydigi_WritePacket.exit.i:          ; preds = %.loopexit.i, %.lr.ph.i
  %.02329.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bg, %.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @__const.HIDAPI_DriverFlydigi_InitControllerV1.request, i64 12, i1 false)
  %i.ai = load ptr, ptr %i.q, align 8
  %i.aj = call i32 @SDL_hid_write_REAL(ptr noundef %i.ai, ptr noundef nonnull %i.f, i64 noundef 12) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %HIDAPI_DriverFlydigi_WritePacket.exit.i
  %.028.i = phi i32 [ 0, %HIDAPI_DriverFlydigi_WritePacket.exit.i ], [ %i.bf, %bb.n ]
  call void @SDL_Delay_REAL(i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.ak = load ptr, ptr %i.q, align 8
  %i.al = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.ak, ptr noundef nonnull %i.g, i64 noundef 64, i32 noundef 0) #7 ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i32 %i.al, 32
  %i.ap = load i8, ptr %i.r, align 1
  %i.aq = icmp eq i8 %i.ap, -20
  %or.cond.i = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %i.s, align 1
  store i8 %i.ar, ptr %i.n, align 8
  %i.as = load i16, ptr %i.t, align 1
  store i16 %i.as, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.at = load i8, ptr %i.v, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = load i8, ptr %i.w, align 2
  %i.aw = zext i8 %i.av to i32
  %i.ax = load i8, ptr %i.x, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = load i8, ptr %i.y, align 8
  %i.ba = zext i8 %i.az to i32
  %i.bb = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.h, i64 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba) #7 ; 0 uses
  call void @HIDAPI_SetDeviceSerial(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #7
  %i.bc = load i16, ptr %i.u, align 8
  %i.bd = icmp ugt i16 %i.bc, 25599
  br i1 %i.bd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.be = load i8, ptr %i.z, align 1
  switch i8 %i.be, label %bb.m [
    i8 0, label %.sink.split.i
    i8 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.k
  %.sink.i = phi i8 [ 0, %bb.l ], [ 1, %bb.k ]
  store i8 %.sink.i, ptr %i.aa, align 1
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  %i.bf = add nuw nsw i32 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bf, 100
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.g, !llvm.loop !6

.loopexit.i:                                      ; preds = %bb.n, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %i.bg = add nuw nsw i32 %.02329.i, 1
  %i.bh = load i8, ptr %i.n, align 8
  %i.bi = icmp eq i8 %i.bh, 0
  %i.bj = icmp samesign ult i32 %.02329.i, 29
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %HIDAPI_DriverFlydigi_WritePacket.exit.i, label %._crit_edge.i, !llvm.loop !7

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @__const.SDL_HIDAPI_Flydigi_SendInfoRequest.cmd, i64 6, i1 false)
  %i.bl = icmp eq i16 %i.l, 14295
  br i1 %i.bl, label %bb.p, label %.critedge.i.i.i

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
  %1 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %2 = load i8, ptr %1, align 16
  %3 = zext i8 %2 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %4 = load i8, ptr %i.cq, align 1
  %5 = zext i8 %4 to i16
  %6 = shl nuw i16 %5, 8
  %7 = or disjoint i16 %6, %3                     ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i16 %7, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 2            ; 2 uses
  %switch.selectcmp.i = icmp eq i16 %i.ct, 9217
  %switch.select.i = select i1 %switch.selectcmp.i, i32 28993, i32 0
  %switch.selectcmp13.i = icmp eq i16 %i.ct, 9473
  %switch.select14.i = select i1 %switch.selectcmp13.i, i32 28721, i32 %switch.select.i
  %i.cu = zext i16 %7 to i32
  %i.cv = icmp samesign ugt i32 %switch.select14.i, %i.cu
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %GetReply.exit.i
  %i.cw = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #7
  br label %HIDAPI_DriverFlydigi_InitControllerV2.exit

bb.aa:                                            ; preds = %GetReply.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.cy = load i8, ptr %i.cx, align 2
  switch i8 %i.cy, label %bb.ac [
    i8 1, label %.sink.split.i11
    i8 2, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %.sink.split.i11

.sink.split.i11:                                  ; preds = %bb.ab, %bb.aa
  %.sink.i12 = phi i8 [ 1, %bb.ab ], [ 0, %bb.aa ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  store i8 %.sink.i12, ptr %i.cz, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i11, %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.db, ptr %i.dc, align 8
  call fastcc void @HIDAPI_DriverFlydigi_UpdateDeviceIdentity(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 279271939, ptr %i.b, align 4
  %i.dd = load i16, ptr %i.k, align 8
  %i.de = icmp eq i16 %i.dd, 14295
  br i1 %i.de, label %bb.ad, label %.critedge.i.i15.i

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i16, ptr %i.cs, align 2
  %i.dg = icmp eq i16 %i.df, 9217
  br i1 %i.dg, label %bb.ae, label %.critedge.i.i15.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 279271936, ptr %i.a, align 16
  %i.dh = load ptr, ptr %i.by, align 8
  %i.di = call i32 @SDL_hid_write_REAL(ptr noundef %i.dh, ptr noundef nonnull %i.a, i64 noundef 4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i16.i

.critedge.i.i15.i:                                ; preds = %bb.ad, %bb.ac
  %i.dj = load ptr, ptr %i.by, align 8
  %i.dk = call i32 @SDL_hid_write_REAL(ptr noundef %i.dj, ptr noundef nonnull %i.b, i64 noundef 4) #7
  br label %HIDAPI_DriverFlydigi_WritePacket.exit.i16.i

HIDAPI_DriverFlydigi_WritePacket.exit.i16.i:      ; preds = %.critedge.i.i15.i, %bb.ae
  %.0.i.i17.i = phi i32 [ %i.di, %bb.ae ], [ %i.dk, %.critedge.i.i15.i ]
  %i.dl = icmp slt i32 %.0.i.i17.i, 0
  br i1 %i.dl, label %bb.af, label %SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i

bb.af:                                            ; preds = %HIDAPI_DriverFlydigi_WritePacket.exit.i16.i
  %i.dm = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.27) #7 ; 0 uses
  br label %SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i

SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i:      ; preds = %bb.af, %HIDAPI_DriverFlydigi_WritePacket.exit.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %HIDAPI_DriverFlydigi_InitControllerV2.exit

HIDAPI_DriverFlydigi_InitControllerV2.exit:       ; preds = %SDL_HIDAPI_Flydigi_SendInfoRequest.exit.i, %bb.y, %bb.z, %SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i
  %.1.i = phi i1 [ false, %SDL_HIDAPI_Flydigi_SendInfoRequest.exit.i ], [ %i.cp, %bb.y ], [ %i.cw, %bb.z ], [ true, %SDL_HIDAPI_Flydigi_SendStatusRequest.exit.i ]
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

end_hunk_0
begin_hunk_1_@HIDAPI_DriverFlydigi_UpdateDeviceIdentity:bb.a
bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %0, align 8
  %i.w = tail call ptr @SDL_strstr_REAL(ptr noundef %i.v, ptr noundef nonnull @.str.12) #7
  %.not57 = icmp eq ptr %i.w, null
  br i1 %.not57, label %select.unfold, label %bb.o

bb.l:                                             ; preds = %bb.h, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 1, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 8000000, ptr %i.y, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #7
  br label %bb.v

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 2, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 8000000, ptr %i.aa, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #7
  br label %bb.v

bb.n:                                             ; preds = %bb.a, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 3, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 8000000, ptr %i.ac, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #7
  br label %bb.v

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 4, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 8000000, ptr %i.ae, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #7
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 1, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 1, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x float> <float f0x3B1CE80A, float f0x420BA058>, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.aj = load i8, ptr %i.ai, align 1, !range !3, !noundef !4
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %i.ak, i64 3389830, i64 1030927
  store i64 %i.al, ptr %i.ae, align 8
  br label %bb.v

bb.p:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 16, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 8000000, ptr %i.an, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 1, ptr %i.ao, align 2
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 17, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 8000000, ptr %i.aq, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 1, ptr %i.ar, align 2
  br label %bb.v

bb.r:                                             ; preds = %bb.a, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 18, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 8000000, ptr %i.at, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #7
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 1, ptr %i.au, align 2
  br label %bb.v

bb.s:                                             ; preds = %bb.a, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 19, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 8000000, ptr %i.aw, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 1, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 1, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float f0x3D1CE80A, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !range !3, !noundef !4
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = select i1 %i.bc, i64 1000000, i64 2000000
  store i64 %i.bd, ptr %i.aw, align 8
  br label %bb.v

bb.t:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 20, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 8000000, ptr %i.bf, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 1, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 1, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float f0x3D1CE80A, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.bk = load i8, ptr %i.bj, align 1, !range !3, !noundef !4
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bl, i64 1000000, i64 2000000
  store i64 %i.bm, ptr %i.bf, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.a, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 21, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 8000000, ptr %i.bo, align 8
  tail call void @HIDAPI_SetDeviceName(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 1, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 1, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 1, ptr %i.bs, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x float> <float f0x3B1CE80A, float f0x420BA058>, ptr %i.bt, align 8
  store i64 2000000, ptr %i.bo, align 8
  br label %bb.v

select.unfold:                                    ; preds = %bb.k, %bb.f, %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 0, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 8000000, ptr %i.bv, align 8
  %i.bw = load i8, ptr %i.c, align 8
  %i.bx = zext i8 %i.bw to i32
  %i.by = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 7, ptr noundef nonnull @.str.23, i32 noundef %i.bx, ptr noundef %i.by) #7
  br label %bb.v

bb.v:                                             ; preds = %select.unfold, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  ret void
}

declare i32 @SDL_hid_write_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SDL_strcasestr_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_strstr_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @HIDAPI_SetDeviceName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SDL_LogDebug_REAL(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @HIDAPI_JoystickConnected(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @HIDAPI_JoystickDisconnected(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare i64 @SDL_GetTicks_REAL() local_unnamed_addr #2

declare ptr @SDL_GetJoystickFromID_REAL(i32 noundef) local_unnamed_addr #2

declare i64 @SDL_GetTicksNS_REAL() local_unnamed_addr #2

declare void @SDL_SendJoystickHat(i64 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @SDL_SendJoystickButton(i64 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare float @HIDAPI_RemapVal(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @SDL_SendJoystickAxis(i64 noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @SDL_SendJoystickSensor(i64 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_SendJoystickPowerInfo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_AssertJoysticksLocked() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @SDL_PrivateJoystickAddSensor(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare i32 @SDL_HIDAPI_SendRumble(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
end_hunk_1
