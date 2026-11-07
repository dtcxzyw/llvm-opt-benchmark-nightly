Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/osc_rdma_component?download=true
inline.NumInlined: 106
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ompi_osc_rdma_component_select:bb.a
  br i1 %i.ij, label %bb.be, label %mca_bml_base_get_endpoint.exit.i, !prof !44

bb.be:                                            ; preds = %bb.bd
  %i.ik = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_bml_lock, i64 16)) #16 ; 0 uses
  br label %mca_bml_base_get_endpoint.exit.i

mca_bml_base_get_endpoint.exit.i:                 ; preds = %bb.be, %bb.bd
  %.pr.i = load ptr, ptr %i.hz, align 8, !tbaa !50 ; 2 uses
  %i.il = icmp eq ptr %.pr.i, null
  br i1 %i.il, label %.loopexit260, label %.preheader125.i

.preheader125.i:                                  ; preds = %mca_bml_base_get_endpoint.exit.i, %ompi_comm_peer_lookup.exit.i
  %i.im = phi ptr [ %.pr.i, %mca_bml_base_get_endpoint.exit.i ], [ %i.ia, %ompi_comm_peer_lookup.exit.i ] ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 184    ; 2 uses
  %.val93138.i = load i64, ptr %i.in, align 8, !tbaa !204
  %.not87139.not.i = icmp eq i64 %.val93138.i, 0
  br i1 %.not87139.not.i, label %._crit_edge142.thread.i, label %mca_bml_base_btl_array_get_index.exit.lr.ph.i

mca_bml_base_btl_array_get_index.exit.lr.ph.i:    ; preds = %.preheader125.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 208
  %i.ip = icmp sgt i32 %.val.val.i, 0
  %wide.trip.count.i = zext nneg i32 %.val.val.i to i64
  br label %mca_bml_base_btl_array_get_index.exit.i

mca_bml_base_btl_array_get_index.exit.i:          ; preds = %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i, %mca_bml_base_btl_array_get_index.exit.lr.ph.i
  %.066141.i = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph.i ], [ %i.lc, %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i ] ; 2 uses
  %.375140.i = phi ptr [ null, %mca_bml_base_btl_array_get_index.exit.lr.ph.i ], [ %.5.ph.i, %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i ] ; 8 uses
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !205 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %.loopexit260, label %bb.bf

bb.bf:                                            ; preds = %mca_bml_base_btl_array_get_index.exit.i
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %.066141.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !209 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 68
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !67 ; 2 uses
  %i.ix = and i32 %i.iw, 6
  %.not.i95.i = icmp eq i32 %i.ix, 0
  %i.iy = and i32 %i.iw, 8454144
  %i.iz = icmp ne i32 %i.iy, 8454144
  %or.cond6.i96.i = or i1 %.not.i95.i, %i.iz
  br i1 %or.cond6.i96.i, label %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i, label %ompi_osc_rdma_check_accelerated_btl.exit97.i

ompi_osc_rdma_check_accelerated_btl.exit97.i:     ; preds = %bb.bf
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 72
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !189
  %i.jc = trunc i32 %i.jb to i1
  br i1 %i.jc, label %.preheader.i, label %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i

.preheader.i:                                     ; preds = %ompi_osc_rdma_check_accelerated_btl.exit97.i
  br i1 %i.ip, label %.lr.ph.i218, label %._crit_edge137.i

.lr.ph.i218:                                      ; preds = %.preheader.i, %bb.bq
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i, %bb.bq ], [ 0, %.preheader.i ] ; 3 uses
  %.val91.i = load ptr, ptr %i.he, align 8, !tbaa !200
  %i.jd = getelementptr inbounds nuw i8, ptr %.val91.i, i64 32 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !201
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv147.i
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !191 ; 2 uses
  %i.jh = ptrtoint ptr %i.jg to i64               ; 4 uses
  %i.ji = trunc i64 %i.jh to i1
  br i1 %i.ji, label %bb.bg, label %ompi_comm_peer_lookup.exit100.i, !prof !44

bb.bg:                                            ; preds = %.lr.ph.i218
  %i.jj = lshr i64 %i.jh, 1
  %i.jk = and i64 %i.jj, 32767
  %i.jl = and i64 %i.jh, -65536
  %.sroa.0.0.insert.insert.i.i.i.i.i99.i = or disjoint i64 %i.jk, %i.jl
  %i.jm = call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i.i99.i) #16 ; 5 uses
  %i.jn = load ptr, ptr %i.jd, align 8, !tbaa !201
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv147.i
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = cmpxchg volatile ptr %i.jo, i64 %i.jh, i64 %i.jp acquire monotonic, align 8
  %i.jr = extractvalue { i64, i1 } %i.jq, 1
  br i1 %i.jr, label %bb.bh, label %ompi_comm_peer_lookup.exit100.i

bb.bh:                                            ; preds = %bb.bg
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 4 uses
  %i.jt = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42, !noundef !43
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.bi, label %bb.bj, !prof !44

bb.bi:                                            ; preds = %bb.bh
  %i.jv = atomicrmw volatile add ptr %i.js, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_comm_peer_lookup.exit100.i

bb.bj:                                            ; preds = %bb.bh
  %i.jw = load volatile i32, ptr %i.js, align 4, !tbaa !45
  %i.jx = add nsw i32 %i.jw, 1
  store volatile i32 %i.jx, ptr %i.js, align 4, !tbaa !45
  %i.jy = load volatile i32, ptr %i.js, align 4, !tbaa !45 ; 0 uses
  br label %ompi_comm_peer_lookup.exit100.i

ompi_comm_peer_lookup.exit100.i:                  ; preds = %bb.bj, %bb.bi, %bb.bg, %.lr.ph.i218
  %.0.i.i.i.i98.i = phi ptr [ %i.jg, %.lr.ph.i218 ], [ %i.jm, %bb.bj ], [ %i.jm, %bb.bi ], [ %i.jm, %bb.bg ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i98.i, i64 72 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !50 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.bk, label %mca_bml_base_get_endpoint.exit103.thread.i, !prof !44

bb.bk:                                            ; preds = %ompi_comm_peer_lookup.exit100.i
  %i.kc = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42, !noundef !43
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.bl, label %.thread.i101.i, !prof !44

bb.bl:                                            ; preds = %bb.bk
  %i.ke = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_bml_lock, i64 16)) #16 ; 0 uses
  %.pr.i102.i = load ptr, ptr %i.jz, align 8, !tbaa !50
  %i.kf = icmp eq ptr %.pr.i102.i, null
  br i1 %i.kf, label %.thread.i101.i, label %bb.bm

.thread.i101.i:                                   ; preds = %bb.bl, %bb.bk
  %i.kg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_bml, i64 8), align 8, !tbaa !199
  %i.kh = call i32 %i.kg(ptr noundef nonnull %.0.i.i.i.i98.i) #16, !inline_history !154 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.thread.i101.i, %bb.bl
  %i.ki = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42, !noundef !43
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.bn, label %mca_bml_base_get_endpoint.exit103.i, !prof !44

bb.bn:                                            ; preds = %bb.bm
  %i.kk = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_bml_lock, i64 16)) #16 ; 0 uses
  br label %mca_bml_base_get_endpoint.exit103.i

mca_bml_base_get_endpoint.exit103.i:              ; preds = %bb.bn, %bb.bm
  %.pr107.i = load ptr, ptr %i.jz, align 8, !tbaa !50 ; 2 uses
  %i.kl = icmp eq ptr %.pr107.i, null
  br i1 %i.kl, label %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i, label %mca_bml_base_get_endpoint.exit103.thread.i

mca_bml_base_get_endpoint.exit103.thread.i:       ; preds = %mca_bml_base_get_endpoint.exit103.i, %ompi_comm_peer_lookup.exit100.i
  %i.km = phi ptr [ %.pr107.i, %mca_bml_base_get_endpoint.exit103.i ], [ %i.ka, %ompi_comm_peer_lookup.exit100.i ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 184
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !204 ; 2 uses
  %.not.i104.i = icmp eq i64 %i.ko, 0
  br i1 %.not.i104.i, label %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i, label %.lr.ph.i105.i

.lr.ph.i105.i:                                    ; preds = %mca_bml_base_get_endpoint.exit103.thread.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 208
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !205
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bp
  %i.kr = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kr, %i.ko
  br i1 %exitcond.not.i.i, label %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i, label %bb.bp, !llvm.loop !155

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i105.i
  %.09.i.i = phi i64 [ 0, %.lr.ph.i105.i ], [ %i.kr, %bb.bo ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [24 x i8], ptr %i.kq, i64 %.09.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !209
  %i.kv = icmp eq ptr %i.ku, %i.iu
  br i1 %i.kv, label %bb.bq, label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next148.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge137.i, label %.lr.ph.i218, !llvm.loop !156

._crit_edge137.i:                                 ; preds = %bb.bq, %.preheader.i
  %i.kw = icmp eq ptr %.375140.i, null
  br i1 %i.kw, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %._crit_edge137.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iu, i64 60
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !113
  %i.kz = getelementptr inbounds nuw i8, ptr %.375140.i, i64 60
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !113
  %i.lb = icmp ult i32 %i.ky, %i.la
  br i1 %i.lb, label %bb.bs, label %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i

bb.bs:                                            ; preds = %bb.br, %._crit_edge137.i
  br label %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i

ompi_osc_rdma_check_accelerated_btl.exit97.thread.i: ; preds = %mca_bml_base_get_endpoint.exit103.thread.i, %mca_bml_base_get_endpoint.exit103.i, %bb.bo, %bb.bs, %bb.br, %ompi_osc_rdma_check_accelerated_btl.exit97.i, %bb.bf
  %.5.ph.i = phi ptr [ %.375140.i, %bb.bf ], [ %.375140.i, %ompi_osc_rdma_check_accelerated_btl.exit97.i ], [ %.375140.i, %bb.bo ], [ %.375140.i, %bb.br ], [ %i.iu, %bb.bs ], [ %.375140.i, %mca_bml_base_get_endpoint.exit103.i ], [ %.375140.i, %mca_bml_base_get_endpoint.exit103.thread.i ] ; 3 uses
  %i.lc = add nuw i64 %.066141.i, 1               ; 2 uses
  %.val93.i = load i64, ptr %i.in, align 8, !tbaa !204
  %.not87.i = icmp ult i64 %i.lc, %.val93.i
  br i1 %.not87.i, label %mca_bml_base_btl_array_get_index.exit.i, label %._crit_edge142.i, !llvm.loop !157

._crit_edge142.i:                                 ; preds = %ompi_osc_rdma_check_accelerated_btl.exit97.thread.i
  %i.ld = icmp eq ptr %.5.ph.i, null
  br i1 %i.ld, label %._crit_edge142.thread.i, label %bb.bu

._crit_edge142.thread.i:                          ; preds = %._crit_edge142.i, %.preheader125.i
  %i.le = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.lf = call zeroext i1 @opal_output_check_verbosity(i32 noundef 40, i32 noundef %i.le) #16
  br i1 %i.lf, label %bb.bt, label %.loopexit260

bb.bt:                                            ; preds = %._crit_edge142.thread.i
  %i.lg = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.lg, ptr noundef nonnull @.str.52) #16
  br label %.loopexit260

bb.bu:                                            ; preds = %._crit_edge142.i, %._crit_edge134.i
  %.7.i = phi ptr [ %.5.ph.i, %._crit_edge142.i ], [ %.274.i, %._crit_edge134.i ] ; 5 uses
  store i8 1, ptr %i.ey, align 16, !tbaa !187
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ab, i64 1080 ; 2 uses
  store ptr %.7.i, ptr %i.lh, align 8, !tbaa !115
  %i.li = getelementptr inbounds nuw i8, ptr %.7.i, i64 256
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !210
  %i.lk = icmp ne ptr %i.lj, null
  %i.ll = zext i1 %i.lk to i8
  store i8 %i.ll, ptr %i.fc, align 8, !tbaa !112
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ab, i64 1104
  %i.ln = getelementptr inbounds nuw i8, ptr %.7.i, i64 88
  %i.lo = load <4 x i64>, ptr %i.ln, align 8, !tbaa !114
  %i.lp = shufflevector <4 x i64> %i.lo, <4 x i64> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 0>
  store <4 x i64> %i.lp, ptr %i.lm, align 16, !tbaa !114
  %i.lq = getelementptr inbounds nuw i8, ptr %.7.i, i64 72
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !189
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ab, i64 1136
  store i32 %i.lr, ptr %i.ls, align 16, !tbaa !211
  %i.lt = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.lu = call zeroext i1 @opal_output_check_verbosity(i32 noundef 40, i32 noundef %i.lt) #16
  br i1 %i.lu, label %bb.bv, label %ompi_osc_rdma_query_accelerated_btls.exit

bb.bv:                                            ; preds = %bb.bu
  %i.lv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.lw = load ptr, ptr %.7.i, align 8, !tbaa !188
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 84
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.lv, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.lx) #16
  br label %ompi_osc_rdma_query_accelerated_btls.exit

.loopexit260:                                     ; preds = %mca_bml_base_btl_array_get_index.exit.i, %mca_bml_base_get_endpoint.exit.i, %._crit_edge142.thread.i, %bb.bt
  %i.ly = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.lz = call zeroext i1 @opal_output_check_verbosity(i32 noundef 20, i32 noundef %i.ly) #16
  br i1 %i.lz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.loopexit260
  %i.ma = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ma, ptr noundef nonnull @.str.43) #16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit260
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ab, i64 1104 ; 3 uses
  store i64 1, ptr %i.mb, align 16, !tbaa !212
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ab, i64 1112 ; 3 uses
  store i64 1, ptr %i.mc, align 8, !tbaa !213
  %i.md = getelementptr inbounds nuw i8, ptr %i.ab, i64 1120 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ab, i64 1128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.md, i8 -1, i64 16, i1 false)
  %i.mf = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_base_modules_initialized, i64 56), align 8, !tbaa !214 ; 4 uses
  %i.mg = icmp ugt i64 %i.mf, 255
  br i1 %i.mg, label %.loopexit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mh = trunc nuw i64 %i.mf to i8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ab, i64 1080 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1088 ; 2 uses
  store i8 %i.mh, ptr %i.mj, align 64, !tbaa !115
  %i.mk = shl nuw nsw i64 %i.mf, 3
  %i.ml = call noalias ptr @malloc(i64 noundef %i.mk) #19 ; 3 uses
  store ptr %i.ml, ptr %i.mi, align 8, !tbaa !115
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %.loopexit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_base_modules_initialized, i64 32), align 8, !tbaa !61 ; 2 uses
  %.not1.i = icmp eq ptr %i.mn, getelementptr inbounds nuw (i8, ptr @mca_btl_base_modules_initialized, i64 16)
  br i1 %.not1.i, label %ompi_osc_rdma_query_alternate_btls.exit, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %bb.bz, %bb.cc
  %.03.i = phi ptr [ %i.nv, %bb.cc ], [ %i.mn, %bb.bz ] ; 3 uses
  %.0392.i = phi i64 [ %i.nt, %bb.cc ], [ 0, %bb.bz ] ; 3 uses
  %i.mo = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.mp = call zeroext i1 @opal_output_check_verbosity(i32 noundef 40, i32 noundef %i.mo) #16
  br i1 %i.mp, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i219
  %i.mq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.mr = getelementptr inbounds nuw i8, ptr %.03.i, i64 48
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !65
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !188
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 84
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.mq, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.mu) #16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i219
  %i.mv = getelementptr inbounds nuw i8, ptr %.03.i, i64 48
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !65
  %i.mx = load ptr, ptr %i.mi, align 8, !tbaa !115
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %.0392.i
  %i.mz = call i32 @opal_btl_base_am_rdma_create(ptr noundef %i.mw, i32 noundef 8388608, i1 noundef zeroext true, ptr noundef %i.my) #16 ; 2 uses
  %.not43.i = icmp eq i32 %i.mz, 0
  br i1 %.not43.i, label %bb.cc, label %.loopexit

bb.cc:                                            ; preds = %bb.cb
  %i.na = load i64, ptr %i.mb, align 16, !tbaa !212
  %i.nb = load ptr, ptr %i.mi, align 8, !tbaa !115 ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0392.i
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !117 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 40
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !215
  %i.ng = call noundef i64 @llvm.umax.i64(i64 %i.na, i64 %i.nf)
  store i64 %i.ng, ptr %i.mb, align 16, !tbaa !212
  %i.nh = load i64, ptr %i.mc, align 8, !tbaa !213
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !216
  %i.nk = call noundef i64 @llvm.umax.i64(i64 %i.nh, i64 %i.nj)
  store i64 %i.nk, ptr %i.mc, align 8, !tbaa !213
  %i.nl = load i64, ptr %i.md, align 32, !tbaa !217
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !218
  %i.no = call noundef i64 @llvm.umin.i64(i64 %i.nl, i64 %i.nn)
  store i64 %i.no, ptr %i.md, align 32, !tbaa !217
  %i.np = load i64, ptr %i.me, align 8, !tbaa !219
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !220
  %i.ns = call noundef i64 @llvm.umin.i64(i64 %i.np, i64 %i.nr)
  store i64 %i.ns, ptr %i.me, align 8, !tbaa !219
  %i.nt = add i64 %.0392.i, 1
  %i.nu = getelementptr inbounds nuw i8, ptr %.03.i, i64 16
  %i.nv = load volatile ptr, ptr %i.nu, align 8, !tbaa !68 ; 2 uses
  %.not.i220 = icmp eq ptr %i.nv, getelementptr inbounds nuw (i8, ptr @mca_btl_base_modules_initialized, i64 16)
  br i1 %.not.i220, label %ompi_osc_rdma_query_alternate_btls.exit.loopexit, label %.lr.ph.i219, !llvm.loop !158

ompi_osc_rdma_query_alternate_btls.exit.loopexit: ; preds = %bb.cc
  %.pre = load i8, ptr %i.mj, align 64, !tbaa !115
  %i.nw = zext i8 %.pre to i64
  br label %ompi_osc_rdma_query_alternate_btls.exit

ompi_osc_rdma_query_alternate_btls.exit:          ; preds = %ompi_osc_rdma_query_alternate_btls.exit.loopexit, %bb.bz
  %i.nx = phi i64 [ %i.mf, %bb.bz ], [ %i.nw, %ompi_osc_rdma_query_alternate_btls.exit.loopexit ]
  %i.ny = phi ptr [ %i.ml, %bb.bz ], [ %i.nb, %ompi_osc_rdma_query_alternate_btls.exit.loopexit ]
  call void @qsort(ptr noundef nonnull %i.ny, i64 noundef %i.nx, i64 noundef 8, ptr noundef nonnull @btl_latency_sort_fn) #16
  store i8 0, ptr %i.fc, align 8, !tbaa !112
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ab, i64 1136
  store i32 825298433, ptr %i.nz, align 16, !tbaa !211
  %8 = getelementptr inbounds nuw i8, ptr %i.ab, i64 440 ; 2 uses
  store i64 16, ptr %8, align 8, !tbaa !119
  br label %bb.cg

.loopexit:                                        ; preds = %bb.cb, %bb.bx, %bb.by
  %.040.i.ph = phi i32 [ -1, %bb.bx ], [ -3, %bb.by ], [ %i.mz, %bb.cb ]
  %i.oa = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.ob = call zeroext i1 @opal_output_check_verbosity(i32 noundef 20, i32 noundef %i.oa) #16
  br i1 %i.ob, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.loopexit
  %i.oc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.oc, ptr noundef nonnull @.str.44) #16
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.loopexit
  %i.od = call i32 @ompi_osc_rdma_free(ptr noundef %0) #16 ; 0 uses
  br label %bb.im

ompi_osc_rdma_query_accelerated_btls.exit:        ; preds = %bb.bv, %bb.bu
  %.pr = load i8, ptr %i.fc, align 8, !tbaa !112
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ab, i64 440 ; 4 uses
  store i64 16, ptr %i.oe, align 8, !tbaa !119
  %i.of = trunc nuw i8 %.pr to i1
  br i1 %i.of, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %ompi_osc_rdma_query_accelerated_btls.exit
  %i.og = load ptr, ptr %i.lh, align 8, !tbaa !115
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 80
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !120
  %i.oj = add i64 %i.oi, 16                       ; 2 uses
  store i64 %i.oj, ptr %i.oe, align 8, !tbaa !119
  br label %bb.cg

bb.cg:                                            ; preds = %ompi_osc_rdma_query_alternate_btls.exit, %bb.cf, %ompi_osc_rdma_query_accelerated_btls.exit
  %9 = phi i64 [ 16, %ompi_osc_rdma_query_alternate_btls.exit ], [ %i.oj, %bb.cf ], [ 16, %ompi_osc_rdma_query_accelerated_btls.exit ]
  %10 = phi ptr [ %8, %ompi_osc_rdma_query_alternate_btls.exit ], [ %i.oe, %bb.cf ], [ %i.oe, %ompi_osc_rdma_query_accelerated_btls.exit ] ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ab, i64 448 ; 7 uses
  %i.ol = load i32, ptr %i.dj, align 4, !tbaa !181
  %.not167 = icmp eq i32 %i.ol, 3
  %i.om = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_osc_rdma_component, i64 1272), align 8
  %narrow = select i1 %.not167, i32 %i.om, i32 1
  %i.on = zext i32 %narrow to i64
  %storemerge.in = mul i64 %9, %i.on
  %storemerge = add i64 %storemerge.in, 328
  store i64 %storemerge, ptr %i.ok, align 64, !tbaa !221
  %i.oo = call i32 @opal_infosubscribe_subscribe(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @ompi_osc_rdma_set_no_lock_info) #16 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(232) %i.ab, ptr noundef nonnull align 8 dereferenceable(232) @ompi_osc_rdma_module_rdma_template, i64 232, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.op = load i32, ptr %i.dj, align 4, !tbaa !181
  %i.oq = icmp eq i32 %i.op, 3
  br i1 %i.oq, label %bb.cp, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.or = load i8, ptr %i.cl, align 1, !tbaa !175, !range !42, !noundef !43
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ot = load i8, ptr %i.cd, align 4, !tbaa !174, !range !42, !noundef !43
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ov = sext i32 %3 to i64
  store i64 %i.ov, ptr %i.j, align 16, !tbaa !114
  %i.ow = sub nsw i32 0, %3
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.ox, ptr %i.oy, align 8, !tbaa !114
  %i.oz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 %2, ptr %i.oz, align 16, !tbaa !114
  %i.pa = sub nsw i64 0, %2
  %i.pb = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i64 %i.pa, ptr %i.pb, align 8, !tbaa !114
  %i.pc = load ptr, ptr %i.ea, align 8, !tbaa !110 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 344
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !121 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !125
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 40
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !126
  %i.pj = call i32 %i.pg(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.j, i32 noundef 4, ptr noundef nonnull @ompi_mpi_long, ptr noundef nonnull @ompi_mpi_op_min, ptr noundef %i.pc, ptr noundef %i.pi) #16, !inline_history !159 ; 2 uses
  %.not.i222 = icmp eq i32 %i.pj, 0
  br i1 %.not.i222, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.pk = load i64, ptr %i.j, align 16, !tbaa !114
  %i.pl = load i64, ptr %i.oy, align 8, !tbaa !114
  %i.pm = sub nsw i64 0, %i.pl
  %i.pn = icmp eq i64 %i.pk, %i.pm
  br i1 %i.pn, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i8 1, ptr %i.cd, align 4, !tbaa !174
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.po = load i64, ptr %i.oz, align 16, !tbaa !114
  %i.pp = load i64, ptr %i.pb, align 8, !tbaa !114
  %i.pq = sub nsw i64 0, %i.pp
  %i.pr = icmp eq i64 %i.po, %i.pq
  br i1 %i.pr, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  store i8 1, ptr %i.cl, align 1, !tbaa !175
  br label %bb.cp

bb.co:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  %i.ps = call i32 @ompi_osc_rdma_free(ptr noundef %0) #16 ; 0 uses
  br label %bb.im

bb.cp:                                            ; preds = %bb.cg, %bb.ci, %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store i64 0, ptr %i.i, align 8
  %i.pt = load ptr, ptr %i.ea, align 8, !tbaa !110
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ab, i64 408 ; 4 uses
  %i.pv = call i32 @ompi_comm_split_type(ptr noundef %i.pt, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.pu) #16 ; 4 uses
  %.not.i224 = icmp eq i32 %i.pv, 0
  br i1 %.not.i224, label %bb.cs, label %bb.cq, !prof !127

bb.cq:                                            ; preds = %bb.cp
  %i.pw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.px = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.pw) #16
  br i1 %i.px, label %bb.cr, label %bb.db

bb.cr:                                            ; preds = %bb.cq
  %i.py = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.py, ptr noundef nonnull @.str.55, i32 noundef %i.pv) #16
  br label %bb.db

bb.cs:                                            ; preds = %bb.cp
  %i.pz = load ptr, ptr %i.pu, align 8, !tbaa !128
  %i.qa = getelementptr i8, ptr %i.pz, i64 220
  %.val34.i = load i32, ptr %i.qa, align 4, !tbaa !129
  %i.qb = load ptr, ptr %i.ea, align 8, !tbaa !110 ; 2 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 220
  %.val33.i = load i32, ptr %i.qc, align 4, !tbaa !129
  %i.qd = icmp eq i32 %.val34.i, 0                ; 2 uses
  %i.qe = select i1 %i.qd, i32 0, i32 -32766
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ab, i64 400 ; 2 uses
  %i.qg = call i32 @ompi_comm_split(ptr noundef %i.qb, i32 noundef %i.qe, i32 noundef %.val33.i, ptr noundef nonnull %i.qf, i1 noundef zeroext false) #16 ; 4 uses
  %.not29.i = icmp eq i32 %i.qg, 0
  br i1 %.not29.i, label %bb.cv, label %bb.ct, !prof !127

bb.ct:                                            ; preds = %bb.cs
  %i.qh = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.qi = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.qh) #16
  br i1 %i.qi, label %bb.cu, label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.qj = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.qj, ptr noundef nonnull @.str.56, i32 noundef %i.qg) #16
  br label %bb.db

bb.cv:                                            ; preds = %bb.cs
  br i1 %i.qd, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.qk = load ptr, ptr %i.qf, align 16, !tbaa !130 ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 264
  %.val31.i = load ptr, ptr %i.ql, align 8, !tbaa !86
  %i.qm = getelementptr i8, ptr %.val31.i, i64 16
  %.val31.val.i = load i32, ptr %i.qm, align 8, !tbaa !89 ; 2 uses
  store i32 %.val31.val.i, ptr %i.i, align 8, !tbaa !45
  %i.qn = getelementptr i8, ptr %i.qk, i64 220
  %.val32.i = load i32, ptr %i.qn, align 4, !tbaa !129 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %.val32.i, ptr %i.qo, align 4, !tbaa !45
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.qp = phi i32 [ %.val32.i, %bb.cw ], [ 0, %bb.cv ]
  %i.qq = phi i32 [ %.val31.val.i, %bb.cw ], [ 0, %bb.cv ]
  %i.qr = load ptr, ptr %i.pu, align 8, !tbaa !128 ; 4 uses
  %i.qs = getelementptr i8, ptr %i.qr, i64 264
  %.val.i226 = load ptr, ptr %i.qs, align 8, !tbaa !86
  %i.qt = getelementptr i8, ptr %.val.i226, i64 16
  %.val.val.i227 = load i32, ptr %i.qt, align 8, !tbaa !89
  %i.qu = icmp sgt i32 %.val.val.i227, 1
  br i1 %i.qu, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 344
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !121 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 112
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !222
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 120
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !223
  %i.rb = call i32 %i.qy(ptr noundef nonnull %i.i, i32 noundef 2, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef nonnull %i.qr, ptr noundef %i.ra) #16, !inline_history !160 ; 4 uses
  %.not30.i = icmp eq i32 %i.rb, 0
  br i1 %.not30.i, label %._crit_edge.i228, label %bb.cz

._crit_edge.i228:                                 ; preds = %bb.cy
  %.pre.i229 = load i32, ptr %i.i, align 8, !tbaa !45
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !45
  %.pre273 = load ptr, ptr %i.pu, align 8, !tbaa !128
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.rc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.rd = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.rc) #16
  br i1 %i.rd, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.re = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.re, ptr noundef nonnull @.str.57, i32 noundef %i.rb) #16
  br label %bb.db

bb.db:                                            ; preds = %bb.cq, %bb.ct, %bb.cr, %bb.cu, %bb.da, %bb.cz
  %.0.i225.ph = phi i32 [ %i.rb, %bb.cz ], [ %i.rb, %bb.da ], [ %i.qg, %bb.cu ], [ %i.pv, %bb.cr ], [ %i.qg, %bb.ct ], [ %i.pv, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  %i.rf = call i32 @ompi_osc_rdma_free(ptr noundef %0) #16 ; 0 uses
  br label %bb.im

bb.dc:                                            ; preds = %._crit_edge.i228, %bb.cx
  %i.rg = phi ptr [ %.pre273, %._crit_edge.i228 ], [ %i.qr, %bb.cx ] ; 10 uses
  %i.rh = phi i32 [ %.pre35.i, %._crit_edge.i228 ], [ %i.qp, %bb.cx ]
  %i.ri = phi i32 [ %.pre.i229, %._crit_edge.i228 ], [ %i.qq, %bb.cx ]
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ab, i64 420 ; 3 uses
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !131
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ab, i64 416
  store i32 %i.rh, ptr %i.rk, align 32, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  %i.rl = load ptr, ptr %i.ea, align 8, !tbaa !110 ; 2 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 220
  %.val287.i = load i32, ptr %i.rm, align 4, !tbaa !129 ; 3 uses
  %i.rn = getelementptr i8, ptr %i.rl, i64 264
  %.val285.i = load ptr, ptr %i.rn, align 8, !tbaa !86
  %i.ro = getelementptr i8, ptr %.val285.i, i64 16
  %.val285.val.i = load i32, ptr %i.ro, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.rp = load i64, ptr %i.do, align 16, !tbaa !185 ; 4 uses
  %i.rq = getelementptr i8, ptr %i.rg, i64 220
  %.val286.i = load i32, ptr %i.rq, align 4, !tbaa !129 ; 3 uses
  %i.rr = getelementptr i8, ptr %i.rg, i64 264
  %.val284.i = load ptr, ptr %i.rr, align 8, !tbaa !86
  %i.rs = getelementptr i8, ptr %.val284.i, i64 16
  %.val284.val.i = load i32, ptr %i.rs, align 8, !tbaa !89 ; 7 uses
  %i.rt = icmp eq i32 %.val284.val.i, %.val285.val.i ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ab, i64 313
  %i.rv = zext i1 %i.rt to i8
  store i8 %i.rv, ptr %i.ru, align 1, !tbaa !224
  br i1 %i.rt, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rw = load i8, ptr %i.ey, align 16, !tbaa !187, !range !42, !noundef !43
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ab, i64 1080
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !115
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 68
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !67
  %i.sc = and i32 %i.sb, 536870912
  %i.sd = icmp ne i32 %i.sc, 0
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.0234.i = phi i1 [ true, %bb.dc ], [ %i.sd, %bb.de ], [ false, %bb.dd ] ; 9 uses
  %i.se = icmp eq i32 %.val284.val.i, 1
  br i1 %i.se, label %bb.dg, label %bb.el

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.sf = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.sg = call zeroext i1 @opal_output_check_verbosity(i32 noundef 60, i32 noundef %i.sf) #16, !inline_history !161
  br i1 %i.sg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.sh = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.sh, ptr noundef nonnull @.str.62) #16, !inline_history !161
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.si = load ptr, ptr %i.ea, align 8, !tbaa !110 ; 2 uses
  %i.sj = getelementptr i8, ptr %i.si, i64 220
  %.val87.i.i = load i32, ptr %i.sj, align 4, !tbaa !129
  %i.sk = getelementptr i8, ptr %i.si, i64 264
  %.val.i.i = load ptr, ptr %i.sk, align 8, !tbaa !86
  %i.sl = getelementptr i8, ptr %.val.i.i, i64 16
  %.val.val.i.i = load i32, ptr %i.sl, align 8, !tbaa !89
  %i.sm = load i32, ptr %i.rj, align 4, !tbaa !131 ; 3 uses
  %i.sn = add i32 %.val.val.i.i, -1
  %i.so = add i32 %i.sn, %i.sm
  %i.sp = sdiv i32 %i.so, %i.sm
  %i.sq = sext i32 %i.sp to i64
  %i.sr = shl nsw i64 %i.sq, 3                    ; 2 uses
  %i.ss = load i64, ptr %10, align 8, !tbaa !119  ; 2 uses
  %i.st = sext i32 %i.sm to i64
  %i.su = mul i64 %i.ss, %i.st
  %i.sv = add i64 %i.sr, %i.ss
  %i.sw = load i64, ptr %i.ok, align 64, !tbaa !221
  %i.sx = add i64 %i.sv, %i.sw
  %i.sy = add i64 %i.sx, %i.su                    ; 4 uses
  %i.sz = load i32, ptr %i.dj, align 4, !tbaa !181
  %i.ta = icmp eq i32 %i.sz, 2
  br i1 %i.ta, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.tb = sub i64 0, %i.sy
  %i.tc = call i64 @llvm.usub.sat.i64(i64 %i.rp, i64 1)
  %i.td = and i64 %i.tc, %i.tb
  %i.te = add i64 %i.td, %i.sy                    ; 2 uses
  %i.tf = add i64 %i.te, %2
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.075.i.i = phi i64 [ %i.tf, %bb.dj ], [ %i.sy, %bb.di ] ; 3 uses
  %.0.i.i = phi i64 [ %i.te, %bb.dj ], [ %i.sy, %bb.di ]
  %i.tg = load ptr, ptr @mca_mpool_base_default_module, align 8, !tbaa !225 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !228
  %i.tj = call ptr %i.ti(ptr noundef %i.tg, i64 noundef %.075.i.i, i64 noundef %i.rp, i32 noundef 0) #16, !inline_history !162 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ab, i64 384 ; 3 uses
  store ptr %i.tj, ptr %i.tk, align 64, !tbaa !133
  %i.tl = icmp eq ptr %i.tj, null
  br i1 %i.tl, label %allocate_state_single.exit.i, label %bb.dl, !prof !44

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tj, i8 0, i64 %.075.i.i, i1 false)
  %i.tm = load i64, ptr %10, align 8, !tbaa !119
  %i.tn = add i64 %i.tm, %i.sr                    ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.ab, i64 456
  store i64 %i.tn, ptr %i.to, align 8, !tbaa !229
  %i.tp = load ptr, ptr %i.tk, align 64, !tbaa !133 ; 2 uses
  %i.tq = ptrtoint ptr %i.tp to i64               ; 2 uses
  %i.tr = add i64 %i.tn, %i.tq                    ; 2 uses
  %i.ts = inttoptr i64 %i.tr to ptr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ab, i64 368 ; 3 uses
  store ptr %i.ts, ptr %i.tt, align 16, !tbaa !230
  %i.tu = load i64, ptr %i.ok, align 64, !tbaa !221
  %i.tv = add i64 %i.tr, %i.tu
  %i.tw = inttoptr i64 %i.tv to ptr
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ab, i64 376
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !134
  %i.ty = load i32, ptr %i.dj, align 4, !tbaa !181 ; 2 uses
  %i.tz = icmp eq i32 %i.ty, 2
  br i1 %i.tz, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ua = add i64 %.0.i.i, %i.tq
  %i.ub = inttoptr i64 %i.ua to ptr
  store ptr %i.ub, ptr %1, align 8, !tbaa !50
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ab, i64 424 ; 4 uses
  %i.ud = load i8, ptr %i.fc, align 8, !tbaa !112, !range !42, !noundef !43
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ab, i64 1080
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !115 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 256
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !210
  %i.uj = call ptr %i.ui(ptr noundef %i.ug, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef %i.tp, i64 noundef %.075.i.i, i32 noundef 15) #16, !inline_history !163 ; 3 uses
  store ptr %i.uj, ptr %i.uc, align 8, !tbaa !231
  %i.uk = icmp eq ptr %i.uj, null
  br i1 %i.uk, label %allocate_state_single.exit.i, label %._crit_edge.i.i240, !prof !44

._crit_edge.i.i240:                               ; preds = %bb.do
  %.pre.i.i = load i32, ptr %i.dj, align 4, !tbaa !181
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  store ptr null, ptr %i.uc, align 8, !tbaa !231
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %._crit_edge.i.i240
  %i.ul = phi ptr [ %i.uj, %._crit_edge.i.i240 ], [ null, %bb.dp ] ; 2 uses
  %i.um = phi i32 [ %.pre.i.i, %._crit_edge.i.i240 ], [ %i.ty, %bb.dp ] ; 2 uses
  %.not82.i.i = icmp eq i32 %i.um, 3
  br i1 %.not82.i.i, label %ompi_osc_rdma_initialize_region.exit.thread.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.val88.i.i = load ptr, ptr %1, align 8, !tbaa !50 ; 2 uses
  %i.un = load ptr, ptr %i.tt, align 16, !tbaa !230 ; 6 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 328
  %i.up = load i32, ptr %i.dl, align 8, !tbaa !183
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 312
  store i64 %i.uq, ptr %i.ur, align 8, !tbaa !114
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 320
  store i64 1, ptr %i.us, align 8, !tbaa !114
  %i.ut = ptrtoint ptr %.val88.i.i to i64
  store i64 %i.ut, ptr %i.uo, align 8, !tbaa !114
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 336
  store i64 %2, ptr %i.uu, align 8, !tbaa !114
  %i.uv = load i8, ptr %i.fc, align 8, !tbaa !112, !range !42, !noundef !43
  %i.uw = trunc nuw i8 %i.uv to i1
  %i.ux = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.ux, %i.uw
  br i1 %or.cond.i.i.i, label %bb.ds, label %ompi_osc_rdma_initialize_region.exit.thread.i.i

bb.ds:                                            ; preds = %bb.dr
  %.not.i.i.i = icmp ne i32 %i.um, 2
  %i.uy = icmp eq ptr %i.ul, null
  %or.cond.i.i = or i1 %i.uy, %.not.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ab, i64 1080 ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !115 ; 3 uses
  br i1 %or.cond.i.i, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 256
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !210
  %i.ve = call ptr %i.vd(ptr noundef %i.va, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef %.val88.i.i, i64 noundef %2, i32 noundef 15) #16, !inline_history !164 ; 3 uses
  store ptr %i.ve, ptr %i.vb, align 16, !tbaa !231
  %i.vf = icmp eq ptr %i.ve, null
  br i1 %i.vf, label %allocate_state_single.exit.i, label %bb.du, !prof !44

bb.du:                                            ; preds = %bb.dt
  %i.vg = getelementptr inbounds nuw i8, ptr %i.un, i64 344
  %i.vh = load ptr, ptr %i.uz, align 8, !tbaa !115
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 80
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vg, ptr nonnull align 1 %i.ve, i64 %i.vj, i1 false)
  br label %ompi_osc_rdma_initialize_region.exit.thread.i.i

bb.dv:                                            ; preds = %bb.ds
  %i.vk = getelementptr inbounds nuw i8, ptr %i.un, i64 344
  %i.vl = getelementptr inbounds nuw i8, ptr %i.va, i64 80
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vk, ptr nonnull align 1 %i.ul, i64 %i.vm, i1 false)
  br label %ompi_osc_rdma_initialize_region.exit.thread.i.i

ompi_osc_rdma_initialize_region.exit.thread.i.i:  ; preds = %bb.dv, %bb.du, %bb.dr, %bb.dq
  %i.vn = call i32 @ompi_osc_rdma_new_peer(ptr noundef nonnull %i.ab, i32 noundef %.val87.i.i, ptr noundef nonnull %i.f) #16, !inline_history !161 ; 2 uses
  %.not84.i.i = icmp eq i32 %i.vn, 0
  br i1 %.not84.i.i, label %bb.dw, label %allocate_state_single.exit.i, !prof !127

bb.dw:                                            ; preds = %ompi_osc_rdma_initialize_region.exit.thread.i.i
  %i.vo = load ptr, ptr %i.f, align 8, !tbaa !135
  %i.vp = call i32 @ompi_osc_module_add_peer(ptr noundef nonnull %i.ab, ptr noundef %i.vo) #16, !inline_history !161 ; 3 uses
  %.not85.i.i = icmp eq i32 %i.vp, 0
  %i.vq = load ptr, ptr %i.f, align 8, !tbaa !135 ; 16 uses
  br i1 %.not85.i.i, label %bb.eb, label %bb.dx, !prof !127

bb.dx:                                            ; preds = %bb.dw
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 4 uses
  %i.vs = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42, !noundef !43
  %i.vt = trunc nuw i8 %i.vs to i1
  br i1 %i.vt, label %bb.dy, label %bb.dz, !prof !44

bb.dy:                                            ; preds = %bb.dx
  %i.vu = atomicrmw volatile add ptr %i.vr, i32 -1 monotonic, align 4
  %i.vv = add i32 %i.vu, -1
  br label %opal_thread_add_fetch_32.exit.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.vw = load volatile i32, ptr %i.vr, align 4, !tbaa !45
  %i.vx = add nsw i32 %i.vw, -1
  store volatile i32 %i.vx, ptr %i.vr, align 4, !tbaa !45
  %i.vy = load volatile i32, ptr %i.vr, align 4, !tbaa !45
  br label %opal_thread_add_fetch_32.exit.i.i

opal_thread_add_fetch_32.exit.i.i:                ; preds = %bb.dz, %bb.dy
  %.0.i90.i.i = phi i32 [ %i.vv, %bb.dy ], [ %i.vy, %bb.dz ]
  %i.vz = icmp eq i32 %.0.i90.i.i, 0
  br i1 %i.vz, label %bb.ea, label %allocate_state_single.exit.i

bb.ea:                                            ; preds = %opal_thread_add_fetch_32.exit.i.i
  %i.wa = load ptr, ptr %i.vq, align 8, !tbaa !46
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 48
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !49 ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !50 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.wd, null
  br i1 %.not6.i.i.i, label %opal_obj_run_destructors.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ea, %.lr.ph.i.i.i
  %i.we = phi ptr [ %i.wg, %.lr.ph.i.i.i ], [ %i.wd, %bb.ea ]
  %.07.i.i.i = phi ptr [ %i.wf, %.lr.ph.i.i.i ], [ %i.wc, %bb.ea ]
  call void %i.we(ptr noundef nonnull %i.vq) #16, !inline_history !165
  %i.wf = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !50 ; 2 uses
  %.not.i91.i.i = icmp eq ptr %i.wg, null
  br i1 %.not.i91.i.i, label %opal_obj_run_destructors.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit.i.i:       ; preds = %.lr.ph.i.i.i
  %.pre96.i.i = load ptr, ptr %i.f, align 8, !tbaa !135
  br label %opal_obj_run_destructors.exit.i.i

opal_obj_run_destructors.exit.i.i:                ; preds = %opal_obj_run_destructors.exit.loopexit.i.i, %bb.ea
  %i.wh = phi ptr [ %.pre96.i.i, %opal_obj_run_destructors.exit.loopexit.i.i ], [ %i.vq, %bb.ea ]
  call void @free(ptr noundef %i.wh) #16, !inline_history !161
  br label %allocate_state_single.exit.i

bb.eb:                                            ; preds = %bb.dw
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  store ptr %i.vq, ptr %i.wi, align 32, !tbaa !232
  %i.wj = load ptr, ptr %i.tk, align 64, !tbaa !133
  %i.wk = getelementptr inbounds nuw i8, ptr %i.ab, i64 360
  store ptr %i.wj, ptr %i.wk, align 8, !tbaa !233
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vq, i64 140 ; 4 uses
  %i.wm = load volatile i32, ptr %i.wl, align 4, !tbaa !235
  %i.wn = or i32 %i.wm, 2
  store volatile i32 %i.wn, ptr %i.wl, align 4, !tbaa !235
  %i.wo = load ptr, ptr %i.tt, align 16, !tbaa !230
  %i.wp = ptrtoint ptr %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vq, i64 56
  store i64 %i.wp, ptr %i.wq, align 8, !tbaa !236
  br i1 %.0234.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.wr = load volatile i32, ptr %i.wl, align 4, !tbaa !235
  %i.ws = or i32 %i.wr, 4
  store volatile i32 %i.ws, ptr %i.wl, align 4, !tbaa !235
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.wt = load ptr, ptr %i.uc, align 8, !tbaa !136
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vq, i64 64
  store ptr %i.wt, ptr %i.wu, align 8, !tbaa !237
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vq, i64 144
  %i.ww = load i8, ptr %i.wv, align 8, !tbaa !238
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vq, i64 145
  store i8 %i.ww, ptr %i.wx, align 1, !tbaa !239
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vq, i64 40
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !240
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vq, i64 48
  store ptr %i.wz, ptr %i.xa, align 8, !tbaa !241
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.xb = load i32, ptr %i.dj, align 4, !tbaa !181 ; 2 uses
  %.not86.i.i = icmp eq i32 %i.xb, 3
  br i1 %.not86.i.i, label %allocate_state_single.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xc = load ptr, ptr %1, align 8, !tbaa !50
  %i.xd = ptrtoint ptr %i.xc to i64
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vq, i64 152
  store i64 %i.xd, ptr %i.xe, align 8, !tbaa !244
  %i.xf = load i8, ptr %i.cl, align 1, !tbaa !175, !range !42, !noundef !43
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vq, i64 176
  store i64 %2, ptr %i.xh, align 8, !tbaa !245
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  br i1 %.0234.i, label %allocate_state_single.exit.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xi = icmp eq i32 %i.xb, 2
  br i1 %i.xi, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.xj = load ptr, ptr %i.uc, align 8, !tbaa !136
  %i.xk = getelementptr inbounds nuw i8, ptr %i.vq, i64 168
  store ptr %i.xj, ptr %i.xk, align 8, !tbaa !246
  br label %allocate_state_single.exit.i

bb.ek:                                            ; preds = %bb.ei
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %i.xm = load ptr, ptr %i.xl, align 16, !tbaa !247
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vq, i64 168
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !246
  br label %allocate_state_single.exit.i

allocate_state_single.exit.i:                     ; preds = %bb.ek, %bb.ej, %bb.eh, %bb.ee, %opal_obj_run_destructors.exit.i.i, %opal_thread_add_fetch_32.exit.i.i, %ompi_osc_rdma_initialize_region.exit.thread.i.i, %bb.dt, %bb.do, %bb.dk
  %.076.i.i = phi i32 [ %i.vp, %opal_thread_add_fetch_32.exit.i.i ], [ -2, %bb.dk ], [ 0, %bb.ee ], [ -2, %bb.do ], [ %i.vn, %ompi_osc_rdma_initialize_region.exit.thread.i.i ], [ %i.vp, %opal_obj_run_destructors.exit.i.i ], [ 0, %bb.eh ], [ 0, %bb.ek ], [ 0, %bb.ej ], [ -2, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %allocate_state_shared.exit

bb.el:                                            ; preds = %bb.df
  %i.xo = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.xp = call zeroext i1 @opal_output_check_verbosity(i32 noundef 60, i32 noundef %i.xo) #16, !inline_history !161
  br i1 %i.xp, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.xq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.xq, ptr noundef nonnull @.str.58) #16, !inline_history !161
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.xr = load ptr, ptr %i.ea, align 8, !tbaa !110
  %i.xs = getelementptr i8, ptr %i.xr, i64 264
  %.val.i230 = load ptr, ptr %i.xs, align 8, !tbaa !86
  %i.xt = getelementptr i8, ptr %.val.i230, i64 16
  %.val.val.i231 = load i32, ptr %i.xt, align 8, !tbaa !89
  %i.xu = load i32, ptr %i.rj, align 4, !tbaa !131 ; 3 uses
  %i.xv = add i32 %.val.val.i231, -1
  %i.xw = add i32 %i.xv, %i.xu
  %i.xx = sdiv i32 %i.xw, %i.xu
  %i.xy = sext i32 %i.xx to i64
  %i.xz = shl nsw i64 %i.xy, 3                    ; 2 uses
  %i.ya = load i64, ptr %10, align 8, !tbaa !119  ; 2 uses
  %i.yb = sext i32 %i.xu to i64
  %i.yc = mul i64 %i.ya, %i.yb
  %i.yd = add i64 %i.xz, %i.ya                    ; 7 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ab, i64 456
  store i64 %i.yd, ptr %i.ye, align 8, !tbaa !229
  %i.yf = add i64 %i.yd, %i.yc
  %i.yg = load i64, ptr %i.ok, align 64, !tbaa !221
  %i.yh = sext i32 %.val284.val.i to i64          ; 3 uses
  %i.yi = mul i64 %i.yg, %i.yh
  %i.yj = add i64 %i.yf, %i.yi                    ; 3 uses
  %i.yk = load i32, ptr %i.dj, align 4, !tbaa !181
  %i.yl = icmp eq i32 %i.yk, 2
  br i1 %i.yl, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ym = sub i64 0, %i.yj
  %i.yn = call i64 @llvm.usub.sat.i64(i64 %i.rp, i64 1) ; 2 uses
  %i.yo = and i64 %i.yn, %i.ym
  %i.yp = add i64 %i.yo, %i.yj
  %i.yq = sub i64 0, %2
  %i.yr = and i64 %i.yn, %i.yq
  %i.ys = add i64 %i.yr, %2
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0247.i = phi i64 [ %i.ys, %bb.eo ], [ %2, %bb.en ] ; 6 uses
  %.0241.i = phi i64 [ %i.yp, %bb.eo ], [ %i.yj, %bb.en ] ; 9 uses
  %i.yt = call noalias ptr @calloc(i64 noundef %i.yh, i64 noundef 16) #17, !inline_history !161 ; 10 uses
  %i.yu = icmp eq ptr %i.yt, null
  br i1 %i.yu, label %.loopexit.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.yv = sext i32 %.val286.i to i64              ; 2 uses
  %i.yw = getelementptr inbounds [16 x i8], ptr %i.yt, i64 %i.yv ; 2 uses
  store i32 %.val287.i, ptr %i.yw, align 8, !tbaa !249
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store i64 %.0247.i, ptr %i.yx, align 8, !tbaa !250
  %i.yy = getelementptr inbounds nuw i8, ptr %i.rg, i64 344 ; 7 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !121 ; 2 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !137
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !138
  %i.zd = call i32 %i.za(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef 16, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.yt, i32 noundef 16, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.rg, ptr noundef %i.zc) #16, !inline_history !161 ; 2 uses
  %.not.i232 = icmp eq i32 %i.zd, 0
  br i1 %.not.i232, label %bb.er, label %.loopexit.i

bb.er:                                            ; preds = %bb.eq
  %i.ze = load i32, ptr %i.dj, align 4, !tbaa !181
  %i.zf = icmp eq i32 %i.ze, 2
  %i.zg = icmp sgt i32 %.val284.val.i, 0          ; 2 uses
  %or.cond.i233 = and i1 %i.zg, %i.zf
  br i1 %or.cond.i233, label %.lr.ph.i235, label %.loopexit310.i

.lr.ph.i235:                                      ; preds = %bb.er
  %i.zh = call i64 @llvm.usub.sat.i64(i64 %i.rp, i64 1) ; 3 uses
  %i.zi = zext i32 %.val286.i to i64              ; 3 uses
  %wide.trip.count.i236 = zext nneg i32 %.val284.val.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i236, 1
  %unroll_iter = and i64 %wide.trip.count.i236, 2147483646
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %.lr.ph.i235
  %indvars.iv.i237 = phi i64 [ 0, %.lr.ph.i235 ], [ %indvars.iv.next.i238.1, %bb.es ] ; 4 uses
  %.0235312.i = phi i64 [ 0, %.lr.ph.i235 ], [ %spec.select.i.1, %bb.es ]
  %.0242311.i = phi i64 [ %.0241.i, %.lr.ph.i235 ], [ %i.zy, %bb.es ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i235 ], [ %niter.next.1, %bb.es ]
  %i.zj = icmp eq i64 %indvars.iv.i237, %i.zi
  %spec.select.i = select i1 %i.zj, i64 %.0242311.i, i64 %.0235312.i
  %i.zk = getelementptr inbounds nuw [16 x i8], ptr %i.yt, i64 %indvars.iv.i237
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !250
  %i.zn = add i64 %i.zm, %.0242311.i              ; 2 uses
  %i.zo = sub i64 0, %i.zn
  %i.zp = and i64 %i.zh, %i.zo
  %i.zq = add i64 %i.zp, %i.zn                    ; 2 uses
  %indvars.iv.next.i238 = or disjoint i64 %indvars.iv.i237, 1 ; 2 uses
  %i.zr = icmp eq i64 %indvars.iv.next.i238, %i.zi
  %spec.select.i.1 = select i1 %i.zr, i64 %i.zq, i64 %spec.select.i ; 3 uses
  %i.zs = getelementptr inbounds nuw [16 x i8], ptr %i.yt, i64 %indvars.iv.next.i238
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !250
  %i.zv = add i64 %i.zu, %i.zq                    ; 2 uses
  %i.zw = sub i64 0, %i.zv
  %i.zx = and i64 %i.zh, %i.zw
  %i.zy = add i64 %i.zx, %i.zv                    ; 4 uses
  %indvars.iv.next.i238.1 = add nuw nsw i64 %indvars.iv.i237, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit310.i.loopexit.unr-lcssa, label %bb.es, !llvm.loop !166

.loopexit310.i.loopexit.unr-lcssa:                ; preds = %bb.es
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit310.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit310.i.loopexit.unr-lcssa
  %lcmp.mod359 = trunc i32 %.val284.val.i to i1
  call void @llvm.assume(i1 %lcmp.mod359)
  %i.zz = icmp eq i64 %indvars.iv.next.i238.1, %i.zi
  %spec.select.i.epil = select i1 %i.zz, i64 %i.zy, i64 %spec.select.i.1
  %i.aaa = getelementptr inbounds nuw [16 x i8], ptr %i.yt, i64 %indvars.iv.next.i238.1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !250
  %i.aad = add i64 %i.aac, %i.zy                  ; 2 uses
  %i.aae = sub i64 0, %i.aad
  %i.aaf = and i64 %i.zh, %i.aae
  %i.aag = add i64 %i.aaf, %i.aad
  br label %.loopexit310.i

.loopexit310.i:                                   ; preds = %.epil.preheader, %.loopexit310.i.loopexit.unr-lcssa, %bb.er
  %.1243.i = phi i64 [ %.0241.i, %bb.er ], [ %i.zy, %.loopexit310.i.loopexit.unr-lcssa ], [ %i.aag, %.epil.preheader ] ; 2 uses
  %.2237.i = phi i64 [ 0, %bb.er ], [ %spec.select.i.1, %.loopexit310.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ] ; 2 uses
  %i.aah = icmp eq i32 %.val286.i, 0              ; 2 uses
  br i1 %i.aah, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %.loopexit310.i
  %i.aai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_osc_rdma_component, i64 1296), align 16, !tbaa !52
  %i.aaj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 272), align 8, !tbaa !253
  %i.aak = load i32, ptr @opal_process_info, align 8, !tbaa !254
  %i.aal = load ptr, ptr %i.ea, align 8, !tbaa !110
  %i.aam = call ptr @ompi_comm_print_cid(ptr noundef %i.aal) #16, !inline_history !161
  %i.aan = call i32 @getpid() #16, !inline_history !161
  %i.aao = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.59, ptr noundef %i.aai, ptr noundef %i.aaj, i32 noundef %i.aak, ptr noundef %i.aam, i32 noundef %i.aan) #16, !inline_history !161
  %i.aap = icmp slt i32 %i.aao, 0
  br i1 %i.aap, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.ab, i64 1168
  %i.aar = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.aas = call i32 @opal_shmem_segment_create(ptr noundef nonnull %i.aaq, ptr noundef %i.aar, i64 noundef %.1243.i) #16, !inline_history !161 ; 3 uses
  %i.aat = load ptr, ptr %i.g, align 8, !tbaa !35
  call void @free(ptr noundef %i.aat) #16, !inline_history !161
  %.not269.i = icmp eq i32 %i.aas, 0
  br i1 %.not269.i, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aau = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.aav = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.aau) #16, !inline_history !161
  br i1 %i.aav, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.aaw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.aaw, ptr noundef nonnull @.str.60) #16, !inline_history !161
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu, %bb.et, %.loopexit310.i
  %.0238.i = phi i32 [ 0, %.loopexit310.i ], [ %i.aas, %bb.ew ], [ %i.aas, %bb.ev ], [ 0, %bb.eu ], [ -2, %bb.et ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i32 %.0238.i, ptr %i.e, align 4, !tbaa !45
  %i.aax = load ptr, ptr %i.yy, align 8, !tbaa !121 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 32
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !125
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 40
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !126
  %i.abc = call i32 %i.aaz(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull @ompi_mpi_op_min, ptr noundef nonnull %i.rg, ptr noundef %i.abb) #16, !inline_history !167 ; 2 uses
  %.not.i.i234 = icmp eq i32 %i.abc, 0
  %.pre.i289.i = load i32, ptr %i.e, align 4
  %i.abd = select i1 %.not.i.i234, i32 %.pre.i289.i, i32 %i.abc, !prof !127 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.not270.i = icmp eq i32 %i.abd, 0
  br i1 %.not270.i, label %bb.ey, label %.loopexit.i, !prof !127

bb.ey:                                            ; preds = %bb.ex
  %i.abe = load ptr, ptr %i.yy, align 8, !tbaa !121 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 112
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !222
  %i.abh = getelementptr inbounds nuw i8, ptr %i.ab, i64 1168 ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abe, i64 120
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !223
  %i.abk = call i32 %i.abg(ptr noundef nonnull %i.abh, i32 noundef 4136, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, ptr noundef nonnull %i.rg, ptr noundef %i.abj) #16, !inline_history !161 ; 2 uses
  %.not271.i = icmp eq i32 %i.abk, 0
  br i1 %.not271.i, label %bb.ez, label %.loopexit.i, !prof !127

bb.ez:                                            ; preds = %bb.ey
  %i.abl = call ptr @opal_shmem_segment_attach(ptr noundef nonnull %i.abh) #16, !inline_history !161 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.ab, i64 1160 ; 8 uses
  store ptr %i.abl, ptr %i.abm, align 8, !tbaa !255
  %i.abn = icmp eq ptr %i.abl, null
  br i1 %i.abn, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.abo = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  %i.abp = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.abo) #16, !inline_history !161
  br i1 %i.abp, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.abq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_osc_base_framework, i64 76), align 4, !tbaa !60
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.abq, ptr noundef nonnull @.str.61) #16, !inline_history !161
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.1239.i = phi i32 [ 0, %bb.ez ], [ -1, %bb.fb ], [ -1, %bb.fa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 %.1239.i, ptr %i.d, align 4, !tbaa !45
  %i.abr = load ptr, ptr %i.yy, align 8, !tbaa !121 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 32
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !125
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 40
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !126
  %i.abw = call i32 %i.abt(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull @ompi_mpi_op_min, ptr noundef nonnull %i.rg, ptr noundef %i.abv) #16, !inline_history !167 ; 2 uses
  %.not.i290.i = icmp eq i32 %i.abw, 0
end_hunk_0
