Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Spoint?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@H5S__point_project_simple:bb.a
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 6 uses
  %i.b = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.t, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @H5S_select_release(ptr noundef %1) #15
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !23
  %i.k = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_project_simple, i32 noundef 2302, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.50) #15 ; 0 uses
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5S_pnt_list_t_reg_free_list) #15 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 23 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !13
  %i.p = icmp eq ptr %i.m, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !23
  %i.r = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !23
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_project_simple, i32 noundef 2306, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.17) #15 ; 0 uses
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !14   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !14   ; 5 uses
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.y = sub nuw i32 %i.w, %i.u                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 8 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = zext i32 %i.y to i64                    ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.ai = call i64 @H5VM_array_offset(i32 noundef %i.w, ptr noundef %i.ah, ptr noundef nonnull %i.a) #15
  store i64 %i.ai, ptr %2, align 8, !tbaa !23
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 512
  %.097117 = load ptr, ptr %i.ak, align 8, !tbaa !27 ; 2 uses
  %.not104118 = icmp eq ptr %.097117, null
  %.pre137 = load i32, ptr %i.t, align 8, !tbaa !14 ; 2 uses
  br i1 %.not104118, label %.preheader, label %.lr.ph121

.preheader:                                       ; preds = %bb.k, %bb.g
  %i.al = phi i32 [ %.pre137, %bb.g ], [ %i.av, %bb.k ] ; 4 uses
  %.not125 = icmp eq i32 %i.al, 0
  br i1 %.not125, label %.thread, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %.preheader
  %wide.trip.count135 = zext i32 %i.al to i64     ; 2 uses
  %xtraiter147 = and i64 %wide.trip.count135, 1
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.lr.ph123.epil.preheader, label %.lr.ph123.preheader.new

.lr.ph123.preheader.new:                          ; preds = %.lr.ph123.preheader
  %unroll_iter150 = and i64 %wide.trip.count135, 4294967294
  br label %.lr.ph123

.lr.ph121:                                        ; preds = %bb.g, %bb.k
  %i.an = phi i32 [ %i.av, %bb.k ], [ %.pre137, %bb.g ]
  %.097120 = phi ptr [ %.097, %bb.k ], [ %.097117, %bb.g ] ; 2 uses
  %.094119 = phi ptr [ %i.aq, %bb.k ], [ null, %bb.g ] ; 2 uses
  %i.ao = add i32 %i.an, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = call noalias ptr @H5FL_arr_malloc(ptr noundef nonnull @H5_hcoords_t_arr_free_list, i64 noundef %i.ap) #15 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph121
  store ptr null, ptr %i.aq, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.097120, i64 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ae
  %i.av = load i32, ptr %i.t, align 8, !tbaa !14  ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 8 %i.au, i64 %i.ax, i1 false)
  %i.ay = icmp eq ptr %.094119, null
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  store ptr %i.aq, ptr %i.ba, align 8, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.aq, ptr %.094119, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.097 = load ptr, ptr %.097120, align 8, !tbaa !27 ; 2 uses
  %.not104 = icmp eq ptr %.097, null
  br i1 %.not104, label %.preheader, label %.lr.ph121, !llvm.loop !85

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph123
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %.thread, label %.lr.ph123.epil.preheader

.lr.ph123.epil.preheader:                         ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph123.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next133.1, %.thread.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod149 = trunc i32 %i.al to i1
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bc = trunc nuw i64 %indvars.iv132.epil.init to i32
  %i.bd = add i32 %i.y, %i.bc
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv132.epil.init
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !23
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 256
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.be
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 256
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv132.epil.init
  store i64 %i.bm, ptr %i.bp, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %.lr.ph123.epil.preheader, %.thread.loopexit.unr-lcssa, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

.lr.ph123:                                        ; preds = %.lr.ph123, %.lr.ph123.preheader.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph123.preheader.new ], [ %indvars.iv.next133.1, %.lr.ph123 ] ; 5 uses
  %niter151 = phi i64 [ 0, %.lr.ph123.preheader.new ], [ %niter151.next.1, %.lr.ph123 ]
  %i.bq = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.br = trunc nuw i64 %indvars.iv132 to i32
  %i.bs = add i32 %i.y, %i.br
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !23
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv132
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !23
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 256
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bt
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !23
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 256
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv132
  store i64 %i.cb, ptr %i.ce, align 8, !tbaa !23
  %indvars.iv.next133 = or disjoint i64 %indvars.iv132, 1 ; 3 uses
  %i.cf = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.cg = trunc nuw i64 %indvars.iv.next133 to i32
  %i.ch = add i32 %i.y, %i.cg
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !23
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next133
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !23
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 256
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ci
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !23
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 256
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next133
  store i64 %i.cq, ptr %i.ct, align 8, !tbaa !23
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %niter151.next.1 = add i64 %niter151, 2         ; 2 uses
  %niter151.ncmp.1 = icmp eq i64 %niter151.next.1, %unroll_iter150
  br i1 %niter151.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph123, !llvm.loop !86

bb.l:                                             ; preds = %.lr.ph121
  %i.cu = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !23
  %i.cv = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !23
  %i.cw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_project_simple, i32 noundef 2332, i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull @.str.18) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.t

bb.m:                                             ; preds = %bb.f
  %i.cx = sub nuw i32 %i.u, %i.w                  ; 7 uses
  store i64 0, ptr %2, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 512
  %.198109 = load ptr, ptr %i.da, align 8, !tbaa !27 ; 2 uses
  %.not110 = icmp eq ptr %.198109, null
  br i1 %.not110, label %.preheader108, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.db = zext i32 %i.cx to i64                   ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 3
  br label %bb.n

.preheader108:                                    ; preds = %bb.s, %bb.m
  %.not124 = icmp eq i32 %i.u, %i.w
  br i1 %.not124, label %.preheader107, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.preheader108
  %wide.trip.count = zext i32 %i.cx to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dd = icmp eq i32 %i.cx, 1
  br i1 %i.dd, label %.lr.ph114.epil.preheader, label %.lr.ph114.preheader.new

.lr.ph114.preheader.new:                          ; preds = %.lr.ph114.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph114

bb.n:                                             ; preds = %.lr.ph, %bb.s
  %.198112 = phi ptr [ %.198109, %.lr.ph ], [ %.198, %bb.s ] ; 2 uses
  %.296111 = phi ptr [ null, %.lr.ph ], [ %i.dh, %bb.s ] ; 2 uses
  %i.de = load i32, ptr %i.t, align 8, !tbaa !14
  %i.df = add i32 %i.de, 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = tail call noalias ptr @H5FL_arr_malloc(ptr noundef nonnull @H5_hcoords_t_arr_free_list, i64 noundef %i.dg) #15 ; 6 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dj = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !23
  %i.dk = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !23
  %i.dl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_project_simple, i32 noundef 2380, i64 noundef %i.dj, i64 noundef %i.dk, ptr noundef nonnull @.str.18) #15 ; 0 uses
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  store ptr null, ptr %i.dh, align 8, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 0, i64 %i.dc, i1 false)
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.db
  %i.do = getelementptr inbounds nuw i8, ptr %.198112, i64 8
  %i.dp = load i32, ptr %i.v, align 8, !tbaa !14
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %i.do, i64 %i.dr, i1 false)
  %i.ds = icmp eq ptr %.296111, null
  br i1 %i.ds, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 512
  store ptr %i.dh, ptr %i.du, align 8, !tbaa !24
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store ptr %i.dh, ptr %.296111, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.198 = load ptr, ptr %.198112, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %.198, null
  br i1 %.not, label %.preheader108, label %bb.n, !llvm.loop !87

.preheader107.loopexit.unr-lcssa:                 ; preds = %.lr.ph114
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader107, label %.lr.ph114.epil.preheader

.lr.ph114.epil.preheader:                         ; preds = %.preheader107.loopexit.unr-lcssa, %.lr.ph114.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph114.preheader ], [ %indvars.iv.next.1, %.preheader107.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod144 = trunc i32 %i.cx to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.dv = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.epil.init
  store i64 0, ptr %i.dw, align 8, !tbaa !23
  %i.dx = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 256
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.epil.init
  store i64 0, ptr %i.dz, align 8, !tbaa !23
  br label %.preheader107

.preheader107:                                    ; preds = %.lr.ph114.epil.preheader, %.preheader107.loopexit.unr-lcssa, %.preheader108
  %.192.lcssa = phi i32 [ 0, %.preheader108 ], [ %i.cx, %.preheader107.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph114.epil.preheader ] ; 2 uses
  %i.ea = load i32, ptr %i.t, align 8, !tbaa !14  ; 2 uses
  %i.eb = icmp ult i32 %.192.lcssa, %i.ea
  br i1 %i.eb, label %.lr.ph116.preheader, label %.loopexit

.lr.ph116.preheader:                              ; preds = %.preheader107
  %i.ec = zext i32 %.192.lcssa to i64             ; 7 uses
  %3 = zext i32 %i.cx to i64                      ; 3 uses
  %wide.trip.count130 = zext i32 %i.ea to i64     ; 3 uses
  %i.ed = sub nsw i64 %wide.trip.count130, %i.ec
  %xtraiter145 = and i64 %i.ed, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol

.lr.ph116.prol:                                   ; preds = %.lr.ph116.preheader
  %i.ee = load ptr, ptr %i.cy, align 8, !tbaa !13
  %4 = sub nuw nsw i64 %i.ec, %3                  ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %4
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !23
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ec
  store i64 %i.eg, ptr %i.ei, align 8, !tbaa !23
  %i.ej = load ptr, ptr %i.cy, align 8, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 256
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %4
  %i.em = load i64, ptr %i.el, align 8, !tbaa !23
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 256
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ec
  store i64 %i.em, ptr %i.ep, align 8, !tbaa !23
  %indvars.iv.next128.prol = add nuw nsw i64 %i.ec, 1
  br label %.lr.ph116.prol.loopexit

.lr.ph116.prol.loopexit:                          ; preds = %.lr.ph116.prol, %.lr.ph116.preheader
  %indvars.iv127.unr = phi i64 [ %i.ec, %.lr.ph116.preheader ], [ %indvars.iv.next128.prol, %.lr.ph116.prol ]
  %i.eq = add nsw i64 %wide.trip.count130, -1
  %i.er = icmp eq i64 %i.eq, %i.ec
  br i1 %i.er, label %.loopexit, label %.lr.ph116

.lr.ph114:                                        ; preds = %.lr.ph114, %.lr.ph114.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph114.preheader.new ], [ %indvars.iv.next.1, %.lr.ph114 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph114.preheader.new ], [ %niter.next.1, %.lr.ph114 ]
  %i.es = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv
  store i64 0, ptr %i.et, align 8, !tbaa !23
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 256
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv
  store i64 0, ptr %i.ew, align 8, !tbaa !23
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ex = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next
  store i64 0, ptr %i.ey, align 8, !tbaa !23
  %i.ez = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 256
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next
  store i64 0, ptr %i.fb, align 8, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader107.loopexit.unr-lcssa, label %.lr.ph114, !llvm.loop !88

.lr.ph116:                                        ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.1, %.lr.ph116 ], [ %indvars.iv127.unr, %.lr.ph116.prol.loopexit ] ; 5 uses
  %i.fc = load ptr, ptr %i.cy, align 8, !tbaa !13
  %5 = sub nuw nsw i64 %indvars.iv127, %3         ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %5
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !23
  %i.ff = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv127
  store i64 %i.fe, ptr %i.fg, align 8, !tbaa !23
  %i.fh = load ptr, ptr %i.cy, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 256
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %5
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !23
  %i.fl = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 256
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv127
  store i64 %i.fk, ptr %i.fn, align 8, !tbaa !23
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 3 uses
  %i.fo = load ptr, ptr %i.cy, align 8, !tbaa !13
  %6 = sub nuw nsw i64 %indvars.iv.next128, %3    ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %6
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !23
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next128
  store i64 %i.fq, ptr %i.fs, align 8, !tbaa !23
  %i.ft = load ptr, ptr %i.cy, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 256
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %6
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !23
  %i.fx = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 256
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next128
  store i64 %i.fw, ptr %i.fz, align 8, !tbaa !23
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %exitcond131.not.1 = icmp eq i64 %indvars.iv.next128.1, %wide.trip.count130
  br i1 %exitcond131.not.1, label %.loopexit, label %.lr.ph116, !llvm.loop !89

.loopexit:                                        ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116, %.preheader107, %.thread
  %i.ga = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 528
  store i64 0, ptr %i.gb, align 8, !tbaa !90
  %i.gc = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 536
  store ptr null, ptr %i.gd, align 8, !tbaa !91
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !33
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !33
  store ptr @H5S_sel_point, ptr %i.n, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.a, %.loopexit, %bb.o, %bb.e, %bb.c
  %.2 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %.loopexit ], [ -1, %bb.l ], [ -1, %bb.o ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5S__point_iter_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.h = load i32, ptr %i.g, align 8, !tbaa !92
  %i.i = and i32 %i.h, 4098
  %or.cond = icmp eq i32 %i.i, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 3 uses
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14
  %i.n = tail call fastcc ptr @H5S__copy_pnt_list(ptr noundef %i.k, i32 noundef %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %i.n, ptr %i.o, align 8, !tbaa !13
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !23
  %i.r = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !23
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_iter_init, i32 noundef 191, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.16) #15 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %i.k, ptr %i.t, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.u = phi ptr [ %i.n, %bb.c ], [ %i.k, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 512
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 560
  store ptr %i.w, ptr %i.x, align 8, !tbaa !13
  store ptr @H5S_sel_iter_point, ptr %1, align 8, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.a
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_select_elements(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !8
  %i.g = tail call i32 @H5S__init_package() #15
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10
  %.pre32 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre36 = trunc nuw i8 %.pre to i1
  %.pre37 = trunc nuw i8 %.pre32 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !8
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !23
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_select_elements, i32 noundef 736, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.1) #15 ; 0 uses
  br label %bb.ad

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi38 = phi i1 [ %.pre37, %._crit_edge ], [ %i.e, %bb.a ]
  %.pre-phi = phi i1 [ %.pre36, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = xor i1 %.pre-phi38, true
  %i.m = select i1 %.pre-phi, i1 true, i1 %i.l
  br i1 %i.m, label %bb.e, label %bb.ad, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i32 %1, 0                        ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = load i32, ptr %i.p, align 8, !tbaa !37
  %.not = icmp eq i32 %i.q, 1
  br i1 %.not, label %.thread42, label %bb.g

.thread42:                                        ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = tail call i32 @H5S_select_release(ptr noundef %0) #15
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !23
  %i.v = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !23
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_select_elements, i32 noundef 747, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.2) #15 ; 0 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre34 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  %.pre35 = load i32, ptr %.pre34, align 8, !tbaa !37
  %i.x = icmp eq i32 %.pre35, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread42, %bb.i
  %i.z = phi ptr [ %i.r, %.thread42 ], [ %i.y, %bb.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = phi ptr [ %i.z, %bb.j ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 -1, ptr %i.a, align 8, !tbaa !23
  %i.ae = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5S_pnt_list_t_reg_free_list) #15 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !13
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !14
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i32 @H5VM_array_fill(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef %i.aj) #15 ; 0 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !14
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.am, i8 0, i64 %i.ap, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !23
  %i.ar = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !23
  %i.as = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_select_elements, i32 noundef 754, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.3) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ad

bb.m:                                             ; preds = %.thread, %bb.j
  %i.at = phi ptr [ %i.ad, %.thread ], [ %i.z, %bb.j ]
  %i.au = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = xor i1 %i.ax, true
  %i.az = select i1 %i.av, i1 true, i1 %i.ay
end_hunk_0
