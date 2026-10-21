Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_sm_bcast?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct.mca_coll_sm_component_t = type { %struct.mca_coll_base_component_2_4_0_t, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mca_coll_base_component_2_4_0_t = type { %struct.mca_base_component_2_1_0_t, %struct.mca_base_component_data_2_0_0_t, ptr, ptr }
%struct.mca_base_component_2_1_0_t = type { i32, i32, i32, [16 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, [64 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, i32, [28 x i8] }
%struct.mca_base_component_data_2_0_0_t = type { i32, [32 x i8] }
%struct.iovec = type { ptr, i64 }
%struct.opal_convertor_t = type { %struct.opal_object_t, i32, i32, i64, i64, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i64, [5 x %struct.dt_stack_t], ptr, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.dt_stack_t = type { i32, i16, i16, i64, i64 }

@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_convertor_t_class = external global %struct.opal_class_t, align 8
@mca_coll_sm_component = external local_unnamed_addr global %struct.mca_coll_sm_component_t, align 8
@ompi_mpi_local_convertor = external local_unnamed_addr global ptr, align 8
@mca_coll_sm_one = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @mca_coll_sm_bcast_intra(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.iovec, align 8              ; 9 uses
  %i.a = alloca i64, align 8                      ; 13 uses
  %7 = alloca %struct.opal_convertor_t, align 8   ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 600
  %i.c = load i8, ptr %i.b, align 8, !tbaa !30, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ompi_coll_sm_lazy_enable(ptr noundef nonnull %5, ptr noundef %4) #4 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %opal_obj_run_destructors.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 608
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 7 uses
  %i.h = getelementptr i8, ptr %4, i64 220
  %.val = load i32, ptr %i.h, align 4, !tbaa !58  ; 5 uses
  %i.i = getelementptr i8, ptr %4, i64 264
  %.val141 = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.j = getelementptr i8, ptr %.val141, i64 16
  %.val141.val = load i32, ptr %i.j, align 8, !tbaa !62 ; 10 uses
  %i.k = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !63
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 32), align 8, !tbaa !65
  %.not136 = icmp eq i32 %i.k, %i.l
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_convertor_t_class) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr @opal_convertor_t_class, ptr %7, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store volatile i32 1, ptr %i.m, align 8, !tbaa !67
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !68 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %.not6.i = icmp eq ptr %i.o, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.p = phi ptr [ %i.r, %.lr.ph.i ], [ %i.o, %bb.e ]
  %.07.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.n, %bb.e ]
  call void %i.p(ptr noundef nonnull %7) #4, !inline_history !8
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !9

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.e
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !75
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.x = sub i32 %.val, %3
  %i.y = add i32 %i.x, %.val141.val
  %i.z = srem i32 %i.y, %.val141.val
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.w, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !88
  %.fr186 = freeze i32 %i.ah                      ; 8 uses
  %i.ai = icmp eq i32 %3, %.val
  %i.aj = load ptr, ptr @ompi_mpi_local_convertor, align 8, !tbaa !90 ; 2 uses
  %i.ak = sext i32 %1 to i64                      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.ao = load <2 x i32>, ptr %i.al, align 8, !tbaa !63
  store <2 x i32> %i.ao, ptr %i.am, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !97
  br i1 %i.ai, label %bb.f, label %bb.n

bb.f:                                             ; preds = %opal_obj_run_constructors.exit
  %i.as = call i32 @opal_convertor_prepare_for_send(ptr noundef nonnull %7, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %i.ak, ptr noundef %0) #4 ; 2 uses
  %.not140 = icmp eq i32 %i.as, 0
  br i1 %.not140, label %bb.g, label %opal_obj_run_destructors.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !98
  %i.av = load i32, ptr %i.an, align 4, !tbaa !99 ; 4 uses
  %i.aw = and i32 %i.av, 524288
  %.not.i142 = icmp ne i32 %i.aw, 0
  %i.ax = and i32 %i.av, 327680
  %or.cond.i = icmp eq i32 %i.ax, 262144
  %or.cond16.i = or i1 %.not.i142, %or.cond.i
  %i.ay = and i32 %i.av, 196608
  %or.cond15.not.i = icmp eq i32 %i.ay, 196608
  %or.cond17.i = or i1 %or.cond15.not.i, %or.cond16.i
  br i1 %or.cond17.i, label %opal_convertor_get_packed_size.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = and i32 %i.av, 536870912
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = call i64 @opal_convertor_compute_remote_size(ptr noundef nonnull %7) #4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !100
  br label %opal_convertor_get_packed_size.exit

opal_convertor_get_packed_size.exit:              ; preds = %bb.g, %bb.j
  %.0155 = phi i64 [ %i.au, %bb.g ], [ %i.bd, %bb.j ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bg = add nsw i32 %.val141.val, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.bi = icmp sgt i32 %.fr186, 0
  %wide.trip.count213 = zext i32 %.fr186 to i64   ; 2 uses
  %xtraiter276 = and i64 %wide.trip.count213, 1
  %i.bj = icmp eq i32 %.fr186, 1
  %unroll_iter279 = and i64 %wide.trip.count213, 2147483646
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  %lcmp.mod278 = trunc i32 %.fr186 to i1
  br label %bb.k

bb.k:                                             ; preds = %.split184.us.a, %opal_convertor_get_packed_size.exit
  %.0114 = phi i64 [ 0, %opal_convertor_get_packed_size.exit ], [ %.us-phi185, %.split184.us.a ] ; 2 uses
  %i.bk = load i32, ptr %i.be, align 8, !tbaa !101 ; 2 uses
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.be, align 8, !tbaa !101
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 288), align 8, !tbaa !102
  %i.bn = urem i32 %i.bk, %i.bm                   ; 3 uses
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !103
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !104
  %i.bp = mul nsw i32 %8, %i.bn
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.bq ; 5 uses
  %i.bs = load volatile i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.loopexit, label %.preheader

bb.l:                                             ; preds = %.preheader
  %i.bu = add nuw nsw i32 %.0112181, 1            ; 2 uses
  %exitcond206.not = icmp eq i32 %i.bu, 100000
  br i1 %exitcond206.not, label %bb.m, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.l, %bb.m
  %.0112181.be = phi i32 [ %i.bu, %bb.l ], [ 0, %bb.m ]
  br label %.preheader, !llvm.loop !10

.preheader:                                       ; preds = %bb.k, %.preheader.backedge
  %.0112181 = phi i32 [ %.0112181.be, %.preheader.backedge ], [ 0, %bb.k ]
  %i.bv = load volatile i32, ptr %i.br, align 4, !tbaa !106
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.loopexit, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.bx = call i32 @opal_progress() #4            ; 0 uses
  %i.by = load volatile i32, ptr %i.br, align 4, !tbaa !106
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %.preheader.backedge

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.k
  store volatile i32 %i.bg, ptr %i.br, align 4, !tbaa !106
  %i.ca = load i32, ptr %i.be, align 8, !tbaa !101
  %i.cb = add i32 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store volatile i32 %i.cb, ptr %i.cc, align 4, !tbaa !107
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 308), align 4, !tbaa !108 ; 2 uses
  %i.ce = mul i32 %i.cd, %i.bn
  %i.cf = add nsw i32 %i.bn, 1
  %i.cg = mul nsw i32 %i.cd, %i.cf
  %i.ch = sext i32 %i.ce to i64                   ; 2 uses
  %i.ci = sext i32 %i.cg to i64                   ; 2 uses
  br i1 %i.bi, label %.lr.ph.us, label %.split

.lr.ph.us:                                        ; preds = %.loopexit, %._crit_edge.us
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %._crit_edge.us ], [ %i.ch, %.loopexit ] ; 2 uses
  %.1115.us = phi i64 [ %i.dv, %._crit_edge.us ], [ %.0114, %.loopexit ]
  %i.cj = load ptr, ptr %i.bh, align 8, !tbaa !109
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.cj, i64 %indvars.iv215 ; 2 uses
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !75 ; 2 uses
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !110
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !112
  %i.cp = mul nsw i32 %i.cl, %3
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cq
  store ptr %i.cr, ptr %6, align 8, !tbaa !113
  store i64 %i.cm, ptr %i.u, align 8, !tbaa !77
  %i.cs = call i32 @opal_convertor_pack(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull @mca_coll_sm_one, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !110 ; 4 uses
  fence release
  %i.cu = load ptr, ptr %i.ck, align 8, !tbaa !114 ; 3 uses
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !104 ; 3 uses
  br i1 %i.bj, label %.epil.preheader275, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv210 = phi i64 [ %indvars.iv.next211.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 3 uses
  %niter280 = phi i64 [ %niter280.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv210
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !115
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !116
  %i.cz = add nsw i32 %i.cy, %3
  %i.da = srem i32 %i.cz, %.val141.val
  %i.db = mul nsw i32 %i.da, %i.cv
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cu, i64 %i.dc
  store i64 %i.ct, ptr %i.dd, align 8, !tbaa !110
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv210
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !115
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !116
  %i.di = add nsw i32 %i.dh, %3
  %i.dj = srem i32 %i.di, %.val141.val
  %i.dk = mul nsw i32 %i.dj, %i.cv
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.cu, i64 %i.dl
  store i64 %i.ct, ptr %i.dm, align 8, !tbaa !110
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %niter280.next.1 = add i64 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i64 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !11

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod277.not, label %._crit_edge.us, label %.epil.preheader275

.epil.preheader275:                               ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv210.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next211.1, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv210.epil.init
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !115
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !116
  %i.dq = add nsw i32 %i.dp, %3
  %i.dr = srem i32 %i.dq, %.val141.val
  %i.ds = mul nsw i32 %i.dr, %i.cv
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.cu, i64 %i.dt
  store i64 %i.ct, ptr %i.du, align 8, !tbaa !110
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader275
  %i.dv = add i64 %i.ct, %.1115.us                ; 3 uses
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %.0155              ; 2 uses
  %i.dx = icmp slt i64 %indvars.iv.next216, %i.ci
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %i.dy, label %.lr.ph.us, label %.split184.us.a, !llvm.loop !12

.split:                                           ; preds = %.loopexit, %.split
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.split ], [ %i.ch, %.loopexit ] ; 2 uses
  %.1115 = phi i64 [ %i.ek, %.split ], [ %.0114, %.loopexit ]
  %i.dz = load ptr, ptr %i.bh, align 8, !tbaa !109
  %i.ea = getelementptr inbounds [16 x i8], ptr %i.dz, i64 %indvars.iv207
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !75 ; 2 uses
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !110
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !112
  %i.ef = mul nsw i32 %i.eb, %3
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.eg
  store ptr %i.eh, ptr %6, align 8, !tbaa !113
  store i64 %i.ec, ptr %i.u, align 8, !tbaa !77
  %i.ei = call i32 @opal_convertor_pack(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull @mca_coll_sm_one, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !110
  %i.ek = add i64 %i.ej, %.1115                   ; 3 uses
  fence release
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.el = icmp ult i64 %i.ek, %.0155              ; 2 uses
  %i.em = icmp slt i64 %indvars.iv.next208, %i.ci
  %i.en = select i1 %i.el, i1 %i.em, i1 false
  br i1 %i.en, label %.split, label %.split184.us.a, !llvm.loop !12

.split184.us.a:                                   ; preds = %.split, %._crit_edge.us
  %.us-phi = phi i1 [ %i.dw, %._crit_edge.us ], [ %i.el, %.split ]
  %.us-phi185 = phi i64 [ %i.dv, %._crit_edge.us ], [ %i.ek, %.split ]
  br i1 %.us-phi, label %bb.k, label %.loopexit163, !llvm.loop !13

bb.n:                                             ; preds = %opal_obj_run_constructors.exit
  %i.eo = call i32 @opal_convertor_prepare_for_recv(ptr noundef nonnull %7, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %i.ak, ptr noundef %0) #4 ; 2 uses
  %.not137 = icmp eq i32 %i.eo, 0
  br i1 %.not137, label %bb.o, label %opal_obj_run_destructors.exit

bb.o:                                             ; preds = %bb.n
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !98
  %i.er = load i32, ptr %i.an, align 4, !tbaa !99 ; 4 uses
  %i.es = and i32 %i.er, 524288
  %.not.i143 = icmp ne i32 %i.es, 0
  %i.et = and i32 %i.er, 327680
  %or.cond.i144 = icmp eq i32 %i.et, 262144
  %or.cond16.i145 = or i1 %.not.i143, %or.cond.i144
  %i.eu = and i32 %i.er, 196608
  %or.cond15.not.i146 = icmp eq i32 %i.eu, 196608
  %or.cond17.i147 = or i1 %or.cond15.not.i146, %or.cond16.i145
  br i1 %or.cond17.i147, label %opal_convertor_get_packed_size.exit148, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ev = and i32 %i.er, 536870912
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ex = call i64 @opal_convertor_compute_remote_size(ptr noundef nonnull %7) #4 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !100
  br label %opal_convertor_get_packed_size.exit148

opal_convertor_get_packed_size.exit148:           ; preds = %bb.o, %bb.r
  %.1156 = phi i64 [ %i.eq, %bb.o ], [ %i.ez, %bb.r ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.fd = icmp sgt i32 %.fr186, 0
  %wide.trip.count = zext i32 %.fr186 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fe = icmp eq i32 %.fr186, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod274 = trunc i32 %.fr186 to i1
  br label %bb.s

bb.s:                                             ; preds = %bb.ae, %opal_convertor_get_packed_size.exit148
  %.2116 = phi i64 [ 0, %opal_convertor_get_packed_size.exit148 ], [ %i.iy, %bb.ae ]
  %i.ff = load i32, ptr %i.fa, align 8, !tbaa !101 ; 4 uses
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 288), align 8, !tbaa !102
  %i.fh = urem i32 %i.ff, %i.fg                   ; 3 uses
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !103
  %i.fj = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !104
  %i.fk = mul nsw i32 %i.fj, %i.fh
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 7 uses
  %i.fo = load volatile i32, ptr %i.fn, align 4, !tbaa !107
  %i.fp = icmp eq i32 %i.ff, %i.fo
  br i1 %i.fp, label %.loopexit169, label %.preheader168

.preheader168:                                    ; preds = %bb.s, %bb.z
  %i.fq = phi i32 [ %i.gd, %bb.z ], [ %i.ff, %bb.s ] ; 10 uses
  br label %bb.y

bb.t:                                             ; preds = %bb.y
  %i.fr = load volatile i32, ptr %i.fn, align 4, !tbaa !107
  %i.fs = icmp eq i32 %i.fq, %i.fr
  br i1 %i.fs, label %.loopexit169, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ft = load volatile i32, ptr %i.fn, align 4, !tbaa !107
  %i.fu = icmp eq i32 %i.fq, %i.ft
  br i1 %i.fu, label %.loopexit169, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fv = load volatile i32, ptr %i.fn, align 4, !tbaa !107
  %i.fw = icmp eq i32 %i.fq, %i.fv
  br i1 %i.fw, label %.loopexit169, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = load volatile i32, ptr %i.fn, align 4, !tbaa !107
  %i.fy = icmp eq i32 %i.fq, %i.fx
  br i1 %i.fy, label %.loopexit169, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fz = add nuw nsw i32 %.0111177, 5            ; 2 uses
  %exitcond.not.4 = icmp eq i32 %i.fz, 100000
  br i1 %exitcond.not.4, label %bb.z, label %bb.y, !llvm.loop !14

bb.y:                                             ; preds = %bb.x, %.preheader168
  %.0111177 = phi i32 [ 0, %.preheader168 ], [ %i.fz, %bb.x ]
  %i.ga = load volatile i32, ptr %i.fn, align 4, !tbaa !107
  %i.gb = icmp eq i32 %i.fq, %i.ga
  br i1 %i.gb, label %.loopexit169, label %bb.t

bb.z:                                             ; preds = %bb.x
  %i.gc = call i32 @opal_progress() #4            ; 0 uses
  %i.gd = load i32, ptr %i.fa, align 8, !tbaa !101 ; 3 uses
  %i.ge = load volatile i32, ptr %i.fn, align 4, !tbaa !107
  %i.gf = icmp eq i32 %i.gd, %i.ge
  br i1 %i.gf, label %.loopexit169, label %.preheader168

.loopexit169:                                     ; preds = %bb.z, %bb.y, %bb.t, %bb.u, %bb.v, %bb.w, %bb.s
  %i.gg = phi i32 [ %i.fq, %bb.y ], [ %i.ff, %bb.s ], [ %i.fq, %bb.w ], [ %i.fq, %bb.v ], [ %i.fq, %bb.u ], [ %i.fq, %bb.t ], [ %i.gd, %bb.z ]
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.fa, align 8, !tbaa !101
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 308), align 4, !tbaa !108 ; 2 uses
  %i.gj = mul i32 %i.gi, %i.fh
  %i.gk = add nsw i32 %i.fh, 1
  %i.gl = mul nsw i32 %i.gi, %i.gk
  %i.gm = sext i32 %i.gj to i64
  %i.gn = sext i32 %i.gl to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit166, %.loopexit169
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %.loopexit166 ], [ %i.gm, %.loopexit169 ] ; 2 uses
  %.3 = phi i64 [ %i.iy, %.loopexit166 ], [ %.2116, %.loopexit169 ]
  %i.go = load i32, ptr %i.ad, align 8, !tbaa !116
  %i.gp = add nsw i32 %i.go, %3
  %i.gq = srem i32 %i.gp, %.val141.val            ; 2 uses
  %i.gr = load ptr, ptr %i.fc, align 8, !tbaa !109
  %i.gs = getelementptr inbounds [16 x i8], ptr %i.gr, i64 %indvars.iv203 ; 4 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !114
  %i.gu = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !104
  %i.gv = mul nsw i32 %i.gu, %.val
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gt, i64 %i.gw ; 5 uses
  %i.gy = load volatile i32, ptr %i.gx, align 4, !tbaa !63
  %.not138179 = icmp eq i32 %i.gy, 0
  br i1 %.not138179, label %.preheader164, label %.loopexit165

bb.ab:                                            ; preds = %.preheader164
  %i.gz = add nuw nsw i32 %.0110178, 1            ; 2 uses
  %exitcond200.not = icmp eq i32 %i.gz, 100000
  br i1 %exitcond200.not, label %bb.ac, label %.preheader164.backedge

.preheader164.backedge:                           ; preds = %bb.ab, %bb.ac
  %.0110178.be = phi i32 [ %i.gz, %bb.ab ], [ 0, %bb.ac ]
  br label %.preheader164, !llvm.loop !15

.preheader164:                                    ; preds = %bb.aa, %.preheader164.backedge
  %.0110178 = phi i32 [ %.0110178.be, %.preheader164.backedge ], [ 0, %bb.aa ]
  %i.ha = load volatile i32, ptr %i.gx, align 4, !tbaa !63
  %.not139 = icmp eq i32 %i.ha, 0
  br i1 %.not139, label %bb.ab, label %.loopexit165

bb.ac:                                            ; preds = %bb.ab
  %i.hb = call i32 @opal_progress() #4            ; 0 uses
  %i.hc = load volatile i32, ptr %i.gx, align 4, !tbaa !63
  %.not138 = icmp eq i32 %i.hc, 0
  br i1 %.not138, label %.preheader164.backedge, label %.loopexit165

.loopexit165:                                     ; preds = %bb.ac, %.preheader164, %bb.aa
  %i.hd = load volatile i32, ptr %i.gx, align 4, !tbaa !63
  %i.he = zext i32 %i.hd to i64                   ; 3 uses
  store i64 %i.he, ptr %i.a, align 8, !tbaa !110
  store volatile i32 0, ptr %i.gx, align 4, !tbaa !63
  br i1 %i.fd, label %bb.ad, label %.loopexit166

bb.ad:                                            ; preds = %.loopexit165
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !112 ; 2 uses
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !75 ; 2 uses
  %i.hi = mul nsw i32 %i.hh, %.val
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 %i.hj
  %i.hl = mul nsw i32 %i.hh, %i.gq
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %i.hg, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hk, ptr align 1 %i.hn, i64 %i.he, i1 false)
  fence release
  %i.ho = load ptr, ptr %i.gs, align 8, !tbaa !114 ; 3 uses
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !104 ; 3 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !110 ; 3 uses
  br i1 %i.fe, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ad, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ 0, %bb.ad ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.new ], [ 0, %bb.ad ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !115
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !116
  %i.ht = add nsw i32 %i.hs, %3
  %i.hu = srem i32 %i.ht, %.val141.val
  %i.hv = mul nsw i32 %i.hu, %i.hp
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.ho, i64 %i.hw
  store i64 %.pre, ptr %i.hx, align 8, !tbaa !110
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !115
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !116
  %i.ic = add nsw i32 %i.ib, %3
  %i.id = srem i32 %i.ic, %.val141.val
  %i.ie = mul nsw i32 %i.id, %i.hp
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %i.ho, i64 %i.if
  store i64 %.pre, ptr %i.ig, align 8, !tbaa !110
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit166.loopexit.unr-lcssa, label %.new, !llvm.loop !16

.loopexit166.loopexit.unr-lcssa:                  ; preds = %.new
  br i1 %lcmp.mod.not, label %.loopexit166.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit166.loopexit.unr-lcssa, %bb.ad
  %indvars.iv.epil.init = phi i64 [ 0, %bb.ad ], [ %indvars.iv.next.1, %.loopexit166.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.epil.init
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !115
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !116
  %i.ik = add nsw i32 %i.ij, %3
  %i.il = srem i32 %i.ik, %.val141.val
  %i.im = mul nsw i32 %i.il, %i.hp
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds i8, ptr %i.ho, i64 %i.in
  store i64 %.pre, ptr %i.io, align 8, !tbaa !110
  br label %.loopexit166.loopexit

.loopexit166.loopexit:                            ; preds = %.loopexit166.loopexit.unr-lcssa, %.epil.preheader
  %.pre218 = load i64, ptr %i.a, align 8, !tbaa !110
  br label %.loopexit166

.loopexit166:                                     ; preds = %.loopexit166.loopexit, %.loopexit165
  %i.ip = phi i64 [ %i.he, %.loopexit165 ], [ %.pre218, %.loopexit166.loopexit ]
  %.0119 = phi i32 [ %i.gq, %.loopexit165 ], [ %.val, %.loopexit166.loopexit ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !112
  %i.is = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !75
  %i.it = mul nsw i32 %i.is, %.0119
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds i8, ptr %i.ir, i64 %i.iu
  store ptr %i.iv, ptr %6, align 8, !tbaa !113
  store i64 %i.ip, ptr %i.u, align 8, !tbaa !77
  %i.iw = call i32 @opal_convertor_unpack(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull @mca_coll_sm_one, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.ix = load i64, ptr %i.a, align 8, !tbaa !110
  %i.iy = add i64 %i.ix, %.3                      ; 3 uses
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %.1156              ; 2 uses
  %i.ja = icmp slt i64 %indvars.iv.next204, %i.gn
  %i.jb = select i1 %i.iz, i1 %i.ja, i1 false
  br i1 %i.jb, label %bb.aa, label %bb.ae, !llvm.loop !17

bb.ae:                                            ; preds = %.loopexit166
  fence release
  %i.jc = atomicrmw volatile add ptr %i.fm, i32 -1 monotonic, align 4 ; 0 uses
  br i1 %i.iz, label %bb.s, label %.loopexit163, !llvm.loop !18

.loopexit163:                                     ; preds = %bb.ae, %.split184.us.a
  %i.jd = load ptr, ptr %7, align 8, !tbaa !66
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !117 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !69 ; 2 uses
  %.not6.i149 = icmp eq ptr %i.jg, null
  br i1 %.not6.i149, label %opal_obj_run_destructors.exit, label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %.loopexit163, %.lr.ph.i150
  %i.jh = phi ptr [ %i.jj, %.lr.ph.i150 ], [ %i.jg, %.loopexit163 ]
  %.07.i151 = phi ptr [ %i.ji, %.lr.ph.i150 ], [ %i.jf, %.loopexit163 ]
  call void %i.jh(ptr noundef nonnull %7) #4, !inline_history !19
  %i.ji = getelementptr inbounds nuw i8, ptr %.07.i151, i64 8 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !69 ; 2 uses
  %.not.i152 = icmp eq ptr %i.jj, null
  br i1 %.not.i152, label %opal_obj_run_destructors.exit, label %.lr.ph.i150, !llvm.loop !20

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i150, %.loopexit163, %bb.n, %bb.f, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.eo, %bb.n ], [ %i.as, %bb.f ], [ 0, %.loopexit163 ], [ 0, %.lr.ph.i150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_coll_sm_lazy_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @opal_progress() local_unnamed_addr #2

declare i32 @opal_convertor_pack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @opal_convertor_unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opal_convertor_prepare_for_send(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @opal_convertor_compute_remote_size(ptr noundef) local_unnamed_addr #2

declare i32 @opal_convertor_prepare_for_recv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{null}
!9 = distinct !{!9, !70}
!10 = distinct !{!10, !70}
!11 = distinct !{!11, !70}
!12 = distinct !{!12, !70}
!13 = distinct !{!13, !70}
!14 = distinct !{!14, !70}
!15 = distinct !{!15, !70}
!16 = distinct !{!16, !70}
!17 = distinct !{!17, !70}
!18 = distinct !{!18, !70}
!19 = distinct !{null}
!20 = distinct !{!20, !70}
!21 = !{!"any pointer", !4, i64 0}
!22 = !{!"p1 _ZTS12opal_class_t", !21, i64 0}
!23 = !{!"opal_object_t", !22, i64 0, !5, i64 8}
!24 = !{!"p1 _ZTS20mca_coll_base_comm_t", !21, i64 0}
!25 = !{!"mca_coll_base_module_2_4_0_t", !23, i64 0, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !21, i64 128, !21, i64 136, !21, i64 144, !21, i64 152, !21, i64 160, !21, i64 168, !21, i64 176, !21, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !21, i64 232, !21, i64 240, !21, i64 248, !21, i64 256, !21, i64 264, !21, i64 272, !21, i64 280, !21, i64 288, !21, i64 296, !21, i64 304, !21, i64 312, !21, i64 320, !21, i64 328, !21, i64 336, !21, i64 344, !21, i64 352, !21, i64 360, !21, i64 368, !21, i64 376, !21, i64 384, !21, i64 392, !21, i64 400, !21, i64 408, !21, i64 416, !21, i64 424, !21, i64 432, !21, i64 440, !21, i64 448, !21, i64 456, !21, i64 464, !21, i64 472, !21, i64 480, !21, i64 488, !21, i64 496, !21, i64 504, !21, i64 512, !21, i64 520, !21, i64 528, !21, i64 536, !21, i64 544, !21, i64 552, !21, i64 560, !21, i64 568, !21, i64 576, !21, i64 584, !24, i64 592}
!26 = !{!"_Bool", !4, i64 0}
!27 = !{!"p1 _ZTS18mca_coll_sm_comm_t", !21, i64 0}
!28 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !21, i64 0}
!29 = !{!"mca_coll_sm_module_t", !25, i64 0, !26, i64 600, !27, i64 608, !21, i64 616, !28, i64 624}
!30 = !{!29, !26, i64 600}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!29, !27, i64 608}
!34 = !{!"p1 _ZTS19opal_hash_element_t", !21, i64 0}
!35 = !{!"long", !4, i64 0}
!36 = !{!"p1 _ZTS24opal_hash_type_methods_t", !21, i64 0}
!37 = !{!"opal_hash_table_t", !23, i64 0, !34, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !36, i64 64}
!38 = !{!"p1 _ZTS11opal_info_t", !21, i64 0}
!39 = !{!"opal_infosubscriber_t", !23, i64 0, !37, i64 16, !38, i64 88}
!40 = !{!"opal_mutex_t", !23, i64 0, !4, i64 16, !5, i64 56}
!41 = !{!"p1 omnipotent char", !21, i64 0}
!42 = !{!"ompi_comm_extended_cid_t", !35, i64 0, !4, i64 8}
!43 = !{!"ompi_comm_extended_cid_block_t", !42, i64 0, !35, i64 16, !4, i64 24, !4, i64 25}
!44 = !{!"p1 int", !21, i64 0}
!45 = !{!"p1 _ZTS12ompi_group_t", !21, i64 0}
!46 = !{!"p1 _ZTS19ompi_communicator_t", !21, i64 0}
!47 = !{!"p1 _ZTS17opal_hash_table_t", !21, i64 0}
!48 = !{!"p1 _ZTS22mca_topo_base_module_t", !21, i64 0}
!49 = !{!"any p2 pointer", !21, i64 0}
!50 = !{!"p2 _ZTS20ompi_peruse_handle_t", !49, i64 0}
!51 = !{!"p1 _ZTS17ompi_errhandler_t", !21, i64 0}
!52 = !{!"p1 _ZTS14mca_pml_comm_t", !21, i64 0}
!53 = !{!"p1 _ZTS14mca_mtl_comm_t", !21, i64 0}
!54 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !21, i64 0}
!55 = !{!"p1 _ZTS15ompi_instance_t", !21, i64 0}
!56 = !{!"p1 _ZTS13opal_object_t", !21, i64 0}
!57 = !{!"ompi_communicator_t", !39, i64 0, !40, i64 96, !41, i64 160, !42, i64 168, !43, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !44, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !45, i64 264, !45, i64 272, !46, i64 280, !47, i64 288, !48, i64 296, !50, i64 304, !51, i64 312, !5, i64 320, !52, i64 328, !53, i64 336, !54, i64 344, !55, i64 352, !56, i64 360, !5, i64 368, !5, i64 372, !26, i64 376, !26, i64 377, !26, i64 378}
!58 = !{!57, !5, i64 220}
!59 = !{!57, !45, i64 264}
!60 = !{!"p2 _ZTS11ompi_proc_t", !49, i64 0}
!61 = !{!"ompi_group_t", !23, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !60, i64 32, !5, i64 40, !45, i64 48, !4, i64 56, !55, i64 72}
!62 = !{!61, !5, i64 16}
!63 = !{!5, !5, i64 0}
!64 = !{!"opal_class_t", !41, i64 0, !22, i64 8, !21, i64 16, !21, i64 24, !5, i64 32, !5, i64 36, !49, i64 40, !49, i64 48, !35, i64 56}
!65 = !{!64, !5, i64 32}
!66 = !{!23, !22, i64 0}
!67 = !{!23, !5, i64 8}
!68 = !{!64, !49, i64 40}
!69 = !{!21, !21, i64 0}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"mca_base_component_2_1_0_t", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !5, i64 72, !5, i64 76, !5, i64 80, !4, i64 84, !5, i64 148, !5, i64 152, !5, i64 156, !21, i64 160, !21, i64 168, !21, i64 176, !21, i64 184, !5, i64 192, !4, i64 196}
!72 = !{!"mca_base_component_data_2_0_0_t", !5, i64 0, !4, i64 4}
!73 = !{!"mca_coll_base_component_2_4_0_t", !71, i64 0, !72, i64 224, !21, i64 264, !21, i64 272}
!74 = !{!"mca_coll_sm_component_t", !73, i64 0, !5, i64 280, !5, i64 284, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308}
!75 = !{!74, !5, i64 296}
!76 = !{!"iovec", !21, i64 0, !35, i64 8}
!77 = !{!76, !35, i64 8}
!78 = !{!"p1 _ZTS22mca_common_sm_module_t", !21, i64 0}
!79 = !{!"p1 _ZTS25mca_coll_sm_in_use_flag_t", !21, i64 0}
!80 = !{!"p1 _ZTS24mca_coll_sm_data_index_t", !21, i64 0}
!81 = !{!"p1 _ZTS23mca_coll_sm_tree_node_t", !21, i64 0}
!82 = !{!"mca_coll_sm_comm_t", !78, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !5, i64 32, !79, i64 40, !80, i64 48, !81, i64 56, !5, i64 64}
!83 = !{!82, !81, i64 56}
!84 = !{!"p2 _ZTS23mca_coll_sm_tree_node_t", !49, i64 0}
!85 = !{!"mca_coll_sm_tree_node_t", !5, i64 0, !81, i64 8, !5, i64 16, !84, i64 24}
!86 = !{!85, !81, i64 8}
!87 = !{!85, !84, i64 24}
!88 = !{!85, !5, i64 16}
!89 = !{!"p1 _ZTS16opal_convertor_t", !21, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"p1 _ZTS15opal_datatype_t", !21, i64 0}
!92 = !{!"p1 _ZTS14dt_type_desc_t", !21, i64 0}
!93 = !{!"p1 _ZTS10dt_stack_t", !21, i64 0}
!94 = !{!"p1 _ZTS23opal_convertor_master_t", !21, i64 0}
!95 = !{!"p1 _ZTS25opal_accelerator_stream_t", !21, i64 0}
!96 = !{!"opal_convertor_t", !23, i64 0, !5, i64 16, !5, i64 20, !35, i64 24, !35, i64 32, !91, i64 40, !92, i64 48, !35, i64 56, !5, i64 64, !41, i64 72, !93, i64 80, !21, i64 88, !94, i64 96, !5, i64 104, !35, i64 112, !35, i64 120, !5, i64 128, !5, i64 132, !35, i64 136, !4, i64 144, !21, i64 264, !95, i64 272}
!97 = !{!96, !94, i64 96}
!98 = !{!96, !35, i64 24}
!99 = !{!96, !5, i64 20}
!100 = !{!96, !35, i64 32}
!101 = !{!82, !5, i64 64}
!102 = !{!74, !5, i64 288}
!103 = !{!82, !79, i64 40}
!104 = !{!74, !5, i64 284}
!105 = !{!"mca_coll_sm_in_use_flag_t", !5, i64 0, !5, i64 4}
!106 = !{!105, !5, i64 0}
!107 = !{!105, !5, i64 4}
!108 = !{!74, !5, i64 308}
!109 = !{!82, !80, i64 48}
!110 = !{!35, !35, i64 0}
!111 = !{!"mca_coll_sm_data_index_t", !44, i64 0, !41, i64 8}
!112 = !{!111, !41, i64 8}
!113 = !{!76, !21, i64 0}
!114 = !{!111, !44, i64 0}
!115 = !{!81, !81, i64 0}
!116 = !{!85, !5, i64 0}
!117 = !{!64, !49, i64 48}
end_hunk_0
