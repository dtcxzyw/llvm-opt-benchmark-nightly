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
  %7 = ptrtoaddr ptr %6 to i64                    ; 4 uses
  %8 = ptrtoaddr ptr %1 to i64                    ; 4 uses
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
  %i.ba = ashr exact i64 %sext, 32                ; 2 uses
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
  %i.bj = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bi) ; 2 uses
  %i.bk = sub i64 %i.bj, %8                       ; 4 uses
  %min.iters.check = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check, label %.lr.ph.i46.preheader85, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i46.preheader
  %i.bl = shl i64 %i.bj, 1
  %i.bm = shl i64 %8, 1
  %i.bn = add i64 %i.bl, %i.bf
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bo
  %i.bq = getelementptr i8, ptr %1, i64 %i.bk
  %bound0 = icmp ult ptr %i.bg, %i.bq
  %bound1 = icmp ult ptr %1, %i.bp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i46.preheader85, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, -8                      ; 4 uses
  %i.br = shl i64 %n.vec, 1
  %i.bs = getelementptr i8, ptr %i.bg, i64 %i.br
  %i.bt = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bu
  %next.gep59 = getelementptr i8, ptr %1, i64 %index
  %wide.load = load <8 x i8>, ptr %next.gep59, align 1, !alias.scope !20 ; 3 uses
  %i.bv = lshr <8 x i8> %wide.load, splat (i8 4)  ; 2 uses
  %i.bw = and <8 x i8> %wide.load, splat (i8 15)  ; 3 uses
  %i.bx = icmp ult <8 x i8> %wide.load, splat (i8 -96)
  %i.by = or disjoint <8 x i8> %i.bv, splat (i8 48)
  %i.bz = add nuw nsw <8 x i8> %i.bv, splat (i8 87)
  %i.ca = select <8 x i1> %i.bx, <8 x i8> %i.by, <8 x i8> %i.bz
  %i.cb = icmp samesign ult <8 x i8> %i.bw, splat (i8 10)
  %i.cc = or disjoint <8 x i8> %i.bw, splat (i8 48)
  %i.cd = add nuw nsw <8 x i8> %i.bw, splat (i8 87)
  %i.ce = select <8 x i1> %i.cb, <8 x i8> %i.cc, <8 x i8> %i.cd
  %interleaved.vec = shufflevector <8 x i8> %i.ca, <8 x i8> %i.ce, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !21, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %hex_encode.exit.loopexit, label %.lr.ph.i46.preheader85

.lr.ph.i46.preheader85:                           ; preds = %vector.memcheck, %.lr.ph.i46.preheader, %middle.block
  %.020.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i46.preheader ], [ %i.bs, %middle.block ]
  %.01519.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i46.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader85, %.lr.ph.i46
  %.020.i = phi ptr [ %i.cs, %.lr.ph.i46 ], [ %.020.i.ph, %.lr.ph.i46.preheader85 ] ; 3 uses
  %.01519.i = phi ptr [ %i.ct, %.lr.ph.i46 ], [ %.01519.i.ph, %.lr.ph.i46.preheader85 ] ; 2 uses
  %i.cg = load i8, ptr %.01519.i, align 1         ; 3 uses
  %i.ch = lshr i8 %i.cg, 4                        ; 2 uses
  %i.ci = and i8 %i.cg, 15                        ; 3 uses
  %i.cj = icmp ult i8 %i.cg, -96
  %i.ck = or disjoint i8 %i.ch, 48
  %i.cl = add nuw nsw i8 %i.ch, 87
  %i.cm = select i1 %i.cj, i8 %i.ck, i8 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cm, ptr %.020.i, align 1
  %i.co = icmp samesign ult i8 %i.ci, 10
  %i.cp = or disjoint i8 %i.ci, 48
  %i.cq = add nuw nsw i8 %i.ci, 87
  %i.cr = select i1 %i.co, i8 %i.cp, i8 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.cr, ptr %i.cn, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.01519.i, i64 1 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.bd
  br i1 %i.cu, label %.lr.ph.i46, label %hex_encode.exit.loopexit, !llvm.loop !14

hex_encode.exit.loopexit:                         ; preds = %.lr.ph.i46, %middle.block
  %.pre = load i32, ptr %i.bb, align 8
  br label %hex_encode.exit

hex_encode.exit:                                  ; preds = %hex_encode.exit.loopexit, %bb.x
  %i.cv = phi i32 [ %.pre, %hex_encode.exit.loopexit ], [ %i.bc, %bb.x ]
  %i.cw = lshr exact i64 %sext, 31
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = add i32 %i.cv, %i.cx
  store i32 %i.cy, ptr %i.bb, align 8
  br label %escape_json.exit

escape_json.exit:                                 ; preds = %bb.w, %bb.v, %hex_encode.exit
  %.str.6.sink = phi ptr [ @.str.6, %hex_encode.exit ], [ @.str.4, %bb.v ], [ @.str.4, %bb.w ]
  tail call void @appendStringInfoString(ptr noundef nonnull %i.j, ptr noundef nonnull %.str.6.sink) #8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 10 uses
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.7, i64 noundef %2) #8
  tail call void @appendStringInfoString(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.8) #8
  tail call void @enlargeStringInfo(ptr noundef nonnull %i.cz, i32 noundef 128) #8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 8 uses
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 %i.dd
  %i.df = call ptr @gmtime(ptr noundef nonnull %i.a) #8
  %i.dg = call i64 @strftime(ptr noundef %i.de, i64 noundef 128, ptr noundef nonnull @.str.9, ptr noundef %i.df) #8
  %i.dh = load i32, ptr %i.db, align 8
  %i.di = trunc i64 %i.dg to i32
  %i.dj = add i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.db, align 8
  call void @appendStringInfoChar(ptr noundef nonnull %i.cz, i8 noundef signext 34) #8
  %i.dk = load i32, ptr %i.db, align 8
  %i.dl = icmp sgt i32 %i.dk, 131072
  br i1 %i.dl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %escape_json.exit
  call fastcc void @flush_manifest(ptr noundef nonnull %0)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %escape_json.exit
  %i.dm = icmp sgt i32 %5, 0
  br i1 %i.dm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dn = call ptr @pg_checksum_type_name(i32 noundef %4) #8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.10, ptr noundef %i.dn) #8
  %i.do = shl nuw i32 %5, 1                       ; 2 uses
  call void @enlargeStringInfo(ptr noundef nonnull %i.cz, i32 noundef %i.do) #8
  %i.dp = zext nneg i32 %5 to i64                 ; 2 uses
  %i.dq = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.dr = load i32, ptr %i.db, align 8
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dq, i64 %i.ds  ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 %i.dp
  %i.dv = add i64 %7, %i.dp
  %i.dw = add i64 %7, 1
  %i.dx = call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.dw) ; 2 uses
  %i.dy = sub i64 %i.dx, %7                       ; 4 uses
  %min.iters.check67 = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check67, label %.lr.ph.i49.preheader, label %vector.memcheck68

vector.memcheck68:                                ; preds = %bb.aa
  %i.dz = shl i64 %i.dx, 1
  %i.ea = shl i64 %7, 1
  %i.eb = add i64 %i.dz, %i.ds
  %i.ec = sub i64 %i.eb, %i.ea
  %i.ed = getelementptr i8, ptr %i.dq, i64 %i.ec
  %i.ee = getelementptr i8, ptr %6, i64 %i.dy
  %bound069 = icmp ult ptr %i.dt, %i.ee
  %bound170 = icmp ult ptr %6, %i.ed
  %found.conflict71 = and i1 %bound069, %bound170
  br i1 %found.conflict71, label %.lr.ph.i49.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck68
  %n.vec73 = and i64 %i.dy, -8                    ; 4 uses
  %i.ef = shl i64 %n.vec73, 1
  %i.eg = getelementptr i8, ptr %i.dt, i64 %i.ef
  %i.eh = getelementptr i8, ptr %6, i64 %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next80, %vector.body74 ] ; 3 uses
  %i.ei = shl i64 %index75, 1
  %next.gep76 = getelementptr i8, ptr %i.dt, i64 %i.ei
  %next.gep77 = getelementptr i8, ptr %6, i64 %index75
  %wide.load78 = load <8 x i8>, ptr %next.gep77, align 1, !alias.scope !22 ; 3 uses
  %i.ej = lshr <8 x i8> %wide.load78, splat (i8 4) ; 2 uses
  %i.ek = and <8 x i8> %wide.load78, splat (i8 15) ; 3 uses
  %i.el = icmp ult <8 x i8> %wide.load78, splat (i8 -96)
  %i.em = or disjoint <8 x i8> %i.ej, splat (i8 48)
  %i.en = add nuw nsw <8 x i8> %i.ej, splat (i8 87)
  %i.eo = select <8 x i1> %i.el, <8 x i8> %i.em, <8 x i8> %i.en
  %i.ep = icmp samesign ult <8 x i8> %i.ek, splat (i8 10)
  %i.eq = or disjoint <8 x i8> %i.ek, splat (i8 48)
  %i.er = add nuw nsw <8 x i8> %i.ek, splat (i8 87)
  %i.es = select <8 x i1> %i.ep, <8 x i8> %i.eq, <8 x i8> %i.er
  %interleaved.vec79 = shufflevector <8 x i8> %i.eo, <8 x i8> %i.es, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec79, ptr %next.gep76, align 1, !alias.scope !23, !noalias !22
  %index.next80 = add nuw i64 %index75, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next80, %n.vec73
  br i1 %i.et, label %middle.block81, label %vector.body74, !llvm.loop !18

middle.block81:                                   ; preds = %vector.body74
  %cmp.n82 = icmp eq i64 %i.dy, %n.vec73
  br i1 %cmp.n82, label %hex_encode.exit53, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %vector.memcheck68, %bb.aa, %middle.block81
  %.020.i50.ph = phi ptr [ %i.dt, %vector.memcheck68 ], [ %i.dt, %bb.aa ], [ %i.eg, %middle.block81 ]
  %.01519.i51.ph = phi ptr [ %6, %vector.memcheck68 ], [ %6, %bb.aa ], [ %i.eh, %middle.block81 ]
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader, %.lr.ph.i49
  %.020.i50 = phi ptr [ %i.fg, %.lr.ph.i49 ], [ %.020.i50.ph, %.lr.ph.i49.preheader ] ; 3 uses
  %.01519.i51 = phi ptr [ %i.fh, %.lr.ph.i49 ], [ %.01519.i51.ph, %.lr.ph.i49.preheader ] ; 2 uses
  %i.eu = load i8, ptr %.01519.i51, align 1       ; 3 uses
  %i.ev = lshr i8 %i.eu, 4                        ; 2 uses
  %i.ew = and i8 %i.eu, 15                        ; 3 uses
  %i.ex = icmp ult i8 %i.eu, -96
  %i.ey = or disjoint i8 %i.ev, 48
  %i.ez = add nuw nsw i8 %i.ev, 87
  %i.fa = select i1 %i.ex, i8 %i.ey, i8 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.020.i50, i64 1
  store i8 %i.fa, ptr %.020.i50, align 1
  %i.fc = icmp samesign ult i8 %i.ew, 10
  %i.fd = or disjoint i8 %i.ew, 48
  %i.fe = add nuw nsw i8 %i.ew, 87
  %i.ff = select i1 %i.fc, i8 %i.fd, i8 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.020.i50, i64 2
  store i8 %i.ff, ptr %i.fb, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.01519.i51, i64 1 ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %i.du
  br i1 %i.fi, label %.lr.ph.i49, label %hex_encode.exit53, !llvm.loop !19

hex_encode.exit53:                                ; preds = %.lr.ph.i49, %middle.block81
  %i.fj = load i32, ptr %i.db, align 8
  %i.fk = add i32 %i.fj, %i.do
  store i32 %i.fk, ptr %i.db, align 8
  call void @appendStringInfoChar(ptr noundef nonnull %i.cz, i8 noundef signext 34) #8
  br label %bb.ab

bb.ab:                                            ; preds = %hex_encode.exit53, %bb.z
  call void @appendStringInfoString(ptr noundef nonnull %i.cz, ptr noundef nonnull @.str.11) #8
  %i.fl = load i32, ptr %i.db, align 8
  %i.fm = icmp sgt i32 %i.fl, 131072
  br i1 %i.fm, label %bb.ac, label %bb.ad

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
  %2 = ptrtoaddr ptr %i.a to i64                  ; 4 uses
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
  %i.u = sext i32 %i.t to i64                     ; 2 uses
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
  %i.ad = call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac) ; 3 uses
  %i.ae = sub i64 %i.ad, %2                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.af = shl i64 %i.ad, 1
  %i.ag = shl i64 %2, 1
  %i.ah = add i64 %i.af, %i.z
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.ae
  %bound0 = icmp ult ptr %i.aa, %i.ak
  %bound1 = icmp ult ptr %i.a, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.al = and i64 %i.ad, 7                        ; 2 uses
  %n.vec = sub i64 %i.ae, %i.al                   ; 3 uses
  %i.am = shl i64 %n.vec, 1
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ap
  %next.gep31 = getelementptr i8, ptr %i.a, i64 %index
  %wide.load = load <8 x i8>, ptr %next.gep31, align 8, !alias.scope !30 ; 3 uses
  %i.aq = lshr <8 x i8> %wide.load, splat (i8 4)  ; 2 uses
  %i.ar = and <8 x i8> %wide.load, splat (i8 15)  ; 3 uses
  %i.as = icmp ult <8 x i8> %wide.load, splat (i8 -96)
  %i.at = or disjoint <8 x i8> %i.aq, splat (i8 48)
  %i.au = add nuw nsw <8 x i8> %i.aq, splat (i8 87)
  %i.av = select <8 x i1> %i.as, <8 x i8> %i.at, <8 x i8> %i.au
  %i.aw = icmp samesign ult <8 x i8> %i.ar, splat (i8 10)
  %i.ax = or disjoint <8 x i8> %i.ar, splat (i8 48)
  %i.ay = add nuw nsw <8 x i8> %i.ar, splat (i8 87)
  %i.az = select <8 x i1> %i.aw, <8 x i8> %i.ax, <8 x i8> %i.ay
  %interleaved.vec = shufflevector <8 x i8> %i.av, <8 x i8> %i.az, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !31, !noalias !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, 0
  br i1 %cmp.n, label %hex_encode.exit.loopexit, label %.lr.ph.i.preheader33

.lr.ph.i.preheader33:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  %.01519.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader33, %.lr.ph.i
  %.020.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %.020.i.ph, %.lr.ph.i.preheader33 ] ; 3 uses
  %.01519.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.01519.i.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %i.bb = load i8, ptr %.01519.i, align 1         ; 3 uses
  %i.bc = lshr i8 %i.bb, 4                        ; 2 uses
  %i.bd = and i8 %i.bb, 15                        ; 3 uses
  %i.be = icmp ult i8 %i.bb, -96
  %i.bf = or disjoint i8 %i.bc, 48
  %i.bg = add nuw nsw i8 %i.bc, 87
  %i.bh = select i1 %i.be, i8 %i.bf, i8 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.bh, ptr %.020.i, align 1
  %i.bj = icmp samesign ult i8 %i.bd, 10
  %i.bk = or disjoint i8 %i.bd, 48
  %i.bl = add nuw nsw i8 %i.bd, 87
  %i.bm = select i1 %i.bj, i8 %i.bk, i8 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.bm, ptr %i.bi, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.01519.i, i64 1 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.x
  br i1 %i.bp, label %.lr.ph.i, label %hex_encode.exit.loopexit, !llvm.loop !29

hex_encode.exit.loopexit:                         ; preds = %.lr.ph.i, %middle.block
  %.pre = load i32, ptr %i.v, align 8
  br label %hex_encode.exit

hex_encode.exit:                                  ; preds = %hex_encode.exit.loopexit, %._crit_edge
  %i.bq = phi i32 [ %.pre, %hex_encode.exit.loopexit ], [ %i.w, %._crit_edge ]
  %i.br = shl i32 %i.t, 1
  %i.bs = add i32 %i.bq, %i.br
  store i32 %i.bs, ptr %i.v, align 8
  call void @appendStringInfoString(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.17) #8
  call fastcc void @flush_manifest(ptr noundef nonnull %0)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = call i32 @close(i32 noundef %i.bu) #8
  %.not27 = icmp eq i32 %i.bv, 0
  br i1 %.not27, label %bb.c, label %bb.b

bb.b:                                             ; preds = %hex_encode.exit
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %0) #8
  call void @exit(i32 noundef 1) #10
  unreachable

bb.c:                                             ; preds = %hex_encode.exit
  store i32 -1, ptr %i.bt, align 8
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
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !6, !7, !8}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !6, !7, !8}
!19 = distinct !{!19, !6, !7}
!20 = !{!11}
!21 = !{!12}
!22 = !{!16}
!23 = !{!17}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !6, !7, !8}
!29 = distinct !{!29, !6, !7}
!30 = !{!26}
!31 = !{!27}
end_hunk_0
