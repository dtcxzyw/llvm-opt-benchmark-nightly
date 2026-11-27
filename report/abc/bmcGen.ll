Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcGen?download=true
inline.NumInlined: 59
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Finished generating %d assignments.  \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"SAT solver time\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define void @Gia_ManMoFindSimulate(ptr nofree noundef captures(none) initializes((840, 844)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @Gia_ManRandomW(i32 noundef 1) #13 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 5 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 6 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.e, align 8, !tbaa !31
  %i.f = mul nsw i32 %.val, %1                    ; 10 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !58
  %.not.i.i = icmp slt i32 %i.g, %i.f
  br i1 %.not.i.i, label %bb.c, label %Vec_WrdGrow.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.i, null
  %i.j = sext i32 %i.f to i64
  %i.k = shl nsw i64 %i.j, 3                      ; 2 uses
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.k) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.k) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  store ptr %i.n, ptr %i.h, align 8, !tbaa !34
  store i32 %i.f, ptr %i.d, align 8, !tbaa !58
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %bb.f, %bb.b
  %i.o = icmp sgt i32 %i.f, 0
  br i1 %i.o, label %.lr.ph.i, label %Vec_WrdFill.exit

.lr.ph.i:                                         ; preds = %Vec_WrdGrow.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = zext nneg i32 %i.f to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.s, i1 false), !tbaa !59
  br label %Vec_WrdFill.exit

Vec_WrdFill.exit:                                 ; preds = %Vec_WrdGrow.exit.i, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.f, ptr %i.t, align 4, !tbaa !60
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.u = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 4 uses
  %i.v = add i32 %i.f, -1
  %or.cond.i.i = icmp ult i32 %i.v, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.f ; 3 uses
  %2 = zext i32 %spec.store.select.i.i to i64
  store i64 %2, ptr %i.u, align 8
  %.not.i.i51 = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i51, label %Vec_WrdStart.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = sext i32 %spec.store.select.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #15
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !34
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.f, ptr %3, align 4, !tbaa !60
  %i.ab = sext i32 %i.f to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ac, i1 false)
  store ptr %i.u, ptr %i.c, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %Vec_WrdStart.exit, %Vec_WrdFill.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val4272 = load i32, ptr %i.af, align 4, !tbaa !62
  %i.ag = icmp sgt i32 %.val4272, 0
  br i1 %i.ag, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.i, %Gia_ManMoSetCi.exit
  %i.ah = phi ptr [ %i.av, %Gia_ManMoSetCi.exit ], [ %i.ae, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_ManMoSetCi.exit ], [ 0, %bb.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val45.val = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val45.val, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !36 ; 2 uses
  %.not37 = icmp eq i32 %i.ak, 0
  br i1 %.not37, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !29 ; 2 uses
  %.val6.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.al = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.am = mul nsw i32 %.val.i, %i.ak
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val6.val.i, i64 %i.an
  %i.ap = icmp sgt i32 %.val.i, 0
  br i1 %i.ap, label %.lr.ph.i52, label %Gia_ManMoSetCi.exit

.lr.ph.i52:                                       ; preds = %bb.j, %.lr.ph.i52
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i52 ], [ 0, %bb.j ] ; 2 uses
  %i.aq = tail call i64 @Gia_ManRandomW(i32 noundef 0) #13
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = load i32, ptr %i.b, align 8, !tbaa !29
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next.i, %i.at
  br i1 %i.au, label %.lr.ph.i52, label %Gia_ManMoSetCi.exit.loopexit, !llvm.loop !39

Gia_ManMoSetCi.exit.loopexit:                     ; preds = %.lr.ph.i52
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !61
  br label %Gia_ManMoSetCi.exit

Gia_ManMoSetCi.exit:                              ; preds = %Gia_ManMoSetCi.exit.loopexit, %bb.j
  %i.av = phi ptr [ %.pre, %Gia_ManMoSetCi.exit.loopexit ], [ %i.ah, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val42 = load i32, ptr %i.aw, align 4, !tbaa !62
  %i.ax = sext i32 %.val42 to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %.lr.ph, %Gia_ManMoSetCi.exit, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !31 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph76, label %.preheader

.lr.ph76:                                         ; preds = %.critedge
  %i.bc = getelementptr i8, ptr %0, i64 32
  %.val43 = load ptr, ptr %i.bc, align 8, !tbaa !63
  %wide.trip.count = zext nneg i32 %i.ba to i64
  br label %bb.k

.preheader:                                       ; preds = %Gia_ManMoSimAnd.exit, %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !38 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %.val41 = load i32, ptr %i.bf, align 4, !tbaa !62 ; 2 uses
  %i.bg = icmp sgt i32 %.val41, 0
  br i1 %i.bg, label %.lr.ph78, label %.critedge2

.lr.ph78:                                         ; preds = %.preheader
  %i.bh = getelementptr i8, ptr %i.be, i64 8
  %.val50.val = load ptr, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr i8, ptr %0, i64 32
  %wide.trip.count91 = zext nneg i32 %.val41 to i64
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph76, %Gia_ManMoSimAnd.exit
  %indvars.iv85 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next86, %Gia_ManMoSimAnd.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %.val43, i64 %indvars.iv85
  %.val48 = load i64, ptr %i.bj, align 4          ; 5 uses
  %i.bk = and i64 %.val48, 2147483648
  %.not.i = icmp ne i64 %i.bk, 0
  %i.bl = and i64 %.val48, 536870911
  %i.bm = icmp eq i64 %i.bl, 536870911
  %narrow.i.not = or i1 %.not.i, %i.bm
  br i1 %narrow.i.not, label %Gia_ManMoSimAnd.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val54.i = load i32, ptr %i.b, align 8, !tbaa !29 ; 12 uses
  %.val55.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.bn = getelementptr i8, ptr %.val55.i, i64 8
  %.val55.val.i = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 3 uses
  %i.bo = trunc i64 %indvars.iv85 to i32          ; 3 uses
  %i.bp = mul i32 %.val54.i, %i.bo
  %i.bq = sext i32 %i.bp to i64                   ; 9 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.val55.val.i, i64 %i.bq ; 18 uses
  %i.bs = trunc i64 %.val48 to i32                ; 2 uses
  %i.bt = and i32 %i.bs, 536870911
  %i.bu = sub i32 %i.bo, %i.bt
  %i.bv = mul i32 %.val54.i, %i.bu
  %i.bw = sext i32 %i.bv to i64                   ; 5 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.val55.val.i, i64 %i.bw ; 18 uses
  %i.by = lshr i64 %.val48, 32
  %i.bz = trunc nuw i64 %i.by to i32
  %i.ca = and i32 %i.bz, 536870911
  %i.cb = sub i32 %i.bo, %i.ca
  %i.cc = mul i32 %.val54.i, %i.cb
  %i.cd = sext i32 %i.cc to i64                   ; 5 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.val55.val.i, i64 %i.cd ; 18 uses
  %i.cf = and i32 %i.bs, 536870912
  %.not.i54 = icmp eq i32 %i.cf, 0
  %i.cg = and i64 %.val48, 2305843009213693952
  %.not48.i = icmp eq i64 %i.cg, 0                ; 2 uses
  %i.ch = icmp sgt i32 %.val54.i, 0               ; 4 uses
  br i1 %.not.i54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not48.i, label %.preheader63.i, label %.preheader65.i

.preheader65.i:                                   ; preds = %bb.m
  br i1 %i.ch, label %.lr.ph.preheader.i, label %Gia_ManMoSimAnd.exit

.lr.ph.preheader.i:                               ; preds = %.preheader65.i
  %wide.trip.count.i = zext nneg i32 %.val54.i to i64 ; 5 uses
  %min.iters.check160 = icmp ult i32 %.val54.i, 8
  br i1 %min.iters.check160, label %.lr.ph.i55.preheader, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.preheader.i
  %i.ci = sub nsw i64 %i.bq, %i.bw
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = add nsw i64 %i.cj, -1
  %diff.check162 = icmp ult i64 %i.ck, 31
  %i.cl = sub nsw i64 %i.bq, %i.cd
  %i.cm = shl nsw i64 %i.cl, 3
  %i.cn = add nsw i64 %i.cm, -1
  %diff.check163 = icmp ult i64 %i.cn, 31
  %conflict.rdx164 = or i1 %diff.check162, %diff.check163
  br i1 %conflict.rdx164, label %.lr.ph.i55.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck161
  %n.vec166 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next173, %vector.body167 ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index168 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load169 = load <2 x i64>, ptr %i.co, align 8, !tbaa !59
  %wide.load170 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !59
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index168 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load171 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !59
  %wide.load172 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !59
  %i.cs = or <2 x i64> %wide.load171, %wide.load169
  %i.ct = or <2 x i64> %wide.load172, %wide.load170
  %i.cu = xor <2 x i64> %i.cs, splat (i64 -1)
  %i.cv = xor <2 x i64> %i.ct, splat (i64 -1)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index168 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x i64> %i.cu, ptr %i.cw, align 8, !tbaa !59
  store <2 x i64> %i.cv, ptr %i.cx, align 8, !tbaa !59
  %index.next173 = add nuw i64 %index168, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.cy, label %middle.block174, label %vector.body167, !llvm.loop !41

middle.block174:                                  ; preds = %vector.body167
  %cmp.n175 = icmp eq i64 %n.vec166, %wide.trip.count.i
  br i1 %cmp.n175, label %Gia_ManMoSimAnd.exit, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %vector.memcheck161, %.lr.ph.preheader.i, %middle.block174
  %indvars.iv.i56.ph = phi i64 [ 0, %vector.memcheck161 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec166, %middle.block174 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i55.prol.loopexit, label %.lr.ph.i55.prol

.lr.ph.i55.prol:                                  ; preds = %.lr.ph.i55.preheader
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i56.ph
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !59
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i56.ph
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !59
  %i.dd = or i64 %i.dc, %i.da
  %i.de = xor i64 %i.dd, -1
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i56.ph
  store i64 %i.de, ptr %i.df, align 8, !tbaa !59
  %indvars.iv.next.i57.prol = or disjoint i64 %indvars.iv.i56.ph, 1
  br label %.lr.ph.i55.prol.loopexit

.lr.ph.i55.prol.loopexit:                         ; preds = %.lr.ph.i55.prol, %.lr.ph.i55.preheader
  %indvars.iv.i56.unr = phi i64 [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader ], [ %indvars.iv.next.i57.prol, %.lr.ph.i55.prol ]
  %i.dg = add nsw i64 %wide.trip.count.i, -1
end_hunk_0
