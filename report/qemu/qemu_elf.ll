Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu_elf?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"Input file has the wrong format\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to extract QEMU CPU states\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Using Linux mmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to open ELF dump file '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to get size of ELF dump file\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to map ELF file\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid input dump file size\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Invalid ELF signature, input file is not ELF\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Invalid ELF class or byte order, must be 64-bit LE\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Invalid ELF version\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"Invalid input dump architecture, only x86_64 is supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Invalid ELF type, must be core file\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Invalid number of ELF program headers\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"phdrs do not fit in file\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Failed to find PT_NOTE\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"QEMU\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"CPU #%u: QEMU CPU state size %u doesn't match\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"%u CPU states has been found\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @is_system(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i64, ptr %i.a, align 8
  %i.c = lshr i64 %i.b, 63
  %i.d = trunc nuw nsw i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @elf64_getphdr(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext i16 @elf_getphdrnum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i16, ptr %i.a, align 8
  ret i16 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @QEMU_Elf_init(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2) #10 ; 0 uses
  %i.b = tail call i32 (ptr, i32, ...) @open64(ptr noundef %1, i32 noundef 0, i32 noundef 0) #10 ; 6 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %1) #10 ; 0 uses
  br label %QEMU_Elf_map.exit.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false), !annotation !8
  %i.f = call i32 @fstat64(i32 noundef %i.b, ptr noundef nonnull %2) #10
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.4) #10 ; 0 uses
  %i.i = tail call i32 @close(i32 noundef %i.b) #10 ; 0 uses
  br label %QEMU_Elf_map.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  store i64 %i.k, ptr %0, align 8
  %i.l = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.k, i32 noundef 3, i32 noundef 16386, i32 noundef %i.b, i64 noundef 0) #10 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 8          ; 5 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %i.n, label %bb.f, label %bb.g

QEMU_Elf_map.exit.thread:                         ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8
  %i.p = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.o, i32 noundef 1, ptr noundef nonnull @.str.5) #10 ; 0 uses
  %i.q = tail call i32 @close(i32 noundef %i.b) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.r = tail call i32 @close(i32 noundef %i.b) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %.val7 = load ptr, ptr %i.m, align 8            ; 9 uses
  %i.s = icmp ult i64 %.val, 64
  br i1 %i.s, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %.val7, align 1
  %i.u = icmp ne i32 %i.t, 1179403647
  %i.v = zext i1 %i.u to i32
  %.not.i12 = icmp eq i32 %i.v, 0
  br i1 %.not.i12, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.val7, i64 4
  %i.x = load i8, ptr %i.w, align 4
  %.not13.i = icmp eq i8 %i.x, 2
  br i1 %.not13.i, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val7, i64 5
  %i.z = load i8, ptr %i.y, align 1
  %.not14.i = icmp eq i8 %i.z, 1
  br i1 %.not14.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.val7, i64 6
  %i.ab = load i8, ptr %i.aa, align 2
  %.not15.i = icmp eq i8 %i.ab, 1
  br i1 %.not15.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.val7, i64 18
  %i.ad = load i16, ptr %i.ac, align 2
  %.not16.i = icmp eq i16 %i.ad, 62
  br i1 %.not16.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.af = load i16, ptr %i.ae, align 8
  %.not17.i = icmp eq i16 %i.af, 4
  br i1 %.not17.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.val7, i64 56
  %i.ah = load i16, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp ult i16 %i.ah, 2
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = zext i16 %i.ah to i64
  %i.ak = mul nuw nsw i64 %i.aj, 56
  %i.al = getelementptr inbounds nuw i8, ptr %.val7, i64 32
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ak, i64 %i.am) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %i.aq = icmp ugt i64 %i.ap, %.val
  %or.cond.i = or i1 %i.ao, %i.aq
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.str.14.sink.i = phi ptr [ @.str.13, %bb.n ], [ @.str.12, %bb.m ], [ @.str.11, %bb.l ], [ @.str.10, %bb.k ], [ @.str.9, %bb.i ], [ @.str.8, %bb.h ], [ @.str.6, %bb.g ], [ @.str.9, %bb.j ], [ @.str.14, %bb.o ]
  %i.ar = load ptr, ptr @stderr, align 8
  %i.as = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ar, i32 noundef 1, ptr noundef nonnull %.str.14.sink.i) #10 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8
  %i.au = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.at, i32 noundef 1, ptr noundef nonnull @.str) #10 ; 0 uses
  %.val10 = load i64, ptr %0, align 8
  %.val11 = load ptr, ptr %i.m, align 8
  %i.av = tail call i32 @munmap(ptr noundef %.val11, i64 noundef %.val10) #10 ; 0 uses
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.val7, i64 %i.am ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %.not.i14 = icmp eq i32 %i.ax, 4
  br i1 %.not.i14, label %bb.r, label %init_states.exit.thread

init_states.exit.thread:                          ; preds = %bb.q
  %i.ay = load ptr, ptr @stderr, align 8
  %i.az = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ay, i32 noundef 1, ptr noundef nonnull @.str.15) #10 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8
  %i.bb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ba, i32 noundef 1, ptr noundef nonnull @.str.1) #10 ; 0 uses
  %.val8 = load i64, ptr %0, align 8
  %.val9 = load ptr, ptr %i.m, align 8
  %i.bc = tail call i32 @munmap(ptr noundef %.val9, i64 noundef %.val8) #10 ; 0 uses
  br label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = tail call ptr @g_ptr_array_new() #10    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bf, i64 %i.bi) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %.pre.i = load i64, ptr %0, align 8             ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %.pre.i)
  %.0.i15 = select i1 %i.bk, i64 %.pre.i, i64 %i.bm ; 5 uses
  %i.bn = icmp ult i64 %i.bf, %.0.i15
  br i1 %i.bn, label %.lr.ph.i, label %init_states.exit

.lr.ph.i:                                         ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %.lr.ph.i
  %.05158.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %i.cr, %bb.z ] ; 3 uses
  %i.bp = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.05158.i ; 2 uses
  %i.br = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.05158.i, i64 12) ; 2 uses
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  %i.bt = icmp ugt i64 %.05158.i, -16
  %or.cond.i.i = or i1 %i.bt, %i.bs
  br i1 %or.cond.i.i, label %init_states.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = extractvalue { i64, i1 } %i.br, 0
  %i.bv = add nuw i64 %i.bu, 3
  %i.bw = and i64 %i.bv, -4                       ; 3 uses
  %i.bx = icmp ugt i64 %i.bw, %.0.i15
  br i1 %i.bx, label %init_states.exit, label %advance_note_offset.exit.i

advance_note_offset.exit.i:                       ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw
  %i.bz = load i32, ptr %i.bq, align 4
  %i.ca = zext i32 %i.bz to i64
  %i.cb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bw, i64 range(i64 0, 4294967296) %i.ca) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  %i.cd = extractvalue { i64, i1 } %i.cb, 0       ; 2 uses
  %i.ce = icmp ugt i64 %i.cd, -4
  %or.cond.i35.i = or i1 %i.cc, %i.ce
  br i1 %or.cond.i35.i, label %init_states.exit, label %bb.u

bb.u:                                             ; preds = %advance_note_offset.exit.i
  %i.cf = add nuw i64 %i.cd, 3
  %i.cg = and i64 %i.cf, -4                       ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, %.0.i15
  br i1 %i.ch, label %init_states.exit, label %advance_note_offset.exit37.i

advance_note_offset.exit37.i:                     ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cg ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.ck = load i32, ptr %i.cj, align 4            ; 3 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cg, i64 range(i64 0, 4294967296) %i.cl) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0       ; 2 uses
  %i.cp = icmp ugt i64 %i.co, -4
  %or.cond.i38.i = or i1 %i.cn, %i.cp
  br i1 %or.cond.i38.i, label %init_states.exit, label %bb.v

bb.v:                                             ; preds = %advance_note_offset.exit37.i
  %i.cq = add nuw i64 %i.co, 3
  %i.cr = and i64 %i.cq, -4                       ; 3 uses
  %i.cs = icmp ugt i64 %i.cr, %.0.i15
  br i1 %i.cs, label %init_states.exit, label %advance_note_offset.exit40.i

advance_note_offset.exit40.i:                     ; preds = %bb.v
  %i.ct = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(5) @.str.16) #11
  %.not34.i = icmp eq i32 %i.ct, 0
  %i.cu = icmp ugt i32 %i.ck, 431
  %or.cond.i16 = select i1 %.not34.i, i1 %i.cu, i1 false
  br i1 %or.cond.i16, label %bb.w, label %bb.z

bb.w:                                             ; preds = %advance_note_offset.exit40.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.ck) ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 440
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr @stderr, align 8
  %i.da = load i32, ptr %i.bo, align 8
  %i.db = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cz, i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %i.da, i32 noundef %i.cx) #10 ; 0 uses
  store i32 0, ptr %i.bd, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @g_ptr_array_add(ptr noundef %i.bg, ptr noundef nonnull %i.ci) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %advance_note_offset.exit40.i
  %i.dc = icmp ult i64 %i.cr, %.0.i15
  br i1 %i.dc, label %bb.s, label %init_states.exit, !llvm.loop !7

init_states.exit:                                 ; preds = %bb.s, %bb.t, %advance_note_offset.exit.i, %bb.u, %advance_note_offset.exit37.i, %bb.v, %bb.z, %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %i.de) #10 ; 0 uses
  %i.dg = load i32, ptr %i.dd, align 8
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dh, ptr %i.di, align 8
  %i.dj = tail call ptr @g_ptr_array_free(ptr noundef %i.bg, i32 noundef 0) #10
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dj, ptr %i.dk, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %init_states.exit, %bb.f, %QEMU_Elf_map.exit.thread, %init_states.exit.thread, %bb.p
  %.0 = phi i1 [ false, %bb.f ], [ false, %init_states.exit.thread ], [ false, %bb.p ], [ true, %init_states.exit ], [ false, %QEMU_Elf_map.exit.thread ]
  ret i1 %.0
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @QEMU_Elf_exit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %.val3) #10
  %.val = load i64, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.b, align 8
  %i.c = tail call i32 @munmap(ptr noundef %.val2, i64 noundef %.val) #10 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @g_ptr_array_new() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare void @g_ptr_array_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_ptr_array_free(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !9}
!8 = !{!"auto-init"}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
