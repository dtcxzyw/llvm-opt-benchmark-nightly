Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_portaldialog?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DBusMessageIter = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.SDL_DialogFileFilter = type { ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.DBusError = type { ptr, ptr, i8, ptr }

@.str = private unnamed_addr constant [22 x i8] c"SDL.filedialog.window\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SDL.filedialog.filters\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"SDL.filedialog.nfilters\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SDL.filedialog.many\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SDL.filedialog.location\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"SDL.filedialog.accept\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"OpenFile\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SDL.filedialog.title\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Open File\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"SaveFile\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Save File\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Open Folder\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Invalid file dialog type: %d\00", align 1
@SDL_Portal_ShowFileDialogWithProperties.handle_id = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"org.freedesktop.portal.Desktop\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"/org/freedesktop/portal/desktop\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"org.freedesktop.portal.FileChooser\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Failed to send message to portal\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"SDL.window.wayland.xdg_toplevel_export_handle\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"wayland:\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SDL.window.x11.window\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%s%lx\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"x11:\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"{sv}\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"handle_token\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"modal\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"current_file\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"current_name\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"current_folder\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"accept_label\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Failed to open dialog via DBus, %s: %s\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid response received by DBus\00", align 1
@.str.38 = private unnamed_addr constant [126 x i8] c"type='signal', sender='org.freedesktop.portal.Desktop', interface='org.freedesktop.portal.Request', member='Response', path='\00", align 1
@.str.39 = private unnamed_addr constant [129 x i8] c"type='signal', sender='org.freedesktop.portal.Desktop', interface='org.freedesktop.portal.Request', member='Response', path='%s'\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"Failed to set up DBus listener for dialog, %s: %s\00", align 1
@SDL_Portal_detect.portal_present = internal unnamed_addr global i32 -1, align 4
@.str.41 = private unnamed_addr constant [27 x i8] c"Failed to connect to DBus!\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"org.freedesktop.DBus.Introspectable\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"Introspect\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@DBus_AppendFilters.filters_name = internal global ptr @.str.46, align 8
@.str.46 = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"a(sa(us))\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"(sa(us))\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"(us)\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"ay\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"org.freedesktop.portal.Request\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"Response\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"uris\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"Portal dialogs: Unsupported protocol: %s\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @SDL_Portal_ShowFileDialogWithProperties(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %5 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %6 = alloca %struct.SDL_DialogFileFilter, align 16 ; 5 uses
  %7 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %8 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %9 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %11 = alloca %struct.DBusMessageIter, align 8   ; 6 uses
  %12 = alloca %struct.DBusMessageIter, align 8   ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %13 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %14 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %15 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %16 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %17 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %18 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %19 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %20 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %21 = alloca %struct.stat, align 8              ; 6 uses
  %22 = alloca %struct.DBusError, align 8         ; 11 uses
  %23 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  %24 = alloca %struct.DBusMessageIter, align 8   ; 19 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 8 uses
  %25 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  %i.q = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str, ptr noundef null) #8 ; 2 uses
  %i.r = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.1, ptr noundef null) #8 ; 3 uses
  %i.s = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.2, i64 noundef 0) #8 ; 2 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.3, i1 noundef zeroext false) #8
  %i.v = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.4, ptr noundef null) #8 ; 7 uses
  %i.w = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.5, ptr noundef null) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  switch i32 %0, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.x = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  store ptr %i.x, ptr %i.n, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.y = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #8
  store ptr %i.y, ptr %i.n, align 8
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = call i32 @stat(ptr noundef nonnull %i.v, ptr noundef nonnull %21) #8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 61440
  %i.ae = icmp eq i32 %i.ad, 32768
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.af = tail call ptr @__errno_location() #9
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.v) #8 ; 3 uses
  %.not194 = icmp eq ptr %i.ai, null
  br i1 %.not194, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call ptr @dirname(ptr noundef nonnull %i.ai) #8
  %i.ak = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %i.aj) #8 ; 3 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ai) #8
  %.not195 = icmp eq ptr %i.ak, null
  br i1 %.not195, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = call i32 @stat(ptr noundef nonnull %i.ak, ptr noundef nonnull %21) #8
  %i.am = icmp eq i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 61440
  %i.aq = icmp eq i32 %i.ap, 16384
  %i.ar = select i1 %i.am, i1 %i.aq, i1 false
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.f, %bb.e
  %.1170 = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %i.ak, %bb.i ], [ null, %bb.h ], [ null, %bb.g ] ; 3 uses
  %.0166 = phi i1 [ %i.ae, %bb.e ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ] ; 3 uses
  %.1164 = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ %i.ar, %bb.i ], [ false, %bb.h ], [ false, %bb.g ] ; 3 uses
  %or.cond = select i1 %.0166, i1 true, i1 %.1164
  br i1 %or.cond, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.v) #8 ; 3 uses
  %.not196 = icmp eq ptr %i.as, null
  br i1 %.not196, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = tail call ptr @__xpg_basename(ptr noundef nonnull %i.as) #8
  %i.au = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %i.at) #8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.as) #8
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.av = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11) #8
  store ptr %i.av, ptr %i.n, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.aw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12, i32 noundef %0) #8 ; 0 uses
  tail call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.br

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.c, %bb.j, %bb.m, %bb.b
  %.2171 = phi ptr [ null, %bb.b ], [ null, %bb.m ], [ %.1170, %bb.j ], [ null, %bb.c ], [ %.1170, %bb.l ], [ %.1170, %bb.k ] ; 10 uses
  %.0168 = phi i1 [ false, %bb.b ], [ true, %bb.m ], [ false, %bb.j ], [ false, %bb.c ], [ false, %bb.l ], [ false, %bb.k ]
  %.1167 = phi i1 [ false, %bb.b ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.c ], [ %.0166, %bb.l ], [ %.0166, %bb.k ]
  %.2165 = phi i1 [ false, %bb.b ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.c ], [ %.1164, %bb.l ], [ %.1164, %bb.k ]
  %.1161 = phi ptr [ null, %bb.b ], [ null, %bb.m ], [ null, %bb.j ], [ null, %bb.c ], [ %i.au, %bb.l ], [ null, %bb.k ] ; 11 uses
  %.0 = phi ptr [ @.str.6, %bb.b ], [ @.str.6, %bb.m ], [ @.str.9, %bb.j ], [ @.str.9, %bb.c ], [ @.str.9, %bb.l ], [ @.str.9, %bb.k ]
  %i.ax = tail call ptr @SDL_DBus_GetContext() #8 ; 27 uses
  store ptr null, ptr %i.o, align 8
  %i.ay = tail call i32 @SDL_GetWindowProperties_REAL(ptr noundef %i.q) #8 ; 3 uses
  %i.az = tail call ptr @validate_filters(ptr noundef %i.r, i32 noundef %i.t) #8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 344
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull %22) #8
  %.not197 = icmp eq ptr %i.az, null
  br i1 %.not197, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.az) #8 ; 0 uses
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.br

bb.q:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call ptr %i.be(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull %.0) #8 ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.19) #8 ; 0 uses
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.br

bb.s:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull %i.bf, ptr noundef nonnull %23) #8
  store ptr @.str.13, ptr %i.p, align 8
  %.not198 = icmp eq i32 %i.ay, 0
  br i1 %.not198, label %.thread222, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = call ptr @SDL_GetStringProperty_REAL(i32 noundef %i.ay, ptr noundef nonnull @.str.20, ptr noundef null) #8 ; 3 uses
  %.not199 = icmp eq ptr %i.bk, null
  br i1 %.not199, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = call i64 @SDL_strlen_REAL(ptr noundef nonnull %i.bk) #8
  %i.bm = add i64 %i.bl, 10                       ; 2 uses
  %i.bn = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.bm) #8 ; 3 uses
  store ptr %i.bn, ptr %i.p, align 8
  %.not202.not = icmp eq ptr %i.bn, null
  br i1 %.not202.not, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.br

bb.v:                                             ; preds = %bb.u
  %i.bo = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.bn, i64 noundef %i.bm, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.bk) #8 ; 0 uses
  br label %.thread222

bb.w:                                             ; preds = %bb.t
  %i.bp = call i64 @SDL_GetNumberProperty_REAL(i32 noundef %i.ay, ptr noundef nonnull @.str.23, i64 noundef 0) #8 ; 2 uses
  %.not200 = icmp eq i64 %i.bp, 0
  br i1 %.not200, label %.thread222, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = call noalias ptr @SDL_malloc_REAL(i64 noundef 29) #8 ; 3 uses
  store ptr %i.bq, ptr %i.p, align 8
  %.not201.not = icmp eq ptr %i.bq, null
  br i1 %.not201.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.bq, i64 noundef 29, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i64 noundef %i.bp) #8 ; 0 uses
  br label %.thread222

bb.z:                                             ; preds = %bb.x
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.br

.thread222:                                       ; preds = %bb.w, %bb.y, %bb.v, %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 16 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call i32 %i.bt(ptr noundef nonnull %23, i32 noundef 115, ptr noundef nonnull %i.p) #8 ; 0 uses
  %i.bv = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not203 = icmp eq ptr %i.bv, @.str.13
  br i1 %.not203, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread222
  call void @SDL_free_REAL(ptr noundef %i.bv) #8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread222
  %i.bw = load ptr, ptr %i.bs, align 8
  %i.bx = call i32 %i.bw(ptr noundef nonnull %23, i32 noundef 115, ptr noundef nonnull %i.n) #8 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 248 ; 17 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i32 %i.bz(ptr noundef nonnull %23, i32 noundef 97, ptr noundef nonnull @.str.26, ptr noundef nonnull %24) #8 ; 0 uses
  %i.cb = call noalias ptr @SDL_malloc_REAL(i64 noundef 11) #8 ; 3 uses
  store ptr %i.cb, ptr %i.p, align 8
  %.not204 = icmp eq ptr %i.cb, null
  br i1 %.not204, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.br

bb.ad:                                            ; preds = %bb.ab
  %i.cc = load i32, ptr @SDL_Portal_ShowFileDialogWithProperties.handle_id, align 4
  %i.cd = add i32 %i.cc, 1                        ; 2 uses
  store i32 %i.cd, ptr @SDL_Portal_ShowFileDialogWithProperties.handle_id, align 4
  %i.ce = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.cb, i64 noundef 10, ptr noundef nonnull @.str.27, i32 noundef %i.cd) #8 ; 0 uses
  %i.cf = load ptr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @.str.28, ptr %i.l, align 8
  store ptr %i.cf, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %i.cg = load ptr, ptr %i.by, align 8
  %i.ch = call i32 %i.cg(ptr noundef nonnull %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %19) #8, !inline_history !9 ; 0 uses
  %i.ci = load ptr, ptr %i.bs, align 8
  %i.cj = call i32 %i.ci(ptr noundef nonnull %19, i32 noundef 115, ptr noundef nonnull %i.l) #8, !inline_history !9 ; 0 uses
  %i.ck = load ptr, ptr %i.by, align 8
  %i.cl = call i32 %i.ck(ptr noundef nonnull %19, i32 noundef 118, ptr noundef nonnull @.str.44, ptr noundef nonnull %20) #8, !inline_history !9 ; 0 uses
  %i.cm = load ptr, ptr %i.bs, align 8
  %i.cn = call i32 %i.cm(ptr noundef nonnull %20, i32 noundef 115, ptr noundef nonnull %i.m) #8, !inline_history !9 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ax, i64 264 ; 17 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call i32 %i.cp(ptr noundef nonnull %19, ptr noundef nonnull %20) #8, !inline_history !9 ; 0 uses
  %i.cr = load ptr, ptr %i.co, align 8
  %i.cs = call i32 %i.cr(ptr noundef nonnull %24, ptr noundef nonnull %19) #8, !inline_history !9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ct = load ptr, ptr %i.p, align 8
  call void @SDL_free_REAL(ptr noundef %i.ct) #8
  %i.cu = icmp ne ptr %i.q, null
  %i.cv = zext i1 %i.cu to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @.str.29, ptr %i.j, align 8
  store i32 %i.cv, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.cw = load ptr, ptr %i.by, align 8
  %i.cx = call i32 %i.cw(ptr noundef nonnull %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %17) #8, !inline_history !4 ; 0 uses
  %i.cy = load ptr, ptr %i.bs, align 8
  %i.cz = call i32 %i.cy(ptr noundef nonnull %17, i32 noundef 115, ptr noundef nonnull %i.j) #8, !inline_history !4 ; 0 uses
  %i.da = load ptr, ptr %i.by, align 8
  %i.db = call i32 %i.da(ptr noundef nonnull %17, i32 noundef 118, ptr noundef nonnull @.str.45, ptr noundef nonnull %18) #8, !inline_history !4 ; 0 uses
  %i.dc = load ptr, ptr %i.bs, align 8
  %i.dd = call i32 %i.dc(ptr noundef nonnull %18, i32 noundef 98, ptr noundef nonnull %i.k) #8, !inline_history !4 ; 0 uses
  %i.de = load ptr, ptr %i.co, align 8
  %i.df = call i32 %i.de(ptr noundef nonnull %17, ptr noundef nonnull %18) #8, !inline_history !4 ; 0 uses
  %i.dg = load ptr, ptr %i.co, align 8
  %i.dh = call i32 %i.dg(ptr noundef nonnull %24, ptr noundef nonnull %17) #8, !inline_history !4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.u, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.30, ptr %i.h, align 8
  store i32 1, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.di = load ptr, ptr %i.by, align 8
  %i.dj = call i32 %i.di(ptr noundef nonnull %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %15) #8, !inline_history !4 ; 0 uses
  %i.dk = load ptr, ptr %i.bs, align 8
  %i.dl = call i32 %i.dk(ptr noundef nonnull %15, i32 noundef 115, ptr noundef nonnull %i.h) #8, !inline_history !4 ; 0 uses
  %i.dm = load ptr, ptr %i.by, align 8
  %i.dn = call i32 %i.dm(ptr noundef nonnull %15, i32 noundef 118, ptr noundef nonnull @.str.45, ptr noundef nonnull %16) #8, !inline_history !4 ; 0 uses
  %i.do = load ptr, ptr %i.bs, align 8
  %i.dp = call i32 %i.do(ptr noundef nonnull %16, i32 noundef 98, ptr noundef nonnull %i.i) #8, !inline_history !4 ; 0 uses
  %i.dq = load ptr, ptr %i.co, align 8
  %i.dr = call i32 %i.dq(ptr noundef nonnull %15, ptr noundef nonnull %16) #8, !inline_history !4 ; 0 uses
  %i.ds = load ptr, ptr %i.co, align 8
  %i.dt = call i32 %i.ds(ptr noundef nonnull %24, ptr noundef nonnull %15) #8, !inline_history !4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.0168, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @.str.31, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.du = load ptr, ptr %i.by, align 8
  %i.dv = call i32 %i.du(ptr noundef nonnull %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %13) #8, !inline_history !4 ; 0 uses
  %i.dw = load ptr, ptr %i.bs, align 8
  %i.dx = call i32 %i.dw(ptr noundef nonnull %13, i32 noundef 115, ptr noundef nonnull %i.f) #8, !inline_history !4 ; 0 uses
  %i.dy = load ptr, ptr %i.by, align 8
  %i.dz = call i32 %i.dy(ptr noundef nonnull %13, i32 noundef 118, ptr noundef nonnull @.str.45, ptr noundef nonnull %14) #8, !inline_history !4 ; 0 uses
  %i.ea = load ptr, ptr %i.bs, align 8
  %i.eb = call i32 %i.ea(ptr noundef nonnull %14, i32 noundef 98, ptr noundef nonnull %i.g) #8, !inline_history !4 ; 0 uses
  %i.ec = load ptr, ptr %i.co, align 8
  %i.ed = call i32 %i.ec(ptr noundef nonnull %13, ptr noundef nonnull %14) #8, !inline_history !4 ; 0 uses
  %i.ee = load ptr, ptr %i.co, align 8
  %i.ef = call i32 %i.ee(ptr noundef nonnull %24, ptr noundef nonnull %13) #8, !inline_history !4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not205 = icmp eq ptr %i.r, null
  br i1 %.not205, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.eg = load ptr, ptr %i.by, align 8
  %i.eh = call i32 %i.eg(ptr noundef nonnull %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %10) #8, !inline_history !5 ; 0 uses
  %i.ei = load ptr, ptr %i.bs, align 8
  %i.ej = call i32 %i.ei(ptr noundef nonnull %10, i32 noundef 115, ptr noundef nonnull @DBus_AppendFilters.filters_name) #8, !inline_history !5 ; 0 uses
  %i.ek = load ptr, ptr %i.by, align 8
  %i.el = call i32 %i.ek(ptr noundef nonnull %10, i32 noundef 118, ptr noundef nonnull @.str.47, ptr noundef nonnull %11) #8, !inline_history !5 ; 0 uses
  %i.em = load ptr, ptr %i.by, align 8
  %i.en = call i32 %i.em(ptr noundef nonnull %11, i32 noundef 97, ptr noundef nonnull @.str.48, ptr noundef nonnull %12) #8, !inline_history !5 ; 0 uses
  %i.eo = icmp sgt i32 %i.t, 0
  br i1 %i.eo, label %.lr.ph.i, label %DBus_AppendFilters.exit

.lr.ph.i:                                         ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %wide.trip.count.i = and i64 %i.s, 2147483647
  br label %bb.aj

bb.aj:                                            ; preds = %DBus_AppendFilter.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %DBus_AppendFilter.exit.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.er = load <2 x ptr>, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store <2 x ptr> %i.er, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 0, ptr %i.e, align 4
  %i.es = load ptr, ptr %i.by, align 8
  %i.et = call i32 %i.es(ptr noundef nonnull %12, i32 noundef 114, ptr noundef null, ptr noundef nonnull %7) #8, !inline_history !6 ; 0 uses
  %i.eu = load ptr, ptr %i.bs, align 8
  %i.ev = call i32 %i.eu(ptr noundef nonnull %7, i32 noundef 115, ptr noundef nonnull %6) #8, !inline_history !6 ; 0 uses
  %i.ew = load ptr, ptr %i.by, align 8
  %i.ex = call i32 %i.ew(ptr noundef nonnull %7, i32 noundef 97, ptr noundef nonnull @.str.49, ptr noundef nonnull %8) #8, !inline_history !6 ; 0 uses
  %i.ey = load ptr, ptr %i.ep, align 8
  %i.ez = call i64 @SDL_strlen_REAL(ptr noundef %i.ey) #8 ; 2 uses
  %i.fa = add i64 %i.ez, 1                        ; 2 uses
  %i.fb = shl i64 %i.fa, 2
  %i.fc = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.fb) #8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %DBus_AppendFilter.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aj
  %.not65.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not65.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.am, %.preheader.i.i
  %i.fd = call ptr @SDL_strtok_r_REAL(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.c) #8 ; 2 uses
  %.not5060.i.i = icmp eq ptr %i.fd, null
  br i1 %.not5060.i.i, label %DBus_AppendFilter.exit.i, label %.lr.ph63.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.am
  %.04259.i.i = phi i64 [ %.1.i.i, %bb.am ], [ 0, %.preheader.i.i ] ; 4 uses
  %.04358.i.i = phi i64 [ %i.ga, %bb.am ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.fe = load ptr, ptr %i.ep, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.04358.i.i ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1             ; 2 uses
  %i.fh = and i8 %i.fg, -33
  %i.fi = add i8 %i.fh, -65
  %or.cond57.i.i = icmp ult i8 %i.fi, 26
  br i1 %or.cond57.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.04259.i.i ; 4 uses
  store i8 91, ptr %i.fj, align 1
  %i.fk = load i8, ptr %i.ff, align 1
  %i.fl = sext i8 %i.fk to i32
  %i.fm = call i32 @SDL_tolower_REAL(i32 noundef %i.fl) #8
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = getelementptr i8, ptr %i.fj, i64 1
  store i8 %i.fn, ptr %i.fo, align 1
  %i.fp = load ptr, ptr %i.ep, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.04358.i.i
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = sext i8 %i.fr to i32
  %i.ft = call i32 @SDL_toupper_REAL(i32 noundef %i.fs) #8
  %i.fu = trunc i32 %i.ft to i8
  %i.fv = getelementptr i8, ptr %i.fj, i64 2
  store i8 %i.fu, ptr %i.fv, align 1
  %i.fw = add i64 %.04259.i.i, 4
  %i.fx = getelementptr i8, ptr %i.fj, i64 3
  store i8 93, ptr %i.fx, align 1
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.fy = add i64 %.04259.i.i, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.04259.i.i
  store i8 %i.fg, ptr %i.fz, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1.i.i = phi i64 [ %i.fw, %bb.ak ], [ %i.fy, %bb.al ]
  %i.ga = add nuw i64 %.04358.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.04358.i.i, %i.ez
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !7

.lr.ph63.i.i:                                     ; preds = %._crit_edge.i.i, %bb.aq
  %.04461.i.i = phi ptr [ %i.gt, %bb.aq ], [ %i.fd, %._crit_edge.i.i ] ; 4 uses
  %i.gb = call i64 @SDL_strlen_REAL(ptr noundef nonnull %.04461.i.i) #8
  %i.gc = add i64 %i.gb, 3                        ; 2 uses
  %i.gd = load ptr, ptr %i.by, align 8
  %i.ge = call i32 %i.gd(ptr noundef nonnull %8, i32 noundef 114, ptr noundef null, ptr noundef nonnull %9) #8, !inline_history !6 ; 0 uses
  %i.gf = load ptr, ptr %i.bs, align 8
  %i.gg = call i32 %i.gf(ptr noundef nonnull %9, i32 noundef 117, ptr noundef nonnull %i.e) #8, !inline_history !6 ; 0 uses
  %i.gh = call noalias ptr @SDL_calloc_REAL(i64 noundef %i.gc, i64 noundef 1) #10 ; 5 uses
  store ptr %i.gh, ptr %i.d, align 8
  %.not51.i.i = icmp eq ptr %i.gh, null
  br i1 %.not51.i.i, label %DBus_AppendFilter.exit.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph63.i.i
  store i8 42, ptr %i.gh, align 1
  %i.gi = load i8, ptr %.04461.i.i, align 1
  %.not52.i.i = icmp eq i8 %i.gi, 42
  br i1 %.not52.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gj = getelementptr inbounds nuw i8, ptr %.04461.i.i, i64 1
  %i.gk = load i8, ptr %i.gj, align 1
  %.not53.i.i = icmp eq i8 %i.gk, 0
  br i1 %.not53.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store i8 46, ptr %i.gl, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gn = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.gm, ptr noundef nonnull %.04461.i.i, i64 noundef %i.gc) #8 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.go = load ptr, ptr %i.bs, align 8
  %i.gp = call i32 %i.go(ptr noundef nonnull %9, i32 noundef 115, ptr noundef nonnull %i.d) #8, !inline_history !6 ; 0 uses
  %i.gq = load ptr, ptr %i.d, align 8
  call void @SDL_free_REAL(ptr noundef %i.gq) #8
  %i.gr = load ptr, ptr %i.co, align 8
  %i.gs = call i32 %i.gr(ptr noundef nonnull %8, ptr noundef nonnull %9) #8, !inline_history !6 ; 0 uses
  %i.gt = call ptr @SDL_strtok_r_REAL(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.c) #8 ; 2 uses
  %.not50.i.i = icmp eq ptr %i.gt, null
  br i1 %.not50.i.i, label %DBus_AppendFilter.exit.i, label %.lr.ph63.i.i

DBus_AppendFilter.exit.i:                         ; preds = %bb.aq, %.lr.ph63.i.i, %._crit_edge.i.i, %bb.aj
  call void @SDL_free_REAL(ptr noundef %i.fc) #8
  %i.gu = load ptr, ptr %i.co, align 8
  %i.gv = call i32 %i.gu(ptr noundef nonnull %7, ptr noundef nonnull %8) #8, !inline_history !6 ; 0 uses
  %i.gw = load ptr, ptr %i.co, align 8
  %i.gx = call i32 %i.gw(ptr noundef nonnull %12, ptr noundef nonnull %7) #8, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %DBus_AppendFilters.exit, label %bb.aj, !llvm.loop !8

DBus_AppendFilters.exit:                          ; preds = %DBus_AppendFilter.exit.i, %bb.ai
  %i.gy = load ptr, ptr %i.co, align 8
  %i.gz = call i32 %i.gy(ptr noundef nonnull %11, ptr noundef nonnull %12) #8, !inline_history !5 ; 0 uses
  %i.ha = load ptr, ptr %i.co, align 8
  %i.hb = call i32 %i.ha(ptr noundef nonnull %10, ptr noundef nonnull %11) #8, !inline_history !5 ; 0 uses
  %i.hc = load ptr, ptr %i.co, align 8
  %i.hd = call i32 %i.hc(ptr noundef nonnull %24, ptr noundef nonnull %10) #8, !inline_history !5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.ar

bb.ar:                                            ; preds = %DBus_AppendFilters.exit, %bb.ah
  %.not206 = icmp eq ptr %i.v, null
  br i1 %.not206, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.he = icmp ne ptr %.1161, null                ; 2 uses
  %or.cond5 = select i1 %.1167, i1 %i.he, i1 false
  br i1 %or.cond5, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call fastcc void @DBus_AppendByteArray(ptr noundef %i.ax, ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef %i.v)
  call fastcc void @DBus_AppendStringOption(ptr noundef %i.ax, ptr noundef %24, ptr noundef nonnull @.str.33, ptr noundef nonnull %.1161)
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.hf = icmp ne ptr %.2171, null
  %or.cond7 = select i1 %.2165, i1 %i.hf, i1 false
  %or.cond9 = select i1 %or.cond7, i1 %i.he, i1 false
  br i1 %or.cond9, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call fastcc void @DBus_AppendByteArray(ptr noundef %i.ax, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef %.2171)
  call fastcc void @DBus_AppendStringOption(ptr noundef %i.ax, ptr noundef %24, ptr noundef nonnull @.str.33, ptr noundef nonnull %.1161)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call fastcc void @DBus_AppendByteArray(ptr noundef %i.ax, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef %i.v)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw, %bb.av, %bb.ar
  %.not207 = icmp eq ptr %i.w, null
  br i1 %.not207, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.35, ptr %i.a, align 8
  store ptr %i.w, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.hg = load ptr, ptr %i.by, align 8
  %i.hh = call i32 %i.hg(ptr noundef nonnull %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %4) #8, !inline_history !9 ; 0 uses
  %i.hi = load ptr, ptr %i.bs, align 8
  %i.hj = call i32 %i.hi(ptr noundef nonnull %4, i32 noundef 115, ptr noundef nonnull %i.a) #8, !inline_history !9 ; 0 uses
  %i.hk = load ptr, ptr %i.by, align 8
  %i.hl = call i32 %i.hk(ptr noundef nonnull %4, i32 noundef 118, ptr noundef nonnull @.str.44, ptr noundef nonnull %5) #8, !inline_history !9 ; 0 uses
  %i.hm = load ptr, ptr %i.bs, align 8
  %i.hn = call i32 %i.hm(ptr noundef nonnull %5, i32 noundef 115, ptr noundef nonnull %i.b) #8, !inline_history !9 ; 0 uses
  %i.ho = load ptr, ptr %i.co, align 8
  %i.hp = call i32 %i.ho(ptr noundef nonnull %4, ptr noundef nonnull %5) #8, !inline_history !9 ; 0 uses
  %i.hq = load ptr, ptr %i.co, align 8
  %i.hr = call i32 %i.hq(ptr noundef nonnull %24, ptr noundef nonnull %4) #8, !inline_history !9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.hs = load ptr, ptr %i.co, align 8
  %i.ht = call i32 %i.hs(ptr noundef nonnull %23, ptr noundef nonnull %24) #8 ; 0 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = load ptr, ptr %i.ax, align 8
  %i.hx = call ptr %i.hv(ptr noundef %i.hw, ptr noundef nonnull %i.bf, i32 noundef 2147483647, ptr noundef nonnull %22) #8 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ax, i64 352 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = call i32 %i.hz(ptr noundef nonnull %22) #8
  %.not208 = icmp eq i32 %i.ia, 0
  br i1 %.not208, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ib = load ptr, ptr %22, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.36, ptr noundef %i.ib, ptr noundef %i.id) #8 ; 0 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ax, i64 368
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull %22) #8
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.br

bb.bb:                                            ; preds = %bb.az
  %.not209 = icmp eq ptr %i.hx, null
  br i1 %.not209, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ax, i64 288
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call i32 %i.ii(ptr noundef nonnull %i.hx, ptr noundef nonnull %25) #8 ; 0 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = call i32 %i.il(ptr noundef nonnull %25) #8
  %i.in = icmp eq i32 %i.im, 111
  br i1 %i.in, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.io = getelementptr inbounds nuw i8, ptr %i.ax, i64 304
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull %25, ptr noundef nonnull %i.o) #8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  %i.iq = load ptr, ptr %i.o, align 8
  %.not210 = icmp eq ptr %i.iq, null
  br i1 %.not210, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ir = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.37) #8 ; 0 uses
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.bq

bb.bh:                                            ; preds = %bb.bf
  %i.is = getelementptr inbounds nuw i8, ptr %i.ax, i64 328
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull %i.bf) #8
  %i.iu = call i64 @SDL_strlen_REAL(ptr noundef nonnull @.str.38) #8
  %i.iv = load ptr, ptr %i.o, align 8
  %i.iw = call i64 @SDL_strlen_REAL(ptr noundef %i.iv) #8
  %i.ix = add i64 %i.iw, %i.iu
  %i.iy = shl i64 %i.ix, 32
  %sext = add i64 %i.iy, 8589934592
  %i.iz = ashr exact i64 %sext, 32                ; 2 uses
  %i.ja = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.iz) #8 ; 4 uses
  %.not211 = icmp eq ptr %i.ja, null
  br i1 %.not211, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  %i.jb = load ptr, ptr %i.o, align 8
  %i.jc = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.ja, i64 noundef %i.iz, ptr noundef nonnull @.str.39, ptr noundef %i.jb) #8 ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = load ptr, ptr %i.ax, align 8
  call void %i.je(ptr noundef %i.jf, ptr noundef nonnull %i.ja, ptr noundef nonnull %22) #8
  call void @SDL_free_REAL(ptr noundef nonnull %i.ja) #8
  %i.jg = load ptr, ptr %i.hy, align 8
  %i.jh = call i32 %i.jg(ptr noundef nonnull %22) #8
  %.not212 = icmp eq i32 %i.jh, 0
  br i1 %.not212, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ji = load ptr, ptr %22, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.40, ptr noundef %i.ji, ptr noundef %i.jk) #8 ; 0 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ax, i64 368
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull %22) #8
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.br

bb.bl:                                            ; preds = %bb.bj
  %i.jo = call noalias ptr @SDL_malloc_REAL(i64 noundef 24) #8 ; 6 uses
  %.not213 = icmp eq ptr %i.jo, null
  br i1 %.not213, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  store ptr %1, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %2, ptr %i.jp, align 8
  %i.jq = load ptr, ptr %i.o, align 8
  %i.jr = call noalias ptr @SDL_strdup_REAL(ptr noundef %i.jq) #8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store ptr %i.jr, ptr %i.js, align 8
  %.not214 = icmp eq ptr %i.jr, null
  br i1 %.not214, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @SDL_free_REAL(ptr noundef nonnull %i.jo) #8
  call void %1(ptr noundef %2, ptr noundef null, i32 noundef -1) #8
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = load ptr, ptr %i.ax, align 8
  %i.jw = call i32 %i.ju(ptr noundef %i.jv, ptr noundef nonnull @DBus_MessageFilter, ptr noundef nonnull %i.jo, ptr noundef null) #8 ; 0 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = load ptr, ptr %i.ax, align 8
  call void %i.jy(ptr noundef %i.jz) #8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bi, %bb.bg
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ax, i64 328
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef %i.hx) #8
  br label %bb.br

bb.br:                                            ; preds = %.thread, %bb.z, %bb.bq, %bb.bk, %bb.ba, %bb.ac, %bb.r, %bb.p, %bb.n
  %.3172 = phi ptr [ null, %bb.n ], [ %.2171, %bb.p ], [ %.2171, %bb.ac ], [ %.2171, %bb.r ], [ %.2171, %bb.ba ], [ %.2171, %bb.bk ], [ %.2171, %bb.bq ], [ %.2171, %bb.z ], [ %.2171, %.thread ]
  %.2162 = phi ptr [ null, %bb.n ], [ %.1161, %bb.p ], [ %.1161, %bb.ac ], [ %.1161, %bb.r ], [ %.1161, %bb.ba ], [ %.1161, %bb.bk ], [ %.1161, %bb.bq ], [ %.1161, %bb.z ], [ %.1161, %.thread ]
  call void @SDL_free_REAL(ptr noundef %.2162) #8
  call void @SDL_free_REAL(ptr noundef %.3172) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @SDL_GetPointerProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
