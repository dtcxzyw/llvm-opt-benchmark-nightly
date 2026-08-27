Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/macho?download=true
inline.NumInlined: 13
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.macho_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.macho_segment_cmd = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macho_segment_cmd64 = type { [16 x i8], i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.macho_section = type { [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macho_section64 = type { [16 x i8], [16 x i8], i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.macho_thread_state_ppc = type { i32, i32, [32 x i32], i32, i32, i32, i32, i32, i32 }
%struct.macho_thread_state_ppc64 = type { i64, i64, [32 x i64], i32, i64, i64, i64, i32 }
%struct.macho_fat_arch = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"cli_scanmacho: Assumption Violated: fileinfo->offset != 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cli_scanmacho: Can't read header\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"cli_scanmacho: Incorrect magic\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"MACHO: CPU Type: Intel 32-bit\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"MACHO: CPU Type: Intel 64-bit\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"MACHO: CPU Type: ARM\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"MACHO: CPU Type: SPARC\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"MACHO: CPU Type: POWERPC 32-bit\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"MACHO: CPU Type: POWERPC 64-bit\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"MACHO: CPU Type: ** UNKNOWN ** (%u)\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"MACHO: Filetype: Relocatable object file\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"MACHO: Filetype: Executable\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"MACHO: Filetype: Fixed VM shared library file\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"MACHO: Filetype: Core file\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"MACHO: Filetype: Preloaded executable file\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"MACHO: Filetype: Dynamically bound shared library\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"MACHO: Filetype: Dynamic link editor\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"MACHO: Filetype: Dynamically bound bundle file\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"MACHO: Filetype: Shared library stub for static\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"MACHO: Filetype: ** UNKNOWN ** (0x%x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"MACHO: Number of load commands: %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"MACHO: Size of load commands: %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"cli_scanmacho: Invalid number of load commands (%u)\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Heuristics.Broken.Executable\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"cli_scanmacho: Can't read load command\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"cli_scanmacho: Can't read segment command\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"MACHO: Segment name: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"MACHO: Number of sections: %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"cli_scanmacho: Invalid number of sections\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"MACHO: ------------------\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"cli_scanmacho: Can't allocate memory for 'sections'\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"cli_scanmacho: Can't read section\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"cli_scanmacho: Section aligned is malformed\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"MACHO: --- Section %u ---\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"MACHO: Name: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"MACHO: Virtual address: 0x%x\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"MACHO: Virtual size: %u\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"MACHO: Raw size: %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"MACHO: File offset: %u\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"cli_scanmacho: Can't read thread_state_x86\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"cli_scanmacho: Can't read thread_state_ppc\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"cli_scanmacho: Can't read thread_state_ppc64\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Entry Point: 0x%x\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"cli_scanmacho: Can't calculate EP offset\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"Entry Point file offset: %u\0A\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"cli_scanmacho_unibin: Can't read fat_header\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"cli_scanmacho_unibin: Incorrect magic\0A\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"cli_scanmacho_unibin: Invalid number of architectures\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"UNIBIN: Number of architectures: %u\0A\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"cli_scanmacho_unibin: Can't read fat_arch\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"UNIBIN: Binary %u of %u\0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"UNIBIN: File offset: %u\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"UNIBIN: File size: %u\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"Invalid fat offset: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"cli_unpackmacho: can't allocate memory for bc_ctx\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Running bytecode hook\0A\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Finished running bytecode hook\0A\00", align 1
@.str.58 = private unnamed_addr constant [69 x i8] c"cli_unpackmacho: Unpacked and rebuilt Mach-O executable saved in %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"***** Scanning rebuilt Mach-O file *****\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @cli_scanmacho(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.macho_hdr, align 4          ; 12 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %3 = alloca %struct.macho_segment_cmd, align 4  ; 5 uses
  %4 = alloca %struct.macho_segment_cmd64, align 8 ; 5 uses
  %5 = alloca %struct.macho_section, align 4      ; 8 uses
  %6 = alloca %struct.macho_section64, align 8    ; 8 uses
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %7 = alloca %struct.macho_thread_state_ppc, align 4 ; 5 uses
  %8 = alloca %struct.macho_thread_state_ppc64, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 11 uses
  %.not.not = icmp eq ptr %1, null                ; 14 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %.not219 = icmp eq i32 %i.e, 0
  br i1 %.not219, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %fmap_readn.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 28) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = tail call ptr %i.i(ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef %spec.select.i, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i = icmp eq ptr %i.j, null
  br i1 %.not26.i, label %fmap_readn.exit.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 1 %i.j, i64 %spec.select.i, i1 false)
  %.not220 = icmp ugt i64 %i.g, 27
  br i1 %.not220, label %bb.f, label %fmap_readn.exit.thread

fmap_readn.exit.thread:                           ; preds = %bb.e, %bb.d, %fmap_readn.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #7
  br label %.thread360

bb.f:                                             ; preds = %fmap_readn.exit
  %.0..0..0.302 = load i32, ptr %2, align 4, !tbaa !37
  switch i32 %.0..0..0.302, label %bb.i [
    i32 -17958194, label %bb.k
    i32 -822415874, label %bb.j
    i32 -17958193, label %bb.g
    i32 -805638658, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #7
  br label %.thread360

bb.j:                                             ; preds = %bb.f, %bb.h
  %i.k = phi i1 [ true, %bb.h ], [ false, %bb.f ]
  %i.l = phi i1 [ false, %bb.h ], [ true, %bb.f ]
  %.4..4..4..sroa_idx598 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.4..4..4.306 = load i32, ptr %.4..4..4..sroa_idx598, align 4
  %i.m = tail call i32 @llvm.bswap.i32(i32 %.4..4..4.306)
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  %.ph = phi i1 [ false, %bb.f ], [ true, %bb.g ]
  %.ph330 = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %.4..4..4..sroa_idx599 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.4..4..4.306333 = load i32, ptr %.4..4..4..sroa_idx599, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.n = phi i1 [ %.ph330, %bb.k ], [ %i.l, %bb.j ]
  %i.o = phi i1 [ %.ph, %bb.k ], [ %i.k, %bb.j ]  ; 4 uses
  %.not221334 = phi i1 [ true, %bb.k ], [ false, %bb.j ] ; 17 uses
  %i.p = phi i32 [ %.4..4..4.306333, %bb.k ], [ %i.m, %bb.j ] ; 2 uses
  switch i32 %i.p, label %bb.y [
    i32 7, label %bb.m
    i32 16777223, label %bb.o
    i32 12, label %bb.q
    i32 14, label %bb.s
    i32 18, label %bb.u
    i32 16777234, label %bb.w
  ]

bb.m:                                             ; preds = %bb.l
  br i1 %.not.not, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #7
  br label %bb.aa

bb.o:                                             ; preds = %bb.l
  br i1 %.not.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #7
  br label %bb.aa

bb.q:                                             ; preds = %bb.l
  br i1 %.not.not, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #7
  br label %bb.aa

bb.s:                                             ; preds = %bb.l
  br i1 %.not.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #7
  br label %bb.aa

bb.u:                                             ; preds = %bb.l
  br i1 %.not.not, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #7
  br label %bb.aa

bb.w:                                             ; preds = %bb.l
  br i1 %.not.not, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #7
  br label %bb.aa

bb.y:                                             ; preds = %bb.l
  br i1 %.not.not, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.p) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.v, %bb.n, %bb.z, %bb.t, %bb.r, %bb.p
  %i.q = phi i1 [ true, %bb.x ], [ true, %bb.v ], [ true, %bb.n ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.z ]
  %.0199.ph = phi i32 [ 3, %bb.x ], [ 2, %bb.v ], [ 1, %bb.n ], [ 0, %bb.t ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.z ]
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.12..12..12.312 = load i32, ptr %.12..12..12..sroa_idx, align 4 ; 2 uses
  %i.r = tail call i32 @llvm.bswap.i32(i32 %.12..12..12.312)
  %i.s = select i1 %.not221334, i32 %.12..12..12.312, i32 %i.r ; 2 uses
  switch i32 %i.s, label %bb.ak [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 4, label %bb.ae
    i32 5, label %bb.af
    i32 6, label %bb.ag
    i32 7, label %bb.ah
    i32 8, label %bb.ai
    i32 9, label %bb.aj
  ]

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #7
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #7
  br label %bb.al

bb.ad:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #7
  br label %bb.al

bb.ae:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #7
  br label %bb.al

bb.af:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #7
  br label %bb.al

bb.ag:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #7
  br label %bb.al

bb.ah:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16) #7
  br label %bb.al

bb.ai:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #7
  br label %bb.al

bb.aj:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #7
  br label %bb.al

bb.ak:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %i.s) #7
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.16..16..16.318 = load i32, ptr %.16..16..16..sroa_idx, align 4 ; 2 uses
  %i.t = tail call i32 @llvm.bswap.i32(i32 %.16..16..16.318)
  %i.u = select i1 %.not221334, i32 %.16..16..16.318, i32 %i.t
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, i32 noundef %i.u) #7
  %.20..20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.20..20..20.327 = load i32, ptr %.20..20..20..sroa_idx, align 4 ; 2 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %.20..20..20.327)
  %i.w = select i1 %.not221334, i32 %.20..20..20.327, i32 %i.v
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %i.w) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.q, %bb.s, %bb.y, %bb.m, %bb.u, %bb.w, %bb.al
  %.0199343 = phi i32 [ 1, %bb.m ], [ %.0199.ph, %bb.al ], [ 0, %bb.y ], [ 0, %bb.s ], [ 2, %bb.u ], [ 0, %bb.o ], [ 3, %bb.w ], [ 0, %bb.q ]
  %.not225341 = phi i1 [ true, %bb.m ], [ %i.q, %bb.al ], [ false, %bb.y ], [ false, %bb.s ], [ true, %bb.u ], [ false, %bb.o ], [ true, %bb.w ], [ false, %bb.q ]
  %.16..16..16..sroa_idx600 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.16..16..16.322 = load i32, ptr %.16..16..16..sroa_idx600, align 4 ; 2 uses
  %i.x = tail call i32 @llvm.bswap.i32(i32 %.16..16..16.322)
  %i.y = select i1 %.not221334, i32 %.16..16..16.322, i32 %i.x ; 3 uses
  %.16..16..16..sroa_idx601 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.y, ptr %.16..16..16..sroa_idx601, align 4, !tbaa !39
  %i.z = add i32 %i.y, -1025
  %or.cond = icmp ult i32 %i.z, -1024
  br i1 %or.cond, label %bb.am, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %spec.select = select i1 %i.o, i64 32, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.16..16..16..sroa_idx602 = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.ao

bb.am:                                            ; preds = %.critedge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.y) #7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !41
  %i.ap = and i32 %i.ao, 2
  %.not246 = icmp eq i32 %i.ap, 0
  br i1 %.not246, label %bb.cg, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.aq = tail call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %.thread360, label %bb.cg

bb.ao:                                            ; preds = %.lr.ph, %.thread521
  %.1190461 = phi i64 [ %spec.select, %.lr.ph ], [ %.8, %.thread521 ] ; 11 uses
  %.0192460 = phi ptr [ null, %.lr.ph ], [ %.1193, %.thread521 ] ; 15 uses
  %.0194459 = phi i32 [ 0, %.lr.ph ], [ %.3197, %.thread521 ] ; 7 uses
  %.0204458 = phi i32 [ 0, %.lr.ph ], [ %.2206, %.thread521 ] ; 9 uses
  %.0208457 = phi i32 [ 0, %.lr.ph ], [ %i.ib, %.thread521 ]
  %i.as = load i64, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %or.cond392.not = icmp ult i64 %.1190461, %i.as
  br i1 %or.cond392.not, label %bb.ap, label %fmap_readn.exit253.thread

bb.ap:                                            ; preds = %bb.ao
  %i.at = sub nuw i64 %i.as, %.1190461            ; 2 uses
  %spec.select.i250 = call i64 @llvm.umin.i64(i64 %i.at, i64 8) ; 2 uses
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.av = call ptr %i.au(ptr noundef nonnull %i.c, i64 noundef %.1190461, i64 noundef %spec.select.i250, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i251 = icmp eq ptr %i.av, null
  br i1 %.not26.i251, label %fmap_readn.exit253.thread, label %fmap_readn.exit253

fmap_readn.exit253:                               ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0, ptr nonnull align 1 %i.av, i64 %spec.select.i250, i1 false)
  %.not224 = icmp ugt i64 %i.at, 7
  br i1 %.not224, label %bb.ar, label %fmap_readn.exit253.thread

fmap_readn.exit253.thread:                        ; preds = %bb.ap, %bb.ao, %fmap_readn.exit253
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #7
  call void @free(ptr noundef %.0192460) #7
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !41
  %i.ba = and i32 %i.az, 2
  %.not245 = icmp eq i32 %i.ba, 0
  br i1 %.not245, label %bb.cg, label %bb.aq

bb.aq:                                            ; preds = %fmap_readn.exit253.thread
  %i.bb = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.thread360, label %bb.cg

bb.ar:                                            ; preds = %fmap_readn.exit253
  %i.bd = add i64 %.1190461, 8                    ; 6 uses
  %.0..0..0.294 = load i32, ptr %.sroa.0, align 8 ; 2 uses
  %i.be = call i32 @llvm.bswap.i32(i32 %.0..0..0.294)
  %i.bf = select i1 %.not221334, i32 %.0..0..0.294, i32 %i.be ; 4 uses
  store i32 %i.bf, ptr %.sroa.0, align 8, !tbaa !43
  %i.bg = icmp eq i32 %i.bf, 25
  %or.cond7 = select i1 %i.o, i1 %i.bg, i1 false
  %i.bh = icmp eq i32 %i.bf, 1
  %or.cond10 = select i1 %i.n, i1 %i.bh, i1 false
  %or.cond247 = select i1 %or.cond7, i1 true, i1 %or.cond10
  br i1 %or.cond247, label %bb.as, label %bb.cb

bb.as:                                            ; preds = %bb.ar
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !33  ; 3 uses
  %or.cond393.not = icmp ult i64 %i.bd, %i.bi     ; 2 uses
  br i1 %i.o, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  br i1 %or.cond393.not, label %bb.au, label %fmap_readn.exit258.thread

bb.au:                                            ; preds = %bb.at
  %i.bj = sub nuw i64 %i.bi, %i.bd                ; 2 uses
  %spec.select.i255 = call i64 @llvm.umin.i64(i64 %i.bj, i64 64) ; 2 uses
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.bl = call ptr %i.bk(ptr noundef nonnull %i.c, i64 noundef %i.bd, i64 noundef %spec.select.i255, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i256 = icmp eq ptr %i.bl, null
  br i1 %.not26.i256, label %fmap_readn.exit258.thread, label %fmap_readn.exit258

fmap_readn.exit258:                               ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 1 %i.bl, i64 %spec.select.i255, i1 false)
  %.not234 = icmp ugt i64 %i.bj, 63
  br i1 %.not234, label %bb.aw, label %fmap_readn.exit258.thread

fmap_readn.exit258.thread:                        ; preds = %bb.au, %bb.at, %fmap_readn.exit258
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #7
  call void @free(ptr noundef %.0192460) #7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !41
  %i.bq = and i32 %i.bp, 2
  %.not244 = icmp eq i32 %i.bq, 0
  br i1 %.not244, label %bb.cg, label %bb.av

bb.av:                                            ; preds = %fmap_readn.exit258.thread
  %i.br = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %.thread360, label %bb.cg

bb.aw:                                            ; preds = %fmap_readn.exit258
  %i.bt = add i64 %.1190461, 72
  %i.bu = load i32, ptr %i.ac, align 8
  br label %bb.bb

bb.ax:                                            ; preds = %bb.as
  br i1 %or.cond393.not, label %bb.ay, label %fmap_readn.exit263.thread

bb.ay:                                            ; preds = %bb.ax
  %i.bv = sub nuw i64 %i.bi, %i.bd                ; 2 uses
  %spec.select.i260 = call i64 @llvm.umin.i64(i64 %i.bv, i64 48) ; 2 uses
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.bx = call ptr %i.bw(ptr noundef nonnull %i.c, i64 noundef %i.bd, i64 noundef %spec.select.i260, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i261 = icmp eq ptr %i.bx, null
  br i1 %.not26.i261, label %fmap_readn.exit263.thread, label %fmap_readn.exit263

fmap_readn.exit263:                               ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %3, ptr nonnull align 1 %i.bx, i64 %spec.select.i260, i1 false)
  %.not232 = icmp ugt i64 %i.bv, 47
  br i1 %.not232, label %bb.ba, label %fmap_readn.exit263.thread

fmap_readn.exit263.thread:                        ; preds = %bb.ay, %bb.ax, %fmap_readn.exit263
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #7
  call void @free(ptr noundef %.0192460) #7
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  %i.cc = and i32 %i.cb, 2
  %.not233 = icmp eq i32 %i.cc, 0
  br i1 %.not233, label %bb.cg, label %bb.az

bb.az:                                            ; preds = %fmap_readn.exit263.thread
  %i.cd = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %.thread360, label %bb.cg

bb.ba:                                            ; preds = %fmap_readn.exit263
  %i.cf = add i64 %.1190461, 56
  %i.cg = load i32, ptr %i.aa, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw
  %.sink544 = phi i32 [ %i.cg, %bb.ba ], [ %i.bu, %bb.aw ] ; 2 uses
  %.sink = phi ptr [ %3, %bb.ba ], [ %4, %bb.aw ]
  %.2191 = phi i64 [ %i.cf, %bb.ba ], [ %i.bt, %bb.aw ] ; 3 uses
  %i.ch = call i32 @llvm.bswap.i32(i32 %.sink544)
  %i.ci = select i1 %.not221334, i32 %.sink544, i32 %i.ch ; 4 uses
  %i.cj = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %.sink, i64 noundef 16) #7 ; 0 uses
  store i8 0, ptr %i.ab, align 1, !tbaa !45
  br i1 %.not.not, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a) #7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i32 noundef %i.ci) #7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ck = icmp ugt i32 %i.ci, 255
  br i1 %i.ck, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28) #7
  call void @free(ptr noundef %.0192460) #7
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !41
  %i.cp = and i32 %i.co, 2
  %.not243 = icmp eq i32 %i.cp, 0
  br i1 %.not243, label %bb.cg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cq = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %.thread360, label %bb.cg

bb.bg:                                            ; preds = %bb.bd
  %.not235 = icmp eq i32 %i.ci, 0
  br i1 %.not235, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.not, label %bb.bi, label %.thread521

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #7
  br label %.thread521

bb.bj:                                            ; preds = %bb.bg
  %i.cs = add i32 %i.ci, %.0204458                ; 5 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nuw nsw i64 %i.ct, 36
  %i.cv = call ptr @cli_max_realloc_or_free(ptr noundef %.0192460, i64 noundef %i.cu) #7 ; 10 uses
  %.not236 = icmp eq ptr %i.cv, null
  br i1 %.not236, label %bb.bk, label %.preheader

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.30) #7
  br label %.thread360

.preheader:                                       ; preds = %bb.bj, %.preheader.backedge
  %.3455 = phi i64 [ %.4, %.preheader.backedge ], [ %.2191, %bb.bj ] ; 7 uses
  %.1205454 = phi i32 [ %.1205454.be, %.preheader.backedge ], [ %.0204458, %bb.bj ] ; 6 uses
  %i.cw = load i64, ptr %i.f, align 8, !tbaa !33  ; 3 uses
  %or.cond395.not = icmp ult i64 %.3455, %i.cw    ; 2 uses
  br i1 %i.o, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %.preheader
  br i1 %or.cond395.not, label %bb.bm, label %fmap_readn.exit268.thread

bb.bm:                                            ; preds = %bb.bl
  %i.cx = sub nuw i64 %i.cw, %.3455               ; 2 uses
  %spec.select.i265 = call i64 @llvm.umin.i64(i64 %i.cx, i64 80) ; 2 uses
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.cz = call ptr %i.cy(ptr noundef nonnull %i.c, i64 noundef %.3455, i64 noundef %spec.select.i265, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i266 = icmp eq ptr %i.cz, null
  br i1 %.not26.i266, label %fmap_readn.exit268.thread, label %fmap_readn.exit268

fmap_readn.exit268:                               ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 1 %i.cz, i64 %spec.select.i265, i1 false)
  %.not240 = icmp ugt i64 %i.cx, 79
  br i1 %.not240, label %bb.bo, label %fmap_readn.exit268.thread

fmap_readn.exit268.thread:                        ; preds = %bb.bm, %bb.bl, %fmap_readn.exit268
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #7
  call void @free(ptr noundef %i.cv) #7
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.de = and i32 %i.dd, 2
  %.not242 = icmp eq i32 %i.de, 0
  br i1 %.not242, label %bb.cg, label %bb.bn

bb.bn:                                            ; preds = %fmap_readn.exit268.thread
  %i.df = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %.thread360, label %bb.cg

bb.bo:                                            ; preds = %fmap_readn.exit268
  %i.dh = add i64 %.3455, 80
  %i.di = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.dj = call i64 @llvm.bswap.i64(i64 %i.di)
  %i.dk = select i1 %.not221334, i64 %i.di, i64 %i.dj
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = zext i32 %.1205454 to i64               ; 2 uses
  %i.dn = getelementptr inbounds nuw [36 x i8], ptr %i.cv, i64 %i.dm ; 3 uses
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !46
  %i.do = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.dp = call i64 @llvm.bswap.i64(i64 %i.do)
  %i.dq = select i1 %.not221334, i64 %i.do, i64 %i.dp
  %i.dr = trunc i64 %i.dq to i32                  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !48
  %i.dt = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.du = call i32 @llvm.bswap.i32(i32 %i.dt)
  %i.dv = select i1 %.not221334, i32 %i.dt, i32 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !49
  %i.dx = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.dy = call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.dz = select i1 %.not221334, i32 %i.dx, i32 %i.dy
  %i.ea = shl nuw i32 1, %i.dz                    ; 2 uses
  store i32 %i.ea, ptr %i.ak, align 4, !tbaa !50
  br label %bb.bw

bb.bp:                                            ; preds = %.preheader
  br i1 %or.cond395.not, label %bb.bq, label %fmap_readn.exit273.thread

bb.bq:                                            ; preds = %bb.bp
  %i.eb = sub nuw i64 %i.cw, %.3455               ; 2 uses
  %spec.select.i270 = call i64 @llvm.umin.i64(i64 %i.eb, i64 68) ; 2 uses
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.ed = call ptr %i.ec(ptr noundef nonnull %i.c, i64 noundef %.3455, i64 noundef %spec.select.i270, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i271 = icmp eq ptr %i.ed, null
  br i1 %.not26.i271, label %fmap_readn.exit273.thread, label %fmap_readn.exit273

fmap_readn.exit273:                               ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr nonnull align 1 %i.ed, i64 %spec.select.i270, i1 false)
  %.not237 = icmp ugt i64 %i.eb, 67
  br i1 %.not237, label %bb.bs, label %fmap_readn.exit273.thread

fmap_readn.exit273.thread:                        ; preds = %bb.bq, %bb.bp, %fmap_readn.exit273
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #7
  call void @free(ptr noundef %i.cv) #7
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !41
  %i.ei = and i32 %i.eh, 2
  %.not239 = icmp eq i32 %i.ei, 0
  br i1 %.not239, label %bb.cg, label %bb.br

bb.br:                                            ; preds = %fmap_readn.exit273.thread
  %i.ej = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %.thread360, label %bb.cg

bb.bs:                                            ; preds = %fmap_readn.exit273
  %i.el = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.em = call i32 @llvm.bswap.i32(i32 %i.el)
  %i.en = select i1 %.not221334, i32 %i.el, i32 %i.em
  %i.eo = zext i32 %.1205454 to i64               ; 2 uses
  %i.ep = getelementptr inbounds nuw [36 x i8], ptr %i.cv, i64 %i.eo ; 3 uses
  store i32 %i.en, ptr %i.ep, align 4, !tbaa !46
  %i.eq = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.er = call i32 @llvm.bswap.i32(i32 %i.eq)
  %i.es = select i1 %.not221334, i32 %i.eq, i32 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %i.es, ptr %i.et, align 4, !tbaa !48
  %i.eu = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ev = call i32 @llvm.bswap.i32(i32 %i.eu)
  %i.ew = select i1 %.not221334, i32 %i.eu, i32 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !49
  %i.ey = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ez = call i32 @llvm.bswap.i32(i32 %i.ey)
  %i.fa = select i1 %.not221334, i32 %i.ey, i32 %i.ez ; 2 uses
  %i.fb = icmp ugt i32 %i.fa, 31
  br i1 %i.fb, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32) #7
  call void @free(ptr noundef nonnull %i.cv) #7
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !40
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  %i.fg = and i32 %i.ff, 2
  %.not238 = icmp eq i32 %i.fg, 0
  br i1 %.not238, label %bb.cg, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fh = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %.thread360, label %bb.cg

bb.bv:                                            ; preds = %bb.bs
  %i.fj = add i64 %.3455, 68
  %i.fk = shl nuw i32 1, %i.fa                    ; 2 uses
  store i32 %i.fk, ptr %i.ag, align 4, !tbaa !52
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bo
  %.sink557 = phi i32 [ %i.fk, %bb.bv ], [ %i.ea, %bb.bo ] ; 2 uses
  %.sink556 = phi i32 [ %i.es, %bb.bv ], [ %i.dr, %bb.bo ] ; 2 uses
  %i.fl = phi i64 [ %i.eo, %bb.bv ], [ %i.dm, %bb.bo ]
  %.sink545 = phi ptr [ %5, %bb.bv ], [ %6, %bb.bo ]
  %.4 = phi i64 [ %i.fj, %bb.bv ], [ %i.dh, %bb.bo ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [36 x i8], ptr %i.cv, i64 %i.fl
  %i.fn = add i32 %.sink557, -1                   ; 2 uses
  %i.fo = and i32 %i.fn, %.sink556
  %i.fp = sub i32 %.sink557, %i.fo
  %i.fq = and i32 %i.fp, %i.fn
  %i.fr = add i32 %i.fq, %.sink556
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !54
  %i.ft = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %.sink545, i64 noundef 16) #7 ; 0 uses
  store i8 0, ptr %i.ab, align 1, !tbaa !45
  br i1 %.not.not, label %bb.bx, label %.thread

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33, i32 noundef %.1205454) #7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34, ptr noundef nonnull %i.a) #7
  %i.fu = zext i32 %.1205454 to i64
  %i.fv = getelementptr inbounds nuw [36 x i8], ptr %i.cv, i64 %i.fu ; 4 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !46
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35, i32 noundef %i.fw) #7
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !48
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36, i32 noundef %i.fy) #7
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !54
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37, i32 noundef %i.ga) #7
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !49 ; 2 uses
  %.not241 = icmp eq i32 %i.gc, 0
  br i1 %.not241, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, i32 noundef %i.gc) #7
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.gd = add i32 %.1205454, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.gd, %i.cs
  br i1 %exitcond.not, label %bb.ca, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.bz, %.thread
  %.1205454.be = phi i32 [ %i.ge, %.thread ], [ %i.gd, %bb.bz ]
  br label %.preheader

.thread:                                          ; preds = %bb.bw
  %i.ge = add i32 %.1205454, 1                    ; 2 uses
  %exitcond.not520 = icmp eq i32 %i.ge, %i.cs
  br i1 %exitcond.not520, label %.thread521, label %.preheader.backedge

bb.ca:                                            ; preds = %bb.bz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #7
  br label %.thread521

bb.cb:                                            ; preds = %bb.ar
  %i.gf = and i32 %i.bf, -2
  %or.cond13 = icmp eq i32 %i.gf, 4
  %or.cond248 = select i1 %.not225341, i1 %or.cond13, i1 false
  br i1 %or.cond248, label %bb.cc, label %bb.cs

bb.cc:                                            ; preds = %bb.cb
  %i.gg = add i64 %.1190461, 16                   ; 9 uses
  switch i32 %.0199343, label %default.unreachable [
    i32 1, label %bb.cd
    i32 2, label %bb.ci
    i32 3, label %bb.cn
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.gh = load i64, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %or.cond397.not = icmp ult i64 %i.gg, %i.gh
  br i1 %or.cond397.not, label %bb.ce, label %fmap_readn.exit278.thread

bb.ce:                                            ; preds = %bb.cd
  %i.gi = sub nuw i64 %i.gh, %i.gg                ; 2 uses
  %spec.select.i275 = call i64 @llvm.umin.i64(i64 %i.gi, i64 64)
  %i.gj = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.gk = call ptr %i.gj(ptr noundef nonnull %i.c, i64 noundef %i.gg, i64 noundef %spec.select.i275, i32 noundef 0) #7, !inline_history !36
  %.not26.i276 = icmp ne ptr %i.gk, null
  %.not230 = icmp ugt i64 %i.gi, 63
  %or.cond400 = and i1 %.not230, %.not26.i276
  br i1 %or.cond400, label %bb.ch, label %fmap_readn.exit278.thread

fmap_readn.exit278.thread:                        ; preds = %bb.ce, %bb.cd
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39) #7
  call void @free(ptr noundef %.0192460) #7
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !40
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !41
  %i.gp = and i32 %i.go, 2
  %.not231 = icmp eq i32 %i.gp, 0
  br i1 %.not231, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %fmap_readn.exit278.thread
  %i.gq = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.gr = icmp eq i32 %i.gq, 1
  br i1 %i.gr, label %.thread360, label %bb.cg

bb.cg:                                            ; preds = %bb.am, %bb.an, %fmap_readn.exit253.thread, %bb.aq, %fmap_readn.exit258.thread, %bb.av, %fmap_readn.exit263.thread, %bb.az, %bb.be, %bb.bf, %fmap_readn.exit268.thread, %bb.bn, %fmap_readn.exit273.thread, %bb.br, %bb.bt, %bb.bu, %bb.cf, %fmap_readn.exit278.thread
  br label %.thread360

bb.ch:                                            ; preds = %bb.ce
  %i.gs = add i64 %.1190461, 80
  br label %.thread521

bb.ci:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.gt = load i64, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %or.cond398.not = icmp ult i64 %i.gg, %i.gt
  br i1 %or.cond398.not, label %bb.cj, label %fmap_readn.exit283.thread

bb.cj:                                            ; preds = %bb.ci
  %i.gu = sub nuw i64 %i.gt, %i.gg                ; 2 uses
  %spec.select.i280 = call i64 @llvm.umin.i64(i64 %i.gu, i64 160) ; 2 uses
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.gw = call ptr %i.gv(ptr noundef nonnull %i.c, i64 noundef %i.gg, i64 noundef %spec.select.i280, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i281 = icmp eq ptr %i.gw, null
  br i1 %.not26.i281, label %fmap_readn.exit283.thread, label %fmap_readn.exit283

fmap_readn.exit283:                               ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %7, ptr nonnull align 1 %i.gw, i64 %spec.select.i280, i1 false)
  %.not228 = icmp ugt i64 %i.gu, 159
  br i1 %.not228, label %bb.cm, label %fmap_readn.exit283.thread

fmap_readn.exit283.thread:                        ; preds = %bb.cj, %bb.ci, %fmap_readn.exit283
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40) #7
  call void @free(ptr noundef %.0192460) #7
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !40
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !41
  %i.hb = and i32 %i.ha, 2
  %.not229 = icmp eq i32 %i.hb, 0
  br i1 %.not229, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %fmap_readn.exit283.thread
  %i.hc = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.hd = icmp eq i32 %i.hc, 1
  br i1 %i.hd, label %.thread369, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %fmap_readn.exit283.thread
  br label %.thread369

.thread369:                                       ; preds = %bb.cl, %bb.ck
  %.2211.ph = phi i32 [ 1, %bb.ck ], [ 26, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread360

bb.cm:                                            ; preds = %fmap_readn.exit283
  %i.he = add i64 %.1190461, 176
  %.0..0..0.292 = load i32, ptr %7, align 4       ; 2 uses
  %i.hf = call i32 @llvm.bswap.i32(i32 %.0..0..0.292)
  %i.hg = select i1 %.not221334, i32 %.0..0..0.292, i32 %i.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread521

bb.cn:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.hh = load i64, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %or.cond399.not = icmp ult i64 %i.gg, %i.hh
  br i1 %or.cond399.not, label %bb.co, label %fmap_readn.exit288.thread

bb.co:                                            ; preds = %bb.cn
  %i.hi = sub nuw i64 %i.hh, %i.gg                ; 2 uses
  %spec.select.i285 = call i64 @llvm.umin.i64(i64 %i.hi, i64 312) ; 2 uses
  %i.hj = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.hk = call ptr %i.hj(ptr noundef nonnull %i.c, i64 noundef %i.gg, i64 noundef %spec.select.i285, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i286 = icmp eq ptr %i.hk, null
  br i1 %.not26.i286, label %fmap_readn.exit288.thread, label %fmap_readn.exit288

fmap_readn.exit288:                               ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 1 %i.hk, i64 %spec.select.i285, i1 false)
  %.not226 = icmp ugt i64 %i.hi, 311
  br i1 %.not226, label %bb.cr, label %fmap_readn.exit288.thread

fmap_readn.exit288.thread:                        ; preds = %bb.co, %bb.cn, %fmap_readn.exit288
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41) #7
  call void @free(ptr noundef %.0192460) #7
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !40
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !41
  %i.hp = and i32 %i.ho, 2
  %.not227 = icmp eq i32 %i.hp, 0
  br i1 %.not227, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %fmap_readn.exit288.thread
  %i.hq = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %.thread379, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %fmap_readn.exit288.thread
  br label %.thread379

.thread379:                                       ; preds = %bb.cq, %bb.cp
  %.3212.ph = phi i32 [ 1, %bb.cp ], [ 26, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread360

bb.cr:                                            ; preds = %fmap_readn.exit288
  %i.hs = add i64 %.1190461, 328
  %.0..0..0. = load i64, ptr %8, align 8          ; 2 uses
  %i.ht = call i64 @llvm.bswap.i64(i64 %.0..0..0.)
  %i.hu = select i1 %.not221334, i64 %.0..0..0., i64 %i.ht
  %i.hv = trunc i64 %i.hu to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread521

default.unreachable:                              ; preds = %bb.cc
  unreachable

bb.cs:                                            ; preds = %bb.cb
  %.4..4..4.297 = load i32, ptr %.4..4..4..sroa_idx, align 4 ; 2 uses
  %i.hw = call i32 @llvm.bswap.i32(i32 %.4..4..4.297)
  %i.hx = select i1 %.not221334, i32 %.4..4..4.297, i32 %i.hw ; 2 uses
  %i.hy = icmp ugt i32 %i.hx, 8
  br i1 %i.hy, label %bb.ct, label %.thread521

bb.ct:                                            ; preds = %bb.cs
  %i.hz = zext i32 %i.hx to i64
  %i.ia = add i64 %.1190461, %i.hz
  br label %.thread521

.thread521:                                       ; preds = %.thread, %bb.cr, %bb.cm, %bb.ch, %bb.ca, %bb.cs, %bb.ct, %bb.bh, %bb.bi
  %.2206 = phi i32 [ %.0204458, %bb.cs ], [ %i.cs, %bb.ca ], [ %.0204458, %bb.bh ], [ %.0204458, %bb.bi ], [ %.0204458, %bb.ch ], [ %.0204458, %bb.cm ], [ %.0204458, %bb.cr ], [ %.0204458, %bb.ct ], [ %i.cs, %.thread ] ; 3 uses
  %.3197 = phi i32 [ %.0194459, %bb.cs ], [ %.0194459, %bb.ca ], [ %.0194459, %bb.bh ], [ %.0194459, %bb.bi ], [ %.0194459, %bb.ch ], [ %i.hg, %bb.cm ], [ %i.hv, %bb.cr ], [ %.0194459, %bb.ct ], [ %.0194459, %.thread ] ; 7 uses
  %.1193 = phi ptr [ %.0192460, %bb.cs ], [ %i.cv, %bb.ca ], [ %.0192460, %bb.bh ], [ %.0192460, %bb.bi ], [ %.0192460, %bb.ch ], [ %.0192460, %bb.cm ], [ %.0192460, %bb.cr ], [ %.0192460, %bb.ct ], [ %i.cv, %.thread ] ; 6 uses
  %.8 = phi i64 [ %i.bd, %bb.cs ], [ %.4, %bb.ca ], [ %.2191, %bb.bh ], [ %.2191, %bb.bi ], [ %i.gs, %bb.ch ], [ %i.he, %bb.cm ], [ %i.hs, %bb.cr ], [ %i.ia, %bb.ct ], [ %.4, %.thread ]
  %i.ib = add nuw i32 %.0208457, 1                ; 2 uses
  %.16..16..16.324 = load i32, ptr %.16..16..16..sroa_idx602, align 4, !tbaa !39
  %i.ic = icmp ult i32 %i.ib, %.16..16..16.324
  br i1 %i.ic, label %bb.ao, label %._crit_edge

._crit_edge:                                      ; preds = %.thread521
  %.not = icmp eq i32 %.3197, 0
  br i1 %.not, label %bb.db, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge
  br i1 %.not.not, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.43, i32 noundef %.3197) #7
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.not222 = icmp eq ptr %.1193, null
  br i1 %.not222, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.id = and i32 %.2206, 65535                   ; 2 uses
  %.not2425.not.i = icmp eq i32 %i.id, 0
  br i1 %.not2425.not.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.cx
  %wide.trip.count.i = zext nneg i32 %i.id to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cz, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.cz ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [36 x i8], ptr %.1193, i64 %indvars.iv.i ; 3 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !46 ; 3 uses
  %.not.i289 = icmp ugt i32 %i.if, %.3197
  br i1 %.not.i289, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !48
  %i.ii = add i32 %i.ih, %i.if
  %i.ij = icmp ugt i32 %i.ii, %.3197
  br i1 %i.ij, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.cz, %bb.cx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44) #7
  call void @free(ptr noundef %.1193) #7
  br label %.thread360

bb.da:                                            ; preds = %bb.cy
  %i.ik = sub i32 %.3197, %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.im = load i32, ptr %i.il, align 4, !tbaa !49
  %i.in = add i32 %i.im, %i.ik                    ; 2 uses
  br i1 %.not.not, label %.thread387, label %.thread389

.thread387:                                       ; preds = %bb.da
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45, i32 noundef %i.in) #7
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw, %._crit_edge
  br i1 %.not.not, label %bb.dc, label %.thread389

.thread389:                                       ; preds = %bb.da, %bb.db
  %.4198391 = phi i32 [ %.3197, %bb.db ], [ %i.in, %bb.da ]
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.4198391, ptr %i.io, align 4, !tbaa !55
  %i.ip = trunc i32 %.2206 to i16
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.ip, ptr %i.iq, align 8, !tbaa !56
  store ptr %.1193, ptr %1, align 8, !tbaa !57
  br label %.thread360

bb.dc:                                            ; preds = %.thread387, %bb.db
  call void @free(ptr noundef %.1193) #7
  br label %.thread360

.thread360:                                       ; preds = %bb.cf, %bb.cg, %.thread379, %.thread369, %.thread389, %bb.dc, %bb.bu, %bb.br, %bb.bn, %bb.bf, %bb.az, %bb.av, %bb.aq, %bb.an, %.loopexit, %bb.bk, %bb.i, %fmap_readn.exit.thread
  %.5214 = phi i32 [ 26, %fmap_readn.exit.thread ], [ 1, %bb.bu ], [ 26, %bb.cg ], [ 1, %bb.an ], [ 1, %bb.cf ], [ 1, %bb.aq ], [ 0, %bb.dc ], [ 1, %bb.az ], [ %.3212.ph, %.thread379 ], [ 1, %bb.bf ], [ %.2211.ph, %.thread369 ], [ 1, %bb.bn ], [ 0, %.thread389 ], [ 1, %bb.br ], [ 26, %bb.i ], [ 20, %bb.bk ], [ 1, %bb.av ], [ 26, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %.5214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_append_potentially_unwanted(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare ptr @cli_max_realloc_or_free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @cli_machoheader(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @cli_scanmacho(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @cli_scanmacho_unibin(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %1 = alloca %struct.macho_fat_arch, align 4     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %fmap_readn.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 8) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = tail call ptr %i.f(ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef %spec.select.i, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i = icmp eq ptr %i.g, null
  br i1 %.not26.i, label %fmap_readn.exit.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0, ptr nonnull align 1 %i.g, i64 %spec.select.i, i1 false)
  %.not = icmp ugt i64 %i.d, 7
  br i1 %.not, label %bb.c, label %fmap_readn.exit.thread

fmap_readn.exit.thread:                           ; preds = %bb.b, %bb.a, %fmap_readn.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46) #7
  br label %.loopexit

bb.c:                                             ; preds = %fmap_readn.exit
  %.0..0..0. = load i32, ptr %.sroa.0, align 8, !tbaa !58 ; 2 uses
  %i.h = icmp eq i32 %.0..0..0., -889275714       ; 3 uses
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %.0..0..0., -1095041334
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47) #7
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %.4..4..4..sroa_idx85 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.4..4..4.55 = load i32, ptr %.4..4..4..sroa_idx85, align 4, !tbaa !60
  %i.j = tail call i32 @llvm.bswap.i32(i32 %.4..4..4.55)
  br label %bb.g

.critedge:                                        ; preds = %bb.c
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.4..4..4. = load i32, ptr %.4..4..4..sroa_idx, align 4, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %i.k = phi i32 [ %i.j, %bb.f ], [ %.4..4..4., %.critedge ] ; 6 uses
  %i.l = and i32 %i.k, 65535
  %i.m = icmp samesign ugt i32 %i.l, 38
  br i1 %i.m, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp ugt i32 %i.k, 32
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #7
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49, i32 noundef %i.k) #7
  %exitcond.not77 = icmp eq i32 %i.k, 0
  br i1 %exitcond.not77, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.8..8..8..sroa_idx83 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.12..12..12..sroa_idx84 = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.lr.ph

bb.k:                                             ; preds = %bb.r
  %exitcond.not = icmp eq i32 %i.ae, %i.k
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.079 = phi i64 [ %i.z, %bb.k ], [ 8, %.lr.ph.preheader ] ; 4 uses
  %.02178 = phi i32 [ %i.ae, %bb.k ], [ 0, %.lr.ph.preheader ]
  %i.o = load i64, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %or.cond.not = icmp ult i64 %.079, %i.o
  br i1 %or.cond.not, label %bb.l, label %fmap_readn.exit39.thread

bb.l:                                             ; preds = %.lr.ph
  %i.p = sub nuw i64 %i.o, %.079                  ; 2 uses
  %spec.select.i36 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 20) ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.r = tail call ptr %i.q(ptr noundef nonnull %i.b, i64 noundef %.079, i64 noundef %spec.select.i36, i32 noundef 0) #7, !inline_history !36 ; 2 uses
  %.not26.i37 = icmp eq ptr %i.r, null
  br i1 %.not26.i37, label %fmap_readn.exit39.thread, label %fmap_readn.exit39

fmap_readn.exit39:                                ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1, ptr nonnull align 1 %i.r, i64 %spec.select.i36, i1 false)
  %.not31 = icmp ugt i64 %i.p, 19
  br i1 %.not31, label %bb.n, label %fmap_readn.exit39.thread

fmap_readn.exit39.thread:                         ; preds = %bb.l, %.lr.ph, %fmap_readn.exit39
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50) #7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41
  %i.w = and i32 %i.v, 2
  %.not34 = icmp eq i32 %i.w, 0
  br i1 %.not34, label %bb.q, label %bb.m

bb.m:                                             ; preds = %fmap_readn.exit39.thread
  %i.x = tail call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %.loopexit, label %bb.q

bb.n:                                             ; preds = %fmap_readn.exit39
  %i.z = add nuw nsw i64 %.079, 20                ; 2 uses
  %.8..8..8.41 = load i32, ptr %.8..8..8..sroa_idx, align 4 ; 2 uses
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %.8..8..8.41)
  %i.ab = select i1 %i.h, i32 %.8..8..8.41, i32 %i.aa ; 4 uses
  store i32 %i.ab, ptr %.8..8..8..sroa_idx83, align 4, !tbaa !61
  %.12..12..12.48 = load i32, ptr %.12..12..12..sroa_idx, align 4 ; 2 uses
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %.12..12..12.48)
  %i.ad = select i1 %i.h, i32 %.12..12..12.48, i32 %i.ac ; 3 uses
  store i32 %i.ad, ptr %.12..12..12..sroa_idx84, align 4, !tbaa !63
  %i.ae = add nuw nsw i32 %.02178, 1              ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51, i32 noundef %i.ae, i32 noundef %i.k) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52, i32 noundef %i.ab) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.53, i32 noundef %i.ad) #7
  %i.af = zext i32 %i.ab to i64                   ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.z, %i.af
  br i1 %i.ag, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, i32 noundef %i.ab) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41
  %i.al = and i32 %i.ak, 2
  %.not33 = icmp eq i32 %i.al, 0
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = tail call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #7
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %fmap_readn.exit39.thread, %bb.m, %bb.p, %bb.o
  br label %.loopexit

bb.r:                                             ; preds = %bb.n
  %i.ao = zext i32 %i.ad to i64
  %i.ap = tail call i32 @cli_magic_scan_nested_fmap_type(ptr noundef nonnull %i.b, i64 noundef %i.af, i64 noundef %i.ao, ptr noundef %0, i32 noundef 0, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not32 = icmp eq i32 %i.ap, 0
  br i1 %.not32, label %bb.k, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.k, %bb.j, %bb.p, %bb.m, %bb.g, %bb.q, %bb.i, %bb.e, %fmap_readn.exit.thread
  %.023 = phi i32 [ 26, %fmap_readn.exit.thread ], [ 26, %bb.e ], [ 26, %bb.i ], [ 0, %bb.g ], [ 1, %bb.p ], [ 1, %bb.m ], [ 26, %bb.q ], [ 0, %bb.j ], [ 0, %bb.k ], [ %i.ap, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %.023
}

declare i32 @cli_magic_scan_nested_fmap_type(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @cli_unpackmacho(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !64
  %i.b = tail call ptr @cli_bytecode_context_alloc() #7 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread51, label %bb.b

.thread51:                                        ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.55) #7
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @cli_bytecode_context_setctx(ptr noundef nonnull %i.b, ptr noundef %0) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.56) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = tail call i32 @cli_bytecode_runhook(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull %i.b, i32 noundef 262, ptr noundef %i.f) #7 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.57) #7
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %.thread47

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @cli_bytecode_context_getresult_file(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7 ; 5 uses
  %i.j = icmp ne i32 %i.i, -1
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %.thread33, label %bb.d

.thread33:                                        ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.58, ptr noundef nonnull %i.k) #7
  %i.m = call i64 @lseek(i32 noundef %i.i, i64 noundef 0, i32 noundef 0) #7 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59) #7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.o = call i32 @cli_magic_scan_desc(i32 noundef %i.i, ptr noundef %i.n, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not26 = icmp eq i32 %i.i, -1
  br i1 %.not26, label %.thread, label %bb.e

bb.e:                                             ; preds = %.thread33, %bb.d
  %.01937 = phi i32 [ %i.o, %.thread33 ], [ 0, %bb.d ]
  %i.p = call i32 @close(i32 noundef %i.i) #7     ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !64
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.k, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %.01932 = phi i32 [ 0, %bb.d ], [ %.01937, %bb.e ] ; 2 uses
  %.not27 = icmp eq ptr %i.q, null
  br i1 %.not27, label %.thread47, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !66
  %.not28 = icmp eq i32 %i.u, 0
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = call i32 @cli_unlink(ptr noundef nonnull %i.q) #7 ; 0 uses
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = phi ptr [ %.pre39, %bb.g ], [ %i.q, %bb.f ]
  call void @free(ptr noundef %i.w) #7
  br label %.thread47

.thread47:                                        ; preds = %.thread, %bb.h, %bb.b
  %.019324649 = phi i32 [ %i.g, %bb.b ], [ %.01932, %bb.h ], [ %.01932, %.thread ]
  call void @cli_bytecode_context_destroy(ptr noundef nonnull %i.b) #7
  br label %bb.i

bb.i:                                             ; preds = %.thread51, %.thread47
  %.019324650 = phi i32 [ %.019324649, %.thread47 ], [ 20, %.thread51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.019324650
}

declare ptr @cli_bytecode_context_alloc() local_unnamed_addr #2

declare void @cli_bytecode_context_setctx(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_bytecode_runhook(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_bytecode_context_getresult_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @cli_magic_scan_desc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #2

declare void @cli_bytecode_context_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !18, i64 88}
!9 = !{!"cli_ctx_tag", !10, i64 0, !10, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !16, i64 48, !5, i64 56, !5, i64 60, !17, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !18, i64 88, !15, i64 96, !19, i64 104, !20, i64 112, !11, i64 120, !21, i64 128, !22, i64 136, !22, i64 144, !23, i64 152, !24, i64 168, !24, i64 169}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 long", !11, i64 0}
!13 = !{!"p1 _ZTS11cli_matcher", !11, i64 0}
!14 = !{!"p1 _ZTS9cl_engine", !11, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"p1 _ZTS15cl_scan_options", !11, i64 0}
!17 = !{!"p1 _ZTS14cli_scan_layer", !11, i64 0}
!18 = !{!"p1 _ZTS7cl_fmap", !11, i64 0}
!19 = !{!"p1 _ZTS9cli_dconf", !11, i64 0}
!20 = !{!"p1 _ZTS10bitset_tag", !11, i64 0}
!21 = !{!"p1 _ZTS10cli_events", !11, i64 0}
!22 = !{!"p1 _ZTS11json_object", !11, i64 0}
!23 = !{!"timeval", !15, i64 0, !15, i64 8}
!24 = !{!"_Bool", !6, i64 0}
!25 = !{!26, !5, i64 8}
!26 = !{!"cli_exe_info", !27, i64 0, !5, i64 8, !5, i64 12, !28, i64 16, !5, i64 20, !5, i64 24, !29, i64 32, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !32, i64 108, !6, i64 136, !6, i64 248}
!27 = !{!"p1 _ZTS15cli_exe_section", !11, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!"cli_hashset", !30, i64 0, !30, i64 8, !31, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!30 = !{!"p1 int", !11, i64 0}
!31 = !{!"p1 _ZTS2MP", !11, i64 0}
!32 = !{!"pe_image_file_hdr", !5, i64 0, !28, i64 4, !28, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !28, i64 20, !28, i64 22}
!33 = !{!34, !15, i64 88}
!34 = !{!"cl_fmap", !11, i64 0, !11, i64 8, !11, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !24, i64 56, !24, i64 57, !24, i64 58, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !6, i64 152, !6, i64 155, !6, i64 158, !12, i64 256, !10, i64 264, !10, i64 272}
!35 = !{!34, !11, i64 104}
!36 = distinct !{null, null}
!37 = !{!38, !5, i64 0}
!38 = !{!"macho_hdr", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!39 = !{!38, !5, i64 16}
!40 = !{!9, !16, i64 48}
!41 = !{!42, !5, i64 8}
!42 = !{!"cl_scan_options", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!43 = !{!44, !5, i64 0}
!44 = !{!"macho_load_cmd", !5, i64 0, !5, i64 4}
!45 = !{!6, !6, i64 0}
!46 = !{!47, !5, i64 0}
!47 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!48 = !{!47, !5, i64 4}
!49 = !{!47, !5, i64 8}
!50 = !{!51, !5, i64 52}
!51 = !{!"macho_section64", !6, i64 0, !6, i64 16, !15, i64 32, !15, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72}
!52 = !{!53, !5, i64 44}
!53 = !{!"macho_section", !6, i64 0, !6, i64 16, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64}
!54 = !{!47, !5, i64 12}
!55 = !{!26, !5, i64 12}
!56 = !{!26, !28, i64 16}
!57 = !{!26, !27, i64 0}
!58 = !{!59, !5, i64 0}
!59 = !{!"macho_fat_header", !5, i64 0, !5, i64 4}
!60 = !{!59, !5, i64 4}
!61 = !{!62, !5, i64 8}
!62 = !{!"macho_fat_arch", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!63 = !{!62, !5, i64 12}
end_hunk_0
