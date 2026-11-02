Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_aggregators?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_communicator_t = type { %struct.ompi_communicator_t, [128 x i8] }
%struct.ompi_communicator_t = type { %struct.opal_infosubscriber_t, %struct.opal_mutex_t, ptr, %struct.ompi_comm_extended_cid_t, %struct.ompi_comm_extended_cid_block_t, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.opal_infosubscriber_t = type { %struct.opal_object_t, %struct.opal_hash_table_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.opal_hash_table_t = type { %struct.opal_object_t, ptr, i64, i64, i64, i32, i32, i32, i32, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }
%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.dt_type_desc_t = type { i64, i64, ptr }
%struct.ompi_predefined_op_t = type opaque
%struct.mca_pml_base_module_2_1_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.ompi_request_fns_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mca_io_ompio_cart_topo_components = type { i32, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [29 x i8] c"aggregators_cutoff_threshold\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"max_aggregators_ratio\00", align 1
@ompi_mpi_comm_world = external local_unnamed_addr global %struct.ompi_predefined_communicator_t, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"OUT OF MEMORY\0A\00", align 1
@ompi_mpi_long_long_int = external global %struct.ompi_predefined_datatype_t, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"mca_io_ompio_cart_based_grouping: Error in cart_get \0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"mca_io_ompio_cart_based_grouping: Error in cart_rank\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"grouping_option\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"mca_common_ompio_create_groups: error in mca_common_ompio_prepare_to_group\0A\00", align 1
@.str.7 = private unnamed_addr constant [84 x i8] c"mca_common_ompio_create_groups: error in subroutine called within switch statement\0A\00", align 1
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_op_sum = external global %struct.ompi_predefined_op_t, align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"mca_common_ompio_create_groups: error in allreduce\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"mca_common_ompio_create_groups: could not allocate memory\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"bytes_per_agg\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"mca_common_ompio_merge_initial_groups: error in mca_common_ompio_merge_groups\0A\00", align 1
@mca_pml = external local_unnamed_addr global %struct.mca_pml_base_module_2_1_0_t, align 8
@.str.12 = private unnamed_addr constant [55 x i8] c"mca_common_ompio_merge_initial_groups: error in Isend\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"mca_common_ompio_merge_initial_groups: error in Isend 2\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"mca_common_ompio_merge_initial_groups: error in Recv\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"mca_common_ompio_merge_initial_groups: error in Recv 2\0A\00", align 1
@ompi_request_functions = external local_unnamed_addr global %struct.ompi_request_fns_t, align 8
@.str.16 = private unnamed_addr constant [80 x i8] c"mca_common_ompio_split_initial_groups: error in mca_common_ompio_split_a_group\0A\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"mca_common_ompio_split_initial_groups: error in mca_common_ompio_split_a_group 2\0A\00", align 1
@.str.18 = private unnamed_addr constant [82 x i8] c"mca_common_ompio_split_initial_groups: error in mca_common_ompio_split_a_group 3\0A\00", align 1
@.str.19 = private unnamed_addr constant [82 x i8] c"mca_common_ompio_prepare_to_group: error in ompi_fcoll_base_coll_allgather_array\0A\00", align 1
@.str.20 = private unnamed_addr constant [84 x i8] c"mca_common_ompio_prepare_to_group: error in ompi_fcoll_base_coll_allgather_array 2\0A\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @mca_common_ompio_simple_grouping(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call i32 %i.b(ptr noundef nonnull @.str, i32 noundef 29) #10
  %i.d = sitofp i32 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+02           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !90   ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load i64, ptr %i.h, align 8, !tbaa !91
  %i.j = icmp eq i64 %i.g, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 10 uses
  %i.m = icmp slt i32 %i.l, 16
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i32 %i.l, 128
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.l, 4096
  %. = select i1 %i.o, i32 16, i32 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.050 = phi i32 [ 4, %bb.b ], [ 2, %bb.a ], [ %., %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load i32, ptr %i.p, align 8, !tbaa !92
  %i.r = sext i32 %i.q to i64                     ; 6 uses
  %i.s = sext i32 %i.l to i64                     ; 3 uses
  %i.t = uitofp i64 %i.r to double                ; 8 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %i.g, %i.r
  %.pre.i = uitofp i64 %i.g to double             ; 4 uses
  br i1 %i.u, label %cost_calc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = fdiv double %i.t, %.pre.i
  br label %cost_calc.exit

bb.g:                                             ; preds = %bb.d
  %i.w = sitofp i32 %i.l to double
  %i.x = tail call double @sqrt(double noundef %i.w) #10
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = sitofp i32 %i.y to double                ; 4 uses
  %i.aa = fdiv double 1.000000e+00, %i.z          ; 2 uses
  %i.ab = udiv i64 %i.r, %i.s
  %i.ac = icmp ugt i64 %i.g, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = fdiv nsz double %i.t, %i.z
  %i.ae = uitofp i64 %i.g to double               ; 2 uses
  %i.af = tail call nsz double @llvm.minnum.f64(double %i.ad, double %i.ae)
  br label %cost_calc.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = sext i32 %i.y to i64
  %i.ah = mul i64 %i.g, %i.ag
  %i.ai = uitofp i64 %i.g to double
  %3 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.g)
  %4 = uitofp i64 %3 to double
  br label %cost_calc.exit

cost_calc.exit:                                   ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.pre-phi.i = phi double [ %.pre.i, %bb.f ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ], [ %.pre.i, %bb.e ]
  %.053.i = phi double [ 1.000000e+00, %bb.f ], [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ 1.000000e+00, %bb.e ] ; 3 uses
  %.1.i = phi double [ %.pre.i, %bb.f ], [ %i.af, %bb.h ], [ %4, %bb.i ], [ %i.t, %bb.e ] ; 3 uses
  %.051.i = phi double [ %i.v, %bb.f ], [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.aj = fcmp olt double %.1.i, f0x4180000000000000
  %.0.i = select i1 %i.aj, double 1.080000e-06, double 1.190000e-05 ; 2 uses
  %i.ak = fmul double %.053.i, %.1.i
  %i.al = fdiv double %.pre-phi.i, %i.ak
  %i.am = mul i64 %i.g, %i.s                      ; 3 uses
  %i.an = sitofp i64 %i.am to double
  %i.ao = fdiv double %i.an, %i.t
  %i.ap = fadd double %.053.i, -1.000000e+00
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %.0.i, double 4.820000e-06)
  %i.ar = fadd double %.1.i, -1.000000e+00        ; 2 uses
  %i.as = fmul double %.053.i, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double 6.700000e-10, double %i.aq)
  %i.au = fmul double %i.al, %i.at
  %i.av = fadd double %.051.i, -1.000000e+00
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %.0.i, double 4.820000e-06)
  %i.ax = fmul double %i.ar, %.051.i
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double 6.700000e-10, double %i.aw)
  %i.az = fmul double %i.ao, %i.ay
  %i.ba = fadd double %i.au, %i.az                ; 2 uses
  %.not64 = icmp sgt i32 %.050, %i.l
  br i1 %.not64, label %cost_calc.exit62._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %cost_calc.exit
  %i.bb = uitofp i64 %i.g to double               ; 5 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.bc = fdiv double %i.t, %i.bb
  %i.bd = icmp ugt i64 %i.g, %i.r
  %i.be = zext nneg i32 %.050 to i64              ; 3 uses
  %.1.i58.us71 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.r) ; 2 uses
  %.1.i58.us = uitofp i64 %.1.i58.us71 to double  ; 2 uses
  %.051.i59.us = select i1 %i.bd, double 1.000000e+00, double %i.bc ; 2 uses
  %i.bf = icmp ult i64 %.1.i58.us71, 33554432
  %.0.i60.us = select i1 %i.bf, double 1.080000e-06, double 1.190000e-05
  %i.bg = fdiv double %i.bb, %.1.i58.us
  %i.bh = insertelement <2 x double> poison, double %.1.i58.us, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %.051.i59.us, i64 1
  %i.bj = fadd <2 x double> %i.bi, splat (double -1.000000e+00) ; 2 uses
  %i.bk = insertelement <2 x double> <double 6.700000e-10, double poison>, double %.0.i60.us, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bk, <2 x double> splat (double 4.820000e-06)) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = fmul double %i.bg, %i.bm
  %i.bo = extractelement <2 x double> %i.bj, i64 0
  %i.bp = fmul double %i.bo, %.051.i59.us
  %i.bq = extractelement <2 x double> %i.bl, i64 1
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bp, double 6.700000e-10, double %i.bq)
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.j
  %indvars.iv76 = phi i64 [ %i.be, %.lr.ph.split.us.preheader ], [ %indvars.iv.next77, %bb.j ] ; 4 uses
  %.068.us = phi i32 [ 1, %.lr.ph.split.us.preheader ], [ %i.cf, %bb.j ]
  %.05166.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.by, %bb.j ]
  %.05265.us = phi double [ %i.ba, %.lr.ph.split.us.preheader ], [ %i.bw, %bb.j ] ; 2 uses
  %i.bs = udiv i64 %i.am, %indvars.iv76
  %i.bt = uitofp nneg i64 %i.bs to double
  %i.bu = fdiv double %i.bt, %i.t
  %i.bv = fmul double %i.bu, %i.br
  %i.bw = fadd double %i.bn, %i.bv                ; 2 uses
  %i.bx = fsub double %.05265.us, %i.bw           ; 2 uses
  %i.by = fdiv double %i.bx, %.05265.us           ; 3 uses
  %i.bz = icmp eq i64 %indvars.iv76, %i.be
  %i.ca = fsub double %.05166.us, %i.by
  %i.cb = select i1 %i.bz, double %i.by, double %i.ca
  %i.cc = fcmp olt double %i.cb, %i.e
  %i.cd = fcmp olt double %i.bx, 1.000000e-03
  %or.cond.us = or i1 %i.cd, %i.cc
  br i1 %or.cond.us, label %cost_calc.exit62._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, %i.be ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next77 to i32
  %.not.us = icmp slt i32 %i.l, %i.ce
  %i.cf = trunc nuw nsw i64 %indvars.iv76 to i32  ; 2 uses
  br i1 %.not.us, label %cost_calc.exit62._crit_edge, label %.lr.ph.split.us, !llvm.loop !89

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cg = uitofp nneg i32 %i.l to double
  %i.ch = tail call double @sqrt(double noundef %i.cg) #10
  %i.ci = fptosi double %i.ch to i32              ; 2 uses
  %i.cj = sitofp i32 %i.ci to double              ; 4 uses
  %i.ck = fadd nnan double %i.cj, -1.000000e+00
  %i.cl = sext i32 %i.ci to i64
  %i.cm = mul i64 %i.g, %i.cl
  %i.cn = uitofp nsz i64 %i.cm to double
  %i.co = fdiv nsz double %i.t, %i.cj
  %i.cp = tail call nsz double @llvm.minnum.f64(double %i.co, double %i.bb)
  %i.cq = zext nneg i32 %.050 to i64              ; 3 uses
  %i.cr = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.cs = insertelement <2 x double> poison, double %i.t, i64 1
  %i.ct = insertelement <2 x double> poison, double %i.ck, i64 1
  %i.cu = insertelement <2 x double> poison, double %i.cj, i64 1
  br label %bb.l

bb.k:                                             ; preds = %cost_calc.exit62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.cq ; 2 uses
  %i.cv = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp slt i32 %i.l, %i.cv
  br i1 %.not, label %cost_calc.exit62._crit_edge, label %bb.l, !llvm.loop !89

bb.l:                                             ; preds = %.lr.ph.split, %bb.k
  %indvars.iv = phi i64 [ %i.cq, %.lr.ph.split ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %.068 = phi i32 [ 1, %.lr.ph.split ], [ %i.cw, %bb.k ]
  %.05166 = phi double [ 0.000000e+00, %.lr.ph.split ], [ %i.dz, %bb.k ]
  %.05265 = phi double [ %i.ba, %.lr.ph.split ], [ %i.dx, %bb.k ] ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.cx = uitofp nneg i32 %i.cw to double         ; 2 uses
  %i.cy = fdiv double %i.cx, %i.cj                ; 3 uses
  %i.cz = mul nsw i64 %indvars.iv, %i.r
  %i.da = udiv i64 %i.cz, %i.s
  %i.db = icmp ugt i64 %i.g, %i.da
  br i1 %i.db, label %cost_calc.exit62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = fdiv nsz double %i.cn, %i.cx
  %i.dd = tail call nsz double @llvm.minnum.f64(double %i.dc, double %i.bb)
  br label %cost_calc.exit62

cost_calc.exit62:                                 ; preds = %bb.l, %bb.m
  %.1.i58 = phi double [ %i.dd, %bb.m ], [ %i.cp, %bb.l ] ; 3 uses
  %i.de = fcmp olt double %.1.i58, f0x4180000000000000
  %.0.i60 = select i1 %i.de, double 1.080000e-06, double 1.190000e-05
  %i.df = fmul double %i.cy, %.1.i58
  %i.dg = udiv i64 %i.am, %indvars.iv
  %i.dh = uitofp nneg i64 %i.dg to double
  %i.di = fadd double %i.cy, -1.000000e+00
  %i.dj = fadd double %.1.i58, -1.000000e+00
  %i.dk = insertelement <2 x double> %i.cr, double %i.dh, i64 1
  %i.dl = insertelement <2 x double> %i.cs, double %i.df, i64 0
  %i.dm = fdiv <2 x double> %i.dk, %i.dl
  %i.dn = insertelement <2 x double> %i.ct, double %i.di, i64 0
  %i.do = insertelement <2 x double> poison, double %.0.i60, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.dp, <2 x double> splat (double 4.820000e-06))
  %i.dr = insertelement <2 x double> %i.cu, double %i.cy, i64 0
  %i.ds = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.dr, %i.dt
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> splat (double 6.700000e-10), <2 x double> %i.dq)
  %i.dw = fmul <2 x double> %i.dm, %i.dv
  %i.dx = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.dw) ; 2 uses
  %i.dy = fsub double %.05265, %i.dx              ; 2 uses
  %i.dz = fdiv double %i.dy, %.05265              ; 3 uses
  %i.ea = icmp eq i64 %indvars.iv, %i.cq
  %i.eb = fsub double %.05166, %i.dz
  %i.ec = select i1 %i.ea, double %i.dz, double %i.eb
  %i.ed = fcmp olt double %i.ec, %i.e
  %i.ee = fcmp olt double %i.dy, 1.000000e-03
  %or.cond = or i1 %i.ee, %i.ed
  br i1 %or.cond, label %cost_calc.exit62._crit_edge, label %bb.k

cost_calc.exit62._crit_edge:                      ; preds = %bb.k, %cost_calc.exit62, %bb.j, %.lr.ph.split.us, %cost_calc.exit
  %.0.lcssa = phi i32 [ 1, %cost_calc.exit ], [ %.068.us, %.lr.ph.split.us ], [ %i.cf, %bb.j ], [ %.068, %cost_calc.exit62 ], [ %i.cw, %bb.k ] ; 2 uses
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.eg = tail call i32 %i.ef(ptr noundef nonnull @.str.1, i32 noundef 22) #10
  %i.eh = sdiv i32 %i.l, %i.eg
  %i.ei = icmp sgt i32 %.0.lcssa, %i.eh
  br i1 %i.ei, label %bb.n, label %bb.o

bb.n:                                             ; preds = %cost_calc.exit62._crit_edge
  %i.ej = load i32, ptr %i.k, align 4, !tbaa !33
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.el = tail call i32 %i.ek(ptr noundef nonnull @.str.1, i32 noundef 22) #10
  %i.em = sdiv i32 %i.ej, %i.el
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %cost_calc.exit62._crit_edge
  %.053 = phi i32 [ %i.en, %bb.n ], [ %.0.lcssa, %cost_calc.exit62._crit_edge ] ; 5 uses
  store i32 %.053, ptr %1, align 4, !tbaa !35
  %i.eo = load i32, ptr %i.k, align 4, !tbaa !33  ; 2 uses
  %i.ep = sdiv i32 %i.eo, %.053                   ; 3 uses
  %i.eq = srem i32 %i.eo, %.053                   ; 2 uses
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 224), align 8, !tbaa !58
  %i.es = and i32 %i.er, 32768
  %i.et = add nsw i32 %i.ep, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.es, 0
  br i1 %.not.i, label %.lr.ph49.split.us.preheader.i, label %.lr.ph49.split.preheader.i

.lr.ph49.split.preheader.i:                       ; preds = %bb.o
  %i.eu = zext nneg i32 %.053 to i64              ; 2 uses
  %i.ev = sext i32 %i.eq to i64
  br label %.lr.ph49.split.i

.lr.ph49.split.us.preheader.i:                    ; preds = %bb.o
  %i.ew = sext i32 %i.eq to i64
  %wide.trip.count61.i = zext nneg i32 %.053 to i64
  br label %.lr.ph49.split.us.i

.lr.ph49.split.us.i:                              ; preds = %.loopexit.us.i, %.lr.ph49.split.us.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph49.split.us.preheader.i ], [ %indvars.iv.next59.i, %.loopexit.us.i ] ; 3 uses
  %.03646.us.i = phi i32 [ 0, %.lr.ph49.split.us.preheader.i ], [ %.2.lcssa.us.i, %.loopexit.us.i ] ; 2 uses
  %i.ex = icmp slt i64 %indvars.iv58.i, %i.ew
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv58.i ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %..i = select i1 %i.ex, i32 %i.et, i32 %i.ep    ; 2 uses
  store i32 %..i, ptr %i.ez, align 8, !tbaa !60
end_hunk_0
