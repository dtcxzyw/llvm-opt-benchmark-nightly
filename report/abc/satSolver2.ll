Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver2?download=true
inline.NumInlined: 491
inline.NumDeleted: 121
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sat_solver2_reducedb.TimeTotal = internal unnamed_addr global i64 0, align 8
@sat_solver2_reducedb.Count = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"reduceDB: Keeping %7d out of %7d clauses (%5.2f %%)  \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@sat_solver2_rollback.Count = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"==================================[MINISAT]===================================\0A\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"| Conflicts |     ORIGINAL     |              LEARNT              | Progress |\0A\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"|           | Clauses Literals |   Limit Clauses Literals  Lit/Cl |          |\0A\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"==============================================================================\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"| %9.0f | %7.0f %8.0f | %7.0f %7.0f %8.0f %7.1f | %6.3f %% |\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"Failed to realloc memory from %.1f MB to %.1f MB.\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @var_is_assigned(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25
  %i.f = icmp ne i8 %i.e, 3
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @var_is_partA(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i8, ptr %i.d, align 4
  %i.f = lshr i8 %i.e, 1
  %i.g = and i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @var_set_partA(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = trunc i32 %2 to i8
  %i.f = load i8, ptr %i.d, align 4
  %i.g = shl i8 %i.e, 1
  %i.h = and i8 %i.g, 2
  %i.i = and i8 %i.f, -3
  %i.j = or disjoint i8 %i.i, %i.h
  store i8 %i.j, ptr %i.d, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @solver2_propagate(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 176        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 152        ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 156        ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = getelementptr i8, ptr %0, i64 348        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 240        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge152
  %i.t = load i32, ptr %i.b, align 4, !tbaa !27
  %i.u = load i32, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %i.v = icmp sgt i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.c, align 8, !tbaa !28
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30  ; 2 uses
  %.val114 = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %.val114, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %.val117 = load ptr, ptr %i.ad, align 8, !tbaa !32 ; 6 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %.val118 = load i32, ptr %i.ae, align 4, !tbaa !33 ; 2 uses
  %i.af = sext i32 %.val118 to i64
  %.idx = shl nsw i64 %i.af, 2                    ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.val117, i64 %.idx ; 3 uses
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !34
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !34
  %i.aj = icmp sgt i32 %.val118, 0
  br i1 %i.aj, label %clause2_read.exit.lr.ph, label %._crit_edge152

clause2_read.exit.lr.ph:                          ; preds = %bb.c
  %i.ak = xor i32 %i.aa, 1                        ; 3 uses
  %i.al = ptrtoaddr ptr %.val117 to i64
  %i.am = add i64 %.idx, %i.al
  br label %clause2_read.exit

clause2_read.exit:                                ; preds = %clause2_read.exit.lr.ph, %.loopexit
  %.098151 = phi ptr [ %.val117, %clause2_read.exit.lr.ph ], [ %.2, %.loopexit ] ; 6 uses
  %.099150 = phi ptr [ %.val117, %clause2_read.exit.lr.ph ], [ %i.hy, %.loopexit ] ; 12 uses
  %.1104149 = phi ptr [ null, %clause2_read.exit.lr.ph ], [ %.2105, %.loopexit ] ; 4 uses
  %.098151181 = ptrtoaddr ptr %.098151 to i64
  %.099150182 = ptrtoaddr ptr %.099150 to i64     ; 3 uses
  %i.an = load i32, ptr %.099150, align 4, !tbaa !30 ; 3 uses
  %.not.i.i = icmp ne i32 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i)
  %.val.i.i = load i32, ptr %i.g, align 8, !tbaa !35
  %i.ao = ashr i32 %i.an, %.val.i.i
  %.val5.i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.ap = and i32 %.val5.i.i, %i.an
  %.val6.i.i = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val6.i.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 7 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !30 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, %i.ak
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %clause2_read.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !30 ; 2 uses
  store i32 %i.az, ptr %i.av, align 4, !tbaa !30
  store i32 %i.ak, ptr %i.ay, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %clause2_read.exit
  %i.ba = phi i32 [ %i.az, %bb.d ], [ %i.aw, %clause2_read.exit ] ; 3 uses
  %i.bb = ashr i32 %i.ba, 1                       ; 2 uses
  %.val121 = load ptr, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.val121, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25
  %i.bf = sext i8 %i.be to i32
  %i.bg = and i32 %i.ba, 1
  %i.bh = icmp eq i32 %i.bg, %i.bf
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %.099150, align 4, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.098151, i64 4
  store i32 %i.bi, ptr %.098151, align 4, !tbaa !30
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.bk = load i32, ptr %i.au, align 4            ; 2 uses
  %i.bl = lshr i32 %i.bk, 9
  %i.bm = and i32 %i.bl, 8388604
  %.idx156 = zext nneg i32 %i.bm to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx156
  %i.bo = icmp ugt i32 %i.bk, 6143
  br i1 %i.bo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.0102139 = phi ptr [ %i.dj, %bb.o ], [ %i.bp, %.lr.ph.preheader ] ; 3 uses
  %i.bq = load i32, ptr %.0102139, align 4, !tbaa !30 ; 3 uses
  %i.br = ashr i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %.val121, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  %i.bv = sext i8 %i.bu to i32
  %i.bw = and i32 %i.bq, 1
  %i.bx = xor i32 %i.bw, %i.bv
  %.not113 = icmp eq i32 %i.bx, 1
  br i1 %.not113, label %bb.o, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store i32 %i.bq, ptr %i.by, align 4, !tbaa !30
  store i32 %i.ak, ptr %.0102139, align 4, !tbaa !30
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30
  %i.ca = xor i32 %i.bz, 1
  %.val = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.cb ; 6 uses
  %i.cd = load i32, ptr %.099150, align 4, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !33 ; 5 uses
  %i.cg = load i32, ptr %i.cc, align 8, !tbaa !39
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.i, label %veci_push.exit

bb.i:                                             ; preds = %bb.h
  %i.ci = icmp slt i32 %i.cf, 4
  %i.cj = shl nsw i32 %i.cf, 1
  %i.ck = lshr i32 %i.cf, 1
  %i.cl = mul nuw nsw i32 %i.ck, 3
  %i.cm = select i1 %i.ci, i32 %i.cj, i32 %i.cl   ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  %i.cp = sext i32 %i.cm to i64
  %i.cq = shl nsw i64 %i.cp, 2                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = call ptr @realloc(ptr noundef nonnull %i.co, i64 noundef %i.cq) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cs = call noalias ptr @malloc(i64 noundef %i.cq) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.cr, %bb.j ], [ %i.cs, %bb.k ] ; 2 uses
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !32
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cv = load i32, ptr %i.cc, align 8, !tbaa !39
  %i.cw = sitofp i32 %i.cv to double
  %i.cx = fmul nnan double %i.cw, f0x3EB0000000000000
  %i.cy = sitofp i32 %i.cm to double
  %i.cz = fmul nnan double %i.cy, f0x3EB0000000000000
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.cx, double noundef %i.cz) ; 0 uses
  %i.db = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.dc = call i32 @fflush(ptr noundef %i.db)     ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.cm, ptr %i.cc, align 8, !tbaa !39
  %.pre.i = load i32, ptr %i.ce, align 4, !tbaa !33
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.h, %bb.n
  %i.dd = phi i32 [ %.pre.i, %bb.n ], [ %i.cf, %bb.h ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !32
  %i.dg = add nsw i32 %i.dd, 1
  store i32 %i.dg, ptr %i.ce, align 4, !tbaa !33
  %i.dh = sext i32 %i.dd to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dh
  store i32 %i.cd, ptr %i.di, align 4, !tbaa !30
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %.0102139, i64 4 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.bn
  br i1 %i.dk, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.o, %bb.g
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !30
  %i.dl = load i32, ptr %i.k, align 4, !tbaa !44
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.u, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %.val122 = load i32, ptr %i.l, align 4, !tbaa !33
  %i.dm = icmp eq i32 %.val122, 0
  br i1 %i.dm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  call fastcc void @proof_chain_start(ptr noundef nonnull %0, ptr noundef nonnull %i.au)
  %i.dn = load i32, ptr %i.au, align 4
  %i.do = icmp ugt i32 %i.dn, 4095
  br i1 %i.do, label %.lr.ph142, label %.critedge2

.lr.ph142:                                        ; preds = %bb.q, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 1, %bb.q ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !30
  %i.dr = ashr i32 %i.dq, 1                       ; 2 uses
  %.not109 = icmp eq i32 %i.dr, 0
  br i1 %.not109, label %.critedge2, label %bb.r

bb.r:                                             ; preds = %.lr.ph142
  call fastcc void @proof_chain_resolve(ptr noundef nonnull %0, ptr noundef null, i32 noundef %i.dr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = load i32, ptr %i.au, align 4
  %i.dt = lshr i32 %i.ds, 11
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = icmp samesign ult i64 %indvars.iv.next, %i.du
  br i1 %i.dv, label %.lr.ph142, label %.critedge2, !llvm.loop !45

.critedge2:                                       ; preds = %.lr.ph142, %bb.r, %bb.q
  %i.dw = call fastcc i32 @proof_chain_stop(ptr noundef nonnull %0)
  %i.dx = call fastcc i32 @clause2_create_new(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, i32 noundef 1, i32 noundef %i.dw) ; 4 uses
  %i.dy = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.bc ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i, label %var_unit_clause.exit.thread, label %var_unit_clause.exit

var_unit_clause.exit:                             ; preds = %.critedge2
  %.val.i.i.i = load i32, ptr %i.g, align 8, !tbaa !35 ; 2 uses
  %i.eb = ashr i32 %i.ea, %.val.i.i.i
  %.val6.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !37 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %.val6.i.i.i, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !38
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %var_unit_clause.exit.thread, label %bb.s

var_unit_clause.exit.thread:                      ; preds = %.critedge2, %var_unit_clause.exit
  store i32 %i.dx, ptr %i.dz, align 4, !tbaa !30
  %i.eg = load i32, ptr %i.p, align 8, !tbaa !47
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.p, align 8, !tbaa !47
  br label %bb.u

bb.s:                                             ; preds = %var_unit_clause.exit
  %.not.i.i123 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i123, label %clause2_read.exit127, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = ashr i32 %i.dx, %.val.i.i.i
  %.val5.i.i125 = load i32, ptr %i.h, align 4, !tbaa !36
  %i.ej = and i32 %.val5.i.i125, %i.dx
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %.val6.i.i.i, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !38
  %i.en = sext i32 %i.ej to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.en
  br label %clause2_read.exit127

clause2_read.exit127:                             ; preds = %bb.s, %bb.t
  %i.ep = phi ptr [ %i.eo, %bb.t ], [ null, %bb.s ]
  call fastcc void @proof_chain_start(ptr noundef nonnull %0, ptr noundef %i.ep)
  call fastcc void @proof_chain_resolve(ptr noundef nonnull %0, ptr noundef null, i32 noundef %i.bb)
  %i.eq = call fastcc i32 @proof_chain_stop(ptr noundef nonnull %0)
  store i32 %i.eq, ptr %i.o, align 4, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %var_unit_clause.exit.thread, %clause2_read.exit127, %bb.p, %._crit_edge
  %i.er = load i32, ptr %.099150, align 4, !tbaa !30
  %i.es = getelementptr inbounds nuw i8, ptr %.098151, i64 4 ; 6 uses
  store i32 %i.er, ptr %.098151, align 4, !tbaa !30
  %i.et = load i32, ptr %i.au, align 4            ; 3 uses
  %i.eu = and i32 %i.et, 1
  %.not110 = icmp eq i32 %i.eu, 0
  br i1 %.not110, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = lshr i32 %i.et, 11                      ; 4 uses
  %.not17.i = icmp eq i32 %i.ev, 0
  br i1 %.not17.i, label %sat_clause_compute_lbd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !49 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ev to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2097150
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.w ] ; 3 uses
  %.016.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.w ]
  %.01115.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.112.i.1, %bb.w ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.w ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !30
  %i.ez = ashr i32 %i.ey, 1
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !30
  %i.fd = and i32 %i.fc, 31
  %i.fe = shl nuw i32 1, %i.fd                    ; 2 uses
  %i.ff = and i32 %i.fe, %.01115.i
  %.not.i128 = icmp eq i32 %i.ff, 0               ; 2 uses
  %i.fg = select i1 %.not.i128, i32 %i.fe, i32 0
  %.112.i = or i32 %i.fg, %.01115.i               ; 2 uses
  %i.fh = zext i1 %.not.i128 to i32
  %.1.i = add nuw nsw i32 %.016.i, %i.fh
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !30
  %i.fl = ashr i32 %i.fk, 1
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !30
  %i.fp = and i32 %i.fo, 31
  %i.fq = shl nuw i32 1, %i.fp                    ; 2 uses
  %i.fr = and i32 %i.fq, %.112.i
  %.not.i128.1 = icmp eq i32 %i.fr, 0             ; 2 uses
  %i.fs = select i1 %.not.i128.1, i32 %i.fq, i32 0
  %.112.i.1 = or i32 %i.fs, %.112.i               ; 2 uses
  %i.ft = zext i1 %.not.i128.1 to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.ft          ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, label %bb.w, !llvm.loop !50

sat_clause_compute_lbd.exit.loopexit.unr-lcssa:   ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_clause_compute_lbd.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %.016.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %.01115.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.112.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %lcmp.mod191 = trunc i32 %i.ev to i1
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i.epil.init
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !30
  %i.fw = ashr i32 %i.fv, 1
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !30
  %i.ga = and i32 %i.fz, 31
  %i.gb = xor i32 %.01115.i.epil.init, -1
  %i.gc = lshr i32 %i.gb, %i.ga
  %i.gd = and i32 %i.gc, 1
  %.1.i.epil = add nuw nsw i32 %.016.i.epil.init, %i.gd
  br label %sat_clause_compute_lbd.exit.loopexit

sat_clause_compute_lbd.exit.loopexit:             ; preds = %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, %.epil.preheader
  %.1.i.lcssa = phi i32 [ %.1.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.ge = shl i32 %.1.i.lcssa, 3
  %i.gf = and i32 %i.ge, 2040
  br label %sat_clause_compute_lbd.exit

sat_clause_compute_lbd.exit:                      ; preds = %sat_clause_compute_lbd.exit.loopexit, %bb.v
  %.0.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.gf, %sat_clause_compute_lbd.exit.loopexit ]
  %i.gg = and i32 %i.et, -2041
  %i.gh = or disjoint i32 %.0.lcssa.i, %i.gg
  store i32 %i.gh, ptr %i.au, align 4
  br label %bb.x

bb.x:                                             ; preds = %sat_clause_compute_lbd.exit, %bb.u
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !30  ; 4 uses
  %i.gj = ashr i32 %i.gi, 1
  %.val20.i = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.gk = sext i32 %i.gj to i64                   ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %.val20.i, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !25  ; 2 uses
  %.not.i129 = icmp eq i8 %i.gm, 3
  br i1 %.not.i129, label %solver2_enqueue.exit.thread, label %solver2_enqueue.exit

solver2_enqueue.exit.thread:                      ; preds = %bb.x
  %i.gn = load i32, ptr %.099150, align 4, !tbaa !30
  %i.go = trunc i32 %i.gi to i8
  %i.gp = and i8 %i.go, 1
  store i8 %i.gp, ptr %i.gl, align 1, !tbaa !25
  %.val21.i = load i32, ptr %i.l, align 4, !tbaa !33
  %.val23.i = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val23.i, i64 %i.gk
  store i32 %.val21.i, ptr %i.gq, align 4, !tbaa !30
  %i.gr = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gk
  store i32 %i.gn, ptr %i.gs, align 4, !tbaa !30
  %i.gt = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.gu = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.b, align 4, !tbaa !27
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.gw
  store i32 %i.gi, ptr %i.gx, align 4, !tbaa !30
  br label %.loopexit

solver2_enqueue.exit:                             ; preds = %bb.x
  %i.gy = sext i8 %i.gm to i32
  %i.gz = and i32 %i.gi, 1
  %.not137 = icmp eq i32 %i.gz, %i.gy
  br i1 %.not137, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %solver2_enqueue.exit
  %i.ha = load i32, ptr %.099150, align 4, !tbaa !30 ; 3 uses
  %.not.i.i130 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i130, label %clause2_read.exit134, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val.i.i131 = load i32, ptr %i.g, align 8, !tbaa !35
  %i.hb = ashr i32 %i.ha, %.val.i.i131
  %.val5.i.i132 = load i32, ptr %i.h, align 4, !tbaa !36
  %i.hc = and i32 %.val5.i.i132, %i.ha
  %.val6.i.i133 = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.hd = sext i32 %i.hb to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %.val6.i.i133, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !38
  %i.hg = sext i32 %i.hc to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hg
  br label %clause2_read.exit134

clause2_read.exit134:                             ; preds = %bb.y, %bb.z
  %i.hi = phi ptr [ %i.hh, %bb.z ], [ null, %bb.y ] ; 3 uses
  %.1100144 = getelementptr inbounds nuw i8, ptr %.099150, i64 4 ; 5 uses
  %i.hj = icmp ult ptr %.1100144, %i.ag
  br i1 %i.hj, label %.lr.ph147.preheader, label %.loopexit

.lr.ph147.preheader:                              ; preds = %clause2_read.exit134
  %1 = add i64 %.099150182, 8
  %2 = call i64 @llvm.umax.i64(i64 %i.am, i64 %1)
  %3 = add i64 %2, -5
  %i.hk = sub i64 %3, %.099150182                 ; 2 uses
  %i.hl = lshr i64 %i.hk, 2
  %i.hm = add nuw nsw i64 %i.hl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hk, 28
  %i.hn = sub i64 %.099150182, %.098151181
  %diff.check = icmp ugt i64 %i.hn, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph147.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph147.preheader
  %n.vec = and i64 %i.hm, 9223372036854775800     ; 3 uses
  %i.ho = shl i64 %n.vec, 2                       ; 2 uses
  %i.hp = getelementptr i8, ptr %.1100144, i64 %i.ho ; 2 uses
  %i.hq = getelementptr i8, ptr %i.es, i64 %i.ho  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hr = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.1100144, i64 %i.hr ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.es, i64 %i.hr ; 2 uses
  %i.hs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !30
  %wide.load184 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !30
  %i.ht = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %wide.load, ptr %next.gep183, align 4, !tbaa !30
  store <4 x i32> %wide.load184, ptr %i.ht, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph147.preheader186

.lr.ph147.preheader186:                           ; preds = %.lr.ph147.preheader, %middle.block
  %.1100146.ph = phi ptr [ %.1100144, %.lr.ph147.preheader ], [ %i.hp, %middle.block ]
  %.1145.ph = phi ptr [ %i.es, %.lr.ph147.preheader ], [ %i.hq, %middle.block ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader186, %.lr.ph147
  %.1100146 = phi ptr [ %.1100, %.lr.ph147 ], [ %.1100146.ph, %.lr.ph147.preheader186 ] ; 2 uses
  %.1145 = phi ptr [ %i.hw, %.lr.ph147 ], [ %.1145.ph, %.lr.ph147.preheader186 ] ; 2 uses
  %i.hv = load i32, ptr %.1100146, align 4, !tbaa !30
  %i.hw = getelementptr inbounds nuw i8, ptr %.1145, i64 4 ; 2 uses
  store i32 %i.hv, ptr %.1145, align 4, !tbaa !30
  %.1100 = getelementptr inbounds nuw i8, ptr %.1100146, i64 4 ; 3 uses
  %i.hx = icmp ult ptr %.1100, %i.ag
  br i1 %i.hx, label %.lr.ph147, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %.lr.ph147, %middle.block, %clause2_read.exit134, %solver2_enqueue.exit.thread, %bb.f, %solver2_enqueue.exit, %veci_push.exit
  %.2105 = phi ptr [ %.1104149, %bb.f ], [ %.1104149, %veci_push.exit ], [ %.1104149, %solver2_enqueue.exit ], [ %.1104149, %solver2_enqueue.exit.thread ], [ %i.hi, %clause2_read.exit134 ], [ %i.hi, %middle.block ], [ %i.hi, %.lr.ph147 ] ; 2 uses
  %.2101 = phi ptr [ %.099150, %bb.f ], [ %.099150, %veci_push.exit ], [ %.099150, %solver2_enqueue.exit ], [ %.099150, %solver2_enqueue.exit.thread ], [ %.1100144, %clause2_read.exit134 ], [ %i.hp, %middle.block ], [ %.1100, %.lr.ph147 ]
  %.2 = phi ptr [ %i.bj, %bb.f ], [ %.098151, %veci_push.exit ], [ %i.es, %solver2_enqueue.exit ], [ %i.es, %solver2_enqueue.exit.thread ], [ %i.es, %clause2_read.exit134 ], [ %i.hq, %middle.block ], [ %i.hw, %.lr.ph147 ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.2101, i64 4 ; 2 uses
  %i.hz = icmp ult ptr %i.hy, %i.ag
  br i1 %i.hz, label %clause2_read.exit, label %._crit_edge152.loopexit, !llvm.loop !56

._crit_edge152.loopexit:                          ; preds = %.loopexit
  %.val116.pre = load ptr, ptr %i.ad, align 8, !tbaa !32
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %bb.c
  %.val116 = phi ptr [ %.val117, %bb.c ], [ %.val116.pre, %._crit_edge152.loopexit ]
  %.1104.lcssa = phi ptr [ null, %bb.c ], [ %.2105, %._crit_edge152.loopexit ] ; 2 uses
  %.098.lcssa = phi ptr [ %.val117, %bb.c ], [ %.2, %._crit_edge152.loopexit ]
  %i.ia = ptrtoint ptr %.098.lcssa to i64
  %i.ib = ptrtoint ptr %.val116 to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 2 uses
  %i.id = ashr exact i64 %i.ic, 2
  %i.ie = load i64, ptr %i.s, align 8, !tbaa !57
  %i.if = add nsw i64 %i.id, %i.ie
  store i64 %i.if, ptr %i.s, align 8, !tbaa !57
  %i.ig = lshr exact i64 %i.ic, 2
  %i.ih = trunc i64 %i.ig to i32
  store i32 %i.ih, ptr %i.ae, align 4, !tbaa !33
  %i.ii = icmp eq ptr %.1104.lcssa, null
  br i1 %i.ii, label %bb.b, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %._crit_edge152, %bb.b
  %.0103.lcssa = phi ptr [ %.1104.lcssa, %._crit_edge152 ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0103.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @proof_chain_start(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @Int2_ManChainStart(ptr noundef nonnull %i.d, ptr noundef %1) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 %i.e, ptr %i.f, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 7 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %Prf_ManChainStart.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i, label %Prf_ManClearNewInfo.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.f

bb.f:                                             ; preds = %Vec_WrdPush.exit.i.i, %.lr.ph.i.i
  %i.m = phi i32 [ %i.j, %.lr.ph.i.i ], [ %.val.pr.i, %Vec_WrdPush.exit.i.i ] ; 2 uses
  %.03.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.an, %Vec_WrdPush.exit.i.i ]
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !67   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !68   ; 7 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !70
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %Vec_WrdPush.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = icmp slt i32 %i.p, 16
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 128) #26
  br label %Vec_WrdGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #27
  br label %Vec_WrdGrow.exit.i.i.i

Vec_WrdGrow.exit.i.i.i:                           ; preds = %bb.j, %bb.i
  %i.x = phi ptr [ %i.v, %bb.i ], [ %i.w, %bb.j ]
  store ptr %i.x, ptr %i.t, align 8, !tbaa !71
  br label %Vec_WrdGrow.exit11.sink.split.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.y = icmp samesign ult i32 %i.p, 1073741823
  %i.z = shl nuw nsw i32 %i.p, 1
  %spec.select.i.i.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 3 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.p, %spec.select.i.i.i
  br i1 %.not.i9.i.i.i, label %bb.l, label %Vec_WrdPush.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  %.not9.i10.i.i.i = icmp eq ptr %i.ab, null
  %i.ac = zext nneg i32 %spec.select.i.i.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef %i.ad) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ag = phi ptr [ %i.ae, %bb.m ], [ %i.af, %bb.n ]
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !71
  br label %Vec_WrdGrow.exit11.sink.split.i.i.i

Vec_WrdGrow.exit11.sink.split.i.i.i:              ; preds = %bb.o, %Vec_WrdGrow.exit.i.i.i
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.o ], [ 16, %Vec_WrdGrow.exit.i.i.i ]
  store i32 %spec.select.sink.i.i.i, ptr %i.n, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.o, align 4, !tbaa !68
  %.pre4.i.i = load i32, ptr %i.i, align 8, !tbaa !62
  br label %Vec_WrdPush.exit.i.i

Vec_WrdPush.exit.i.i:                             ; preds = %Vec_WrdGrow.exit11.sink.split.i.i.i, %bb.k, %bb.f
  %.val.pr.i = phi i32 [ %i.m, %bb.f ], [ %i.m, %bb.k ], [ %.pre4.i.i, %Vec_WrdGrow.exit11.sink.split.i.i.i ] ; 3 uses
  %i.ah = phi i32 [ %i.p, %bb.f ], [ %i.p, %bb.k ], [ %.pre.i.i, %Vec_WrdGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71
  %i.ak = add nsw i32 %i.ah, 1
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !68
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
end_hunk_0
begin_hunk_1_@solver2_logging_order_rec:bb.a
  %i.af = and i8 %i.ae, 4
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @solver2_logging_order_rec(ptr noundef nonnull %0, i32 noundef %i.z)
  %.pre = load i32, ptr %i.r, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.ah = phi i32 [ %i.w, %bb.c ], [ %i.w, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = lshr i32 %i.ah, 11
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %.critedge.loopexit, !llvm.loop !240

.critedge.loopexit:                               ; preds = %bb.f, %bb.b
  %.pre30 = load ptr, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre30, i64 %i.b
  %.pre31 = load i8, ptr %.phi.trans.insert, align 4
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %clause2_read.exit
  %i.al = phi i8 [ %.pre31, %.critedge.loopexit ], [ %i.d, %clause2_read.exit ] ; 2 uses
  %i.am = phi ptr [ %.pre30, %.critedge.loopexit ], [ %.val23, %clause2_read.exit ] ; 2 uses
  %i.an = and i8 %i.al, 60
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.g, label %var_add_tag.exit

bb.g:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33 ; 5 uses
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !39
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %veci_push.exit.i

bb.h:                                             ; preds = %bb.g
  %i.au = icmp slt i32 %i.ar, 4
  %i.av = shl nsw i32 %i.ar, 1
  %i.aw = lshr i32 %i.ar, 1
  %i.ax = mul nuw nsw i32 %i.aw, 3
  %i.ay = select i1 %i.au, i32 %i.av, i32 %i.ax   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ba, null
  %i.bb = sext i32 %i.ay to i64
  %i.bc = shl nsw i64 %i.bb, 2                    ; 2 uses
  br i1 %.not.i.i25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef %i.bc) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bc) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = phi ptr [ %i.bd, %bb.i ], [ %i.be, %bb.j ] ; 2 uses
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !32
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.ap, align 8, !tbaa !39
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = fmul nnan double %i.bi, f0x3EB0000000000000
  %i.bk = sitofp i32 %i.ay to double
  %i.bl = fmul nnan double %i.bk, f0x3EB0000000000000
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.bj, double noundef %i.bl) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.bo = tail call i32 @fflush(ptr noundef %i.bn) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.ay, ptr %i.ap, align 8, !tbaa !39
  %.pre.i.i = load i32, ptr %i.aq, align 4, !tbaa !33
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %veci_push.exit.i

veci_push.exit.i:                                 ; preds = %bb.m, %bb.g
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.m ], [ %i.am, %bb.g ] ; 2 uses
  %i.bp = phi i32 [ %.pre.i.i, %bb.m ], [ %i.ar, %bb.g ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !32
  %i.bs = add nsw i32 %i.bp, 1
  store i32 %i.bs, ptr %i.aq, align 4, !tbaa !33
  %i.bt = sext i32 %i.bp to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bt
  store i32 %1, ptr %i.bu, align 4, !tbaa !30
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.b
  %.pre6.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %var_add_tag.exit

var_add_tag.exit:                                 ; preds = %.critedge, %veci_push.exit.i
  %i.bv = phi i8 [ %.pre6.i, %veci_push.exit.i ], [ %i.al, %.critedge ]
  %i.bw = phi ptr [ %.pre.i, %veci_push.exit.i ], [ %i.am, %.critedge ]
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.b
  %i.by = or i8 %i.bv, 32
  store i8 %i.by, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !33 ; 5 uses
  %i.cc = load i32, ptr %i.bz, align 8, !tbaa !39
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.n, label %veci_push.exit

bb.n:                                             ; preds = %var_add_tag.exit
  %i.ce = icmp slt i32 %i.cb, 4
  %i.cf = shl nsw i32 %i.cb, 1
  %i.cg = lshr i32 %i.cb, 1
  %i.ch = mul nuw nsw i32 %i.cg, 3
  %i.ci = select i1 %i.ce, i32 %i.cf, i32 %i.ch   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.ck, null
  %i.cl = sext i32 %i.ci to i64
  %i.cm = shl nsw i64 %i.cl, 2                    ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = tail call ptr @realloc(ptr noundef nonnull %i.ck, i64 noundef %i.cm) #26
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.co = tail call noalias ptr @malloc(i64 noundef %i.cm) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cp = phi ptr [ %i.cn, %bb.o ], [ %i.co, %bb.p ] ; 2 uses
  store ptr %i.cp, ptr %i.cj, align 8, !tbaa !32
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cr = load i32, ptr %i.bz, align 8, !tbaa !39
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fmul nnan double %i.cs, f0x3EB0000000000000
  %i.cu = sitofp i32 %i.ci to double
  %i.cv = fmul nnan double %i.cu, f0x3EB0000000000000
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.ct, double noundef %i.cv) ; 0 uses
  %i.cx = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.cy = tail call i32 @fflush(ptr noundef %i.cx) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 %i.ci, ptr %i.bz, align 8, !tbaa !39
  %.pre.i26 = load i32, ptr %i.ca, align 4, !tbaa !33
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %var_add_tag.exit, %bb.s
  %i.cz = phi i32 [ %.pre.i26, %bb.s ], [ %i.cb, %var_add_tag.exit ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32
  %i.dc = add nsw i32 %i.cz, 1
  store i32 %i.dc, ptr %i.ca, align 4, !tbaa !33
  %i.dd = sext i32 %i.cz to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dd
  store i32 %1, ptr %i.de, align 4, !tbaa !30
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %veci_push.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #22 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !30
  %i.b = load i32, ptr %1, align 4, !tbaa !30
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.a)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !19, i64 248}
!9 = !{!"sat_solver2_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !13, i64 120, !16, i64 176, !17, i64 184, !17, i64 200, !5, i64 216, !5, i64 220, !5, i64 224, !18, i64 232, !11, i64 240, !19, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !17, i64 296, !17, i64 312, !17, i64 328, !17, i64 344, !17, i64 360, !17, i64 376, !17, i64 392, !17, i64 408, !17, i64 424, !17, i64 440, !20, i64 456, !17, i64 464, !5, i64 480, !5, i64 484, !21, i64 488, !10, i64 496, !22, i64 504, !5, i64 512, !23, i64 520, !24, i64 592, !24, i64 600, !24, i64 608}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"Sat_Mem_t_", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !14, i64 48}
!14 = !{!"p2 int", !15, i64 0}
!15 = !{!"any p2 pointer", !12, i64 0}
!16 = !{!"p1 _ZTS6veci_t", !12, i64 0}
!17 = !{!"veci_t", !5, i64 0, !5, i64 4, !11, i64 8}
!18 = !{!"p1 _ZTS10varinfo2_t", !12, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!"p1 _ZTS10Vec_Set_t_", !12, i64 0}
!21 = !{!"p1 _ZTS10Prf_Man_t_", !12, i64 0}
!22 = !{!"p1 _ZTS11Int2_Man_t_", !12, i64 0}
!23 = !{!"stats_t", !5, i64 0, !5, i64 4, !5, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64}
!24 = !{!"long", !6, i64 0}
!25 = !{!6, !6, i64 0}
!26 = !{!9, !18, i64 232}
!27 = !{!9, !5, i64 12}
!28 = !{!9, !5, i64 8}
!29 = !{!9, !11, i64 256}
!30 = !{!5, !5, i64 0}
!31 = !{!9, !16, i64 176}
!32 = !{!17, !11, i64 8}
!33 = !{!17, !5, i64 4}
!34 = !{!9, !24, i64 544}
!35 = !{!13, !5, i64 32}
!36 = !{!13, !5, i64 36}
!37 = !{!13, !14, i64 48}
!38 = !{!11, !11, i64 0}
!39 = !{!17, !5, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!9, !5, i64 108}
!45 = distinct !{!45, !43}
!46 = !{!9, !11, i64 280}
!47 = !{!9, !5, i64 72}
!48 = !{!9, !5, i64 484}
!49 = !{!9, !11, i64 240}
!50 = distinct !{!50, !43}
!51 = !{!9, !11, i64 272}
!52 = distinct !{!52, !43, !53, !54}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !43, !53}
!56 = distinct !{!56, !43}
!57 = !{!9, !24, i64 552}
!58 = distinct !{!58, !43}
!59 = !{!9, !22, i64 504}
!60 = !{!9, !5, i64 512}
!61 = !{!9, !21, i64 488}
!62 = !{!63, !5, i64 8}
!63 = !{!"Prf_Man_t_", !5, i64 0, !5, i64 4, !5, i64 8, !64, i64 16, !65, i64 24, !66, i64 32, !66, i64 40}
!64 = !{!"p1 long", !12, i64 0}
!65 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!66 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!67 = !{!63, !65, i64 24}
!68 = !{!69, !5, i64 4}
!69 = !{!"Vec_Wrd_t_", !5, i64 0, !5, i64 4, !64, i64 8}
!70 = !{!69, !5, i64 0}
!71 = !{!69, !64, i64 8}
!72 = !{!24, !24, i64 0}
!73 = distinct !{!73, !43}
!74 = !{!63, !64, i64 16}
!75 = !{!63, !5, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!80}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !43, !53, !54}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = distinct !{!84, !43, !53}
!85 = !{!63, !66, i64 40}
!86 = !{!87, !11, i64 8}
!87 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !11, i64 8}
!88 = !{!9, !20, i64 456}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !43, !53, !54}
!95 = distinct !{!95, !83}
!96 = distinct !{!96, !43, !53}
!97 = !{!98, !5, i64 8}
!98 = !{!"Vec_Set_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !99, i64 24}
!99 = !{!"p2 long", !15, i64 0}
!100 = !{!98, !99, i64 24}
!101 = !{!98, !5, i64 12}
!102 = !{!64, !64, i64 0}
!103 = !{!98, !5, i64 0}
!104 = !{!98, !5, i64 20}
!105 = !{!13, !5, i64 44}
!106 = !{!9, !5, i64 52}
!107 = distinct !{!107, !43}
!108 = !{!9, !5, i64 528}
!109 = !{!9, !24, i64 576}
!110 = !{!9, !5, i64 480}
!111 = !{!9, !5, i64 524}
!112 = !{!9, !24, i64 568}
!113 = !{!9, !5, i64 44}
!114 = !{!9, !10, i64 24}
!115 = !{!9, !5, i64 104}
!116 = !{!9, !5, i64 224}
!117 = !{!9, !5, i64 4}
!118 = distinct !{!118, !43}
!119 = !{!9, !11, i64 264}
!120 = !{!9, !11, i64 56}
!121 = !{!9, !11, i64 64}
!122 = !{!9, !11, i64 288}
!123 = !{!9, !5, i64 0}
!124 = distinct !{!124, !43}
!125 = distinct !{!125, !43}
!126 = distinct !{!126, !43}
!127 = distinct !{!127, !43}
!128 = !{!63, !66, i64 32}
!129 = distinct !{!129, !43}
!130 = !{!9, !10, i64 496}
!131 = !{!87, !5, i64 0}
!132 = !{!87, !5, i64 4}
!133 = distinct !{!133, !43}
!134 = distinct !{!134, !43}
!135 = distinct !{!135, !43}
!136 = distinct !{!136, !43}
!137 = distinct !{!137, !43}
!138 = distinct !{!138, !43}
!139 = distinct !{!139, !43}
!140 = distinct !{!140, !43}
!141 = distinct !{!141, !43}
!142 = distinct !{!142, !43}
!143 = distinct !{!143, !43}
!144 = !{!145}
!145 = distinct !{!145, !146, !"vprintf: argument 0"}
!146 = distinct !{!146, !"vprintf"}
!147 = distinct !{null}
!148 = !{!149, !24, i64 0}
!149 = !{!"timespec", !24, i64 0, !24, i64 8}
!150 = !{!149, !24, i64 8}
!151 = !{!9, !5, i64 96}
!152 = !{!9, !5, i64 84}
!153 = !{!9, !5, i64 88}
!154 = !{!9, !5, i64 80}
!155 = !{!9, !5, i64 92}
!156 = distinct !{!156, !43}
!157 = distinct !{!157, !43}
!158 = distinct !{!158, !43}
!159 = distinct !{!159, !43}
!160 = distinct !{!160, !43}
!161 = !{!63, !5, i64 4}
!162 = distinct !{!162, !43}
!163 = distinct !{!163, !43, !53, !54}
!164 = distinct !{!164, !83}
end_hunk_1
