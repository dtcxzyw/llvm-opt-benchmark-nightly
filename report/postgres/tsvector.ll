Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tsvector?download=true
inline.NumInlined: 25
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StringInfoData = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"word is too long (%d bytes, max %d bytes)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tsvector.c\00", align 1
@__func__.tsvectorin = private unnamed_addr constant [11 x i8] c"tsvectorin\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"string is too long for tsvector (%ld bytes, max %ld bytes)\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"string is too long for tsvector (%d bytes, max %d bytes)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"positions array too long\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid size of tsvector\00", align 1
@__func__.tsvectorrecv = private unnamed_addr constant [13 x i8] c"tsvectorrecv\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"invalid tsvector: lexeme too long\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"invalid tsvector: maximum total lexeme length exceeded\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"unexpected number of tsvector positions\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"position information is misordered\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @compareWordEntryPos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = and i16 %i.a, 16383
  %i.c = load i16, ptr %1, align 2
  %i.d = and i16 %i.c, 16383
  %i.e = tail call i32 @llvm.ucmp.i32.i16(i16 %i.b, i16 %i.d)
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @tsvectorin(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.j = tail call ptr @init_tsvector_parser(ptr noundef %i.g, i32 noundef 0, ptr noundef %i.i) #8 ; 3 uses
  %i.k = tail call ptr @palloc_mul(i64 noundef 24, i64 noundef 64) #8 ; 2 uses
  %i.l = tail call ptr @palloc_mul(i64 noundef 1, i64 noundef 256) #8 ; 3 uses
  %i.m = call zeroext i1 @gettoken_tsvector(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null) #8
  br i1 %i.m, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %bb.a, %bb.l
  %.0112164 = phi ptr [ %.1, %bb.l ], [ %i.k, %bb.a ] ; 2 uses
  %.0113163 = phi i32 [ %.1114, %bb.l ], [ 64, %bb.a ] ; 3 uses
  %.0115162 = phi i32 [ %i.bo, %bb.l ], [ 0, %bb.a ] ; 3 uses
  %.0117161 = phi ptr [ %i.bf, %bb.l ], [ %i.l, %bb.a ] ; 2 uses
  %.0119160 = phi ptr [ %.1120.lcssa, %bb.l ], [ %i.l, %bb.a ] ; 3 uses
  %.0135159 = phi i32 [ %.1136.lcssa, %bb.l ], [ 256, %bb.a ] ; 3 uses
  %i.n = load i32, ptr %i.b, align 4              ; 2 uses
  %i.o = icmp sgt i32 %i.n, 2046
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph166
  %i.p = call zeroext i1 @errsave_start(ptr noundef %i.i, ptr noundef null) #8
  br i1 %i.p, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  %i.q = call i32 @errcode(i32 noundef 261) #8    ; 0 uses
  %i.r = load i32, ptr %i.b, align 4
  %i.s = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, i32 noundef %i.r, i32 noundef 2046) #8 ; 0 uses
  call void @errsave_finish(ptr noundef %i.i, ptr noundef nonnull @.str.1, i32 noundef 215, ptr noundef nonnull @__func__.tsvectorin) #8
  br label %bb.ax

bb.d:                                             ; preds = %.lr.ph166
  %i.t = ptrtoint ptr %.0117161 to i64
  %i.u = ptrtoint ptr %.0119160 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp sgt i64 %i.v, 1048575
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = call zeroext i1 @errsave_start(ptr noundef %i.i, ptr noundef null) #8
  br i1 %i.x, label %bb.f, label %bb.ax

bb.f:                                             ; preds = %bb.e
  %i.y = call i32 @errcode(i32 noundef 261) #8    ; 0 uses
  %i.z = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.2, i64 noundef %i.v, i64 noundef 1048575) #8 ; 0 uses
  call void @errsave_finish(ptr noundef %i.i, ptr noundef nonnull @.str.1, i32 noundef 221, ptr noundef nonnull @__func__.tsvectorin) #8
  br label %bb.ax

bb.g:                                             ; preds = %bb.d
  %.not129 = icmp slt i32 %.0115162, %.0113163
  br i1 %.not129, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = shl i32 %.0113163, 1                    ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 24
  %i.ad = call ptr @repalloc(ptr noundef %.0112164, i64 noundef %i.ac) #8
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i32 [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %.1114 = phi i32 [ %i.aa, %bb.h ], [ %.0113163, %bb.g ]
  %.1 = phi ptr [ %i.ad, %bb.h ], [ %.0112164, %bb.g ] ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = add i64 %i.v, %i.af
  %i.ah = sext i32 %.0135159 to i64
  %.not130152 = icmp slt i64 %i.ag, %i.ah
  br i1 %.not130152, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ai = shl i64 %i.v, 32
  %i.aj = ashr exact i64 %i.ai, 32                ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1120154 = phi ptr [ %i.am, %.lr.ph ], [ %.0119160, %.lr.ph.preheader ]
  %.1136153 = phi i32 [ %i.ak, %.lr.ph ], [ %.0135159, %.lr.ph.preheader ]
  %i.ak = shl i32 %.1136153, 1                    ; 3 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = call ptr @repalloc(ptr noundef %.1120154, i64 noundef %i.al) #8 ; 3 uses
  %i.an = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = add nsw i64 %i.aj, %i.ao
  %.not130 = icmp slt i64 %i.ap, %i.al
  br i1 %.not130, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !4

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.aj
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.1136.lcssa = phi i32 [ %.0135159, %bb.i ], [ %i.ak, %._crit_edge.loopexit ]
  %.1120.lcssa = phi ptr [ %.0119160, %bb.i ], [ %i.am, %._crit_edge.loopexit ] ; 2 uses
  %.1118.lcssa = phi ptr [ %.0117161, %bb.i ], [ %i.aq, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa142 = phi i64 [ %i.v, %bb.i ], [ %i.aj, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.ae, %bb.i ], [ %i.an, %._crit_edge.loopexit ]
  %i.ar = sext i32 %.0115162 to i64
  %i.as = getelementptr inbounds [24 x i8], ptr %.1, i64 %i.ar ; 7 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = shl i32 %.lcssa, 1
  %i.av = and i32 %i.at, 1
  %i.aw = trunc i64 %.lcssa142 to i32
  %i.ax = shl i32 %i.aw, 12
  %.masked = and i32 %i.au, 4094
  %i.ay = or disjoint i32 %.masked, %i.av
  %i.az = or disjoint i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 8
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = load i32, ptr %i.b, align 4
  %i.bc = sext i32 %i.bb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1118.lcssa, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  %i.bd = load i32, ptr %i.b, align 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %.1118.lcssa, i64 %i.be
  %i.bg = load i32, ptr %i.d, align 4
  %.not131 = icmp eq i32 %i.bg, 0
  %i.bh = load i32, ptr %i.as, align 8            ; 2 uses
  br i1 %.not131, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bi = or i32 %i.bh, 1
  store i32 %i.bi, ptr %i.as, align 8
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = load i32, ptr %i.d, align 4
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bl = and i32 %i.bh, -2
  store i32 %i.bl, ptr %i.as, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink184 = phi ptr [ null, %bb.k ], [ %i.bj, %bb.j ]
  %.sink = phi i32 [ 0, %bb.k ], [ %i.bk, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sink184, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 %.sink, ptr %i.bn, align 8
  %i.bo = add i32 %.0115162, 1                    ; 2 uses
  %i.bp = call zeroext i1 @gettoken_tsvector(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null) #8
  br i1 %i.bp, label %.lr.ph166, label %._crit_edge167, !llvm.loop !6

._crit_edge167:                                   ; preds = %bb.l, %bb.a
  %.0119.lcssa = phi ptr [ %i.l, %bb.a ], [ %.1120.lcssa, %bb.l ] ; 4 uses
  %.0115.lcssa = phi i32 [ 0, %bb.a ], [ %i.bo, %bb.l ] ; 4 uses
  %.0112.lcssa = phi ptr [ %i.k, %bb.a ], [ %.1, %bb.l ] ; 8 uses
  call void @close_tsvector_parser(ptr noundef %i.j) #8
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %._crit_edge167
  %i.bq = load i32, ptr %i.i, align 4
  %i.br = icmp eq i32 %i.bq, 468
  br i1 %i.br, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bt = load i8, ptr %i.bs, align 4, !range !7, !noundef !8
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.bv, align 4
  br label %bb.ax

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge167
  %i.bw = icmp sgt i32 %.0115.lcssa, 0
  br i1 %i.bw, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not141 = icmp eq i32 %.0115.lcssa, 1
  br i1 %.not141, label %._crit_edge91.i, label %.lr.ph.preheader.i

._crit_edge91.i:                                  ; preds = %bb.q
  %i.bx = ptrtoint ptr %.0112.lcssa to i64
  br label %._crit_edge.i
end_hunk_0
begin_hunk_1_@tsvectorrecv:bb.a
  %.1126 = phi ptr [ %i.ak, %.lr.ph ], [ %.0137, %.preheader ]
  %.193125 = phi i64 [ %i.aj, %.lr.ph ], [ %.092134, %.preheader ]
  %i.aj = shl i64 %.193125, 1                     ; 4 uses
  %i.ak = tail call ptr @repalloc(ptr noundef %.1126, i64 noundef %i.aj) #8 ; 2 uses
  %.not = icmp ult i64 %i.ag, %i.aj
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.193.lcssa = phi i64 [ %.092134, %.preheader ], [ %i.aj, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.0137, %.preheader ], [ %i.ak, %.lr.ph ] ; 8 uses
  %.not103 = icmp ne i32 %i.x, 0                  ; 2 uses
  %i.al = zext i1 %.not103 to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv152 ; 4 uses
  %i.ao = trunc nuw nsw i64 %i.q to i32
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = or disjoint i32 %i.ap, %i.al
  %i.ar = shl i32 %.090135, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.an, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4 ; 5 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.n, i64 %i.q, i1 false)
  %.not104 = icmp eq i64 %indvars.iv152, 0
  br i1 %.not104, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ay = getelementptr i8, ptr %i.an, i64 -4
  %i.az = load i32, ptr %i.at, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.an, align 4            ; 2 uses
  %i.bd = lshr i32 %i.bc, 12
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = lshr i32 %i.bc, 1
  %i.bh = and i32 %i.bg, 2047
  %i.bi = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.bj = lshr i32 %i.bi, 12
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = lshr i32 %i.bi, 1
  %i.bn = and i32 %i.bm, 2047
  %i.bo = tail call i32 @tsCompareString(ptr noundef nonnull %i.bf, i32 noundef %i.bh, ptr noundef nonnull %i.bl, i32 noundef %i.bn, i1 noundef zeroext false) #8
  %i.bp = icmp slt i32 %i.bo, 1
  %spec.select = select i1 %i.bp, i1 true, i1 %.094133
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.195 = phi i1 [ %.094133, %._crit_edge ], [ %spec.select, %bb.j ] ; 2 uses
  br i1 %.not103, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not105 = icmp eq i64 %i.aa, %i.ac
  br i1 %.not105, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.at, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.aa
  store i8 0, ptr %i.bt, align 1
  %sext = shl i64 %i.ac, 32
  %i.bu = ashr exact i64 %sext, 32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.191 = phi i64 [ %i.bu, %bb.m ], [ %i.aa, %bb.l ] ; 2 uses
  %i.bv = load i32, ptr %i.at, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.191
  store i16 %i.p, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.at, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ca
  %i.cc = load i32, ptr %i.an, align 4            ; 2 uses
  %i.cd = lshr i32 %i.cc, 12
  %i.ce = lshr i32 %i.cc, 1
  %i.cf = and i32 %i.ce, 2047
  %i.cg = add nuw nsw i32 %i.cd, 1
  %narrow106 = add nuw nsw i32 %i.cg, %i.cf
  %i.ch = and i32 %narrow106, 4194302
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.x to i64
  %i.cl = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #8
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %i.ck, align 2
  %exitcond.peel.not = icmp eq i32 %i.x, 1
  br i1 %exitcond.peel.not, label %.loopexit150, label %.peel.next

.peel.next:                                       ; preds = %bb.n, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %i.cn = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #8 ; 2 uses
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  store i16 %i.co, ptr %i.cp, align 2
  %i.cq = and i32 %i.cn, 16383
  %i.cr = getelementptr i8, ptr %i.cp, i64 -2
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = and i16 %i.cs, 16383
  %i.cu = zext nneg i16 %i.ct to i32
  %.not108 = icmp samesign ugt i32 %i.cq, %i.cu
  br i1 %.not108, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %.peel.next
  %i.cv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.o:                                             ; preds = %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit150, label %.peel.next, !llvm.loop !39

.loopexit150:                                     ; preds = %bb.o, %bb.n
  %i.cx = add nuw nsw i64 %i.ae, 2
  %i.cy = add nsw i64 %i.cx, %.191
  br label %bb.p

bb.p:                                             ; preds = %.loopexit150, %bb.k
  %.2.in = phi i64 [ %i.cy, %.loopexit150 ], [ %i.aa, %bb.k ]
  %.2 = trunc i64 %.2.in to i32                   ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge140, label %bb.d, !llvm.loop !41

._crit_edge140:                                   ; preds = %bb.p
  %i.cz = add i32 %narrow, %.2
  %i.da = shl i32 %i.cz, 2
  store i32 %i.da, ptr %.1.lcssa, align 4
  br i1 %.195, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge140
  %i.db = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.de
  tail call void @qsort_arg(ptr noundef nonnull %i.db, i64 noundef %i.de, i64 noundef 4, ptr noundef nonnull @compareentry, ptr noundef nonnull %i.df) #8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge140.thread, %bb.q, %._crit_edge140
  %.0.lcssa167 = phi ptr [ %i.k, %._crit_edge140.thread ], [ %.1.lcssa, %bb.q ], [ %.1.lcssa, %._crit_edge140 ]
  %i.dg = ptrtoint ptr %.0.lcssa167 to i64
  ret i64 %i.dg
}

declare i32 @pq_getmsgint(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pq_getmsgstring(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @compareentry(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = lshr i32 %i.a, 12
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %i.e = lshr i32 %i.a, 1
  %i.f = and i32 %i.e, 2047
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = lshr i32 %i.g, 12
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.k = lshr i32 %i.g, 1
  %i.l = and i32 %i.k, 2047
  %i.m = tail call i32 @tsCompareString(ptr noundef %i.d, i32 noundef %i.f, ptr noundef %i.j, i32 noundef %i.l, i1 noundef zeroext false) #8
  ret i32 %i.m
}

declare void @qsort_arg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #3

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

declare i32 @tsCompareString(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !5, !15, !16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !5, !15}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = !{!25}
!25 = distinct !{!25, !26, !"pq_writeint32: argument 0"}
!26 = distinct !{!26, !"pq_writeint32"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"pq_writeint8: argument 0"}
!29 = distinct !{!29, !"pq_writeint8"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"pq_writeint16: argument 0"}
!32 = distinct !{!32, !"pq_writeint16"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"pq_writeint16: argument 0"}
!35 = distinct !{!35, !"pq_writeint16"}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5, !40}
!40 = !{!"llvm.loop.peeled.count", i32 1}
!41 = distinct !{!41, !5}
end_hunk_1
