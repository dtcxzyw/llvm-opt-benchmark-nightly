Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unrar_iface?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.RARHeaderDataEx = type <{ [1024 x i8], [1024 x i32], [1024 x i8], [1024 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, [32 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [988 x i32] }>

@unrar_debug = local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [32 x i8] c"unrar_open: Invalid arguments.\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"unrar_open: Not enough memory to allocate main archive header data structure.\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"unrar_open: Not enough memory to allocate main archive header comment buffer.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"unrar_open: Failed to open archive: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"unrar_open: Comments are not present in this archive.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"unrar_open: Archive Comments may be broken.\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"unrar_open: Comment buffer was too small, comments are not read completely.\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"unrar_open: Archive Comments read completely.\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"unrar_open: Not enough memory to extract comments!\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"unrar_open: Unknown archive comment state %u!\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"unrar_open: Error duplicating comment buffer.\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"unrar_open: Volume attribute (archive volume):              %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"unrar_open: Archive comment present:                        %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"unrar_open: Archive lock attribute:                         %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"unrar_open: Solid attribute (solid archive):                %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"unrar_open: New volume naming scheme ('volname.partN.rar'): %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"unrar_open: Authenticity information present (obsolete):    %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"unrar_open: Recovery record present:                        %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"unrar_open: Block headers are encrypted:                    %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"unrar_open: First volume (set only by RAR 3.0 and later):   %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"unrar_open: Opened archive: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"unrar_peek_file_header: Invalid arguments.\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"unrar_peek_file_header:   Name:          %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"unrar_peek_file_header:   Directory?:    %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"unrar_peek_file_header:   Target Dir:    %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"unrar_peek_file_header:   RAR Version:   %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"unrar_peek_file_header:   Packed Size:   %lu\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"unrar_peek_file_header:   Unpacked Size: %lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"unrar_peek_file_header:   link type %d, target %ls\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"unrar_extract_file: Invalid arguments.\0A\00", align 1
@.str.32 = private unnamed_addr constant [82 x i8] c"unrar_extract_file: Warning: Bad data/Invalid CRC. Attempting to scan anyways...\0A\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"unrar_extract_file: Extracted file to: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"unrar_skip_file: Invalid arguments.\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"unrar_skip_file: File skipped.\0A\00", align 1
@.str.36 = private unnamed_addr constant [84 x i8] c"CallbackProc: Archive has multiple volumes, but we don't support multiple volumes.\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"CallbackProc: Extracting to a new tempfile!\0A\00", align 1
@.str.38 = private unnamed_addr constant [66 x i8] c"CallbackProc: Extracting %lu bytes of data to a provided buffer.\0A\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"CallbackProc: P1 callback argument is invalid.\0A\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"CallbackProc: Password required, attempting empty password.\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"CallbackProc: Unexpected callback type!\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [25 x i8] c"unrar_retcode: Success!\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"unrar_retcode: No more files in archive.\0A\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"unrar_retcode: Not enough memory!\0A\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"unrar_retcode: Encrypted file header found in archive.\0A\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"unrar_retcode: Encrypted archive or encrypted file in archive.\0A\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"unrar_retcode: Bad data / File CRC error.\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"unrar_retcode: Unknown archive format.\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"unrar_retcode: Volume open error.\0A\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"unrar_retcode: File create error.\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"unrar_retcode: File close error.\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"unrar_retcode: Read error.\0A\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"unrar_retcode: Write error.\0A\00", align 1
@.str.54 = private unnamed_addr constant [89 x i8] c"unrar_retcode: Error attempting to unpack the reference record without its source file.\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"unrar_retcode: Unexpected error code: %d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define range(i32 0, 6) i32 @libclamunrar_iface_LTX_unrar_open(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 3
  %i.e = icmp eq <4 x ptr> %i.d, splat (ptr null)
  %i.f = bitcast <4 x i1> %i.e to i4
  %.not = icmp eq i4 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not90 = icmp eq i8 %i.g, 0
  br i1 %.not90, label %.thread126, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str)
  br label %.thread126

bb.d:                                             ; preds = %bb.a
  store i8 %4, ptr @unrar_debug, align 1, !tbaa !8
  %i.h = tail call noalias dereferenceable_or_null(176) ptr @calloc(i64 noundef 176, i64 noundef 1) #13 ; 12 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %5 = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not89 = icmp eq i8 %5, 0
  br i1 %.not89, label %.thread126, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.1)
  br label %.thread126

bb.g:                                             ; preds = %bb.d
  store ptr %0, ptr %i.h, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 1, ptr %i.j, align 1, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 1, ptr %i.k, align 1, !tbaa !17
  %i.l = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 1, i64 noundef 65536) #13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.m, align 1, !tbaa !18
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %6 = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not88 = icmp eq i8 %6, 0
  br i1 %.not88, label %.thread133.thread, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.2)
  br label %.thread133

bb.j:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store i32 65536, ptr %i.o, align 1, !tbaa !19
  %i.p = tail call ptr @RAROpenArchiveEx(ptr noundef nonnull %i.h) ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.r = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not87 = icmp eq i8 %i.r, 0
  br i1 %.not87, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.t = load i32, ptr %i.s, align 1, !tbaa !20
  %i.u = tail call fastcc noundef i32 @_ZL13unrar_retcodei(i32 noundef %i.t)
  br label %.thread133

bb.n:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.w = load i32, ptr %i.v, align 1, !tbaa !21   ; 2 uses
  %i.x = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not65 = icmp eq i8 %i.x, 0                    ; 6 uses
  switch i32 %i.w, label %bb.y [
    i32 0, label %bb.o
    i32 12, label %bb.q
    i32 20, label %bb.s
    i32 1, label %bb.u
    i32 11, label %bb.w
  ]

bb.o:                                             ; preds = %bb.n
  br i1 %.not65, label %bb.aa, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.4)
  br label %bb.aa

bb.q:                                             ; preds = %bb.n
  br i1 %.not65, label %bb.aa, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.5)
  br label %bb.aa

bb.s:                                             ; preds = %bb.n
  br i1 %.not65, label %bb.aa, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.6)
  br label %bb.aa

bb.u:                                             ; preds = %bb.n
  br i1 %.not65, label %bb.aa, label %bb.v, !prof !9

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.7)
  br label %bb.aa

bb.w:                                             ; preds = %bb.n
  br i1 %.not65, label %bb.aa, label %bb.x, !prof !9

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.8)
  br label %bb.aa

bb.y:                                             ; preds = %bb.n
  br i1 %.not65, label %bb.aa, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.w)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.z = load i32, ptr %i.y, align 1, !tbaa !22   ; 2 uses
  %.not66 = icmp eq i32 %i.z, 0
  br i1 %.not66, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aa = load i32, ptr %i.o, align 1, !tbaa !19  ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.aa) ; 2 uses
  store i32 %., ptr %3, align 4, !tbaa !23
  %i.ab = load ptr, ptr %i.m, align 1, !tbaa !18  ; 3 uses
  %i.ac = zext i32 %. to i64                      ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not8.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not8.i.i, label %_ZL13unrar_strnlenPKcm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ad
  %.05.i.i = phi i64 [ %i.af, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.05.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %.not.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i, label %_ZL13unrar_strnlenPKcm.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.af = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.ac
  br i1 %exitcond.not.i.i, label %_ZL13unrar_strnlenPKcm.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZL13unrar_strnlenPKcm.exit.i:                    ; preds = %bb.ad, %.lr.ph.i.i, %bb.ac
  %.0.lcssa.i.i = phi i64 [ 0, %bb.ac ], [ %i.ac, %bb.ad ], [ %.05.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ag = add nuw i64 %.0.lcssa.i.i, 1
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #14 ; 4 uses
  %.not13.i = icmp eq ptr %i.ah, null
  br i1 %.not13.i, label %bb.ae, label %_ZL13unrar_strndupPKcm.exit

_ZL13unrar_strndupPKcm.exit:                      ; preds = %_ZL13unrar_strnlenPKcm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.ab, i64 %.0.lcssa.i.i, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.lcssa.i.i
  store i8 0, ptr %i.ai, align 1, !tbaa !8
  store ptr %i.ah, ptr %2, align 8, !tbaa !26
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab, %_ZL13unrar_strnlenPKcm.exit.i
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.aj = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not67 = icmp eq i8 %i.aj, 0
  br i1 %.not67, label %bb.ag, label %bb.af, !prof !9

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.10)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  store i32 0, ptr %3, align 4, !tbaa !23
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL13unrar_strndupPKcm.exit, %bb.ag, %bb.aa
  %i.ak = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not68 = icmp eq i8 %i.ak, 0
  br i1 %.not68, label %bb.ao, label %bb.ai, !prof !9

bb.ai:                                            ; preds = %bb.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 44 ; 9 uses
  %i.am = load i32, ptr %i.al, align 1, !tbaa !27
  %i.an = and i32 %i.am, 1
  %.not69 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not69, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.ao)
  %.pr = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not70 = icmp eq i8 %.pr, 0
  br i1 %.not70, label %.thread173, label %bb.aj, !prof !28

.thread173:                                       ; preds = %bb.ai
  store ptr %i.p, ptr %1, align 8, !tbaa !29
  br label %.thread133

bb.aj:                                            ; preds = %bb.ai
  %i.ap = load i32, ptr %i.al, align 1, !tbaa !27
  %i.aq = and i32 %i.ap, 2
  %.not71 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not71, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ar)
  %.pr95 = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not72 = icmp eq i8 %.pr95, 0
  br i1 %.not72, label %.thread149, label %.thread96, !prof !28

.thread96:                                        ; preds = %bb.aj
  %i.as = load i32, ptr %i.al, align 1, !tbaa !27
  %i.at = and i32 %i.as, 4
  %.not73 = icmp eq i32 %i.at, 0
  %i.au = select i1 %.not73, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.au)
  %.pr98.pr = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not74 = icmp eq i8 %.pr98.pr, 0
  br i1 %.not74, label %.thread149, label %bb.ak, !prof !30

bb.ak:                                            ; preds = %.thread96
  %i.av = load i32, ptr %i.al, align 1, !tbaa !27
  %i.aw = and i32 %i.av, 8
  %.not75 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not75, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ax)
  %.pr101 = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not76 = icmp eq i8 %.pr101, 0
  br i1 %.not76, label %.thread164, label %.thread103, !prof !28

.thread103:                                       ; preds = %bb.ak
  %i.ay = load i32, ptr %i.al, align 1, !tbaa !27
  %i.az = and i32 %i.ay, 16
  %.not77 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not77, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ...) @_ZL21unrar_dbgmsg_internalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ba)
  %.pr106.pr.pr = load i8, ptr @unrar_debug, align 1, !tbaa !8
  %.not78 = icmp eq i8 %.pr106.pr.pr, 0
end_hunk_0
