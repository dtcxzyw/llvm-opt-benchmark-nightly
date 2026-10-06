Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/decompress_unlzma?download=true
inline.NumInlined: 39
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_header = type <{ i8, i32, i64 }>
%struct.rc = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, ptr }
%struct.writer = type { ptr, i8, i64, i32, i64, ptr, ptr }
%struct.cstate = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bad header\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"LZMA data is corrupt\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -1, 1) i32 @unlzma(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %7 = alloca %struct.lzma_header, align 1        ; 9 uses
  %8 = alloca %struct.rc, align 8                 ; 14 uses
  %9 = alloca %struct.writer, align 8             ; 15 uses
  %10 = alloca %struct.cstate, align 4            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 0, ptr %i.a, align 8, !annotation !20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %6, ptr %i.b, align 8
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias align 4096 dereferenceable_or_null(65536) ptr @__kmalloc_large_noprof(i64 noundef 65536, i32 noundef 3264) #10 ; 2 uses
  %.not85 = icmp eq ptr %i.c, null
  br i1 %.not85, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void %6(ptr noundef nonnull @.str) #11
  br label %bb.ai

.thread:                                          ; preds = %bb.a, %bb.b
  %.077107 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %7, i8 0, i64 13, i1 false), !annotation !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 32, i1 false), !annotation !20
  store i32 0, ptr %10, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %7, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 0, ptr %i.l, align 8
  %.not.i = icmp eq ptr %2, null
  %nofill..i = select i1 %.not.i, ptr @nofill, ptr %2 ; 3 uses
  store ptr %nofill..i, ptr %8, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %.077107, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store i64 %1, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.077107, i64 %1   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store ptr %.077107, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 -1, ptr %i.s, align 4
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.g
  %indvars.iv = phi i64 [ 0, %.thread ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.t = phi ptr [ %.077107, %.thread ], [ %i.ab, %bb.g ] ; 2 uses
  %i.u = phi ptr [ %i.o, %.thread ], [ %.pre8.i, %bb.g ] ; 2 uses
  %i.v = phi i64 [ %1, %.thread ], [ %i.z, %bb.g ]
  %.not93 = icmp ult ptr %i.t, %i.u
  br i1 %.not93, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call i64 %nofill..i(ptr noundef nonnull %.077107, i64 noundef 65536) #11, !inline_history !0 ; 3 uses
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.f, label %rc_read.exit

bb.f:                                             ; preds = %bb.e
  call void %6(ptr noundef nonnull @.str.5) #11, !inline_history !0
  br label %rc_read.exit

rc_read.exit:                                     ; preds = %bb.e, %bb.f
  %i.y = getelementptr i8, ptr %.077107, i64 %i.w
  br label %bb.g

bb.g:                                             ; preds = %rc_read.exit, %bb.d
  %i.z = phi i64 [ %i.w, %rc_read.exit ], [ %i.v, %bb.d ] ; 2 uses
  %.pre8.i = phi ptr [ %i.y, %rc_read.exit ], [ %i.u, %bb.d ] ; 3 uses
  %i.aa = phi ptr [ %.077107, %rc_read.exit ], [ %i.t, %bb.d ] ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = getelementptr i8, ptr %7, i64 %indvars.iv
  store i8 %i.ac, ptr %i.ad, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %bb.h, label %bb.d, !llvm.loop !15

bb.h:                                             ; preds = %bb.g
  store ptr %i.ab, ptr %i.q, align 8
  store ptr %.pre8.i, ptr %i.p, align 8
  store i64 %i.z, ptr %i.n, align 8
  %i.ae = load i8, ptr %7, align 1                ; 3 uses
  %i.af = icmp ugt i8 %i.ae, -32
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void %6(ptr noundef nonnull @.str.1) #11
  br label %bb.ag

bb.j:                                             ; preds = %bb.h
  %i.ag = zext i8 %i.ae to i32                    ; 3 uses
  %i.ah = icmp ugt i8 %i.ae, 8
  br i1 %i.ah, label %.preheader114, label %._crit_edge

.preheader114:                                    ; preds = %bb.j
  %11 = call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 17)
  %i.ai = trunc nuw i32 %11 to i8
  %.lhs.trunc = add i8 %i.ai, 8                   ; 2 uses
  %i.aj = udiv i8 %.lhs.trunc, 9
  %.zext = zext nneg i8 %i.aj to i32              ; 4 uses
  %12 = add nuw nsw i32 %.zext, 1                 ; 2 uses
  %i.ak = add nsw i32 %i.ag, -9
  %.neg = mul nsw i32 %.zext, -9
  %i.al = add nsw i32 %.neg, %i.ak                ; 2 uses
  %i.am = icmp ugt i8 %.lhs.trunc, 35
  br i1 %i.am, label %.lr.ph127.preheader, label %._crit_edge

.lr.ph127.preheader:                              ; preds = %.preheader114
  %i.an = add nuw nsw i32 %.zext, 5
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 9)
  %14 = sub nuw nsw i32 %i.an, %13
  %.lhs.trunc163 = trunc nuw nsw i32 %14 to i8
  %i.ao = udiv i8 %.lhs.trunc163, 5
  %.zext164 = zext nneg i8 %i.ao to i32           ; 2 uses
  %15 = add nuw nsw i32 %.zext164, 1
  %i.ap = add nsw i32 %.zext, -4
  %.neg159 = mul nsw i32 %.zext164, -5
  %i.aq = add nsw i32 %.neg159, %i.ap
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %.lr.ph127.preheader, %.preheader114
  %.068.lcssa162 = phi i32 [ %i.al, %.preheader114 ], [ %i.al, %.lr.ph127.preheader ], [ %i.ag, %bb.j ] ; 2 uses
  %.071.lcssa = phi i32 [ %12, %.preheader114 ], [ %i.aq, %.lr.ph127.preheader ], [ 0, %bb.j ] ; 2 uses
  %.070.lcssa = phi i32 [ 0, %.preheader114 ], [ %15, %.lr.ph127.preheader ], [ 0, %bb.j ]
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge
  %indvars.iv.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %.010.i = phi i32 [ 0, %._crit_edge ], [ %i.ax, %bb.k ]
  %i.as = shl i32 %.010.i, 8
  %i.at = xor i64 %indvars.iv.i, -1
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.as, %i.aw            ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %read_int.exit, label %bb.k, !llvm.loop !16

read_int.exit:                                    ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 13
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %read_int.exit
  %indvars.iv.i97 = phi i64 [ 0, %read_int.exit ], [ %indvars.iv.next.i99, %bb.l ] ; 2 uses
  %.010.i98 = phi i64 [ 0, %read_int.exit ], [ %i.bf, %bb.l ]
  %i.ba = shl i64 %.010.i98, 8
  %i.bb = xor i64 %indvars.iv.i97, -1
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64
  %i.bf = or disjoint i64 %i.ba, %i.be            ; 3 uses
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %indvars.iv.next.i99, 8
  br i1 %exitcond.not.i100, label %read_int.exit101, label %bb.l, !llvm.loop !16

read_int.exit101:                                 ; preds = %bb.l
  %notmask = shl nsw i32 -1, %.070.lcssa
  %i.bg = xor i32 %notmask, -1
  %notmask86 = shl nsw i32 -1, %.071.lcssa
  %i.bh = xor i32 %notmask86, -1
  store i64 %i.bf, ptr %i.ar, align 1
  %i.bi = icmp eq i32 %i.ax, 0
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %read_int.exit101
  store i32 1, ptr %i.ay, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %read_int.exit101
  %i.bj = phi i32 [ 1, %bb.m ], [ %i.ax, %read_int.exit101 ]
  %.not87 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not87, label %bb.o, label %.thread108

.thread108:                                       ; preds = %bb.n
  store ptr %4, ptr %9, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = zext i32 %i.bj to i64
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bk) ; 2 uses
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %i.bm, ptr %i.bn, align 8
  %sext = shl nuw i64 %i.bl, 32
  %i.bo = ashr exact i64 %sext, 32
  %i.bp = call noalias ptr @vmalloc_noprof(i64 noundef %i.bo) #10 ; 2 uses
  store ptr %i.bp, ptr %9, align 8
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %.thread108, %bb.o
  %i.br = add nsw i32 %.071.lcssa, %.068.lcssa162
  %i.bs = shl nuw nsw i32 768, %i.br
  %i.bt = add nuw nsw i32 %i.bs, 1846             ; 2 uses
  %i.bu = shl nuw i32 %i.bt, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = call noalias ptr @vmalloc_noprof(i64 noundef %i.bv) #10 ; 6 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ae, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv142 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next143, %.preheader ] ; 2 uses
  %i.by = getelementptr [2 x i8], ptr %i.bw, i64 %indvars.iv142
  store i16 1024, ptr %i.by, align 2
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond145.not, label %.preheader168, label %.preheader, !llvm.loop !17

.preheader168:                                    ; preds = %.preheader, %bb.s
  %i.bz = phi i32 [ %i.cl, %bb.s ], [ 0, %.preheader ]
  %i.ca = phi ptr [ %i.cg, %bb.s ], [ %.pre8.i, %.preheader ] ; 2 uses
  %i.cb = phi ptr [ %i.ci, %bb.s ], [ %i.ab, %.preheader ] ; 2 uses
  %.07.i = phi i32 [ %i.cm, %bb.s ], [ 0, %.preheader ]
  %.not.i103 = icmp ult ptr %i.cb, %i.ca
  br i1 %.not.i103, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.preheader168
  %i.cc = call i64 %nofill..i(ptr noundef nonnull %.077107, i64 noundef 65536) #11, !inline_history !18 ; 3 uses
  store i64 %i.cc, ptr %i.n, align 8
  %i.cd = icmp slt i64 %i.cc, 1
  br i1 %i.cd, label %bb.r, label %rc_read.exit.i

bb.r:                                             ; preds = %bb.q
  call void %6(ptr noundef nonnull @.str.5) #11, !inline_history !18
  br label %rc_read.exit.i

rc_read.exit.i:                                   ; preds = %bb.r, %bb.q
  %i.ce = getelementptr i8, ptr %.077107, i64 %i.cc ; 2 uses
  store ptr %i.ce, ptr %i.p, align 8
  br label %bb.s

bb.s:                                             ; preds = %rc_read.exit.i, %.preheader168
  %i.cf = phi ptr [ %.077107, %rc_read.exit.i ], [ %i.cb, %.preheader168 ] ; 2 uses
  %i.cg = phi ptr [ %i.ce, %rc_read.exit.i ], [ %i.ca, %.preheader168 ]
  %i.ch = shl i32 %i.bz, 8
  %i.ci = getelementptr i8, ptr %i.cf, i64 1      ; 2 uses
  store ptr %i.ci, ptr %i.q, align 8
  %i.cj = load i8, ptr %i.cf, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck            ; 2 uses
  store i32 %i.cl, ptr %i.r, align 8
  %i.cm = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not.i104 = icmp eq i32 %i.cm, 5
  br i1 %exitcond.not.i104, label %rc_init_code.exit, label %.preheader168, !llvm.loop !19

rc_init_code.exit:                                ; preds = %bb.s, %bb.z
  %.val95 = load i64, ptr %i.l, align 8
  %.val96 = load i64, ptr %i.j, align 8
  %i.cn = add i64 %.val96, %.val95                ; 2 uses
  %i.co = load i64, ptr %i.ar, align 1
  %i.cp = icmp ult i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.t, label %.thread112

bb.t:                                             ; preds = %rc_init_code.exit
  %i.cq = trunc i64 %i.cn to i32
  %i.cr = and i32 %i.cq, %i.bg                    ; 2 uses
  %i.cs = load i32, ptr %10, align 4
  %i.ct = shl i32 %i.cs, 4
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [2 x i8], ptr %i.bw, i64 %i.cu
  %i.cw = zext nneg i32 %i.cr to i64
  %i.cx = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  %i.cy = call fastcc i32 @rc_is_bit_0(ptr noundef nonnull %8, ptr noundef %i.cx) #12, !srcloc !21
  %.not88 = icmp eq i32 %i.cy, 0
  br i1 %.not88, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = call fastcc i32 @process_bit0(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %i.bw, ptr noundef %i.cx, i32 noundef %.068.lcssa162, i32 noundef %i.bh) #12
  %.not90 = icmp eq i32 %i.cz, 0
  br i1 %.not90, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void %6(ptr noundef nonnull @.str.2) #11
  br label %.thread110

bb.w:                                             ; preds = %bb.t
  %i.da = call fastcc i32 @process_bit1(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %i.bw, i32 noundef %i.cr, ptr noundef %i.cx) #12, !srcloc !22
  %.not89 = icmp eq i32 %i.da, 0
  br i1 %.not89, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void %6(ptr noundef nonnull @.str.2) #11
  br label %.thread110

bb.y:                                             ; preds = %bb.w
  %i.db = load i32, ptr %i.g, align 4
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.thread112, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.dd = load i64, ptr %i.n, align 8
  %i.de = icmp slt i64 %i.dd, 1
  br i1 %i.de, label %.thread110, label %rc_init_code.exit

.thread112:                                       ; preds = %bb.y, %rc_init_code.exit
  %.not91 = icmp eq ptr %5, null
  br i1 %.not91, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread112
  %i.df = load ptr, ptr %i.q, align 8
  %i.dg = load ptr, ptr %i.m, align 8
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  store i64 %i.dj, ptr %5, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread112
  %i.dk = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not92 = icmp eq ptr %i.dk, null
  br i1 %.not92, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = load ptr, ptr %9, align 8
  %i.dm = load i64, ptr %i.l, align 8             ; 2 uses
  %i.dn = call i64 %i.dk(ptr noundef %i.dl, i64 noundef %i.dm) #11
end_hunk_0
begin_hunk_1_@peek_old_byte:bb.a
bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = sub i32 %i.r, %1
  %i.t = getelementptr i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %i.w = load i32, ptr %i.v, align 1              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.s, %bb.d ], [ %i.x, %bb.e ]  ; 3 uses
  %.not21 = icmp ult i32 %.0, %i.w
  %i.x = add i32 %i.w, %.0
  br i1 %.not21, label %bb.f, label %bb.e, !llvm.loop !44

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8
  %i.z = zext i32 %.0 to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.018.in = phi ptr [ %i.aa, %bb.f ], [ %i.o, %bb.c ]
  %.018 = load i8, ptr %.018.in, align 1
  ret i8 %.018
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 0, 2) i32 @rc_get_bit(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @rc_is_bit_0(ptr noundef %0, ptr noundef %1) #12, !srcloc !45
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 44         ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 4
  %i.e = load i16, ptr %1, align 2                ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 2048, %i.f
  %i.h = lshr i32 %i.g, 5
  %i.i = trunc i32 %i.h to i16
  %i.j = add i16 %i.e, %i.i
  store i16 %i.j, ptr %1, align 2
  %i.k = load i32, ptr %2, align 4
  %i.l = shl i32 %i.k, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.d, align 4
  %i.n = sub i32 %i.m, %i.c
  store i32 %i.n, ptr %i.d, align 4
  %i.o = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = sub i32 %i.p, %i.c
  store i32 %i.q, ptr %i.o, align 8
  %i.r = load i16, ptr %1, align 2                ; 2 uses
  %i.s = lshr i16 %i.r, 5
  %i.t = sub i16 %i.r, %i.s
  store i16 %i.t, ptr %1, align 2
  %i.u = load i32, ptr %2, align 4
  %i.v = shl i32 %i.u, 1
  %i.w = or disjoint i32 %i.v, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ %i.w, %bb.c ], [ %i.l, %bb.b ]
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge, ptr %2, align 4
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -1, 1) i32 @write_byte(ptr nofree noundef captures(none) initializes((8, 9)) %0, i8 noundef zeroext %1) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 %i.d
  store i8 %1, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8
  %i.j = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 1        ; 3 uses
  %i.m = load i32, ptr %i.l, align 1
  %i.n = zext i32 %i.m to i64
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.c, align 8
  %i.p = load i32, ptr %i.l, align 1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = load i32, ptr %i.l, align 1
  %i.w = zext i32 %i.v to i64
  %i.x = tail call i64 %i.h(ptr noundef %i.u, i64 noundef %i.w) #11
  %i.y = load ptr, ptr %i.j, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = zext i32 %i.aa to i64
  %.not14 = icmp eq i64 %i.x, %i.ab
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 0, 2) i32 @rc_direct_bit(ptr nofree noundef captures(none) %0) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44         ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp ult i32 %i.b, 16777216
  br i1 %i.c, label %bb.b, label %rc_normalize.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @rc_do_normalize(ptr noundef %0) #12, !srcloc !12
  %.pre = load i32, ptr %i.a, align 4
  br label %rc_normalize.exit

rc_normalize.exit:                                ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.e = lshr i32 %i.d, 1                         ; 3 uses
  store i32 %i.e, ptr %i.a, align 4
  %i.f = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not = icmp ult i32 %i.g, %i.e
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rc_normalize.exit
  %i.h = sub nuw i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %rc_normalize.exit, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %rc_normalize.exit ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc i32 @copy_bytes(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %2, %bb.a ], [ %i.e, %bb.d ]
  %i.c = tail call fastcc zeroext i8 @peek_old_byte(ptr noundef %0, i32 noundef %1) #12, !srcloc !13
  %i.d = tail call fastcc range(i32 -1, 1) i32 @write_byte(ptr noundef %0, i8 noundef zeroext %i.c) #12, !srcloc !14
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %.0, -1                          ; 3 uses
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %i.a, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 5
  %i.i = load i64, ptr %i.h, align 1
  %i.j = icmp ult i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %.critedge, !llvm.loop !46

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.07 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ %i.e, %bb.d ]
  ret i32 %.07
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

attributes #0 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { cold fn_ret_thunk_extern inlinehint nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { cold noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i64 3514}
!13 = !{i64 8335}
!14 = !{i64 8320}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{null, null}
!19 = distinct !{!19, !11}
!20 = !{!"auto-init"}
!21 = !{i64 15253}
!22 = !{i64 15440}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = !{i64 9024}
!26 = !{i64 9193}
!27 = !{i64 9379}
!28 = !{i64 9532}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = !{i64 9840}
!33 = !{i64 10142}
!34 = !{i64 10307}
!35 = !{i64 10628}
!36 = !{i64 10805}
!37 = !{i64 11218}
!38 = !{i64 11510}
!39 = !{i64 4961}
!40 = !{i64 12713}
!41 = !{i64 12892}
!42 = !{i64 13163}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = !{i64 4437}
!46 = distinct !{!46, !11}
end_hunk_1
