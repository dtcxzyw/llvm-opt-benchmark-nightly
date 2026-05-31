inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.cli_exe_info = type { i32, i16, i64, ptr }
%struct.__zip_dirent = type { i16, i32, i32, i16, ptr, i32, i32 }
%struct.arj_metadata_tag = type { i32, i32, i8, ptr, i32, i32 }
%struct.cab_archive = type { i32, i16, i16, i16, i16, i8, ptr, ptr }
%struct.cli_ctx = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }

@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ScanDir: Can't open directory %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't fstat descriptor %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Small data (%u bytes)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"CRITICAL: engine == NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Raw mode: No support for special files\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s found in descriptor %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Archive recursion limit exceeded (arec == %u).\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Archive.ExceededRecursionLimit\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Mail recursion level exceeded (mrec == %u).\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"RAR code not compiled-in\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"cli_magic_scandesc: Not checking for embedded PEs (zip file > 1 MB)\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Descriptor[%d]: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"cli_scanraw: lseek() failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s found in descriptor %d when scanning file type %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"ZIP-SFX signature found at %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"CAB-SFX signature found at %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"ARJ-SFX signature found at %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"NSIS signature found at %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"AUTOIT signature found at %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"PE signature found at %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"*** Detected embedded PE file ***\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"cli_scanraw: Type %u not handled in fpt loop\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"cli_scanembpe: Can't create file %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"cli_scanembpe: Size exceeded (stopped at %lu, max: %lu)\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"cli_scanembpe: Can't write to temporary file\0A\00", align 1
@cli_leavetemps_flag = external local_unnamed_addr global i8, align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"cli_scanembpe: Can't synchronise descriptor %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"cli_scanembpe: Infected with %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"in scanzip()\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Zip: zip_dir_open() return code: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Zip: unable to malloc(%u)\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Zip: zdirent.d_name == NULL\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Suspect.Zip\00", align 1
@.str.35 = private unnamed_addr constant [110 x i8] c"Zip: %s, crc32: 0x%x, offset: %u, encrypted: %u, compressed: %u, normal: %u, method: %u, ratio: %u (max: %u)\0A\00", align 1
@.str.36 = private unnamed_addr constant [74 x i8] c"Zip: Broken file or modified information in local header part of archive\0A\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"Exploit.Zip.ModifiedHeaders\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"Zip: Directory entry with st_size != 0\0A\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"Zip: Malformed file (d_csize == 0 but st_size != 0)\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"Oversized.Zip\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Zip: Encrypted files found in archive.\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Encrypted.Zip\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Zip: %s: Size exceeded (%u, max: %lu)\0A\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Zip.ExceededFileSize\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Zip: Files limit reached (max: %u)\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"Zip.ExceededFilesLimit\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"Not supported compression method in one or more files\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Zip: Can't open file %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Zip: Can't write to file.\0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c"Zip: Incorrectly decompressed (%lu != %lu)\0A\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"Zip: File decompressed to %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Zip: fsync() failed\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Zip: Infected with %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [56 x i8] c"Zip: Brute force mode - checking compression method %u\0A\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"Zip: All attempts to decompress file failed\0A\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"in cli_scangzip()\0A\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"GZip: Can't open descriptor %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"GZip: Can't generate temporary file.\0A\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"GZip: Unable to malloc %u bytes.\0A\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"GZip: Size exceeded (stopped at %ld, max: %ld)\0A\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"GZip.ExceededFileSize\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"GZip: Can't write to file.\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"GZip: Can't synchronise descriptor %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"GZip: Infected with %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"in cli_scanarj()\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"RAR: Can't create temporary directory %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"ARJ: Error: %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"ARJ: infected with %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"ARJ: Exit code: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"ARJ: %s: Size exceeded (%lu, max: %lu)\0A\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"ARJ.ExceededFileSize\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"ARJ: Max ratio reached (%u, max: %u)\0A\00", align 1
@.str.75 = private unnamed_addr constant [58 x i8] c"ARJ: Ignoring ratio limit (file size doesn't hit limits)\0A\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"Oversized.ARJ\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"in cli_scanmscab()\0A\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"CAB: %s: Size exceeded (%u, max: %lu)\0A\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"CAB.ExceededFileSize\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"CAB: Files limit reached (max: %u)\0A\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"CAB.ExceededFilesLimit\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"CAB: Extracting file %s to %s, size %u\0A\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"CAB: Failed to extract file: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"in cli_scanhtml()\0A\00", align 1
@.str.87 = private unnamed_addr constant [48 x i8] c"cli_scanhtml: fstat() failed for descriptor %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [48 x i8] c"cli_scanhtml: exiting (file larger than 10 MB)\0A\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"cli_scanhtml: Can't create temporary directory %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"%s/comment.html\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"%s/nocomment.html\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"%s/script.html\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"%s/rfc2397\00", align 1
@.str.94 = private unnamed_addr constant [25 x i8] c"in cli_scanhtml_utf16()\0A\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"cli_scanhtml_utf16: Can't create file %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [44 x i8] c"cli_scanhtml_utf16: Can't write to file %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [51 x i8] c"cli_scanhtml_utf16: Decoded HTML data saved in %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [49 x i8] c"Starting cli_scanmail(), mrec == %u, arec == %u\0A\00", align 1
@.str.99 = private unnamed_addr constant [43 x i8] c"Mail: Can't create temporary directory %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [51 x i8] c"Can't create temporary directory for tnef file %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [56 x i8] c"Can't create temporary directory for uuencoded file %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [50 x i8] c"Can't create temporary directory for PST file %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"in cli_scanmschm()\0A\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"CHM: Can't create temporary directory %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"in cli_scanole2()\0A\00", align 1
@.str.106 = private unnamed_addr constant [43 x i8] c"OLE2: Can't create temporary directory %s\0A\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"OLE2: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"VBADir: %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"VBADir: Can't open file %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"VBADir: Decompress VBA project '%s'\0A\00", align 1
@.str.111 = private unnamed_addr constant [56 x i8] c"VBADir: WARNING: VBA project '%s' decompressed to NULL\0A\00", align 1
@.str.112 = private unnamed_addr constant [62 x i8] c"VBADir: Decompress WM project '%s' macro:%d key:%d length:%d\0A\00", align 1
@.str.113 = private unnamed_addr constant [61 x i8] c"VBADir: WARNING: WM project '%s' macro %d decrypted to NULL\0A\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"%s/_1_Ole10Native\00", align 1
@.str.115 = private unnamed_addr constant [34 x i8] c"VBADir: Can't open directory %s.\0A\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"in cli_scantar()\0A\00", align 1
@.str.117 = private unnamed_addr constant [42 x i8] c"Tar: Can't create temporary directory %s\0A\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"Tar: %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"in cli_scanbinhex()\0A\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"Binhex: Can't create temporary directory %s\0A\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"Binhex: %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"in cli_scanscrenc()\0A\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"Exploit.W32.MS05-002\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"Exploit.W32.MS04-028\00", align 1
@.str.125 = private unnamed_addr constant [50 x i8] c"Can't create temporary directory for PDF file %s\0A\00", align 1
@.str.126 = private unnamed_addr constant [36 x i8] c"CryptFF: Can't fstat descriptor %d\0A\00", align 1
@.str.127 = private unnamed_addr constant [36 x i8] c"CryptFF: Can't lseek descriptor %d\0A\00", align 1
@.str.128 = private unnamed_addr constant [32 x i8] c"CryptFF: Can't allocate memory\0A\00", align 1
@.str.129 = private unnamed_addr constant [40 x i8] c"CryptFF: Can't read from descriptor %d\0A\00", align 1
@.str.130 = private unnamed_addr constant [31 x i8] c"CryptFF: Can't create file %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"CryptFF: Can't write to descriptor %d\0A\00", align 1
@.str.132 = private unnamed_addr constant [36 x i8] c"CryptFF: Can't fsync descriptor %d\0A\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"CryptFF: Scanning decrypted data\0A\00", align 1
@.str.134 = private unnamed_addr constant [27 x i8] c"CryptFF: Infected with %s\0A\00", align 1
@.str.135 = private unnamed_addr constant [40 x i8] c"CryptFF: Decompressed data saved in %s\0A\00", align 1
@switch.table.cli_scanraw = private unnamed_addr constant [9 x i8] c"\01\00\01\00\00\00\00\00\01", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -115, 2) i32 @cli_scandir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = tail call noalias ptr @opendir(ptr noundef %0) ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = tail call ptr @readdir(ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not2639 = icmp eq ptr %i.b, null
  br i1 %.not2639, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.d = phi ptr [ %i.b, %.lr.ph ], [ %i.ai, %bb.j ] ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %.not27 = icmp eq i64 %i.e, 0
  br i1 %.not27, label %bb.j, label %sub_0

sub_0:                                            ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 19 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not40 = icmp eq i8 %i.g, 46
  br i1 %.not40, label %.tail, label %.tail33.thread

.tail:                                            ; preds = %sub_0
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.i = load i8, ptr %i.h, align 4
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.j, label %sub_135

sub_135:                                          ; preds = %.tail
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %.not42 = icmp eq i8 %i.l, 46
  br i1 %.not42, label %.tail33, label %.tail33.thread

.tail33:                                          ; preds = %sub_135
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.j, label %.tail33.thread

.tail33.thread:                                   ; preds = %sub_0, %sub_135, %.tail33
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #10
  %i.r = add i64 %i.p, 2
  %i.s = add i64 %i.r, %i.q
  %i.t = tail call ptr @cli_malloc(i64 noundef %i.s) #9 ; 8 uses
  %.not30 = icmp eq ptr %i.t, null
  br i1 %.not30, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail33.thread
  %i.u = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %.tail33.thread
  %i.v = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0, ptr noundef nonnull %i.f) #9 ; 0 uses
  %i.w = call i32 @lstat(ptr noundef nonnull %i.t, ptr noundef nonnull %2) #9
  %.not31 = icmp eq i32 %i.w, -1
  br i1 %.not31, label %cli_scanfile.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.c, align 8, !tbaa !12
  %i.y = trunc i32 %i.x to i16
  %trunc = and i16 %i.y, -4096
  switch i16 %trunc, label %cli_scanfile.exit.thread [
    i16 16384, label %bb.f
    i16 -32768, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @cli_scandir(ptr noundef nonnull %i.t, ptr noundef %1)
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %cli_scanfile.exit.thread

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.t) #9
  %i.ab = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ac = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.t, i32 noundef 0) #9, !inline_history !15 ; 3 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %cli_scanfile.exit.thread, label %cli_scanfile.exit

cli_scanfile.exit:                                ; preds = %bb.h
  %i.ae = tail call i32 @cli_magic_scandesc(i32 noundef %i.ac, ptr noundef %1), !inline_history !15
  %i.af = tail call i32 @close(i32 noundef %i.ac) #9, !inline_history !15 ; 0 uses
  %i.ag = icmp eq i32 %i.ae, 1
  br i1 %i.ag, label %bb.i, label %cli_scanfile.exit.thread

bb.i:                                             ; preds = %cli_scanfile.exit
  tail call void @free(ptr noundef nonnull %i.t) #9
  %i.ah = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.l

cli_scanfile.exit.thread:                         ; preds = %bb.e, %bb.h, %bb.f, %cli_scanfile.exit, %bb.d
  tail call void @free(ptr noundef nonnull %i.t) #9
  br label %bb.j

bb.j:                                             ; preds = %.tail, %.tail33, %cli_scanfile.exit.thread, %bb.b
  %i.ai = tail call ptr @readdir(ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not26 = icmp eq ptr %i.ai, null
  br i1 %.not26, label %._crit_edge, label %bb.b, !llvm.loop !16

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, ptr noundef %0) #9
  br label %bb.l

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %i.aj = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.i, %bb.g, %bb.c
  %.0 = phi i32 [ 1, %bb.i ], [ 1, %bb.g ], [ -114, %bb.c ], [ 0, %._crit_edge ], [ -115, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cli_magic_scandesc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %3 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #9
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4, i32 noundef %0) #9
  br label %bb.dg

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = icmp slt i64 %i.d, 6
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %i.d to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %i.f) #9
  br label %bb.dg

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.6) #9
  br label %bb.dg

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 25 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %.not178 = icmp eq i32 %i.j, 0
  br i1 %.not178, label %bb.h, label %bb.j

end_hunk_0
begin_hunk_1_@cli_magic_scandesc:bb.a
  %i.hq = tail call fastcc i32 @cli_scancryptff(i32 noundef %0, ptr noundef nonnull %1)
  br label %.thread265

bb.cl:                                            ; preds = %bb.x
  %i.hr = load i32, ptr %i.i, align 8, !tbaa !29
  %i.hs = and i32 %i.hr, 8192
  %.not187 = icmp eq i32 %i.hs, 0
  br i1 %.not187, label %.thread265, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !40
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !46
  %.not188 = icmp eq i32 %i.hw, 0
  br i1 %.not188, label %.thread265, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hx = tail call i32 @cli_scanelf(i32 noundef %0, ptr noundef nonnull %1) #9
  br label %.thread265

bb.co:                                            ; preds = %bb.x
  %i.hy = load i32, ptr %i.i, align 8, !tbaa !29
  %i.hz = and i32 %i.hy, 1
  %.not185 = icmp eq i32 %i.hz, 0
  br i1 %.not185, label %.thread265, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !40
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !41
  %i.ie = and i32 %i.id, 1024
  %.not186 = icmp eq i32 %i.ie, 0
  br i1 %.not186, label %.thread265, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.if = tail call i32 @cli_scansis(i32 noundef %0, ptr noundef nonnull %1) #9
  br label %.thread265

bb.cr:                                            ; preds = %.thread242
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !12
  %i.ii = and i32 %i.ih, 61440
  %i.ij = icmp eq i32 %i.ii, 32768
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = icmp slt i64 %i.il, 65536
  %or.cond = select i1 %i.ij, i1 %i.im, i1 false
  %spec.select = select i1 %or.cond, i32 501, i32 504
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.thread242
  %.0163 = phi i32 [ 504, %.thread242 ], [ %spec.select, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.ct

bb.ct:                                            ; preds = %bb.x, %bb.cs
  %.1 = phi i32 [ %i.ae, %bb.x ], [ %.0163, %bb.cs ]
  %i.in = load ptr, ptr %1, align 8, !tbaa !30
  %i.io = tail call i32 @cli_check_mydoom_log(i32 noundef %0, ptr noundef %i.in) #9
  br label %.thread265

.thread262:                                       ; preds = %bb.x
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !36
  br label %bb.cx

.thread257:                                       ; preds = %bb.ay, %bb.ax, %.thread239
  %i.ip = phi i32 [ %i.ds, %bb.ay ], [ %i.at, %.thread239 ], [ %i.at, %bb.ax ]
  %.1165255 = phi i32 [ %i.dr, %bb.ay ], [ %.0164, %.thread239 ], [ %.0164, %bb.ax ]
  store i32 %i.ip, ptr %i.as, align 8, !tbaa !37
  br label %bb.cx

.thread265:                                       ; preds = %bb.cf, %bb.ce, %bb.ca, %bb.cp, %bb.cq, %bb.cl, %bb.cm, %bb.cn, %bb.cj, %bb.ck, %bb.cg, %bb.ch, %bb.ci, %bb.cc, %bb.cd, %bb.cb, %bb.by, %bb.bz, %bb.co, %bb.bw, %bb.bx, %bb.bt, %bb.bu, %bb.bv, %bb.bq, %bb.br, %bb.bs, %bb.bn, %bb.bo, %bb.bp, %bb.bk, %bb.bl, %bb.bm, %bb.bh, %bb.bi, %bb.bj, %bb.be, %bb.bf, %bb.bg, %bb.bc, %bb.bd, %bb.az, %bb.ba, %bb.bb, %bb.av, %bb.aw, %bb.as, %bb.at, %bb.au, %bb.ap, %bb.aq, %bb.ar, %bb.am, %bb.an, %bb.ao, %bb.aj, %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ag, %bb.ct, %bb.ab, %bb.ac, %bb.ad, %bb.y
  %.1165.ph.ph = phi i32 [ %.0164, %bb.y ], [ %i.bo, %bb.ad ], [ %.0164, %bb.ac ], [ %.0164, %bb.ab ], [ %i.io, %bb.ct ], [ %i.bw, %bb.ag ], [ %.0164, %bb.af ], [ %.0164, %bb.ae ], [ %i.bz, %bb.ai ], [ %.0164, %bb.ah ], [ %i.ch, %bb.al ], [ %.0164, %bb.ak ], [ %.0164, %bb.aj ], [ %i.cp, %bb.ao ], [ %.0164, %bb.an ], [ %.0164, %bb.am ], [ %i.cx, %bb.ar ], [ %.0164, %bb.aq ], [ %.0164, %bb.ap ], [ %i.df, %bb.au ], [ %.0164, %bb.at ], [ %.0164, %bb.as ], [ %i.dl, %bb.aw ], [ %.0164, %bb.av ], [ %i.ea, %bb.bb ], [ %.0164, %bb.ba ], [ %.0164, %bb.az ], [ %i.eg, %bb.bd ], [ %.0164, %bb.bc ], [ %i.eo, %bb.bg ], [ %.0164, %bb.bf ], [ %.0164, %bb.be ], [ %i.ew, %bb.bj ], [ %.0164, %bb.bi ], [ %.0164, %bb.bh ], [ %i.fe, %bb.bm ], [ %.0164, %bb.bl ], [ %.0164, %bb.bk ], [ %i.fm, %bb.bp ], [ %.0164, %bb.bo ], [ %.0164, %bb.bn ], [ %i.fu, %bb.bs ], [ %.0164, %bb.br ], [ %.0164, %bb.bq ], [ %i.gc, %bb.bv ], [ %.0164, %bb.bu ], [ %.0164, %bb.bt ], [ %i.gi, %bb.bx ], [ %.0164, %bb.bw ], [ %.0164, %bb.co ], [ %.0164, %bb.bz ], [ %.0164, %bb.by ], [ 0, %bb.ca ], [ %.0164, %bb.cd ], [ %.0164, %bb.cc ], [ %i.hk, %bb.ci ], [ %.0164, %bb.ch ], [ %.0164, %bb.cg ], [ %i.hq, %bb.ck ], [ %.0164, %bb.cj ], [ %i.hx, %bb.cn ], [ %.0164, %bb.cm ], [ %.0164, %bb.cl ], [ %i.if, %bb.cq ], [ %.0164, %bb.cp ], [ 1, %bb.cb ], [ 1, %bb.cf ], [ 0, %bb.ce ]
  %.2.ph.ph = phi i32 [ 510, %bb.y ], [ 507, %bb.ad ], [ 507, %bb.ac ], [ 507, %bb.ab ], [ %.1, %bb.ct ], [ 511, %bb.ag ], [ 511, %bb.af ], [ 511, %bb.ae ], [ 535, %bb.ai ], [ 535, %bb.ah ], [ 536, %bb.al ], [ 536, %bb.ak ], [ 536, %bb.aj ], [ 514, %bb.ao ], [ 514, %bb.an ], [ 514, %bb.am ], [ 528, %bb.ar ], [ 528, %bb.aq ], [ 528, %bb.ap ], [ 526, %bb.au ], [ 526, %bb.at ], [ 526, %bb.as ], [ 527, %bb.aw ], [ 527, %bb.av ], [ 521, %bb.bb ], [ 521, %bb.ba ], [ 521, %bb.az ], [ 524, %bb.bd ], [ 524, %bb.bc ], [ 525, %bb.bg ], [ 525, %bb.bf ], [ 525, %bb.be ], [ 515, %bb.bj ], [ 515, %bb.bi ], [ 515, %bb.bh ], [ 513, %bb.bm ], [ 513, %bb.bl ], [ 513, %bb.bk ], [ 505, %bb.bp ], [ 505, %bb.bo ], [ 505, %bb.bn ], [ 506, %bb.bs ], [ 506, %bb.br ], [ 506, %bb.bq ], [ 520, %bb.bv ], [ 520, %bb.bu ], [ 520, %bb.bt ], [ 517, %bb.bx ], [ 517, %bb.bw ], [ 516, %bb.co ], [ 519, %bb.bz ], [ 519, %bb.by ], [ 519, %bb.ca ], [ 518, %bb.cd ], [ 518, %bb.cc ], [ 523, %bb.ci ], [ 523, %bb.ch ], [ 523, %bb.cg ], [ 522, %bb.ck ], [ 522, %bb.cj ], [ 503, %bb.cn ], [ 503, %bb.cm ], [ 503, %bb.cl ], [ 516, %bb.cq ], [ 516, %bb.cp ], [ 519, %bb.cb ], [ 518, %bb.cf ], [ 518, %bb.ce ]
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !36
  %i.is = add i32 %i.ir, -1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !36
  br label %bb.cx

bb.cu:                                            ; preds = %bb.aa
  %i.it = tail call fastcc i32 @cli_scanzip(i32 noundef %0, ptr noundef nonnull %1, i64 noundef 0, ptr noundef null) ; 2 uses
  %.pre = load i32, ptr %i.ax, align 4, !tbaa !36
  %.pre268 = load i32, ptr %i.i, align 8, !tbaa !29
  %.pre270 = and i32 %.pre268, 1
  %i.iu = add i32 %.pre, -1
  %i.iv = icmp eq i32 %.pre270, 0
  store i32 %i.iu, ptr %i.ax, align 4, !tbaa !36
  br i1 %i.iv, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %.thread285, %bb.cu
  %.1165.ph288 = phi i32 [ %.0164, %.thread285 ], [ %i.it, %bb.cu ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !40
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !41
  %i.ja = and i32 %i.iz, 2
  %i.jb = icmp ne i32 %i.ja, 0
  %i.jc = icmp samesign ugt i64 %i.d, 1048576
  %or.cond7 = select i1 %i.jb, i1 %i.jc, i1 false
  br i1 %or.cond7, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #9
  br label %bb.cx

bb.cx:                                            ; preds = %.thread, %.thread265, %.thread262, %.thread257, %bb.cw, %bb.cv, %bb.cu
  %.1165246261 = phi i32 [ %.1165.ph288, %bb.cw ], [ %.1165.ph288, %bb.cv ], [ %i.it, %bb.cu ], [ %.1165.ph.ph, %.thread265 ], [ %.1165255, %.thread257 ], [ %.0164, %.thread262 ], [ %.0164, %.thread ] ; 4 uses
  %.2248260 = phi i32 [ 508, %bb.cw ], [ 508, %bb.cv ], [ 508, %bb.cu ], [ %.2.ph.ph, %.thread265 ], [ 529, %.thread257 ], [ %i.ae, %.thread262 ], [ 508, %.thread ] ; 3 uses
  %.0 = phi i8 [ 0, %bb.cw ], [ 1, %bb.cv ], [ 1, %bb.cu ], [ 1, %.thread265 ], [ 1, %.thread257 ], [ 1, %.thread262 ], [ 1, %.thread ]
  %i.jd = icmp ne i32 %.2248260, 504
  %i.je = icmp ne i32 %.1165246261, 1
  %or.cond4 = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %or.cond4, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.jf = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = load i16, ptr %i.jg, align 4, !tbaa !38
  %.not231 = icmp eq i16 %i.jh, 0
  br i1 %.not231, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ji = tail call fastcc i32 @cli_scanraw(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %.2248260, i8 noundef zeroext %.0)
  %i.jj = icmp eq i32 %i.ji, 1
  br i1 %i.jj, label %bb.dg, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !36
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !36
  %i.jn = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #9 ; 0 uses
  %cond = icmp eq i32 %.2248260, 502
  br i1 %cond, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.jo = load i32, ptr %i.i, align 8, !tbaa !29
  %i.jp = and i32 %i.jo, 32
  %.not232 = icmp eq i32 %i.jp, 0
  br i1 %.not232, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !40
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !47
  %.not233 = icmp eq i32 %i.js, 0
  br i1 %.not233, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jt = tail call i32 @cli_scanpe(i32 noundef %0, ptr noundef nonnull %1) #9
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %bb.db, %bb.dc, %bb.dd
  %.2166 = phi i32 [ %i.jt, %bb.dd ], [ %.1165246261, %bb.dc ], [ %.1165246261, %bb.db ], [ %.1165246261, %bb.da ] ; 2 uses
  %i.ju = load i32, ptr %i.jk, align 4, !tbaa !36
  %i.jv = add i32 %i.ju, -1
  store i32 %i.jv, ptr %i.jk, align 4, !tbaa !36
  %i.jw = icmp eq i32 %.2166, -124
  br i1 %i.jw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.jx = tail call ptr @cl_strerror(i32 noundef -124) #9
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, i32 noundef %0, ptr noundef %i.jx) #9
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.cz, %bb.u, %bb.n, %bb.h, %bb.i, %bb.df, %bb.r, %bb.o, %bb.f, %bb.d, %bb.b
  %.0167 = phi i32 [ -123, %bb.b ], [ 0, %bb.d ], [ 1, %bb.o ], [ %i.k, %bb.h ], [ 0, %bb.r ], [ 0, %bb.n ], [ 0, %bb.df ], [ 1, %bb.cz ], [ 1, %bb.u ], [ -116, %bb.f ], [ 1, %bb.i ], [ %.2166, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0167
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #3

declare i32 @cli_scandesc(i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @cli_filetype2(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cli_scanraw(i32 noundef %0, ptr noundef %1, i32 noundef range(i32 505, 504) %2, i8 noundef zeroext range(i8 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.cli_exe_info, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %2, -500             ; 2 uses
  %5 = icmp ult i32 %switch.tableidx, 9
  br i1 %5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %6 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cli_scanraw, i64 %6
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0118 = phi i8 [ %switch.load, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.c = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #9
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.15) #9
  br label %bb.at

bb.f:                                             ; preds = %bb.d
  %i.e = call i32 @cli_scandesc(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %.0118, i32 noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %i.a) #9 ; 8 uses
  %i.f = icmp sgt i32 %i.e, 499
  br i1 %i.f, label %bb.g, label %bb.ar

bb.g:                                             ; preds = %bb.f
  %i.g = icmp eq i32 %2, 500                      ; 3 uses
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #9 ; 0 uses
  %i.i = call i32 @cli_scandesc(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 0, i32 noundef %i.e, i8 noundef zeroext 1, ptr noundef null) #9 ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.thread151.thread, label %.thread151

bb.i:                                             ; preds = %bb.g
  %i.k = icmp eq i32 %2, 502                      ; 5 uses
  switch i32 %2, label %.thread151 [
    i32 508, label %bb.j
    i32 502, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  store i32 -559038737, ptr %i.b, align 4, !tbaa !4
  %.0182 = load ptr, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  %.not133183 = icmp eq ptr %.0182, null
  br i1 %.not133183, label %.thread151, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.k

.thread:                                          ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ac, %bb.z, %bb.aa, %bb.v, %bb.w, %bb.x, %bb.s, %bb.t, %bb.p, %bb.q, %bb.l, %bb.m, %bb.n, %bb.k, %bb.ai, %bb.aj
  %.2201 = phi i32 [ %.2, %bb.aj ], [ %.1120184, %bb.ai ], [ %.1120184, %bb.k ], [ %.1120184, %bb.n ], [ %.1120184, %bb.m ], [ %.1120184, %bb.l ], [ %.1120184, %bb.q ], [ %.1120184, %bb.p ], [ %.1120184, %bb.t ], [ %.1120184, %bb.s ], [ %.1120184, %bb.x ], [ %.1120184, %bb.w ], [ %.1120184, %bb.v ], [ %.1120184, %bb.aa ], [ %.1120184, %bb.z ], [ %.1120184, %bb.ac ], [ %.1120184, %bb.af ], [ %.1120184, %bb.ae ], [ %.1120184, %bb.ad ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0185, i64 24
  %.0 = load ptr, ptr %i.o, align 8, !tbaa !48    ; 2 uses
  %.not133 = icmp eq ptr %.0, null
  br i1 %.not133, label %.thread151, label %bb.k, !llvm.loop !50

bb.k:                                             ; preds = %.lr.ph, %.thread
  %.0185 = phi ptr [ %.0182, %.lr.ph ], [ %.0, %.thread ] ; 8 uses
  %.1120184 = phi i32 [ 0, %.lr.ph ], [ %.2201, %.thread ] ; 18 uses
  %i.p = load i32, ptr %.0185, align 8, !tbaa !51 ; 2 uses
  switch i32 %i.p, label %bb.ai [
    i32 532, label %.thread
    i32 531, label %bb.l
    i32 533, label %bb.p
    i32 534, label %bb.s
    i32 535, label %bb.v
    i32 536, label %bb.z
    i32 502, label %bb.ac
  ]

bb.l:                                             ; preds = %bb.k
  %i.q = load i32, ptr %i.l, align 8, !tbaa !29
  %i.r = trunc i32 %i.q to i1
  %or.cond3 = and i1 %i.k, %i.r
  br i1 %or.cond3, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !41
  %i.v = and i32 %i.u, 2
  %.not142 = icmp eq i32 %i.v, 0
  br i1 %.not142, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53   ; 2 uses
  %.not143 = icmp eq i64 %i.x, 0
  br i1 %.not143, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = trunc i64 %i.x to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17, i32 noundef %i.y) #9
  %i.z = load i64, ptr %i.w, align 8, !tbaa !53
  %i.aa = call fastcc i32 @cli_scanzip(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.z, ptr noundef nonnull %i.b)
  br label %bb.aj

bb.p:                                             ; preds = %bb.k
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !29
  %i.ac = trunc i32 %i.ab to i1
  %or.cond5 = and i1 %i.k, %i.ac
  br i1 %or.cond5, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  %i.ag = and i32 %i.af, 32
  %.not141 = icmp eq i32 %i.ag, 0
  br i1 %.not141, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.aj = trunc i64 %i.ai to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18, i32 noundef %i.aj) #9
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.al = call fastcc i32 @cli_scanmscab(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.ak)
  br label %bb.aj

bb.s:                                             ; preds = %bb.k
  %i.am = load i32, ptr %i.l, align 8, !tbaa !29
  %i.an = trunc i32 %i.am to i1
  %or.cond7 = and i1 %i.k, %i.an
  br i1 %or.cond7, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !41
  %i.ar = and i32 %i.aq, 4096
  %.not140 = icmp eq i32 %i.ar, 0
  br i1 %.not140, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !53
  %i.au = trunc i64 %i.at to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %i.au) #9
  %i.av = load i64, ptr %i.as, align 8, !tbaa !53
  %i.aw = call fastcc i32 @cli_scanarj(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.av)
  br label %bb.aj

bb.v:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.l, align 8, !tbaa !29
  %i.ay = trunc i32 %i.ax to i1
  %or.cond9 = and i1 %i.k, %i.ay
  br i1 %or.cond9, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.bc = and i32 %i.bb, 2048
  %.not139 = icmp eq i32 %i.bc, 0
  br i1 %.not139, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !53 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 4
  br i1 %i.bf, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bg = trunc i64 %i.be to i32
  %i.bh = add i32 %i.bg, -4
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, i32 noundef %i.bh) #9
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !53
  %i.bj = add nsw i64 %i.bi, -4
  %i.bk = call i32 @cli_scannulsft(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.bj) #9
  br label %bb.aj

bb.z:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.l, align 8, !tbaa !29
  %i.bm = trunc i32 %i.bl to i1
  %or.cond11 = and i1 %i.k, %i.bm
  br i1 %or.cond11, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !41
  %i.bq = and i32 %i.bp, 8192
  %.not138 = icmp eq i32 %i.bq, 0
  br i1 %.not138, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !53
  %i.bt = trunc i64 %i.bs to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %i.bt) #9
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !53
  %i.bv = add nsw i64 %i.bu, 23
  %i.bw = call i32 @cli_scanautoit(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.bv) #9
  br label %bb.aj

bb.ac:                                            ; preds = %bb.k
  %i.bx = load i32, ptr %i.l, align 8, !tbaa !29
  %i.by = and i32 %i.bx, 32
  %.not134 = icmp eq i32 %i.by, 0
  br i1 %.not134, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !47
  %.not135 = icmp eq i32 %i.ca, 0
  br i1 %.not135, label %.thread, label %bb.ae
end_hunk_1
