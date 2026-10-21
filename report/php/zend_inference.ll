Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_inference?download=true
inline.NumInlined: 423
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._zend_executor_globals = type { %struct._zval_struct, %struct._zval_struct, [32 x ptr], ptr, ptr, %struct._zend_array, %struct._zend_array, ptr, i32, i8, %struct._zval_struct, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, i64, i32, i32, i32, i8, i8, %struct.zend_atomic_bool_s, %struct.zend_atomic_bool_s, ptr, i64, ptr, ptr, %struct._zend_array, %struct._zend_array, i32, i8, %struct._zval_struct, %struct._zval_struct, %struct._zend_stack, %struct._zend_stack, %struct._zend_stack, ptr, i32, i32, i64, ptr, ptr, ptr, %struct._zend_objects_store, %struct._zend_lazy_objects_store, ptr, ptr, ptr, [3 x %struct._zend_op], ptr, i8, i8, i64, i32, i32, ptr, [16 x %struct._HashTableIterator], ptr, %union._zend_function, %struct._zend_op, %struct._zend_array, i64, %struct.zend_get_gc_buffer, ptr, ptr, ptr, i64, i8, i32, ptr, ptr, i64, %struct._zend_call_stack, i64, i64, %struct._zend_strtod_state, [6 x ptr] }
%struct.zend_atomic_bool_s = type { i8 }
%struct._zval_struct = type { %union._zend_value, %union.anon, %union.anon.3 }
%union._zend_value = type { i64 }
%union.anon = type { i32 }
%union.anon.3 = type { i32 }
%struct._zend_stack = type { i32, i32, i32, ptr }
%struct._zend_objects_store = type { ptr, i32, i32, i32 }
%struct._zend_lazy_objects_store = type { %struct._zend_array }
%struct._HashTableIterator = type { ptr, i32, i32 }
%union._zend_function = type { %struct._zend_op_array }
%struct._zend_op_array = type { i8, [3 x i8], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [6 x ptr] }
%struct._zend_op = type { ptr, %union._znode_op, %union._znode_op, %union._znode_op, i32, i32, i8, i8, i8, i8 }
%union._znode_op = type { i32 }
%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.5, i32, %union.anon.7, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon.4 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { ptr }
%struct.zend_get_gc_buffer = type { ptr, ptr, ptr }
%struct._zend_call_stack = type { ptr, i64 }
%struct._zend_strtod_state = type { [8 x ptr], ptr, ptr }
%struct._zend_ssa_range = type { i64, i64, i8, i8 }

@zend_func_info_rid = external local_unnamed_addr global i32, align 4
@zend_ce_closure = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"PHI\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"Narrowing occurred during type inference of %s. Please file a bug report on https://github.com/php/php-src/issues\00", align 1
@executor_globals = external local_unnamed_addr global %struct._zend_executor_globals, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Possible integer overflow in zend_arena_calloc() (%zu * %zu)\00", align 1
@zend_ce_generator = external local_unnamed_addr global ptr, align 8
@switch.table.zend_infer_types_ex = private unnamed_addr constant [3 x i8] c"\02\04\08", align 4

; Function Attrs: nounwind uwtable
define dso_local void @zend_ssa_find_sccs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((44, 48)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 4                      ; 3 uses
  %i.e = icmp ugt i64 %i.d, 32768                 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @_emalloc(i64 noundef %i.d) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = alloca i8, i64 %i.d, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !24
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2                      ; 3 uses
  %i.l = icmp ugt i64 %i.k, 32768                 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @_emalloc(i64 noundef %i.k) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = alloca i8, i64 %i.k, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = phi ptr [ %i.n, %bb.f ], [ %i.m, %bb.e ] ; 3 uses
  %i.p = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2                      ; 3 uses
  %i.s = icmp ugt i64 %i.r, 32768                 ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noalias ptr @_emalloc(i64 noundef %i.r) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.u = alloca i8, i64 %i.r, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.v = phi ptr [ %i.u, %bb.i ], [ %i.t, %bb.h ] ; 3 uses
  %i.w = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !26
  %i.y = icmp sgt i32 %i.w, 0
  br i1 %i.y, label %.lr.ph, label %.loopexit309.thread

.loopexit309.thread:                              ; preds = %bb.j
  store i32 0, ptr %i.x, align 4, !tbaa !26
  br label %._crit_edge345

.lr.ph:                                           ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 17 uses
  %.phi.trans.insert138.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %zend_ssa_check_scc_var.exit
  %i.ad = phi ptr [ %.pre, %.lr.ph ], [ %i.kp, %zend_ssa_check_scc_var.exit ] ; 4 uses
  %indvars.iv364 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next365, %zend_ssa_check_scc_var.exit ] ; 3 uses
  %.sroa.6.0325 = phi i32 [ 0, %.lr.ph ], [ %.sroa.6.1, %zend_ssa_check_scc_var.exit ] ; 3 uses
  %.sroa.6298.0324 = phi i32 [ 0, %.lr.ph ], [ %.sroa.6298.1, %zend_ssa_check_scc_var.exit ] ; 3 uses
  %.0303323 = phi i32 [ 0, %.lr.ph ], [ %.1304, %zend_ssa_check_scc_var.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv364 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %zend_ssa_check_scc_var.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit.i.preheader, label %zend_ssa_check_scc_var.exit

.loopexit.i.preheader:                            ; preds = %bb.l
  %i.al = trunc nuw nsw i64 %indvars.iv364 to i32
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %select.unfold.i
  %i.am = trunc nuw i64 %indvars.iv361 to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.preheader, %.loopexit.i.loopexit
  %.2305 = phi i32 [ %.3, %.loopexit.i.loopexit ], [ %.0303323, %.loopexit.i.preheader ] ; 2 uses
  %.sroa.6298.2 = phi i32 [ %.sroa.6298.3, %.loopexit.i.loopexit ], [ %.sroa.6298.0324, %.loopexit.i.preheader ] ; 2 uses
  %.sroa.6.2 = phi i32 [ %i.am, %.loopexit.i.loopexit ], [ %.sroa.6.0325, %.loopexit.i.preheader ] ; 4 uses
  %i.an = phi ptr [ %i.je, %.loopexit.i.loopexit ], [ %i.ad, %.loopexit.i.preheader ]
  %.062.i = phi i32 [ %.0117.i71.i, %.loopexit.i.loopexit ], [ %i.al, %.loopexit.i.preheader ] ; 2 uses
  %i.ao = icmp slt i32 %.sroa.6.2, %i.p
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nsw i32 %.sroa.6.2, 1               ; 2 uses
  %i.aq = sext i32 %.sroa.6.2 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aq
  store i32 %.062.i, ptr %i.ar, align 4, !tbaa !32
  %i.as = zext nneg i32 %.062.i to i64            ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.as ; 2 uses
  store i32 0, ptr %i.at, align 8, !tbaa !192
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !193
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = or i8 %i.ax, 2
  store i8 %i.ay, ptr %i.aw, align 8
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !27  ; 3 uses
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %.2305, ptr %i.bb, align 4, !tbaa !31
  %i.bc = add nsw i32 %.2305, 1                   ; 2 uses
  %i.bd = icmp sgt i32 %.sroa.6.2, -1
  br i1 %i.bd, label %.lr.ph95.i.preheader, label %zend_ssa_check_scc_var.exit

.lr.ph95.i.preheader:                             ; preds = %.loopexit.i
  %i.be = zext nneg i32 %i.ap to i64
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.preheader, %bb.bq
  %indvars.iv361 = phi i64 [ %i.be, %.lr.ph95.i.preheader ], [ %indvars.iv.next362, %bb.bq ] ; 4 uses
  %.3 = phi i32 [ %i.bc, %.lr.ph95.i.preheader ], [ %.5, %bb.bq ] ; 5 uses
  %.sroa.6298.3 = phi i32 [ %.sroa.6298.2, %.lr.ph95.i.preheader ], [ %.sroa.6298.5, %bb.bq ] ; 8 uses
  %i.bf = phi ptr [ %i.az, %.lr.ph95.i.preheader ], [ %i.jk, %bb.bq ]
  %i.bg = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv361
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32 ; 5 uses
  %i.bj = sext i32 %i.bi to i64                   ; 6 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.bj ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 12 uses
  %.pre377 = load i32, ptr %i.bl, align 4, !tbaa !193
  br label %bb.m

bb.m:                                             ; preds = %select.unfold.i, %.lr.ph95.i
  %i.bm = phi i32 [ %.pre377, %.lr.ph95.i ], [ %.0117.i71.i, %select.unfold.i ] ; 2 uses
  %i.bn = phi ptr [ %i.bf, %.lr.ph95.i ], [ %i.je, %select.unfold.i ] ; 2 uses
  %i.bo = icmp sgt i32 %i.bm, -1
  br i1 %i.bo, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bp = zext nneg i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.bn, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !31 ; 2 uses
  %i.bt = getelementptr inbounds [48 x i8], ptr %i.bn, i64 %i.bj ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !31
  %i.bw = icmp slt i32 %i.bs, %i.bv
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = and i8 %i.by, -3
  store i8 %i.bz, ptr %i.bx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ca = load i32, ptr %i.bk, align 8, !tbaa !192
  switch i32 %i.ca, label %bb.aa [
    i32 11, label %zend_scc_next.exit.thread73.i
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
  ]

bb.q:                                             ; preds = %bb.p
  %i.cb = load i32, ptr %2, align 8, !tbaa !33
  %.pre.i.i = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %2, align 8, !tbaa !33    ; 2 uses
  %.pre135.i.i = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34
  %.pre145.i.i = sext i32 %i.cc to i64
  br label %bb.ag

bb.s:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %2, align 8, !tbaa !33    ; 2 uses
  %.pre147.i.i = sext i32 %i.cd to i64
  br label %bb.ai

bb.t:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %2, align 8, !tbaa !33
  %.pre141.i.i = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34
  %.pre149.i.i = sext i32 %i.ce to i64
  br label %bb.al

bb.u:                                             ; preds = %bb.p
  %i.cf = load i32, ptr %2, align 8, !tbaa !33
  %.pre143.i.i = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34
  %.pre151.i.i = sext i32 %i.cf to i64
  br label %bb.an

bb.v:                                             ; preds = %bb.p
  %i.cg = load i32, ptr %2, align 8, !tbaa !33
  %.pre137.i.i = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34
  %.pre153.i.i = sext i32 %i.cg to i64
  br label %bb.at

bb.w:                                             ; preds = %bb.p
  %i.ch = load i32, ptr %2, align 8, !tbaa !33
  %.pre139.i.i = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34
  %.pre155.i.i = sext i32 %i.ch to i64
  br label %bb.av

bb.x:                                             ; preds = %bb.p
  %i.ci = load i32, ptr %2, align 8, !tbaa !33
  %.pre144.i.i = sext i32 %i.ci to i64
  br label %bb.ax

bb.y:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %2, align 8, !tbaa !33
  br label %bb.bc

bb.z:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %2, align 8, !tbaa !33
  br label %bb.bk

bb.aa:                                            ; preds = %bb.p
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.cm = getelementptr inbounds [48 x i8], ptr %i.cl, i64 %i.bj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  br label %bb.ab

bb.ab:                                            ; preds = %zend_ssa_next_use.exit.i.i, %bb.aa
  %.0.in.i.i = phi ptr [ %i.cn, %bb.aa ], [ %i.hg, %zend_ssa_next_use.exit.i.i ]
  %.0.i.i = load i32, ptr %.0.in.i.i, align 4, !tbaa !32 ; 5 uses
  %i.co = icmp sgt i32 %.0.i.i, -1
  br i1 %i.co, label %bb.ac, label %bb.az

bb.ac:                                            ; preds = %bb.ab
  store i32 %.0.i.i, ptr %2, align 8, !tbaa !33
  %i.cp = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34 ; 3 uses
  %i.cq = zext nneg i32 %.0.i.i to i64
  %i.cr = getelementptr inbounds nuw [36 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !36 ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.cw = zext nneg i32 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [48 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load i8, ptr %i.cy, align 8
  %i.da = trunc i8 %i.cz to i1
  br i1 %i.da, label %bb.ae, label %zend_scc_next.exit.thread.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.q
  %i.db = phi ptr [ %i.cp, %bb.ad ], [ %i.cp, %bb.ac ], [ %.pre.i.i, %bb.q ] ; 3 uses
  %.1.i.i = phi i32 [ %.0.i.i, %bb.ad ], [ %.0.i.i, %bb.ac ], [ %i.cb, %bb.q ] ; 3 uses
  %i.dc = sext i32 %.1.i.i to i64                 ; 3 uses
  %i.dd = getelementptr inbounds [36 x i8], ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i32, ptr %i.de, align 4, !tbaa !37 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.di = zext nneg i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load i8, ptr %i.dk, align 8
  %i.dm = trunc i8 %i.dl to i1
  br i1 %i.dm, label %bb.ag, label %zend_scc_next.exit.thread.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.r
  %.pre-phi146.i.i = phi i64 [ %i.dc, %bb.ae ], [ %i.dc, %bb.af ], [ %.pre145.i.i, %bb.r ] ; 3 uses
  %i.dn = phi ptr [ %i.db, %bb.ae ], [ %i.db, %bb.af ], [ %.pre135.i.i, %bb.r ]
  %.2.i.i = phi i32 [ %.1.i.i, %bb.ae ], [ %.1.i.i, %bb.af ], [ %i.cc, %bb.r ] ; 2 uses
  %i.do = getelementptr inbounds [36 x i8], ptr %i.dn, i64 %.pre-phi146.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !38 ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ds = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.dt = zext nneg i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [48 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load i8, ptr %i.dv, align 8
  %i.dx = trunc i8 %i.dw to i1
  br i1 %i.dx, label %bb.ai, label %zend_scc_next.exit.thread.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.s
  %.pre-phi148.i.i = phi i64 [ %.pre-phi146.i.i, %bb.ag ], [ %.pre-phi146.i.i, %bb.ah ], [ %.pre147.i.i, %bb.s ] ; 8 uses
  %.3.i.i = phi i32 [ %.2.i.i, %bb.ag ], [ %.2.i.i, %bb.ah ], [ %i.cd, %bb.s ]
  %i.dy = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %i.dz = getelementptr inbounds [32 x i8], ptr %i.dy, i64 %.pre-phi148.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !55
  %i.ec = icmp eq i8 %i.eb, -119
  br i1 %i.ec, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.ed = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34 ; 3 uses
  %i.ee = getelementptr [36 x i8], ptr %i.ed, i64 %.pre-phi148.i.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !36 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ej = zext nneg i32 %i.eg to i64
  %i.ek = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load i8, ptr %i.el, align 8
  %i.en = trunc i8 %i.em to i1
  br i1 %i.en, label %bb.al, label %zend_scc_next.exit.thread.i

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.t
  %.pre-phi150.i.i = phi i64 [ %.pre-phi148.i.i, %bb.aj ], [ %.pre-phi148.i.i, %bb.ak ], [ %.pre149.i.i, %bb.t ] ; 3 uses
  %i.eo = phi ptr [ %i.ed, %bb.aj ], [ %i.ed, %bb.ak ], [ %.pre141.i.i, %bb.t ] ; 3 uses
  %i.ep = getelementptr [36 x i8], ptr %i.eo, i64 %.pre-phi150.i.i
  %i.eq = getelementptr i8, ptr %i.ep, i64 -20
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !37 ; 3 uses
  %i.es = icmp sgt i32 %i.er, -1
  br i1 %i.es, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.eu = zext nneg i32 %i.er to i64
end_hunk_0
begin_hunk_1_@zend_inference_calc_binary_op_range:bb.a
  br label %_ssa_op1_min_range.exit737

_ssa_op1_min_range.exit737:                       ; preds = %bb.fv, %bb.fx, %bb.fy, %bb.fz, %bb.fw, %bb.ga
  %.1.i733 = phi i64 [ %i.zx, %bb.ga ], [ %i.zm, %bb.fw ], [ -9223372036854775808, %bb.fv ], [ -9223372036854775808, %bb.fz ], [ -9223372036854775808, %bb.fy ], [ -9223372036854775808, %bb.fx ] ; 2 uses
  %cond1391 = icmp eq i8 %i.xt, 1                 ; 2 uses
  br i1 %cond1391, label %bb.gb, label %bb.gg

bb.gb:                                            ; preds = %_ssa_op1_min_range.exit737
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !81
  %i.aaa = and i32 %i.zz, 33554432
  %.not21.i857 = icmp eq i32 %i.aaa, 0
  br i1 %.not21.i857, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aab = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !33
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds i8, ptr %2, i64 %i.aad
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !82
  %i.aah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !33
  %i.aaj = zext i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [16 x i8], ptr %i.aag, i64 %i.aaj
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aal = phi ptr [ %i.aae, %bb.gc ], [ %i.aak, %bb.gd ] ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.aan = load i8, ptr %i.aam, align 8, !tbaa !33
  %i.aao = icmp eq i8 %i.aan, 4
  br i1 %i.aao, label %bb.gf, label %_ssa_op2_min_range.exit860

bb.gf:                                            ; preds = %bb.ge
  %i.aap = load i64, ptr %i.aal, align 8, !tbaa !33
  br label %_ssa_op2_min_range.exit860

bb.gg:                                            ; preds = %_ssa_op1_min_range.exit737
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !83 ; 2 uses
  %.not20.i859 = icmp eq ptr %i.aar, null
  br i1 %.not20.i859, label %_ssa_op2_min_range.exit860, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aas = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !58 ; 2 uses
  %i.aau = icmp sgt i32 %i.aat, -1
  br i1 %i.aau, label %bb.gi, label %_ssa_op2_min_range.exit860

bb.gi:                                            ; preds = %bb.gh
  %i.aav = zext nneg i32 %i.aat to i64
  %i.aaw = getelementptr inbounds nuw [40 x i8], ptr %i.aar, i64 %i.aav ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 4
  %i.aay = load i8, ptr %i.aax, align 4
  %i.aaz = trunc i8 %i.aay to i1
  br i1 %i.aaz, label %bb.gj, label %_ssa_op2_min_range.exit860

bb.gj:                                            ; preds = %bb.gi
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !91
  br label %_ssa_op2_min_range.exit860

_ssa_op2_min_range.exit860:                       ; preds = %bb.ge, %bb.gg, %bb.gh, %bb.gi, %bb.gf, %bb.gj
  %.1.i856 = phi i64 [ %i.abb, %bb.gj ], [ %i.aap, %bb.gf ], [ -9223372036854775808, %bb.ge ], [ -9223372036854775808, %bb.gi ], [ -9223372036854775808, %bb.gh ], [ -9223372036854775808, %bb.gg ] ; 2 uses
  %cond1661 = icmp eq i8 %i.wr, 1
  br i1 %cond1661, label %bb.gk, label %bb.gp

bb.gk:                                            ; preds = %_ssa_op2_min_range.exit860
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !81
  %i.abe = and i32 %i.abd, 33554432
  %.not21.i778 = icmp eq i32 %i.abe, 0
  br i1 %.not21.i778, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.abf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !33
  %i.abh = sext i32 %i.abg to i64
  %i.abi = getelementptr inbounds i8, ptr %2, i64 %i.abh
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gk
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !82
  %i.abl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !33
  %i.abn = zext i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [16 x i8], ptr %i.abk, i64 %i.abn
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.abp = phi ptr [ %i.abi, %bb.gl ], [ %i.abo, %bb.gm ] ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abr = load i8, ptr %i.abq, align 8, !tbaa !33
  %i.abs = icmp eq i8 %i.abr, 4
  br i1 %i.abs, label %bb.go, label %_ssa_op1_max_range.exit781

bb.go:                                            ; preds = %bb.gn
  %i.abt = load i64, ptr %i.abp, align 8, !tbaa !33
  br label %_ssa_op1_max_range.exit781

bb.gp:                                            ; preds = %_ssa_op2_min_range.exit860
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !83 ; 2 uses
  %.not20.i780 = icmp eq ptr %i.abv, null
  br i1 %.not20.i780, label %_ssa_op1_max_range.exit781, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.abw = load i32, ptr %3, align 4, !tbaa !57   ; 2 uses
  %i.abx = icmp sgt i32 %i.abw, -1
  br i1 %i.abx, label %bb.gr, label %_ssa_op1_max_range.exit781

bb.gr:                                            ; preds = %bb.gq
  %i.aby = zext nneg i32 %i.abw to i64
  %i.abz = getelementptr inbounds nuw [40 x i8], ptr %i.abv, i64 %i.aby ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acb = load i8, ptr %i.aca, align 4
  %i.acc = trunc i8 %i.acb to i1
  br i1 %i.acc, label %bb.gs, label %_ssa_op1_max_range.exit781

bb.gs:                                            ; preds = %bb.gr
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !92
  br label %_ssa_op1_max_range.exit781

_ssa_op1_max_range.exit781:                       ; preds = %bb.gn, %bb.gp, %bb.gq, %bb.gr, %bb.go, %bb.gs
  %.1.i777 = phi i64 [ %i.ace, %bb.gs ], [ %i.abt, %bb.go ], [ 9223372036854775807, %bb.gn ], [ 9223372036854775807, %bb.gr ], [ 9223372036854775807, %bb.gq ], [ 9223372036854775807, %bb.gp ] ; 2 uses
  %cond1662 = icmp eq i8 %i.xt, 1
  br i1 %cond1662, label %bb.gt, label %bb.gy

bb.gt:                                            ; preds = %_ssa_op1_max_range.exit781
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !81
  %i.ach = and i32 %i.acg, 33554432
  %.not21.i901 = icmp eq i32 %i.ach, 0
  br i1 %.not21.i901, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aci = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !33
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds i8, ptr %2, i64 %i.ack
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !82
  %i.aco = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !33
  %i.acq = zext i32 %i.acp to i64
  %i.acr = getelementptr inbounds nuw [16 x i8], ptr %i.acn, i64 %i.acq
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.acs = phi ptr [ %i.acl, %bb.gu ], [ %i.acr, %bb.gv ] ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  %i.acu = load i8, ptr %i.act, align 8, !tbaa !33
  %i.acv = icmp eq i8 %i.acu, 4
  br i1 %i.acv, label %bb.gx, label %_ssa_op2_max_range.exit904

bb.gx:                                            ; preds = %bb.gw
  %i.acw = load i64, ptr %i.acs, align 8, !tbaa !33
  br label %_ssa_op2_max_range.exit904

bb.gy:                                            ; preds = %_ssa_op1_max_range.exit781
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !83 ; 2 uses
  %.not20.i903 = icmp eq ptr %i.acy, null
  br i1 %.not20.i903, label %_ssa_op2_max_range.exit904, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.acz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !58 ; 2 uses
  %i.adb = icmp sgt i32 %i.ada, -1
  br i1 %i.adb, label %bb.ha, label %_ssa_op2_max_range.exit904

bb.ha:                                            ; preds = %bb.gz
  %i.adc = zext nneg i32 %i.ada to i64
  %i.add = getelementptr inbounds nuw [40 x i8], ptr %i.acy, i64 %i.adc ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  %i.adf = load i8, ptr %i.ade, align 4
  %i.adg = trunc i8 %i.adf to i1
  br i1 %i.adg, label %bb.hb, label %_ssa_op2_max_range.exit904

bb.hb:                                            ; preds = %bb.ha
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !92
  br label %_ssa_op2_max_range.exit904

_ssa_op2_max_range.exit904:                       ; preds = %bb.gw, %bb.gy, %bb.gz, %bb.ha, %bb.gx, %bb.hb
  %.1.i900 = phi i64 [ %i.adi, %bb.hb ], [ %i.acw, %bb.gx ], [ 9223372036854775807, %bb.gw ], [ 9223372036854775807, %bb.ha ], [ 9223372036854775807, %bb.gz ], [ 9223372036854775807, %bb.gy ] ; 2 uses
  %i.adj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.1.i733, i64 %.1.i856) ; 2 uses
  %i.adk = extractvalue { i64, i1 } %i.adj, 1     ; 3 uses
  %i.adl = extractvalue { i64, i1 } %i.adj, 0
  %spec.select = select i1 %i.adk, i64 0, i64 %i.adl ; 2 uses
  %i.adm = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.1.i733, i64 %.1.i900) ; 2 uses
  %i.adn = extractvalue { i64, i1 } %i.adm, 1     ; 2 uses
  %i.ado = extractvalue { i64, i1 } %i.adm, 0
  %.01077 = select i1 %i.adn, i64 0, i64 %i.ado   ; 2 uses
  %i.adp = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.1.i777, i64 %.1.i856) ; 2 uses
  %i.adq = extractvalue { i64, i1 } %i.adp, 1     ; 2 uses
  %i.adr = extractvalue { i64, i1 } %i.adp, 0
  %.01076 = select i1 %i.adq, i64 0, i64 %i.adr   ; 2 uses
  %i.ads = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.1.i777, i64 %.1.i900) ; 2 uses
  %i.adt = extractvalue { i64, i1 } %i.ads, 1     ; 2 uses
  %i.adu = extractvalue { i64, i1 } %i.ads, 0
  %.01075 = select i1 %i.adt, i64 0, i64 %i.adu   ; 2 uses
  switch i8 %i.wr, label %bb.hg [
    i8 1, label %bb.hc
    i8 0, label %_ssa_op1_range_underflow.exit662.thread1155
  ]

bb.hc:                                            ; preds = %_ssa_op2_max_range.exit904
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !81
  %i.adx = and i32 %i.adw, 33554432
  %.not20.i660 = icmp eq i32 %i.adx, 0
  br i1 %.not20.i660, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ady = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !33
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds i8, ptr %2, i64 %i.aea
  br label %bb.hf

bb.he:                                            ; preds = %bb.hc
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !82
  %i.aee = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aef = load i32, ptr %i.aee, align 8, !tbaa !33
  %i.aeg = zext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds nuw [16 x i8], ptr %i.aed, i64 %i.aeg
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.aei = phi ptr [ %i.aeb, %bb.hd ], [ %i.aeh, %bb.he ]
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  %i.aek = load i8, ptr %i.aej, align 8, !tbaa !33
  %.not1460 = icmp eq i8 %i.aek, 4
  br i1 %.not1460, label %_ssa_op1_range_underflow.exit662.thread, label %_ssa_op1_range_underflow.exit662.thread1155

bb.hg:                                            ; preds = %_ssa_op2_max_range.exit904
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !83 ; 2 uses
  %.not19.i661 = icmp eq ptr %i.aem, null
  br i1 %.not19.i661, label %_ssa_op1_range_underflow.exit662.thread1155, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aen = load i32, ptr %3, align 4, !tbaa !57   ; 2 uses
  %i.aeo = icmp sgt i32 %i.aen, -1
  br i1 %i.aeo, label %bb.hi, label %_ssa_op1_range_underflow.exit662.thread1155

bb.hi:                                            ; preds = %bb.hh
  %i.aep = zext nneg i32 %i.aen to i64
  %i.aeq = getelementptr inbounds nuw [40 x i8], ptr %i.aem, i64 %i.aep ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 4
  %i.aes = load i8, ptr %i.aer, align 4
  %i.aet = trunc i8 %i.aes to i1
  br i1 %i.aet, label %_ssa_op1_range_underflow.exit662, label %_ssa_op1_range_underflow.exit662.thread1155

_ssa_op1_range_underflow.exit662:                 ; preds = %bb.hi
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeq, i64 24
  %i.aev = load i8, ptr %i.aeu, align 8, !tbaa !85, !range !86, !noundef !87
  %.not584 = icmp eq i8 %i.aev, 0
  br i1 %.not584, label %_ssa_op1_range_underflow.exit662.thread, label %_ssa_op1_range_underflow.exit662.thread1155

_ssa_op1_range_underflow.exit662.thread:          ; preds = %bb.hf, %_ssa_op1_range_underflow.exit662
  switch i8 %i.xt, label %bb.hn [
    i8 1, label %bb.hj
    i8 0, label %_ssa_op1_range_underflow.exit662.thread1155
  ]

bb.hj:                                            ; preds = %_ssa_op1_range_underflow.exit662.thread
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !81
  %i.aey = and i32 %i.aex, 33554432
  %.not20.i939 = icmp eq i32 %i.aey, 0
  br i1 %.not20.i939, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aez = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !33
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr inbounds i8, ptr %2, i64 %i.afb
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !82
  %i.aff = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !33
  %i.afh = zext i32 %i.afg to i64
  %i.afi = getelementptr inbounds nuw [16 x i8], ptr %i.afe, i64 %i.afh
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.afj = phi ptr [ %i.afc, %bb.hk ], [ %i.afi, %bb.hl ]
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afl = load i8, ptr %i.afk, align 8, !tbaa !33
  %.not1461 = icmp eq i8 %i.afl, 4
  br i1 %.not1461, label %_ssa_op2_range_underflow.exit941.thread, label %_ssa_op1_range_underflow.exit662.thread1155

bb.hn:                                            ; preds = %_ssa_op1_range_underflow.exit662.thread
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !83 ; 2 uses
  %.not19.i940 = icmp eq ptr %i.afn, null
  br i1 %.not19.i940, label %_ssa_op1_range_underflow.exit662.thread1155, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.afo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !58 ; 2 uses
  %i.afq = icmp sgt i32 %i.afp, -1
  br i1 %i.afq, label %bb.hp, label %_ssa_op1_range_underflow.exit662.thread1155

bb.hp:                                            ; preds = %bb.ho
  %i.afr = zext nneg i32 %i.afp to i64
  %i.afs = getelementptr inbounds nuw [40 x i8], ptr %i.afn, i64 %i.afr ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 4
  %i.afu = load i8, ptr %i.aft, align 4
  %i.afv = trunc i8 %i.afu to i1
  br i1 %i.afv, label %_ssa_op2_range_underflow.exit941, label %_ssa_op1_range_underflow.exit662.thread1155

_ssa_op2_range_underflow.exit941:                 ; preds = %bb.hp
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afs, i64 24
  %i.afx = load i8, ptr %i.afw, align 8, !tbaa !85, !range !86, !noundef !87
  %.not585 = icmp eq i8 %i.afx, 0
  br i1 %.not585, label %_ssa_op2_range_underflow.exit941.thread, label %_ssa_op1_range_underflow.exit662.thread1155

_ssa_op2_range_underflow.exit941.thread:          ; preds = %bb.hm, %_ssa_op2_range_underflow.exit941
  br i1 %cond1390, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %_ssa_op2_range_underflow.exit941.thread
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !81
  %i.aga = and i32 %i.afz, 33554432
  %.not20.i695 = icmp eq i32 %i.aga, 0
  br i1 %.not20.i695, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.agb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !33
  %i.agd = sext i32 %i.agc to i64
  %i.age = getelementptr inbounds i8, ptr %2, i64 %i.agd
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !82
  %i.agh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.agi = load i32, ptr %i.agh, align 8, !tbaa !33
  %i.agj = zext i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [16 x i8], ptr %i.agg, i64 %i.agj
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.agl = phi ptr [ %i.age, %bb.hr ], [ %i.agk, %bb.hs ]
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  %i.agn = load i8, ptr %i.agm, align 8, !tbaa !33
  %.not1462 = icmp eq i8 %i.agn, 4
  br i1 %.not1462, label %_ssa_op1_range_overflow.exit697.thread, label %_ssa_op1_range_underflow.exit662.thread1155

bb.hu:                                            ; preds = %_ssa_op2_range_underflow.exit941.thread
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !83 ; 2 uses
  %.not19.i696 = icmp eq ptr %i.agp, null
  br i1 %.not19.i696, label %_ssa_op1_range_underflow.exit662.thread1155, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.agq = load i32, ptr %3, align 4, !tbaa !57   ; 2 uses
  %i.agr = icmp sgt i32 %i.agq, -1
  br i1 %i.agr, label %bb.hw, label %_ssa_op1_range_underflow.exit662.thread1155

bb.hw:                                            ; preds = %bb.hv
  %i.ags = zext nneg i32 %i.agq to i64
  %i.agt = getelementptr inbounds nuw [40 x i8], ptr %i.agp, i64 %i.ags ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 4
  %i.agv = load i8, ptr %i.agu, align 4
  %i.agw = trunc i8 %i.agv to i1
  br i1 %i.agw, label %_ssa_op1_range_overflow.exit697, label %_ssa_op1_range_underflow.exit662.thread1155

_ssa_op1_range_overflow.exit697:                  ; preds = %bb.hw
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agt, i64 25
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !88, !range !86, !noundef !87
  %.not586 = icmp eq i8 %i.agy, 0
  br i1 %.not586, label %_ssa_op1_range_overflow.exit697.thread, label %_ssa_op1_range_underflow.exit662.thread1155

_ssa_op1_range_overflow.exit697.thread:           ; preds = %bb.ht, %_ssa_op1_range_overflow.exit697
  br i1 %cond1391, label %bb.hx, label %bb.ib

bb.hx:                                            ; preds = %_ssa_op1_range_overflow.exit697.thread
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !81
  %i.ahb = and i32 %i.aha, 33554432
  %.not20.i974 = icmp eq i32 %i.ahb, 0
  br i1 %.not20.i974, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ahc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !33
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds i8, ptr %2, i64 %i.ahe
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !82
  %i.ahi = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !33
  %i.ahk = zext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds nuw [16 x i8], ptr %i.ahh, i64 %i.ahk
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.ahm = phi ptr [ %i.ahf, %bb.hy ], [ %i.ahl, %bb.hz ]
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.aho = load i8, ptr %i.ahn, align 8, !tbaa !33
  %.not1463 = icmp eq i8 %i.aho, 4
  br i1 %.not1463, label %_ssa_op2_range_overflow.exit976, label %_ssa_op1_range_underflow.exit662.thread1155

bb.ib:                                            ; preds = %_ssa_op1_range_overflow.exit697.thread
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !83 ; 2 uses
  %.not19.i975 = icmp eq ptr %i.ahq, null
  br i1 %.not19.i975, label %_ssa_op1_range_underflow.exit662.thread1155, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ahr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !58 ; 2 uses
  %i.aht = icmp sgt i32 %i.ahs, -1
  br i1 %i.aht, label %bb.id, label %_ssa_op1_range_underflow.exit662.thread1155

bb.id:                                            ; preds = %bb.ic
  %i.ahu = zext nneg i32 %i.ahs to i64
  %i.ahv = getelementptr inbounds nuw [40 x i8], ptr %i.ahq, i64 %i.ahu ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4
  %i.ahx = load i8, ptr %i.ahw, align 4
  %i.ahy = trunc i8 %i.ahx to i1
  br i1 %i.ahy, label %bb.ie, label %_ssa_op1_range_underflow.exit662.thread1155

bb.ie:                                            ; preds = %bb.id
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahv, i64 25
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !88, !range !86, !noundef !87
  %i.aib = icmp ne i8 %i.aia, 0
  %i.aic = or i1 %i.adk, %i.aib
  br label %_ssa_op2_range_overflow.exit976

_ssa_op2_range_overflow.exit976:                  ; preds = %bb.ia, %bb.ie
  %.1.i973 = phi i1 [ %i.aic, %bb.ie ], [ %i.adk, %bb.ia ]
  %or.cond3 = or i1 %i.adn, %.1.i973
  %or.cond5 = or i1 %i.adq, %or.cond3
  %or.cond7 = or i1 %i.adt, %or.cond5
  br i1 %or.cond7, label %_ssa_op1_range_underflow.exit662.thread1155, label %bb.if

_ssa_op1_range_underflow.exit662.thread1155:      ; preds = %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %_ssa_op1_range_underflow.exit662.thread, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %_ssa_op2_max_range.exit904, %_ssa_op2_range_overflow.exit976, %_ssa_op1_range_overflow.exit697, %_ssa_op2_range_underflow.exit941, %_ssa_op1_range_underflow.exit662
  %i.aid = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.aid, align 8, !tbaa !78
  %i.aie = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.aie, align 1, !tbaa !79
  store i64 -9223372036854775808, ptr %5, align 8, !tbaa !89
  %i.aif = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9223372036854775807, ptr %i.aif, align 8, !tbaa !90
  br label %_ssa_op1_has_range.exit638.thread

bb.if:                                            ; preds = %_ssa_op2_range_overflow.exit976
  %i.aig = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 %.01077)
  %i.aih = tail call i64 @llvm.smin.i64(i64 %.01076, i64 %.01075)
  %. = tail call i64 @llvm.smin.i64(i64 %i.aig, i64 %i.aih)
  store i64 %., ptr %5, align 8, !tbaa !89
  %i.aii = tail call i64 @llvm.smax.i64(i64 %spec.select, i64 %.01077)
  %i.aij = tail call i64 @llvm.smax.i64(i64 %.01076, i64 %.01075)
  %i.aik = tail call i64 @llvm.smax.i64(i64 %i.aii, i64 %i.aij)
  %i.ail = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aik, ptr %i.ail, align 8, !tbaa !90
  br label %_ssa_op1_has_range.exit638.thread

bb.ig:                                            ; preds = %bb.a
  %i.aim = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !80 ; 4 uses
  switch i8 %i.ain, label %bb.ik [
    i8 1, label %bb.ih
    i8 0, label %_ssa_op1_has_range.exit638.thread
  ]

bb.ih:                                            ; preds = %bb.ig
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !81
  %i.aiq = and i32 %i.aip, 33554432
  %.not17.i624 = icmp eq i32 %i.aiq, 0
  br i1 %.not17.i624, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.air = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ais = load i32, ptr %i.air, align 8, !tbaa !33
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds i8, ptr %2, i64 %i.ait
  br label %.split1174

bb.ij:                                            ; preds = %bb.ih
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !82
  %i.aix = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aiy = load i32, ptr %i.aix, align 8, !tbaa !33
  %i.aiz = zext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds nuw [16 x i8], ptr %i.aiw, i64 %i.aiz
  br label %.split1174

.split1174:                                       ; preds = %bb.ij, %bb.ii
  %i.ajb = phi ptr [ %i.aiu, %bb.ii ], [ %i.aja, %bb.ij ]
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  %i.ajd = load i8, ptr %i.ajc, align 8, !tbaa !33
  %i.aje = icmp eq i8 %i.ajd, 4
  br i1 %i.aje, label %bb.im, label %_ssa_op1_has_range.exit638.thread

bb.ik:                                            ; preds = %bb.ig
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !83 ; 2 uses
  %.not16.i625 = icmp eq ptr %i.ajg, null
  br i1 %.not16.i625, label %_ssa_op1_has_range.exit638.thread, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.ajh = load i32, ptr %3, align 4, !tbaa !57   ; 2 uses
  %i.aji = icmp sgt i32 %i.ajh, -1
  br i1 %i.aji, label %_ssa_op1_has_range.exit626, label %_ssa_op1_has_range.exit638.thread

_ssa_op1_has_range.exit626:                       ; preds = %bb.il
  %i.ajj = zext nneg i32 %i.ajh to i64
  %i.ajk = getelementptr inbounds nuw [40 x i8], ptr %i.ajg, i64 %i.ajj
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4
  %i.ajm = load i8, ptr %i.ajl, align 4
  %i.ajn = trunc i8 %i.ajm to i1
  br i1 %i.ajn, label %bb.im, label %_ssa_op1_has_range.exit638.thread

bb.im:                                            ; preds = %.split1174, %_ssa_op1_has_range.exit626
  %i.ajo = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ajp = load i8, ptr %i.ajo, align 2, !tbaa !94 ; 4 uses
  switch i8 %i.ajp, label %bb.iq [
    i8 1, label %bb.in
    i8 0, label %_ssa_op1_has_range.exit638.thread
  ]

bb.in:                                            ; preds = %bb.im
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !81
  %i.ajs = and i32 %i.ajr, 33554432
  %.not17.i812 = icmp eq i32 %i.ajs, 0
  br i1 %.not17.i812, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ajt = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !33
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds i8, ptr %2, i64 %i.ajv
  br label %.split1176

bb.ip:                                            ; preds = %bb.in
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !82
  %i.ajz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !33
  %i.akb = zext i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [16 x i8], ptr %i.ajy, i64 %i.akb
  br label %.split1176

.split1176:                                       ; preds = %bb.ip, %bb.io
  %i.akd = phi ptr [ %i.ajw, %bb.io ], [ %i.akc, %bb.ip ]
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %i.akf = load i8, ptr %i.ake, align 8, !tbaa !33
  %i.akg = icmp eq i8 %i.akf, 4
  br i1 %i.akg, label %bb.is, label %_ssa_op1_has_range.exit638.thread

bb.iq:                                            ; preds = %bb.im
  %i.akh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !83 ; 2 uses
  %.not16.i813 = icmp eq ptr %i.aki, null
  br i1 %.not16.i813, label %_ssa_op1_has_range.exit638.thread, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.akj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !58 ; 2 uses
  %i.akl = icmp sgt i32 %i.akk, -1
  br i1 %i.akl, label %_ssa_op2_has_range.exit814, label %_ssa_op1_has_range.exit638.thread

_ssa_op2_has_range.exit814:                       ; preds = %bb.ir
  %i.akm = zext nneg i32 %i.akk to i64
  %i.akn = getelementptr inbounds nuw [40 x i8], ptr %i.aki, i64 %i.akm
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 4
  %i.akp = load i8, ptr %i.ako, align 4
  %i.akq = trunc i8 %i.akp to i1
  br i1 %i.akq, label %bb.is, label %_ssa_op1_has_range.exit638.thread

bb.is:                                            ; preds = %.split1176, %_ssa_op2_has_range.exit814
  %cond1394 = icmp eq i8 %i.ain, 1                ; 2 uses
  br i1 %cond1394, label %bb.it, label %bb.iy

bb.it:                                            ; preds = %bb.is
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !81
  %i.akt = and i32 %i.aks, 33554432
  %.not21.i729 = icmp eq i32 %i.akt, 0
  br i1 %.not21.i729, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aku = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.akv = load i32, ptr %i.aku, align 8, !tbaa !33
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds i8, ptr %2, i64 %i.akw
  br label %bb.iw

bb.iv:                                            ; preds = %bb.it
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !82
  %i.ala = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !33
  %i.alc = zext i32 %i.alb to i64
  %i.ald = getelementptr inbounds nuw [16 x i8], ptr %i.akz, i64 %i.alc
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.ale = phi ptr [ %i.akx, %bb.iu ], [ %i.ald, %bb.iv ] ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.alg = load i8, ptr %i.alf, align 8, !tbaa !33
  %i.alh = icmp eq i8 %i.alg, 4
  br i1 %i.alh, label %bb.ix, label %_ssa_op1_min_range.exit732

bb.ix:                                            ; preds = %bb.iw
  %i.ali = load i64, ptr %i.ale, align 8, !tbaa !33
  br label %_ssa_op1_min_range.exit732

bb.iy:                                            ; preds = %bb.is
  %i.alj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !83 ; 2 uses
  %.not20.i731 = icmp eq ptr %i.alk, null
  br i1 %.not20.i731, label %_ssa_op1_min_range.exit732, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.all = load i32, ptr %3, align 4, !tbaa !57   ; 2 uses
  %i.alm = icmp sgt i32 %i.all, -1
  br i1 %i.alm, label %bb.ja, label %_ssa_op1_min_range.exit732

bb.ja:                                            ; preds = %bb.iz
  %i.aln = zext nneg i32 %i.all to i64
  %i.alo = getelementptr inbounds nuw [40 x i8], ptr %i.alk, i64 %i.aln ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 4
  %i.alq = load i8, ptr %i.alp, align 4
  %i.alr = trunc i8 %i.alq to i1
  br i1 %i.alr, label %bb.jb, label %_ssa_op1_min_range.exit732

bb.jb:                                            ; preds = %bb.ja
  %i.als = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !91
  br label %_ssa_op1_min_range.exit732

_ssa_op1_min_range.exit732:                       ; preds = %bb.iw, %bb.iy, %bb.iz, %bb.ja, %bb.ix, %bb.jb
  %.1.i728 = phi i64 [ %i.alt, %bb.jb ], [ %i.ali, %bb.ix ], [ -9223372036854775808, %bb.iw ], [ -9223372036854775808, %bb.ja ], [ -9223372036854775808, %bb.iz ], [ -9223372036854775808, %bb.iy ] ; 5 uses
  %cond1395 = icmp eq i8 %i.ajp, 1                ; 2 uses
  br i1 %cond1395, label %bb.jc, label %bb.jh

bb.jc:                                            ; preds = %_ssa_op1_min_range.exit732
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !81
  %i.alw = and i32 %i.alv, 33554432
  %.not21.i852 = icmp eq i32 %i.alw, 0
  br i1 %.not21.i852, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.alx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !33
  %i.alz = sext i32 %i.aly to i64
  %i.ama = getelementptr inbounds i8, ptr %2, i64 %i.alz
  br label %bb.jf
end_hunk_1
