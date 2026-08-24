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
  %7 = alloca %struct.lzma_header, align 1        ; 8 uses
  %8 = alloca %struct.rc, align 8                 ; 14 uses
  %9 = alloca %struct.writer, align 8             ; 15 uses
  %10 = alloca %struct.cstate, align 4            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 0, ptr %i.a, align 8, !annotation !10
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %7, i8 0, i64 13, i1 false), !annotation !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 32, i1 false), !annotation !10
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
  %i.w = call i64 %nofill..i(ptr noundef nonnull %.077107, i64 noundef 65536) #11, !inline_history !11 ; 3 uses
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.f, label %rc_read.exit

bb.f:                                             ; preds = %bb.e
  call void %6(ptr noundef nonnull @.str.5) #11, !inline_history !11
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
  br i1 %exitcond.not, label %bb.h, label %bb.d, !llvm.loop !12

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
  %i.ai = call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 17)
  %i.aj = trunc nuw i32 %i.ai to i8
  %.lhs.trunc = add i8 %i.aj, 8                   ; 2 uses
  %i.ak = udiv i8 %.lhs.trunc, 9
  %.zext = zext nneg i8 %i.ak to i32              ; 4 uses
  %i.al = add nuw nsw i32 %.zext, 1               ; 2 uses
  %i.am = add nsw i32 %i.ag, -9
  %.neg = mul nsw i32 %.zext, -9
  %i.an = add nsw i32 %.neg, %i.am                ; 2 uses
  %i.ao = icmp ugt i8 %.lhs.trunc, 35
  br i1 %i.ao, label %.lr.ph127.preheader, label %._crit_edge

.lr.ph127.preheader:                              ; preds = %.preheader114
  %i.ap = add nuw nsw i32 %.zext, 5
  %i.aq = call i32 @llvm.umin.i32(i32 %i.al, i32 9)
  %i.ar = sub nuw nsw i32 %i.ap, %i.aq
  %.lhs.trunc163 = trunc nuw nsw i32 %i.ar to i8
  %i.as = udiv i8 %.lhs.trunc163, 5
  %.zext164 = zext nneg i8 %i.as to i32           ; 2 uses
  %i.at = add nuw nsw i32 %.zext164, 1
  %i.au = add nsw i32 %.zext, -4
  %.neg159 = mul nsw i32 %.zext164, -5
  %i.av = add nsw i32 %.neg159, %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %.lr.ph127.preheader, %.preheader114
  %.068.lcssa162 = phi i32 [ %i.an, %.preheader114 ], [ %i.an, %.lr.ph127.preheader ], [ %i.ag, %bb.j ] ; 2 uses
  %.071.lcssa = phi i32 [ %i.al, %.preheader114 ], [ %i.av, %.lr.ph127.preheader ], [ 0, %bb.j ] ; 2 uses
  %.070.lcssa = phi i32 [ 0, %.preheader114 ], [ %i.at, %.lr.ph127.preheader ], [ 0, %bb.j ]
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge
  %indvars.iv.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %.010.i = phi i32 [ 0, %._crit_edge ], [ %i.bb, %bb.k ]
  %i.ax = shl i32 %.010.i, 8
  %11 = sub nuw nsw i64 3, %indvars.iv.i
  %i.ay = getelementptr i8, ptr %i.aw, i64 %11
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ax, %i.ba            ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %read_int.exit, label %bb.k, !llvm.loop !14

read_int.exit:                                    ; preds = %bb.k
  store i32 %i.bb, ptr %i.aw, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %read_int.exit
  %indvars.iv.i97 = phi i64 [ 0, %read_int.exit ], [ %indvars.iv.next.i99, %bb.l ] ; 2 uses
  %.010.i98 = phi i64 [ 0, %read_int.exit ], [ %i.bh, %bb.l ]
  %i.bd = shl i64 %.010.i98, 8
  %12 = sub nuw nsw i64 7, %indvars.iv.i97
  %i.be = getelementptr i8, ptr %i.bc, i64 %12
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bd, %i.bg            ; 3 uses
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %indvars.iv.next.i99, 8
  br i1 %exitcond.not.i100, label %read_int.exit101, label %bb.l, !llvm.loop !14

read_int.exit101:                                 ; preds = %bb.l
  %notmask = shl nsw i32 -1, %.070.lcssa
  %i.bi = xor i32 %notmask, -1
  %notmask86 = shl nsw i32 -1, %.071.lcssa
  %i.bj = xor i32 %notmask86, -1
  store i64 %i.bh, ptr %i.bc, align 1
  %i.bk = icmp eq i32 %i.bb, 0
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %read_int.exit101
  store i32 1, ptr %i.aw, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %read_int.exit101
  %i.bl = phi i32 [ 1, %bb.m ], [ %i.bb, %read_int.exit101 ]
  %.not87 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not87, label %bb.o, label %.thread108

.thread108:                                       ; preds = %bb.n
  store ptr %4, ptr %9, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = zext i32 %i.bl to i64
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bm) ; 2 uses
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %i.bo, ptr %i.bp, align 8
  %sext = shl nuw i64 %i.bn, 32
  %i.bq = ashr exact i64 %sext, 32
  %i.br = call noalias ptr @vmalloc_noprof(i64 noundef %i.bq) #10 ; 2 uses
  store ptr %i.br, ptr %9, align 8
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %.thread108, %bb.o
  %i.bt = add nsw i32 %.071.lcssa, %.068.lcssa162
  %i.bu = shl nuw nsw i32 768, %i.bt
  %i.bv = add nuw nsw i32 %i.bu, 1846             ; 2 uses
  %i.bw = shl nuw i32 %i.bv, 1
  %i.bx = zext i32 %i.bw to i64
  %i.by = call noalias ptr @vmalloc_noprof(i64 noundef %i.bx) #10 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.ae, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.bv to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv142 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next143, %.preheader ] ; 2 uses
  %i.ca = getelementptr [2 x i8], ptr %i.by, i64 %indvars.iv142
  store i16 1024, ptr %i.ca, align 2
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond145.not, label %.preheader168, label %.preheader, !llvm.loop !15

.preheader168:                                    ; preds = %.preheader, %bb.s
  %i.cb = phi i32 [ %i.cn, %bb.s ], [ 0, %.preheader ]
  %i.cc = phi ptr [ %i.ci, %bb.s ], [ %.pre8.i, %.preheader ] ; 2 uses
  %i.cd = phi ptr [ %i.ck, %bb.s ], [ %i.ab, %.preheader ] ; 2 uses
  %.07.i = phi i32 [ %i.co, %bb.s ], [ 0, %.preheader ]
  %.not.i103 = icmp ult ptr %i.cd, %i.cc
  br i1 %.not.i103, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.preheader168
  %i.ce = call i64 %nofill..i(ptr noundef nonnull %.077107, i64 noundef 65536) #11, !inline_history !16 ; 3 uses
  store i64 %i.ce, ptr %i.n, align 8
  %i.cf = icmp slt i64 %i.ce, 1
  br i1 %i.cf, label %bb.r, label %rc_read.exit.i

bb.r:                                             ; preds = %bb.q
  call void %6(ptr noundef nonnull @.str.5) #11, !inline_history !16
  br label %rc_read.exit.i

rc_read.exit.i:                                   ; preds = %bb.r, %bb.q
  %i.cg = getelementptr i8, ptr %.077107, i64 %i.ce ; 2 uses
  store ptr %i.cg, ptr %i.p, align 8
  br label %bb.s

bb.s:                                             ; preds = %rc_read.exit.i, %.preheader168
  %i.ch = phi ptr [ %.077107, %rc_read.exit.i ], [ %i.cd, %.preheader168 ] ; 2 uses
  %i.ci = phi ptr [ %i.cg, %rc_read.exit.i ], [ %i.cc, %.preheader168 ]
  %i.cj = shl i32 %i.cb, 8
  %i.ck = getelementptr i8, ptr %i.ch, i64 1      ; 2 uses
  store ptr %i.ck, ptr %i.q, align 8
  %i.cl = load i8, ptr %i.ch, align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.cj, %i.cm            ; 2 uses
  store i32 %i.cn, ptr %i.r, align 8
  %i.co = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not.i104 = icmp eq i32 %i.co, 5
  br i1 %exitcond.not.i104, label %rc_init_code.exit, label %.preheader168, !llvm.loop !17

rc_init_code.exit:                                ; preds = %bb.s, %bb.z
  %.val95 = load i64, ptr %i.l, align 8
  %.val96 = load i64, ptr %i.j, align 8
  %i.cp = add i64 %.val96, %.val95                ; 2 uses
  %i.cq = load i64, ptr %i.bc, align 1
  %i.cr = icmp ult i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.t, label %.thread112

bb.t:                                             ; preds = %rc_init_code.exit
  %i.cs = trunc i64 %i.cp to i32
  %i.ct = and i32 %i.cs, %i.bi                    ; 2 uses
  %i.cu = load i32, ptr %10, align 4
  %i.cv = shl i32 %i.cu, 4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [2 x i8], ptr %i.by, i64 %i.cw
  %i.cy = zext nneg i32 %i.ct to i64
  %i.cz = getelementptr [2 x i8], ptr %i.cx, i64 %i.cy ; 3 uses
  %i.da = call fastcc i32 @rc_is_bit_0(ptr noundef nonnull %8, ptr noundef %i.cz) #12, !srcloc !18
  %.not88 = icmp eq i32 %i.da, 0
  br i1 %.not88, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = call fastcc i32 @process_bit0(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %i.by, ptr noundef %i.cz, i32 noundef %.068.lcssa162, i32 noundef %i.bj) #12
  %.not90 = icmp eq i32 %i.db, 0
  br i1 %.not90, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void %6(ptr noundef nonnull @.str.2) #11
  br label %.thread110

bb.w:                                             ; preds = %bb.t
  %i.dc = call fastcc i32 @process_bit1(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %i.by, i32 noundef %i.ct, ptr noundef %i.cz) #12, !srcloc !19
  %.not89 = icmp eq i32 %i.dc, 0
  br i1 %.not89, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void %6(ptr noundef nonnull @.str.2) #11
  br label %.thread110

bb.y:                                             ; preds = %bb.w
  %i.dd = load i32, ptr %i.g, align 4
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.thread112, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.df = load i64, ptr %i.n, align 8
  %i.dg = icmp slt i64 %i.df, 1
  br i1 %i.dg, label %.thread110, label %rc_init_code.exit

.thread112:                                       ; preds = %bb.y, %rc_init_code.exit
  %.not91 = icmp eq ptr %5, null
  br i1 %.not91, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread112
  %i.dh = load ptr, ptr %i.q, align 8
  %i.di = load ptr, ptr %i.m, align 8
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  store i64 %i.dl, ptr %5, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread112
  %i.dm = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not92 = icmp eq ptr %i.dm, null
  br i1 %.not92, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load ptr, ptr %9, align 8
  %i.do = load i64, ptr %i.l, align 8             ; 2 uses
  %i.dp = call i64 %i.dm(ptr noundef %i.dn, i64 noundef %i.do) #11
  %i.dq = icmp eq i64 %i.dp, %i.do
  br i1 %i.dq, label %bb.ad, label %.thread110

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br label %.thread110

.thread110:                                       ; preds = %bb.z, %bb.x, %bb.v, %bb.ac, %bb.ad
  %.075 = phi i32 [ 0, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.v ], [ -1, %bb.x ], [ -1, %bb.z ]
  call void @vfree(ptr noundef nonnull %i.by) #11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.p, %.thread110
  %.176 = phi i32 [ -1, %bb.p ], [ %.075, %.thread110 ] ; 2 uses
  br i1 %.not87, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dr = load ptr, ptr %9, align 8
  call void @vfree(ptr noundef %i.dr) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.o, %bb.i
  %.2 = phi i32 [ -1, %bb.i ], [ -1, %bb.o ], [ %.176, %bb.ae ], [ %.176, %bb.af ] ; 2 uses
  br i1 %.not, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @kfree(ptr noundef nonnull %.077107) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.c, %bb.ah, %bb.ag
  %.3 = phi i32 [ %.2, %bb.ag ], [ %.2, %bb.ah ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_noprof(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 0, 2) i32 @rc_is_bit_0(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp ult i32 %i.b, 16777216
  br i1 %i.c, label %bb.b, label %rc_is_bit_0_helper.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @rc_do_normalize(ptr noundef %0) #12, !srcloc !20
  %.pre.i = load i32, ptr %i.a, align 4
  br label %rc_is_bit_0_helper.exit

rc_is_bit_0_helper.exit:                          ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %bb.b ]
  %i.e = load i16, ptr %1, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = lshr i32 %i.d, 11
  %i.h = mul i32 %i.g, %i.f                       ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 48
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp ult i32 %i.k, %i.h
  %i.m = zext i1 %i.l to i32
  ret i32 %i.m
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -1, 1) i32 @process_bit0(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((44, 48)) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef range(i32 0, 9) %5, i32 noundef %6) unnamed_addr #0 section ".init.text" align 16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 1, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %1, i64 48
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %1, i64 44
  store i32 %i.c, ptr %i.d, align 4
  %i.e = load i16, ptr %4, align 2                ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 2048, %i.f
  %i.h = lshr i32 %i.g, 5
  %i.i = trunc i32 %i.h to i16
  %i.j = add i16 %i.e, %i.i
  store i16 %i.j, ptr %4, align 2
  %i.k = getelementptr i8, ptr %3, i64 3692
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 32
  %.val34 = load i64, ptr %i.m, align 8
  %i.n = add i64 %.val34, %.val
  %i.o = zext i32 %6 to i64
  %i.p = and i64 %i.n, %i.o
  %i.q = zext nneg i32 %5 to i64
  %i.r = shl nuw nsw i64 %i.p, %i.q
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = load i8, ptr %i.s, align 8
  %i.u = zext i8 %i.t to i32
  %i.v = sub nuw nsw i32 8, %5
  %i.w = lshr i32 %i.u, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.r, %i.x
  %.idx = mul nuw nsw i64 %i.y, 1536
  %i.z = getelementptr i8, ptr %i.k, i64 %.idx    ; 2 uses
  %i.aa = load i32, ptr %2, align 4
  %i.ab = icmp sgt i32 %i.aa, 6
  br i1 %i.ab, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %2, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call fastcc zeroext i8 @peek_old_byte(ptr noundef %0, i32 noundef %i.ad) #12, !srcloc !21
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.z, i64 512
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ah = phi i32 [ 1, %bb.b ], [ %.pre.pr, %bb.d ]
  %.028 = phi i32 [ %i.af, %bb.b ], [ %i.ai, %bb.d ]
  %i.ai = shl i32 %.028, 1                        ; 2 uses
  %i.aj = and i32 %i.ai, 256                      ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr [2 x i8], ptr %i.ag, i64 %i.ak
  %i.am = sext i32 %i.ah to i64
  %i.an = getelementptr [2 x i8], ptr %i.al, i64 %i.am
end_hunk_0
