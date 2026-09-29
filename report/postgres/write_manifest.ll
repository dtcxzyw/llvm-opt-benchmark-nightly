Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/write_manifest?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"%s/backup_manifest\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"{ \22PostgreSQL-Backup-Manifest-Version\22: 2,\0A\22System-Identifier\22: %lu,\0A\22Files\22: [\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"{ \22Path\22: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"{ \22Encoded-Path\22: \22\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\22Size\22: %lu, \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\22Last-Modified\22: \22\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%Y-%m-%d %H:%M:%S %Z\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c", \22Checksum-Algorithm\22: \22%s\22, \22Checksum\22: \22\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\0A],\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\22WAL-Ranges\22: [\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"%s{ \22Timeline\22: %u, \22Start-LSN\22: \22%X/%08X\22, \22End-LSN\22: \22%X/%08X\22 }\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\22Manifest-Checksum\22: \22\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\22}\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@pg_file_create_mode = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"could not write file \22%s\22: wrote %zd of %d\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"could not update checksum of file \22%s\22\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @create_manifest_writer(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pg_malloc(i64 noundef 1080) #8 ; 7 uses
  %i.b = tail call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef %i.a, i64 noundef 1024, ptr noundef nonnull @.str, ptr noundef %0) #8 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  store i32 -1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1032 ; 2 uses
  tail call void @initStringInfo(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1057
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  %i.h = tail call i32 @pg_checksum_init(ptr noundef nonnull %i.g, i32 noundef 3) #8 ; 0 uses
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.1, i64 noundef %1) #8
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @pg_malloc(i64 noundef) local_unnamed_addr #2

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare i32 @pg_checksum_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @add_file_to_manifest(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address) %6) local_unnamed_addr #0 {
bb.a:
  %7 = ptrtoaddr ptr %6 to i64                    ; 7 uses
  %8 = ptrtoaddr ptr %1 to i64                    ; 7 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.g, i8 noundef signext 10) #8
  store i8 0, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @appendStringInfoString(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.2) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @pg_encoding_verifymbstr(i32 noundef 6, ptr noundef nonnull %1, i32 noundef %i.c) #8
  %i.i = icmp eq i32 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 22 uses
  br i1 %i.i, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.3) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 9 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = add i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4
  %.not.i = icmp slt i32 %i.m, %i.o
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.j, i8 noundef signext 34) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8
  %i.q = sext i32 %i.l to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store i8 34, ptr %i.r, align 1
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = load i32, ptr %i.k, align 8
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.k, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  store i8 0, ptr %i.w, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = load i8, ptr %1, align 1                 ; 2 uses
  %.not3841.i = icmp eq i8 %i.x, 0
  br i1 %.not3841.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.u
  %i.y = phi i8 [ %i.an, %bb.u ], [ %i.x, %bb.h ] ; 5 uses
  %.042.i = phi ptr [ %i.am, %bb.u ], [ %1, %bb.h ]
  %i.z = zext nneg i8 %i.y to i32
  switch i8 %i.y, label %bb.p [
    i8 8, label %bb.i
    i8 12, label %bb.j
    i8 10, label %bb.k
    i8 13, label %bb.l
    i8 9, label %bb.m
    i8 34, label %bb.n
    i8 92, label %bb.o
  ]

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.19) #8
  br label %bb.u

bb.j:                                             ; preds = %.lr.ph.i
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.20) #8
  br label %bb.u

bb.k:                                             ; preds = %.lr.ph.i
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.21) #8
  br label %bb.u

bb.l:                                             ; preds = %.lr.ph.i
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.22) #8
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph.i
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.23) #8
  br label %bb.u

bb.n:                                             ; preds = %.lr.ph.i
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.24) #8
  br label %bb.u

bb.o:                                             ; preds = %.lr.ph.i
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.25) #8
  br label %bb.u

bb.p:                                             ; preds = %.lr.ph.i
  %i.aa = icmp ult i8 %i.y, 32
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.26, i32 noundef %i.z) #8
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ab = load i32, ptr %i.k, align 8             ; 2 uses
  %i.ac = add i32 %i.ab, 1
  %i.ad = load i32, ptr %i.n, align 4
  %.not40.i = icmp slt i32 %i.ac, %i.ad
  br i1 %.not40.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.j, i8 noundef signext %i.y) #8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ae = load ptr, ptr %i.j, align 8
  %i.af = sext i32 %i.ab to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  store i8 %i.y, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %i.j, align 8
  %i.ai = load i32, ptr %i.k, align 8
  %i.aj = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.aj, ptr %i.k, align 8
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.042.i, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %.not38.i = icmp eq i8 %i.an, 0
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.u, %bb.h
  %i.ao = load i32, ptr %i.k, align 8             ; 2 uses
  %i.ap = add i32 %i.ao, 1
  %i.aq = load i32, ptr %i.n, align 4
  %.not39.i = icmp slt i32 %i.ap, %i.aq
  br i1 %.not39.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.j, i8 noundef signext 34) #8
  br label %escape_json.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.ar = load ptr, ptr %i.j, align 8
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  store i8 34, ptr %i.at, align 1
  %i.au = load ptr, ptr %i.j, align 8
  %i.av = load i32, ptr %i.k, align 8
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.k, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  store i8 0, ptr %i.ay, align 1
  br label %escape_json.exit

bb.x:                                             ; preds = %bb.d
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.5) #8
  %i.az = shl i32 %i.c, 1
  tail call void @enlargeStringInfo(ptr noundef nonnull %i.j, i32 noundef %i.az) #8
  %sext = shl i64 %i.b, 32                        ; 3 uses
  %i.ba = ashr exact i64 %sext, 32                ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %.not.i45 = icmp eq i64 %sext, 0
  br i1 %.not.i45, label %hex_encode.exit, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %bb.x
  %i.be = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bf = sext i32 %i.bc to i64                   ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf  ; 5 uses
  %i.bh = add i64 %i.ba, %8
  %i.bi = add i64 %8, 1
  %i.bj = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bi)
  %i.bk = sub i64 %i.bj, %8                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check, label %.lr.ph.i46.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i46.preheader
  %9 = add i64 %i.ba, %8
  %10 = add i64 %8, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %9, i64 %10) ; 2 uses
  %i.bl = shl i64 %umax, 1
  %i.bm = add i64 %i.bl, %i.bf
  %11 = shl i64 %8, 1
  %i.bn = sub i64 %i.bm, %11
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.bn
  %12 = sub i64 %umax, %8
  %scevgep58 = getelementptr i8, ptr %1, i64 %12
  %bound0 = icmp ult ptr %i.bg, %scevgep58
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i46.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, -8                      ; 4 uses
  %i.bo = shl i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo
  %i.bq = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.br
  %next.gep59 = getelementptr i8, ptr %1, i64 %index
  %wide.load = load <8 x i8>, ptr %next.gep59, align 1, !alias.scope !20 ; 3 uses
  %i.bs = lshr <8 x i8> %wide.load, splat (i8 4)  ; 2 uses
  %i.bt = and <8 x i8> %wide.load, splat (i8 15)  ; 3 uses
  %i.bu = icmp ult <8 x i8> %wide.load, splat (i8 -96)
  %i.bv = or disjoint <8 x i8> %i.bs, splat (i8 48)
  %i.bw = add nuw nsw <8 x i8> %i.bs, splat (i8 87)
  %i.bx = select <8 x i1> %i.bu, <8 x i8> %i.bv, <8 x i8> %i.bw
  %i.by = icmp samesign ult <8 x i8> %i.bt, splat (i8 10)
  %i.bz = or disjoint <8 x i8> %i.bt, splat (i8 48)
  %i.ca = add nuw nsw <8 x i8> %i.bt, splat (i8 87)
  %i.cb = select <8 x i1> %i.by, <8 x i8> %i.bz, <8 x i8> %i.ca
  %interleaved.vec = shufflevector <8 x i8> %i.bx, <8 x i8> %i.cb, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !21, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %hex_encode.exit.loopexit, label %.lr.ph.i46.preheader83

.lr.ph.i46.preheader83:                           ; preds = %vector.memcheck, %.lr.ph.i46.preheader, %middle.block
  %.020.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i46.preheader ], [ %i.bp, %middle.block ]
  %.01519.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i46.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader83, %.lr.ph.i46
  %.020.i = phi ptr [ %i.cp, %.lr.ph.i46 ], [ %.020.i.ph, %.lr.ph.i46.preheader83 ] ; 3 uses
  %.01519.i = phi ptr [ %i.cq, %.lr.ph.i46 ], [ %.01519.i.ph, %.lr.ph.i46.preheader83 ] ; 2 uses
  %i.cd = load i8, ptr %.01519.i, align 1         ; 3 uses
  %i.ce = lshr i8 %i.cd, 4                        ; 2 uses
  %i.cf = and i8 %i.cd, 15                        ; 3 uses
  %i.cg = icmp ult i8 %i.cd, -96
  %i.ch = or disjoint i8 %i.ce, 48
  %i.ci = add nuw nsw i8 %i.ce, 87
  %i.cj = select i1 %i.cg, i8 %i.ch, i8 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cj, ptr %.020.i, align 1
  %i.cl = icmp samesign ult i8 %i.cf, 10
  %i.cm = or disjoint i8 %i.cf, 48
  %i.cn = add nuw nsw i8 %i.cf, 87
  %i.co = select i1 %i.cl, i8 %i.cm, i8 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.co, ptr %i.ck, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.01519.i, i64 1 ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %i.bd
  br i1 %i.cr, label %.lr.ph.i46, label %hex_encode.exit.loopexit, !llvm.loop !14

hex_encode.exit.loopexit:                         ; preds = %.lr.ph.i46, %middle.block
  %.pre = load i32, ptr %i.bb, align 8
  br label %hex_encode.exit

hex_encode.exit:                                  ; preds = %hex_encode.exit.loopexit, %bb.x
  %i.cs = phi i32 [ %.pre, %hex_encode.exit.loopexit ], [ %i.bc, %bb.x ]
  %i.ct = lshr exact i64 %sext, 31
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = add i32 %i.cs, %i.cu
  store i32 %i.cv, ptr %i.bb, align 8
  br label %escape_json.exit

escape_json.exit:                                 ; preds = %bb.w, %bb.v, %hex_encode.exit
  %.str.6.sink = phi ptr [ @.str.6, %hex_encode.exit ], [ @.str.4, %bb.v ], [ @.str.4, %bb.w ]
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull %.str.6.sink) #8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 10 uses
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %i.cw, ptr noundef nonnull @.str.7, i64 noundef %2) #8
  tail call void @appendStringInfoString(ptr noundef nonnull %i.cw, ptr noundef nonnull @.str.8) #8
  tail call void @enlargeStringInfo(ptr noundef nonnull %i.cw, i32 noundef 128) #8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 8 uses
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 %i.da
  %i.dc = call ptr @gmtime(ptr noundef nonnull %i.a) #8
  %i.dd = call i64 @strftime(ptr noundef %i.db, i64 noundef 128, ptr noundef nonnull @.str.9, ptr noundef %i.dc) #8
  %i.de = load i32, ptr %i.cy, align 8
  %i.df = trunc i64 %i.dd to i32
  %i.dg = add i32 %i.de, %i.df
  store i32 %i.dg, ptr %i.cy, align 8
  call void @appendStringInfoChar(ptr noundef nonnull %i.cw, i8 noundef signext 34) #8
  %i.dh = load i32, ptr %i.cy, align 8
  %i.di = icmp sgt i32 %i.dh, 131072
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %escape_json.exit
  call fastcc void @flush_manifest(ptr noundef nonnull %0)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %escape_json.exit
  %i.dj = icmp sgt i32 %5, 0
  br i1 %i.dj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dk = call ptr @pg_checksum_type_name(i32 noundef %4) #8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %i.cw, ptr noundef nonnull @.str.10, ptr noundef %i.dk) #8
  %i.dl = shl nuw i32 %5, 1                       ; 2 uses
  call void @enlargeStringInfo(ptr noundef nonnull %i.cw, i32 noundef %i.dl) #8
  %i.dm = zext nneg i32 %5 to i64                 ; 3 uses
  %i.dn = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.do = load i32, ptr %i.cy, align 8
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dn, i64 %i.dp  ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 %i.dm
  %i.ds = add i64 %7, %i.dm
  %i.dt = add i64 %7, 1
  %i.du = call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dt)
  %i.dv = sub i64 %i.du, %7                       ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check69, label %.lr.ph.i49.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %bb.aa
  %13 = add i64 %7, %i.dm
  %14 = add i64 %7, 1
  %umax62 = call i64 @llvm.umax.i64(i64 %13, i64 %14) ; 2 uses
  %i.dw = shl i64 %umax62, 1
  %i.dx = add i64 %i.dw, %i.dp
  %15 = shl i64 %7, 1
  %i.dy = sub i64 %i.dx, %15
  %scevgep63 = getelementptr i8, ptr %i.dn, i64 %i.dy
  %16 = sub i64 %umax62, %7
  %scevgep64 = getelementptr i8, ptr %6, i64 %16
  %bound065 = icmp ult ptr %i.dq, %scevgep64
  %bound166 = icmp ult ptr %6, %scevgep63
  %found.conflict67 = and i1 %bound065, %bound166
  br i1 %found.conflict67, label %.lr.ph.i49.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck61
  %n.vec71 = and i64 %i.dv, -8                    ; 4 uses
  %i.dz = shl i64 %n.vec71, 1
  %i.ea = getelementptr i8, ptr %i.dq, i64 %i.dz
  %i.eb = getelementptr i8, ptr %6, i64 %n.vec71
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next78, %vector.body72 ] ; 3 uses
  %i.ec = shl i64 %index73, 1
  %next.gep74 = getelementptr i8, ptr %i.dq, i64 %i.ec
  %next.gep75 = getelementptr i8, ptr %6, i64 %index73
  %wide.load76 = load <8 x i8>, ptr %next.gep75, align 1, !alias.scope !22 ; 3 uses
  %i.ed = lshr <8 x i8> %wide.load76, splat (i8 4) ; 2 uses
  %i.ee = and <8 x i8> %wide.load76, splat (i8 15) ; 3 uses
  %i.ef = icmp ult <8 x i8> %wide.load76, splat (i8 -96)
  %i.eg = or disjoint <8 x i8> %i.ed, splat (i8 48)
  %i.eh = add nuw nsw <8 x i8> %i.ed, splat (i8 87)
  %i.ei = select <8 x i1> %i.ef, <8 x i8> %i.eg, <8 x i8> %i.eh
  %i.ej = icmp samesign ult <8 x i8> %i.ee, splat (i8 10)
  %i.ek = or disjoint <8 x i8> %i.ee, splat (i8 48)
  %i.el = add nuw nsw <8 x i8> %i.ee, splat (i8 87)
  %i.em = select <8 x i1> %i.ej, <8 x i8> %i.ek, <8 x i8> %i.el
  %interleaved.vec77 = shufflevector <8 x i8> %i.ei, <8 x i8> %i.em, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec77, ptr %next.gep74, align 1, !alias.scope !23, !noalias !22
  %index.next78 = add nuw i64 %index73, 8         ; 2 uses
  %i.en = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.en, label %middle.block79, label %vector.body72, !llvm.loop !18

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.dv, %n.vec71
  br i1 %cmp.n80, label %hex_encode.exit53, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %vector.memcheck61, %bb.aa, %middle.block79
  %.020.i50.ph = phi ptr [ %i.dq, %vector.memcheck61 ], [ %i.dq, %bb.aa ], [ %i.ea, %middle.block79 ]
  %.01519.i51.ph = phi ptr [ %6, %vector.memcheck61 ], [ %6, %bb.aa ], [ %i.eb, %middle.block79 ]
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader, %.lr.ph.i49
  %.020.i50 = phi ptr [ %i.fa, %.lr.ph.i49 ], [ %.020.i50.ph, %.lr.ph.i49.preheader ] ; 3 uses
  %.01519.i51 = phi ptr [ %i.fb, %.lr.ph.i49 ], [ %.01519.i51.ph, %.lr.ph.i49.preheader ] ; 2 uses
  %i.eo = load i8, ptr %.01519.i51, align 1       ; 3 uses
  %i.ep = lshr i8 %i.eo, 4                        ; 2 uses
  %i.eq = and i8 %i.eo, 15                        ; 3 uses
  %i.er = icmp ult i8 %i.eo, -96
  %i.es = or disjoint i8 %i.ep, 48
  %i.et = add nuw nsw i8 %i.ep, 87
  %i.eu = select i1 %i.er, i8 %i.es, i8 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.020.i50, i64 1
  store i8 %i.eu, ptr %.020.i50, align 1
  %i.ew = icmp samesign ult i8 %i.eq, 10
  %i.ex = or disjoint i8 %i.eq, 48
  %i.ey = add nuw nsw i8 %i.eq, 87
  %i.ez = select i1 %i.ew, i8 %i.ex, i8 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %.020.i50, i64 2
  store i8 %i.ez, ptr %i.ev, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.01519.i51, i64 1 ; 2 uses
  %i.fc = icmp ult ptr %i.fb, %i.dr
  br i1 %i.fc, label %.lr.ph.i49, label %hex_encode.exit53, !llvm.loop !19

hex_encode.exit53:                                ; preds = %.lr.ph.i49, %middle.block79
  %i.fd = load i32, ptr %i.cy, align 8
  %i.fe = add i32 %i.fd, %i.dl
  store i32 %i.fe, ptr %i.cy, align 8
  call void @appendStringInfoChar(ptr noundef nonnull %i.cw, i8 noundef signext 34) #8
  br label %bb.ab

bb.ab:                                            ; preds = %hex_encode.exit53, %bb.z
  call void @appendStringInfoString(ptr noundef nonnull %i.cw, ptr noundef nonnull @.str.11) #8
  %i.ff = load i32, ptr %i.cy, align 8
  %i.fg = icmp sgt i32 %i.ff, 131072
  br i1 %i.fg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @flush_manifest(ptr noundef nonnull %0)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pg_encoding_verifymbstr(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_manifest(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @pg_file_create_mode, align 4
  %i.e = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 193, i32 noundef %i.d) #8 ; 3 uses
  store i32 %i.e, ptr %i.a, align 8
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull %0) #8
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = zext nneg i32 %i.j to i64
  %i.n = tail call i64 @write(i32 noundef %i.g, ptr noundef %i.l, i64 noundef %i.m) #8 ; 4 uses
  %i.o = load i32, ptr %i.i, align 8              ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.not = icmp eq i64 %i.n, %i.p
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp slt i64 %i.n, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull %0) #8
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull %0, i64 noundef %i.n, i32 noundef %i.o) #8
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1057
  %i.s = load i8, ptr %i.r, align 1, !range !4, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.v = load ptr, ptr %i.h, align 8
  %i.w = tail call i32 @pg_checksum_update(ptr noundef nonnull %i.u, ptr noundef %i.v, i64 noundef %i.n) #8
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull %0) #8
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  tail call void @resetStringInfo(ptr noundef nonnull %i.h) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  ret void
}

declare ptr @pg_checksum_type_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @finalize_manifest(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  %2 = ptrtoaddr ptr %i.a to i64                  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 8 uses
  tail call void @appendStringInfoString(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.12) #8
  tail call void @appendStringInfoString(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13) #8
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.029 = phi ptr [ %i.q, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %i.c = icmp eq ptr %.029, %1
  %i.d = select i1 %i.c, ptr @.str.15, ptr @.str.2
  %i.e = load i32, ptr %.029, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = trunc i64 %i.g to i32
  %i.k = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = trunc i64 %i.l to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.d, i32 noundef %i.e, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.o) #8
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @appendStringInfoString(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.12) #8
  tail call fastcc void @flush_manifest(ptr noundef nonnull %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1057
  store i8 0, ptr %i.r, align 1
  tail call void @appendStringInfoString(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.16) #8
  tail call void @enlargeStringInfo(ptr noundef nonnull %i.b, i32 noundef 130) #8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.t = call i32 @pg_checksum_final(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a) #8 ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %hex_encode.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = sext i32 %i.w to i64                     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z    ; 5 uses
  %i.ab = add i64 %2, %i.u
  %i.ac = or disjoint i64 %2, 1
  %i.ad = call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac) ; 2 uses
  %i.ae = sub i64 %i.ad, %2                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = add i64 %2, %i.u
  %4 = or disjoint i64 %2, 1
  %umax = call i64 @llvm.umax.i64(i64 %3, i64 %4) ; 2 uses
  %i.af = shl i64 %umax, 1
  %i.ag = add i64 %i.af, %i.z
  %5 = shl i64 %2, 1
  %i.ah = sub i64 %i.ag, %5
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ah
  %6 = sub i64 %umax, %2
  %scevgep30 = getelementptr i8, ptr %i.a, i64 %6
  %bound0 = icmp ult ptr %i.aa, %scevgep30
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ai = and i64 %i.ad, 7                        ; 2 uses
  %n.vec = sub i64 %i.ae, %i.ai                   ; 3 uses
  %i.aj = shl i64 %n.vec, 1
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.am
  %next.gep31 = getelementptr i8, ptr %i.a, i64 %index
  %wide.load = load <8 x i8>, ptr %next.gep31, align 8, !alias.scope !30 ; 3 uses
  %i.an = lshr <8 x i8> %wide.load, splat (i8 4)  ; 2 uses
  %i.ao = and <8 x i8> %wide.load, splat (i8 15)  ; 3 uses
  %i.ap = icmp ult <8 x i8> %wide.load, splat (i8 -96)
  %i.aq = or disjoint <8 x i8> %i.an, splat (i8 48)
  %i.ar = add nuw nsw <8 x i8> %i.an, splat (i8 87)
  %i.as = select <8 x i1> %i.ap, <8 x i8> %i.aq, <8 x i8> %i.ar
  %i.at = icmp samesign ult <8 x i8> %i.ao, splat (i8 10)
  %i.au = or disjoint <8 x i8> %i.ao, splat (i8 48)
  %i.av = add nuw nsw <8 x i8> %i.ao, splat (i8 87)
  %i.aw = select <8 x i1> %i.at, <8 x i8> %i.au, <8 x i8> %i.av
  %interleaved.vec = shufflevector <8 x i8> %i.as, <8 x i8> %i.aw, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !31, !noalias !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, 0
  br i1 %cmp.n, label %hex_encode.exit.loopexit, label %.lr.ph.i.preheader33

.lr.ph.i.preheader33:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.preheader ], [ %i.ak, %middle.block ]
  %.01519.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader33, %.lr.ph.i
  %.020.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.020.i.ph, %.lr.ph.i.preheader33 ] ; 3 uses
  %.01519.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.01519.i.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %i.ay = load i8, ptr %.01519.i, align 1         ; 3 uses
  %i.az = lshr i8 %i.ay, 4                        ; 2 uses
  %i.ba = and i8 %i.ay, 15                        ; 3 uses
  %i.bb = icmp ult i8 %i.ay, -96
  %i.bc = or disjoint i8 %i.az, 48
  %i.bd = add nuw nsw i8 %i.az, 87
  %i.be = select i1 %i.bb, i8 %i.bc, i8 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.be, ptr %.020.i, align 1
  %i.bg = icmp samesign ult i8 %i.ba, 10
  %i.bh = or disjoint i8 %i.ba, 48
  %i.bi = add nuw nsw i8 %i.ba, 87
  %i.bj = select i1 %i.bg, i8 %i.bh, i8 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.bj, ptr %i.bf, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01519.i, i64 1 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.x
  br i1 %i.bm, label %.lr.ph.i, label %hex_encode.exit.loopexit, !llvm.loop !29

hex_encode.exit.loopexit:                         ; preds = %.lr.ph.i, %middle.block
  %.pre = load i32, ptr %i.v, align 8
  br label %hex_encode.exit

hex_encode.exit:                                  ; preds = %hex_encode.exit.loopexit, %._crit_edge
  %i.bn = phi i32 [ %.pre, %hex_encode.exit.loopexit ], [ %i.w, %._crit_edge ]
  %i.bo = shl i32 %i.t, 1
  %i.bp = add i32 %i.bn, %i.bo
  store i32 %i.bp, ptr %i.v, align 8
  call void @appendStringInfoString(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.17) #8
  call fastcc void @flush_manifest(ptr noundef nonnull %0)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = call i32 @close(i32 noundef %i.br) #8
  %.not27 = icmp eq i32 %i.bs, 0
  br i1 %.not27, label %bb.c, label %bb.b

bb.b:                                             ; preds = %hex_encode.exit
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %0) #8
  call void @exit(i32 noundef 1) #10
  unreachable

bb.c:                                             ; preds = %hex_encode.exit
  store i32 -1, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @pg_checksum_final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

declare i32 @pg_checksum_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @resetStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !6, !7, !8}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !6, !7, !8}
!19 = distinct !{!19, !6, !7}
!20 = !{!11}
!21 = !{!12}
!22 = !{!16}
!23 = !{!17}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !6, !7, !8}
!29 = distinct !{!29, !6, !7}
!30 = !{!26}
!31 = !{!27}
end_hunk_0
