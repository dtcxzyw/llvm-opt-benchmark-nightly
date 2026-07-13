inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.cdata_struct = type { ptr, ptr, ptr, ptr, i32, i32, i32 }

@complement.compl_level = internal unnamed_addr global i32 0, align 4
@debug = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"COMPLEMENT\00", align 1
@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"exit COMPLEMENT\00", align 1
@simp_comp.simplify_level = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SIMPCOMP\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"exit SIMPCOMP (new)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"exit SIMPCOMP (compl)\00", align 1
@simplify.simplify_level = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"SIMPLIFY\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"exit SIMPLIFY\00", align 1
@cdata = external local_unnamed_addr global %struct.cdata_struct, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"compl_merge: left %d, right %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s (cl)\0A%s (cr)\0ALeft is\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Result %d\0A\00", align 1
@verbose_debug = external local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [9 x i8] c"Right is\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @complement(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @complement.compl_level, align 4, !tbaa !4 ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @complement.compl_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.c) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @cube, align 8, !tbaa !11
  %i.j = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.i) #8, !inline_history !15
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.l = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.j, ptr noundef %i.k) #8, !inline_history !15
  %i.m = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not97.i = icmp eq ptr %i.m, null
  br i1 %.not97.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.m) #8, !inline_history !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @free(ptr noundef nonnull %0) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.e, ptr noundef %i.e, ptr noundef nonnull %i.g) #8, !inline_history !15
  %i.r = tail call fastcc ptr @compl_cube(ptr noundef %i.q), !inline_history !15
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not96.i = icmp eq ptr %i.s, null
  br i1 %.not96.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.s) #8, !inline_history !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @free(ptr noundef nonnull %0) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

.preheader:                                       ; preds = %bb.g, %bb.k
  %.075.i = phi ptr [ %i.u, %bb.k ], [ %i.f, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr %.075.i, align 8, !tbaa !8 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.075.i, i64 8
  %i.v = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.t, ptr noundef %i.e) #8, !inline_history !15
  %.not94.i = icmp eq i32 %i.v, 0
  br i1 %.not94.i, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load i32, ptr @cube, align 8, !tbaa !11
  %i.x = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.w) #8, !inline_history !15
  %i.y = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not95.i = icmp eq ptr %i.y, null
  br i1 %.not95.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.y) #8, !inline_history !15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @free(ptr noundef nonnull %0) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

bb.o:                                             ; preds = %.preheader
  %i.z = load i32, ptr %i.e, align 4, !tbaa !4
  %i.aa = shl i32 %i.z, 5
  %i.ab = and i32 %i.aa, 32736                    ; 2 uses
  %i.ac = icmp samesign ult i32 %i.ab, 33
  %i.ad = add nsw i32 %i.ab, -32
  %i.ae = lshr exact i32 %i.ad, 3
  %i.af = add nuw nsw i32 %i.ae, 8
  %narrow = select i1 %i.ac, i32 8, i32 %i.af
  %i.ag = zext nneg i32 %narrow to i64
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #9, !inline_history !15
  %i.ai = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.ah, ptr noundef nonnull %i.e) #8, !inline_history !15 ; 13 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  %.not88.i47 = icmp eq ptr %i.aj, null
  br i1 %.not88.i47, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %scevgep63 = getelementptr i8, ptr %i.ai, i64 4
  br label %.lr.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.al = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %.not88.i = icmp eq ptr %i.al, null
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.am = phi ptr [ %i.al, %.loopexit ], [ %i.aj, %.lr.ph.preheader ] ; 4 uses
  %i.an = phi ptr [ %i.ak, %.loopexit ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ap = and i32 %i.ao, 1023                     ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 6 uses
  %1 = add nuw nsw i64 %i.aq, 1
  %2 = icmp ne i32 %i.ap, 0
  %umin68.neg = sext i1 %2 to i64
  %i.ar = add nsw i64 %1, %umin68.neg             ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.not72 = icmp eq i32 %i.ap, 0
  %i.as = select i1 %.not72, i64 0, i64 4         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.as
  %i.at = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.at
  %scevgep65 = getelementptr i8, ptr %i.am, i64 %i.as
  %scevgep66 = getelementptr i8, ptr %i.am, i64 4
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.at
  %bound0 = icmp ult ptr %scevgep, %scevgep67
  %bound1 = icmp ult ptr %scevgep65, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, -8                      ; 3 uses
  %i.au = sub nsw i64 %i.aq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = sub i64 %i.aq, %index                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !4, !alias.scope !17, !noalias !20
  %wide.load69.a = load <4 x i32>, ptr %i.ay, align 4, !tbaa !4, !alias.scope !17, !noalias !20
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  %wide.load70.a = load <4 x i32>, ptr %i.ba, align 4, !tbaa !4, !alias.scope !20
  %wide.load71 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !4, !alias.scope !20
  %i.bc = or <4 x i32> %wide.load70.a, %wide.load
  %i.bd = or <4 x i32> %wide.load71, %wide.load69.a
  store <4 x i32> %i.bc, ptr %i.ax, align 4, !tbaa !4, !alias.scope !17, !noalias !20
  store <4 x i32> %i.bd, ptr %i.ay, align 4, !tbaa !4, !alias.scope !17, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph ], [ %i.au, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = or i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bk = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bk, label %scalar.ph, label %.loopexit, !llvm.loop !25

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.bm = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef %i.ai, ptr noundef %i.bl) #8, !inline_history !15
  %.not89.i = icmp eq i32 %i.bm, 0
  br i1 %.not89.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge
  %i.bn = tail call fastcc ptr @compl_cube(ptr noundef %i.ai), !inline_history !15
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.bp = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.ai, ptr noundef %i.bo, ptr noundef %i.ai) #8, !inline_history !15
  %i.bq = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.bp) #8, !inline_history !15 ; 0 uses
  %.not90.i = icmp eq ptr %i.ai, null
  br i1 %.not90.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ai) #8, !inline_history !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.br = tail call ptr @complement(ptr noundef nonnull %0), !inline_history !15
  %i.bs = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.br, ptr noundef %i.bn) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

bb.s:                                             ; preds = %._crit_edge
  %.not91.i = icmp eq ptr %i.ai, null
  br i1 %.not91.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.ai) #8, !inline_history !15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #8, !inline_history !15
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !26 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bv = load i32, ptr @cube, align 8, !tbaa !11
  %i.bw = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.bv) #8, !inline_history !15
  %i.bx = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not93.i = icmp eq ptr %i.bx, null
  br i1 %.not93.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.bx) #8, !inline_history !15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void @free(ptr noundef nonnull %0) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

bb.y:                                             ; preds = %bb.u
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !28
  %i.bz = icmp eq i32 %i.by, %i.bt
  br i1 %i.bz, label %bb.z, label %compl_special_cases.exit

bb.z:                                             ; preds = %bb.y
  %i.ca = tail call ptr (ptr, ...) @map_cover_to_unate(ptr noundef nonnull %0) #8, !inline_history !15
  %i.cb = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not92.i = icmp eq ptr %i.cb, null
  br i1 %.not92.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.cb) #8, !inline_history !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void @free(ptr noundef nonnull %0) #8, !inline_history !15
  %i.cc = tail call ptr (ptr, ...) @unate_compl(ptr noundef %i.ca) #8, !inline_history !15 ; 2 uses
  %i.cd = tail call ptr (ptr, ...) @map_unate_to_cover(ptr noundef %i.cc) #8, !inline_history !15
  tail call void (ptr, ...) @sf_free(ptr noundef %i.cc) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

compl_special_cases.exit:                         ; preds = %bb.y
  %i.ce = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 33
  %i.cg = add nsw i32 %i.ce, -1
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = and i32 %i.ch, 536870908
  %i.cj = add nuw nsw i32 %i.ci, 8
  %narrow45 = select i1 %i.cf, i32 8, i32 %i.cj
  %i.ck = zext nneg i32 %narrow45 to i64
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.ck) #9
  %i.cm = load i32, ptr @cube, align 8, !tbaa !11
  %i.cn = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.cl, i32 noundef %i.cm) #8 ; 5 uses
  %i.co = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.cp = icmp slt i32 %i.co, 33
  %i.cq = add nsw i32 %i.co, -1
  %i.cr = lshr i32 %i.cq, 3
  %i.cs = and i32 %i.cr, 536870908
  %i.ct = add nuw nsw i32 %i.cs, 8
  %narrow46 = select i1 %i.cp, i32 8, i32 %i.ct
  %i.cu = zext nneg i32 %narrow46 to i64
  %i.cv = tail call noalias ptr @malloc(i64 noundef %i.cu) #9
  %i.cw = load i32, ptr @cube, align 8, !tbaa !11
  %i.cx = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.cv, i32 noundef %i.cw) #8 ; 5 uses
  %i.cy = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef nonnull %0, ptr noundef %i.cn, ptr noundef %i.cx, i32 noundef 1) #8 ; 3 uses
  %i.cz = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.cn, i32 noundef %i.cy) #8
  %i.da = tail call ptr @complement(ptr noundef %i.cz) ; 2 uses
  %i.db = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.cx, i32 noundef %i.cy) #8
  %i.dc = tail call ptr @complement(ptr noundef %i.db) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !29 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !29 ; 2 uses
  %i.dh = mul nsw i32 %i.dg, %i.de
  %i.di = sext i32 %i.dh to i64
  %i.dj = add nsw i32 %i.dg, %i.de
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %0 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = add nsw i64 %i.dq, -3
  %i.ds = mul nsw i64 %i.dr, %i.dk
  %i.dt = icmp slt i64 %i.ds, %i.di
  %. = zext i1 %i.dt to i32
  %i.du = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef nonnull %i.da, ptr noundef nonnull %i.dc, ptr noundef %i.cn, ptr noundef %i.cx, i32 noundef %i.cy, i32 noundef %.)
  %.not38 = icmp eq ptr %i.cn, null
  br i1 %.not38, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %compl_special_cases.exit
  tail call void @free(ptr noundef nonnull %i.cn) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %compl_special_cases.exit
  %.not39 = icmp eq ptr %i.cx, null
  br i1 %.not39, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.cx) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dv = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not40 = icmp eq ptr %i.dv, null
  br i1 %.not40, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.dv) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  tail call void @free(ptr noundef nonnull %0) #8
  br label %compl_special_cases.exit.thread

compl_special_cases.exit.thread:                  ; preds = %bb.r, %bb.ab, %bb.x, %bb.n, %bb.j, %bb.f, %bb.ah
  %.0 = phi ptr [ %i.du, %bb.ah ], [ %i.x, %bb.n ], [ %i.cd, %bb.ab ], [ %i.bw, %bb.x ], [ %i.bs, %bb.r ], [ %i.r, %bb.j ], [ %i.l, %bb.f ] ; 2 uses
  %i.dw = load i32, ptr @debug, align 4, !tbaa !4
  %i.dx = and i32 %i.dw, 1
  %.not41 = icmp eq i32 %i.dx, 0
  br i1 %.not41, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %compl_special_cases.exit.thread
  %i.dy = load i32, ptr @complement.compl_level, align 4, !tbaa !4
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr @complement.compl_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %.0, ptr noundef nonnull @.str.1, i32 noundef %i.dz) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %compl_special_cases.exit.thread
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @debug_print(...) local_unnamed_addr #2

declare ptr @set_clear(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @binate_split_select(...) local_unnamed_addr #2

declare ptr @scofactor(...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @debug1_print(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @simp_comp(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = load i32, ptr @debug, align 4, !tbaa !4
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @simp_comp.simplify_level, align 4, !tbaa !4 ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.g) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !8      ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @cube, align 8, !tbaa !11
  %i.n = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.m) #8, !inline_history !32
  store ptr %i.n, ptr %1, align 8, !tbaa !33
  %i.o = load i32, ptr @cube, align 8, !tbaa !11
  %i.p = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.o) #8, !inline_history !32
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.r = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.p, ptr noundef %i.q) #8, !inline_history !32
  store ptr %i.r, ptr %2, align 8, !tbaa !33
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not136.i = icmp eq ptr %i.s, null
  br i1 %.not136.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.i, ptr noundef %i.i, ptr noundef nonnull %i.k) #8, !inline_history !32 ; 0 uses
  %i.x = load i32, ptr @cube, align 8, !tbaa !11
  %i.y = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.x) #8, !inline_history !32
  %i.z = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.y, ptr noundef %i.i) #8, !inline_history !32
  store ptr %i.z, ptr %1, align 8, !tbaa !33
  %i.aa = tail call fastcc ptr @compl_cube(ptr noundef %i.i), !inline_history !32
  store ptr %i.aa, ptr %2, align 8, !tbaa !33
  %i.ab = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not135.i = icmp eq ptr %i.ab, null
  br i1 %.not135.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

.preheader:                                       ; preds = %bb.e, %bb.g
  %.0111.i = phi ptr [ %i.ad, %bb.g ], [ %i.j, %bb.e ] ; 2 uses
  %i.ac = load ptr, ptr %.0111.i, align 8, !tbaa !8 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %.0111.i, i64 8
  %i.ae = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.ac, ptr noundef %i.i) #8, !inline_history !32
  %.not133.i = icmp eq i32 %i.ae, 0
  br i1 %.not133.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr @cube, align 8, !tbaa !11
  %i.ag = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.af) #8, !inline_history !32
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.ai = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.ag, ptr noundef %i.ah) #8, !inline_history !32
  store ptr %i.ai, ptr %1, align 8, !tbaa !33
  %i.aj = load i32, ptr @cube, align 8, !tbaa !11
  %i.ak = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.aj) #8, !inline_history !32
  store ptr %i.ak, ptr %2, align 8, !tbaa !33
  %i.al = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not134.i = icmp eq ptr %i.al, null
  br i1 %.not134.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

bb.i:                                             ; preds = %.preheader
  %i.am = load i32, ptr %i.i, align 4, !tbaa !4
  %i.an = shl i32 %i.am, 5
  %i.ao = and i32 %i.an, 32736                    ; 2 uses
  %i.ap = icmp samesign ult i32 %i.ao, 33
  %i.aq = add nsw i32 %i.ao, -32
  %i.ar = lshr exact i32 %i.aq, 3
  %i.as = add nuw nsw i32 %i.ar, 8
  %narrow = select i1 %i.ap, i32 8, i32 %i.as
  %i.at = zext nneg i32 %narrow to i64
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #9, !inline_history !32
  %i.av = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.au, ptr noundef nonnull %i.i) #8, !inline_history !32 ; 16 uses
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !8   ; 2 uses
  %.not126.i53 = icmp eq ptr %i.aw, null
  br i1 %.not126.i53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %scevgep78 = getelementptr i8, ptr %i.av, i64 4
  br label %.lr.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ay = load ptr, ptr %i.ba, align 8, !tbaa !8  ; 2 uses
  %.not126.i = icmp eq ptr %i.ay, null
  br i1 %.not126.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.az = phi ptr [ %i.ay, %.loopexit ], [ %i.aw, %.lr.ph.preheader ] ; 4 uses
  %i.ba = phi ptr [ %i.ax, %.loopexit ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bc = and i32 %i.bb, 1023                     ; 3 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 6 uses
  %3 = add nuw nsw i64 %i.bd, 1
  %4 = icmp ne i32 %i.bc, 0
  %umin83.neg = sext i1 %4 to i64
  %i.be = add nsw i64 %3, %umin83.neg             ; 3 uses
  %min.iters.check = icmp ult i64 %i.be, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.not115.a = icmp eq i32 %i.bc, 0
  %i.bf = select i1 %.not115.a, i64 0, i64 4      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.bf
  %i.bg = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.bg
  %scevgep80 = getelementptr i8, ptr %i.az, i64 %i.bf
  %scevgep81 = getelementptr i8, ptr %i.az, i64 4
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.bg
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, -8                      ; 3 uses
  %i.bh = sub nsw i64 %i.bd, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = sub i64 %i.bd, %index                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -12 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bk, align 4, !tbaa !4, !alias.scope !34, !noalias !37
  %wide.load84.a = load <4 x i32>, ptr %i.bl, align 4, !tbaa !4, !alias.scope !34, !noalias !37
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bi ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -12
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -28
  %wide.load85.a = load <4 x i32>, ptr %i.bn, align 4, !tbaa !4, !alias.scope !37
  %wide.load86 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !4, !alias.scope !37
  %i.bp = or <4 x i32> %wide.load85.a, %wide.load
  %i.bq = or <4 x i32> %wide.load86, %wide.load84.a
  store <4 x i32> %i.bp, ptr %i.bk, align 4, !tbaa !4, !alias.scope !34, !noalias !37
  store <4 x i32> %i.bq, ptr %i.bl, align 4, !tbaa !4, !alias.scope !34, !noalias !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph ], [ %i.bh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = or i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bx = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bx, label %scalar.ph, label %.loopexit, !llvm.loop !40

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.bz = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef %i.av, ptr noundef %i.by) #8, !inline_history !32
  %.not127.i = icmp eq i32 %i.bz, 0
  br i1 %.not127.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.ca = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 33
  %i.cc = add nsw i32 %i.ca, -1
  %i.cd = lshr i32 %i.cc, 3
  %i.ce = and i32 %i.cd, 536870908
  %i.cf = add nuw nsw i32 %i.ce, 8
  %narrow52 = select i1 %i.cb, i32 8, i32 %i.cf
  %i.cg = zext nneg i32 %narrow52 to i64
  %i.ch = tail call noalias ptr @malloc(i64 noundef %i.cg) #9, !inline_history !32
  %i.ci = load i32, ptr @cube, align 8, !tbaa !11
  %i.cj = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ch, i32 noundef %i.ci) #8, !inline_history !32 ; 4 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.cl = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.cj, ptr noundef %i.ck, ptr noundef %i.av) #8, !inline_history !32 ; 0 uses
  %i.cm = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef %i.cj) #8, !inline_history !32 ; 0 uses
  %.not128.i = icmp eq ptr %i.cj, null
  br i1 %.not128.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.cj) #8, !inline_history !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @simp_comp(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2), !inline_history !32
  %i.cn = load ptr, ptr %1, align 8, !tbaa !33    ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !41 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !29
  %i.cs = load i32, ptr %i.cn, align 8, !tbaa !42
  %i.ct = mul nsw i32 %i.cs, %i.cr                ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %.idx = shl nsw i64 %i.cu, 2
  %i.cv = getelementptr inbounds i8, ptr %i.cp, i64 %.idx
  %i.cw = icmp sgt i32 %i.ct, 0
  br i1 %i.cw, label %.lr.ph56.preheader, label %._crit_edge57

.lr.ph56.preheader:                               ; preds = %bb.l
  %scevgep93.a = getelementptr i8, ptr %i.av, i64 4
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.loopexit114
  %.0110.i54 = phi ptr [ %i.dw, %.loopexit114 ], [ %i.cp, %.lr.ph56.preheader ] ; 6 uses
  %i.cx = load i32, ptr %.0110.i54, align 4, !tbaa !4
  %i.cy = and i32 %i.cx, 1023                     ; 3 uses
  %i.cz = zext nneg i32 %i.cy to i64              ; 6 uses
  %5 = add nuw nsw i64 %i.cz, 1
  %6 = icmp ne i32 %i.cy, 0
  %umin98.neg = sext i1 %6 to i64
  %i.da = add nsw i64 %5, %umin98.neg             ; 3 uses
  %min.iters.check100 = icmp ult i64 %i.da, 8
  br i1 %min.iters.check100, label %scalar.ph99.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph56
  %.not116 = icmp eq i32 %i.cy, 0
  %i.db = select i1 %.not116, i64 0, i64 4        ; 2 uses
  %scevgep89.a = getelementptr i8, ptr %.0110.i54, i64 %i.db
  %scevgep90.a = getelementptr i8, ptr %.0110.i54, i64 4
  %i.dc = shl nuw nsw i64 %i.cz, 2                ; 2 uses
  %scevgep91.a = getelementptr i8, ptr %scevgep90.a, i64 %i.dc
  %scevgep92 = getelementptr i8, ptr %i.av, i64 %i.db
  %scevgep94 = getelementptr i8, ptr %scevgep93.a, i64 %i.dc
  %bound095 = icmp ult ptr %scevgep89.a, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91.a
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph99.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck87
  %n.vec103 = and i64 %i.da, -8                   ; 3 uses
  %i.dd = sub nsw i64 %i.cz, %n.vec103
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph101
  %index105 = phi i64 [ 0, %vector.ph101 ], [ %index.next110, %vector.body104 ] ; 2 uses
  %i.de = sub i64 %i.cz, %index105                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.0110.i54, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -12 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -28 ; 2 uses
  %wide.load106.a = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4, !alias.scope !43, !noalias !46
  %wide.load107.a = load <4 x i32>, ptr %i.dh, align 4, !tbaa !4, !alias.scope !43, !noalias !46
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.de ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -12
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -28
  %wide.load108 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4, !alias.scope !46
  %wide.load109 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !4, !alias.scope !46
  %i.dl = and <4 x i32> %wide.load108, %wide.load106.a
  %i.dm = and <4 x i32> %wide.load109, %wide.load107.a
  store <4 x i32> %i.dl, ptr %i.dg, align 4, !tbaa !4, !alias.scope !43, !noalias !46
  store <4 x i32> %i.dm, ptr %i.dh, align 4, !tbaa !4, !alias.scope !43, !noalias !46
  %index.next110 = add nuw i64 %index105, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.dn, label %middle.block111, label %vector.body104, !llvm.loop !48

middle.block111:                                  ; preds = %vector.body104
  %cmp.n112 = icmp eq i64 %i.da, %n.vec103
  br i1 %cmp.n112, label %.loopexit114, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %vector.memcheck87, %.lr.ph56, %middle.block111
  %indvars.iv59.ph = phi i64 [ %i.cz, %vector.memcheck87 ], [ %i.cz, %.lr.ph56 ], [ %i.dd, %middle.block111 ]
  br label %scalar.ph99

scalar.ph99:                                      ; preds = %scalar.ph99.preheader, %scalar.ph99
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %scalar.ph99 ], [ %indvars.iv59.ph, %scalar.ph99.preheader ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.0110.i54, i64 %indvars.iv59 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv59
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = and i32 %i.dr, %i.dp
  store i32 %i.ds, ptr %i.do, align 4, !tbaa !4
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1
  %i.dt = icmp samesign ugt i64 %indvars.iv59, 1
  br i1 %i.dt, label %scalar.ph99, label %.loopexit114, !llvm.loop !49

.loopexit114:                                     ; preds = %scalar.ph99, %middle.block111
  %i.du = load i32, ptr %i.cn, align 8, !tbaa !42
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %.0110.i54, i64 %i.dv ; 2 uses
  %i.dx = icmp ult ptr %i.dw, %i.cv
  br i1 %i.dx, label %.lr.ph56, label %._crit_edge57

._crit_edge57:                                    ; preds = %.loopexit114, %bb.l
  %i.dy = load ptr, ptr %2, align 8, !tbaa !33
  %i.dz = tail call fastcc ptr @compl_cube(ptr noundef %i.av), !inline_history !32
  %i.ea = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.dy, ptr noundef %i.dz) #8, !inline_history !32
  store ptr %i.ea, ptr %2, align 8, !tbaa !33
  %.not129.i = icmp eq ptr %i.av, null
  br i1 %.not129.i, label %simp_comp_special_cases.exit.thread, label %simp_comp_special_cases.exit.thread.sink.split

bb.m:                                             ; preds = %._crit_edge
  %.not130.i = icmp eq ptr %i.av, null
  br i1 %.not130.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.av) #8, !inline_history !32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #8, !inline_history !32
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !26 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ed = load i32, ptr @cube, align 8, !tbaa !11
  %i.ee = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.ed) #8, !inline_history !32
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.eg = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.ee, ptr noundef %i.ef) #8, !inline_history !32
  store ptr %i.eg, ptr %1, align 8, !tbaa !33
  %i.eh = load i32, ptr @cube, align 8, !tbaa !11
  %i.ei = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.eh) #8, !inline_history !32
  store ptr %i.ei, ptr %2, align 8, !tbaa !33
  %i.ej = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not132.i = icmp eq ptr %i.ej, null
  br i1 %.not132.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

bb.q:                                             ; preds = %bb.o
  %i.ek = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !28
  %i.el = icmp eq i32 %i.ek, %i.eb
  br i1 %i.el, label %bb.r, label %simp_comp_special_cases.exit

bb.r:                                             ; preds = %bb.q
  %i.em = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8, !inline_history !32
  %i.en = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.em) #8, !inline_history !32
  store ptr %i.en, ptr %1, align 8, !tbaa !33
  %i.eo = tail call ptr (ptr, ...) @map_cover_to_unate(ptr noundef nonnull %0) #8, !inline_history !32
  %i.ep = tail call ptr (ptr, ...) @unate_compl(ptr noundef %i.eo) #8, !inline_history !32 ; 2 uses
  %i.eq = tail call ptr (ptr, ...) @map_unate_to_cover(ptr noundef %i.ep) #8, !inline_history !32
  store ptr %i.eq, ptr %2, align 8, !tbaa !33
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ep) #8, !inline_history !32
  %i.er = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not131.i = icmp eq ptr %i.er, null
  br i1 %.not131.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

simp_comp_special_cases.exit:                     ; preds = %bb.q
  %i.es = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.et = icmp slt i32 %i.es, 33
  %i.eu = add nsw i32 %i.es, -1
  %i.ev = lshr i32 %i.eu, 3
  %i.ew = and i32 %i.ev, 536870908
  %i.ex = add nuw nsw i32 %i.ew, 8
  %narrow50 = select i1 %i.et, i32 8, i32 %i.ex
  %i.ey = zext nneg i32 %narrow50 to i64
  %i.ez = tail call noalias ptr @malloc(i64 noundef %i.ey) #9
  %i.fa = load i32, ptr @cube, align 8, !tbaa !11
  %i.fb = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ez, i32 noundef %i.fa) #8 ; 6 uses
  %i.fc = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 33
  %i.fe = add nsw i32 %i.fc, -1
  %i.ff = lshr i32 %i.fe, 3
  %i.fg = and i32 %i.ff, 536870908
  %i.fh = add nuw nsw i32 %i.fg, 8
  %narrow51 = select i1 %i.fd, i32 8, i32 %i.fh
  %i.fi = zext nneg i32 %narrow51 to i64
  %i.fj = tail call noalias ptr @malloc(i64 noundef %i.fi) #9
  %i.fk = load i32, ptr @cube, align 8, !tbaa !11
  %i.fl = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fj, i32 noundef %i.fk) #8 ; 6 uses
  %i.fm = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef nonnull %0, ptr noundef %i.fb, ptr noundef %i.fl, i32 noundef 1) #8 ; 4 uses
  %i.fn = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.fb, i32 noundef %i.fm) #8
  call void @simp_comp(ptr noundef %i.fn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
  %i.fo = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.fl, i32 noundef %i.fm) #8
  call void @simp_comp(ptr noundef %i.fo, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.fr = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef %i.fp, ptr noundef %i.fq, ptr noundef %i.fb, ptr noundef %i.fl, i32 noundef %i.fm, i32 noundef 0)
  store ptr %i.fr, ptr %1, align 8, !tbaa !33
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ft = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.fu = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef %i.fs, ptr noundef %i.ft, ptr noundef %i.fb, ptr noundef %i.fl, i32 noundef %i.fm, i32 noundef 0)
  store ptr %i.fu, ptr %2, align 8, !tbaa !33
  %i.fv = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !29
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %0 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = add nsw i64 %i.ge, -3
  %i.gg = icmp slt i64 %i.gf, %i.fy
  br i1 %i.gg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %simp_comp_special_cases.exit
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.fv) #8
  %i.gh = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8
  store ptr %i.gh, ptr %1, align 8, !tbaa !33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %simp_comp_special_cases.exit
  %.not45 = icmp eq ptr %i.fb, null
  br i1 %.not45, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.fb) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not46 = icmp eq ptr %i.fl, null
  br i1 %.not46, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.fl) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gi = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not47 = icmp eq ptr %i.gi, null
  br i1 %.not47, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

simp_comp_special_cases.exit.thread.sink.split.sink.split: ; preds = %bb.x, %bb.r, %bb.p, %bb.h, %bb.f, %bb.d
  %.sink77 = phi ptr [ %i.er, %bb.r ], [ %i.ej, %bb.p ], [ %i.al, %bb.h ], [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %i.gi, %bb.x ]
  tail call void @free(ptr noundef nonnull %.sink77) #8
  br label %simp_comp_special_cases.exit.thread.sink.split

simp_comp_special_cases.exit.thread.sink.split:   ; preds = %simp_comp_special_cases.exit.thread.sink.split.sink.split, %bb.x, %bb.r, %bb.p, %._crit_edge57, %bb.h, %bb.f, %bb.d
  %.sink = phi ptr [ %0, %bb.h ], [ %0, %bb.p ], [ %i.av, %._crit_edge57 ], [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.r ], [ %0, %bb.x ], [ %0, %simp_comp_special_cases.exit.thread.sink.split.sink.split ]
  tail call void @free(ptr noundef nonnull %.sink) #8
  br label %simp_comp_special_cases.exit.thread

simp_comp_special_cases.exit.thread:              ; preds = %simp_comp_special_cases.exit.thread.sink.split, %._crit_edge57
  %i.gj = load i32, ptr @debug, align 4, !tbaa !4
  %i.gk = and i32 %i.gj, 1
  %.not48 = icmp eq i32 %i.gk, 0
  br i1 %.not48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %simp_comp_special_cases.exit.thread
  %i.gl = load ptr, ptr %1, align 8, !tbaa !33
  %i.gm = load i32, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %i.gl, ptr noundef nonnull @.str.3, i32 noundef %i.gm) #8
  %i.gn = load ptr, ptr %2, align 8, !tbaa !33
  %i.go = load i32, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %i.gn, ptr noundef nonnull @.str.4, i32 noundef %i.go) #8
  %i.gp = load i32, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  %i.gq = add nsw i32 %i.gp, -1
  store i32 %i.gq, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %simp_comp_special_cases.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @sf_free(...) local_unnamed_addr #2

declare ptr @cubeunlist(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @simplify(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @simplify.simplify_level, align 4, !tbaa !4 ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @simplify.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.c) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @cube, align 8, !tbaa !11
  %i.j = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.i) #8, !inline_history !50 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not120.i = icmp eq ptr %i.k, null
  br i1 %.not120.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr @cube, align 8, !tbaa !11
  %i.p = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.o) #8, !inline_history !50
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.r = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.e, ptr noundef %i.e, ptr noundef %i.q) #8, !inline_history !50
  %i.s = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.p, ptr noundef %i.r) #8, !inline_history !50 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not119.i = icmp eq ptr %i.t, null
  br i1 %.not119.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

.preheader:                                       ; preds = %bb.e, %bb.g
  %.096.i = phi ptr [ %i.v, %bb.g ], [ %i.f, %bb.e ] ; 2 uses
  %i.u = load ptr, ptr %.096.i, align 8, !tbaa !8 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %.096.i, i64 8
  %i.w = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.u, ptr noundef %i.e) #8, !inline_history !50
  %.not117.i = icmp eq i32 %i.w, 0
  br i1 %.not117.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr @cube, align 8, !tbaa !11
  %i.y = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.x) #8, !inline_history !50
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.aa = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.y, ptr noundef %i.z) #8, !inline_history !50 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not118.i = icmp eq ptr %i.ab, null
  br i1 %.not118.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

bb.i:                                             ; preds = %.preheader
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !4
  %i.ad = shl i32 %i.ac, 5
  %i.ae = and i32 %i.ad, 32736                    ; 2 uses
  %i.af = icmp samesign ult i32 %i.ae, 33
  %i.ag = add nsw i32 %i.ae, -32
  %i.ah = lshr exact i32 %i.ag, 3
  %i.ai = add nuw nsw i32 %i.ah, 8
  %narrow = select i1 %i.af, i32 8, i32 %i.ai
  %i.aj = zext nneg i32 %narrow to i64
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #9, !inline_history !50
  %i.al = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.ak, ptr noundef nonnull %i.e) #8, !inline_history !50 ; 16 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  %.not110.i43 = icmp eq ptr %i.am, null
  br i1 %.not110.i43, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %scevgep70 = getelementptr i8, ptr %i.al, i64 4
  br label %.lr.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.an = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ao = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 2 uses
  %.not110.i = icmp eq ptr %i.ao, null
  br i1 %.not110.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.ap = phi ptr [ %i.ao, %.loopexit ], [ %i.am, %.lr.ph.preheader ] ; 4 uses
  %i.aq = phi ptr [ %i.an, %.loopexit ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !4
  %i.as = and i32 %i.ar, 1023                     ; 3 uses
  %i.at = zext nneg i32 %i.as to i64              ; 6 uses
  %1 = add nuw nsw i64 %i.at, 1
  %2 = icmp ne i32 %i.as, 0
  %umin75.neg = sext i1 %2 to i64
  %i.au = add nsw i64 %1, %umin75.neg             ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.not107.a = icmp eq i32 %i.as, 0
  %i.av = select i1 %.not107.a, i64 0, i64 4      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.av
  %i.aw = shl nuw nsw i64 %i.at, 2                ; 2 uses
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.aw
  %scevgep72 = getelementptr i8, ptr %i.ap, i64 %i.av
  %scevgep73 = getelementptr i8, ptr %i.ap, i64 4
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.aw
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %scevgep72, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.ax = sub nsw i64 %i.at, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = sub i64 %i.at, %index                   ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ba, align 4, !tbaa !4, !alias.scope !51, !noalias !54
  %wide.load76.a = load <4 x i32>, ptr %i.bb, align 4, !tbaa !4, !alias.scope !51, !noalias !54
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ay ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -12
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -28
  %wide.load77.a = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4, !alias.scope !54
  %wide.load78 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4, !alias.scope !54
  %i.bf = or <4 x i32> %wide.load77.a, %wide.load
  %i.bg = or <4 x i32> %wide.load78, %wide.load76.a
  store <4 x i32> %i.bf, ptr %i.ba, align 4, !tbaa !4, !alias.scope !51, !noalias !54
  store <4 x i32> %i.bg, ptr %i.bb, align 4, !tbaa !4, !alias.scope !51, !noalias !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph ], [ %i.ax, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = or i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bi, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bn = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bn, label %scalar.ph, label %.loopexit, !llvm.loop !57

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.bp = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef %i.al, ptr noundef %i.bo) #8, !inline_history !50
  %.not111.i = icmp eq i32 %i.bp, 0
  br i1 %.not111.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.bq = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 33
  %i.bs = add nsw i32 %i.bq, -1
  %i.bt = lshr i32 %i.bs, 3
  %i.bu = and i32 %i.bt, 536870908
  %i.bv = add nuw nsw i32 %i.bu, 8
  %narrow42 = select i1 %i.br, i32 8, i32 %i.bv
  %i.bw = zext nneg i32 %narrow42 to i64
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bw) #9, !inline_history !50
  %i.by = load i32, ptr @cube, align 8, !tbaa !11
  %i.bz = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.bx, i32 noundef %i.by) #8, !inline_history !50 ; 4 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.cb = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef %i.al) #8, !inline_history !50 ; 0 uses
  %i.cc = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.bz) #8, !inline_history !50 ; 0 uses
  %.not112.i = icmp eq ptr %i.bz, null
  br i1 %.not112.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.bz) #8, !inline_history !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cd = tail call ptr @simplify(ptr noundef nonnull %0), !inline_history !50 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !29
  %i.ci = load i32, ptr %i.cd, align 8, !tbaa !42
  %i.cj = mul nsw i32 %i.ci, %i.ch                ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %.idx = shl nsw i64 %i.ck, 2
  %i.cl = getelementptr inbounds i8, ptr %i.cf, i64 %.idx
  %i.cm = icmp sgt i32 %i.cj, 0
  br i1 %i.cm, label %.lr.ph46.preheader, label %._crit_edge47

.lr.ph46.preheader:                               ; preds = %bb.l
  %scevgep85.a = getelementptr i8, ptr %i.al, i64 4
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.loopexit106
  %.095.i44 = phi ptr [ %i.dm, %.loopexit106 ], [ %i.cf, %.lr.ph46.preheader ] ; 6 uses
  %i.cn = load i32, ptr %.095.i44, align 4, !tbaa !4
  %i.co = and i32 %i.cn, 1023                     ; 3 uses
  %i.cp = zext nneg i32 %i.co to i64              ; 6 uses
  %3 = add nuw nsw i64 %i.cp, 1
  %4 = icmp ne i32 %i.co, 0
  %umin90.neg = sext i1 %4 to i64
  %i.cq = add nsw i64 %3, %umin90.neg             ; 3 uses
  %min.iters.check92 = icmp ult i64 %i.cq, 8
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph46
  %.not108 = icmp eq i32 %i.co, 0
  %i.cr = select i1 %.not108, i64 0, i64 4        ; 2 uses
  %scevgep81.a = getelementptr i8, ptr %.095.i44, i64 %i.cr
  %scevgep82.a = getelementptr i8, ptr %.095.i44, i64 4
  %i.cs = shl nuw nsw i64 %i.cp, 2                ; 2 uses
  %scevgep83.a = getelementptr i8, ptr %scevgep82.a, i64 %i.cs
  %scevgep84 = getelementptr i8, ptr %i.al, i64 %i.cr
  %scevgep86 = getelementptr i8, ptr %scevgep85.a, i64 %i.cs
  %bound087 = icmp ult ptr %scevgep81.a, %scevgep86
  %bound188 = icmp ult ptr %scevgep84, %scevgep83.a
  %found.conflict89 = and i1 %bound087, %bound188
  br i1 %found.conflict89, label %scalar.ph91.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck79
  %n.vec95 = and i64 %i.cq, -8                    ; 3 uses
  %i.ct = sub nsw i64 %i.cp, %n.vec95
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph93
  %index97 = phi i64 [ 0, %vector.ph93 ], [ %index.next102, %vector.body96 ] ; 2 uses
  %i.cu = sub i64 %i.cp, %index97                 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.095.i44, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -12 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -28 ; 2 uses
  %wide.load98.a = load <4 x i32>, ptr %i.cw, align 4, !tbaa !4, !alias.scope !58, !noalias !61
  %wide.load99.a = load <4 x i32>, ptr %i.cx, align 4, !tbaa !4, !alias.scope !58, !noalias !61
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cu ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -12
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -28
  %wide.load100 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !4, !alias.scope !61
  %wide.load101 = load <4 x i32>, ptr %i.da, align 4, !tbaa !4, !alias.scope !61
  %i.db = and <4 x i32> %wide.load100, %wide.load98.a
  %i.dc = and <4 x i32> %wide.load101, %wide.load99.a
  store <4 x i32> %i.db, ptr %i.cw, align 4, !tbaa !4, !alias.scope !58, !noalias !61
  store <4 x i32> %i.dc, ptr %i.cx, align 4, !tbaa !4, !alias.scope !58, !noalias !61
  %index.next102 = add nuw i64 %index97, 8        ; 2 uses
  %i.dd = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.dd, label %middle.block103, label %vector.body96, !llvm.loop !63

middle.block103:                                  ; preds = %vector.body96
  %cmp.n104 = icmp eq i64 %i.cq, %n.vec95
  br i1 %cmp.n104, label %.loopexit106, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %vector.memcheck79, %.lr.ph46, %middle.block103
  %indvars.iv49.ph = phi i64 [ %i.cp, %vector.memcheck79 ], [ %i.cp, %.lr.ph46 ], [ %i.ct, %middle.block103 ]
  br label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.preheader, %scalar.ph91
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %scalar.ph91 ], [ %indvars.iv49.ph, %scalar.ph91.preheader ] ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.095.i44, i64 %indvars.iv49 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv49
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = and i32 %i.dh, %i.df
  store i32 %i.di, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, -1
  %i.dj = icmp samesign ugt i64 %indvars.iv49, 1
  br i1 %i.dj, label %scalar.ph91, label %.loopexit106, !llvm.loop !64

.loopexit106:                                     ; preds = %scalar.ph91, %middle.block103
  %i.dk = load i32, ptr %i.cd, align 8, !tbaa !42
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %.095.i44, i64 %i.dl ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %i.cl
  br i1 %i.dn, label %.lr.ph46, label %simplify_special_cases.exit.thread.sink.split

._crit_edge47:                                    ; preds = %bb.l
  %.not113.i = icmp eq ptr %i.al, null
  br i1 %.not113.i, label %simplify_special_cases.exit.thread, label %simplify_special_cases.exit.thread.sink.split

bb.m:                                             ; preds = %._crit_edge
  %.not114.i = icmp eq ptr %i.al, null
  br i1 %.not114.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.al) #8, !inline_history !50
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #8, !inline_history !50
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !26 ; 2 uses
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dq = load i32, ptr @cube, align 8, !tbaa !11
  %i.dr = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.dq) #8, !inline_history !50
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.dt = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.dr, ptr noundef %i.ds) #8, !inline_history !50 ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not116.i = icmp eq ptr %i.du, null
  br i1 %.not116.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

bb.q:                                             ; preds = %bb.o
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !28
  %i.dw = icmp eq i32 %i.dv, %i.do
  br i1 %i.dw, label %bb.r, label %simplify_special_cases.exit

bb.r:                                             ; preds = %bb.q
  %i.dx = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8, !inline_history !50
  %i.dy = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.dx) #8, !inline_history !50 ; 2 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not115.i = icmp eq ptr %i.dz, null
  br i1 %.not115.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

simplify_special_cases.exit:                      ; preds = %bb.q
  %i.ea = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 33
  %i.ec = add nsw i32 %i.ea, -1
  %i.ed = lshr i32 %i.ec, 3
  %i.ee = and i32 %i.ed, 536870908
  %i.ef = add nuw nsw i32 %i.ee, 8
  %narrow40 = select i1 %i.eb, i32 8, i32 %i.ef
  %i.eg = zext nneg i32 %narrow40 to i64
  %i.eh = tail call noalias ptr @malloc(i64 noundef %i.eg) #9
  %i.ei = load i32, ptr @cube, align 8, !tbaa !11
  %i.ej = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.eh, i32 noundef %i.ei) #8 ; 5 uses
  %i.ek = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.el = icmp slt i32 %i.ek, 33
  %i.em = add nsw i32 %i.ek, -1
  %i.en = lshr i32 %i.em, 3
  %i.eo = and i32 %i.en, 536870908
  %i.ep = add nuw nsw i32 %i.eo, 8
  %narrow41 = select i1 %i.el, i32 8, i32 %i.ep
  %i.eq = zext nneg i32 %narrow41 to i64
  %i.er = tail call noalias ptr @malloc(i64 noundef %i.eq) #9
  %i.es = load i32, ptr @cube, align 8, !tbaa !11
  %i.et = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.er, i32 noundef %i.es) #8 ; 5 uses
  %i.eu = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef nonnull %0, ptr noundef %i.ej, ptr noundef %i.et, i32 noundef 1) #8 ; 3 uses
  %i.ev = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.ej, i32 noundef %i.eu) #8
  %i.ew = tail call ptr @simplify(ptr noundef %i.ev)
  %i.ex = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.et, i32 noundef %i.eu) #8
  %i.ey = tail call ptr @simplify(ptr noundef %i.ex)
  %i.ez = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef %i.ew, ptr noundef %i.ey, ptr noundef %i.ej, ptr noundef %i.et, i32 noundef %i.eu, i32 noundef 0) ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !29
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !8
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %0 to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = add nsw i64 %i.fi, -3
  %i.fk = icmp slt i64 %i.fj, %i.fc
  br i1 %i.fk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %simplify_special_cases.exit
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.ez) #8
  %i.fl = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %simplify_special_cases.exit
  %.0 = phi ptr [ %i.fl, %bb.s ], [ %i.ez, %simplify_special_cases.exit ] ; 2 uses
  %.not33 = icmp eq ptr %i.ej, null
  br i1 %.not33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.ej) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not34 = icmp eq ptr %i.et, null
  br i1 %.not34, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.et) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fm = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not35 = icmp eq ptr %i.fm, null
  br i1 %.not35, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

simplify_special_cases.exit.thread.sink.split.sink.split: ; preds = %bb.x, %bb.r, %bb.p, %bb.h, %bb.f, %bb.d
  %.sink69 = phi ptr [ %i.dz, %bb.r ], [ %i.du, %bb.p ], [ %i.ab, %bb.h ], [ %i.t, %bb.f ], [ %i.k, %bb.d ], [ %i.fm, %bb.x ]
  %.1.ph.ph = phi ptr [ %i.dy, %bb.r ], [ %i.dt, %bb.p ], [ %i.aa, %bb.h ], [ %i.s, %bb.f ], [ %i.j, %bb.d ], [ %.0, %bb.x ]
  tail call void @free(ptr noundef nonnull %.sink69) #8
  br label %simplify_special_cases.exit.thread.sink.split

simplify_special_cases.exit.thread.sink.split:    ; preds = %.loopexit106, %simplify_special_cases.exit.thread.sink.split.sink.split, %bb.x, %bb.r, %bb.p, %._crit_edge47, %bb.h, %bb.f, %bb.d
  %.sink = phi ptr [ %0, %bb.h ], [ %0, %bb.p ], [ %i.al, %._crit_edge47 ], [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.r ], [ %0, %bb.x ], [ %0, %simplify_special_cases.exit.thread.sink.split.sink.split ], [ %i.al, %.loopexit106 ]
  %.1.ph = phi ptr [ %i.aa, %bb.h ], [ %i.dt, %bb.p ], [ %i.cd, %._crit_edge47 ], [ %i.s, %bb.f ], [ %i.j, %bb.d ], [ %i.dy, %bb.r ], [ %.0, %bb.x ], [ %.1.ph.ph, %simplify_special_cases.exit.thread.sink.split.sink.split ], [ %i.cd, %.loopexit106 ]
  tail call void @free(ptr noundef nonnull %.sink) #8
  br label %simplify_special_cases.exit.thread

simplify_special_cases.exit.thread:               ; preds = %simplify_special_cases.exit.thread.sink.split, %._crit_edge47
  %.1 = phi ptr [ %i.cd, %._crit_edge47 ], [ %.1.ph, %simplify_special_cases.exit.thread.sink.split ] ; 2 uses
  %i.fn = load i32, ptr @debug, align 4, !tbaa !4
  %i.fo = and i32 %i.fn, 1
  %.not36 = icmp eq i32 %i.fo, 0
  br i1 %.not36, label %bb.z, label %bb.y

bb.y:                                             ; preds = %simplify_special_cases.exit.thread
  %i.fp = load i32, ptr @simplify.simplify_level, align 4, !tbaa !4
  %i.fq = add nsw i32 %i.fp, -1                   ; 2 uses
  store i32 %i.fq, ptr @simplify.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %.1, ptr noundef nonnull @.str.6, i32 noundef %i.fq) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %simplify_special_cases.exit.thread
  ret ptr %.1
}

declare ptr @sf_addset(...) local_unnamed_addr #2

declare ptr @sf_new(...) local_unnamed_addr #2

declare ptr @set_or(...) local_unnamed_addr #2

declare i32 @full_row(...) local_unnamed_addr #2

declare ptr @set_copy(...) local_unnamed_addr #2

declare i32 @setp_equal(...) local_unnamed_addr #2

declare ptr @set_diff(...) local_unnamed_addr #2

declare ptr @sf_append(...) local_unnamed_addr #2

declare void @massive_count(...) local_unnamed_addr #2

declare ptr @map_cover_to_unate(...) local_unnamed_addr #2

declare ptr @unate_compl(...) local_unnamed_addr #2

declare ptr @map_unate_to_cover(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compl_cube(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 9 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16 ; 6 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !66
  %i.h = load i32, ptr @cube, align 8, !tbaa !11
  %i.i = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.g, i32 noundef %i.h) #8 ; 4 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.k = and i32 %i.j, 1023
  %i.l = load i32, ptr %i.c, align 4, !tbaa !4
  %i.m = and i32 %i.l, -1024
  %i.n = or disjoint i32 %i.m, %i.k
  store i32 %i.n, ptr %i.c, align 4, !tbaa !4
  %i.o = and i32 %i.j, 1023                       ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 5 uses
  %1 = add nuw nsw i64 %i.p, 1
  %2 = icmp ne i32 %i.o, 0
  %umin.neg = sext i1 %2 to i64
  %i.q = add nsw i64 %1, %umin.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.r = ptrtoaddr ptr %0 to i64
  %i.s = sub i64 %i.d, %i.f
  %diff.check = icmp ugt i64 %i.s, -32
  %i.t = sub i64 %i.d, %i.r
  %diff.check44 = icmp ugt i64 %i.t, -32
  %conflict.rdx = or i1 %diff.check, %diff.check44
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, -8                       ; 3 uses
  %i.u = sub nsw i64 %i.p, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = sub i64 %i.p, %index                     ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -12
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -28
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !4
  %wide.load45 = load <4 x i32>, ptr %i.y, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  %wide.load46 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %wide.load47 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !4
  %i.ac = xor <4 x i32> %wide.load46, splat (i32 -1)
  %i.ad = xor <4 x i32> %wide.load47, splat (i32 -1)
  %i.ae = and <4 x i32> %wide.load, %i.ac
  %i.af = and <4 x i32> %wide.load45, %i.ad
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -12
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -28
  store <4 x i32> %i.ae, ptr %i.ah, align 4, !tbaa !4
  store <4 x i32> %i.af, ptr %i.ai, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %bb.a ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = xor i32 %i.an, -1
  %i.ap = and i32 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ar = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ar, label %scalar.ph, label %.preheader, !llvm.loop !68

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !66
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv41 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42, %.loopexit ] ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv41
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8  ; 4 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef nonnull %i.c, ptr noundef %i.ay) #8
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !41 ; 2 uses
  %i.bc = load i32, ptr %i.i, align 8, !tbaa !42
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !29 ; 2 uses
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.av, align 4, !tbaa !29
  %i.bf = mul nsw i32 %i.bd, %i.bc
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bg ; 4 uses
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.bj = and i32 %i.bi, 1023
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bl = and i32 %i.bk, -1024
  %i.bm = or disjoint i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !4
  %i.bn = and i32 %i.bi, 1023                     ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64              ; 5 uses
  %3 = add nuw nsw i64 %i.bo, 1
  %4 = icmp ne i32 %i.bn, 0
  %umin54.neg = sext i1 %4 to i64
  %i.bp = add nsw i64 %3, %umin54.neg             ; 3 uses
  %min.iters.check56 = icmp ult i64 %i.bp, 8
  br i1 %min.iters.check56, label %scalar.ph55.preheader, label %vector.memcheck48

vector.memcheck48:                                ; preds = %bb.c
  %i.bq = ptrtoaddr ptr %i.bb to i64              ; 3 uses
  %i.br = shl nsw i64 %i.bg, 2                    ; 3 uses
  %i.bs = add i64 %i.br, %i.bq
  %i.bt = sub i64 %i.bs, %i.d
  %diff.check49 = icmp ugt i64 %i.bt, -32
  %i.bu = add i64 %i.br, %i.bq
  %i.bv = sub i64 %i.bu, %i.az
  %diff.check50 = icmp ugt i64 %i.bv, -32
  %conflict.rdx51 = or i1 %diff.check49, %diff.check50
  %i.bw = add i64 %i.br, %i.bq
  %i.bx = sub i64 %i.bw, %i.f
  %diff.check52 = icmp ugt i64 %i.bx, -32
  %conflict.rdx53 = or i1 %conflict.rdx51, %diff.check52
  br i1 %conflict.rdx53, label %scalar.ph55.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck48
  %n.vec59 = and i64 %i.bp, -8                    ; 3 uses
  %i.by = sub nsw i64 %i.bo, %n.vec59
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph57
  %index61 = phi i64 [ 0, %vector.ph57 ], [ %index.next75, %vector.body60 ] ; 2 uses
  %i.bz = sub i64 %i.bo, %index61                 ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -28
  %wide.load62.a = load <4 x i32>, ptr %i.cb, align 4, !tbaa !4
  %wide.load63 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bz ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -12
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -28
  %wide.load65.a = load <4 x i32>, ptr %i.ce, align 4, !tbaa !4 ; 2 uses
  %wide.load66 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !4 ; 2 uses
  %i.cg = and <4 x i32> %wide.load65.a, %wide.load62.a
  %i.ch = and <4 x i32> %wide.load66, %wide.load63
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bz ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -12
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -28
  %wide.load69.a = load <4 x i32>, ptr %i.cj, align 4, !tbaa !4
  %wide.load70 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !4
  %i.cl = xor <4 x i32> %wide.load65.a, splat (i32 -1)
  %i.cm = xor <4 x i32> %wide.load66, splat (i32 -1)
  %i.cn = and <4 x i32> %wide.load69.a, %i.cl
  %i.co = and <4 x i32> %wide.load70, %i.cm
  %i.cp = or <4 x i32> %i.cn, %i.cg
  %i.cq = or <4 x i32> %i.co, %i.ch
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bz ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -12
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -28
  store <4 x i32> %i.cp, ptr %i.cs, align 4, !tbaa !4
  store <4 x i32> %i.cq, ptr %i.ct, align 4, !tbaa !4
  %index.next75 = add nuw i64 %index61, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next75, %n.vec59
  br i1 %i.cu, label %middle.block76, label %vector.body60, !llvm.loop !70

middle.block76:                                   ; preds = %vector.body60
  %cmp.n77 = icmp eq i64 %i.bp, %n.vec59
  br i1 %cmp.n77, label %.loopexit, label %scalar.ph55.preheader

scalar.ph55.preheader:                            ; preds = %vector.memcheck48, %bb.c, %middle.block76
  %indvars.iv38.ph = phi i64 [ %i.bo, %vector.memcheck48 ], [ %i.bo, %bb.c ], [ %i.by, %middle.block76 ]
  br label %scalar.ph55

scalar.ph55:                                      ; preds = %scalar.ph55.preheader, %scalar.ph55
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %scalar.ph55 ], [ %indvars.iv38.ph, %scalar.ph55.preheader ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv38
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv38
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4  ; 2 uses
  %i.cz = and i32 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv38
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = xor i32 %i.cy, -1
  %i.dd = and i32 %i.db, %i.dc
  %i.de = or i32 %i.dd, %i.cz
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv38
  store i32 %i.de, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1
  %i.dg = icmp samesign ugt i64 %indvars.iv38, 1
  br i1 %i.dg, label %scalar.ph55, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %scalar.ph55, %middle.block76, %bb.b
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !66
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next42, %i.di
  br i1 %i.dj, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret ptr %i.i
}

declare i32 @setp_disjoint(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compl_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.d, i32 noundef %i.f) ; 0 uses
  %i.h = tail call ptr (ptr, ...) @pc1(ptr noundef %3) #8
  %i.i = tail call ptr (ptr, ...) @pc2(ptr noundef %4) #8
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.h, ptr noundef %i.i) ; 0 uses
  tail call void (ptr, ...) @cprint(ptr noundef %1) #8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void (ptr, ...) @cprint(ptr noundef %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !29
  %i.o = load i32, ptr %1, align 8, !tbaa !42
  %i.p = mul nsw i32 %i.o, %i.n                   ; 2 uses
  %i.q = sext i32 %i.p to i64
  %.idx = shl nsw i64 %i.q, 2
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %.idx
  %i.s = icmp sgt i32 %i.p, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %scevgep212 = getelementptr i8, ptr %3, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit363
  %.0129164 = phi ptr [ %i.au, %.loopexit363 ], [ %i.l, %.lr.ph.preheader ] ; 8 uses
  %i.t = load i32, ptr %.0129164, align 4, !tbaa !4
  %i.u = and i32 %i.t, 1023                       ; 3 uses
  %i.v = zext nneg i32 %i.u to i64                ; 6 uses
  %7 = add nuw nsw i64 %i.v, 1
  %8 = icmp ne i32 %i.u, 0
  %umin214.neg = sext i1 %8 to i64
  %i.w = add nsw i64 %7, %umin214.neg             ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.not364 = icmp eq i32 %i.u, 0
  %i.x = select i1 %.not364, i64 0, i64 4         ; 2 uses
  %scevgep = getelementptr i8, ptr %.0129164, i64 %i.x
  %scevgep209 = getelementptr i8, ptr %.0129164, i64 4
  %i.y = shl nuw nsw i64 %i.v, 2                  ; 2 uses
  %scevgep210 = getelementptr i8, ptr %scevgep209, i64 %i.y
  %scevgep211 = getelementptr i8, ptr %3, i64 %i.x
  %scevgep213 = getelementptr i8, ptr %scevgep212, i64 %i.y
  %bound0 = icmp ult ptr %scevgep, %scevgep213
  %bound1 = icmp ult ptr %scevgep211, %scevgep210
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, -8                       ; 3 uses
  %i.z = sub nsw i64 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = sub i64 %i.v, %index                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0129164, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !4, !alias.scope !72, !noalias !75
  %wide.load215.a = load <4 x i32>, ptr %i.ad, align 4, !tbaa !4, !alias.scope !72, !noalias !75
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -12
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -28
  %wide.load216.a = load <4 x i32>, ptr %i.af, align 4, !tbaa !4, !alias.scope !75
  %wide.load217 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !4, !alias.scope !75
  %i.ah = and <4 x i32> %wide.load216.a, %wide.load
  %i.ai = and <4 x i32> %wide.load217, %wide.load215.a
  store <4 x i32> %i.ah, ptr %i.ac, align 4, !tbaa !4, !alias.scope !72, !noalias !75
  store <4 x i32> %i.ai, ptr %i.ad, align 4, !tbaa !4, !alias.scope !72, !noalias !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit363, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph ], [ %i.z, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0129164, i64 %indvars.iv ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = and i32 %i.an, %i.al
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ap = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ap, label %scalar.ph, label %.loopexit363, !llvm.loop !78

.loopexit363:                                     ; preds = %scalar.ph, %middle.block
  %i.aq = load i32, ptr %.0129164, align 4, !tbaa !4
  %i.ar = or i32 %i.aq, 8192
  store i32 %i.ar, ptr %.0129164, align 4, !tbaa !4
  %i.as = load i32, ptr %1, align 8, !tbaa !42
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.0129164, i64 %i.at ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.r
  br i1 %i.av, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit363, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.ba = load i32, ptr %2, align 8, !tbaa !42
  %i.bb = mul nsw i32 %i.ba, %i.az                ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %.idx179 = shl nsw i64 %i.bc, 2
  %i.bd = getelementptr inbounds i8, ptr %i.ax, i64 %.idx179
  %i.be = icmp sgt i32 %i.bb, 0
  br i1 %i.be, label %.lr.ph167.preheader, label %._crit_edge168

.lr.ph167.preheader:                              ; preds = %._crit_edge
  %scevgep224.a = getelementptr i8, ptr %4, i64 4
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.loopexit362
  %.1165 = phi ptr [ %i.cg, %.loopexit362 ], [ %i.ax, %.lr.ph167.preheader ] ; 8 uses
  %i.bf = load i32, ptr %.1165, align 4, !tbaa !4
  %i.bg = and i32 %i.bf, 1023                     ; 3 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 6 uses
  %9 = add nuw nsw i64 %i.bh, 1
  %10 = icmp ne i32 %i.bg, 0
  %umin229.neg = sext i1 %10 to i64
  %i.bi = add nsw i64 %9, %umin229.neg            ; 3 uses
  %min.iters.check231 = icmp ult i64 %i.bi, 8
  br i1 %min.iters.check231, label %scalar.ph230.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph167
  %.not365.a = icmp eq i32 %i.bg, 0
  %i.bj = select i1 %.not365.a, i64 0, i64 4      ; 2 uses
  %scevgep220.a = getelementptr i8, ptr %.1165, i64 %i.bj
  %scevgep221.a = getelementptr i8, ptr %.1165, i64 4
  %i.bk = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  %scevgep222.a = getelementptr i8, ptr %scevgep221.a, i64 %i.bk
  %scevgep223 = getelementptr i8, ptr %4, i64 %i.bj
  %scevgep225 = getelementptr i8, ptr %scevgep224.a, i64 %i.bk
  %bound0226 = icmp ult ptr %scevgep220.a, %scevgep225
  %bound1227 = icmp ult ptr %scevgep223, %scevgep222.a
  %found.conflict228 = and i1 %bound0226, %bound1227
  br i1 %found.conflict228, label %scalar.ph230.preheader, label %vector.ph232

vector.ph232:                                     ; preds = %vector.memcheck218
  %n.vec234 = and i64 %i.bi, -8                   ; 3 uses
  %i.bl = sub nsw i64 %i.bh, %n.vec234
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph232
  %index236 = phi i64 [ 0, %vector.ph232 ], [ %index.next241, %vector.body235 ] ; 2 uses
  %i.bm = sub i64 %i.bh, %index236                ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.1165, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -12 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -28 ; 2 uses
  %wide.load237.a = load <4 x i32>, ptr %i.bo, align 4, !tbaa !4, !alias.scope !79, !noalias !82
  %wide.load238.a = load <4 x i32>, ptr %i.bp, align 4, !tbaa !4, !alias.scope !79, !noalias !82
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bm ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -12
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -28
  %wide.load239 = load <4 x i32>, ptr %i.br, align 4, !tbaa !4, !alias.scope !82
  %wide.load240 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4, !alias.scope !82
  %i.bt = and <4 x i32> %wide.load239, %wide.load237.a
  %i.bu = and <4 x i32> %wide.load240, %wide.load238.a
  store <4 x i32> %i.bt, ptr %i.bo, align 4, !tbaa !4, !alias.scope !79, !noalias !82
  store <4 x i32> %i.bu, ptr %i.bp, align 4, !tbaa !4, !alias.scope !79, !noalias !82
  %index.next241 = add nuw i64 %index236, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.bv, label %middle.block242, label %vector.body235, !llvm.loop !84

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %i.bi, %n.vec234
  br i1 %cmp.n243, label %.loopexit362, label %scalar.ph230.preheader

scalar.ph230.preheader:                           ; preds = %vector.memcheck218, %.lr.ph167, %middle.block242
  %indvars.iv185.ph = phi i64 [ %i.bh, %vector.memcheck218 ], [ %i.bh, %.lr.ph167 ], [ %i.bl, %middle.block242 ]
  br label %scalar.ph230

scalar.ph230:                                     ; preds = %scalar.ph230.preheader, %scalar.ph230
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %scalar.ph230 ], [ %indvars.iv185.ph, %scalar.ph230.preheader ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.1165, i64 %indvars.iv185 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv185
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = and i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !4
  %indvars.iv.next186 = add nsw i64 %indvars.iv185, -1
  %i.cb = icmp samesign ugt i64 %indvars.iv185, 1
  br i1 %i.cb, label %scalar.ph230, label %.loopexit362, !llvm.loop !85

.loopexit362:                                     ; preds = %scalar.ph230, %middle.block242
  %i.cc = load i32, ptr %.1165, align 4, !tbaa !4
  %i.cd = or i32 %i.cc, 8192
  store i32 %i.cd, ptr %.1165, align 4, !tbaa !4
  %i.ce = load i32, ptr %2, align 8, !tbaa !42
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %.1165, i64 %i.cf ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.bd
  br i1 %i.ch, label %.lr.ph167, label %._crit_edge168

._crit_edge168:                                   ; preds = %.loopexit362, %._crit_edge
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !8
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !69
  %i.cl = sext i32 %5 to i64                      ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8
  %i.co = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.cj, ptr noundef %i.cn) #8 ; 0 uses
  %i.cp = tail call ptr (ptr, ...) @sf_list(ptr noundef nonnull %1) #8 ; 8 uses
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !29
  %i.cr = sext i32 %i.cq to i64
  tail call void @qsort(ptr noundef %i.cp, i64 noundef %i.cr, i64 noundef 8, ptr noundef nonnull @d1_order) #8
  %i.cs = tail call ptr (ptr, ...) @sf_list(ptr noundef nonnull %2) #8 ; 8 uses
  %i.ct = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.cu = sext i32 %i.ct to i64
  tail call void @qsort(ptr noundef %i.cs, i64 noundef %i.cu, i64 noundef 8, ptr noundef nonnull @d1_order) #8
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !8  ; 2 uses
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !8  ; 2 uses
  %i.cx = icmp ne ptr %i.cv, null
  %i.cy = icmp ne ptr %i.cw, null
  %i.cz = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %i.cz, label %.lr.ph.i, label %compl_d1merge.exit

.lr.ph.i:                                         ; preds = %._crit_edge168, %bb.g
  %.02030.i = phi ptr [ %.1.i, %bb.g ], [ %i.cw, %._crit_edge168 ] ; 8 uses
  %.02129.i = phi ptr [ %.122.i, %bb.g ], [ %i.cv, %._crit_edge168 ] ; 8 uses
  %.02328.i = phi ptr [ %.124.i, %bb.g ], [ %i.cs, %._crit_edge168 ] ; 5 uses
  %.02527.i = phi ptr [ %.126.i, %bb.g ], [ %i.cp, %._crit_edge168 ] ; 5 uses
  %i.da = tail call i32 (ptr, ptr, ...) @d1_order(ptr noundef %.02527.i, ptr noundef %.02328.i) #8
  switch i32 %i.da, label %bb.g [
    i32 1, label %bb.d
    i32 -1, label %bb.e
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.db = getelementptr inbounds nuw i8, ptr %.02328.i, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !8
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.02527.i, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.df = load i32, ptr %.02030.i, align 4, !tbaa !4
  %i.dg = and i32 %i.df, -8193
  store i32 %i.dg, ptr %.02030.i, align 4, !tbaa !4
  %i.dh = load i32, ptr %.02129.i, align 4, !tbaa !4
  %i.di = and i32 %i.dh, 1023                     ; 3 uses
  %i.dj = zext nneg i32 %i.di to i64              ; 6 uses
  %11 = add nuw nsw i64 %i.dj, 1
  %12 = icmp ne i32 %i.di, 0
  %umin256.neg = sext i1 %12 to i64
  %i.dk = add nsw i64 %11, %umin256.neg           ; 3 uses
  %min.iters.check258 = icmp ult i64 %i.dk, 8
  br i1 %min.iters.check258, label %scalar.ph257.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %bb.f
  %.not366 = icmp eq i32 %i.di, 0
  %i.dl = select i1 %.not366, i64 0, i64 4        ; 2 uses
  %scevgep247.a = getelementptr i8, ptr %.02129.i, i64 %i.dl
  %scevgep248.a = getelementptr i8, ptr %.02129.i, i64 4
  %i.dm = shl nuw nsw i64 %i.dj, 2                ; 2 uses
  %scevgep249.a = getelementptr i8, ptr %scevgep248.a, i64 %i.dm
  %scevgep250.a = getelementptr i8, ptr %.02030.i, i64 %i.dl
  %scevgep251 = getelementptr i8, ptr %.02030.i, i64 4
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.dm
  %bound0253 = icmp ult ptr %scevgep247.a, %scevgep252
  %bound1254 = icmp ult ptr %scevgep250.a, %scevgep249.a
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %scalar.ph257.preheader, label %vector.ph259

vector.ph259:                                     ; preds = %vector.memcheck245
  %n.vec261 = and i64 %i.dk, -8                   ; 3 uses
  %i.dn = sub nsw i64 %i.dj, %n.vec261
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph259
  %index263 = phi i64 [ 0, %vector.ph259 ], [ %index.next268, %vector.body262 ] ; 2 uses
  %i.do = sub i64 %i.dj, %index263                ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.02129.i, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -12 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -28 ; 2 uses
  %wide.load264.a = load <4 x i32>, ptr %i.dq, align 4, !tbaa !4, !alias.scope !86, !noalias !89
  %wide.load265 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !4, !alias.scope !86, !noalias !89
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.02030.i, i64 %i.do ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -12
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -28
  %wide.load266 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !4, !alias.scope !89
  %wide.load267 = load <4 x i32>, ptr %i.du, align 4, !tbaa !4, !alias.scope !89
  %i.dv = or <4 x i32> %wide.load266, %wide.load264.a
  %i.dw = or <4 x i32> %wide.load267, %wide.load265
  store <4 x i32> %i.dv, ptr %i.dq, align 4, !tbaa !4, !alias.scope !86, !noalias !89
  store <4 x i32> %i.dw, ptr %i.dr, align 4, !tbaa !4, !alias.scope !86, !noalias !89
  %index.next268 = add nuw i64 %index263, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.dx, label %middle.block269, label %vector.body262, !llvm.loop !91

middle.block269:                                  ; preds = %vector.body262
  %cmp.n270 = icmp eq i64 %i.dk, %n.vec261
  br i1 %cmp.n270, label %.loopexit361, label %scalar.ph257.preheader

scalar.ph257.preheader:                           ; preds = %vector.memcheck245, %bb.f, %middle.block269
  %indvars.iv.i.ph = phi i64 [ %i.dj, %vector.memcheck245 ], [ %i.dj, %bb.f ], [ %i.dn, %middle.block269 ]
  br label %scalar.ph257

scalar.ph257:                                     ; preds = %scalar.ph257.preheader, %scalar.ph257
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph257 ], [ %indvars.iv.i.ph, %scalar.ph257.preheader ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.02129.i, i64 %indvars.iv.i ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.02030.i, i64 %indvars.iv.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ec = or i32 %i.eb, %i.dz
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ed = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ed, label %scalar.ph257, label %.loopexit361, !llvm.loop !92

.loopexit361:                                     ; preds = %scalar.ph257, %middle.block269
  %i.ee = getelementptr inbounds nuw i8, ptr %.02328.i, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit361, %bb.e, %bb.d, %.lr.ph.i
  %.126.i = phi ptr [ %.02527.i, %.lr.ph.i ], [ %.02527.i, %bb.d ], [ %i.dd, %bb.e ], [ %.02527.i, %.loopexit361 ]
  %.124.i = phi ptr [ %.02328.i, %.lr.ph.i ], [ %i.db, %bb.d ], [ %.02328.i, %bb.e ], [ %i.ee, %.loopexit361 ]
  %.122.i = phi ptr [ %.02129.i, %.lr.ph.i ], [ %.02129.i, %bb.d ], [ %i.de, %bb.e ], [ %.02129.i, %.loopexit361 ] ; 2 uses
  %.1.i = phi ptr [ %.02030.i, %.lr.ph.i ], [ %i.dc, %bb.d ], [ %.02030.i, %bb.e ], [ %i.ef, %.loopexit361 ] ; 2 uses
  %i.eg = icmp ne ptr %.122.i, null
  %i.eh = icmp ne ptr %.1.i, null
  %i.ei = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %i.ei, label %.lr.ph.i, label %compl_d1merge.exit

compl_d1merge.exit:                               ; preds = %bb.g, %._crit_edge168
  %trunc = trunc nuw i32 %6 to i1
  br i1 %trunc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %compl_d1merge.exit
  %i.ej = tail call ptr (ptr, ...) @cubeunlist(ptr noundef %0) #8 ; 3 uses
  tail call fastcc void @compl_lift_onset(ptr noundef nonnull %i.cp, ptr noundef %i.ej, ptr noundef %4, i32 noundef %5)
  tail call fastcc void @compl_lift_onset(ptr noundef nonnull %i.cs, ptr noundef %i.ej, ptr noundef %3, i32 noundef %5)
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ej) #8
  br label %.loopexit

bb.i:                                             ; preds = %compl_d1merge.exit
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !8  ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8  ; 5 uses
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !69
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.cl
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !8  ; 2 uses
  %i.es = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.eo, ptr noundef %4, ptr noundef %i.er) #8 ; 0 uses
  %i.et = load ptr, ptr %i.cp, align 8, !tbaa !8  ; 2 uses
  %.not43.i = icmp eq ptr %i.et, null
  br i1 %.not43.i, label %compl_lift.exit, label %.lr.ph.i140.preheader

.lr.ph.i140.preheader:                            ; preds = %bb.i
  %scevgep278 = getelementptr i8, ptr %i.eo, i64 4
  br label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %.lr.ph.i140.preheader, %.loopexit.i
  %i.eu = phi ptr [ %i.gk, %.loopexit.i ], [ %i.et, %.lr.ph.i140.preheader ] ; 7 uses
  %.pn.i = phi ptr [ %i.ev, %.loopexit.i ], [ %i.cp, %.lr.ph.i140.preheader ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !4
  %i.ex = and i32 %i.ew, 8192
  %.not38.i = icmp eq i32 %i.ex, 0
  br i1 %.not38.i, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i140
  %i.ey = tail call ptr (ptr, ptr, ptr, ptr, ...) @set_merge(ptr noundef %i.em, ptr noundef %4, ptr noundef nonnull %i.eu, ptr noundef %i.er) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.033.i = phi ptr [ %i.cs, %bb.j ], [ %i.ez, %bb.o ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  %i.fa = load ptr, ptr %.033.i, align 8, !tbaa !8 ; 2 uses
  %.not39.i = icmp eq ptr %i.fa, null
  br i1 %.not39.i, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fb = load i32, ptr %i.em, align 4, !tbaa !4
  %i.fc = and i32 %i.fb, 1023                     ; 2 uses
  %.not49.i = icmp eq i32 %i.fc, 0
  %i.fd = sext i1 %.not49.i to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.031.i = phi i32 [ %i.fc, %bb.l ], [ %i.fl, %bb.n ] ; 4 uses
  %i.fe = zext nneg i32 %.031.i to i64            ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !4
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fe
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = xor i32 %i.fi, -1
  %i.fk = and i32 %i.fg, %i.fj
  %.not40.i = icmp eq i32 %i.fk, 0
  br i1 %.not40.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fl = add nsw i32 %.031.i, -1
  %i.fm = icmp sgt i32 %.031.i, 1
  br i1 %i.fm, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i141 = phi i32 [ %.031.i, %bb.m ], [ %i.fd, %bb.n ]
  %.not41.i = icmp eq i32 %.1.i141, 0
  br i1 %.not41.i, label %bb.p, label %bb.k

bb.p:                                             ; preds = %bb.o
  %i.fn = load i32, ptr %i.eu, align 4, !tbaa !4
  %i.fo = and i32 %i.fn, 1023                     ; 3 uses
  %i.fp = zext nneg i32 %i.fo to i64              ; 6 uses
  %13 = add nuw nsw i64 %i.fp, 1
  %14 = icmp ne i32 %i.fo, 0
  %umin283.neg = sext i1 %14 to i64
  %i.fq = add nsw i64 %13, %umin283.neg           ; 3 uses
  %min.iters.check285 = icmp ult i64 %i.fq, 8
  br i1 %min.iters.check285, label %scalar.ph284.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %bb.p
  %.not367.a = icmp eq i32 %i.fo, 0
  %i.fr = select i1 %.not367.a, i64 0, i64 4      ; 2 uses
  %scevgep274.a = getelementptr i8, ptr %i.eu, i64 %i.fr
  %scevgep275 = getelementptr i8, ptr %i.eu, i64 4
  %i.fs = shl nuw nsw i64 %i.fp, 2                ; 2 uses
  %scevgep276.a = getelementptr i8, ptr %scevgep275, i64 %i.fs
  %scevgep277 = getelementptr i8, ptr %i.eo, i64 %i.fr
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.fs
  %bound0280 = icmp ult ptr %scevgep274.a, %scevgep279
  %bound1281 = icmp ult ptr %scevgep277, %scevgep276.a
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %scalar.ph284.preheader, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck272
  %n.vec288 = and i64 %i.fq, -8                   ; 3 uses
  %i.ft = sub nsw i64 %i.fp, %n.vec288
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph286
  %index290 = phi i64 [ 0, %vector.ph286 ], [ %index.next295, %vector.body289 ] ; 2 uses
  %i.fu = sub i64 %i.fp, %index290                ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -12 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -28 ; 2 uses
  %wide.load291 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !4, !alias.scope !93, !noalias !96
  %wide.load292 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !4, !alias.scope !93, !noalias !96
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fu ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -12
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 -28
  %wide.load293 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !4, !alias.scope !96
  %wide.load294 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !4, !alias.scope !96
  %i.gb = or <4 x i32> %wide.load293, %wide.load291
  %i.gc = or <4 x i32> %wide.load294, %wide.load292
  store <4 x i32> %i.gb, ptr %i.fw, align 4, !tbaa !4, !alias.scope !93, !noalias !96
  store <4 x i32> %i.gc, ptr %i.fx, align 4, !tbaa !4, !alias.scope !93, !noalias !96
  %index.next295 = add nuw i64 %index290, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next295, %n.vec288
  br i1 %i.gd, label %middle.block296, label %vector.body289, !llvm.loop !98

middle.block296:                                  ; preds = %vector.body289
  %cmp.n297 = icmp eq i64 %i.fq, %n.vec288
  br i1 %cmp.n297, label %.loopexit.i, label %scalar.ph284.preheader

scalar.ph284.preheader:                           ; preds = %vector.memcheck272, %bb.p, %middle.block296
  %indvars.iv.i142.ph = phi i64 [ %i.fp, %vector.memcheck272 ], [ %i.fp, %bb.p ], [ %i.ft, %middle.block296 ]
  br label %scalar.ph284

scalar.ph284:                                     ; preds = %scalar.ph284.preheader, %scalar.ph284
  %indvars.iv.i142 = phi i64 [ %indvars.iv.next.i143, %scalar.ph284 ], [ %indvars.iv.i142.ph, %scalar.ph284.preheader ] ; 4 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i142 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.i142
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4
  %i.gi = or i32 %i.gh, %i.gf
  store i32 %i.gi, ptr %i.ge, align 4, !tbaa !4
  %indvars.iv.next.i143 = add nsw i64 %indvars.iv.i142, -1
  %i.gj = icmp samesign ugt i64 %indvars.iv.i142, 1
  br i1 %i.gj, label %scalar.ph284, label %.loopexit.i, !llvm.loop !99

.loopexit.i:                                      ; preds = %bb.k, %scalar.ph284, %middle.block296, %.lr.ph.i140
  %i.gk = load ptr, ptr %i.ev, align 8, !tbaa !8  ; 2 uses
  %.not.i = icmp eq ptr %i.gk, null
  br i1 %.not.i, label %compl_lift.exit, label %.lr.ph.i140

compl_lift.exit:                                  ; preds = %.loopexit.i, %bb.i
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !8  ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !8  ; 5 uses
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !69
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.cl
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !8  ; 2 uses
  %i.gt = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.gp, ptr noundef %3, ptr noundef %i.gs) #8 ; 0 uses
  %i.gu = load ptr, ptr %i.cs, align 8, !tbaa !8  ; 2 uses
  %.not43.i144 = icmp eq ptr %i.gu, null
  br i1 %.not43.i144, label %.loopexit, label %.lr.ph.i145.preheader

.lr.ph.i145.preheader:                            ; preds = %compl_lift.exit
  %scevgep305 = getelementptr i8, ptr %i.gp, i64 4
  br label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %.lr.ph.i145.preheader, %.loopexit.i157
  %i.gv = phi ptr [ %i.il, %.loopexit.i157 ], [ %i.gu, %.lr.ph.i145.preheader ] ; 7 uses
  %.pn.i146 = phi ptr [ %i.gw, %.loopexit.i157 ], [ %i.cs, %.lr.ph.i145.preheader ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn.i146, i64 8 ; 2 uses
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.gy = and i32 %i.gx, 8192
  %.not38.i147 = icmp eq i32 %i.gy, 0
  br i1 %.not38.i147, label %.loopexit.i157, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i145
  %i.gz = tail call ptr (ptr, ptr, ptr, ptr, ...) @set_merge(ptr noundef %i.gn, ptr noundef %3, ptr noundef nonnull %i.gv, ptr noundef %i.gs) #8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.033.i148 = phi ptr [ %i.cp, %bb.q ], [ %i.ha, %bb.v ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.033.i148, i64 8
  %i.hb = load ptr, ptr %.033.i148, align 8, !tbaa !8 ; 2 uses
  %.not39.i149 = icmp eq ptr %i.hb, null
  br i1 %.not39.i149, label %.loopexit.i157, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hc = load i32, ptr %i.gn, align 4, !tbaa !4
  %i.hd = and i32 %i.hc, 1023                     ; 2 uses
  %.not49.i150 = icmp eq i32 %i.hd, 0
  %i.he = sext i1 %.not49.i150 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.031.i151 = phi i32 [ %i.hd, %bb.s ], [ %i.hm, %bb.u ] ; 4 uses
  %i.hf = zext nneg i32 %.031.i151 to i64         ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hf
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  %i.hk = xor i32 %i.hj, -1
  %i.hl = and i32 %i.hh, %i.hk
  %.not40.i152 = icmp eq i32 %i.hl, 0
  br i1 %.not40.i152, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hm = add nsw i32 %.031.i151, -1
  %i.hn = icmp sgt i32 %.031.i151, 1
  br i1 %i.hn, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i153 = phi i32 [ %.031.i151, %bb.t ], [ %i.he, %bb.u ]
  %.not41.i154 = icmp eq i32 %.1.i153, 0
  br i1 %.not41.i154, label %bb.w, label %bb.r

bb.w:                                             ; preds = %bb.v
  %i.ho = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.hp = and i32 %i.ho, 1023                     ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64              ; 6 uses
  %15 = add nuw nsw i64 %i.hq, 1
  %16 = icmp ne i32 %i.hp, 0
  %umin310.neg = sext i1 %16 to i64
  %i.hr = add nsw i64 %15, %umin310.neg           ; 3 uses
  %min.iters.check312 = icmp ult i64 %i.hr, 8
  br i1 %min.iters.check312, label %scalar.ph311.preheader, label %vector.memcheck299

vector.memcheck299:                               ; preds = %bb.w
  %.not368 = icmp eq i32 %i.hp, 0
  %i.hs = select i1 %.not368, i64 0, i64 4        ; 2 uses
  %scevgep301 = getelementptr i8, ptr %i.gv, i64 %i.hs
  %scevgep302.a = getelementptr i8, ptr %i.gv, i64 4
  %i.ht = shl nuw nsw i64 %i.hq, 2                ; 2 uses
  %scevgep303 = getelementptr i8, ptr %scevgep302.a, i64 %i.ht
  %scevgep304 = getelementptr i8, ptr %i.gp, i64 %i.hs
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.ht
  %bound0307 = icmp ult ptr %scevgep301, %scevgep306
  %bound1308 = icmp ult ptr %scevgep304, %scevgep303
  %found.conflict309 = and i1 %bound0307, %bound1308
  br i1 %found.conflict309, label %scalar.ph311.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck299
  %n.vec315 = and i64 %i.hr, -8                   ; 3 uses
  %i.hu = sub nsw i64 %i.hq, %n.vec315
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph313
  %index317 = phi i64 [ 0, %vector.ph313 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.hv = sub i64 %i.hq, %index317                ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -12 ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 -28 ; 2 uses
  %wide.load318 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !4, !alias.scope !100, !noalias !103
  %wide.load319 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !4, !alias.scope !100, !noalias !103
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.hv ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -12
  %i.ib = getelementptr inbounds i8, ptr %i.hz, i64 -28
  %wide.load320 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !4, !alias.scope !103
  %wide.load321 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !4, !alias.scope !103
  %i.ic = or <4 x i32> %wide.load320, %wide.load318
  %i.id = or <4 x i32> %wide.load321, %wide.load319
  store <4 x i32> %i.ic, ptr %i.hx, align 4, !tbaa !4, !alias.scope !100, !noalias !103
  store <4 x i32> %i.id, ptr %i.hy, align 4, !tbaa !4, !alias.scope !100, !noalias !103
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.ie, label %middle.block323, label %vector.body316, !llvm.loop !105

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.hr, %n.vec315
  br i1 %cmp.n324, label %.loopexit.i157, label %scalar.ph311.preheader

scalar.ph311.preheader:                           ; preds = %vector.memcheck299, %bb.w, %middle.block323
  %indvars.iv.i155.ph = phi i64 [ %i.hq, %vector.memcheck299 ], [ %i.hq, %bb.w ], [ %i.hu, %middle.block323 ]
  br label %scalar.ph311

scalar.ph311:                                     ; preds = %scalar.ph311.preheader, %scalar.ph311
  %indvars.iv.i155 = phi i64 [ %indvars.iv.next.i156, %scalar.ph311 ], [ %indvars.iv.i155.ph, %scalar.ph311.preheader ] ; 4 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i155 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i155
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !4
  %i.ij = or i32 %i.ii, %i.ig
  store i32 %i.ij, ptr %i.if, align 4, !tbaa !4
  %indvars.iv.next.i156 = add nsw i64 %indvars.iv.i155, -1
  %i.ik = icmp samesign ugt i64 %indvars.iv.i155, 1
  br i1 %i.ik, label %scalar.ph311, label %.loopexit.i157, !llvm.loop !106

.loopexit.i157:                                   ; preds = %bb.r, %scalar.ph311, %middle.block323, %.lr.ph.i145
  %i.il = load ptr, ptr %i.gw, align 8, !tbaa !8  ; 2 uses
  %.not.i158 = icmp eq ptr %i.il, null
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i145

.loopexit:                                        ; preds = %.loopexit.i157, %compl_lift.exit, %bb.h
  tail call void @free(ptr noundef %i.cp) #8
  tail call void @free(ptr noundef %i.cs) #8
  %i.im = load i32, ptr %i.m, align 4, !tbaa !29
  %i.in = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.io = add nsw i32 %i.in, %i.im
  %i.ip = load i32, ptr @cube, align 8, !tbaa !11
  %i.iq = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.io, i32 noundef %i.ip) #8 ; 8 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !41 ; 2 uses
  %i.it = load ptr, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.iu = load i32, ptr %i.m, align 4, !tbaa !29
  %i.iv = load i32, ptr %1, align 8, !tbaa !42
  %i.iw = mul nsw i32 %i.iv, %i.iu                ; 2 uses
  %i.ix = sext i32 %i.iw to i64
  %.idx180 = shl nsw i64 %i.ix, 2
  %i.iy = getelementptr inbounds i8, ptr %i.it, i64 %.idx180
  %i.iz = icmp sgt i32 %i.iw, 0
  br i1 %i.iz, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %.loopexit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 12 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph172, %.loopexit360
  %.2170 = phi ptr [ %i.it, %.lr.ph172 ], [ %i.kn, %.loopexit360 ] ; 9 uses
  %.0130169 = phi ptr [ %i.is, %.lr.ph172 ], [ %i.kk, %.loopexit360 ] ; 8 uses
  %i.jb = load i32, ptr %.2170, align 4, !tbaa !4
  %i.jc = and i32 %i.jb, 1023                     ; 2 uses
  %i.jd = zext nneg i32 %i.jc to i64              ; 4 uses
  %i.je = add nuw nsw i64 %i.jd, 1                ; 2 uses
  %min.iters.check330 = icmp samesign ult i32 %i.jc, 7
  %.0130169328 = ptrtoaddr ptr %.0130169 to i64
  %.2170327 = ptrtoaddr ptr %.2170 to i64
  %i.jf = sub i64 %.0130169328, %.2170327
  %diff.check = icmp ugt i64 %i.jf, -32
  %or.cond = select i1 %min.iters.check330, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph329.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %bb.x
  %n.vec333 = and i64 %i.je, 2040                 ; 3 uses
  %i.jg = sub nsw i64 %i.jd, %n.vec333
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph331
  %index335 = phi i64 [ 0, %vector.ph331 ], [ %index.next338, %vector.body334 ] ; 2 uses
  %i.jh = sub i64 %i.jd, %index335                ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.2170, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -12
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 -28
  %wide.load336 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !4
  %wide.load337 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !4
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0130169, i64 %i.jh ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -12
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -28
  store <4 x i32> %wide.load336, ptr %i.jm, align 4, !tbaa !4
  store <4 x i32> %wide.load337, ptr %i.jn, align 4, !tbaa !4
  %index.next338 = add nuw i64 %index335, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next338, %n.vec333
  br i1 %i.jo, label %middle.block339, label %vector.body334, !llvm.loop !107

middle.block339:                                  ; preds = %vector.body334
  %cmp.n340 = icmp eq i64 %i.je, %n.vec333
  br i1 %cmp.n340, label %.loopexit360, label %scalar.ph329.preheader

scalar.ph329.preheader:                           ; preds = %bb.x, %middle.block339
  %indvars.iv188.ph = phi i64 [ %i.jd, %bb.x ], [ %i.jg, %middle.block339 ] ; 4 uses
  %i.jp = add nsw i64 %indvars.iv188.ph, 1
  %xtraiter = and i64 %i.jp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph329.prol.loopexit, label %scalar.ph329.prol

scalar.ph329.prol:                                ; preds = %scalar.ph329.preheader, %scalar.ph329.prol
  %indvars.iv188.prol = phi i64 [ %indvars.iv.next189.prol, %scalar.ph329.prol ], [ %indvars.iv188.ph, %scalar.ph329.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph329.prol ], [ 0, %scalar.ph329.preheader ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.2170, i64 %indvars.iv188.prol
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.0130169, i64 %indvars.iv188.prol
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !4
  %indvars.iv.next189.prol = add nsw i64 %indvars.iv188.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph329.prol.loopexit, label %scalar.ph329.prol, !llvm.loop !108

scalar.ph329.prol.loopexit:                       ; preds = %scalar.ph329.prol, %scalar.ph329.preheader
  %indvars.iv188.unr = phi i64 [ %indvars.iv188.ph, %scalar.ph329.preheader ], [ %indvars.iv.next189.prol, %scalar.ph329.prol ]
  %i.jt = icmp ult i64 %indvars.iv188.ph, 3
  br i1 %i.jt, label %.loopexit360, label %scalar.ph329

scalar.ph329:                                     ; preds = %scalar.ph329.prol.loopexit, %scalar.ph329
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.3, %scalar.ph329 ], [ %indvars.iv188.unr, %scalar.ph329.prol.loopexit ] ; 6 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.2170, i64 %indvars.iv188
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.0130169, i64 %indvars.iv188
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !4
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, -1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.2170, i64 %indvars.iv.next189
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !4
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.0130169, i64 %indvars.iv.next189
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !4
  %indvars.iv.next189.1 = add nsw i64 %indvars.iv188, -2 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.2170, i64 %indvars.iv.next189.1
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !4
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.0130169, i64 %indvars.iv.next189.1
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !4
  %indvars.iv.next189.2 = add nsw i64 %indvars.iv188, -3 ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.2170, i64 %indvars.iv.next189.2
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !4
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.0130169, i64 %indvars.iv.next189.2
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !4
  %indvars.iv.next189.3 = add nsw i64 %indvars.iv188, -4
  %.not161.3 = icmp eq i64 %indvars.iv.next189.2, 0
  br i1 %.not161.3, label %.loopexit360, label %scalar.ph329, !llvm.loop !110

.loopexit360:                                     ; preds = %scalar.ph329.prol.loopexit, %scalar.ph329, %middle.block339
  %i.kg = load i32, ptr %i.ja, align 4, !tbaa !29
  %i.kh = add nsw i32 %i.kg, 1
  store i32 %i.kh, ptr %i.ja, align 4, !tbaa !29
  %i.ki = load i32, ptr %i.iq, align 8, !tbaa !42
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %.0130169, i64 %i.kj ; 2 uses
  %i.kl = load i32, ptr %1, align 8, !tbaa !42
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %.2170, i64 %i.km ; 2 uses
  %i.ko = icmp ult ptr %i.kn, %i.iy
  br i1 %i.ko, label %bb.x, label %._crit_edge173

._crit_edge173:                                   ; preds = %.loopexit360, %.loopexit
  %.0130.lcssa = phi ptr [ %i.is, %.loopexit ], [ %i.kk, %.loopexit360 ]
  %i.kp = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %i.kq = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.kr = load i32, ptr %2, align 8, !tbaa !42    ; 2 uses
end_hunk_0
begin_hunk_1_@compl_merge:bb.a
  %i.kx = phi i32 [ %i.kr, %.lr.ph177 ], [ %i.mj, %bb.aa ]
  %.3175 = phi ptr [ %i.kp, %.lr.ph177 ], [ %i.ml, %bb.aa ] ; 9 uses
  %.1131174 = phi ptr [ %.0130.lcssa, %.lr.ph177 ], [ %.2132, %bb.aa ] ; 9 uses
  %i.ky = load i32, ptr %.3175, align 4, !tbaa !4 ; 2 uses
  %i.kz = and i32 %i.ky, 8192
  %.not139 = icmp eq i32 %i.kz, 0
  br i1 %.not139, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.1131174344 = ptrtoaddr ptr %.1131174 to i64
  %.3175343 = ptrtoaddr ptr %.3175 to i64
  %i.la = and i32 %i.ky, 1023                     ; 2 uses
  %i.lb = zext nneg i32 %i.la to i64              ; 4 uses
  %i.lc = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %min.iters.check347 = icmp samesign ult i32 %i.la, 7
  %i.ld = sub i64 %.1131174344, %.3175343
  %diff.check345 = icmp ugt i64 %i.ld, -32
  %or.cond369 = select i1 %min.iters.check347, i1 true, i1 %diff.check345
  br i1 %or.cond369, label %scalar.ph346.preheader, label %vector.ph348

vector.ph348:                                     ; preds = %bb.z
  %n.vec350 = and i64 %i.lc, 2040                 ; 3 uses
  %i.le = sub nsw i64 %i.lb, %n.vec350
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph348
  %index352 = phi i64 [ 0, %vector.ph348 ], [ %index.next355, %vector.body351 ] ; 2 uses
  %i.lf = sub i64 %i.lb, %index352                ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.3175, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -12
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 -28
  %wide.load353 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !4
  %wide.load354 = load <4 x i32>, ptr %i.li, align 4, !tbaa !4
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.1131174, i64 %i.lf ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -12
  %i.ll = getelementptr inbounds i8, ptr %i.lj, i64 -28
  store <4 x i32> %wide.load353, ptr %i.lk, align 4, !tbaa !4
  store <4 x i32> %wide.load354, ptr %i.ll, align 4, !tbaa !4
  %index.next355 = add nuw i64 %index352, 8       ; 2 uses
  %i.lm = icmp eq i64 %index.next355, %n.vec350
  br i1 %i.lm, label %middle.block356, label %vector.body351, !llvm.loop !111

middle.block356:                                  ; preds = %vector.body351
  %cmp.n357 = icmp eq i64 %i.lc, %n.vec350
  br i1 %cmp.n357, label %.loopexit359, label %scalar.ph346.preheader

scalar.ph346.preheader:                           ; preds = %bb.z, %middle.block356
  %indvars.iv191.ph = phi i64 [ %i.lb, %bb.z ], [ %i.le, %middle.block356 ] ; 4 uses
  %i.ln = add nsw i64 %indvars.iv191.ph, 1
  %xtraiter372 = and i64 %i.ln, 3                 ; 2 uses
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %scalar.ph346.prol.loopexit, label %scalar.ph346.prol

scalar.ph346.prol:                                ; preds = %scalar.ph346.preheader, %scalar.ph346.prol
  %indvars.iv191.prol = phi i64 [ %indvars.iv.next192.prol, %scalar.ph346.prol ], [ %indvars.iv191.ph, %scalar.ph346.preheader ] ; 3 uses
  %prol.iter374 = phi i64 [ %prol.iter374.next, %scalar.ph346.prol ], [ 0, %scalar.ph346.preheader ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.3175, i64 %indvars.iv191.prol
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.1131174, i64 %indvars.iv191.prol
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !4
  %indvars.iv.next192.prol = add nsw i64 %indvars.iv191.prol, -1 ; 2 uses
  %prol.iter374.next = add i64 %prol.iter374, 1   ; 2 uses
  %prol.iter374.cmp.not = icmp eq i64 %prol.iter374.next, %xtraiter372
  br i1 %prol.iter374.cmp.not, label %scalar.ph346.prol.loopexit, label %scalar.ph346.prol, !llvm.loop !112

scalar.ph346.prol.loopexit:                       ; preds = %scalar.ph346.prol, %scalar.ph346.preheader
  %indvars.iv191.unr = phi i64 [ %indvars.iv191.ph, %scalar.ph346.preheader ], [ %indvars.iv.next192.prol, %scalar.ph346.prol ]
  %i.lr = icmp ult i64 %indvars.iv191.ph, 3
  br i1 %i.lr, label %.loopexit359, label %scalar.ph346

scalar.ph346:                                     ; preds = %scalar.ph346.prol.loopexit, %scalar.ph346
  %indvars.iv191 = phi i64 [ %indvars.iv.next192.3, %scalar.ph346 ], [ %indvars.iv191.unr, %scalar.ph346.prol.loopexit ] ; 6 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.3175, i64 %indvars.iv191
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !4
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.1131174, i64 %indvars.iv191
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !4
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, -1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.3175, i64 %indvars.iv.next192
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !4
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.1131174, i64 %indvars.iv.next192
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !4
  %indvars.iv.next192.1 = add nsw i64 %indvars.iv191, -2 ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.3175, i64 %indvars.iv.next192.1
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !4
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.1131174, i64 %indvars.iv.next192.1
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !4
  %indvars.iv.next192.2 = add nsw i64 %indvars.iv191, -3 ; 3 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.3175, i64 %indvars.iv.next192.2
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !4
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.1131174, i64 %indvars.iv.next192.2
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !4
  %indvars.iv.next192.3 = add nsw i64 %indvars.iv191, -4
  %.not160.3 = icmp eq i64 %indvars.iv.next192.2, 0
  br i1 %.not160.3, label %.loopexit359, label %scalar.ph346, !llvm.loop !113

.loopexit359:                                     ; preds = %scalar.ph346.prol.loopexit, %scalar.ph346, %middle.block356
  %i.me = load i32, ptr %i.kw, align 4, !tbaa !29
  %i.mf = add nsw i32 %i.me, 1
  store i32 %i.mf, ptr %i.kw, align 4, !tbaa !29
  %i.mg = load i32, ptr %i.iq, align 8, !tbaa !42
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [4 x i8], ptr %.1131174, i64 %i.mh
  %.pre = load i32, ptr %2, align 8, !tbaa !42
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.loopexit359
  %i.mj = phi i32 [ %.pre, %.loopexit359 ], [ %i.kx, %bb.y ] ; 2 uses
  %.2132 = phi ptr [ %i.mi, %.loopexit359 ], [ %.1131174, %bb.y ]
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [4 x i8], ptr %.3175, i64 %i.mk ; 2 uses
  %i.mm = icmp ult ptr %i.ml, %i.ku
  br i1 %i.mm, label %bb.y, label %._crit_edge178

._crit_edge178:                                   ; preds = %bb.aa, %._crit_edge173
  %i.mn = load i32, ptr @debug, align 4, !tbaa !4
  %i.mo = and i32 %i.mn, 1
  %.not137 = icmp eq i32 %i.mo, 0
  br i1 %.not137, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge178
  %i.mp = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !29
  %i.mr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.mq) ; 0 uses
  %i.ms = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not138 = icmp eq i32 %i.ms, 0
  br i1 %.not138, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @cprint(ptr noundef nonnull %i.iq) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %._crit_edge178
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %1) #8
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %2) #8
  ret ptr %i.iq
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @pc1(...) local_unnamed_addr #2

declare ptr @pc2(...) local_unnamed_addr #2

declare void @cprint(...) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @sf_list(...) local_unnamed_addr #2

declare i32 @d1_order(...) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @compl_lift_onset(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 19 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !69
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not50 = icmp eq ptr %i.i, null
  br i1 %.not50, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.a
  %i.j = ptrtoaddr ptr %i.h to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %scevgep65 = getelementptr i8, ptr %i.c, i64 4
  %i.n = sub i64 %i.d, %i.k
  %diff.check87.a = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.d, %i.j
  %diff.check88 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check87.a, %diff.check88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph52, %.loopexit
  %i.p = phi ptr [ %i.i, %.lr.ph52 ], [ %i.dr, %.loopexit ] ; 15 uses
  %.pn = phi ptr [ %0, %.lr.ph52 ], [ %i.r, %.loopexit ]
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.p, align 4, !tbaa !4
  %i.t = and i32 %i.s, 8192
  %.not46 = icmp eq i32 %i.t, 0
  br i1 %.not46, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  %i.v = and i32 %i.u, 1023
  %i.w = load i32, ptr %i.c, align 4, !tbaa !4
  %i.x = and i32 %i.w, -1024
  %i.y = or disjoint i32 %i.x, %i.v
  store i32 %i.y, ptr %i.c, align 4, !tbaa !4
  %i.z = and i32 %i.u, 1023                       ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 4 uses
  %4 = add nuw nsw i64 %i.aa, 1
  %5 = icmp ne i32 %i.z, 0
  %umin89.neg = sext i1 %5 to i64
  %i.ab = add nsw i64 %4, %umin89.neg             ; 3 uses
  %min.iters.check91 = icmp ult i64 %i.ab, 8
  %brmerge = select i1 %min.iters.check91, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph90.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %bb.c
  %n.vec94 = and i64 %i.ab, -8                    ; 3 uses
  %i.ac = sub nsw i64 %i.aa, %n.vec94
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph92
  %index96 = phi i64 [ 0, %vector.ph92 ], [ %index.next101, %vector.body95 ] ; 2 uses
  %i.ad = sub i64 %i.aa, %index96                 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -12
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -28
  %wide.load97.a = load <4 x i32>, ptr %i.af, align 4, !tbaa !4
  %wide.load98.a = load <4 x i32>, ptr %i.ag, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -12
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -28
  %wide.load99 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !4
  %wide.load100 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.ak = and <4 x i32> %wide.load99, %wide.load97.a
  %i.al = and <4 x i32> %wide.load100, %wide.load98.a
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -12
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -28
  store <4 x i32> %i.ak, ptr %i.an, align 4, !tbaa !4
  store <4 x i32> %i.al, ptr %i.ao, align 4, !tbaa !4
  %index.next101 = add nuw i64 %index96, 8        ; 2 uses
  %i.ap = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.ap, label %middle.block102, label %vector.body95, !llvm.loop !114

middle.block102:                                  ; preds = %vector.body95
  %cmp.n103 = icmp eq i64 %i.ab, %n.vec94
  br i1 %cmp.n103, label %.loopexit107, label %scalar.ph90.preheader

scalar.ph90.preheader:                            ; preds = %bb.c, %middle.block102
  %indvars.iv.ph = phi i64 [ %i.ac, %middle.block102 ], [ %i.aa, %bb.c ]
  br label %scalar.ph90

scalar.ph90:                                      ; preds = %scalar.ph90.preheader, %scalar.ph90
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph90 ], [ %indvars.iv.ph, %scalar.ph90.preheader ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = and i32 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.au, ptr %i.av, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aw = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aw, label %scalar.ph90, label %.loopexit107, !llvm.loop !115

.loopexit107:                                     ; preds = %scalar.ph90, %middle.block102
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !4   ; 2 uses
  %i.ay = and i32 %i.ax, 1023
  %i.az = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ba = and i32 %i.az, -1024
  %i.bb = or disjoint i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.c, align 4, !tbaa !4
  %i.bc = and i32 %i.ax, 1023                     ; 3 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 6 uses
  %6 = add nuw nsw i64 %i.bd, 1
  %7 = icmp ne i32 %i.bc, 0
  %umin70.neg = sext i1 %7 to i64
  %i.be = add nsw i64 %6, %umin70.neg             ; 3 uses
  %min.iters.check72 = icmp ult i64 %i.be, 8
  br i1 %min.iters.check72, label %scalar.ph71.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.loopexit107
  %.not108 = icmp eq i32 %i.bc, 0
  %i.bf = select i1 %.not108, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.bf
  %i.bg = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.bg
  %scevgep67 = getelementptr i8, ptr %i.p, i64 %i.bf
  %scevgep68 = getelementptr i8, ptr %i.p, i64 4
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.bg
  %bound0 = icmp ult ptr %scevgep, %scevgep69
  %bound1 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph71.preheader, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck64
  %n.vec75 = and i64 %i.be, -8                    ; 3 uses
  %i.bh = sub nsw i64 %i.bd, %n.vec75
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph73
  %index77 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.bi = sub i64 %i.bd, %index77                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -12
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -28
  %wide.load78.a = load <4 x i32>, ptr %i.bk, align 4, !tbaa !4, !alias.scope !116
  %wide.load79.a = load <4 x i32>, ptr %i.bl, align 4, !tbaa !4, !alias.scope !116
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bi ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -12 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -28 ; 2 uses
  %wide.load80.a = load <4 x i32>, ptr %i.bn, align 4, !tbaa !4, !alias.scope !119, !noalias !116
  %wide.load81 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !4, !alias.scope !119, !noalias !116
  %i.bp = or <4 x i32> %wide.load80.a, %wide.load78.a
  %i.bq = or <4 x i32> %wide.load81, %wide.load79.a
  store <4 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !4, !alias.scope !119, !noalias !116
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !4, !alias.scope !119, !noalias !116
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.br, label %middle.block83, label %vector.body76, !llvm.loop !121

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.be, %n.vec75
  br i1 %cmp.n84, label %.loopexit106, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %vector.memcheck64, %.loopexit107, %middle.block83
  %indvars.iv55.ph = phi i64 [ %i.bd, %vector.memcheck64 ], [ %i.bd, %.loopexit107 ], [ %i.bh, %middle.block83 ]
  br label %scalar.ph71

scalar.ph71:                                      ; preds = %scalar.ph71.preheader, %scalar.ph71
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %scalar.ph71 ], [ %indvars.iv55.ph, %scalar.ph71.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv55
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv55 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = or i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !4
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1
  %i.bx = icmp samesign ugt i64 %indvars.iv55, 1
  br i1 %i.bx, label %scalar.ph71, label %.loopexit106, !llvm.loop !122

.loopexit106:                                     ; preds = %scalar.ph71, %middle.block83
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.bz = load i32, ptr %i.m, align 4, !tbaa !29
  %i.ca = load i32, ptr %1, align 8, !tbaa !42
  %i.cb = mul nsw i32 %i.ca, %i.bz                ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %.idx = shl nsw i64 %i.cc, 2
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 %.idx
  %i.ce = icmp sgt i32 %i.cb, 0
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit106, %bb.d
  %.04449 = phi ptr [ %i.ci, %bb.d ], [ %i.by, %.loopexit106 ] ; 2 uses
  %i.cf = tail call i32 (ptr, ptr, ...) @cdist0(ptr noundef %.04449, ptr noundef nonnull %i.c) #8
  %.not47 = icmp eq i32 %i.cf, 0
  br i1 %.not47, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.cg = load i32, ptr %1, align 8, !tbaa !42
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %.04449, i64 %i.ch ; 2 uses
  %i.cj = icmp ult ptr %i.ci, %i.cd
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %.loopexit106
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !4
  %i.cl = and i32 %i.ck, 1023                     ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64              ; 4 uses
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.cl, 7
  %i.co = sub i64 %i.q, %i.d
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %n.vec = and i64 %i.cn, 2040                    ; 3 uses
  %i.cp = sub nsw i64 %i.cm, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = sub i64 %i.cm, %index                   ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -12
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cs, align 4, !tbaa !4
  %wide.load63 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cq ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -12
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -28
  store <4 x i32> %wide.load, ptr %i.cv, align 4, !tbaa !4
  store <4 x i32> %wide.load63, ptr %i.cw, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %.loopexit105, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %._crit_edge, %middle.block
  %indvars.iv58.ph = phi i64 [ %i.cm, %._crit_edge ], [ %i.cp, %middle.block ] ; 4 uses
  %i.cy = add nsw i64 %indvars.iv58.ph, 1
  %xtraiter = and i64 %i.cy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv58.prol = phi i64 [ %indvars.iv.next59.prol, %scalar.ph.prol ], [ %indvars.iv58.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv58.prol
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv58.prol
  store i32 %i.da, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next59.prol = add nsw i64 %indvars.iv58.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !124

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv58.unr = phi i64 [ %indvars.iv58.ph, %scalar.ph.preheader ], [ %indvars.iv.next59.prol, %scalar.ph.prol ]
  %i.dc = icmp ult i64 %indvars.iv58.ph, 3
  br i1 %i.dc, label %.loopexit105, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv58 = phi i64 [ %indvars.iv.next59.3, %scalar.ph ], [ %indvars.iv58.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv58
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv58
  store i32 %i.de, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, -1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next59
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next59
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !4
  %indvars.iv.next59.1 = add nsw i64 %indvars.iv58, -2 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next59.1
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next59.1
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  %indvars.iv.next59.2 = add nsw i64 %indvars.iv58, -3 ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next59.2
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next59.2
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  %indvars.iv.next59.3 = add nsw i64 %indvars.iv58, -4
  %.not48.3 = icmp eq i64 %indvars.iv.next59.2, 0
  br i1 %.not48.3, label %.loopexit105, label %scalar.ph, !llvm.loop !125

.loopexit105:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dp = load i32, ptr %i.p, align 4, !tbaa !4
  %i.dq = or i32 %i.dp, 8192
  store i32 %i.dq, ptr %i.p, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit105, %bb.b
  %i.dr = load ptr, ptr %i.r, align 8, !tbaa !8   ; 2 uses
  %.not = icmp eq ptr %i.dr, null
  br i1 %.not, label %._crit_edge53, label %bb.b

._crit_edge53:                                    ; preds = %.loopexit, %bb.a
  ret void
}

declare i32 @cdist0(...) local_unnamed_addr #2

declare ptr @set_and(...) local_unnamed_addr #2

declare ptr @set_merge(...) local_unnamed_addr #2

declare ptr @sf_contain(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
