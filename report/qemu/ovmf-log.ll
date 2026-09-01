Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ovmf-log?download=true
inline.NumInlined: 23
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AddressSpace = type { %struct.rcu_head, ptr, ptr, ptr, i32, i32, ptr, %union.anon, %union.anon.0, i64, i64, %struct.QemuMutex, %struct.anon }
%struct.rcu_head = type { ptr, ptr }
%union.anon = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%union.anon.0 = type { %struct.QTailQLink }
%struct.QemuMutex = type { %union.pthread_mutex_t, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon = type { ptr }
%struct.MemDebugLogMagic = type { i64, i64 }
%struct.MEM_DEBUG_LOG_HDR = type { i64, i64, i64, i64, i64, i64, i64, i64, [128 x i8] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"../hw/uefi/ovmf-log.c\00", align 1
@__func__.qmp_query_firmware_log = private unnamed_addr constant [23 x i8] c"qmp_query_firmware_log\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"firmware log buffer not found\00", align 1
@address_space_memory = external global %struct.AddressSpace, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"can not read firmware log buffer header\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"firmware log buffer header is invalid\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"parameter 'max-size' exceeds 1MiB\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"max-size\00", align 1
@__func__.hmp_info_firmware_log = private unnamed_addr constant [22 x i8] c"hmp_info_firmware_log\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"log != NULL\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"log->log != NULL\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"[ firmware version: %s ]\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"x86-machine\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"virt-machine\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/boards.h\00", align 1
@__func__.MACHINE = private unnamed_addr constant [8 x i8] c"MACHINE\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/qemu/qemu/include/hw/i386/x86.h\00", align 1
@__func__.X86_MACHINE = private unnamed_addr constant [12 x i8] c"X86_MACHINE\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/qemu/qemu/include/hw/arm/virt.h\00", align 1
@__func__.VIRT_MACHINE = private unnamed_addr constant [13 x i8] c"VIRT_MACHINE\00", align 1
@__func__.handle_ovmf_log_range = private unnamed_addr constant [22 x i8] c"handle_ovmf_log_range\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"can not read firmware log buffer contents\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias noundef ptr @qmp_query_firmware_log(i1 noundef zeroext %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.MemDebugLogMagic, align 8   ; 5 uses
  %4 = alloca %struct.MemDebugLogMagic, align 8   ; 5 uses
  %5 = alloca %struct.MemDebugLogMagic, align 8   ; 6 uses
  %6 = alloca %struct.MEM_DEBUG_LOG_HDR, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %6, i8 0, i64 192, i1 false), !annotation !7
  %i.a = tail call ptr @g_string_new(ptr noundef nonnull @.str) #7 ; 11 uses
  %i.b = tail call ptr @qdev_get_machine() #7
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #7 ; 4 uses
  %i.d = tail call i32 @target_arch() #7
  %i.e = icmp eq i32 %i.d, 26
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @object_dynamic_cast(ptr noundef %i.c, ptr noundef nonnull @.str.12) #7
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !7
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.c
  %.01617.i.i = phi i64 [ %i.m, %bb.e ], [ 8388608, %bb.c ] ; 4 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !8
  fence seq_cst
  %i.h = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %.01617.i.i, i64 4294967296, ptr noundef nonnull %5, i64 noundef 16, i1 noundef zeroext false) #7
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.i = load i128, ptr %5, align 8
  %i.j = icmp ne i128 66998243274204763319292873398704502383, %i.i
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %find_ovmf_log.exit.thread79, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw nsw i64 %.01617.i.i, 4096
  %i.n = icmp samesign ult i64 %.01617.i.i, 9433088
  br i1 %i.n, label %.lr.ph.i.i, label %bb.f, !llvm.loop !9

find_ovmf_log.exit.thread79:                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.n

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 992
  %i.p = load i64, ptr %i.o, align 16             ; 3 uses
  %7 = call i64 @llvm.usub.sat.i64(i64 %i.p, i64 134217728) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %8 = icmp ult i64 %7, %i.p
  br i1 %8, label %.lr.ph.preheader.i.i, label %find_ovmf_log_range.exit28.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !7
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %bb.h, %.lr.ph.preheader.i.i
  %.01617.i25.i = phi i64 [ %i.v, %bb.h ], [ %7, %.lr.ph.preheader.i.i ] ; 3 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !8
  fence seq_cst
  %i.q = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %.01617.i25.i, i64 4294967296, ptr noundef nonnull %4, i64 noundef 16, i1 noundef zeroext false) #7
  %.not.i26.i = icmp eq i32 %i.q, 0
  br i1 %.not.i26.i, label %bb.g, label %find_ovmf_log_range.exit28.i

bb.g:                                             ; preds = %.lr.ph.i24.i
  %i.r = load i128, ptr %4, align 8
  %i.s = icmp ne i128 66998243274204763319292873398704502383, %i.r
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %find_ovmf_log_range.exit28.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %.01617.i25.i, 4096              ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %.lr.ph.i24.i, label %find_ovmf_log_range.exit28.i, !llvm.loop !9

find_ovmf_log_range.exit28.i:                     ; preds = %bb.h, %bb.g, %.lr.ph.i24.i, %bb.f
  %.0.i23.i = phi i64 [ -1, %bb.f ], [ -1, %.lr.ph.i24.i ], [ -1, %bb.h ], [ %.01617.i25.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %find_ovmf_log.exit

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.x = tail call i32 @target_arch() #7
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %find_ovmf_log.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @object_dynamic_cast(ptr noundef %i.c, ptr noundef nonnull @.str.13) #7
  %.not21.i = icmp eq ptr %i.z, null
  br i1 %.not21.i, label %find_ovmf_log.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, i32 noundef 219, ptr noundef nonnull @__func__.VIRT_MACHINE) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 720
  %i.ac = load ptr, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = add i64 %i.ae, 134217728
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ag = icmp ult i64 %i.ae, -134217728
  br i1 %i.ag, label %.lr.ph.preheader.i30.i, label %find_ovmf_log_range.exit35.i

.lr.ph.preheader.i30.i:                           ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !7
  br label %.lr.ph.i31.i

.lr.ph.i31.i:                                     ; preds = %bb.m, %.lr.ph.preheader.i30.i
  %.01617.i32.i = phi i64 [ %i.am, %bb.m ], [ %i.ae, %.lr.ph.preheader.i30.i ] ; 3 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !8
  fence seq_cst
  %i.ah = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %.01617.i32.i, i64 4294967296, ptr noundef nonnull %3, i64 noundef 16, i1 noundef zeroext false) #7
  %.not.i33.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i33.i, label %bb.l, label %find_ovmf_log_range.exit35.i

bb.l:                                             ; preds = %.lr.ph.i31.i
  %i.ai = load i128, ptr %3, align 8
  %i.aj = icmp ne i128 66998243274204763319292873398704502383, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %find_ovmf_log_range.exit35.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add i64 %.01617.i32.i, 4096             ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.af
  br i1 %i.an, label %.lr.ph.i31.i, label %find_ovmf_log_range.exit35.i, !llvm.loop !9

find_ovmf_log_range.exit35.i:                     ; preds = %bb.m, %bb.l, %.lr.ph.i31.i, %bb.k
  %.0.i29.i = phi i64 [ -1, %bb.k ], [ -1, %.lr.ph.i31.i ], [ -1, %bb.m ], [ %.01617.i32.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %find_ovmf_log.exit

find_ovmf_log.exit:                               ; preds = %find_ovmf_log_range.exit28.i, %find_ovmf_log_range.exit35.i
  %.1.i = phi i64 [ %.0.i23.i, %find_ovmf_log_range.exit28.i ], [ %.0.i29.i, %find_ovmf_log_range.exit35.i ] ; 2 uses
  %i.ao = icmp eq i64 %.1.i, -1
  br i1 %i.ao, label %find_ovmf_log.exit.thread, label %bb.n

find_ovmf_log.exit.thread:                        ; preds = %bb.i, %bb.j, %find_ovmf_log.exit
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__func__.qmp_query_firmware_log, ptr noundef nonnull @.str.2) #7
  br label %bb.ak

bb.n:                                             ; preds = %find_ovmf_log.exit.thread79, %find_ovmf_log.exit
  %.1.i81 = phi i64 [ %.01617.i.i, %find_ovmf_log.exit.thread79 ], [ %.1.i, %find_ovmf_log.exit ] ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !8
  fence seq_cst
  %i.ap = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %.1.i81, i64 4294967296, ptr noundef nonnull %6, i64 noundef 192, i1 noundef zeroext false) #7
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 185, ptr noundef nonnull @__func__.qmp_query_firmware_log, ptr noundef nonnull @.str.3) #7
  br label %bb.ak

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.at = load i64, ptr %i.as, align 8            ; 6 uses
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 9 uses
  %i.ax = icmp ugt i64 %i.aw, %i.at
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 191, ptr noundef nonnull @__func__.qmp_query_firmware_log, ptr noundef nonnull @.str.4) #7
  br label %bb.ak

bb.s:                                             ; preds = %bb.q
  br i1 %0, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ay = icmp ugt i64 %1, 1048576
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 197, ptr noundef nonnull @__func__.qmp_query_firmware_log, ptr noundef nonnull @.str.5) #7
  br label %bb.ak

bb.v:                                             ; preds = %bb.s, %bb.t
  %.054 = phi i64 [ %1, %bb.t ], [ 1048576, %bb.s ] ; 4 uses
  %i.az = icmp ugt i64 %i.ar, %i.aw
  %i.ba = icmp ugt i64 %i.aw, %.054               ; 2 uses
  br i1 %i.az, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %i.ba, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bb = sub nuw i64 %i.aw, %.054
  br label %.sink.split

bb.y:                                             ; preds = %bb.w
  %i.bc = sub nuw nsw i64 %.054, %i.aw            ; 2 uses
  %i.bd = icmp ugt i64 %i.at, %i.bc
  %i.be = sub nuw i64 %i.at, %i.bc                ; 2 uses
  %i.bf = icmp ult i64 %i.ar, %i.be
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bg = sub nuw i64 %i.aw, %.054                ; 2 uses
  %i.bh = icmp ult i64 %i.ar, %i.bg
  %or.cond105 = select i1 %i.ba, i1 %i.bh, i1 false
  br i1 %or.cond105, label %.sink.split, label %bb.aa

.sink.split:                                      ; preds = %bb.z, %bb.y, %bb.x
  %.sink = phi i64 [ %i.bb, %bb.x ], [ %i.be, %bb.y ], [ %i.bg, %bb.z ] ; 2 uses
  store i64 %.sink, ptr %i.aq, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.y, %bb.z
  %i.bi = phi i64 [ %i.ar, %bb.y ], [ %.sink, %.sink.split ], [ %i.ar, %bb.z ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, %.1.i81                  ; 5 uses
  %i.bm = icmp ugt i64 %i.bi, %i.aw
  %i.bn = add i64 %i.bl, %i.bi                    ; 4 uses
  br i1 %i.bm, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bo = add i64 %i.bl, %i.at
  %i.bp = icmp ugt i64 %i.bn, %i.bo
  br i1 %i.bp, label %handle_ovmf_log_range.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = sub i64 %i.at, %i.bi                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = add i64 %i.bs, %i.bq
  %i.bu = call ptr @g_string_set_size(ptr noundef %i.a, i64 noundef %i.bt) #7 ; 0 uses
  %i.bv = load ptr, ptr %i.a, align 8
  %i.bw = load i64, ptr %i.br, align 8
  %i.bx = sub i64 %i.bw, %i.bq
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !8
  fence seq_cst
  %i.bz = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.bn, i64 4294967296, ptr noundef %i.by, i64 noundef %i.bq, i1 noundef zeroext false) #7
  %.not.i71 = icmp eq i32 %i.bz, 0
  br i1 %.not.i71, label %handle_ovmf_log_range.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 163, ptr noundef nonnull @__func__.handle_ovmf_log_range, ptr noundef nonnull @.str.18) #7
  br label %handle_ovmf_log_range.exit

handle_ovmf_log_range.exit:                       ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.ca = load ptr, ptr %2, align 8
  %.not68 = icmp eq ptr %i.ca, null
  br i1 %.not68, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %handle_ovmf_log_range.exit
end_hunk_0
