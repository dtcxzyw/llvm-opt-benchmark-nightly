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
  %i.ad = phi ptr [ %.pre, %.lr.ph ], [ %i.kq, %zend_ssa_check_scc_var.exit ] ; 4 uses
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
  %i.an = phi ptr [ %i.jf, %.loopexit.i.loopexit ], [ %i.ad, %.loopexit.i.preheader ]
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
  %i.bf = phi ptr [ %i.az, %.lr.ph95.i.preheader ], [ %i.jl, %bb.bq ]
  %i.bg = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv361
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32 ; 5 uses
  %i.bj = sext i32 %i.bi to i64                   ; 6 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.bj ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 12 uses
  %.pre377 = load i32, ptr %i.bl, align 4, !tbaa !193
  br label %bb.m

bb.m:                                             ; preds = %select.unfold.i, %.lr.ph95.i
  %i.bn = phi i32 [ %.pre377, %.lr.ph95.i ], [ %.0117.i71.i, %select.unfold.i ] ; 2 uses
  %i.bo = phi ptr [ %i.bf, %.lr.ph95.i ], [ %i.jf, %select.unfold.i ] ; 2 uses
  %i.bp = icmp sgt i32 %i.bn, -1
  br i1 %i.bp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !31 ; 2 uses
  %i.bu = getelementptr inbounds [48 x i8], ptr %i.bo, i64 %i.bj ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !31
  %i.bx = icmp slt i32 %i.bt, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8
  %i.ca = and i8 %i.bz, -3
  store i8 %i.ca, ptr %i.by, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cb = load i32, ptr %i.bk, align 8, !tbaa !192
  switch i32 %i.cb, label %bb.aa [
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
  %i.cc = load i32, ptr %i.bm, align 8, !tbaa !33
  %.pre.i.i = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.bm, align 8, !tbaa !33 ; 2 uses
  %.pre135.i.i = load ptr, ptr %.phi.trans.insert138.i.i, align 8, !tbaa !34
  %.pre145.i.i = sext i32 %i.cd to i64
  br label %bb.ag

bb.s:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@zend_update_type_info:bb.a
  %i.gmx = icmp eq i8 %i.gmw, 2
  %..i472 = select i1 %i.gmx, i32 -1067384704, i32 -520093697
  %i.gmy = or i32 %..i472, %.47522.i
  br label %bb.ayn

bb.ayn:                                           ; preds = %bb.aym, %bb.ayl, %bb.ayk
  %.57523.i = phi i32 [ %i.gmy, %bb.aym ], [ %.47522.i, %bb.ayl ], [ %.17519.i, %bb.ayk ] ; 3 uses
  %i.gmz = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.gmf ; 2 uses
  %i.gna = load i32, ptr %i.gmz, align 8, !tbaa !117 ; 2 uses
  %.not8946.i = icmp eq i32 %i.gna, %.57523.i
  br i1 %.not8946.i, label %.thread602, label %bb.ayo

bb.ayo:                                           ; preds = %bb.ayn
  %i.gnb = xor i32 %.57523.i, -1
  %i.gnc = and i32 %i.gna, %i.gnb
  %.not8949.i = icmp eq i32 %i.gnc, 0
  br i1 %.not8949.i, label %bb.ayp, label %bb.ayq

bb.ayp:                                           ; preds = %bb.ayo
  store i32 %.57523.i, ptr %i.gmz, align 8, !tbaa !117
  br label %.thread602

.thread602:                                       ; preds = %bb.ayp, %bb.ayj, %bb.ayn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %_zend_update_type_info.exit

.thread605:                                       ; preds = %bb.ayi, %zend_fetch_prop_type.exit471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %.thread582

bb.ayq:                                           ; preds = %bb.ayo
  %.val281 = load ptr, ptr %i.f, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val281, i32 noundef %i.gma)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %_zend_update_type_info.exit

bb.ayr:                                           ; preds = %_ssa_op1_info.exit46.thread
  %i.gnd = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.gne = load i32, ptr %i.gnd, align 4, !tbaa !38 ; 3 uses
  %i.gnf = icmp sgt i32 %i.gne, -1
  br i1 %i.gnf, label %bb.ays, label %_zend_update_type_info.exit

bb.ays:                                           ; preds = %bb.ayr
  %i.gng = zext nneg i32 %i.gne to i64            ; 2 uses
  %i.gnh = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.gng ; 2 uses
  %i.gni = load i32, ptr %i.gnh, align 8, !tbaa !119
  %i.gnj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.gnk = load i32, ptr %i.gnj, align 4, !tbaa !120
  %.not = icmp slt i32 %i.gni, %i.gnk
  br i1 %.not, label %bb.ayt, label %bb.ayv

bb.ayt:                                           ; preds = %bb.ays
  %i.gnl = getelementptr inbounds nuw i8, ptr %i.gnh, i64 40
  %i.gnm = load i8, ptr %i.gnl, align 8
  %i.gnn = lshr i8 %i.gnm, 2
  %i.gno = and i8 %i.gnn, 3                       ; 2 uses
  %.not8932.i = icmp eq i8 %i.gno, 0
  br i1 %.not8932.i, label %bb.ayv, label %bb.ayu

bb.ayu:                                           ; preds = %bb.ayt
  %i.gnp = icmp eq i8 %i.gno, 2
  %i.gnq = select i1 %i.gnp, i32 -1067384688, i32 -520093697
  br label %bb.ayv

bb.ayv:                                           ; preds = %bb.ayu, %bb.ayt, %bb.ays
  %.57517.i = phi i32 [ %i.gnq, %bb.ayu ], [ 16, %bb.ayt ], [ 16, %bb.ays ] ; 3 uses
  %i.gnr = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.gng ; 2 uses
  %i.gns = load i32, ptr %i.gnr, align 8, !tbaa !117 ; 2 uses
  %.not8933.i = icmp eq i32 %i.gns, %.57517.i
  br i1 %.not8933.i, label %_zend_update_type_info.exit, label %bb.ayw

bb.ayw:                                           ; preds = %bb.ayv
  %i.gnt = xor i32 %.57517.i, -1
  %i.gnu = and i32 %i.gns, %i.gnt
  %.not8936.i = icmp eq i32 %i.gnu, 0
  br i1 %.not8936.i, label %bb.ayx, label %.critedge10977.i

.critedge10977.i:                                 ; preds = %bb.ayw
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.gne)
  br label %_zend_update_type_info.exit

bb.ayx:                                           ; preds = %bb.ayw
  store i32 %.57517.i, ptr %i.gnr, align 8, !tbaa !117
  br label %_zend_update_type_info.exit

bb.ayy:                                           ; preds = %_ssa_op1_info.exit46.thread
  %i.gnv = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.gnw = load i32, ptr %i.gnv, align 4, !tbaa !38 ; 3 uses
  %i.gnx = icmp sgt i32 %i.gnw, -1
  br i1 %i.gnx, label %bb.ayz, label %_zend_update_type_info.exit

bb.ayz:                                           ; preds = %bb.ayy
  %i.gny = zext nneg i32 %i.gnw to i64            ; 2 uses
  %i.gnz = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.gny ; 2 uses
  %i.goa = load i32, ptr %i.gnz, align 8, !tbaa !119
  %i.gob = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.goc = load i32, ptr %i.gob, align 4, !tbaa !120
  %.not1623 = icmp slt i32 %i.goa, %i.goc
  br i1 %.not1623, label %bb.aza, label %bb.azc

bb.aza:                                           ; preds = %bb.ayz
  %i.god = getelementptr inbounds nuw i8, ptr %i.gnz, i64 40
  %i.goe = load i8, ptr %i.god, align 8
  %i.gof = lshr i8 %i.goe, 2
  %i.gog = and i8 %i.gof, 3                       ; 2 uses
  %.not8969.i = icmp eq i8 %i.gog, 0
  br i1 %.not8969.i, label %bb.azc, label %bb.azb

bb.azb:                                           ; preds = %bb.aza
  %i.goh = icmp eq i8 %i.gog, 2
  %i.goi = select i1 %i.goh, i32 -520095616, i32 -520093697
  br label %bb.azc

bb.azc:                                           ; preds = %bb.azb, %bb.aza, %bb.ayz
  %.57511.i = phi i32 [ %i.goi, %bb.azb ], [ -520095616, %bb.aza ], [ -520095616, %bb.ayz ] ; 3 uses
  %i.goj = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.gny ; 2 uses
  %i.gok = load i32, ptr %i.goj, align 8, !tbaa !117 ; 2 uses
  %.not8970.i = icmp eq i32 %i.gok, %.57511.i
  br i1 %.not8970.i, label %_zend_update_type_info.exit, label %bb.azd

bb.azd:                                           ; preds = %bb.azc
  %i.gol = xor i32 %.57511.i, -1
  %i.gom = and i32 %i.gok, %i.gol
  %.not8973.i = icmp eq i32 %i.gom, 0
  br i1 %.not8973.i, label %bb.aze, label %.critedge10981.i

.critedge10981.i:                                 ; preds = %bb.azd
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.gnw)
  br label %_zend_update_type_info.exit

bb.aze:                                           ; preds = %bb.azd
  store i32 %.57511.i, ptr %i.goj, align 8, !tbaa !117
  br label %_zend_update_type_info.exit

bb.azf:                                           ; preds = %_ssa_op1_info.exit46.thread
  %i.gon = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12
  %i.goo = load i32, ptr %i.gon, align 4, !tbaa !36 ; 3 uses
  %i.gop = icmp sgt i32 %i.goo, -1
  br i1 %i.gop, label %bb.azg, label %.thread582

bb.azg:                                           ; preds = %bb.azf
  %i.goq = zext nneg i32 %i.goo to i64            ; 2 uses
  %i.gor = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.goq ; 2 uses
  %i.gos = load i32, ptr %i.gor, align 8, !tbaa !119
  %i.got = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.gou = load i32, ptr %i.got, align 4, !tbaa !120
  %.not1709 = icmp slt i32 %i.gos, %i.gou
  br i1 %.not1709, label %bb.azh, label %bb.azj

bb.azh:                                           ; preds = %bb.azg
  %i.gov = getelementptr inbounds nuw i8, ptr %i.gor, i64 40
  %i.gow = load i8, ptr %i.gov, align 8
  %i.gox = lshr i8 %i.gow, 2
  %i.goy = and i8 %i.gox, 3                       ; 2 uses
  %.not10292.i = icmp eq i8 %i.goy, 0
  br i1 %.not10292.i, label %bb.azj, label %bb.azi

bb.azi:                                           ; preds = %bb.azh
  %i.goz = icmp ne i8 %i.goy, 2
  %..i475 = zext i1 %i.goz to i32
  %i.gpa = or disjoint i32 %..i475, -520093698
  br label %bb.azj

bb.azj:                                           ; preds = %bb.azi, %bb.azh, %bb.azg
  %.57505.i = phi i32 [ %i.gpa, %bb.azi ], [ -520093698, %bb.azh ], [ -520093698, %bb.azg ] ; 3 uses
  %i.gpb = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.goq ; 2 uses
  %i.gpc = load i32, ptr %i.gpb, align 8, !tbaa !117 ; 2 uses
  %.not10293.i = icmp eq i32 %i.gpc, %.57505.i
  br i1 %.not10293.i, label %.thread582, label %bb.azk

bb.azk:                                           ; preds = %bb.azj
  %i.gpd = xor i32 %.57505.i, -1
  %i.gpe = and i32 %i.gpc, %i.gpd
  %.not10296.i = icmp eq i32 %i.gpe, 0
  br i1 %.not10296.i, label %bb.azl, label %.critedge10420.critedge11041.i

.critedge10420.critedge11041.i:                   ; preds = %bb.azk
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.goo)
  br label %_zend_update_type_info.exit

bb.azl:                                           ; preds = %bb.azk
  store i32 %.57505.i, ptr %i.gpb, align 8, !tbaa !117
  br label %.thread582

.thread582:                                       ; preds = %bb.asm, %bb.asl, %bb.ask, %.thread605, %bb.azl, %bb.azj, %bb.azf
  %i.gpf = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.gpg = load i32, ptr %i.gpf, align 4, !tbaa !38 ; 3 uses
  %i.gph = icmp sgt i32 %i.gpg, -1
  br i1 %i.gph, label %bb.azm, label %_zend_update_type_info.exit

bb.azm:                                           ; preds = %.thread582
  %i.gpi = getelementptr inbounds nuw i8, ptr %.08506.i, i64 31
  %i.gpj = load i8, ptr %i.gpi, align 1, !tbaa !118
  switch i8 %i.gpj, label %bb.azn [
    i8 2, label %bb.azp
    i8 8, label %bb.azp
  ]

bb.azn:                                           ; preds = %bb.azm
  %i.gpk = load i8, ptr %i.np, align 4, !tbaa !55
  switch i8 %i.gpk, label %bb.azp [
    i8 83, label %bb.azo
    i8 86, label %bb.azo
    i8 92, label %bb.azo
    i8 95, label %bb.azo
    i8 84, label %bb.azo
    i8 87, label %bb.azo
    i8 93, label %bb.azo
    i8 96, label %bb.azo
    i8 85, label %bb.azo
    i8 88, label %bb.azo
    i8 94, label %bb.azo
    i8 97, label %bb.azo
    i8 -82, label %bb.azo
    i8 -81, label %bb.azo
    i8 -79, label %bb.azo
    i8 -78, label %bb.azo
  ]

bb.azo:                                           ; preds = %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn, %bb.azn
  br label %bb.azp

bb.azp:                                           ; preds = %bb.azm, %bb.azm, %bb.azn, %bb.azo
  %.1178502.i = phi i32 [ -486539266, %bb.azo ], [ -520094722, %bb.azm ], [ -520093698, %bb.azn ], [ -520094722, %bb.azm ] ; 3 uses
  %i.gpl = zext nneg i32 %i.gpg to i64            ; 2 uses
  %i.gpm = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.gpl ; 2 uses
  %i.gpn = load i32, ptr %i.gpm, align 8, !tbaa !119
  %i.gpo = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.gpp = load i32, ptr %i.gpo, align 4, !tbaa !120
  %.not1710 = icmp slt i32 %i.gpn, %i.gpp
  br i1 %.not1710, label %bb.azq, label %bb.azs

bb.azq:                                           ; preds = %bb.azp
  %i.gpq = getelementptr inbounds nuw i8, ptr %i.gpm, i64 40
  %i.gpr = load i8, ptr %i.gpq, align 8
  %i.gps = lshr i8 %i.gpr, 2
  %i.gpt = and i8 %i.gps, 3                       ; 2 uses
  %.not10298.i = icmp eq i8 %i.gpt, 0
  br i1 %.not10298.i, label %bb.azs, label %bb.azr

bb.azr:                                           ; preds = %bb.azq
  %i.gpu = icmp eq i8 %i.gpt, 2
  %..i476 = select i1 %i.gpu, i32 0, i32 1025
  %i.gpv = or i32 %..i476, %.1178502.i
  br label %bb.azs

bb.azs:                                           ; preds = %bb.azr, %bb.azq, %bb.azp
  %.5.i = phi i32 [ %i.gpv, %bb.azr ], [ %.1178502.i, %bb.azq ], [ %.1178502.i, %bb.azp ] ; 3 uses
  %i.gpw = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.gpl ; 2 uses
  %i.gpx = load i32, ptr %i.gpw, align 8, !tbaa !117 ; 2 uses
  %.not10299.i = icmp eq i32 %i.gpx, %.5.i
  br i1 %.not10299.i, label %_zend_update_type_info.exit, label %bb.azt

bb.azt:                                           ; preds = %bb.azs
  %i.gpy = xor i32 %.5.i, -1
  %i.gpz = and i32 %i.gpx, %i.gpy
  %.not10302.i = icmp eq i32 %i.gpz, 0
  br i1 %.not10302.i, label %bb.azu, label %.critedge10985.i

.critedge10985.i:                                 ; preds = %bb.azt
  %.val282 = load ptr, ptr %i.f, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val282, i32 noundef %i.gpg)
  br label %_zend_update_type_info.exit

bb.azu:                                           ; preds = %bb.azt
  store i32 %.5.i, ptr %i.gpw, align 8, !tbaa !117
  br label %_zend_update_type_info.exit

.critedge10906.i:                                 ; preds = %bb.aue, %bb.atx, %._crit_edge838, %bb.aug
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %_zend_update_type_info.exit

_zend_update_type_info.exit:                      ; preds = %bb.ayg, %bb.aww, %bb.awm, %bb.awl, %bb.awb, %bb.atf, %bb.ark, %bb.ard, %bb.aqv, %bb.aqo, %bb.ali, %bb.ake, %bb.ahs, %bb.agi, %bb.afz, %bb.afx, %bb.afr, %bb.afp, %bb.afn, %bb.afj, %bb.afh, %bb.afc, %bb.afa, %bb.aeo, %bb.aem, %bb.aea, %bb.abm, %bb.aaw, %bb.wu, %bb.hh, %bb.adq, %bb.ma, %bb.lt, %bb.axz, %bb.asy, %bb.apg, %bb.api, %bb.apc, %bb.dm, %bb.dq, %bb.ds, %bb.dt, %bb.dx, %bb.dz, %bb.ea, %bb.ee, %bb.eg, %bb.eh, %bb.el, %bb.en, %.thread488, %bb.fv, %bb.fx, %bb.hd, %bb.hf, %._crit_edge1018, %bb.hg, %._crit_edge1021, %switch.lookup, %bb.hl, %bb.hn, %bb.ld, %bb.mc, %._crit_edge1009, %bb.na, %bb.ne, %bb.ng, %bb.oc, %bb.og, %bb.oi, %bb.qk, %bb.qz, %bb.rb, %.thread525, %bb.sz, %bb.tb, %bb.tj, %bb.ty, %bb.ua, %bb.us, %bb.uw, %bb.uy, %bb.wa, %bb.wt, %._crit_edge967, %._crit_edge970, %bb.xj, %bb.xn, %bb.xp, %bb.yv, %bb.yw, %bb.za, %bb.zc, %bb.zk, %bb.zl, %bb.zp, %bb.zr, %bb.zs, %bb.zw, %bb.zy, %bb.zz, %bb.aad, %bb.aaf, %bb.aag, %bb.aah, %bb.aaj, %bb.aak, %bb.aav, %._crit_edge955, %._crit_edge958, %bb.aax, %bb.abl, %._crit_edge949, %._crit_edge952, %bb.acd, %bb.ach, %bb.acj, %bb.ack, %bb.aco, %bb.acq, %bb.acr, %bb.acv, %bb.acx, %bb.acy, %bb.adc, %bb.ade, %bb.adf, %bb.adj, %bb.adl, %bb.adz, %._crit_edge937, %._crit_edge940, %bb.aei, %bb.aen, %._crit_edge934, %bb.aez, %._crit_edge919, %bb.afb, %._crit_edge922, %bb.afg, %._crit_edge913, %bb.afi, %._crit_edge916, %bb.afm, %._crit_edge907, %bb.afo, %._crit_edge910, %bb.afq, %._crit_edge925, %bb.afw, %._crit_edge904, %bb.afy, %._crit_edge901, %bb.age, %bb.agg, %._crit_edge928, %bb.agh, %._crit_edge931, %thread-pre-split540.thread, %bb.aha, %bb.ahc, %bb.aho, %bb.ahq, %._crit_edge885, %bb.ahr, %._crit_edge888, %bb.aih, %bb.ajb, %bb.ajd, %bb.aje, %bb.aji, %bb.ajk, %bb.ajl, %bb.ajp, %bb.ajr, %bb.ajs, %bb.akd, %._crit_edge878, %._crit_edge882, %bb.ale, %bb.alg, %._crit_edge872, %bb.alh, %._crit_edge875, %bb.aly, %bb.amp, %bb.amr, %bb.apq, %bb.apu, %bb.apw, %bb.apx, %bb.aqx, %._crit_edge851, %bb.arm, %._crit_edge848, %bb.asj, %._crit_edge842, %bb.atg, %bb.atk, %bb.atm, %bb.auh, %bb.aul, %bb.aun, %bb.auo, %bb.aus, %bb.auu, %bb.auv, %bb.auz, %bb.avb, %bb.avc, %bb.avg, %bb.avi, %bb.avj, %bb.avn, %bb.avp, %bb.avq, %bb.avu, %bb.avw, %bb.awk, %._crit_edge826, %._crit_edge829, %bb.awv, %._crit_edge832, %._crit_edge835, %bb.axe, %bb.axi, %bb.axk, %bb.axl, %bb.axp, %bb.axr, %bb.axs, %bb.axw, %bb.axy, %._crit_edge, %bb.ayh, %bb.ayr, %bb.ayv, %bb.ayx, %bb.ayy, %bb.azc, %bb.aze, %.thread582, %bb.azs, %bb.azu, %.critedge10906.i, %.thread585, %.thread591, %.thread602, %bb.ayq, %bb.atw, %bb.asx, %bb.apj, %bb.aoe, %.critedge10802.i, %emit_type_narrowing_warning.exit, %emit_type_narrowing_warning.exit353, %emit_type_narrowing_warning.exit356, %bb.db, %bb.dc, %bb.dd, %bb.dh, %emit_type_narrowing_warning.exit359, %bb.dl, %.critedge.i, %.critedge10316.i, %.critedge10320.i, %.critedge10324.i, %.critedge10334.i, %.critedge10347.i, %.critedge10356.i, %.critedge10368.i, %.critedge10373.i, %.critedge10383.i, %.critedge10389.i, %.critedge10400.i, %.critedge10416.i, %.critedge10420.critedge11003.i, %.critedge10434.i, %.critedge10443.i, %.critedge10420.critedge11005.i, %.critedge10459.i, %.critedge10467.i, %.critedge10476.i, %.critedge10485.i, %.critedge10495.i, %.critedge10504.i, %.critedge10420.critedge11010.i, %.critedge10513.i, %.critedge10518.i, %.critedge10420.critedge11012.i, %.critedge10528.i, %.critedge10539.i, %.critedge10549.i, %.critedge10559.i, %.critedge10568.i, %.critedge10420.critedge11014.i, %.critedge10582.i, %.critedge10420.critedge11016.i, %.critedge10598.i, %.critedge10420.critedge11018.i, %.critedge10602.i, %.critedge10606.i, %.critedge10615.i, %.critedge10619.i, %.critedge10628.i, %.critedge10639.i, %.critedge10650.i, %.critedge10420.critedge11020.i, %.critedge10420.critedge11022.i, %.critedge10420.critedge11024.i, %.critedge10661.i, %.critedge10665.i, %.critedge10674.i, %.critedge10678.i, %.critedge10682.i, %.critedge10689.i, %.critedge10693.i, %.critedge10706.i, %.critedge10718.i, %.critedge10725.i, %.critedge10734.i, %.critedge10420.critedge11030.i, %.critedge10750.i, %.critedge10759.i, %.critedge10774.i, %.critedge10785.i, %.critedge10815.i, %.critedge10830.i, %.critedge10841.i, %.critedge10850.i, %.critedge10859.i, %.critedge10868.i, %.critedge10884.i, %.critedge10888.i, %.critedge10900.i, %.critedge10908.i, %.critedge10912.i, %.critedge10916.i, %.critedge10920.i, %.critedge10927.i, %.critedge10929.i, %.critedge10940.i, %.critedge10949.i, %.critedge10953.i, %.critedge10420.critedge11039.i, %.critedge10957.i, %.critedge10961.i, %.critedge10965.i, %.critedge10977.i, %.critedge10981.i, %.critedge10420.critedge11041.i, %.critedge10985.i
  %.330.i = phi i32 [ -1, %.critedge10802.i ], [ -1, %.critedge10985.i ], [ -1, %.critedge10420.critedge11041.i ], [ -1, %.critedge.i ], [ -1, %.critedge10316.i ], [ -1, %.critedge10320.i ], [ -1, %.critedge10324.i ], [ -1, %.critedge10347.i ], [ -1, %.critedge10334.i ], [ -1, %.critedge10368.i ], [ -1, %.critedge10356.i ], [ -1, %.critedge10373.i ], [ -1, %.critedge10900.i ], [ -1, %.critedge10434.i ], [ -1, %.critedge10420.critedge11003.i ], [ -1, %.critedge10420.critedge11005.i ], [ -1, %.critedge10443.i ], [ -1, %.critedge10476.i ], [ -1, %.critedge10467.i ], [ -1, %.critedge10459.i ], [ -1, %.critedge10504.i ], [ -1, %.critedge10495.i ], [ 0, %bb.dd ], [ -1, %.critedge10513.i ], [ -1, %.critedge10420.critedge11010.i ], [ -1, %.critedge10420.critedge11012.i ], [ -1, %.critedge10518.i ], [ -1, %.critedge10549.i ], [ -1, %.critedge10539.i ], [ -1, %.critedge10528.i ], [ -1, %.critedge10420.critedge11014.i ], [ -1, %.critedge10568.i ], [ -1, %.critedge10559.i ], [ -1, %.critedge10598.i ], [ -1, %.critedge10420.critedge11016.i ], [ -1, %.critedge10582.i ], [ -1, %.critedge10602.i ], [ -1, %.critedge10420.critedge11018.i ], [ -1, %.critedge10606.i ], [ -1, %.critedge10615.i ], [ -1, %.critedge10619.i ], [ -1, %.critedge10628.i ], [ -1, %.critedge10639.i ], [ -1, %.critedge10420.critedge11020.i ], [ -1, %.critedge10650.i ], [ -1, %.critedge10420.critedge11022.i ], [ -1, %.critedge10420.critedge11024.i ], [ -1, %.critedge10661.i ], [ -1, %.critedge10665.i ], [ 0, %bb.dc ], [ -1, %.critedge10678.i ], [ -1, %.critedge10682.i ], [ -1, %.critedge10689.i ], [ -1, %.critedge10693.i ], [ -1, %.critedge10718.i ], [ -1, %.critedge10706.i ], [ -1, %.critedge10725.i ], [ -1, %.critedge10734.i ], [ -1, %.critedge10420.critedge11030.i ], [ -1, %.critedge10759.i ], [ -1, %.critedge10750.i ], [ -1, %.critedge10785.i ], [ -1, %.critedge10774.i ], [ -1, %bb.apj ], [ 0, %bb.dh ], [ -1, %.critedge10815.i ], [ 0, %bb.db ], [ -1, %.critedge10841.i ], [ -1, %bb.asx ], [ -1, %.critedge10868.i ], [ -1, %.critedge10859.i ], [ -1, %.critedge10850.i ], [ -1, %.critedge10884.i ], [ -1, %.critedge10888.i ], [ -1, %bb.atw ], [ -1, %.critedge10908.i ], [ -1, %.critedge10912.i ], [ -1, %.critedge10916.i ], [ -1, %.critedge10920.i ], [ -1, %.critedge10927.i ], [ -1, %.critedge10929.i ], [ -1, %.critedge10940.i ], [ -1, %.critedge10949.i ], [ -1, %.critedge10420.critedge11039.i ], [ -1, %.critedge10953.i ], [ -1, %.critedge10981.i ], [ -1, %.critedge10957.i ], [ -1, %.critedge10961.i ], [ -1, %.critedge10965.i ], [ -1, %bb.ayq ], [ -1, %.critedge10977.i ], [ -1, %.critedge10830.i ], [ -1, %emit_type_narrowing_warning.exit359 ], [ -1, %emit_type_narrowing_warning.exit356 ], [ -1, %emit_type_narrowing_warning.exit353 ], [ -1, %emit_type_narrowing_warning.exit ], [ -1, %.critedge10400.i ], [ -1, %.critedge10485.i ], [ -1, %.critedge10674.i ], [ -1, %.critedge10389.i ], [ -1, %.critedge10383.i ], [ -1, %.critedge10416.i ], [ 0, %bb.dl ], [ 0, %bb.aoe ], [ 0, %.thread602 ], [ 0, %bb.asy ], [ 0, %.thread591 ], [ 0, %bb.apg ], [ 0, %.thread585 ], [ 0, %bb.axz ], [ 0, %bb.aem ], [ 0, %bb.api ], [ 0, %bb.dq ], [ 0, %bb.dm ], [ 0, %bb.apc ], [ 0, %.critedge10906.i ], [ 0, %bb.azu ], [ 0, %bb.azs ], [ 0, %.thread582 ], [ 0, %bb.aze ], [ 0, %bb.azc ], [ 0, %bb.ayy ], [ 0, %bb.ayx ], [ 0, %bb.ayv ], [ 0, %bb.ayr ], [ 0, %bb.ayh ], [ 0, %._crit_edge ], [ 0, %bb.ayg ], [ 0, %bb.dz ], [ 0, %bb.axy ], [ 0, %bb.axw ], [ 0, %bb.axs ], [ 0, %bb.axr ], [ 0, %bb.axp ], [ 0, %bb.axl ], [ 0, %bb.axk ], [ 0, %bb.axi ], [ 0, %bb.axe ], [ 0, %._crit_edge835 ], [ 0, %bb.aww ], [ 0, %bb.ee ], [ 0, %._crit_edge832 ], [ 0, %bb.awv ], [ 0, %bb.ea ], [ 0, %._crit_edge829 ], [ 0, %bb.awl ], [ 0, %bb.awb ], [ 0, %._crit_edge826 ], [ 0, %bb.awk ], [ 0, %bb.awm ], [ 0, %bb.avw ], [ 0, %bb.avu ], [ 0, %bb.avq ], [ 0, %bb.avp ], [ 0, %bb.avn ], [ 0, %bb.avj ], [ 0, %bb.avi ], [ 0, %bb.avg ], [ 0, %bb.avc ], [ 0, %bb.avb ], [ 0, %bb.auz ], [ 0, %bb.auv ], [ 0, %bb.auu ], [ 0, %bb.aus ], [ 0, %bb.auo ], [ 0, %bb.aun ], [ 0, %bb.aul ], [ 0, %bb.auh ], [ 0, %bb.atm ], [ 0, %bb.atk ], [ 0, %bb.atg ], [ 0, %._crit_edge842 ], [ 0, %bb.atf ], [ 0, %bb.dx ], [ 0, %bb.asj ], [ 0, %._crit_edge848 ], [ 0, %bb.arm ], [ 0, %bb.ard ], [ 0, %bb.ark ], [ 0, %._crit_edge851 ], [ 0, %bb.aqx ], [ 0, %bb.aqo ], [ 0, %bb.aqv ], [ 0, %bb.apx ], [ 0, %bb.apw ], [ 0, %bb.apu ], [ 0, %bb.apq ], [ 0, %bb.amr ], [ 0, %bb.amp ], [ 0, %bb.aly ], [ 0, %._crit_edge875 ], [ 0, %bb.ali ], [ 0, %bb.alh ], [ 0, %._crit_edge872 ], [ 0, %bb.alg ], [ 0, %bb.ale ], [ 0, %._crit_edge882 ], [ 0, %bb.ake ], [ 0, %bb.dt ], [ 0, %._crit_edge878 ], [ 0, %bb.akd ], [ 0, %bb.ajs ], [ 0, %bb.ajr ], [ 0, %bb.ajp ], [ 0, %bb.ajl ], [ 0, %bb.ajk ], [ 0, %bb.aji ], [ 0, %bb.aje ], [ 0, %bb.ajd ], [ 0, %bb.ajb ], [ 0, %bb.aih ], [ 0, %._crit_edge888 ], [ 0, %bb.ahs ], [ 0, %bb.ahr ], [ 0, %._crit_edge885 ], [ 0, %bb.ahq ], [ 0, %bb.aho ], [ 0, %bb.ahc ], [ 0, %bb.aha ], [ 0, %thread-pre-split540.thread ], [ 0, %._crit_edge931 ], [ 0, %bb.agi ], [ 0, %bb.agh ], [ 0, %._crit_edge928 ], [ 0, %bb.agg ], [ 0, %bb.age ], [ 0, %._crit_edge901 ], [ 0, %bb.afz ], [ 0, %bb.afy ], [ 0, %._crit_edge904 ], [ 0, %bb.afx ], [ 0, %bb.afw ], [ 0, %._crit_edge925 ], [ 0, %bb.afr ], [ 0, %bb.afq ], [ 0, %._crit_edge910 ], [ 0, %bb.afp ], [ 0, %bb.afo ], [ 0, %._crit_edge907 ], [ 0, %bb.afn ], [ 0, %bb.afm ], [ 0, %._crit_edge916 ], [ 0, %bb.afj ], [ 0, %bb.afi ], [ 0, %._crit_edge913 ], [ 0, %bb.afh ], [ 0, %bb.afg ], [ 0, %._crit_edge922 ], [ 0, %bb.afc ], [ 0, %bb.afb ], [ 0, %._crit_edge919 ], [ 0, %bb.afa ], [ 0, %bb.aez ], [ 0, %._crit_edge934 ], [ 0, %bb.aeo ], [ 0, %bb.aen ], [ 0, %bb.aei ], [ 0, %._crit_edge940 ], [ 0, %bb.aea ], [ 0, %bb.ds ], [ 0, %._crit_edge937 ], [ 0, %bb.adz ], [ 0, %bb.adq ], [ 0, %bb.adl ], [ 0, %bb.adj ], [ 0, %bb.adf ], [ 0, %bb.ade ], [ 0, %bb.adc ], [ 0, %bb.acy ], [ 0, %bb.acx ], [ 0, %bb.acv ], [ 0, %bb.acr ], [ 0, %bb.acq ], [ 0, %bb.aco ], [ 0, %bb.ack ], [ 0, %bb.acj ], [ 0, %bb.ach ], [ 0, %bb.acd ], [ 0, %._crit_edge952 ], [ 0, %bb.abm ], [ 0, %._crit_edge949 ], [ 0, %bb.abl ], [ 0, %bb.aax ], [ 0, %._crit_edge958 ], [ 0, %bb.aaw ], [ 0, %._crit_edge955 ], [ 0, %bb.aav ], [ 0, %bb.aak ], [ 0, %bb.aaj ], [ 0, %bb.aah ], [ 0, %bb.aag ], [ 0, %bb.aaf ], [ 0, %bb.aad ], [ 0, %bb.zz ], [ 0, %bb.zy ], [ 0, %bb.zw ], [ 0, %bb.zs ], [ 0, %bb.zr ], [ 0, %bb.zp ], [ 0, %bb.zl ], [ 0, %bb.zk ], [ 0, %bb.zc ], [ 0, %bb.za ], [ 0, %bb.yw ], [ 0, %bb.yv ], [ 0, %bb.xp ], [ 0, %bb.xn ], [ 0, %bb.xj ], [ 0, %._crit_edge970 ], [ 0, %bb.wu ], [ 0, %._crit_edge967 ], [ 0, %bb.wt ], [ 0, %bb.wa ], [ 0, %bb.uy ], [ 0, %bb.uw ], [ 0, %bb.us ], [ 0, %bb.ua ], [ 0, %bb.ty ], [ 0, %bb.tj ], [ 0, %bb.tb ], [ 0, %bb.sz ], [ 0, %.thread525 ], [ 0, %bb.rb ], [ 0, %bb.qz ], [ 0, %bb.qk ], [ 0, %bb.oi ], [ 0, %bb.og ], [ 0, %bb.oc ], [ 0, %bb.ng ], [ 0, %bb.ne ], [ 0, %bb.na ], [ 0, %._crit_edge1009 ], [ 0, %bb.mc ], [ 0, %bb.lt ], [ 0, %bb.ma ], [ 0, %bb.ld ], [ 0, %bb.hn ], [ 0, %bb.hl ], [ 0, %switch.lookup ], [ 0, %._crit_edge1021 ], [ 0, %bb.hh ], [ 0, %bb.hg ], [ 0, %._crit_edge1018 ], [ 0, %bb.hf ], [ 0, %bb.hd ], [ 0, %bb.fx ], [ 0, %bb.fv ], [ 0, %.thread488 ], [ 0, %bb.en ], [ 0, %bb.el ], [ 0, %bb.eh ], [ 0, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.330.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @zend_get_return_info_from_signature_only(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert19 = getelementptr inbounds i8, ptr %.pre, i64 -16
  %.pre20 = load i32, ptr %.phi.trans.insert19, align 8 ; 2 uses
  %i.d = and i32 %.pre20, 536870912
  %.not16 = icmp eq i32 %i.d, 0
  %or.cond21 = select i1 %4, i1 true, i1 %.not16
  br i1 %or.cond21, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %.pre, i64 -24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call fastcc range(i32 -1073741824, 1073741824) i32 @zend_convert_type(ptr noundef %1, ptr %i.f, i32 %.pre20, ptr noundef %2)
  %i.h = icmp ne ptr %2, null
  %i.i = zext i1 %i.h to i8
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %2, align 8, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %storemerge = phi i8 [ 0, %bb.c ], [ %i.i, %._crit_edge ]
  %.0 = phi i32 [ -520094722, %bb.c ], [ %i.g, %._crit_edge ] ; 2 uses
  store i8 %storemerge, ptr %3, align 1, !tbaa !106
  %i.j = load i32, ptr %i.a, align 4, !tbaa !33
  %i.k = and i32 %i.j, 16781312
  %or.cond = icmp eq i32 %i.k, 4096
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = or i32 %.0, 1024
  store ptr null, ptr %2, align 8, !tbaa !116
  store i8 0, ptr %3, align 1, !tbaa !106
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %.0, %bb.d ], [ %i.l, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_init_func_return_info(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert19.i = getelementptr inbounds i8, ptr %.pre.i, i64 -16
  %.pre20.i = load i32, ptr %.phi.trans.insert19.i, align 8
  %i.c = getelementptr inbounds i8, ptr %.pre.i, i64 -24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call fastcc range(i32 -1073741824, 1073741824) i32 @zend_convert_type(ptr noundef %1, ptr %i.d, i32 %.pre20.i, ptr noundef nonnull %i.b) ; 2 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !33
  %i.g = and i32 %i.f, 16781312
  %or.cond.i = icmp eq i32 %i.g, 4096
  br i1 %or.cond.i, label %bb.b, label %zend_get_return_info_from_signature_only.exit

bb.b:                                             ; preds = %bb.a
  %i.h = or i32 %i.e, 1024
  store ptr null, ptr %i.b, align 8, !tbaa !116
  br label %zend_get_return_info_from_signature_only.exit

zend_get_return_info_from_signature_only.exit:    ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ 2, %bb.a ]
  %.1.i = phi i32 [ %i.h, %bb.b ], [ %i.e, %bb.a ]
  store i32 %.1.i, ptr %2, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -4
  %i.l = or disjoint i8 %i.k, %.0
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i8 %i.l, ptr %i.i, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_ssa_inference(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = tail call { i64, i64 } asm "mulq $3\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 40, i64 range(i64 -2147483648, 2147483648) %i.e) #18, !srcloc !210 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %zend_arena_calloc.exit, label %bb.c, !prof !151

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.2, i64 noundef 40, i64 noundef range(i64 -2147483648, 2147483648) %i.e) #19
  unreachable

zend_arena_calloc.exit:                           ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !212    ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214  ; 3 uses
  %i.k = add i64 %i.g, 7
  %i.l = and i64 %i.k, -8                         ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !215
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = sub i64 %i.o, %i.p
  %.not.i47 = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i47, label %bb.e, label %bb.d, !prof !25

bb.d:                                             ; preds = %zend_arena_calloc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store ptr %i.r, ptr %i.i, align 8, !tbaa !214
  br label %zend_arena_alloc.exit

bb.e:                                             ; preds = %zend_arena_calloc.exit
  %i.s = add i64 %i.l, 24
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.o, %i.t
  %..i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.u) ; 2 uses
  %i.v = tail call noalias ptr @_emalloc(i64 noundef %..i) #16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.l
  store ptr %i.x, ptr %i.v, align 8, !tbaa !214
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !215
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.i, ptr %i.aa, align 8, !tbaa !216
  store ptr %i.v, ptr %0, align 8, !tbaa !212
  br label %zend_arena_alloc.exit

zend_arena_alloc.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
end_hunk_1
begin_hunk_2_@zend_infer_types_ex:bb.a
  br i1 %.not8946.i1650, label %.thread1659, label %.thread1652

.thread1652:                                      ; preds = %bb.arv, %.thread1648
  %.57523.i16511654 = phi i32 [ %.17519.i, %.thread1648 ], [ %.57523.i, %bb.arv ] ; 2 uses
  %i.htm = phi ptr [ %i.htk, %.thread1648 ], [ %i.hti, %bb.arv ]
  %i.htn = phi i32 [ %i.htl, %.thread1648 ], [ %i.htj, %bb.arv ]
  %i.hto = xor i32 %.57523.i16511654, -1
  %i.htp = and i32 %i.htn, %i.hto
  %.not8949.i = icmp eq i32 %i.htp, 0
  br i1 %.not8949.i, label %bb.arw, label %bb.arx

bb.arw:                                           ; preds = %.thread1652
  store i32 %.57523.i16511654, ptr %i.htm, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.hsk)
  br label %.thread1659

.thread1659:                                      ; preds = %bb.art, %bb.arw, %bb.arv, %.thread1648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %_zend_update_type_info.exit.thread

.thread1662:                                      ; preds = %bb.ars, %zend_fetch_prop_type.exit877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %.thread1513

bb.arx:                                           ; preds = %.thread1652
  %.val643 = load ptr, ptr %i.h, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val643, i32 noundef %i.hsk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %_zend_update_type_info.exit

bb.ary:                                           ; preds = %_ssa_op1_info.exit402.thread
  %i.htq = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.htr = load i32, ptr %i.htq, align 4, !tbaa !38 ; 4 uses
  %i.hts = icmp sgt i32 %i.htr, -1
  br i1 %i.hts, label %bb.arz, label %_zend_update_type_info.exit.thread

bb.arz:                                           ; preds = %bb.ary
  %i.htt = zext nneg i32 %i.htr to i64            ; 3 uses
  %i.htu = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.htt ; 2 uses
  %i.htv = load i32, ptr %i.htu, align 8, !tbaa !119
  %i.htw = load i32, ptr %i.s, align 4, !tbaa !120
  %i.htx = icmp slt i32 %i.htv, %i.htw
  br i1 %i.htx, label %bb.asa, label %.thread1664

bb.asa:                                           ; preds = %bb.arz
  %i.hty = getelementptr inbounds nuw i8, ptr %i.htu, i64 40
  %i.htz = load i8, ptr %i.hty, align 8
  %i.hua = lshr i8 %i.htz, 2
  %i.hub = and i8 %i.hua, 3                       ; 2 uses
  %.not8932.i = icmp eq i8 %i.hub, 0
  %i.huc = icmp eq i8 %i.hub, 2
  %i.hud = select i1 %i.huc, i32 -1067384688, i32 -520093697
  %.57517.i = select i1 %.not8932.i, i32 16, i32 %i.hud ; 2 uses
  %i.hue = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.htt ; 2 uses
  %i.huf = load i32, ptr %i.hue, align 8, !tbaa !117 ; 2 uses
  %.not8933.i = icmp eq i32 %i.huf, %.57517.i
  br i1 %.not8933.i, label %_zend_update_type_info.exit.thread, label %.thread1668

.thread1664:                                      ; preds = %bb.arz
  %i.hug = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.htt ; 2 uses
  %i.huh = load i32, ptr %i.hug, align 8, !tbaa !117 ; 2 uses
  %.not8933.i1666 = icmp eq i32 %i.huh, 16
  br i1 %.not8933.i1666, label %_zend_update_type_info.exit.thread, label %.thread1668

.thread1668:                                      ; preds = %bb.asa, %.thread1664
  %.57517.i16671670 = phi i32 [ 16, %.thread1664 ], [ %.57517.i, %bb.asa ] ; 2 uses
  %i.hui = phi ptr [ %i.hug, %.thread1664 ], [ %i.hue, %bb.asa ]
  %i.huj = phi i32 [ %i.huh, %.thread1664 ], [ %i.huf, %bb.asa ]
  %i.huk = xor i32 %.57517.i16671670, -1
  %i.hul = and i32 %i.huj, %i.huk
  %.not8936.i = icmp eq i32 %i.hul, 0
  br i1 %.not8936.i, label %bb.asb, label %.critedge10977.i

.critedge10977.i:                                 ; preds = %.thread1668
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.lf, i32 noundef %i.htr)
  br label %_zend_update_type_info.exit

bb.asb:                                           ; preds = %.thread1668
  store i32 %.57517.i16671670, ptr %i.hui, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.htr)
  br label %_zend_update_type_info.exit.thread

bb.asc:                                           ; preds = %_ssa_op1_info.exit402.thread
  %i.hum = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.hun = load i32, ptr %i.hum, align 4, !tbaa !38 ; 4 uses
  %i.huo = icmp sgt i32 %i.hun, -1
  br i1 %i.huo, label %bb.asd, label %_zend_update_type_info.exit.thread

bb.asd:                                           ; preds = %bb.asc
  %i.hup = zext nneg i32 %i.hun to i64            ; 3 uses
  %i.huq = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.hup ; 2 uses
  %i.hur = load i32, ptr %i.huq, align 8, !tbaa !119
  %i.hus = load i32, ptr %i.s, align 4, !tbaa !120
  %i.hut = icmp slt i32 %i.hur, %i.hus
  br i1 %i.hut, label %bb.ase, label %.thread1671

bb.ase:                                           ; preds = %bb.asd
  %i.huu = getelementptr inbounds nuw i8, ptr %i.huq, i64 40
  %i.huv = load i8, ptr %i.huu, align 8
  %i.huw = and i8 %i.huv, 4
  %i.hux = icmp eq i8 %i.huw, 0
  %.57511.i = select i1 %i.hux, i32 -520095616, i32 -520093697 ; 2 uses
  %i.huy = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.hup ; 2 uses
  %i.huz = load i32, ptr %i.huy, align 8, !tbaa !117 ; 2 uses
  %.not8970.i = icmp eq i32 %i.huz, %.57511.i
  br i1 %.not8970.i, label %_zend_update_type_info.exit.thread, label %.thread1675

.thread1671:                                      ; preds = %bb.asd
  %i.hva = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.hup ; 2 uses
  %i.hvb = load i32, ptr %i.hva, align 8, !tbaa !117 ; 2 uses
  %.not8970.i1673 = icmp eq i32 %i.hvb, -520095616
  br i1 %.not8970.i1673, label %_zend_update_type_info.exit.thread, label %.thread1675

.thread1675:                                      ; preds = %bb.ase, %.thread1671
  %.57511.i16741677 = phi i32 [ -520095616, %.thread1671 ], [ %.57511.i, %bb.ase ] ; 2 uses
  %i.hvc = phi ptr [ %i.hva, %.thread1671 ], [ %i.huy, %bb.ase ]
  %i.hvd = phi i32 [ %i.hvb, %.thread1671 ], [ %i.huz, %bb.ase ]
  %i.hve = xor i32 %.57511.i16741677, -1
  %i.hvf = and i32 %i.hvd, %i.hve
  %.not8973.i = icmp eq i32 %i.hvf, 0
  br i1 %.not8973.i, label %bb.asf, label %.critedge10981.i

.critedge10981.i:                                 ; preds = %.thread1675
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.lf, i32 noundef %i.hun)
  br label %_zend_update_type_info.exit

bb.asf:                                           ; preds = %.thread1675
  store i32 %.57511.i16741677, ptr %i.hvc, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.hun)
  br label %_zend_update_type_info.exit.thread

bb.asg:                                           ; preds = %_ssa_op1_info.exit402.thread
  %i.hvg = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12
  %i.hvh = load i32, ptr %i.hvg, align 4, !tbaa !36 ; 4 uses
  %i.hvi = icmp sgt i32 %i.hvh, -1
  br i1 %i.hvi, label %bb.ash, label %.thread1513

bb.ash:                                           ; preds = %bb.asg
  %i.hvj = zext nneg i32 %i.hvh to i64            ; 3 uses
  %i.hvk = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.hvj ; 2 uses
  %i.hvl = load i32, ptr %i.hvk, align 8, !tbaa !119
  %i.hvm = load i32, ptr %i.s, align 4, !tbaa !120
  %i.hvn = icmp slt i32 %i.hvl, %i.hvm
  br i1 %i.hvn, label %bb.asi, label %.thread1678

bb.asi:                                           ; preds = %bb.ash
  %i.hvo = getelementptr inbounds nuw i8, ptr %i.hvk, i64 40
  %i.hvp = load i8, ptr %i.hvo, align 8
  %i.hvq = lshr i8 %i.hvp, 2
  %i.hvr = and i8 %i.hvq, 3                       ; 2 uses
  %.not10292.i = icmp eq i8 %i.hvr, 0
  %i.hvs = icmp ne i8 %i.hvr, 2
  %..i881 = zext i1 %i.hvs to i32
  %i.hvt = or disjoint i32 %..i881, -520093698
  %.57505.i = select i1 %.not10292.i, i32 -520093698, i32 %i.hvt ; 2 uses
  %i.hvu = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.hvj ; 2 uses
  %i.hvv = load i32, ptr %i.hvu, align 8, !tbaa !117 ; 2 uses
  %.not10293.i = icmp eq i32 %i.hvv, %.57505.i
  br i1 %.not10293.i, label %.thread1513, label %.thread1682

.thread1678:                                      ; preds = %bb.ash
  %i.hvw = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.hvj ; 2 uses
  %i.hvx = load i32, ptr %i.hvw, align 8, !tbaa !117 ; 2 uses
  %.not10293.i1680 = icmp eq i32 %i.hvx, -520093698
  br i1 %.not10293.i1680, label %.thread1513, label %.thread1682

.thread1682:                                      ; preds = %bb.asi, %.thread1678
  %.57505.i16811684 = phi i32 [ -520093698, %.thread1678 ], [ %.57505.i, %bb.asi ] ; 2 uses
  %i.hvy = phi ptr [ %i.hvw, %.thread1678 ], [ %i.hvu, %bb.asi ]
  %i.hvz = phi i32 [ %i.hvx, %.thread1678 ], [ %i.hvv, %bb.asi ]
  %i.hwa = xor i32 %.57505.i16811684, -1
  %i.hwb = and i32 %i.hvz, %i.hwa
  %.not10296.i = icmp eq i32 %i.hwb, 0
  br i1 %.not10296.i, label %bb.asj, label %.critedge10420.critedge11041.i

.critedge10420.critedge11041.i:                   ; preds = %.thread1682
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.lf, i32 noundef %i.hvh)
  br label %_zend_update_type_info.exit

bb.asj:                                           ; preds = %.thread1682
  store i32 %.57505.i16811684, ptr %i.hvy, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.hvh)
  br label %.thread1513

.thread1513:                                      ; preds = %bb.anu, %bb.ant, %bb.ans, %.thread1678, %.thread1662, %bb.asj, %bb.asi, %bb.asg
  %i.hwc = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.hwd = load i32, ptr %i.hwc, align 4, !tbaa !38 ; 4 uses
  %i.hwe = icmp sgt i32 %i.hwd, -1
  br i1 %i.hwe, label %bb.ask, label %_zend_update_type_info.exit.thread

bb.ask:                                           ; preds = %.thread1513
  %i.hwf = getelementptr inbounds nuw i8, ptr %.08506.i, i64 31
  %i.hwg = load i8, ptr %i.hwf, align 1, !tbaa !118
  switch i8 %i.hwg, label %bb.asl [
    i8 2, label %bb.asn
    i8 8, label %bb.asn
  ]

bb.asl:                                           ; preds = %bb.ask
  %i.hwh = load i8, ptr %i.zh, align 4, !tbaa !55
  switch i8 %i.hwh, label %bb.asn [
    i8 83, label %bb.asm
    i8 86, label %bb.asm
    i8 92, label %bb.asm
    i8 95, label %bb.asm
    i8 84, label %bb.asm
    i8 87, label %bb.asm
    i8 93, label %bb.asm
    i8 96, label %bb.asm
    i8 85, label %bb.asm
    i8 88, label %bb.asm
    i8 94, label %bb.asm
    i8 97, label %bb.asm
    i8 -82, label %bb.asm
    i8 -81, label %bb.asm
    i8 -79, label %bb.asm
    i8 -78, label %bb.asm
  ]

bb.asm:                                           ; preds = %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl, %bb.asl
  br label %bb.asn

bb.asn:                                           ; preds = %bb.ask, %bb.ask, %bb.asl, %bb.asm
  %.1178502.i = phi i32 [ -486539266, %bb.asm ], [ -520094722, %bb.ask ], [ -520093698, %bb.asl ], [ -520094722, %bb.ask ] ; 3 uses
  %i.hwi = zext nneg i32 %i.hwd to i64            ; 3 uses
  %i.hwj = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.hwi ; 2 uses
  %i.hwk = load i32, ptr %i.hwj, align 8, !tbaa !119
  %i.hwl = load i32, ptr %i.s, align 4, !tbaa !120
  %i.hwm = icmp slt i32 %i.hwk, %i.hwl
  br i1 %i.hwm, label %bb.aso, label %.thread1685

bb.aso:                                           ; preds = %bb.asn
  %i.hwn = getelementptr inbounds nuw i8, ptr %i.hwj, i64 40
  %i.hwo = load i8, ptr %i.hwn, align 8
  %i.hwp = and i8 %i.hwo, 4
  %i.hwq = icmp eq i8 %i.hwp, 0
  %i.hwr = select i1 %i.hwq, i32 0, i32 1025
  %.5.i = or i32 %i.hwr, %.1178502.i              ; 2 uses
  %i.hws = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.hwi ; 2 uses
  %i.hwt = load i32, ptr %i.hws, align 8, !tbaa !117 ; 2 uses
  %.not10299.i = icmp eq i32 %i.hwt, %.5.i
  br i1 %.not10299.i, label %_zend_update_type_info.exit.thread, label %.thread1689

.thread1685:                                      ; preds = %bb.asn
  %i.hwu = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.hwi ; 2 uses
  %i.hwv = load i32, ptr %i.hwu, align 8, !tbaa !117 ; 2 uses
  %.not10299.i1687 = icmp eq i32 %i.hwv, %.1178502.i
  br i1 %.not10299.i1687, label %_zend_update_type_info.exit.thread, label %.thread1689

.thread1689:                                      ; preds = %bb.aso, %.thread1685
  %.5.i16881691 = phi i32 [ %.1178502.i, %.thread1685 ], [ %.5.i, %bb.aso ] ; 2 uses
  %i.hww = phi ptr [ %i.hwu, %.thread1685 ], [ %i.hws, %bb.aso ]
  %i.hwx = phi i32 [ %i.hwv, %.thread1685 ], [ %i.hwt, %bb.aso ]
  %i.hwy = xor i32 %.5.i16881691, -1
  %i.hwz = and i32 %i.hwx, %i.hwy
  %.not10302.i = icmp eq i32 %i.hwz, 0
  br i1 %.not10302.i, label %bb.asp, label %.critedge10985.i

.critedge10985.i:                                 ; preds = %.thread1689
  %.val644 = load ptr, ptr %i.h, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val644, i32 noundef %i.hwd)
  br label %_zend_update_type_info.exit

bb.asp:                                           ; preds = %.thread1689
  store i32 %.5.i16881691, ptr %i.hww, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.hwd)
  br label %_zend_update_type_info.exit.thread

.critedge10906.i:                                 ; preds = %._crit_edge2723, %bb.apa, %bb.aoy, %bb.aox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %_zend_update_type_info.exit.thread

_zend_update_type_info.exit.thread:               ; preds = %bb.yb, %.thread3474, %bb.aqw, %bb.aqm, %.thread3470, %bb.ahk, %bb.agk, %bb.aej, %bb.adf, %bb.acw, %bb.acu, %bb.aco, %bb.acm, %bb.ack, %bb.acg, %bb.ace, %bb.abz, %bb.abx, %bb.abo, %bb.abd, %bb.zf, %bb.yp, %bb.vp, %bb.im, %bb.fb, %bb.fa, %.thread922, %bb.ez, %bb.fd, %bb.fg, %bb.ajw, %.thread1685, %.thread1671, %.thread1664, %.thread1659, %.thread1629, %.thread1622, %.thread1615, %.thread1587, %.thread1580, %.thread1573, %.thread1566, %.thread1559, %.thread1552, %.thread1543, %.thread1528, %.thread1516, %.thread1458, %.thread1419, %.thread1371, %.thread1364, %.thread1357, %.thread1331, %zend_hash_find_ptr.exit.thread, %.thread1299, %.thread1292, %.thread1285, %.thread1278, %.thread1271, %.thread1240, %.thread1233, %.thread1226, %.thread1212, %.thread1189, %.thread1147, %.thread1133, %.thread1117, %.thread1094, %.thread1059, %.thread1044, %.thread987, %.thread966, %.thread950, %.thread943, %.thread936, %.thread929, %.critedge10906.i, %bb.asp, %bb.aso, %.thread1513, %bb.asf, %bb.ase, %bb.asc, %bb.asb, %bb.asa, %bb.ary, %bb.arr, %._crit_edge2707, %bb.arq, %bb.arm, %bb.arl, %bb.arj, %bb.ari, %bb.arh, %bb.arf, %bb.are, %bb.ard, %bb.arb, %._crit_edge2720, %bb.aqv, %._crit_edge2717, %bb.aqu, %bb.aqs, %._crit_edge2714, %bb.aql, %._crit_edge2711, %bb.aqk, %bb.aqi, %bb.apy, %bb.apx, %bb.apv, %bb.apu, %bb.apt, %bb.apr, %bb.apq, %bb.app, %bb.apn, %bb.apm, %bb.apl, %bb.apj, %bb.api, %bb.aph, %bb.apf, %bb.ape, %bb.apd, %bb.apb, %bb.aol, %bb.aok, %bb.aoi, %._crit_edge2727, %bb.aoh, %bb.anr, %._crit_edge2735, %bb.and, %bb.anb, %bb.ana, %._crit_edge2738, %bb.amk, %bb.ami, %bb.amh, %bb.aln, %bb.alm, %bb.all, %bb.alj, %bb.ain, %bb.aim, %bb.ahx, %._crit_edge2759, %bb.ahj, %._crit_edge2756, %bb.ahi, %bb.ahg, %._crit_edge2765, %bb.agj, %._crit_edge2762, %bb.agi, %bb.agg, %bb.afy, %bb.afx, %bb.afw, %bb.afu, %bb.aft, %bb.afs, %bb.afq, %bb.afp, %bb.afo, %bb.aev, %._crit_edge2771, %bb.aei, %._crit_edge2768, %bb.aeh, %bb.aef, %bb.adw, %bb.adv, %thread-pre-split1329.thread, %._crit_edge2818, %bb.ade, %._crit_edge2815, %bb.add, %bb.adb, %._crit_edge2785, %bb.acv, %._crit_edge2788, %bb.act, %._crit_edge2812, %bb.acn, %._crit_edge2797, %bb.acl, %._crit_edge2791, %bb.acj, %._crit_edge2803, %bb.acf, %._crit_edge2800, %bb.acd, %._crit_edge2809, %bb.aby, %._crit_edge2806, %bb.abw, %._crit_edge2821, %bb.abn, %bb.abi, %._crit_edge2827, %bb.abc, %._crit_edge2824, %bb.abb, %bb.aaz, %bb.aap, %bb.aao, %bb.aam, %bb.aal, %bb.aak, %bb.aai, %bb.aah, %bb.aag, %bb.aae, %bb.aad, %bb.aac, %bb.aaa, %bb.zz, %bb.zy, %bb.zw, %._crit_edge2839, %bb.ze, %._crit_edge2836, %bb.zd, %bb.zb, %bb.yq, %._crit_edge2845, %bb.yo, %._crit_edge2842, %bb.yn, %bb.yl, %bb.yd, %bb.yc, %bb.ya, %bb.xz, %bb.xy, %bb.xw, %bb.xv, %bb.xu, %bb.xs, %bb.xr, %bb.xq, %bb.xo, %bb.xn, %bb.xi, %bb.xh, %bb.xf, %bb.xe, %bb.wb, %bb.wa, %bb.vy, %._crit_edge2865, %bb.vo, %._crit_edge2862, %bb.vn, %bb.vl, %bb.uz, %bb.uc, %bb.ub, %bb.tz, %bb.tk, %bb.tj, %bb.sw, %bb.sr, %bb.sq, %bb.sd, %bb.qx, %bb.qw, %bb.qj, %bb.om, %bb.ol, %bb.oj, %bb.nr, %bb.nq, %bb.no, %._crit_edge2905, %bb.mt, %bb.mr, %bb.mq, %bb.lw, %bb.ip, %bb.io, %switch.lookup, %._crit_edge2917, %bb.il, %._crit_edge2914, %bb.ik, %bb.ii, %bb.hf, %bb.he, %.thread964, %bb.fy, %bb.fw, %bb.fu, %bb.ft, %bb.fs, %bb.fq, %bb.fp, %bb.fo, %bb.fm, %bb.fl, %bb.fj, %bb.fh, %bb.aky, %bb.ala, %bb.alb, %.thread1447, %bb.aoe, %bb.arn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.lr.ph.i.backedge

_zend_update_type_info.exit:                      ; preds = %bb.arx, %bb.aos, %bb.aod, %bb.alc, %.critedge10802.i, %emit_type_narrowing_warning.exit737, %emit_type_narrowing_warning.exit740, %emit_type_narrowing_warning.exit743, %emit_type_narrowing_warning.exit746, %emit_type_narrowing_warning.exit749, %.critedge10316.i, %.critedge10320.i, %emit_type_narrowing_warning.exit754, %.critedge10334.i, %.critedge10347.i, %.critedge10356.i, %.critedge10368.i, %.critedge10373.i, %.critedge10383.i, %.critedge10389.i, %.critedge10400.i, %.critedge10416.i, %.critedge10420.critedge11003.i, %.critedge10434.i, %.critedge10443.i, %.critedge10420.critedge11005.i, %.critedge10459.i, %.critedge10467.i, %.critedge10476.i, %.critedge10485.i, %.critedge10495.i, %.critedge10504.i, %.critedge10420.critedge11010.i, %.critedge10513.i, %.critedge10518.i, %.critedge10420.critedge11012.i, %.critedge10528.i, %.critedge10539.i, %.critedge10549.i, %.critedge10559.i, %.critedge10568.i, %.critedge10420.critedge11014.i, %.critedge10582.i, %.critedge10420.critedge11016.i, %.critedge10598.i, %.critedge10420.critedge11018.i, %.critedge10602.i, %.critedge10606.i, %.critedge10615.i, %.critedge10619.i, %.critedge10628.i, %.critedge10639.i, %.critedge10650.i, %.critedge10420.critedge11020.i, %.critedge10420.critedge11022.i, %.critedge10420.critedge11024.i, %.critedge10661.i, %.critedge10665.i, %.critedge10674.i, %.critedge10678.i, %.critedge10682.i, %.critedge10689.i, %.critedge10693.i, %.critedge10706.i, %.critedge10718.i, %.critedge10725.i, %.critedge10734.i, %.critedge10420.critedge11030.i, %.critedge10750.i, %.critedge10759.i, %.critedge10774.i, %.critedge10785.i, %.critedge10815.i, %.critedge10830.i, %.critedge10841.i, %.critedge10850.i, %.critedge10859.i, %.critedge10868.i, %.critedge10884.i, %.critedge10888.i, %.critedge10900.i, %.critedge10908.i, %.critedge10912.i, %.critedge10916.i, %.critedge10920.i, %.critedge10927.i, %.critedge10929.i, %.critedge10940.i, %.critedge10949.i, %.critedge10953.i, %.critedge10420.critedge11039.i, %.critedge10957.i, %.critedge10961.i, %.critedge10965.i, %.critedge10977.i, %.critedge10981.i, %.critedge10420.critedge11041.i, %.critedge10985.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.critedge348

.critedge348:                                     ; preds = %bb.b, %bb.a, %_zend_update_type_info.exit, %emit_type_narrowing_warning.exit, %emit_type_narrowing_warning.exit660
  %.10 = phi i32 [ -1, %_zend_update_type_info.exit ], [ -1, %emit_type_narrowing_warning.exit660 ], [ -1, %emit_type_narrowing_warning.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.10
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_type_narrowing(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 8 uses
  %i.f = shl nuw nsw i64 %i.e, 4                  ; 2 uses
  %i.g = icmp ugt i32 %i.b, 131072                ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @_emalloc(i64 noundef %i.f) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = alloca i8, i64 %i.f, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ] ; 7 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e ; 4 uses
  %i.l = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !120  ; 2 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !24
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph122, label %.critedge

.lr.ph122:                                        ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.not124 = icmp eq i64 %i.e, 0
  %i.v = sext i32 %i.n to i64
  %min.iters.check = icmp ult i32 %i.b, 193
  %n.vec = and i64 %i.e, 134217724                ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph122, %zend_bitset_union.exit
  %indvars.iv131 = phi i64 [ %i.v, %.lr.ph122 ], [ %indvars.iv.next132, %zend_bitset_union.exit ] ; 5 uses
  %.0104120 = phi i1 [ false, %.lr.ph122 ], [ %.2, %zend_bitset_union.exit ] ; 8 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.x = getelementptr inbounds [40 x i8], ptr %i.w, i64 %indvars.iv131
  %i.y = load i32, ptr %i.x, align 8, !tbaa !117
  %i.z = and i32 %i.y, 2047
  %.not = icmp eq i32 %i.z, 16
  br i1 %.not, label %bb.f, label %zend_bitset_union.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.ab = getelementptr inbounds [48 x i8], ptr %i.aa, i64 %indvars.iv131 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !121 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %zend_bitset_union.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %zend_bitset_union.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.aj = zext nneg i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = load i8, ptr %i.al, align 4, !tbaa !55
  %i.an = icmp eq i8 %i.am, 22
  br i1 %i.an, label %bb.i, label %zend_bitset_union.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 31
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !118
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %zend_bitset_union.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 29
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !80
  %i.at = icmp eq i8 %i.as, 8
  br i1 %i.at, label %bb.k, label %zend_bitset_union.exit

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 30
  %i.av = load i8, ptr %i.au, align 2, !tbaa !94
  %i.aw = icmp eq i8 %i.av, 1
  br i1 %i.aw, label %bb.l, label %zend_bitset_union.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.t, align 4, !tbaa !81
  %i.ay = and i32 %i.ax, 33554432
  %.not112 = icmp eq i32 %i.ay, 0
  br i1 %.not112, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ak, i64 %i.bb
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bi = phi ptr [ %i.bc, %bb.m ], [ %i.bh, %bb.n ]
  call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.l, i1 false)
  %i.bj = trunc nsw i64 %indvars.iv131 to i32
  %i.bk = call fastcc zeroext i1 @can_convert_to_double(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bj, ptr noundef %i.bi, ptr noundef %i.j)
  br i1 %i.bk, label %bb.p, label %zend_bitset_union.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.bm = getelementptr inbounds [40 x i8], ptr %i.bl, i64 %indvars.iv131
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = or i8 %i.bo, 8
  store i8 %i.bp, ptr %i.bn, align 4
  br i1 %.not124, label %zend_bitset_union.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.loopexit
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.loopexit ], [ 0, %bb.p ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %.loopexit ], [ 0, %bb.p ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv128
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !74 ; 2 uses
  %.not113 = icmp eq i64 %i.br, 0
  br i1 %.not113, label %.loopexit, label %bb.q
end_hunk_2
