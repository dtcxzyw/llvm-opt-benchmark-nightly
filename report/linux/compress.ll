Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/compress?download=true
inline.NumInlined: 61
inline.NumDeleted: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.static_call_key = type { ptr, %union.anon.34 }
%union.anon.34 = type { i64 }
%struct.z_stream_s = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, i32, i64, i64 }

@zisofs_aops = dso_local local_unnamed_addr constant %struct.address_space_operations { ptr @zisofs_read_folio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@zisofs_zlib_workspace = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fs/isofs/compress.c\00", align 1
@zisofs_zlib_lock = internal global %struct.mutex zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"\017zisofs: zisofs_inflateInit returned %d\0A\00", align 1
@zisofs_sink_page = internal global [4096 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [113 x i8] c"\017zisofs: zisofs_inflate returned %d, inode = %llu, page idx = %d, bh idx = %d, avail_in = %ld, avail_out = %ld\0A\00", align 1
@might_resched.__UNIQUE_ID_addressable___SCK__might_resched_42 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID_addressable___SCK__might_resched_42], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -12, 1) i32 @zisofs_read_folio(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.z_stream_s, align 8         ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8             ; 9 uses
  %i.b = getelementptr i8, ptr %.val, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 -26     ; 3 uses
  %i.e = load i8, ptr %i.d, align 2               ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = add nsw i32 %i.f, -12
  %i.h = shl nuw i32 1, %i.g                      ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 16             ; 5 uses
  %i.k = getelementptr i8, ptr %.val, i64 80      ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, 4095
  %i.n = lshr i64 %i.m, 12                        ; 2 uses
  %.not = icmp ult i64 %i.j, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @folio_end_read(ptr noundef %1, i1 noundef zeroext true) #9
  br label %bb.ay

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i8 %i.e, 11
  br i1 %i.o, label %bb.d, label %_kzalloc_noprof.exit

bb.d:                                             ; preds = %bb.c
  %i.p = add i32 %i.h, -1
  %i.q = trunc i64 %i.j to i32
  %i.r = and i32 %i.p, %i.q                       ; 2 uses
  %i.s = sub i32 0, %i.h
  %i.t = zext i32 %i.s to i64
  %i.u = and i64 %i.j, %i.t
  %i.v = sub nsw i64 %i.n, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.w)
  %i.y = zext nneg i32 %i.r to i64
  %i.z = sub nsw i64 %i.j, %i.y
  %i.aa = zext i32 %i.h to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.d, %bb.c
  %i.ac = phi i64 [ %i.ab, %bb.d ], [ 8, %bb.c ]
  %.074 = phi i64 [ %i.z, %bb.d ], [ %i.j, %bb.c ]
  %.073 = phi i32 [ %i.r, %bb.d ], [ 0, %bb.c ]   ; 3 uses
  %.072 = phi i32 [ %i.x, %bb.d ], [ 1, %bb.c ]   ; 4 uses
  %i.ad = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -17179869184, 34359738361) %i.ac, i32 noundef 3520) #10 ; 6 uses
  %.not79 = icmp eq ptr %i.ad, null
  br i1 %.not79, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_kzalloc_noprof.exit
  tail call void @folio_unlock(ptr noundef %1) #9
  br label %bb.ay

bb.f:                                             ; preds = %_kzalloc_noprof.exit
  %i.ae = zext nneg i32 %.073 to i64              ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  store ptr %1, ptr %i.af, align 8
  %i.ag = icmp sgt i32 %.072, 0                   ; 3 uses
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.c, i64 56
  %wide.trip.count = zext nneg i32 %.072 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.175109 = phi i64 [ %.074, %.lr.ph ], [ %i.ak, %bb.i ] ; 2 uses
  %.not82 = icmp eq i64 %indvars.iv, %i.ae
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i = load i32, ptr %i.ah, align 8
  %i.ai = tail call ptr @pagecache_get_page(ptr noundef %i.c, i64 noundef %.175109, i32 noundef 54, i32 noundef %.val.i) #9
  %i.aj = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv
  store ptr %i.ai, ptr %i.aj, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = add i64 %.175109, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load ptr, ptr %i.af, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.al = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %1, %bb.f ] ; 3 uses
  %i.am = getelementptr i8, ptr %.val, i64 -27
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %.val, i64 40     ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 20
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = zext i8 %i.ar to i32                    ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "574: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 574b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 574) #11, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 222, i32 0, i64 16) #11, !srcloc !19
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.at = load i8, ptr %i.d, align 2              ; 2 uses
  %i.au = zext nneg i8 %i.at to i32
  %i.av = getelementptr i8, ptr %i.al, i64 8
  %i.aw = load volatile i64, ptr %i.av, align 8   ; 2 uses
  %i.ax = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ay = and i64 %i.aw, 1
  %i.az = add nsw i64 %i.ay, -1
  %i.ba = or i64 %i.az, %i.aw
  %i.bb = and i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr i8, ptr %i.bc, i64 32
  %.val.i.i = load i64, ptr %i.bd, align 16
  %i.be = shl i64 %.val.i.i, 12
  %i.bf = sub i64 %i.ax, %i.bb
  %i.bg = shl i64 %i.bf, 6
  %i.bh = add i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = add i64 %i.bh, 4096
  %i.bj = load i64, ptr %i.k, align 8
  %i.bk = tail call i64 @llvm.smin.i64(i64 %i.bi, i64 %i.bj)
  %i.bl = zext i8 %i.at to i64                    ; 3 uses
  %i.bm = ashr i64 %i.bh, %i.bl                   ; 4 uses
  %i.bn = shl nuw i32 1, %i.au
  %i.bo = sext i32 %i.bn to i64
  %i.bp = add nsw i64 %i.bo, -1
  %i.bq = add i64 %i.bp, %i.bk
  %i.br = ashr i64 %i.bq, %i.bl                   ; 2 uses
  %i.bs = shl i32 %.073, 12
  %i.bt = sext i32 %i.bs to i64
  %i.bu = sub i64 %i.bh, %i.bt
  %i.bv = shl i64 %i.bm, %i.bl
  %i.bw = and i64 %i.bv, -4096
  %.not90.i = icmp eq i64 %i.bu, %i.bw
  br i1 %.not90.i, label %bb.m, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "577: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 577b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 577) #11, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 237, i32 2305, i64 16) #11, !srcloc !22
  tail call void asm sideeffect "578: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 578b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 578) #11, !srcloc !23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = zext i8 %i.an to i64
  %i.by = add i64 %i.bm, %i.bx
  %.tr.i = trunc i64 %i.by to i32
  %i.bz = shl i32 %.tr.i, 2                       ; 3 uses
  %i.ca = lshr i32 %i.bz, %i.as
  %i.cb = zext i32 %i.ca to i64
  %i.cc = tail call ptr @isofs_bread(ptr noundef %.val, i64 noundef %i.cb) #9 ; 3 uses
  %.not91.i = icmp eq ptr %i.cc, null
  br i1 %.not91.i, label %zisofs_fill_pages.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %notmask.i = shl nsw i32 -1, %i.as
  %i.cd = xor i32 %notmask.i, -1                  ; 2 uses
  %i.ce = icmp ult i64 %i.bm, %i.br
  %i.cf = and i1 %i.ag, %i.ce
  br i1 %i.cf, label %.lr.ph.i, label %zisofs_fill_pages.exit

.lr.ph.i:                                         ; preds = %bb.n
  %i.cg = getelementptr i8, ptr %i.cc, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = and i32 %i.bz, %i.cd
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr %i.ch, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.cr = getelementptr i8, ptr %.val, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.o

bb.o:                                             ; preds = %bb.ar, %.lr.ph.i
  %.078157.i = phi i32 [ %.073, %.lr.ph.i ], [ %25, %bb.ar ] ; 3 uses
  %.079152.i = phi i32 [ %.072, %.lr.ph.i ], [ %i.hn, %bb.ar ] ; 5 uses
  %.080147.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ho, %bb.ar ] ; 4 uses
  %.081146.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %.1.i, %bb.ar ] ; 2 uses
  %.082145.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %i.hp, %bb.ar ]
  %.083144.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hm, %bb.ar ] ; 3 uses
  %.084143.i = phi i32 [ %i.bz, %.lr.ph.i ], [ %i.ct, %bb.ar ]
  %.085142.i = phi i64 [ %i.cm, %.lr.ph.i ], [ %i.dd, %bb.ar ] ; 6 uses
  %i.ct = add i32 %.084143.i, 4                   ; 3 uses
  %i.cu = and i32 %i.ct, %i.cd                    ; 2 uses
  %.not94.i = icmp eq i32 %i.cu, 0
  br i1 %.not94.i, label %brelse.exit.i, label %bb.p

brelse.exit.i:                                    ; preds = %bb.o
  call void @__brelse(ptr noundef nonnull %.081146.i) #9
  %i.cv = lshr i32 %i.ct, %i.as
  %i.cw = zext i32 %i.cv to i64
  %i.cx = call ptr @isofs_bread(ptr noundef %.val, i64 noundef %i.cw) #9 ; 2 uses
  %.not95.i = icmp eq ptr %i.cx, null
  br i1 %.not95.i, label %zisofs_fill_pages.exit, label %bb.p

bb.p:                                             ; preds = %brelse.exit.i, %bb.o
  %.1.i = phi ptr [ %.081146.i, %bb.o ], [ %i.cx, %brelse.exit.i ] ; 4 uses
  %i.cy = getelementptr i8, ptr %.1.i, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = zext nneg i32 %i.cu to i64
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = zext i32 %i.dc to i64                   ; 4 uses
  %i.de = icmp samesign ugt i64 %.085142.i, %i.dd
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @__brelse(ptr noundef nonnull %.1.i) #9
  br label %zisofs_fill_pages.exit

bb.r:                                             ; preds = %bb.p
  %i.df = trunc nuw nsw i64 %.083144.i to i32
  %i.dg = load i8, ptr %i.d, align 2
  %i.dh = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 24
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dh, i64 20
  %i.dl = load i8, ptr %i.dk, align 4
  %i.dm = add i64 %i.dj, 4294967295               ; 2 uses
  %i.dn = sub nuw nsw i64 %i.dd, %.085142.i       ; 2 uses
  %i.do = trunc nuw i64 %i.dn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %sext.i.i = shl nuw i64 %i.dn, 32
  %i.dp = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %3 = and i64 %i.dm, 4294967295                  ; 2 uses
  %i.dq = and i64 %i.dm, %.085142.i
  %4 = add nsw i64 %3, %i.dp
  %5 = add nsw i64 %4, %i.dq
  %6 = zext i8 %i.dl to i64                       ; 2 uses
  %7 = ashr i64 %5, %6
  %i.dr = zext nneg i8 %i.dg to i64
  %i.ds = shl nuw i64 1, %i.dr                    ; 3 uses
  %i.dt = add nuw i64 %i.ds, 7
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw i64 %i.ds, 63
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = add nuw i64 %i.ds, 11
  %i.dy = add nuw i64 %i.dx, %i.du
  %i.dz = add nuw i64 %i.dy, %i.dw
  %i.ea = icmp ugt i64 %i.dp, %i.dz
  br i1 %i.ea, label %zisofs_uncompress_block.exit.thread.i, label %8

8:                                                ; preds = %bb.r
  %9 = icmp eq i64 %.085142.i, %i.dd
  br i1 %9, label %.preheader.preheader.i.i, label %_kzalloc_noprof.exit.i.i

.preheader.preheader.i.i:                         ; preds = %8
  %wide.trip.count216.i.i = zext nneg i32 %.079152.i to i64 ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %18, %.preheader.preheader.i.i
  %indvars.iv213.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next214.i.i, %18 ] ; 2 uses
  %10 = getelementptr [8 x i8], ptr %.080147.i, i64 %indvars.iv213.i.i
  %11 = load ptr, ptr %10, align 8                ; 4 uses
  %.not153.i.i = icmp eq ptr %11, null
  br i1 %.not153.i.i, label %18, label %bb.s

bb.s:                                             ; preds = %.preheader.i.i
  %12 = load i64, ptr @vmemmap_base, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %13, %12
  %15 = shl i64 %14, 6
  %16 = load i64, ptr @page_offset_base, align 8
  %i.eb = add i64 %15, %16
  %17 = inttoptr i64 %i.eb to ptr
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(4096) %17, i8 0, i64 4096, i1 false)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %11, i32 8, ptr nonnull elementtype(i8) %11) #11, !srcloc !25
  br label %18

18:                                               ; preds = %bb.s, %.preheader.i.i
  %indvars.iv.next214.i.i = add nuw nsw i64 %indvars.iv213.i.i, 1 ; 2 uses
  %exitcond217.not.i.i = icmp eq i64 %indvars.iv.next214.i.i, %wide.trip.count216.i.i
  br i1 %exitcond217.not.i.i, label %zisofs_uncompress_block.exit.thread109.i, label %.preheader.i.i, !llvm.loop !11

zisofs_uncompress_block.exit.thread109.i:         ; preds = %18
  %19 = shl nuw nsw i64 %wide.trip.count216.i.i, 12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %20 = or disjoint i64 %.083144.i, %19
  %21 = sub i32 %.078157.i, %.079152.i
  br label %bb.ar

_kzalloc_noprof.exit.i.i:                         ; preds = %8
  %22 = shl i64 %7, 32                            ; 2 uses
  %sext139.i.i = add i64 %22, 4294967296
  %23 = call i64 @llvm.smax.i64(i64 %sext139.i.i, i64 -1)
  %.0.i.i.i = ashr i64 %23, 29
  %24 = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -17179869184, 34359738361) %.0.i.i.i, i32 noundef 3520) #10 ; 8 uses
  %.not.i99.i = icmp eq ptr %24, null
  br i1 %.not.i99.i, label %zisofs_uncompress_block.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %_kzalloc_noprof.exit.i.i
  %i.ec = lshr i64 %.085142.i, %6
  %i.ed = ashr exact i64 %22, 32
  %i.ee = call i32 @isofs_get_blocks(ptr noundef %.val, i64 noundef %i.ec, ptr noundef nonnull %24, i64 noundef %i.ed) #9 ; 4 uses
  call void @__bh_read_batch(i32 noundef %i.ee, ptr noundef nonnull %24, i32 noundef 0, i1 noundef zeroext true) #9
  %i.ef = load ptr, ptr %24, align 8              ; 3 uses
  %.not141.i.i = icmp eq ptr %i.ef, null
  br i1 %.not141.i.i, label %bb.ap, label %buffer_locked.exit.i.i.i

buffer_locked.exit.i.i.i:                         ; preds = %bb.t
  %i.eg = call i32 @__SCT__might_resched() #9     ; 0 uses
  %i.eh = load volatile i64, ptr %i.ef, align 8
  %i.ei = and i64 %i.eh, 4
  %.not.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i, label %wait_on_buffer.exit.i.i, label %bb.u

bb.u:                                             ; preds = %buffer_locked.exit.i.i.i
  call void @__wait_on_buffer(ptr noundef nonnull %i.ef) #9
  br label %wait_on_buffer.exit.i.i

wait_on_buffer.exit.i.i:                          ; preds = %buffer_locked.exit.i.i.i, %bb.u
  %i.ej = load ptr, ptr %24, align 8
  %i.ek = call i8 asm sideeffect "testb $2,$1", "={@ccnz},*m,i,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ej, i32 1) #11, !srcloc !26 ; 2 uses
  %i.el = icmp ult i8 %i.ek, 2
  call void @llvm.assume(i1 %i.el)
  %.not142.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not142.i.i, label %bb.ap, label %bb.v

bb.v:                                             ; preds = %wait_on_buffer.exit.i.i
  %i.em = load ptr, ptr @zisofs_zlib_workspace, align 8
  store ptr %i.em, ptr %i.cn, align 8
  call void @mutex_lock(ptr noundef nonnull @zisofs_zlib_lock) #9
  %i.en = call i32 @zlib_inflateInit2(ptr noundef nonnull %2, i32 noundef 15) #9 ; 5 uses
  switch i32 %i.en, label %bb.w [
    i32 0, label %.preheader164.i.i
    i32 -4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge.i.i = phi i32 [ -5, %bb.w ], [ -12, %bb.v ]
  %i.eo = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.en) #12 ; 0 uses
  br label %bb.ao

.preheader164.i.i:                                ; preds = %bb.v, %bb.an
  %.0114194.i.i = phi i64 [ %.1.i.i84, %bb.an ], [ %.085142.i, %bb.v ] ; 2 uses
  %.0115193.i.i = phi i32 [ %.1116.i.i, %bb.an ], [ %i.df, %bb.v ] ; 3 uses
  %.0120192.i.i = phi i32 [ %.1121.i.i, %bb.an ], [ %i.do, %bb.v ] ; 3 uses
  %.0122190.i.i = phi i32 [ %.1123.i.i, %bb.an ], [ %i.en, %bb.v ] ; 5 uses
  %.0124188.i.i = phi i32 [ %spec.select.i.i, %bb.an ], [ %i.en, %bb.v ] ; 4 uses
  %.0126187.i.i = phi i32 [ %.2.i.i, %bb.an ], [ %i.en, %bb.v ] ; 2 uses
  %i.ep = icmp slt i32 %.0124188.i.i, %i.ee
  %i.eq = icmp ne i32 %.0126187.i.i, 1
  %or.cond7.i.i = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %or.cond7.i.i, label %bb.y, label %.critedge.i.i

bb.y:                                             ; preds = %.preheader164.i.i
  %i.er = load i64, ptr %i.co, align 8            ; 2 uses
  %.not144.i.i = icmp eq i64 %i.er, 0
  br i1 %.not144.i.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.es = sext i32 %.0122190.i.i to i64
  %i.et = getelementptr [8 x i8], ptr %.080147.i, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not145.i.i = icmp eq ptr %i.eu, null
  br i1 %.not145.i.i, label %.sink.split.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = load i64, ptr @vmemmap_base, align 8
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ew, %i.ev
  %i.ey = shl i64 %i.ex, 6
  %i.ez = load i64, ptr @page_offset_base, align 8
  %i.fa = add i64 %i.ey, %i.ez
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = zext nneg i32 %.0115193.i.i to i64      ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 %i.fc
  %i.fe = sub nuw nsw i64 4096, %i.fc
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.aa, %bb.z
  %.sink.i = phi ptr [ %i.fd, %bb.aa ], [ @zisofs_sink_page, %bb.z ]
  %.sink.i.i = phi i64 [ %i.fe, %bb.aa ], [ 4096, %bb.z ] ; 2 uses
  %.1116.ph.i.i = phi i32 [ 0, %bb.aa ], [ %.0115193.i.i, %bb.z ]
  store ptr %.sink.i, ptr %i.cp, align 8
  store i64 %.sink.i.i, ptr %i.co, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i, %bb.y
  %i.ff = phi i64 [ %i.er, %bb.y ], [ %.sink.i.i, %.sink.split.i.i ]
  %.1116.i.i = phi i32 [ %.0115193.i.i, %bb.y ], [ %.1116.ph.i.i, %.sink.split.i.i ]
  %i.fg = load i64, ptr %i.cq, align 8            ; 2 uses
  %.not146.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not146.i.i, label %buffer_locked.exit.i159.i.i, label %bb.ae

buffer_locked.exit.i159.i.i:                      ; preds = %bb.ab
  %i.fh = sext i32 %.0124188.i.i to i64
  %i.fi = getelementptr [8 x i8], ptr %24, i64 %i.fh ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fk = call i32 @__SCT__might_resched() #9     ; 0 uses
  %i.fl = load volatile i64, ptr %i.fj, align 8
  %i.fm = and i64 %i.fl, 4
  %.not.i161.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i161.i.i, label %wait_on_buffer.exit162.i.i, label %bb.ac

bb.ac:                                            ; preds = %buffer_locked.exit.i159.i.i
  call void @__wait_on_buffer(ptr noundef %i.fj) #9
  br label %wait_on_buffer.exit162.i.i

wait_on_buffer.exit162.i.i:                       ; preds = %buffer_locked.exit.i159.i.i, %bb.ac
  %i.fn = load ptr, ptr %i.fi, align 8
  %i.fo = call i8 asm sideeffect "testb $2,$1", "={@ccnz},*m,i,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.fn, i32 1) #11, !srcloc !26 ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 2
  call void @llvm.assume(i1 %i.fp)
  %.not147.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not147.i.i, label %.critedge.i.i, label %bb.ad

bb.ad:                                            ; preds = %wait_on_buffer.exit162.i.i
  %i.fq = load ptr, ptr %i.fi, align 8
  %i.fr = getelementptr i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = and i64 %.0114194.i.i, %3               ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fs, i64 %i.ft
  store ptr %i.fu, ptr %2, align 8
  %i.fv = sub i64 %i.dj, %i.ft
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = call i32 @llvm.umin.i32(i32 %.0120192.i.i, i32 %i.fw) ; 2 uses
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  store i64 %i.fy, ptr %i.cq, align 8
  %i.fz = sub i32 %.0120192.i.i, %i.fx
  %.pre.i.i = load i64, ptr %i.co, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.ga = phi i64 [ %i.fg, %bb.ab ], [ %i.fy, %bb.ad ] ; 2 uses
  %i.gb = phi i64 [ %i.ff, %bb.ab ], [ %.pre.i.i, %bb.ad ] ; 2 uses
  %.1121.i.i = phi i32 [ %.0120192.i.i, %bb.ab ], [ %i.fz, %bb.ad ]
  %.1.i.i84 = phi i64 [ %.0114194.i.i, %bb.ab ], [ 0, %bb.ad ]
  %i.gc = icmp ne i64 %i.gb, 0
  %i.gd = icmp ne i64 %i.ga, 0
  %i.ge = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %i.ge, label %.lr.ph.i.i, label %.loopexit.i.i

bb.af:                                            ; preds = %bb.ag
  %i.gf = load i64, ptr %i.co, align 8            ; 2 uses
  %i.gg = icmp ne i64 %i.gf, 0
  %i.gh = icmp ne i64 %i.gl, 0
  %i.gi = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %i.gi, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.af
  %i.gj = call i32 @zlib_inflate(ptr noundef nonnull %2, i32 noundef 3) #9 ; 5 uses
  %i.gk = icmp eq i32 %i.gj, -5
  %i.gl = load i64, ptr %i.cq, align 8            ; 5 uses
  %i.gm = icmp eq i64 %i.gl, 0
  %or.cond.i.i = select i1 %i.gk, i1 %i.gm, i1 false
  %i.gn = icmp eq i32 %i.gj, 1
  %or.cond9.i.i = or i1 %i.gn, %or.cond.i.i
  br i1 %or.cond9.i.i, label %thread-pre-split.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  switch i32 %i.gj, label %bb.ah [
    i32 0, label %bb.af
    i32 -4, label %.critedge.i.i
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.go = load i64, ptr %i.cr, align 8
  %i.gp = load i64, ptr %i.co, align 8
  %i.gq = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.gj, i64 noundef %i.go, i32 noundef %.0122190.i.i, i32 noundef %.0124188.i.i, i64 noundef %i.gl, i64 noundef %i.gp) #12 ; 0 uses
  br label %.critedge.i.i

thread-pre-split.i.i:                             ; preds = %.lr.ph.i.i
  %.pr.i.i = load i64, ptr %i.co, align 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.af, %thread-pre-split.i.i, %bb.ae
  %i.gr = phi i64 [ %i.gl, %thread-pre-split.i.i ], [ %i.ga, %bb.ae ], [ %i.gl, %bb.af ]
  %i.gs = phi i64 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.gb, %bb.ae ], [ %i.gf, %bb.af ]
  %.2.i.i = phi i32 [ %i.gj, %thread-pre-split.i.i ], [ %.0126187.i.i, %bb.ae ], [ 0, %bb.af ]
  %.not149.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not149.i.i, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %.loopexit.i.i
  %i.gt = sext i32 %.0122190.i.i to i64
  %i.gu = getelementptr [8 x i8], ptr %.080147.i, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8            ; 3 uses
  %.not150.i.i = icmp eq ptr %i.gv, null
  br i1 %.not150.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.gv, i32 8, ptr nonnull elementtype(i8) %i.gv) #11, !srcloc !25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gw = load ptr, ptr %i.cp, align 8
  %.not151.i.i = icmp eq ptr %i.gw, @zisofs_sink_page
  br i1 %.not151.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.cp, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gx = add nsw i32 %.0122190.i.i, 1
  %.pre218.i.i = load i64, ptr %i.cq, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit.i.i
  %i.gy = phi i64 [ %i.gr, %.loopexit.i.i ], [ %.pre218.i.i, %bb.am ]
  %.1123.i.i = phi i32 [ %.0122190.i.i, %.loopexit.i.i ], [ %i.gx, %bb.am ] ; 2 uses
  %.not152.i.i = icmp eq i64 %i.gy, 0
  %i.gz = zext i1 %.not152.i.i to i32
  %spec.select.i.i = add i32 %.0124188.i.i, %i.gz
  %i.ha = icmp slt i32 %.1123.i.i, %.079152.i
  br i1 %i.ha, label %.preheader164.i.i, label %.critedge.i.i, !llvm.loop !12

.critedge.i.i:                                    ; preds = %bb.an, %wait_on_buffer.exit162.i.i, %.preheader164.i.i, %bb.ag, %bb.ah
  %.2.i = phi i32 [ -5, %bb.ah ], [ -12, %bb.ag ], [ 0, %bb.an ], [ -5, %wait_on_buffer.exit162.i.i ], [ 0, %.preheader164.i.i ]
  %i.hb = call i32 @zlib_inflateEnd(ptr noundef nonnull %2) #9 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge.i.i, %bb.x
  %.0103.i = phi i32 [ %storemerge.i.i, %bb.x ], [ %.2.i, %.critedge.i.i ]
  call void @mutex_unlock(ptr noundef nonnull @zisofs_zlib_lock) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %wait_on_buffer.exit.i.i, %bb.t
  %.1104.i = phi i32 [ 0, %bb.t ], [ %.0103.i, %bb.ao ], [ -5, %wait_on_buffer.exit.i.i ] ; 2 uses
  %i.hc = icmp sgt i32 %i.ee, 0
  br i1 %i.hc, label %.lr.ph196.preheader.i.i, label %zisofs_uncompress_block.exit.i

.lr.ph196.preheader.i.i:                          ; preds = %bb.ap
  %wide.trip.count.i.i = zext nneg i32 %i.ee to i64
  br label %.lr.ph196.i.i

.lr.ph196.i.i:                                    ; preds = %brelse.exit.i.i, %.lr.ph196.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph196.preheader.i.i ], [ %indvars.iv.next.i.i, %brelse.exit.i.i ] ; 2 uses
  %i.hd = getelementptr [8 x i8], ptr %24, i64 %indvars.iv.i.i
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not.i163.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i163.i.i, label %brelse.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph196.i.i
  call void @__brelse(ptr noundef nonnull %i.he) #9
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %bb.aq, %.lr.ph196.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %zisofs_uncompress_block.exit.i, label %.lr.ph196.i.i, !llvm.loop !13

zisofs_uncompress_block.exit.thread.i:            ; preds = %_kzalloc_noprof.exit.i.i, %bb.r
  %.3.ph.i = phi i32 [ -12, %_kzalloc_noprof.exit.i.i ], [ -5, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %brelse.exit101.i

zisofs_uncompress_block.exit.i:                   ; preds = %brelse.exit.i.i, %bb.ap
  call void @kfree(ptr noundef nonnull %24) #9
  %i.hf = load i64, ptr %i.cs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.hg = add i64 %i.hf, %.083144.i               ; 2 uses
  %i.hh = ashr i64 %i.hg, 12                      ; 2 uses
  %i.hi = trunc i64 %i.hh to i32                  ; 2 uses
  %i.hj = sub i32 %.078157.i, %i.hi               ; 2 uses
  %.not96.i = icmp eq i32 %.1104.i, 0
  br i1 %.not96.i, label %bb.ar, label %brelse.exit101.i

brelse.exit101.i:                                 ; preds = %zisofs_uncompress_block.exit.i, %zisofs_uncompress_block.exit.thread.i
  %i.hk = phi i32 [ %.078157.i, %zisofs_uncompress_block.exit.thread.i ], [ %i.hj, %zisofs_uncompress_block.exit.i ]
  %.3108.i = phi i32 [ %.3.ph.i, %zisofs_uncompress_block.exit.thread.i ], [ %.1104.i, %zisofs_uncompress_block.exit.i ]
  call void @__brelse(ptr noundef nonnull %.1.i) #9
  %i.hl = icmp slt i32 %i.hk, 0
  %spec.select.i = select i1 %i.hl, i32 0, i32 %.3108.i
  br label %zisofs_fill_pages.exit

bb.ar:                                            ; preds = %zisofs_uncompress_block.exit.i, %zisofs_uncompress_block.exit.thread109.i
  %25 = phi i32 [ %21, %zisofs_uncompress_block.exit.thread109.i ], [ %i.hj, %zisofs_uncompress_block.exit.i ]
  %26 = phi i32 [ %.079152.i, %zisofs_uncompress_block.exit.thread109.i ], [ %i.hi, %zisofs_uncompress_block.exit.i ]
  %27 = phi i64 [ %wide.trip.count216.i.i, %zisofs_uncompress_block.exit.thread109.i ], [ %i.hh, %zisofs_uncompress_block.exit.i ]
  %28 = phi i64 [ %20, %zisofs_uncompress_block.exit.thread109.i ], [ %i.hg, %zisofs_uncompress_block.exit.i ]
  %i.hm = and i64 %28, 4095                       ; 4 uses
  %i.hn = sub i32 %.079152.i, %26                 ; 2 uses
  %i.ho = getelementptr [8 x i8], ptr %.080147.i, i64 %27 ; 2 uses
  %i.hp = add nuw i64 %.082145.i, 1               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.br
  %i.hr = icmp sgt i32 %i.hn, 0
  %i.hs = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %i.hs, label %bb.o, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.ar
  %.not92.i = icmp eq i64 %i.hm, 0
  br i1 %.not92.i, label %zisofs_fill_pages.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i
  %i.ht = load ptr, ptr %i.ho, align 8            ; 4 uses
  %.not93.i = icmp eq ptr %i.ht, null
  br i1 %.not93.i, label %zisofs_fill_pages.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hu = sub nuw nsw i64 4096, %i.hm
  %i.hv = load i64, ptr @vmemmap_base, align 8
  %i.hw = ptrtoint ptr %i.ht to i64
  %i.hx = sub i64 %i.hw, %i.hv
  %i.hy = shl i64 %i.hx, 6
  %i.hz = load i64, ptr @page_offset_base, align 8
  %i.ia = add i64 %i.hy, %i.hz
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.hm
  call void @llvm.memset.p0.i64(ptr noundef align 1 %i.ic, i8 0, i64 range(i64 1, 4097) %i.hu, i1 false)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ht, i32 8, ptr nonnull elementtype(i8) %i.ht) #11, !srcloc !25
  br label %zisofs_fill_pages.exit

zisofs_fill_pages.exit:                           ; preds = %brelse.exit.i, %bb.m, %bb.n, %bb.q, %brelse.exit101.i, %._crit_edge.i, %bb.as, %bb.at
  %.0.i83 = phi i32 [ 0, %bb.as ], [ -5, %bb.q ], [ 0, %._crit_edge.i ], [ -5, %bb.m ], [ %spec.select.i, %brelse.exit101.i ], [ 0, %bb.at ], [ 0, %bb.n ], [ -5, %brelse.exit.i ]
  br i1 %i.ag, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %zisofs_fill_pages.exit
  %wide.trip.count142 = zext nneg i32 %.072 to i64
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %put_page.exit
  %indvars.iv139 = phi i64 [ 0, %.lr.ph112.preheader ], [ %indvars.iv.next140, %put_page.exit ] ; 3 uses
  %i.id = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv139 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8            ; 2 uses
  %.not80 = icmp eq ptr %i.ie, null
  br i1 %.not80, label %put_page.exit, label %bb.au

bb.au:                                            ; preds = %.lr.ph112
  call void @unlock_page(ptr noundef nonnull %i.ie) #9
  %.not81 = icmp eq i64 %indvars.iv139, %i.ae
  br i1 %.not81, label %put_page.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = load ptr, ptr %i.id, align 8            ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 8
  %i.ih = load volatile i64, ptr %i.ig, align 8   ; 2 uses
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = and i64 %i.ih, 1
  %i.ik = add nsw i64 %i.ij, -1
  %i.il = or i64 %i.ik, %i.ih
  %i.im = and i64 %i.il, %i.ii
  %i.in = inttoptr i64 %i.im to ptr               ; 3 uses
  %i.io = getelementptr i8, ptr %i.in, i64 48
  %i.ip = load i32, ptr %i.io, align 16
  %.mask.i.i = and i32 %i.ip, -16777216
  switch i32 %.mask.i.i, label %bb.aw [
    i32 -184549376, label %put_page.exit
    i32 -134217728, label %put_page.exit
  ]

bb.aw:                                            ; preds = %bb.av
  %i.iq = getelementptr i8, ptr %i.in, i64 52     ; 2 uses
  %i.ir = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.iq, ptr elementtype(i32) %i.iq) #11, !srcloc !27 ; 2 uses
  %i.is = icmp ult i8 %i.ir, 2
  call void @llvm.assume(i1 %i.is)
  %.not.i.i = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i, label %put_page.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @__folio_put(ptr noundef %i.in) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %bb.ax, %bb.aw, %bb.av, %bb.av, %.lr.ph112, %bb.au
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge113, label %.lr.ph112, !llvm.loop !15

._crit_edge113:                                   ; preds = %put_page.exit, %zisofs_fill_pages.exit
  call void @kfree(ptr noundef nonnull %i.ad) #9
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge113, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0.i83, %._crit_edge113 ], [ -12, %bb.e ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -12, 1) i32 @zisofs_init() local_unnamed_addr #1 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @zlib_inflate_workspacesize() #9
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @vmalloc_noprof(i64 noundef %i.b) #10 ; 2 uses
  store ptr %i.c, ptr @zisofs_zlib_workspace, align 8
  %.not = icmp eq ptr %i.c, null
  %.0 = select i1 %.not, i32 -12, i32 0
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_noprof(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @zisofs_cleanup() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @zisofs_zlib_workspace, align 8
  tail call void @vfree(ptr noundef %i.a) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_end_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @isofs_bread(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @isofs_get_blocks(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__bh_read_batch(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !16}
!11 = distinct !{!11, !16}
!12 = distinct !{!12, !16}
!13 = distinct !{!13, !16}
!14 = distinct !{!14, !16}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i64 2156635158, i64 2156635033}
!19 = !{i64 2156635681, i64 2156636157, i64 2156636190, i64 2156636225, i64 2156636241, i64 2156637082, i64 2156637140, i64 2156637189, i64 2156636999, i64 2156636300, i64 2156636332}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{i64 2156639460, i64 2156639335}
!22 = !{i64 2156639983, i64 2156641112, i64 2156641145, i64 2156641180, i64 2156641196, i64 2156642123, i64 2156642181, i64 2156642230, i64 2156642040, i64 2156641255, i64 2156641287, i64 2156641370}
!23 = !{i64 2156642529, i64 2156642405}
!24 = !{i64 2151965108}
!25 = !{i64 2148541550, i64 2148541589, i64 2148541610, i64 2148541647, i64 2148541670, i64 2148541541}
!26 = !{i64 1050453}
!27 = !{i64 2148943080, i64 2148943119, i64 2148943140, i64 2148943177, i64 2148943200, i64 2148943209}
end_hunk_0
