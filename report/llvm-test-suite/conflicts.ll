inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@nstates = external local_unnamed_addr global i32, align 4
@conflicts = dso_local local_unnamed_addr global ptr null, align 8
@tokensetsize = external local_unnamed_addr global i32, align 4
@shiftset = internal unnamed_addr global ptr null, align 8
@lookaheadset = internal unnamed_addr global ptr null, align 8
@err_table = dso_local local_unnamed_addr global ptr null, align 8
@any_conflicts = dso_local local_unnamed_addr global i8 0, align 1
@consistent = external local_unnamed_addr global ptr, align 8
@shift_table = external local_unnamed_addr global ptr, align 8
@accessing_symbol = external local_unnamed_addr global ptr, align 8
@ntokens = external local_unnamed_addr global i32, align 4
@lookaheads = external local_unnamed_addr global ptr, align 8
@rprec = external local_unnamed_addr global ptr, align 8
@LAruleno = external local_unnamed_addr global ptr, align 8
@LA = external local_unnamed_addr global ptr, align 8
@sprec = external local_unnamed_addr global ptr, align 8
@verboseflag = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@sassoc = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"an error\00", align 1
@foutput = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"Conflict in state %d between rule %d and token %s resolved as %s.\0A\00", align 1
@tags = external local_unnamed_addr global ptr, align 8
@src_total = internal unnamed_addr global i32 0, align 4
@rrc_total = internal unnamed_addr global i32 0, align 4
@src_count = internal unnamed_addr global i32 0, align 4
@rrc_count = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"State %d contains\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" 1 shift/reduce conflict\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" %d shift/reduce conflicts\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" and\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c" 1 reduce/reduce conflict\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" %d reduce/reduce conflicts\00", align 1
@expected_conflicts = dso_local local_unnamed_addr global i32 0, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"%s contains\00", align 1
@infile = external local_unnamed_addr global ptr, align 8
@error_token_number = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"    %-4s\09[reduce  %d  (%s)]\0A\00", align 1
@rlhs = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"    $default\09reduce  %d  (%s)\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"    %-4s\09reduce  %d  (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"    $default\09reduce  %d  (%s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @initialize_conflicts() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nstates, align 4, !tbaa !4
  %i.b = tail call ptr (i32, ...) @mallocate(i32 noundef %i.a) #14
  store ptr %i.b, ptr @conflicts, align 8, !tbaa !8
  %i.c = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.d = shl i32 %i.c, 2
  %i.e = tail call ptr (i32, ...) @mallocate(i32 noundef %i.d) #14
  store ptr %i.e, ptr @shiftset, align 8, !tbaa !11
  %i.f = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.g = shl i32 %i.f, 2
  %i.h = tail call ptr (i32, ...) @mallocate(i32 noundef %i.g) #14
  store ptr %i.h, ptr @lookaheadset, align 8, !tbaa !11
  %i.i = load i32, ptr @nstates, align 4, !tbaa !4
  %i.j = shl i32 %i.i, 3
  %i.k = tail call ptr (i32, ...) @mallocate(i32 noundef %i.j) #14
  store ptr %i.k, ptr @err_table, align 8, !tbaa !13
  store i8 0, ptr @any_conflicts, align 1, !tbaa !16
  %i.l = load i32, ptr @nstates, align 4, !tbaa !4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @set_conflicts(i32 noundef %.03)
  %i.n = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.o = load i32, ptr @nstates, align 4, !tbaa !4
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare ptr @mallocate(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_conflicts(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @consistent, align 8, !tbaa !8
  %i.b = sext i32 %0 to i64                       ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.preheader61, label %.loopexit

.preheader61:                                     ; preds = %bb.a
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader61
  %i.g = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.h, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b, %.preheader61
  %i.l = phi i32 [ %i.e, %.preheader61 ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22   ; 3 uses
  %.not54 = icmp eq ptr %i.o, null
  br i1 %.not54, label %._crit_edge..loopexit60_crit_edge, label %bb.c

._crit_edge..loopexit60_crit_edge:                ; preds = %._crit_edge
  %.pre = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %.loopexit60

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.q = load i16, ptr %i.p, align 2, !tbaa !24   ; 2 uses
  %i.r = icmp sgt i16 %i.q, 0
  %.pre92 = load ptr, ptr @lookaheadset, align 8  ; 3 uses
  br i1 %i.r, label %.lr.ph65, label %.loopexit60

.lr.ph65:                                         ; preds = %bb.c
  %wide.trip.count = zext nneg i16 %i.q to i64
  %i.s = load ptr, ptr @accessing_symbol, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph65, %bb.e
  %indvars.iv83 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next84, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv83
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !29
  %i.z = sext i16 %i.y to i32                     ; 3 uses
  %i.aa = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not55 = icmp sgt i32 %i.aa, %i.z
  br i1 %.not55, label %bb.e, label %.loopexit60.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %i.z, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.z, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.pre92, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = or i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit60.loopexit, label %bb.d, !llvm.loop !30

.loopexit60.loopexit:                             ; preds = %bb.e, %bb.d
  %.pre93 = load i32, ptr @tokensetsize, align 4, !tbaa !4
  br label %.loopexit60

.loopexit60:                                      ; preds = %._crit_edge..loopexit60_crit_edge, %.loopexit60.loopexit, %bb.c
  %i.ai = phi i32 [ %i.l, %._crit_edge..loopexit60_crit_edge ], [ %.pre93, %.loopexit60.loopexit ], [ %i.l, %bb.c ]
  %i.aj = phi ptr [ %.pre, %._crit_edge..loopexit60_crit_edge ], [ %.pre92, %.loopexit60.loopexit ], [ %.pre92, %bb.c ] ; 3 uses
  %1 = ptrtoint ptr %i.aj to i64
  %i.ak = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.b ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !29 ; 4 uses
  %i.ao = sext i16 %i.an to i32
  %i.ap = sext i32 %i.ai to i64                   ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ap ; 4 uses
  %i.ar = load i16, ptr %i.al, align 2, !tbaa !29 ; 3 uses
  %i.as = icmp slt i16 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph69.preheader, label %._crit_edge70

.lr.ph69.preheader:                               ; preds = %.loopexit60
  %i.at = sext i16 %i.ar to i64
  %wide.trip.count89 = sext i16 %i.an to i64
  %.pre95 = load ptr, ptr @rprec, align 8, !tbaa !27
  %.pre97 = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.loopexit59
  %i.au = phi ptr [ %.pre97, %.lr.ph69.preheader ], [ %i.bo, %.loopexit59 ] ; 3 uses
  %i.av = phi ptr [ %.pre95, %.lr.ph69.preheader ], [ %i.bp, %.loopexit59 ] ; 3 uses
  %indvars.iv86 = phi i64 [ %i.at, %.lr.ph69.preheader ], [ %indvars.iv.next87, %.loopexit59 ] ; 4 uses
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.au, i64 %indvars.iv86
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !29
  %i.ay = sext i16 %i.ax to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !29
  %.not57 = icmp eq i16 %i.ba, 0
  br i1 %.not57, label %.loopexit59, label %bb.f

bb.f:                                             ; preds = %.lr.ph69
  %i.bb = load ptr, ptr @LA, align 8, !tbaa !11
  %i.bc = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %indvars.iv86, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.047 = phi ptr [ %i.bf, %bb.f ], [ %i.bi, %bb.h ] ; 2 uses
  %.044 = phi ptr [ %i.bg, %bb.f ], [ %i.bk, %bb.h ] ; 3 uses
  %i.bh = icmp ult ptr %.044, %i.aq
  br i1 %i.bh, label %bb.h, label %.loopexit59

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.047, i64 4
  %i.bj = load i32, ptr %.047, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.bl = load i32, ptr %.044, align 4, !tbaa !4
  %i.bm = and i32 %i.bl, %i.bj
  %.not58 = icmp eq i32 %i.bm, 0
  br i1 %.not58, label %bb.g, label %bb.i, !llvm.loop !31

bb.i:                                             ; preds = %bb.h
  %i.bn = trunc nsw i64 %indvars.iv86 to i32
  tail call void @resolve_sr_conflict(i32 noundef %0, i32 noundef %i.bn)
  %.pre94 = load ptr, ptr @rprec, align 8, !tbaa !27
  %.pre96 = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.loopexit59

.loopexit59:                                      ; preds = %bb.g, %.lr.ph69, %bb.i
  %i.bo = phi ptr [ %.pre96, %bb.i ], [ %i.au, %.lr.ph69 ], [ %i.au, %bb.g ]
  %i.bp = phi ptr [ %.pre94, %bb.i ], [ %i.av, %.lr.ph69 ], [ %i.av, %bb.g ]
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge70.loopexit, label %.lr.ph69, !llvm.loop !32

._crit_edge70.loopexit:                           ; preds = %.loopexit59
  %.pre98 = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds [2 x i8], ptr %.pre98, i64 %i.b
  %.pre99 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !29
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit, %.loopexit60
  %i.bq = phi i16 [ %.pre99, %._crit_edge70.loopexit ], [ %i.ar, %.loopexit60 ] ; 2 uses
  %i.br = icmp slt i16 %i.bq, %i.an
  br i1 %i.br, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %._crit_edge70
  %i.bs = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 10 uses
  %i.bt = icmp ult ptr %i.bs, %i.aq
  br i1 %i.bt, label %.lr.ph74.us.us.preheader, label %.loopexit

.lr.ph74.us.us.preheader:                         ; preds = %.lr.ph81
  %2 = ptrtoint ptr %i.bs to i64                  ; 2 uses
  %i.bu = sext i16 %i.bq to i32
  %i.bv = shl nsw i64 %i.ap, 2
  %i.bw = add i64 %i.bv, %1
  %i.bx = add i64 %2, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bx)
  %i.by = xor i64 %2, -1
  %i.bz = add i64 %umax, %i.by
  %i.ca = and i64 %i.bz, -4
  %i.cb = add i64 %i.ca, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.cb
  %3 = ptrtoint ptr %i.aj to i64
  %i.cc = shl nsw i64 %i.ap, 2
  %i.cd = add i64 %i.cc, %3
  %4 = ptrtoint ptr %i.bs to i64                  ; 2 uses
  %i.ce = add i64 %4, 4
  %i.cf = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.ce)
  %i.cg = xor i64 %4, -1
  %i.ch = add i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 28
  %n.vec = and i64 %i.cj, 9223372036854775800     ; 3 uses
  %i.ck = shl i64 %n.vec, 2                       ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bs, i64 %i.ck
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %.lr.ph74.us.us.preheader, %._crit_edge78.us.us
  %.379.us.us = phi i32 [ %i.dn, %._crit_edge78.us.us ], [ %i.bu, %.lr.ph74.us.us.preheader ] ; 2 uses
  %i.cm = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.cn = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.co = mul i32 %i.cn, %.379.us.us
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp ; 6 uses
  br label %bb.j

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader115, %..preheader_crit_edge.us.us
  %.24676.us.us = phi ptr [ %i.ct, %..preheader_crit_edge.us.us ], [ %.24676.us.us.ph, %..preheader_crit_edge.us.us.preheader115 ] ; 3 uses
  %.24975.us.us = phi ptr [ %i.cr, %..preheader_crit_edge.us.us ], [ %.24975.us.us.ph, %..preheader_crit_edge.us.us.preheader115 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.24975.us.us, i64 4
  %i.cs = load i32, ptr %.24975.us.us, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.24676.us.us, i64 4 ; 2 uses
  %i.cu = load i32, ptr %.24676.us.us, align 4, !tbaa !4
  %i.cv = or i32 %i.cu, %i.cs
  store i32 %i.cv, ptr %.24676.us.us, align 4, !tbaa !4
  %i.cw = icmp ult ptr %i.ct, %i.aq
  br i1 %i.cw, label %..preheader_crit_edge.us.us, label %._crit_edge78.us.us, !llvm.loop !33

bb.j:                                             ; preds = %bb.l, %.lr.ph74.us.us
  %.14572.us.us = phi ptr [ %i.bs, %.lr.ph74.us.us ], [ %i.cz, %bb.l ] ; 2 uses
  %.14871.us.us = phi ptr [ %i.cq, %.lr.ph74.us.us ], [ %i.cx, %bb.l ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.14871.us.us, i64 4
  %i.cy = load i32, ptr %.14871.us.us, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %.14572.us.us, i64 4 ; 2 uses
  %i.da = load i32, ptr %.14572.us.us, align 4, !tbaa !4
  %i.db = and i32 %i.da, %i.cy
  %.not56.us.us = icmp eq i32 %i.db, 0
  br i1 %.not56.us.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = load ptr, ptr @conflicts, align 8, !tbaa !8
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.b
  store i8 1, ptr %i.dd, align 1, !tbaa !16
  store i8 1, ptr @any_conflicts, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.de = icmp ult ptr %i.cz, %i.aq
  br i1 %i.de, label %bb.j, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !35

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.l
  br i1 %min.iters.check, label %..preheader_crit_edge.us.us.preheader115, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us.preheader
  %scevgep108 = getelementptr i8, ptr %i.cm, i64 %i.cb
  %i.df = shl nsw i64 %i.cp, 2
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.df
  %bound0 = icmp ult ptr %i.bs, %scevgep109
  %bound1 = icmp ult ptr %i.cq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %..preheader_crit_edge.us.us.preheader115, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dg = getelementptr i8, ptr %i.cq, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.dh ; 3 uses
  %next.gep110 = getelementptr i8, ptr %i.cq, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep110, align 4, !tbaa !4, !alias.scope !36
  %wide.load111 = load <4 x i32>, ptr %i.di, align 4, !tbaa !4, !alias.scope !36
  %i.dj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load112 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !39, !noalias !36
  %wide.load113 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4, !alias.scope !39, !noalias !36
  %i.dk = or <4 x i32> %wide.load112, %wide.load
  %i.dl = or <4 x i32> %wide.load113, %wide.load111
  store <4 x i32> %i.dk, ptr %next.gep, align 4, !tbaa !4, !alias.scope !39, !noalias !36
  store <4 x i32> %i.dl, ptr %i.dj, align 4, !tbaa !4, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge78.us.us, label %..preheader_crit_edge.us.us.preheader115

..preheader_crit_edge.us.us.preheader115:         ; preds = %vector.memcheck, %..preheader_crit_edge.us.us.preheader, %middle.block
  %.24676.us.us.ph = phi ptr [ %i.bs, %vector.memcheck ], [ %i.bs, %..preheader_crit_edge.us.us.preheader ], [ %i.cl, %middle.block ]
  %.24975.us.us.ph = phi ptr [ %i.cq, %vector.memcheck ], [ %i.cq, %..preheader_crit_edge.us.us.preheader ], [ %i.dg, %middle.block ]
  br label %..preheader_crit_edge.us.us

._crit_edge78.us.us:                              ; preds = %..preheader_crit_edge.us.us, %middle.block
  %i.dn = add nsw i32 %.379.us.us, 1              ; 2 uses
  %exitcond91.not = icmp eq i32 %i.dn, %i.ao
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph74.us.us, !llvm.loop !43

.loopexit:                                        ; preds = %._crit_edge78.us.us, %._crit_edge70, %.lr.ph81, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resolve_sr_conflict(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 1
  %i.d = add nsw i64 %i.c, 4
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.g = load ptr, ptr @rprec, align 8, !tbaa !27
  %i.h = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.i = sext i32 %1 to i64                       ; 4 uses
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !29
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !29   ; 2 uses
  %i.o = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %i.r = load ptr, ptr @LA, align 8, !tbaa !11
  %i.s = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.t = mul nsw i32 %i.s, %1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  %i.w = sext i32 %0 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %flush_shift.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %flush_shift.exit ] ; 14 uses
  %.095 = phi ptr [ %i.f, %.lr.ph ], [ %.1, %flush_shift.exit ] ; 14 uses
  %.06292 = phi i32 [ 1, %.lr.ph ], [ %.163, %flush_shift.exit ] ; 5 uses
  %.06491 = phi ptr [ %i.q, %.lr.ph ], [ %.165, %flush_shift.exit ] ; 6 uses
  %.06690 = phi ptr [ %i.v, %.lr.ph ], [ %.167, %flush_shift.exit ] ; 8 uses
  %i.x = load i32, ptr %.06491, align 4, !tbaa !4 ; 2 uses
  %i.y = load i32, ptr %.06690, align 4, !tbaa !4 ; 2 uses
  %i.z = and i32 %i.x, %i.y
  %i.aa = and i32 %i.z, %.06292
  %.not71 = icmp eq i32 %i.aa, 0
  br i1 %.not71, label %flush_shift.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr @sprec, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !29 ; 3 uses
  %.not72 = icmp eq i16 %i.ad, 0
  br i1 %.not72, label %flush_shift.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp slt i16 %i.ad, %i.n
  br i1 %i.ae, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr @verboseflag, align 4, !tbaa !4
  %.not79 = icmp eq i32 %i.af, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.ah = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !29
  %i.ak = sext i16 %i.aj to i32
  %i.al = load ptr, ptr @tags, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %i.ak, ptr noundef %i.an, ptr noundef nonnull @.str) #14 ; 0 uses
  %.pre98 = load i32, ptr %.06491, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi i32 [ %.pre98, %bb.f ], [ %i.x, %bb.e ]
  %i.aq = xor i32 %.06292, -1
  %i.ar = and i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %.06491, align 4, !tbaa !4
  %i.as = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.w
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %flush_shift.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !24 ; 4 uses
  %i.ax = icmp sgt i16 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %flush_shift.exit

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i16 %i.aw to i64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 3 uses
  %i.az = load ptr, ptr @accessing_symbol, align 8 ; 3 uses
  %xtraiter116 = and i64 %wide.trip.count.i, 1
end_hunk_0
begin_hunk_1_@conflict_log:bb.a
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.e, %.preheader.lr.ph.i
  %.034.us.i = phi i32 [ %i.ah, %bb.e ], [ 0, %.preheader.lr.ph.i ]
  %.02133.us.i = phi ptr [ %spec.select28.us.i, %bb.e ], [ %i.z, %.preheader.lr.ph.i ] ; 3 uses
  %.02232.us.i = phi i32 [ %spec.select27.us.i, %bb.e ], [ 1, %.preheader.lr.ph.i ] ; 6 uses
  %i.ac = phi i32 [ %i.ae, %bb.e ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  br i1 %i.ab, label %.epil.preheader, label %.preheader.us.i.new

bb.d:                                             ; preds = %._crit_edge.us.i
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.ad, ptr @rrc_count, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.i, %bb.d
  %i.ae = phi i32 [ %i.ad, %bb.d ], [ %i.ac, %._crit_edge.us.i ] ; 2 uses
  %i.af = shl i32 %.02232.us.i, 1                 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select27.us.i = tail call i32 @llvm.umax.i32(i32 %i.af, i32 1)
  %spec.select28.idx.us.i = select i1 %i.ag, i64 4, i64 0
  %spec.select28.us.i = getelementptr inbounds nuw i8, ptr %.02133.us.i, i64 %spec.select28.idx.us.i
  %i.ah = add nuw nsw i32 %.034.us.i, 1           ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.ah, %i.s
  br i1 %exitcond36.not.i, label %count_rr_conflicts.exit, label %.preheader.us.i, !llvm.loop !54

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %.02030.us.i = phi ptr [ %i.ax, %.preheader.us.i.new ], [ %.02133.us.i, %.preheader.us.i ] ; 2 uses
  %.02429.us.i = phi i32 [ %spec.select.us.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %niter = phi i32 [ %niter.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.ai = load i32, ptr %.02030.us.i, align 4, !tbaa !4
  %i.aj = and i32 %i.ai, %.02232.us.i
  %.not.us.i = icmp ne i32 %i.aj, 0
  %i.ak = zext i1 %.not.us.i to i32
  %spec.select.us.i = add nuw nsw i32 %.02429.us.i, %i.ak
  %i.al = getelementptr inbounds [4 x i8], ptr %.02030.us.i, i64 %i.v ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = and i32 %i.am, %.02232.us.i
  %.not.us.i.1 = icmp ne i32 %i.an, 0
  %i.ao = zext i1 %.not.us.i.1 to i32
  %spec.select.us.i.1 = add nuw nsw i32 %spec.select.us.i, %i.ao
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.v ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = and i32 %i.aq, %.02232.us.i
  %.not.us.i.2 = icmp ne i32 %i.ar, 0
  %i.as = zext i1 %.not.us.i.2 to i32
  %spec.select.us.i.2 = add nuw nsw i32 %spec.select.us.i.1, %i.as
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.v ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = and i32 %i.au, %.02232.us.i
  %.not.us.i.3 = icmp ne i32 %i.av, 0
  %i.aw = zext i1 %.not.us.i.3 to i32
  %spec.select.us.i.3 = add nuw nsw i32 %spec.select.us.i.2, %i.aw ; 3 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.v ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !55

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %.02030.us.i.epil.init = phi ptr [ %.02133.us.i, %.preheader.us.i ], [ %i.ax, %._crit_edge.us.i.unr-lcssa ]
  %.02429.us.i.epil.init = phi i32 [ 0, %.preheader.us.i ], [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.02030.us.i.epil = phi ptr [ %.02030.us.i.epil.init, %.epil.preheader ], [ %i.bb, %bb.f ] ; 2 uses
  %.02429.us.i.epil = phi i32 [ %.02429.us.i.epil.init, %.epil.preheader ], [ %spec.select.us.i.epil, %bb.f ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ay = load i32, ptr %.02030.us.i.epil, align 4, !tbaa !4
  %i.az = and i32 %i.ay, %.02232.us.i
  %.not.us.i.epil = icmp ne i32 %i.az, 0
  %i.ba = zext i1 %.not.us.i.epil to i32
  %spec.select.us.i.epil = add nuw nsw i32 %.02429.us.i.epil, %i.ba ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.02030.us.i.epil, i64 %i.v
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.f, !llvm.loop !56

._crit_edge.us.i:                                 ; preds = %bb.f, %._crit_edge.us.i.unr-lcssa
  %spec.select.us.i.lcssa = phi i32 [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ], [ %spec.select.us.i.epil, %bb.f ]
  %i.bc = icmp samesign ugt i32 %spec.select.us.i.lcssa, 1
  br i1 %i.bc, label %bb.d, label %bb.e

count_rr_conflicts.exit:                          ; preds = %bb.e, %bb.b, %bb.c
  %i.bd = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %i.be = load i32, ptr @src_count, align 4, !tbaa !4
  %i.bf = add nsw i32 %i.e, %i.be                 ; 2 uses
  store i32 %i.bf, ptr @src_total, align 4, !tbaa !4
  %i.bg = add nsw i32 %i.f, %i.bd                 ; 2 uses
  store i32 %i.bg, ptr @rrc_total, align 4, !tbaa !4
  %.pre8 = load i32, ptr @nstates, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %count_rr_conflicts.exit
  %i.bh = phi i32 [ %i.c, %.lr.ph ], [ %.pre8, %count_rr_conflicts.exit ] ; 2 uses
  %i.bi = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %count_rr_conflicts.exit ]
  %i.bj = phi i32 [ %i.f, %.lr.ph ], [ %i.bg, %count_rr_conflicts.exit ]
  %i.bk = phi i32 [ %i.e, %.lr.ph ], [ %i.bf, %count_rr_conflicts.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = sext i32 %i.bh to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.g, %bb.a
  tail call void @total_conflicts()
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @count_sr_conflicts(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  store i32 0, ptr @src_count, align 4, !tbaa !4
  %i.a = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader53

.preheader53:                                     ; preds = %bb.a
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader53
  %i.g = load ptr, ptr @shiftset, align 8, !tbaa !11
  %i.h = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 0, ptr %i.j, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.b, %.preheader53
  %i.n = phi i32 [ %i.e, %.preheader53 ], [ %i.k, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !24   ; 2 uses
  %i.q = icmp sgt i16 %i.p, 0
  br i1 %i.q, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %._crit_edge
  %wide.trip.count = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.s = load ptr, ptr @accessing_symbol, align 8
  %i.t = load ptr, ptr @shiftset, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv78 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next79, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv78
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29   ; 2 uses
  %.not49 = icmp eq i16 %i.v, 0
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !29
  %i.z = sext i16 %i.y to i32                     ; 3 uses
  %i.aa = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not50 = icmp sgt i32 %i.aa, %i.z
  br i1 %.not50, label %bb.e, label %._crit_edge58.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %i.z, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.z, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = or i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58.loopexit, label %bb.c, !llvm.loop !60

._crit_edge58.loopexit:                           ; preds = %bb.d, %bb.f
  %.pre = load i32, ptr @tokensetsize, align 4, !tbaa !4
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge58.loopexit, %._crit_edge
  %i.ai = phi i32 [ %.pre, %._crit_edge58.loopexit ], [ %i.n, %._crit_edge ] ; 3 uses
  %i.aj = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %i.ak = getelementptr [2 x i8], ptr %i.aj, i64 %i.b ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !29 ; 2 uses
  %i.an = sext i16 %i.am to i32
  %i.ao = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 18 uses
  %1 = ptrtoint ptr %i.ao to i64                  ; 6 uses
  %i.ap = sext i32 %i.ai to i64
  %.idx = shl nsw i64 %i.ap, 2                    ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %.idx ; 2 uses
  %i.ar = load i16, ptr %i.ak, align 2, !tbaa !29 ; 2 uses
  %i.as = icmp slt i16 %i.ar, %i.am
  br i1 %i.as, label %.lr.ph67, label %._crit_edge68.split

.lr.ph67:                                         ; preds = %._crit_edge58
  %i.at = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.au = icmp sgt i32 %i.ai, 0
  br i1 %i.au, label %.lr.ph63.preheader, label %.preheader

.lr.ph63.preheader:                               ; preds = %.lr.ph67
  %i.av = sext i16 %i.ar to i32
  %i.aw = add i64 %.idx, %1
  %i.ax = add i64 %1, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.ax)
  %i.ay = xor i64 %1, -1
  %i.az = add i64 %umax, %i.ay
  %i.ba = and i64 %i.az, -4
  %i.bb = add i64 %i.ba, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.bb
  %scevgep90 = getelementptr i8, ptr %i.at, i64 %i.bb
  %2 = ptrtoint ptr %i.ao to i64                  ; 3 uses
  %i.bc = add i64 %.idx, %2
  %i.bd = add i64 %2, 4
  %i.be = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.bd)
  %i.bf = xor i64 %2, -1
  %i.bg = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ao, i64 %i.bj
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %._crit_edge64
  %.265 = phi i32 [ %i.cd, %._crit_edge64 ], [ %i.av, %.lr.ph63.preheader ] ; 2 uses
  %i.bl = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.bm = mul i32 %i.bl, %.265
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.at, i64 %i.bn ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph63
  %i.bp = shl nsw i64 %i.bn, 2
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.bp
  %bound0 = icmp ult ptr %i.ao, %scevgep91
  %bound1 = icmp ult ptr %i.bo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.br ; 3 uses
  %next.gep92 = getelementptr i8, ptr %i.bo, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !4, !alias.scope !61
  %wide.load93 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4, !alias.scope !61
  %i.bt = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load94 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !64, !noalias !61
  %wide.load95 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !4, !alias.scope !64, !noalias !61
  %i.bu = or <4 x i32> %wide.load94, %wide.load
  %i.bv = or <4 x i32> %wide.load95, %wide.load93
  store <4 x i32> %i.bu, ptr %next.gep, align 4, !tbaa !4, !alias.scope !64, !noalias !61
  store <4 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !4, !alias.scope !64, !noalias !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge64, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph63, %middle.block
  %.03761.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph63 ], [ %i.bk, %middle.block ]
  %.04160.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph63 ], [ %i.bq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03761 = phi ptr [ %i.bz, %scalar.ph ], [ %.03761.ph, %scalar.ph.preheader ] ; 3 uses
  %.04160 = phi ptr [ %i.bx, %scalar.ph ], [ %.04160.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.04160, i64 4
  %i.by = load i32, ptr %.04160, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.03761, i64 4 ; 2 uses
  %i.ca = load i32, ptr %.03761, align 4, !tbaa !4
  %i.cb = or i32 %i.ca, %i.by
  store i32 %i.cb, ptr %.03761, align 4, !tbaa !4
  %i.cc = icmp ult ptr %i.bz, %i.aq
  br i1 %i.cc, label %scalar.ph, label %._crit_edge64, !llvm.loop !67

._crit_edge64:                                    ; preds = %scalar.ph, %middle.block
  %i.cd = add nsw i32 %.265, 1                    ; 2 uses
  %exitcond81.not = icmp eq i32 %i.cd, %i.an
  br i1 %exitcond81.not, label %._crit_edge68.split, label %.lr.ph63, !llvm.loop !68

._crit_edge68.split:                              ; preds = %._crit_edge64, %._crit_edge58
  %i.ce = icmp sgt i32 %i.ai, 0
  br i1 %i.ce, label %.lr.ph72.preheader, label %.preheader

.lr.ph72.preheader:                               ; preds = %._crit_edge68.split
  %i.cf = load ptr, ptr @shiftset, align 8, !tbaa !11 ; 6 uses
  %3 = ptrtoint ptr %i.ao to i64                  ; 3 uses
  %i.cg = add i64 %.idx, %3
  %i.ch = add i64 %3, 4
  %i.ci = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ch)
  %i.cj = xor i64 %3, -1
  %i.ck = add i64 %i.ci, %i.cj                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.ck, 92
  br i1 %min.iters.check105, label %.lr.ph72.preheader122, label %vector.memcheck97

vector.memcheck97:                                ; preds = %.lr.ph72.preheader
  %i.cn = add i64 %.idx, %1
  %i.co = add i64 %1, 4
  %umax98 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.co)
  %i.cp = xor i64 %1, -1
  %i.cq = add i64 %umax98, %i.cp
  %i.cr = and i64 %i.cq, -4
  %i.cs = add i64 %i.cr, 4                        ; 2 uses
  %scevgep99 = getelementptr i8, ptr %i.ao, i64 %i.cs
  %scevgep100 = getelementptr i8, ptr %i.cf, i64 %i.cs
  %bound0101 = icmp ult ptr %i.ao, %scevgep100
  %bound1102 = icmp ult ptr %i.cf, %scevgep99
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph72.preheader122, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck97
  %n.vec108 = and i64 %i.cm, 9223372036854775800  ; 3 uses
  %i.ct = shl i64 %n.vec108, 2                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ao, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cf, i64 %i.ct
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next117, %vector.body109 ] ; 2 uses
  %i.cw = shl i64 %index110, 2                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.ao, i64 %i.cw ; 3 uses
  %next.gep112 = getelementptr i8, ptr %i.cf, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113 = load <4 x i32>, ptr %next.gep112, align 4, !tbaa !4, !alias.scope !69
  %wide.load114 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !4, !alias.scope !69
  %i.cy = getelementptr i8, ptr %next.gep111, i64 16 ; 2 uses
  %wide.load115 = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !4, !alias.scope !72, !noalias !69
  %wide.load116 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !4, !alias.scope !72, !noalias !69
  %i.cz = and <4 x i32> %wide.load115, %wide.load113
  %i.da = and <4 x i32> %wide.load116, %wide.load114
  store <4 x i32> %i.cz, ptr %next.gep111, align 4, !tbaa !4, !alias.scope !72, !noalias !69
  store <4 x i32> %i.da, ptr %i.cy, align 4, !tbaa !4, !alias.scope !72, !noalias !69
  %index.next117 = add nuw i64 %index110, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next117, %n.vec108
  br i1 %i.db, label %middle.block118, label %vector.body109, !llvm.loop !74

middle.block118:                                  ; preds = %vector.body109
  %cmp.n119 = icmp eq i64 %i.cm, %n.vec108
  br i1 %cmp.n119, label %.preheader, label %.lr.ph72.preheader122

.lr.ph72.preheader122:                            ; preds = %vector.memcheck97, %.lr.ph72.preheader, %middle.block118
  %.13870.ph = phi ptr [ %i.ao, %vector.memcheck97 ], [ %i.ao, %.lr.ph72.preheader ], [ %i.cu, %middle.block118 ]
  %.14269.ph = phi ptr [ %i.cf, %vector.memcheck97 ], [ %i.cf, %.lr.ph72.preheader ], [ %i.cv, %middle.block118 ]
  br label %.lr.ph72

.preheader:                                       ; preds = %.lr.ph72, %middle.block118, %.lr.ph67, %._crit_edge68.split
  %i.dc = load i32, ptr @ntokens, align 4, !tbaa !4 ; 5 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.dc, 1
  %i.de = icmp eq i32 %i.dc, 1
  br i1 %i.de, label %.lr.ph76.epil.preheader, label %.lr.ph76.preheader.new

.lr.ph76.preheader.new:                           ; preds = %.lr.ph76.preheader
  %unroll_iter = and i32 %i.dc, 2147483646
  br label %.lr.ph76

.lr.ph72:                                         ; preds = %.lr.ph72.preheader122, %.lr.ph72
  %.13870 = phi ptr [ %i.dh, %.lr.ph72 ], [ %.13870.ph, %.lr.ph72.preheader122 ] ; 3 uses
  %.14269 = phi ptr [ %i.df, %.lr.ph72 ], [ %.14269.ph, %.lr.ph72.preheader122 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.14269, i64 4
  %i.dg = load i32, ptr %.14269, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %.13870, i64 4 ; 2 uses
  %i.di = load i32, ptr %.13870, align 4, !tbaa !4
  %i.dj = and i32 %i.di, %i.dg
  store i32 %i.dj, ptr %.13870, align 4, !tbaa !4
  %i.dk = icmp ult ptr %i.dh, %i.aq
  br i1 %i.dk, label %.lr.ph72, label %.preheader, !llvm.loop !75

.lr.ph76:                                         ; preds = %bb.i, %.lr.ph76.preheader.new
  %.23974 = phi ptr [ %i.ao, %.lr.ph76.preheader.new ], [ %spec.select52.1, %bb.i ] ; 2 uses
  %.04373 = phi i32 [ 1, %.lr.ph76.preheader.new ], [ %spec.select.1, %bb.i ] ; 2 uses
  %i.dl = phi i32 [ 0, %.lr.ph76.preheader.new ], [ %i.dv, %bb.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph76.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.dm = load i32, ptr %.23974, align 4, !tbaa !4
  %i.dn = and i32 %i.dm, %.04373
  %.not51 = icmp eq i32 %i.dn, 0
  br i1 %.not51, label %.lr.ph76.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph76
  %i.do = add nsw i32 %i.dl, 1                    ; 2 uses
  store i32 %i.do, ptr @src_count, align 4, !tbaa !4
  br label %.lr.ph76.1

.lr.ph76.1:                                       ; preds = %bb.g, %.lr.ph76
  %i.dp = phi i32 [ %i.do, %bb.g ], [ %i.dl, %.lr.ph76 ] ; 2 uses
  %i.dq = shl i32 %.04373, 1                      ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 0
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.dq, i32 1) ; 2 uses
  %spec.select52.idx = select i1 %i.dr, i64 4, i64 0
  %spec.select52 = getelementptr inbounds nuw i8, ptr %.23974, i64 %spec.select52.idx ; 2 uses
  %i.ds = load i32, ptr %spec.select52, align 4, !tbaa !4
  %i.dt = and i32 %i.ds, %spec.select
  %.not51.1 = icmp eq i32 %i.dt, 0
  br i1 %.not51.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph76.1
  %i.du = add nsw i32 %i.dp, 1                    ; 2 uses
  store i32 %i.du, ptr @src_count, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph76.1
  %i.dv = phi i32 [ %i.du, %bb.h ], [ %i.dp, %.lr.ph76.1 ] ; 2 uses
  %i.dw = shl i32 %spec.select, 1                 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  %spec.select.1 = tail call i32 @llvm.umax.i32(i32 %i.dw, i32 1) ; 2 uses
  %spec.select52.idx.1 = select i1 %i.dx, i64 4, i64 0
  %spec.select52.1 = getelementptr inbounds nuw i8, ptr %spec.select52, i64 %spec.select52.idx.1 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76, !llvm.loop !76

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph76.epil.preheader

.lr.ph76.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.preheader
  %.23974.epil.init = phi ptr [ %i.ao, %.lr.ph76.preheader ], [ %spec.select52.1, %.loopexit.loopexit.unr-lcssa ]
  %.04373.epil.init = phi i32 [ 1, %.lr.ph76.preheader ], [ %spec.select.1, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph76.preheader ], [ %i.dv, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod123 = trunc i32 %i.dc to i1
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.dy = load i32, ptr %.23974.epil.init, align 4, !tbaa !4
  %i.dz = and i32 %i.dy, %.04373.epil.init
  %.not51.epil = icmp eq i32 %i.dz, 0
  br i1 %.not51.epil, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph76.epil.preheader
  %i.ea = add nsw i32 %.epil.init, 1
  store i32 %i.ea, ptr @src_count, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph76.epil.preheader, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @count_rr_conflicts(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  store i32 0, ptr @rrc_count, align 4, !tbaa !4
  %i.a = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !29   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !29   ; 2 uses
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = sub nsw i32 %i.h, %i.e                   ; 3 uses
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.n = icmp slt i16 %i.d, %i.g
  %i.o = sext i32 %i.m to i64                     ; 5 uses
  br i1 %i.n, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.p = load ptr, ptr @LA, align 8, !tbaa !11
  %i.q = mul nsw i32 %i.m, %i.e
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.r
  %xtraiter = and i32 %i.i, 3                     ; 3 uses
  %i.t = sub nsw i32 %i.e, %i.h
  %i.u = icmp ugt i32 %i.t, -4
  %unroll_iter = and i32 %i.i, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.d
  %.034.us = phi i32 [ %i.aa, %bb.d ], [ 0, %.preheader.us.preheader ]
  %.02133.us = phi ptr [ %spec.select28.us, %bb.d ], [ %i.s, %.preheader.us.preheader ] ; 3 uses
  %.02232.us = phi i32 [ %spec.select27.us, %bb.d ], [ 1, %.preheader.us.preheader ] ; 6 uses
  %i.v = phi i32 [ %i.x, %bb.d ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br i1 %i.u, label %.epil.preheader, label %.preheader.us.new

bb.c:                                             ; preds = %._crit_edge.us
  %i.w = add nsw i32 %i.v, 1                      ; 2 uses
  store i32 %i.w, ptr @rrc_count, align 4, !tbaa !4
  br label %bb.d
end_hunk_1
begin_hunk_2_@fflush

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_reductions(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @shiftset, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.f = sext i32 %i.e to i64
  %i.g = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %bb.b, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.i = sext i32 %0 to i64                       ; 3 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 5 uses
  %.not = icmp eq ptr %i.k, null                  ; 2 uses
  br i1 %.not, label %.loopexit211, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24   ; 2 uses
  %i.n = icmp sgt i16 %i.m, 0
  br i1 %i.n, label %.lr.ph216, label %.loopexit211

.lr.ph216:                                        ; preds = %bb.c
  %wide.trip.count = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.p = load ptr, ptr @accessing_symbol, align 8
  %i.q = load ptr, ptr @shiftset, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph216, %bb.g
  %indvars.iv282 = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next283, %bb.g ] ; 2 uses
  %.0134214 = phi i32 [ 0, %.lr.ph216 ], [ %.2136, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv282
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29   ; 2 uses
  %.not190 = icmp eq i16 %i.s, 0
  br i1 %.not190, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sext i16 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = sext i16 %i.v to i32                     ; 4 uses
  %i.x = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not191 = icmp sgt i32 %i.x, %i.w
  br i1 %.not191, label %bb.f, label %.loopexit211.loopexit

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr @error_token_number, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, %i.w
  %spec.select = select i1 %i.z, i32 1, i32 %.0134214
  %i.aa = and i32 %i.w, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = ashr i32 %i.w, 5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = or i32 %i.af, %i.ab
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.2136 = phi i32 [ %spec.select, %bb.f ], [ %.0134214, %bb.d ] ; 2 uses
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit211.loopexit, label %bb.d, !llvm.loop !81

.loopexit211.loopexit:                            ; preds = %bb.g, %bb.e
  %.3137.ph = phi i32 [ %.2136, %bb.g ], [ %.0134214, %bb.e ]
  %i.ah = icmp ne i32 %.3137.ph, 0
  br label %.loopexit211

.loopexit211:                                     ; preds = %.loopexit211.loopexit, %bb.c, %._crit_edge
  %.3137 = phi i1 [ false, %._crit_edge ], [ false, %bb.c ], [ %i.ah, %.loopexit211.loopexit ] ; 2 uses
  %i.ai = load ptr, ptr @err_table, align 8, !tbaa !13
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52 ; 3 uses
  %.not192 = icmp eq ptr %i.ak, null
  br i1 %.not192, label %.loopexit210, label %bb.h

bb.h:                                             ; preds = %.loopexit211
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !50 ; 4 uses
  %i.am = icmp sgt i16 %i.al, 0
  br i1 %i.am, label %.lr.ph221, label %.loopexit210

.lr.ph221:                                        ; preds = %bb.h
  %wide.trip.count288 = zext nneg i16 %i.al to i64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 3 uses
  %i.ao = load ptr, ptr @shiftset, align 8        ; 3 uses
  %xtraiter = and i64 %wide.trip.count288, 1
  %i.ap = icmp eq i16 %i.al, 1
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph221.new

.lr.ph221.new:                                    ; preds = %.lr.ph221
  %unroll_iter = and i64 %wide.trip.count288, 32766
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph221.new
  %indvars.iv285 = phi i64 [ 0, %.lr.ph221.new ], [ %indvars.iv.next286.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph221.new ], [ %niter.next.1, %bb.m ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv285
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !29 ; 2 uses
  %.not201 = icmp eq i16 %i.ar, 0
  br i1 %.not201, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = ashr i32 %i.as, 5
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = or i32 %i.ay, %i.au
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv285
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29 ; 2 uses
  %.not201.1 = icmp eq i16 %i.bc, 0
  br i1 %.not201.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = sext i16 %i.bc to i32                   ; 2 uses
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = ashr i32 %i.bd, 5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = or i32 %i.bj, %i.bf
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit210.loopexit.unr-lcssa, label %bb.i, !llvm.loop !82

.loopexit210.loopexit.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit210, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit210.loopexit.unr-lcssa, %.lr.ph221
  %indvars.iv285.epil.init = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next286.1, %.loopexit210.loopexit.unr-lcssa ]
  %lcmp.mod400 = trunc i16 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv285.epil.init
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !29 ; 2 uses
  %.not201.epil = icmp eq i16 %i.bm, 0
  br i1 %.not201.epil, label %.loopexit210, label %bb.n

bb.n:                                             ; preds = %.epil.preheader
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %i.bo = and i32 %i.bn, 31
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = ashr i32 %i.bn, 5
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = or i32 %i.bt, %i.bp
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  br label %.loopexit210

.loopexit210:                                     ; preds = %.loopexit210.loopexit.unr-lcssa, %bb.n, %.epil.preheader, %bb.h, %.loopexit211
  %i.bv = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.i ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !29 ; 6 uses
  %i.by = sext i16 %i.bx to i32                   ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !29 ; 5 uses
  %i.cb = sext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.cb, %i.by                ; 2 uses
  %i.cd = icmp ne i32 %i.cc, 1
  %or.cond = select i1 %i.cd, i1 true, i1 %.3137
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.loopexit210
  %i.ce = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.cf = sext i16 %i.bx to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !29 ; 2 uses
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 3 uses
  %i.ck = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 8 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64              ; 2 uses
  %i.cm = sext i32 %i.cj to i64
  %.idx = shl nsw i64 %i.cm, 2                    ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.ck, i64 %.idx
  %i.co = icmp sgt i32 %i.cj, 0
  br i1 %i.co, label %.lr.ph226.preheader, label %.preheader209

.lr.ph226.preheader:                              ; preds = %bb.o
  %i.cp = load ptr, ptr @shiftset, align 8, !tbaa !11 ; 5 uses
  %i.cq = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.cr = mul i32 %i.cj, %i.by
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cs ; 4 uses
  %1 = ptrtoint ptr %i.ck to i64                  ; 3 uses
  %i.cu = add i64 %.idx, %1
  %i.cv = add i64 %1, 4
  %i.cw = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cv)
  %i.cx = xor i64 %1, -1
  %i.cy = add i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 76
  br i1 %min.iters.check, label %.lr.ph226.preheader399, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph226.preheader
  %i.db = ptrtoaddr ptr %i.cq to i64
  %i.dc = ptrtoaddr ptr %i.cp to i64
  %i.dd = shl nsw i64 %i.cs, 2
  %i.de = add i64 %i.dd, %i.db
  %i.df = sub i64 %i.de, %i.cl
  %diff.check = icmp ugt i64 %i.df, -32
  %i.dg = sub i64 %i.dc, %i.cl
  %diff.check345 = icmp ugt i64 %i.dg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check345
  br i1 %conflict.rdx, label %.lr.ph226.preheader399, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 9223372036854775800     ; 3 uses
  %i.dh = shl i64 %n.vec, 2                       ; 3 uses
  %i.di = getelementptr i8, ptr %i.ct, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.ck, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.cp, i64 %i.dh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.dl ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.ck, i64 %i.dl ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.cp, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4
  %wide.load348 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !4
  %i.dn = getelementptr i8, ptr %next.gep347, i64 16
  %wide.load349 = load <4 x i32>, ptr %next.gep347, align 4, !tbaa !4
  %wide.load350 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !4
  %i.do = and <4 x i32> %wide.load349, %wide.load
  %i.dp = and <4 x i32> %wide.load350, %wide.load348
  %i.dq = getelementptr i8, ptr %next.gep346, i64 16
  store <4 x i32> %i.do, ptr %next.gep346, align 4, !tbaa !4
  store <4 x i32> %i.dp, ptr %i.dq, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader209, label %.lr.ph226.preheader399

.lr.ph226.preheader399:                           ; preds = %vector.memcheck, %.lr.ph226.preheader, %middle.block
  %.0157224.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph226.preheader ], [ %i.di, %middle.block ]
  %.0167223.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph226.preheader ], [ %i.dj, %middle.block ]
  %.0175222.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph226.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph226

.preheader209:                                    ; preds = %.lr.ph226, %middle.block, %bb.o
  %i.ds = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  %i.du = sext i16 %i.ch to i64                   ; 2 uses
  br i1 %i.dt, label %.lr.ph230, label %._crit_edge231

.lr.ph226:                                        ; preds = %.lr.ph226.preheader399, %.lr.ph226
  %.0157224 = phi ptr [ %i.dv, %.lr.ph226 ], [ %.0157224.ph, %.lr.ph226.preheader399 ] ; 2 uses
  %.0167223 = phi ptr [ %i.ea, %.lr.ph226 ], [ %.0167223.ph, %.lr.ph226.preheader399 ] ; 2 uses
  %.0175222 = phi ptr [ %i.dx, %.lr.ph226 ], [ %.0175222.ph, %.lr.ph226.preheader399 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0157224, i64 4
  %i.dw = load i32, ptr %.0157224, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.0175222, i64 4
  %i.dy = load i32, ptr %.0175222, align 4, !tbaa !4
  %i.dz = and i32 %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %.0167223, i64 4 ; 2 uses
  store i32 %i.dz, ptr %.0167223, align 4, !tbaa !4
  %i.eb = icmp ult ptr %i.ea, %i.cn
  br i1 %i.eb, label %.lr.ph226, label %.preheader209, !llvm.loop !84

.lr.ph230:                                        ; preds = %.preheader209, %bb.q
  %i.ec = phi i32 [ %i.eq, %bb.q ], [ %i.ds, %.preheader209 ]
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %bb.q ], [ 0, %.preheader209 ] ; 2 uses
  %.0161228 = phi i32 [ %spec.select203, %bb.q ], [ 1, %.preheader209 ] ; 2 uses
  %.1168227 = phi ptr [ %spec.select202, %bb.q ], [ %i.ck, %.preheader209 ] ; 2 uses
  %i.ed = load i32, ptr %.1168227, align 4, !tbaa !4
  %i.ee = and i32 %i.ed, %.0161228
  %.not193 = icmp eq i32 %i.ee, 0
  br i1 %.not193, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph230
  %i.ef = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.eg = load ptr, ptr @tags, align 8, !tbaa !46 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv290
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !8
  %i.ej = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.du
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !29
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.11, ptr noundef %i.ei, i32 noundef %i.ci, ptr noundef %i.eo) #14 ; 0 uses
  %.pre = load i32, ptr @ntokens, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph230
  %i.eq = phi i32 [ %.pre, %bb.p ], [ %i.ec, %.lr.ph230 ] ; 2 uses
  %i.er = shl i32 %.0161228, 1                    ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %spec.select202.idx = select i1 %i.es, i64 4, i64 0
  %spec.select202 = getelementptr inbounds nuw i8, ptr %.1168227, i64 %spec.select202.idx
  %spec.select203 = tail call i32 @llvm.umax.i32(i32 %i.er, i32 1)
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.et = sext i32 %i.eq to i64
  %i.eu = icmp slt i64 %indvars.iv.next291, %i.et
  br i1 %i.eu, label %.lr.ph230, label %._crit_edge231, !llvm.loop !85

._crit_edge231:                                   ; preds = %bb.q, %.preheader209
  %i.ev = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.ew = load ptr, ptr @tags, align 8, !tbaa !46
  %i.ex = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.du
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !29
  %i.fa = sext i16 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !8
  %i.fd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.12, i32 noundef %i.ci, ptr noundef %i.fc) #14 ; 0 uses
  br label %bb.al

bb.r:                                             ; preds = %.loopexit210
  %i.fe = icmp sgt i32 %i.cc, 0
  br i1 %i.fe, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.ff = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 15 uses
  %2 = ptrtoint ptr %i.ff to i64                  ; 5 uses
  %i.fg = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 3 uses
  %i.fh = sext i32 %i.fg to i64
  %.idx280 = shl nsw i64 %i.fh, 2                 ; 4 uses
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 %.idx280 ; 2 uses
  %i.fj = icmp sge i16 %i.bx, %i.ca
  %or.cond278.not = or i1 %i.fj, %.3137
  br i1 %or.cond278.not, label %.loopexit208, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.s
  %i.fk = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.fl = ptrtoaddr ptr %i.fk to i64
  %i.fm = load ptr, ptr @shiftset, align 8, !tbaa !11 ; 10 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %i.fo = icmp sgt i32 %i.fg, 0                   ; 2 uses
  %i.fp = load ptr, ptr @LAruleno, align 8
  %i.fq = sext i16 %i.bx to i64                   ; 2 uses
  %wide.trip.count297 = sext i16 %i.ca to i64
  %i.fr = add i64 %.idx280, %2
  %i.fs = add i64 %2, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fr, i64 %i.fs)
  %i.ft = xor i64 %2, -1
  %i.fu = add i64 %umax, %i.ft
  %i.fv = and i64 %i.fu, -4
  %i.fw = add i64 %i.fv, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fm, i64 %i.fw
  %scevgep354 = getelementptr i8, ptr %i.ff, i64 %i.fw
  %3 = ptrtoint ptr %i.ff to i64                  ; 3 uses
  %i.fx = add i64 %.idx280, %3
  %i.fy = add i64 %3, 4
  %i.fz = tail call i64 @llvm.umax.i64(i64 %i.fx, i64 %i.fy)
  %i.ga = xor i64 %3, -1
  %i.gb = add i64 %i.fz, %i.ga                    ; 2 uses
  %i.gc = lshr i64 %i.gb, 2
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check378 = icmp ult i64 %i.gb, 28
  %invariant.op = sub i64 %i.fl, %2
  %i.ge = sub i64 %i.fn, %2
  %diff.check375 = icmp ugt i64 %i.ge, -32
  %n.vec381 = and i64 %i.gd, 9223372036854775800  ; 3 uses
  %i.gf = shl i64 %n.vec381, 2                    ; 3 uses
  %i.gg = getelementptr i8, ptr %i.ff, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.fm, i64 %i.gf
  %cmp.n393 = icmp eq i64 %i.gd, %n.vec381
  %4 = ptrtoint ptr %i.ff to i64                  ; 3 uses
  %i.gi = add i64 %.idx280, %4
  %i.gj = add i64 %4, 4
  %i.gk = tail call i64 @llvm.umax.i64(i64 %i.gi, i64 %i.gj)
  %i.gl = xor i64 %4, -1
  %i.gm = add i64 %i.gk, %i.gl                    ; 2 uses
  %i.gn = lshr i64 %i.gm, 2
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check356 = icmp ult i64 %i.gm, 28
  %bound0 = icmp ult ptr %i.fm, %scevgep354
  %bound1 = icmp ult ptr %i.ff, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec359 = and i64 %i.go, 9223372036854775800  ; 3 uses
  %i.gp = shl i64 %n.vec359, 2                    ; 2 uses
  %i.gq = getelementptr i8, ptr %i.ff, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.fm, i64 %i.gp
  %cmp.n370 = icmp eq i64 %i.go, %n.vec359
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph253, %._crit_edge248
  %indvar = phi i64 [ 0, %.lr.ph253 ], [ %indvar.next, %._crit_edge248 ] ; 2 uses
  %indvars.iv294 = phi i64 [ %i.fq, %.lr.ph253 ], [ %indvars.iv.next295, %._crit_edge248 ] ; 4 uses
  %.0149251 = phi i32 [ 0, %.lr.ph253 ], [ %.1150, %._crit_edge248 ] ; 2 uses
  %.0151250 = phi i32 [ undef, %.lr.ph253 ], [ %.1152, %._crit_edge248 ]
  %.0154249 = phi i32 [ -1, %.lr.ph253 ], [ %.1155, %._crit_edge248 ]
  %i.gs = add i64 %indvar, %i.fq
  %i.gt = shl i64 %i.gs, 2
  br i1 %i.fo, label %.lr.ph236.preheader, label %.preheader

.lr.ph236.preheader:                              ; preds = %bb.t
  %i.gu = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = mul nsw i64 %indvars.iv294, %i.gv
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.gw ; 4 uses
  br i1 %min.iters.check378, label %.lr.ph236.preheader398, label %vector.memcheck373

vector.memcheck373:                               ; preds = %.lr.ph236.preheader
  %i.gy = mul i64 %i.gt, %i.gv
  %.reass = add i64 %i.gy, %invariant.op
  %diff.check374 = icmp ugt i64 %.reass, -32
  %conflict.rdx376 = or i1 %diff.check374, %diff.check375
  br i1 %conflict.rdx376, label %.lr.ph236.preheader398, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck373
  %i.gz = getelementptr i8, ptr %i.gx, i64 %i.gf
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph379
  %index383 = phi i64 [ 0, %vector.ph379 ], [ %index.next391, %vector.body382 ] ; 2 uses
  %i.ha = shl i64 %index383, 2                    ; 3 uses
  %next.gep384 = getelementptr i8, ptr %i.gx, i64 %i.ha ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.ff, i64 %i.ha ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.fm, i64 %i.ha ; 2 uses
  %i.hb = getelementptr i8, ptr %next.gep384, i64 16
  %wide.load387 = load <4 x i32>, ptr %next.gep384, align 4, !tbaa !4
  %wide.load388 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !4
  %i.hc = getelementptr i8, ptr %next.gep386, i64 16
  %wide.load389 = load <4 x i32>, ptr %next.gep386, align 4, !tbaa !4
  %wide.load390 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !4
  %i.hd = xor <4 x i32> %wide.load389, splat (i32 -1)
  %i.he = xor <4 x i32> %wide.load390, splat (i32 -1)
  %i.hf = and <4 x i32> %wide.load387, %i.hd
  %i.hg = and <4 x i32> %wide.load388, %i.he
  %i.hh = getelementptr i8, ptr %next.gep385, i64 16
  store <4 x i32> %i.hf, ptr %next.gep385, align 4, !tbaa !4
  store <4 x i32> %i.hg, ptr %i.hh, align 4, !tbaa !4
  %index.next391 = add nuw i64 %index383, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next391, %n.vec381
  br i1 %i.hi, label %middle.block392, label %vector.body382, !llvm.loop !86

middle.block392:                                  ; preds = %vector.body382
  br i1 %cmp.n393, label %.preheader, label %.lr.ph236.preheader398

.lr.ph236.preheader398:                           ; preds = %vector.memcheck373, %.lr.ph236.preheader, %middle.block392
  %.1158234.ph = phi ptr [ %i.gx, %vector.memcheck373 ], [ %i.gx, %.lr.ph236.preheader ], [ %i.gz, %middle.block392 ]
  %.3170233.ph = phi ptr [ %i.ff, %vector.memcheck373 ], [ %i.ff, %.lr.ph236.preheader ], [ %i.gg, %middle.block392 ]
  %.1176232.ph = phi ptr [ %i.fm, %vector.memcheck373 ], [ %i.fm, %.lr.ph236.preheader ], [ %i.gh, %middle.block392 ]
  br label %.lr.ph236

.preheader:                                       ; preds = %.lr.ph236, %middle.block392, %bb.t
  %i.hj = load i32, ptr @ntokens, align 4, !tbaa !4 ; 5 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph241.preheader, label %._crit_edge242

.lr.ph241.preheader:                              ; preds = %.preheader
  %xtraiter401 = and i32 %i.hj, 1
  %i.hl = icmp eq i32 %i.hj, 1
  br i1 %i.hl, label %.lr.ph241.epil.preheader, label %.lr.ph241.preheader.new

.lr.ph241.preheader.new:                          ; preds = %.lr.ph241.preheader
  %unroll_iter405 = and i32 %i.hj, 2147483646
  br label %.lr.ph241

.lr.ph236:                                        ; preds = %.lr.ph236.preheader398, %.lr.ph236
  %.1158234 = phi ptr [ %i.hm, %.lr.ph236 ], [ %.1158234.ph, %.lr.ph236.preheader398 ] ; 2 uses
  %.3170233 = phi ptr [ %i.hs, %.lr.ph236 ], [ %.3170233.ph, %.lr.ph236.preheader398 ] ; 2 uses
  %.1176232 = phi ptr [ %i.ho, %.lr.ph236 ], [ %.1176232.ph, %.lr.ph236.preheader398 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.1158234, i64 4
  %i.hn = load i32, ptr %.1158234, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %.1176232, i64 4
  %i.hp = load i32, ptr %.1176232, align 4, !tbaa !4
  %i.hq = xor i32 %i.hp, -1
  %i.hr = and i32 %i.hn, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %.3170233, i64 4 ; 2 uses
  store i32 %i.hr, ptr %.3170233, align 4, !tbaa !4
  %i.ht = icmp ult ptr %i.hs, %i.fi
  br i1 %i.ht, label %.lr.ph236, label %.preheader, !llvm.loop !87

.lr.ph241:                                        ; preds = %.lr.ph241, %.lr.ph241.preheader.new
  %.0144239 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %spec.select204.1, %.lr.ph241 ]
  %.2163238 = phi i32 [ 1, %.lr.ph241.preheader.new ], [ %.3164.1, %.lr.ph241 ] ; 2 uses
  %.4171237 = phi ptr [ %i.ff, %.lr.ph241.preheader.new ], [ %.5172.1, %.lr.ph241 ] ; 2 uses
  %niter406 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %niter406.next.1, %.lr.ph241 ]
  %i.hu = load i32, ptr %.4171237, align 4, !tbaa !4
  %i.hv = and i32 %i.hu, %.2163238
  %.not194 = icmp ne i32 %i.hv, 0
  %i.hw = zext i1 %.not194 to i32
  %spec.select204 = add nuw nsw i32 %.0144239, %i.hw
  %i.hx = shl i32 %.2163238, 1                    ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  %.5172.idx = select i1 %i.hy, i64 4, i64 0
  %.5172 = getelementptr inbounds nuw i8, ptr %.4171237, i64 %.5172.idx ; 2 uses
  %.3164 = tail call i32 @llvm.umax.i32(i32 %i.hx, i32 1) ; 2 uses
  %i.hz = load i32, ptr %.5172, align 4, !tbaa !4
  %i.ia = and i32 %i.hz, %.3164
  %.not194.1 = icmp ne i32 %i.ia, 0
  %i.ib = zext i1 %.not194.1 to i32
  %spec.select204.1 = add nuw nsw i32 %spec.select204, %i.ib ; 3 uses
  %i.ic = shl i32 %.3164, 1                       ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  %.5172.idx.1 = select i1 %i.id, i64 4, i64 0
  %.5172.1 = getelementptr inbounds nuw i8, ptr %.5172, i64 %.5172.idx.1 ; 2 uses
  %.3164.1 = tail call i32 @llvm.umax.i32(i32 %i.ic, i32 1) ; 2 uses
  %niter406.next.1 = add nuw nsw i32 %niter406, 2 ; 2 uses
  %niter406.ncmp.1 = icmp eq i32 %niter406.next.1, %unroll_iter405
  br i1 %niter406.ncmp.1, label %._crit_edge242.loopexit.unr-lcssa, label %.lr.ph241, !llvm.loop !88

._crit_edge242.loopexit.unr-lcssa:                ; preds = %.lr.ph241
  %lcmp.mod402.not = icmp eq i32 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %._crit_edge242, label %.lr.ph241.epil.preheader

.lr.ph241.epil.preheader:                         ; preds = %._crit_edge242.loopexit.unr-lcssa, %.lr.ph241.preheader
  %.0144239.epil.init = phi i32 [ 0, %.lr.ph241.preheader ], [ %spec.select204.1, %._crit_edge242.loopexit.unr-lcssa ]
  %.2163238.epil.init = phi i32 [ 1, %.lr.ph241.preheader ], [ %.3164.1, %._crit_edge242.loopexit.unr-lcssa ]
  %.4171237.epil.init = phi ptr [ %i.ff, %.lr.ph241.preheader ], [ %.5172.1, %._crit_edge242.loopexit.unr-lcssa ]
  %lcmp.mod404 = trunc i32 %i.hj to i1
  tail call void @llvm.assume(i1 %lcmp.mod404)
  %i.ie = load i32, ptr %.4171237.epil.init, align 4, !tbaa !4
  %i.if = and i32 %i.ie, %.2163238.epil.init
  %.not194.epil = icmp ne i32 %i.if, 0
  %i.ig = zext i1 %.not194.epil to i32
  %spec.select204.epil = add nuw nsw i32 %.0144239.epil.init, %i.ig
  br label %._crit_edge242

._crit_edge242:                                   ; preds = %.lr.ph241.epil.preheader, %._crit_edge242.loopexit.unr-lcssa, %.preheader
  %.0144.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select204.1, %._crit_edge242.loopexit.unr-lcssa ], [ %spec.select204.epil, %.lr.ph241.epil.preheader ] ; 2 uses
  %i.ih = icmp sgt i32 %.0144.lcssa, %.0149251
  br i1 %i.ih, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge242
  %i.ii = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %indvars.iv294
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !29
  %i.ik = sext i16 %i.ij to i32
  %i.il = trunc nsw i64 %indvars.iv294 to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge242
  %.1155 = phi i32 [ %i.il, %bb.u ], [ %.0154249, %._crit_edge242 ] ; 2 uses
  %.1152 = phi i32 [ %i.ik, %bb.u ], [ %.0151250, %._crit_edge242 ] ; 2 uses
  %.1150 = phi i32 [ %.0144.lcssa, %bb.u ], [ %.0149251, %._crit_edge242 ]
  br i1 %i.fo, label %.lr.ph247.preheader, label %._crit_edge248

.lr.ph247.preheader:                              ; preds = %bb.v
  %brmerge = select i1 %min.iters.check356, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph247.preheader397, label %vector.body360

vector.body360:                                   ; preds = %.lr.ph247.preheader, %vector.body360
  %index361 = phi i64 [ %index.next368, %vector.body360 ], [ 0, %.lr.ph247.preheader ] ; 2 uses
  %i.im = shl i64 %index361, 2                    ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.ff, i64 %i.im ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.fm, i64 %i.im ; 3 uses
  %i.in = getelementptr i8, ptr %next.gep362, i64 16
  %wide.load364 = load <4 x i32>, ptr %next.gep362, align 4, !tbaa !4, !alias.scope !89
  %wide.load365 = load <4 x i32>, ptr %i.in, align 4, !tbaa !4, !alias.scope !89
  %i.io = getelementptr i8, ptr %next.gep363, i64 16 ; 2 uses
  %wide.load366 = load <4 x i32>, ptr %next.gep363, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %wide.load367 = load <4 x i32>, ptr %i.io, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %i.ip = or <4 x i32> %wide.load366, %wide.load364
  %i.iq = or <4 x i32> %wide.load367, %wide.load365
  store <4 x i32> %i.ip, ptr %next.gep363, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  store <4 x i32> %i.iq, ptr %i.io, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %index.next368 = add nuw i64 %index361, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next368, %n.vec359
  br i1 %i.ir, label %middle.block369, label %vector.body360, !llvm.loop !94

middle.block369:                                  ; preds = %vector.body360
  br i1 %cmp.n370, label %._crit_edge248, label %.lr.ph247.preheader397

.lr.ph247.preheader397:                           ; preds = %.lr.ph247.preheader, %middle.block369
  %.6173245.ph = phi ptr [ %i.gq, %middle.block369 ], [ %i.ff, %.lr.ph247.preheader ]
  %.2177244.ph = phi ptr [ %i.gr, %middle.block369 ], [ %i.fm, %.lr.ph247.preheader ]
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader397, %.lr.ph247
  %.6173245 = phi ptr [ %i.is, %.lr.ph247 ], [ %.6173245.ph, %.lr.ph247.preheader397 ] ; 2 uses
end_hunk_2
