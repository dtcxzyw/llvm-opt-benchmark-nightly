Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/osc_rdma_module?download=true
inline.NumInlined: 30
inline.NumDeleted: 13
begin_hunk_0_@ompi_osc_rdma_free:bb.a
  br i1 %.not.i124, label %opal_obj_run_destructors.exit125, label %.lr.ph.i122, !llvm.loop !47

opal_obj_run_destructors.exit125:                 ; preds = %.lr.ph.i122, %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !106
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !109 ; 2 uses
  %.not6.i126 = icmp eq ptr %i.ch, null
  br i1 %.not6.i126, label %opal_obj_run_destructors.exit130, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %opal_obj_run_destructors.exit125, %.lr.ph.i127
  %i.ci = phi ptr [ %i.ck, %.lr.ph.i127 ], [ %i.ch, %opal_obj_run_destructors.exit125 ]
  %.07.i128 = phi ptr [ %i.cj, %.lr.ph.i127 ], [ %i.cg, %opal_obj_run_destructors.exit125 ]
  tail call void %i.ci(ptr noundef nonnull %i.cd) #5, !inline_history !46
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i128, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !109 ; 2 uses
  %.not.i129 = icmp eq ptr %i.ck, null
  br i1 %.not.i129, label %opal_obj_run_destructors.exit130, label %.lr.ph.i127, !llvm.loop !47

opal_obj_run_destructors.exit130:                 ; preds = %.lr.ph.i127, %opal_obj_run_destructors.exit125
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 1008 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !106
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !108 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !109 ; 2 uses
  %.not6.i131 = icmp eq ptr %i.cp, null
  br i1 %.not6.i131, label %opal_obj_run_destructors.exit135, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %opal_obj_run_destructors.exit130, %.lr.ph.i132
  %i.cq = phi ptr [ %i.cs, %.lr.ph.i132 ], [ %i.cp, %opal_obj_run_destructors.exit130 ]
  %.07.i133 = phi ptr [ %i.cr, %.lr.ph.i132 ], [ %i.co, %opal_obj_run_destructors.exit130 ]
  tail call void %i.cq(ptr noundef nonnull %i.cl) #5, !inline_history !46
  %i.cr = getelementptr inbounds nuw i8, ptr %.07.i133, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !109 ; 2 uses
  %.not.i134 = icmp eq ptr %i.cs, null
  br i1 %.not.i134, label %opal_obj_run_destructors.exit135, label %.lr.ph.i132, !llvm.loop !47

opal_obj_run_destructors.exit135:                 ; preds = %.lr.ph.i132, %opal_obj_run_destructors.exit130
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 512 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 16, !tbaa !106
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !108 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !109 ; 2 uses
  %.not6.i136 = icmp eq ptr %i.cx, null
  br i1 %.not6.i136, label %opal_obj_run_destructors.exit140, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %opal_obj_run_destructors.exit135, %.lr.ph.i137
  %i.cy = phi ptr [ %i.da, %.lr.ph.i137 ], [ %i.cx, %opal_obj_run_destructors.exit135 ]
  %.07.i138 = phi ptr [ %i.cz, %.lr.ph.i137 ], [ %i.cw, %opal_obj_run_destructors.exit135 ]
  tail call void %i.cy(ptr noundef nonnull %i.ct) #5, !inline_history !46
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i138, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !109 ; 2 uses
  %.not.i139 = icmp eq ptr %i.da, null
  br i1 %.not.i139, label %opal_obj_run_destructors.exit140, label %.lr.ph.i137, !llvm.loop !47

opal_obj_run_destructors.exit140:                 ; preds = %.lr.ph.i137, %opal_obj_run_destructors.exit135
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !110 ; 2 uses
  %.not.i141 = icmp eq ptr %i.dc, null
  br i1 %.not.i141, label %_ompi_osc_rdma_deregister.exit142, label %bb.s

bb.s:                                             ; preds = %opal_obj_run_destructors.exit140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 1080
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !100 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 264
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !104
  %i.dh = tail call i32 %i.dg(ptr noundef %i.de, ptr noundef nonnull %i.dc) #5, !inline_history !45 ; 0 uses
  br label %_ompi_osc_rdma_deregister.exit142

_ompi_osc_rdma_deregister.exit142:                ; preds = %opal_obj_run_destructors.exit140, %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.dj = load ptr, ptr %i.di, align 16, !tbaa !111 ; 2 uses
  %.not.i143 = icmp eq ptr %i.dj, null
  br i1 %.not.i143, label %_ompi_osc_rdma_deregister.exit144, label %bb.t

bb.t:                                             ; preds = %_ompi_osc_rdma_deregister.exit142
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 1080
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !100 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 264
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !104
  %i.do = tail call i32 %i.dn(ptr noundef %i.dl, ptr noundef nonnull %i.dj) #5, !inline_history !45 ; 0 uses
  br label %_ompi_osc_rdma_deregister.exit144

_ompi_osc_rdma_deregister.exit144:                ; preds = %_ompi_osc_rdma_deregister.exit142, %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 776 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 784
  %i.dr = load volatile i32, ptr %i.dq, align 16, !tbaa !112
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %.preheader190, label %opal_list_remove_first.exit.thread

.preheader190:                                    ; preds = %_ompi_osc_rdma_deregister.exit144
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 832 ; 4 uses
  %i.du = load volatile i64, ptr %i.dt, align 16, !tbaa !113
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %opal_list_remove_first.exit.thread, label %.lr.ph197

.lr.ph197:                                        ; preds = %.preheader190
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 808 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph197, %bb.y
  %i.dx = load volatile i64, ptr %i.dt, align 16, !tbaa !113
  %i.dy = add i64 %i.dx, -1
  store volatile i64 %i.dy, ptr %i.dt, align 16, !tbaa !113
  %i.dz = load volatile ptr, ptr %i.dw, align 8, !tbaa !114 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load volatile ptr, ptr %i.ea, align 8, !tbaa !115
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ed = load volatile ptr, ptr %i.ec, align 8, !tbaa !116
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store volatile ptr %i.eb, ptr %i.ee, align 8, !tbaa !115
  %i.ef = load volatile ptr, ptr %i.ec, align 8, !tbaa !116
  store volatile ptr %i.ef, ptr %i.dw, align 8, !tbaa !114
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eh = load i8, ptr @opal_uses_threads, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.v, label %bb.w, !prof !91

bb.v:                                             ; preds = %bb.u
  %i.ej = atomicrmw volatile add ptr %i.eg, i32 -1 monotonic, align 4
  %i.ek = add i32 %i.ej, -1
  br label %opal_thread_add_fetch_32.exit147

bb.w:                                             ; preds = %bb.u
  %i.el = load volatile i32, ptr %i.eg, align 8, !tbaa !105
  %i.em = add nsw i32 %i.el, -1
  store volatile i32 %i.em, ptr %i.eg, align 8, !tbaa !105
  %i.en = load volatile i32, ptr %i.eg, align 8, !tbaa !105
  br label %opal_thread_add_fetch_32.exit147

opal_thread_add_fetch_32.exit147:                 ; preds = %bb.v, %bb.w
  %.0.i146 = phi i32 [ %i.ek, %bb.v ], [ %i.en, %bb.w ]
  %i.eo = icmp eq i32 %.0.i146, 0
  br i1 %i.eo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %opal_thread_add_fetch_32.exit147
  %i.ep = load ptr, ptr %i.dz, align 8, !tbaa !106
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !108 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !109 ; 2 uses
  %.not6.i148 = icmp eq ptr %i.es, null
  br i1 %.not6.i148, label %opal_obj_run_destructors.exit152, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %bb.x, %.lr.ph.i149
  %i.et = phi ptr [ %i.ev, %.lr.ph.i149 ], [ %i.es, %bb.x ]
  %.07.i150 = phi ptr [ %i.eu, %.lr.ph.i149 ], [ %i.er, %bb.x ]
  tail call void %i.et(ptr noundef nonnull %i.dz) #5, !inline_history !46
  %i.eu = getelementptr inbounds nuw i8, ptr %.07.i150, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !109 ; 2 uses
  %.not.i151 = icmp eq ptr %i.ev, null
  br i1 %.not.i151, label %opal_obj_run_destructors.exit152, label %.lr.ph.i149, !llvm.loop !47

opal_obj_run_destructors.exit152:                 ; preds = %.lr.ph.i149, %bb.x
  tail call void @free(ptr noundef nonnull %i.dz) #5
  br label %bb.y

bb.y:                                             ; preds = %opal_obj_run_destructors.exit152, %opal_thread_add_fetch_32.exit147
  %i.ew = load volatile i64, ptr %i.dt, align 16, !tbaa !113
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %opal_list_remove_first.exit.thread, label %bb.u, !llvm.loop !49

opal_list_remove_first.exit.thread:               ; preds = %bb.y, %.preheader190, %_ompi_osc_rdma_deregister.exit144
  %i.ey = load ptr, ptr %i.dp, align 8, !tbaa !106
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !108 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !109 ; 2 uses
  %.not6.i153 = icmp eq ptr %i.fb, null
  br i1 %.not6.i153, label %opal_obj_run_destructors.exit157, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %opal_list_remove_first.exit.thread, %.lr.ph.i154
  %i.fc = phi ptr [ %i.fe, %.lr.ph.i154 ], [ %i.fb, %opal_list_remove_first.exit.thread ]
  %.07.i155 = phi ptr [ %i.fd, %.lr.ph.i154 ], [ %i.fa, %opal_list_remove_first.exit.thread ]
  tail call void %i.fc(ptr noundef nonnull %i.dp) #5, !inline_history !46
  %i.fd = getelementptr inbounds nuw i8, ptr %.07.i155, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !109 ; 2 uses
  %.not.i156 = icmp eq ptr %i.fe, null
  br i1 %.not.i156, label %opal_obj_run_destructors.exit157, label %.lr.ph.i154, !llvm.loop !47

opal_obj_run_destructors.exit157:                 ; preds = %.lr.ph.i154, %opal_list_remove_first.exit.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 1144
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !117 ; 2 uses
  %.not106 = icmp eq ptr %i.fg, null
  br i1 %.not106, label %_ompi_osc_rdma_deregister.exit159, label %bb.z

bb.z:                                             ; preds = %opal_obj_run_destructors.exit157
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !121 ; 2 uses
  %.not.i158 = icmp eq ptr %i.fi, null
  br i1 %.not.i158, label %_ompi_osc_rdma_deregister.exit159, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 1080
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !100 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 264
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !104
  %i.fn = tail call i32 %i.fm(ptr noundef %i.fk, ptr noundef nonnull %i.fi) #5, !inline_history !45 ; 0 uses
  br label %_ompi_osc_rdma_deregister.exit159

_ompi_osc_rdma_deregister.exit159:                ; preds = %bb.aa, %bb.z, %opal_obj_run_destructors.exit157
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 1000 ; 6 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !39
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %_ompi_osc_rdma_deregister.exit159
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 928 ; 4 uses
  %i.fs = call i32 @opal_hash_table_get_first_key_uint32(ptr noundef nonnull %i.fr, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #5
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %bb.ab, %bb.af
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !40  ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load i8, ptr @opal_uses_threads, align 1, !tbaa !88, !range !89, !noundef !90
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.ac, label %bb.ad, !prof !91

bb.ac:                                            ; preds = %.lr.ph203
  %i.fy = atomicrmw volatile add ptr %i.fv, i32 -1 monotonic, align 4
  %i.fz = add i32 %i.fy, -1
  br label %opal_thread_add_fetch_32.exit161

bb.ad:                                            ; preds = %.lr.ph203
  %i.ga = load volatile i32, ptr %i.fv, align 4, !tbaa !105
  %i.gb = add nsw i32 %i.ga, -1
  store volatile i32 %i.gb, ptr %i.fv, align 4, !tbaa !105
  %i.gc = load volatile i32, ptr %i.fv, align 4, !tbaa !105
  br label %opal_thread_add_fetch_32.exit161

opal_thread_add_fetch_32.exit161:                 ; preds = %bb.ac, %bb.ad
  %.0.i160 = phi i32 [ %i.fz, %bb.ac ], [ %i.gc, %bb.ad ]
  %i.gd = icmp eq i32 %.0.i160, 0
  br i1 %i.gd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %opal_thread_add_fetch_32.exit161
  %i.ge = load ptr, ptr %i.fu, align 8, !tbaa !106
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !108 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !109 ; 2 uses
  %.not6.i162 = icmp eq ptr %i.gh, null
  br i1 %.not6.i162, label %opal_obj_run_destructors.exit166, label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %bb.ae, %.lr.ph.i163
  %i.gi = phi ptr [ %i.gk, %.lr.ph.i163 ], [ %i.gh, %bb.ae ]
  %.07.i164 = phi ptr [ %i.gj, %.lr.ph.i163 ], [ %i.gg, %bb.ae ]
  call void %i.gi(ptr noundef nonnull %i.fu) #5, !inline_history !46
  %i.gj = getelementptr inbounds nuw i8, ptr %.07.i164, i64 8 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !109 ; 2 uses
  %.not.i165 = icmp eq ptr %i.gk, null
  br i1 %.not.i165, label %opal_obj_run_destructors.exit166.loopexit, label %.lr.ph.i163, !llvm.loop !47

opal_obj_run_destructors.exit166.loopexit:        ; preds = %.lr.ph.i163
  %.pre219.a = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %opal_obj_run_destructors.exit166

opal_obj_run_destructors.exit166:                 ; preds = %opal_obj_run_destructors.exit166.loopexit, %bb.ae
  %i.gl = phi ptr [ %.pre219.a, %opal_obj_run_destructors.exit166.loopexit ], [ %i.fu, %bb.ae ]
  call void @free(ptr noundef %i.gl) #5
  store ptr null, ptr %i.a, align 8, !tbaa !40
  br label %bb.af

bb.af:                                            ; preds = %opal_obj_run_destructors.exit166, %opal_thread_add_fetch_32.exit161
  %i.gm = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.gn = call i32 @opal_hash_table_get_next_key_uint32(ptr noundef nonnull %i.fr, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.gm, ptr noundef nonnull %i.c) #5
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph203, label %._crit_edge204, !llvm.loop !50

._crit_edge204:                                   ; preds = %bb.af, %bb.ab
  %i.gp = load ptr, ptr %i.fr, align 16, !tbaa !106
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !108 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !109 ; 2 uses
  %.not6.i167 = icmp eq ptr %i.gs, null
  br i1 %.not6.i167, label %opal_obj_run_destructors.exit171, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %._crit_edge204, %.lr.ph.i168
  %i.gt = phi ptr [ %i.gv, %.lr.ph.i168 ], [ %i.gs, %._crit_edge204 ]
  %.07.i169 = phi ptr [ %i.gu, %.lr.ph.i168 ], [ %i.gr, %._crit_edge204 ]
  call void %i.gt(ptr noundef nonnull %i.fr) #5, !inline_history !46
  %i.gu = getelementptr inbounds nuw i8, ptr %.07.i169, i64 8 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !109 ; 2 uses
  %.not.i170 = icmp eq ptr %i.gv, null
  br i1 %.not.i170, label %opal_obj_run_destructors.exit171, label %.lr.ph.i168, !llvm.loop !47

bb.ag:                                            ; preds = %_ompi_osc_rdma_deregister.exit159
  %i.gw = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %.not107 = icmp eq ptr %i.gw, null
  br i1 %.not107, label %opal_obj_run_destructors.exit171, label %.preheader188

.preheader188:                                    ; preds = %bb.ag
  %i.gx = getelementptr i8, ptr %i.gw, i64 264
  %.val119198 = load ptr, ptr %i.gx, align 8, !tbaa !122
  %i.gy = getelementptr i8, ptr %.val119198, i64 16
  %.val119.val199 = load i32, ptr %i.gy, align 8, !tbaa !71
  %i.gz = icmp sgt i32 %.val119.val199, 0
  br i1 %i.gz, label %.lr.ph201, label %opal_obj_run_destructors.exit171

.lr.ph201:                                        ; preds = %.preheader188, %bb.al
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.al ], [ 0, %.preheader188 ] ; 5 uses
  %1 = load ptr, ptr %i.fo, align 8, !tbaa !39
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv211
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !40 ; 2 uses
  %.not108 = icmp eq ptr %i.hb, null
  br i1 %.not108, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph201
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load i8, ptr @opal_uses_threads, align 1, !tbaa !88, !range !89, !noundef !90
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.ai, label %bb.aj, !prof !91

bb.ai:                                            ; preds = %bb.ah
  %i.hf = atomicrmw volatile add ptr %i.hc, i32 -1 monotonic, align 4
  %i.hg = add i32 %i.hf, -1
  br label %opal_thread_add_fetch_32.exit173

bb.aj:                                            ; preds = %bb.ah
  %i.hh = load volatile i32, ptr %i.hc, align 4, !tbaa !105
  %i.hi = add nsw i32 %i.hh, -1
  store volatile i32 %i.hi, ptr %i.hc, align 4, !tbaa !105
  %i.hj = load volatile i32, ptr %i.hc, align 4, !tbaa !105
  br label %opal_thread_add_fetch_32.exit173

opal_thread_add_fetch_32.exit173:                 ; preds = %bb.ai, %bb.aj
  %.0.i172 = phi i32 [ %i.hg, %bb.ai ], [ %i.hj, %bb.aj ]
  %i.hk = icmp eq i32 %.0.i172, 0
  br i1 %i.hk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %opal_thread_add_fetch_32.exit173
  %2 = load ptr, ptr %i.fo, align 8, !tbaa !39
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv211
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !40 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !106
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !108 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !109 ; 2 uses
  %.not6.i174 = icmp eq ptr %i.hq, null
  br i1 %.not6.i174, label %opal_obj_run_destructors.exit178, label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %bb.ak, %.lr.ph.i175
  %i.hr = phi ptr [ %i.ht, %.lr.ph.i175 ], [ %i.hq, %bb.ak ]
  %.07.i176 = phi ptr [ %i.hs, %.lr.ph.i175 ], [ %i.hp, %bb.ak ]
  tail call void %i.hr(ptr noundef nonnull %i.hm) #5, !inline_history !46
  %i.hs = getelementptr inbounds nuw i8, ptr %.07.i176, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !109 ; 2 uses
  %.not.i177 = icmp eq ptr %i.ht, null
  br i1 %.not.i177, label %opal_obj_run_destructors.exit178.loopexit, label %.lr.ph.i175, !llvm.loop !47

opal_obj_run_destructors.exit178.loopexit:        ; preds = %.lr.ph.i175
  %.pre217.a = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre217.a, i64 %indvars.iv211
  %.pre218 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40
  br label %opal_obj_run_destructors.exit178

opal_obj_run_destructors.exit178:                 ; preds = %opal_obj_run_destructors.exit178.loopexit, %bb.ak
  %i.hu = phi ptr [ %.pre218, %opal_obj_run_destructors.exit178.loopexit ], [ %i.hm, %bb.ak ]
  tail call void @free(ptr noundef %i.hu) #5
  %i.hv = load ptr, ptr %i.fo, align 8, !tbaa !39
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv211
  store ptr null, ptr %i.hw, align 8, !tbaa !40
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph201, %opal_obj_run_destructors.exit178, %opal_thread_add_fetch_32.exit173
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.hx = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.hy = getelementptr i8, ptr %i.hx, i64 264
  %.val119 = load ptr, ptr %i.hy, align 8, !tbaa !122
  %i.hz = getelementptr i8, ptr %.val119, i64 16
  %.val119.val = load i32, ptr %i.hz, align 8, !tbaa !71
  %i.ia = sext i32 %.val119.val to i64
  %i.ib = icmp slt i64 %indvars.iv.next212, %i.ia
  br i1 %i.ib, label %.lr.ph201, label %opal_obj_run_destructors.exit171, !llvm.loop !51

opal_obj_run_destructors.exit171:                 ; preds = %bb.al, %.lr.ph.i168, %.preheader188, %._crit_edge204, %bb.ag
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 400 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 16, !tbaa !123 ; 2 uses
  %.not109 = icmp eq ptr %i.id, null
  %.not110 = icmp eq ptr %i.id, @ompi_mpi_comm_null
  %or.cond = or i1 %.not109, %.not110
  br i1 %or.cond, label %bb.an, label %bb.am

bb.am:                                            ; preds = %opal_obj_run_destructors.exit171
  %i.ie = call i32 @ompi_comm_free(ptr noundef nonnull %i.ic) #5 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %opal_obj_run_destructors.exit171
  %i.if = getelementptr inbounds nuw i8, ptr %i.e, i64 408 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !124 ; 2 uses
  %.not111 = icmp eq ptr %i.ig, null
  %.not112 = icmp eq ptr %i.ig, @ompi_mpi_comm_null
  %or.cond116 = or i1 %.not111, %.not112
  br i1 %or.cond116, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ih = call i32 @ompi_comm_free(ptr noundef nonnull %i.if) #5 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ii = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %.not113 = icmp eq ptr %i.ii, null
  %.not114 = icmp eq ptr %i.ii, @ompi_mpi_comm_null
  %or.cond117 = or i1 %.not113, %.not114
  br i1 %or.cond117, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ij = call i32 @ompi_comm_free(ptr noundef nonnull %i.k) #5 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 1160 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !125
  %.not115 = icmp eq ptr %i.il, null
  br i1 %.not115, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 1168
  %i.in = call i32 @opal_shmem_segment_detach(ptr noundef nonnull %i.im) #5 ; 0 uses
  store ptr null, ptr %i.ik, align 8, !tbaa !125
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.io = load ptr, ptr %i.fo, align 8, !tbaa !39
  call void @free(ptr noundef %i.io) #5
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 920
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !126
  call void @free(ptr noundef %i.iq) #5
  %i.ir = load ptr, ptr @mca_mpool_base_default_module, align 8, !tbaa !127 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !130
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !131
  call void %i.it(ptr noundef %i.ir, ptr noundef %i.iv) #5
  %i.iw = getelementptr inbounds nuw i8, ptr %i.e, i64 1072
  %i.ix = load i8, ptr %i.iw, align 16, !tbaa !132, !range !89, !noundef !90
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.ay, label %.preheader

.preheader:                                       ; preds = %bb.at
  %i.iz = getelementptr inbounds nuw i8, ptr %i.e, i64 1080 ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.e, i64 1088 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 16, !tbaa !100
  %.not208 = icmp eq i8 %i.jb, 0
  br i1 %.not208, label %._crit_edge207, label %.lr.ph206.preheader

.lr.ph206.preheader:                              ; preds = %.preheader
  %.pre221 = load i8, ptr @opal_uses_threads, align 1, !tbaa !88, !range !89
  br label %.lr.ph206

._crit_edge207:                                   ; preds = %bb.ax, %.preheader
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !100
  call void @free(ptr noundef %i.jc) #5
  br label %bb.ay

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %bb.ax
  %i.jd = phi i8 [ %.pre221, %.lr.ph206.preheader ], [ %i.kc, %bb.ax ] ; 2 uses
  %indvars.iv214 = phi i64 [ 0, %.lr.ph206.preheader ], [ %indvars.iv.next215, %bb.ax ] ; 5 uses
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !100
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv214
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !134
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 4 uses
  %i.ji = trunc nuw i8 %i.jd to i1
  br i1 %i.ji, label %bb.au, label %bb.av, !prof !91

bb.au:                                            ; preds = %.lr.ph206
  %i.jj = atomicrmw volatile add ptr %i.jh, i32 -1 monotonic, align 4
  %i.jk = add i32 %i.jj, -1
  br label %opal_thread_add_fetch_32.exit180

bb.av:                                            ; preds = %.lr.ph206
  %i.jl = load volatile i32, ptr %i.jh, align 4, !tbaa !105
  %i.jm = add nsw i32 %i.jl, -1
  store volatile i32 %i.jm, ptr %i.jh, align 4, !tbaa !105
  %i.jn = load volatile i32, ptr %i.jh, align 4, !tbaa !105
  br label %opal_thread_add_fetch_32.exit180

opal_thread_add_fetch_32.exit180:                 ; preds = %bb.au, %bb.av
  %.0.i179 = phi i32 [ %i.jk, %bb.au ], [ %i.jn, %bb.av ]
  %i.jo = icmp eq i32 %.0.i179, 0
  br i1 %i.jo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %opal_thread_add_fetch_32.exit180
  %i.jp = load ptr, ptr %i.iz, align 8, !tbaa !100
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv214
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !134 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !106
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !108 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !109 ; 2 uses
  %.not6.i181 = icmp eq ptr %i.jv, null
  br i1 %.not6.i181, label %opal_obj_run_destructors.exit185, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %bb.aw, %.lr.ph.i182
  %i.jw = phi ptr [ %i.jy, %.lr.ph.i182 ], [ %i.jv, %bb.aw ]
  %.07.i183 = phi ptr [ %i.jx, %.lr.ph.i182 ], [ %i.ju, %bb.aw ]
  call void %i.jw(ptr noundef nonnull %i.jr) #5, !inline_history !46
  %i.jx = getelementptr inbounds nuw i8, ptr %.07.i183, i64 8 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !109 ; 2 uses
  %.not.i184 = icmp eq ptr %i.jy, null
  br i1 %.not.i184, label %opal_obj_run_destructors.exit185.loopexit, label %.lr.ph.i182, !llvm.loop !47

opal_obj_run_destructors.exit185.loopexit:        ; preds = %.lr.ph.i182
  %.pre222.a = load ptr, ptr %i.iz, align 8, !tbaa !100
  %.phi.trans.insert223 = getelementptr inbounds nuw [8 x i8], ptr %.pre222.a, i64 %indvars.iv214
  %.pre224 = load ptr, ptr %.phi.trans.insert223, align 8, !tbaa !134
  br label %opal_obj_run_destructors.exit185

opal_obj_run_destructors.exit185:                 ; preds = %opal_obj_run_destructors.exit185.loopexit, %bb.aw
  %i.jz = phi ptr [ %.pre224, %opal_obj_run_destructors.exit185.loopexit ], [ %i.jr, %bb.aw ]
  call void @free(ptr noundef %i.jz) #5
  %i.ka = load ptr, ptr %i.iz, align 8, !tbaa !100
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv214
  store ptr null, ptr %i.kb, align 8, !tbaa !134
  %.pre220 = load i8, ptr @opal_uses_threads, align 1, !tbaa !88, !range !89
  br label %bb.ax

bb.ax:                                            ; preds = %opal_thread_add_fetch_32.exit180, %opal_obj_run_destructors.exit185
  %i.kc = phi i8 [ %i.jd, %opal_thread_add_fetch_32.exit180 ], [ %.pre220, %opal_obj_run_destructors.exit185 ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.kd = load i8, ptr %i.ja, align 16, !tbaa !100
  %i.ke = zext i8 %i.kd to i64
  %i.kf = icmp samesign ult i64 %indvars.iv.next215, %i.ke
  br i1 %i.kf, label %.lr.ph206, label %._crit_edge207, !llvm.loop !52

bb.ay:                                            ; preds = %._crit_edge207, %bb.at
  call void @free(ptr noundef nonnull %i.e) #5
  br label %bb.az

bb.az:                                            ; preds = %bb.a, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare zeroext i1 @opal_output_check_verbosity(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @ompi_comm_print_cid(ptr noundef) local_unnamed_addr #2

declare i32 @opal_hash_table_remove_value_uint32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @opal_hash_table_get_first_key_uint32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opal_hash_table_get_next_key_uint32(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_comm_free(ptr noundef) local_unnamed_addr #2

declare i32 @opal_shmem_segment_detach(ptr noundef) local_unnamed_addr #2

declare i32 @opal_progress() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_0
