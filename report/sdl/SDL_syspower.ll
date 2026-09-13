Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_syspower?download=true
inline.NumInlined: 26
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Battery\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Device\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Charging\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Discharging\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Full\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Not charging\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"capacity\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"time_to_empty_now\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"energy_now\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"power_now\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"org.freedesktop.UPower\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/org/freedesktop/UPower\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"GetDisplayDevice\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"EnumerateDevices\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"/proc/acpi/battery\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"charging state\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"charging/discharging\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"remaining capacity\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"design capacity\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"/proc/acpi/ac_adapter\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"on-line\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"/proc/apm\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"/sys/class/power_supply\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"org.freedesktop.UPower.Device\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"PowerSupply\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"IsPresent\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Refresh\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Percentage\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"TimeToEmpty\00", align 1
@switch.table.check_upower_device = private unnamed_addr constant [6 x i8] [i8 3, i8 1, i8 1, i8 poison, i8 poison, i8 1], align 4

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_GetPowerInfo_Linux_proc_acpi(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  store i32 -1, ptr %1, align 4
  store i32 -1, ptr %2, align 4
  store i32 0, ptr %0, align 4
  %i.f = tail call noalias ptr @opendir(ptr noundef nonnull @.str.22) ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.ap, label %.preheader48

.preheader48:                                     ; preds = %bb.a
  %i.g = tail call ptr @readdir(ptr noundef nonnull %i.f) #6 ; 2 uses
  %.not2286 = icmp eq ptr %i.g, null
  br i1 %.not2286, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader48, %check_proc_acpi_battery.exit
  %i.h = phi ptr [ %i.bt, %check_proc_acpi_battery.exit ], [ %i.g, %.preheader48 ]
  %.03488 = phi i1 [ %.1, %check_proc_acpi_battery.exit ], [ false, %.preheader48 ] ; 7 uses
  %.03787 = phi i1 [ %.340, %check_proc_acpi_battery.exit ], [ false, %.preheader48 ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.j = call fastcc i32 @open_power_file(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.23) ; 3 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %check_proc_acpi_battery.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = call i64 @read(i32 noundef %i.j, ptr noundef nonnull %i.c, i64 noundef 1023) #6 ; 2 uses
  %i.m = call i32 @close(i32 noundef %i.j) #6     ; 0 uses
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %check_proc_acpi_battery.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  store i8 0, ptr %i.o, align 1
  %i.p = call fastcc i32 @open_power_file(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.24) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %check_proc_acpi_battery.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call i64 @read(i32 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1023) #6 ; 2 uses
  %i.s = call i32 @close(i32 noundef %i.p) #6     ; 0 uses
  %i.t = icmp slt i64 %i.r, 0
  br i1 %i.t, label %check_proc_acpi_battery.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  store i8 0, ptr %i.u, align 1
  br label %.outer253.a

.outer253.a:                                      ; preds = %bb.n, %bb.e
  %.138.ph = phi i1 [ %spec.select, %bb.n ], [ %.03787, %bb.e ] ; 5 uses
  %.070.i.ph = phi ptr [ %.272.i, %bb.n ], [ %i.c, %bb.e ]
  %.034.i.ph = phi i1 [ %.034.i.ph256, %bb.n ], [ false, %bb.e ]
  %.028.i.ph = phi i32 [ %.028.i.ph260, %bb.n ], [ -1, %bb.e ]
  br label %.outer254

.outer254:                                        ; preds = %.outer254.backedge, %.outer253.a
  %.070.i.ph255 = phi ptr [ %.070.i.ph, %.outer253.a ], [ %.272.i, %.outer254.backedge ]
  %.034.i.ph256 = phi i1 [ %.034.i.ph, %.outer253.a ], [ %.034.i.ph256.be, %.outer254.backedge ] ; 3 uses
  %.028.i.ph257 = phi i32 [ %.028.i.ph, %.outer253.a ], [ %.028.i.ph260, %.outer254.backedge ]
  br label %.outer258

.outer258:                                        ; preds = %.outer254, %bb.s
  %.070.i.ph259 = phi ptr [ %.070.i.ph255, %.outer254 ], [ %.272.i, %bb.s ]
  %.028.i.ph260 = phi i32 [ %.028.i.ph257, %.outer254 ], [ %spec.select37.i, %bb.s ] ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.outer258, %bb.r
  %.070.i = phi ptr [ %.272.i, %bb.r ], [ %.070.i.ph259, %.outer258 ]
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.i44.i = phi ptr [ %.070.i, %bb.f ], [ %i.w, %bb.h ] ; 6 uses
  %i.v = load i8, ptr %.0.i44.i, align 1          ; 2 uses
  switch i8 %i.v, label %.preheader104.i [
    i8 32, label %bb.h
    i8 0, label %.loopexit103.i.preheader
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i44.i, i64 1
  br label %bb.g, !llvm.loop !4

.preheader104.i:                                  ; preds = %bb.g, %bb.i
  %i.x = phi i8 [ %.pr.i, %bb.i ], [ %i.v, %bb.g ]
  %.1.i.i = phi ptr [ %i.y, %bb.i ], [ %.0.i44.i, %bb.g ] ; 3 uses
  switch i8 %i.x, label %bb.i [
    i8 0, label %.loopexit103.i.preheader
    i8 58, label %bb.j
  ]

bb.i:                                             ; preds = %.preheader104.i
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.y, align 1
  br label %.preheader104.i, !llvm.loop !5

bb.j:                                             ; preds = %.preheader104.i
  store i8 0, ptr %.1.i.i, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1.pn.i.i = phi ptr [ %.1.i.i, %bb.j ], [ %.2.i.i, %bb.k ]
  %.2.i.i = getelementptr inbounds nuw i8, ptr %.1.pn.i.i, i64 1 ; 7 uses
  %i.z = load i8, ptr %.2.i.i, align 1            ; 2 uses
  switch i8 %i.z, label %.preheader102.i [
    i8 32, label %bb.k
    i8 0, label %.loopexit103.i.preheader
  ]

.preheader102.i:                                  ; preds = %bb.k, %bb.l
  %i.aa = phi i8 [ %.pr76.i, %bb.l ], [ %i.z, %bb.k ]
  %.3.i.i = phi ptr [ %i.ab, %bb.l ], [ %.2.i.i, %bb.k ] ; 4 uses
  switch i8 %i.aa, label %bb.l [
    i8 0, label %make_proc_acpi_key_val.exit.i
    i8 10, label %bb.m
  ]

bb.l:                                             ; preds = %.preheader102.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 2 uses
  %.pr76.i = load i8, ptr %i.ab, align 1
  br label %.preheader102.i, !llvm.loop !6

bb.m:                                             ; preds = %.preheader102.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 0, ptr %.3.i.i, align 1
  br label %make_proc_acpi_key_val.exit.i

make_proc_acpi_key_val.exit.i:                    ; preds = %.preheader102.i, %bb.m
  %.272.i = phi ptr [ %i.ac, %bb.m ], [ %.3.i.i, %.preheader102.i ] ; 4 uses
  %i.ad = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.0.i44.i, ptr noundef nonnull @.str.7) #6
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %make_proc_acpi_key_val.exit.i
  %i.af = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.2.i.i, ptr noundef nonnull @.str.25) #6
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select = select i1 %i.ag, i1 true, i1 %.138.ph
  br label %.outer253.a, !llvm.loop !7

bb.o:                                             ; preds = %make_proc_acpi_key_val.exit.i
  %i.ah = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.0.i44.i, ptr noundef nonnull @.str.26) #6
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aj = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.2.i.i, ptr noundef nonnull @.str.27) #6
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.outer254.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.2.i.i, ptr noundef nonnull @.str.28) #6
  %i.am = icmp eq i32 %i.al, 0
  %spec.select.i = select i1 %i.am, i1 true, i1 %.034.i.ph256
  br label %.outer254.backedge

.outer254.backedge:                               ; preds = %bb.q, %bb.p
  %.034.i.ph256.be = phi i1 [ true, %bb.p ], [ %spec.select.i, %bb.q ]
  br label %.outer254, !llvm.loop !7

bb.r:                                             ; preds = %bb.o
  %i.an = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.0.i44.i, ptr noundef nonnull @.str.29) #6
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.f, !llvm.loop !7

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr null, ptr %i.d, align 8
  %i.ap = call i64 @SDL_strtol_REAL(ptr noundef nonnull %.2.i.i, ptr noundef nonnull %i.d, i32 noundef 10) #6
  %i.aq = load ptr, ptr %i.d, align 8
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 32
  %i.at = trunc i64 %i.ap to i32
  %spec.select37.i = select i1 %i.as, i32 %i.at, i32 %.028.i.ph260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.outer258, !llvm.loop !7

.loopexit103.i.preheader:                         ; preds = %bb.g, %.preheader104.i, %bb.k
  br label %.loopexit103.i.outer

.loopexit103.i.outer:                             ; preds = %.loopexit103.i.preheader, %bb.aa
  %.171.i.ph = phi ptr [ %i.b, %.loopexit103.i.preheader ], [ %.373.i, %bb.aa ]
  %.029.i.ph = phi i32 [ -1, %.loopexit103.i.preheader ], [ %spec.select38.i, %bb.aa ] ; 3 uses
  br label %.loopexit103.i

.loopexit103.i:                                   ; preds = %.loopexit103.i.outer, %make_proc_acpi_key_val.exit53.i
  %.171.i = phi ptr [ %.373.i, %make_proc_acpi_key_val.exit53.i ], [ %.171.i.ph, %.loopexit103.i.outer ]
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.loopexit103.i
  %.0.i45.i = phi ptr [ %.171.i, %.loopexit103.i ], [ %i.av, %bb.u ] ; 4 uses
  %i.au = load i8, ptr %.0.i45.i, align 1         ; 2 uses
  switch i8 %i.au, label %.preheader99.i [
    i8 32, label %bb.u
    i8 0, label %.loopexit.i
  ]

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i45.i, i64 1
  br label %bb.t, !llvm.loop !4

.preheader99.i:                                   ; preds = %bb.t, %bb.v
  %i.aw = phi i8 [ %.pr83.i, %bb.v ], [ %i.au, %bb.t ]
  %.1.i47.i = phi ptr [ %i.ax, %bb.v ], [ %.0.i45.i, %bb.t ] ; 3 uses
  switch i8 %i.aw, label %bb.v [
    i8 0, label %.loopexit.i
    i8 58, label %bb.w
  ]

bb.v:                                             ; preds = %.preheader99.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i47.i, i64 1 ; 2 uses
  %.pr83.i = load i8, ptr %i.ax, align 1
  br label %.preheader99.i, !llvm.loop !5

bb.w:                                             ; preds = %.preheader99.i
  store i8 0, ptr %.1.i47.i, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.1.pn.i48.i = phi ptr [ %.1.i47.i, %bb.w ], [ %.2.i49.i, %bb.x ]
  %.2.i49.i = getelementptr inbounds nuw i8, ptr %.1.pn.i48.i, i64 1 ; 4 uses
  %i.ay = load i8, ptr %.2.i49.i, align 1         ; 2 uses
  switch i8 %i.ay, label %.preheader.i [
    i8 32, label %bb.x
    i8 0, label %.loopexit.i
  ]

.preheader.i:                                     ; preds = %bb.x, %bb.y
  %i.az = phi i8 [ %.pr84.i, %bb.y ], [ %i.ay, %bb.x ]
  %.3.i50.i = phi ptr [ %i.ba, %bb.y ], [ %.2.i49.i, %bb.x ] ; 4 uses
  switch i8 %i.az, label %bb.y [
    i8 0, label %make_proc_acpi_key_val.exit53.i
    i8 10, label %bb.z
  ]

bb.y:                                             ; preds = %.preheader.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.3.i50.i, i64 1 ; 2 uses
  %.pr84.i = load i8, ptr %i.ba, align 1
  br label %.preheader.i, !llvm.loop !6

bb.z:                                             ; preds = %.preheader.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.3.i50.i, i64 1
  store i8 0, ptr %.3.i50.i, align 1
  br label %make_proc_acpi_key_val.exit53.i

make_proc_acpi_key_val.exit53.i:                  ; preds = %.preheader.i, %bb.z
  %.373.i = phi ptr [ %i.bb, %bb.z ], [ %.3.i50.i, %.preheader.i ] ; 2 uses
  %i.bc = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.0.i45.i, ptr noundef nonnull @.str.30) #6
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.aa, label %.loopexit103.i, !llvm.loop !8

bb.aa:                                            ; preds = %make_proc_acpi_key_val.exit53.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store ptr null, ptr %i.e, align 8
  %i.be = call i64 @SDL_strtol_REAL(ptr noundef nonnull %.2.i49.i, ptr noundef nonnull %i.e, i32 noundef 10) #6
  %i.bf = load ptr, ptr %i.e, align 8
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 32
  %i.bi = trunc i64 %i.be to i32
  %spec.select38.i = select i1 %i.bh, i32 %i.bi, i32 %.029.i.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %.loopexit103.i.outer, !llvm.loop !8

.loopexit.i:                                      ; preds = %bb.t, %.preheader99.i, %bb.x
  %i.bj = icmp sgt i32 %.029.i.ph, -1
  %i.bk = icmp sgt i32 %.028.i.ph260, -1
  %or.cond.i = select i1 %i.bj, i1 %i.bk, i1 false
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 0                         ; 2 uses
  br i1 %or.cond.i, label %5, label %.thread.i

5:                                                ; preds = %.loopexit.i
  br i1 %4, label %bb.ab, label %check_proc_acpi_battery.exit

bb.ab:                                            ; preds = %5
  %i.bl = uitofp nneg i32 %.028.i.ph260 to float
  %i.bm = uitofp nneg i32 %.029.i.ph to float
  %i.bn = fdiv float %i.bl, %i.bm
  %i.bo = fmul float %i.bn, 1.000000e+02
  %i.bp = fptosi float %i.bo to i32
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.bp, i32 100)
  %i.bq = load i32, ptr %2, align 4
  br label %.thread93.i

.thread.i:                                        ; preds = %.loopexit.i
  br i1 %4, label %bb.ac, label %check_proc_acpi_battery.exit

bb.ac:                                            ; preds = %.thread.i
  %.pre159170.i = load i32, ptr %2, align 4       ; 2 uses
  %i.br = icmp slt i32 %.pre159170.i, 0
  br label %.thread93.i

.thread93.i:                                      ; preds = %bb.ac, %bb.ab
  %6 = phi i32 [ %.pre159170.i, %bb.ac ], [ %i.bq, %bb.ab ]
  %.09095.i = phi i32 [ -1, %bb.ac ], [ %spec.store.select.i, %bb.ab ] ; 2 uses
  %.032.i = phi i1 [ %i.br, %bb.ac ], [ false, %bb.ab ]
  %i.bs = icmp sgt i32 %.09095.i, %6
  %spec.select40.i = select i1 %i.bs, i1 true, i1 %.032.i
  br i1 %spec.select40.i, label %bb.ad, label %check_proc_acpi_battery.exit

bb.ad:                                            ; preds = %.thread93.i
  store i32 -1, ptr %1, align 4
  store i32 %.09095.i, ptr %2, align 4
  br label %check_proc_acpi_battery.exit

check_proc_acpi_battery.exit:                     ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %5, %.thread.i, %.thread93.i, %bb.ad
  %.340 = phi i1 [ %.03787, %.lr.ph ], [ %.03787, %bb.b ], [ %.03787, %bb.c ], [ %.03787, %bb.d ], [ %.138.ph, %bb.ad ], [ %.138.ph, %.thread93.i ], [ %.138.ph, %5 ], [ %.138.ph, %.thread.i ] ; 2 uses
  %.1 = phi i1 [ %.03488, %.lr.ph ], [ %.03488, %bb.b ], [ %.03488, %bb.c ], [ %.03488, %bb.d ], [ %.034.i.ph256, %bb.ad ], [ %.03488, %.thread93.i ], [ %.03488, %5 ], [ %.03488, %.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.bt = call ptr @readdir(ptr noundef nonnull %i.f) #6 ; 2 uses
  %.not22 = icmp eq ptr %i.bt, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %check_proc_acpi_battery.exit, %.preheader48
  %.037.lcssa = phi i1 [ false, %.preheader48 ], [ %.340, %check_proc_acpi_battery.exit ]
  %.034.lcssa = phi i1 [ false, %.preheader48 ], [ %.1, %check_proc_acpi_battery.exit ]
  %i.bu = call i32 @closedir(ptr noundef nonnull %i.f) ; 0 uses
  %i.bv = call noalias ptr @opendir(ptr noundef nonnull @.str.31) ; 4 uses
  %.not23 = icmp eq ptr %i.bv, null
  br i1 %.not23, label %bb.ap, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.bw = call ptr @readdir(ptr noundef nonnull %i.bv) #6 ; 2 uses
  %.not2490 = icmp eq ptr %i.bw, null
  br i1 %.not2490, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %.preheader, %check_proc_acpi_ac_adapter.exit
  %i.bx = phi ptr [ %i.cr, %check_proc_acpi_ac_adapter.exit ], [ %i.bw, %.preheader ]
  %.03591 = phi i1 [ %.3, %check_proc_acpi_ac_adapter.exit ], [ false, %.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bz = call fastcc i32 @open_power_file(ptr noundef nonnull @.str.31, ptr noundef nonnull %i.by, ptr noundef nonnull @.str.23) ; 3 uses
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %check_proc_acpi_ac_adapter.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph92
  %i.cb = call i64 @read(i32 noundef %i.bz, ptr noundef nonnull %i.a, i64 noundef 255) #6 ; 2 uses
  %i.cc = call i32 @close(i32 noundef %i.bz) #6   ; 0 uses
  %i.cd = icmp slt i64 %i.cb, 0
  br i1 %i.cd, label %check_proc_acpi_ac_adapter.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  store i8 0, ptr %i.ce, align 1
  br label %.outer

.outer:                                           ; preds = %bb.ao, %bb.af
  %.136.ph = phi i1 [ %spec.select41, %bb.ao ], [ %.03591, %bb.af ] ; 4 uses
  %.08.i.ph = phi ptr [ %.19.i, %bb.ao ], [ %i.a, %bb.af ]
  br label %bb.ag

bb.ag:                                            ; preds = %.outer, %make_proc_acpi_key_val.exit.i30
  %.08.i = phi ptr [ %.19.i, %make_proc_acpi_key_val.exit.i30 ], [ %.08.i.ph, %.outer ]
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %.0.i3.i = phi ptr [ %.08.i, %bb.ag ], [ %i.cg, %bb.ai ] ; 4 uses
  %i.cf = load i8, ptr %.0.i3.i, align 1          ; 2 uses
  switch i8 %i.cf, label %.preheader16.i [
    i8 32, label %bb.ai
    i8 0, label %check_proc_acpi_ac_adapter.exit
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 1
  br label %bb.ah, !llvm.loop !4

.preheader16.i:                                   ; preds = %bb.ah, %bb.aj
  %i.ch = phi i8 [ %.pr.i31, %bb.aj ], [ %i.cf, %bb.ah ]
  %.1.i.i25 = phi ptr [ %i.ci, %bb.aj ], [ %.0.i3.i, %bb.ah ] ; 3 uses
  switch i8 %i.ch, label %bb.aj [
    i8 0, label %check_proc_acpi_ac_adapter.exit
    i8 58, label %bb.ak
  ]

bb.aj:                                            ; preds = %.preheader16.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.1.i.i25, i64 1 ; 2 uses
  %.pr.i31 = load i8, ptr %i.ci, align 1
  br label %.preheader16.i, !llvm.loop !5

bb.ak:                                            ; preds = %.preheader16.i
  store i8 0, ptr %.1.i.i25, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.1.pn.i.i26 = phi ptr [ %.1.i.i25, %bb.ak ], [ %.2.i.i27, %bb.al ]
  %.2.i.i27 = getelementptr inbounds nuw i8, ptr %.1.pn.i.i26, i64 1 ; 4 uses
  %i.cj = load i8, ptr %.2.i.i27, align 1         ; 2 uses
  switch i8 %i.cj, label %.preheader.i28 [
    i8 32, label %bb.al
    i8 0, label %check_proc_acpi_ac_adapter.exit
  ]

.preheader.i28:                                   ; preds = %bb.al, %bb.am
  %i.ck = phi i8 [ %.pr11.i, %bb.am ], [ %i.cj, %bb.al ]
  %.3.i.i29 = phi ptr [ %i.cl, %bb.am ], [ %.2.i.i27, %bb.al ] ; 4 uses
  switch i8 %i.ck, label %bb.am [
    i8 0, label %make_proc_acpi_key_val.exit.i30
    i8 10, label %bb.an
  ]

bb.am:                                            ; preds = %.preheader.i28
  %i.cl = getelementptr inbounds nuw i8, ptr %.3.i.i29, i64 1 ; 2 uses
  %.pr11.i = load i8, ptr %i.cl, align 1
  br label %.preheader.i28, !llvm.loop !6

bb.an:                                            ; preds = %.preheader.i28
  %i.cm = getelementptr inbounds nuw i8, ptr %.3.i.i29, i64 1
  store i8 0, ptr %.3.i.i29, align 1
  br label %make_proc_acpi_key_val.exit.i30

make_proc_acpi_key_val.exit.i30:                  ; preds = %.preheader.i28, %bb.an
  %.19.i = phi ptr [ %i.cm, %bb.an ], [ %.3.i.i29, %.preheader.i28 ] ; 2 uses
  %i.cn = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.0.i3.i, ptr noundef nonnull @.str.23) #6
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ao, label %bb.ag, !llvm.loop !10

bb.ao:                                            ; preds = %make_proc_acpi_key_val.exit.i30
  %i.cp = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.2.i.i27, ptr noundef nonnull @.str.32) #6
  %i.cq = icmp eq i32 %i.cp, 0
  %spec.select41 = select i1 %i.cq, i1 true, i1 %.136.ph
  br label %.outer, !llvm.loop !10

check_proc_acpi_ac_adapter.exit:                  ; preds = %bb.ah, %.preheader16.i, %bb.al, %.lr.ph92, %bb.ae
  %.3 = phi i1 [ %.03591, %.lr.ph92 ], [ %.03591, %bb.ae ], [ %.136.ph, %.preheader16.i ], [ %.136.ph, %bb.al ], [ %.136.ph, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.cr = call ptr @readdir(ptr noundef nonnull %i.bv) #6 ; 2 uses
  %.not24 = icmp eq ptr %i.cr, null
  br i1 %.not24, label %._crit_edge93.loopexit, label %.lr.ph92, !llvm.loop !11

._crit_edge93.loopexit:                           ; preds = %check_proc_acpi_ac_adapter.exit
  %i.cs = select i1 %.3, i32 4, i32 1
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge93.loopexit, %.preheader
  %.035.lcssa = phi i32 [ 1, %.preheader ], [ %i.cs, %._crit_edge93.loopexit ]
  %i.ct = call i32 @closedir(ptr noundef nonnull %i.bv) ; 0 uses
  %spec.select194 = select i1 %.034.lcssa, i32 3, i32 %.035.lcssa
  %.sink = select i1 %.037.lcssa, i32 %spec.select194, i32 2
  store i32 %.sink, ptr %0, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge93, %._crit_edge, %bb.a
  %.0 = phi i1 [ false, %._crit_edge ], [ false, %bb.a ], [ true, %._crit_edge93 ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_GetPowerInfo_Linux_proc_apm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca [128 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4
  %i.g = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.33, i32 noundef 524288) #6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %next_string.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i64 @read(i32 noundef %i.g, ptr noundef nonnull %i.f, i64 noundef 127) #6 ; 2 uses
  %i.j = tail call i32 @close(i32 noundef %i.g) #6 ; 0 uses
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %next_string.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i8 0, ptr %i.l, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %i.m = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  switch i8 %i.m, label %.preheader.i [
    i8 32, label %bb.d
    i8 0, label %next_string.exit.thread
  ]

.preheader.i:                                     ; preds = %bb.d, %bb.e
  %i.o = phi i8 [ %.pr.i, %bb.e ], [ %i.m, %bb.d ]
  %.1.i = phi ptr [ %i.p, %bb.e ], [ %.0.i, %bb.d ] ; 4 uses
  switch i8 %i.o, label %bb.e [
end_hunk_0
begin_hunk_1_@SDL_GetPowerInfo_Linux_org_freedesktop_upower:bb.a
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallMethodOnConnection(ptr noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 111, ptr noundef nonnull %i.c, i32 noundef 0) #6
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 4
  store i32 -1, ptr %1, align 4
  store i32 -1, ptr %2, align 4
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.c, align 8
  call fastcc void @check_upower_device(ptr noundef %i.i, ptr noundef %i.j, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @SDL_DBus_FreeReply(ptr noundef nonnull %i.a) #6
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallMethodOnConnection(ptr noundef %i.k, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 97, i32 noundef 111, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 0) #6
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %0, align 4
  store i32 -1, ptr %1, align 4
  store i32 -1, ptr %2, align 4
  %i.m = load i32, ptr %i.d, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8
  call fastcc void @check_upower_device(ptr noundef %i.o, ptr noundef %i.r, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.d, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  call void %i.w(ptr noundef %i.x) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.a
  %.023 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %._crit_edge ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i1 %.023
}

declare ptr @SDL_DBus_GetContext() local_unnamed_addr #3

declare zeroext i1 @SDL_DBus_CallMethodOnConnection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @check_upower_device(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store double 0.000000e+00, ptr %i.c, align 8
  %i.d = call zeroext i1 @SDL_DBus_QueryPropertyOnConnection(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 117, ptr noundef nonnull %i.a) #6
  %i.e = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.e, 2
  %or.cond = select i1 %i.d, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = call zeroext i1 @SDL_DBus_QueryPropertyOnConnection(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.38, i32 noundef 98, ptr noundef nonnull %i.a) #6
  %i.g = load i32, ptr %i.a, align 4
  %.not41 = icmp ne i32 %i.g, 0
  %or.cond45.not = select i1 %i.f, i1 %.not41, i1 false
  br i1 %or.cond45.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = call zeroext i1 @SDL_DBus_QueryPropertyOnConnection(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.39, i32 noundef 98, ptr noundef nonnull %i.a) #6
  br i1 %i.h, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.a, align 4
  %.not42 = icmp eq i32 %i.i, 0
  br i1 %.not42, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallMethodOnConnection(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0) #6 ; 0 uses
  %i.k = call zeroext i1 @SDL_DBus_QueryPropertyOnConnection(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.41, i32 noundef 117, ptr noundef nonnull %i.a) #6
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 4              ; 2 uses
  %switch.tableidx = add i32 %i.l, -1             ; 3 uses
  %i.m = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 39, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond52 = select i1 %i.m, i1 %switch.lobit, i1 false
  br i1 %or.cond52, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = and i32 %i.l, -2
  %or.cond5 = icmp eq i32 %i.n, 4
  %. = select i1 %or.cond5, i32 4, i32 0
  br label %bb.h

switch.lookup:                                    ; preds = %bb.f
  %i.o = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.check_upower_device, i64 %i.o
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.g, %bb.e, %bb.d
  %.038 = phi i32 [ 0, %bb.e ], [ %switch.ext, %switch.lookup ], [ %., %bb.g ], [ 2, %bb.d ]
  %i.p = call zeroext i1 @SDL_DBus_QueryPropertyOnConnection(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.42, i32 noundef 100, ptr noundef nonnull %i.c) #6
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = load double, ptr %i.c, align 8
  %i.r = fptosi double %i.q to i32
  %i.s = call i32 @llvm.smin.i32(i32 %i.r, i32 100)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i32 [ %i.s, %bb.i ], [ -1, %bb.h ]    ; 3 uses
  %i.t = call zeroext i1 @SDL_DBus_QueryPropertyOnConnection(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.43, i32 noundef 120, ptr noundef nonnull %i.b) #6
  %i.u = load i64, ptr %i.b, align 8
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = select i1 %i.t, i1 %i.w, i1 false        ; 2 uses
  %.037 = select i1 %i.x, i32 %i.v, i32 -1        ; 2 uses
  %.pre46 = load i32, ptr %3, align 4             ; 2 uses
  %i.y = icmp sgt i32 %.pre46, -1
  %or.cond48.not = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond48.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = icmp slt i32 %.0, 0
  %.pre = load i32, ptr %4, align 4               ; 2 uses
  %i.aa = icmp slt i32 %.pre, 0
  %or.cond49 = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = icmp sgt i32 %.0, %.pre
  %or.cond50 = select i1 %or.cond49, i1 true, i1 %i.ab
  br i1 %or.cond50, label %.critedge, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ac = icmp sgt i32 %.037, %.pre46
  br i1 %i.ac, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.k, %bb.l
  store i32 %.037, ptr %3, align 4
  store i32 %.0, ptr %4, align 4
  store i32 %.038, ptr %2, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.critedge, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @SDL_DBus_FreeReply(ptr noundef) local_unnamed_addr #3

declare i64 @SDL_strtol_REAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @open_power_file(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @SDL_strlen_REAL(ptr noundef %0) #6
  %i.b = tail call i64 @SDL_strlen_REAL(ptr noundef nonnull %1) #6
  %i.c = tail call i64 @SDL_strlen_REAL(ptr noundef %2) #6
  %i.d = add i64 %i.a, 3
  %i.e = add i64 %i.d, %i.b
  %i.f = add i64 %i.e, %i.c                       ; 2 uses
  %i.g = alloca i8, i64 %i.f, align 16            ; 2 uses
  %i.h = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.g, i64 noundef %i.f, ptr noundef nonnull @.str.35, ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #6 ; 0 uses
  %i.i = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.g, i32 noundef 524288) #6
  ret i32 %i.i
}

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @SDL_DBus_QueryPropertyOnConnection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
end_hunk_1
