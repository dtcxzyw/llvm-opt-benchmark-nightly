Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/brin_tuple?download=true
inline.NumInlined: 34
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"brin dtuple\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported byval length: %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"../../../../src/include/access/tupmacs.h\00", align 1
@__func__.fetch_att = private unnamed_addr constant [10 x i8] c"fetch_att\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @brin_form_tuple(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i16 0, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = sext i32 %i.c to i64
  %i.e = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.d) #9 ; 4 uses
  %i.f = load i32, ptr %i.b, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @palloc0_mul(i64 noundef 1, i64 noundef %i.g) #9 ; 4 uses
  %i.i = load i32, ptr %i.b, align 8
  %i.j = add i32 %i.i, 7
  %i.k = sdiv i32 %i.j, 8
  %i.l = sext i32 %i.k to i64
  %i.m = tail call ptr @palloc_mul(i64 noundef 1, i64 noundef %i.l) #9 ; 2 uses
  %i.n = load i32, ptr %i.b, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.o) #9 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph185, label %._crit_edge.thread

.lr.ph185:                                        ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph185, %.loopexit170
  %indvars.iv211 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next212, %.loopexit170 ] ; 5 uses
  %.0138184 = phi i32 [ 0, %.lr.ph185 ], [ %.4, %.loopexit170 ] ; 4 uses
  %.0144183 = phi i32 [ 0, %.lr.ph185 ], [ %.4148, %.loopexit170 ] ; 4 uses
  %.0152181 = phi i1 [ false, %.lr.ph185 ], [ %.2154, %.loopexit170 ]
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %indvars.iv211 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.y = load i8, ptr %i.x, align 1, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.preheader169, label %bb.c

.preheader169:                                    ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv211 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i16, ptr %i.ab, align 8
  %.not206.a = icmp eq i16 %i.ac, 0
  br i1 %.not206.a, label %.loopexit170, label %.lr.ph179

.lr.ph179:                                        ; preds = %.preheader169, %.lr.ph179
  %.0136178 = phi i32 [ %i.ag, %.lr.ph179 ], [ 0, %.preheader169 ]
  %.1145177 = phi i32 [ %i.ad, %.lr.ph179 ], [ %.0144183, %.preheader169 ] ; 2 uses
  %i.ad = add i32 %.1145177, 1                    ; 2 uses
  %i.ae = sext i32 %.1145177 to i64
  %i.af = getelementptr inbounds i8, ptr %i.h, i64 %i.ae
  store i8 1, ptr %i.af, align 1
  %i.ag = add nuw nsw i32 %.0136178, 1            ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = zext i16 %i.ai to i32
  %i.ak = icmp samesign ult i32 %i.ag, %i.aj
  br i1 %i.ak, label %.lr.ph179, label %.loopexit170, !llvm.loop !8

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.am = load i8, ptr %i.al, align 2, !range !5, !noundef !6
  %i.an = trunc nuw i8 %i.am to i1
  %spec.select = select i1 %i.an, i1 true, i1 %.0152181 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not159 = icmp eq ptr %i.ap, null
  br i1 %.not159, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.ap(ptr noundef nonnull %0, i64 noundef %i.ar, ptr noundef %i.at) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv211 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load i16, ptr %i.av, align 8
  %.not205 = icmp eq i16 %i.aw, 0
  br i1 %.not205, label %.loopexit170, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.ay = phi ptr [ %i.av, %.lr.ph ], [ %i.ci, %bb.q ]
  %.1139174 = phi i32 [ %.0138184, %.lr.ph ], [ %.3141, %bb.q ] ; 4 uses
  %.2146173 = phi i32 [ %.0144183, %.lr.ph ], [ %.3147, %bb.q ] ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i16, ptr %i.bf, align 8
  %.not160 = icmp eq i16 %i.bg, -1
  br i1 %.not160, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.bh = inttoptr i64 %i.bb to ptr               ; 3 uses
  %.val = load i8, ptr %i.bh, align 1             ; 2 uses
  %i.bi = icmp eq i8 %.val, 1                     ; 6 uses
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = tail call ptr @detoast_external_attr(ptr noundef nonnull %i.bh) #9 ; 3 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %.val162.pre = load i8, ptr %i.bj, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi ptr [ %i.bj, %bb.h ], [ %i.bh, %bb.g ] ; 2 uses
  %.val162 = phi i8 [ %.val162.pre, %bb.h ], [ %.val, %bb.g ]
  %.0133 = phi i64 [ %i.bk, %bb.h ], [ %i.bb, %bb.g ] ; 5 uses
  %i.bl = and i8 %.val162, 3
  %.not168 = icmp eq i8 %i.bl, 0
  br i1 %.not168, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %.val163 = load i32, ptr %.pre-phi, align 4
  %i.bm = icmp ugt i32 %.val163, 2043
  br i1 %i.bm, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bo = load i8, ptr %i.bn, align 4
  switch i8 %i.bo, label %bb.p [
    i8 120, label %bb.l
    i8 109, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.bp = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 3
  %i.bt = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %i.bv = getelementptr inbounds nuw [100 x i8], ptr %i.bu, i64 %indvars.iv211 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 68
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = load i32, ptr %i.be, align 8
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 85
  %i.cb = load i8, ptr %i.ca, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0129 = phi i8 [ %i.cb, %bb.m ], [ 0, %bb.l ]
  %i.cc = tail call i64 @toast_compress_datum(i64 noundef %.0133, i8 noundef signext %.0129) #9 ; 3 uses
  %.not161 = icmp ne i64 %i.cc, 0                 ; 3 uses
  %brmerge.not = and i1 %i.bi, %.not161
  %.0133.mux = select i1 %.not161, i64 %i.cc, i64 %.0133
  %.mux = or i1 %i.bi, %.not161
  br i1 %brmerge.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @pfree(ptr noundef nonnull %.pre-phi) #9
  br label %.thread

bb.p:                                             ; preds = %bb.n, %bb.k, %bb.j, %bb.i
  %.2135 = phi i64 [ %.0133, %bb.i ], [ %.0133, %bb.j ], [ %.0133, %bb.k ], [ %.0133.mux, %bb.n ] ; 2 uses
  %.2132 = phi i1 [ %i.bi, %bb.i ], [ %i.bi, %bb.j ], [ %i.bi, %bb.k ], [ %.mux, %bb.n ]
  br i1 %.2132, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.o, %bb.p
  %.2135167 = phi i64 [ %i.cc, %bb.o ], [ %.2135, %bb.p ] ; 2 uses
  %i.cd = add i32 %.1139174, 1
  %i.ce = sext i32 %.1139174 to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ce
  store i64 %.2135167, ptr %i.cf, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread, %bb.f
  %.2135167.sink = phi i64 [ %i.bb, %bb.f ], [ %.2135167, %.thread ], [ %.2135, %bb.p ]
  %.3141 = phi i32 [ %.1139174, %bb.f ], [ %i.cd, %.thread ], [ %.1139174, %bb.p ] ; 2 uses
  %i.cg = sext i32 %.2146173 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cg
  store i64 %.2135167.sink, ptr %i.ch, align 8
  %.3147 = add i32 %.2146173, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = zext i16 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %bb.f, label %.loopexit170, !llvm.loop !9

.loopexit170:                                     ; preds = %bb.q, %.lr.ph179, %bb.e, %.preheader169
  %.2154 = phi i1 [ true, %.preheader169 ], [ %spec.select, %bb.e ], [ true, %.lr.ph179 ], [ %spec.select, %bb.q ] ; 2 uses
  %.4148 = phi i32 [ %.0144183, %.preheader169 ], [ %.0144183, %bb.e ], [ %i.ad, %.lr.ph179 ], [ %.3147, %bb.q ]
  %.4 = phi i32 [ %.0138184, %.preheader169 ], [ %.0138184, %bb.e ], [ %.0138184, %.lr.ph179 ], [ %.3141, %bb.q ] ; 3 uses
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.cm = load ptr, ptr %i.q, align 8
  %i.cn = load i32, ptr %i.cm, align 8            ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next212, %i.co
  br i1 %i.cp, label %bb.b, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.loopexit170
  br i1 %.2154, label %bb.r, label %._crit_edge.thread

bb.r:                                             ; preds = %._crit_edge
  %i.cq = shl i32 %i.cn, 1
  %i.cr = add i32 %i.cq, 7
  %i.cs = sdiv i32 %i.cr, 8
  %narrow = add nsw i32 %i.cs, 12
  %i.ct = and i32 %narrow, -8
  %i.cu = sext i32 %i.ct to i64
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.r, %._crit_edge
  %.0138.lcssa230 = phi i32 [ %.4, %bb.r ], [ %.4, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.0152.lcssa229 = phi i1 [ true, %bb.r ], [ false, %._crit_edge ], [ false, %bb.a ]
  %.0143 = phi i64 [ %i.cu, %bb.r ], [ 8, %._crit_edge ], [ 8, %bb.a ] ; 3 uses
  %i.cv = tail call fastcc ptr @brtuple_disk_tupdesc(ptr noundef nonnull %0)
  %i.cw = tail call i64 @heap_compute_data_size(ptr noundef %i.cv, ptr noundef %i.e, ptr noundef %i.h) #9 ; 2 uses
  %i.cx = add nsw i64 %.0143, 7
  %i.cy = add i64 %i.cx, %i.cw
  %i.cz = and i64 %i.cy, -8                       ; 2 uses
  %i.da = tail call ptr @palloc0(i64 noundef %i.cz) #9 ; 4 uses
  store i32 %1, ptr %i.da, align 4
  %i.db = trunc i64 %.0143 to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 8 uses
  store i8 %i.db, ptr %i.dc, align 4
  %i.dd = tail call fastcc ptr @brtuple_disk_tupdesc(ptr noundef nonnull %0)
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %.0143
  call void @heap_fill_tuple(ptr noundef %i.dd, ptr noundef %i.e, ptr noundef %i.h, ptr noundef nonnull %i.de, i64 noundef %i.cw, ptr noundef nonnull %i.a, ptr noundef %i.m) #9
  call void @pfree(ptr noundef %i.e) #9
  call void @pfree(ptr noundef %i.h) #9
  call void @pfree(ptr noundef %i.m) #9
  %i.df = icmp sgt i32 %.0138.lcssa230, 0
  br i1 %i.df, label %.lr.ph192.preheader, label %._crit_edge193

.lr.ph192.preheader:                              ; preds = %._crit_edge.thread
  %wide.trip.count = zext nneg i32 %.0138.lcssa230 to i64
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %.lr.ph192
  %indvars.iv213 = phi i64 [ 0, %.lr.ph192.preheader ], [ %indvars.iv.next214, %.lr.ph192 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv213
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = inttoptr i64 %i.dh to ptr
  call void @pfree(ptr noundef %i.di) #9
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge193, label %.lr.ph192, !llvm.loop !11

._crit_edge193:                                   ; preds = %.lr.ph192, %._crit_edge.thread
  br i1 %.0152.lcssa229, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %._crit_edge193
  %i.dj = load i8, ptr %i.dc, align 4
  %i.dk = or i8 %i.dj, -128                       ; 2 uses
  store i8 %i.dk, ptr %i.dc, align 4
  %i.dl = load ptr, ptr %i.q, align 8
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph198, label %.loopexit

.preheader:                                       ; preds = %bb.x
  %i.do = icmp sgt i32 %i.eb, 0
  br i1 %i.do, label %.lr.ph204, label %.loopexit

.lr.ph198:                                        ; preds = %bb.s, %bb.x
  %i.dp = phi i8 [ %i.dz, %bb.x ], [ %i.dk, %bb.s ]
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %bb.x ], [ 0, %bb.s ] ; 2 uses
  %.0196 = phi i32 [ %.1, %bb.x ], [ 128, %bb.s ] ; 2 uses
  %.0125195 = phi ptr [ %.1126, %bb.x ], [ %i.dc, %bb.s ] ; 2 uses
  %.not158 = icmp eq i32 %.0196, 128
  br i1 %.not158, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph198
  %i.dq = shl i32 %.0196, 1
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph198
  %i.dr = getelementptr inbounds nuw i8, ptr %.0125195, i64 1 ; 2 uses
  store i8 0, ptr %i.dr, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ds = phi i8 [ %i.dp, %bb.t ], [ 0, %bb.u ]   ; 2 uses
  %.1126 = phi ptr [ %.0125195, %bb.t ], [ %i.dr, %bb.u ] ; 3 uses
  %.1 = phi i32 [ %i.dq, %bb.t ], [ 1, %bb.u ]    ; 3 uses
  %i.dt = getelementptr [40 x i8], ptr %2, i64 %indvars.iv216
  %i.du = getelementptr i8, ptr %i.dt, i64 43
  %i.dv = load i8, ptr %i.du, align 1, !range !5, !noundef !6
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = trunc i32 %.1 to i8
  %i.dy = or i8 %i.ds, %i.dx                      ; 2 uses
  store i8 %i.dy, ptr %.1126, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dz = phi i8 [ %i.ds, %bb.v ], [ %i.dy, %bb.w ] ; 2 uses
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %i.ea = load ptr, ptr %i.q, align 8
  %i.eb = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next217, %i.ec
  br i1 %i.ed, label %.lr.ph198, label %.preheader, !llvm.loop !12

.lr.ph204:                                        ; preds = %.preheader, %bb.ac
  %i.ee = phi i8 [ %i.eo, %bb.ac ], [ %i.dz, %.preheader ]
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %bb.ac ], [ 0, %.preheader ] ; 2 uses
  %.2203 = phi i32 [ %.3, %bb.ac ], [ %.1, %.preheader ] ; 2 uses
  %.2127202 = phi ptr [ %.3128, %bb.ac ], [ %.1126, %.preheader ] ; 2 uses
  %.not = icmp eq i32 %.2203, 128
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph204
  %i.ef = shl i32 %.2203, 1
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph204
  %i.eg = getelementptr inbounds nuw i8, ptr %.2127202, i64 1 ; 2 uses
  store i8 0, ptr %i.eg, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eh = phi i8 [ %i.ee, %bb.y ], [ 0, %bb.z ]   ; 2 uses
  %.3128 = phi ptr [ %.2127202, %bb.y ], [ %i.eg, %bb.z ] ; 2 uses
  %.3 = phi i32 [ %i.ef, %bb.y ], [ 1, %bb.z ]    ; 2 uses
  %i.ei = getelementptr [40 x i8], ptr %2, i64 %indvars.iv219
  %i.ej = getelementptr i8, ptr %i.ei, i64 42
  %i.ek = load i8, ptr %i.ej, align 2, !range !5, !noundef !6
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.em = trunc i32 %.3 to i8
  %i.en = or i8 %i.eh, %i.em                      ; 2 uses
  store i8 %i.en, ptr %.3128, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.eo = phi i8 [ %i.eh, %bb.aa ], [ %i.en, %bb.ab ]
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.ep = load ptr, ptr %i.q, align 8
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next220, %i.er
  br i1 %i.es, label %.lr.ph204, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.ac, %bb.s, %.preheader, %._crit_edge193
  %i.et = load i8, ptr %2, align 8, !range !5, !noundef !6
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.loopexit
  %i.ev = load i8, ptr %i.dc, align 4
  %i.ew = or i8 %i.ev, 64
  store i8 %i.ew, ptr %i.dc, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !range !5, !noundef !6
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fa = load i8, ptr %i.dc, align 4
  %i.fb = or i8 %i.fa, 32
  store i8 %i.fb, ptr %i.dc, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i64 %i.cz, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %i.da
}
end_hunk_0
