inline.NumInlined: 62
inline.NumDeleted: 23
begin_hunk_0_@binary_writer_write_sample:bb.a
  store i32 %i.fh, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 %.159.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 %.161.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %.165.i.i, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  store i32 %.163.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 4, !tbaa !6
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i8 %.152.i.i, ptr %.sroa.16.0..sroa_idx.i.i, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %i.gd = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.ge = add i64 %i.ga, 1
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = call i32 @_Py_hashtable_set(ptr noundef %i.gd, ptr noundef nonnull %i.fy, ptr noundef %i.gg) #12
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @PyMem_Free(ptr noundef nonnull %i.fy) #12
  %i.gj = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %.critedge84.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.gk = trunc i64 %i.ga to i32
  %i.gl = load i64, ptr %i.x, align 8, !tbaa !80
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.x, align 8, !tbaa !80
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ba
  %.1.i.i = phi i32 [ %i.gk, %bb.bm ], [ %i.fm, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.gn = getelementptr [4 x i8], ptr %i.e, i64 %.053107.i.i
  store i32 %.1.i.i, ptr %i.gn, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.go = add nuw nsw i64 %.053107.i.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.go, %i.dj
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.y, !llvm.loop !83

.critedge84.i.i:                                  ; preds = %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.loopexit.sink.split.sink.split.i.i

.loopexit.sink.split.sink.split.i.i:              ; preds = %bb.ay, %.critedge84.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %build_frame_stack.exit.i

build_frame_stack.exit.i:                         ; preds = %bb.ax, %.loopexit.sink.split.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %process_thread_sample.exit.thread49

.loopexit.i:                                      ; preds = %bb.bn, %writer_get_or_create_thread_entry.exit.i
  %i.gp = getelementptr i8, ptr %.3.i.i, i64 24   ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !53 ; 2 uses
  %i.gr = getelementptr i8, ptr %.3.i.i, i64 32   ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !84 ; 6 uses
  %i.gt = icmp eq i64 %i.gs, %i.dj
  br i1 %i.gt, label %.preheader.i.i, label %.thread.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i
  %.not6061.not.i.i = icmp eq i64 %i.di, 0
  br i1 %.not6061.not.i.i, label %compare_stacks.exit.i, label %.lr.ph.i53.i

bb.bo:                                            ; preds = %.lr.ph.i53.i
  %i.gu = add nuw i64 %.04962.i.i, 1              ; 2 uses
  %exitcond.not.i55.i = icmp eq i64 %i.gu, %i.dj
  br i1 %exitcond.not.i55.i, label %compare_stacks.exit.i, label %.lr.ph.i53.i, !llvm.loop !85

.lr.ph.i53.i:                                     ; preds = %.preheader.i.i, %bb.bo
  %.04962.i.i = phi i64 [ %i.gu, %bb.bo ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gq, i64 %.04962.i.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !6
  %i.gx = getelementptr [4 x i8], ptr %i.e, i64 %.04962.i.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !6
  %.not.i54.i = icmp eq i32 %i.gw, %i.gy
  br i1 %.not.i54.i, label %bb.bo, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i53.i, %.loopexit.i
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gs, i64 %i.dj) ; 5 uses
  %.not69.i52.i = icmp eq i64 %i.gz, 0
  br i1 %.not69.i52.i, label %compare_stacks.exit.thread.i, label %.lr.ph65.i.i

.lr.ph65.i.i:                                     ; preds = %.thread.i.i
  %i.ha = getelementptr [4 x i8], ptr %i.gq, i64 %i.gs
  %i.hb = getelementptr [4 x i8], ptr %i.e, i64 %i.dj
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %.lr.ph65.i.i
  %.04864.i.i = phi i64 [ 0, %.lr.ph65.i.i ], [ %i.hi, %bb.bq ] ; 6 uses
  %i.hc = xor i64 %.04864.i.i, -1                 ; 2 uses
  %i.hd = getelementptr [4 x i8], ptr %i.ha, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !6
  %i.hf = getelementptr [4 x i8], ptr %i.hb, i64 %i.hc
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !6
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.bq, label %._crit_edge66.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.hi = add nuw i64 %.04864.i.i, 1              ; 2 uses
  %exitcond70.not.i.i = icmp eq i64 %i.hi, %i.gz
  br i1 %exitcond70.not.i.i, label %._crit_edge66.thread75.i.i, label %bb.bp, !llvm.loop !86

._crit_edge66.thread75.i.i:                       ; preds = %bb.bq
  %i.hj = sub i64 %i.gs, %i.gz
  %i.hk = sub i64 %i.dj, %i.gz
  br label %bb.br

._crit_edge66.i.i:                                ; preds = %bb.bp
  %i.hl = sub i64 %i.gs, %.04864.i.i              ; 2 uses
  %i.hm = sub i64 %i.dj, %.04864.i.i              ; 2 uses
  %i.hn = icmp eq i64 %.04864.i.i, 0
  br i1 %i.hn, label %compare_stacks.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %._crit_edge66.i.i, %._crit_edge66.thread75.i.i
  %.080.i = phi i64 [ %i.gz, %._crit_edge66.thread75.i.i ], [ %.04864.i.i, %._crit_edge66.i.i ] ; 4 uses
  %.078.i = phi i64 [ %i.hj, %._crit_edge66.thread75.i.i ], [ %i.hl, %._crit_edge66.i.i ] ; 3 uses
  %.076.i = phi i64 [ %i.hk, %._crit_edge66.thread75.i.i ], [ %i.hm, %._crit_edge66.i.i ] ; 3 uses
  %i.ho = icmp ne i64 %.078.i, 0
  %.not56.i.i = icmp eq i64 %i.dj, %.080.i        ; 2 uses
  %or.cond.i.i = or i1 %.not56.i.i, %i.ho
  br i1 %or.cond.i.i, label %bb.bs, label %compare_stacks.exit.thread.i

bb.bs:                                            ; preds = %bb.br
  %.not57.i.i = icmp eq i64 %.078.i, 0
  %or.cond59.i.i = and i1 %.not56.i.i, %.not57.i.i
  br i1 %or.cond59.i.i, label %compare_stacks.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hp = lshr i64 %i.dj, 1
  %i.hq = icmp ult i64 %.080.i, %i.hp
  %..i.i = select i1 %i.hq, i32 1, i32 3
  br label %compare_stacks.exit.thread.i

compare_stacks.exit.i:                            ; preds = %bb.bo, %.preheader.i.i
  %.181.i = phi i64 [ 0, %.preheader.i.i ], [ %i.dj, %bb.bo ]
  br i1 %i.de, label %compare_stacks.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %compare_stacks.exit.i
  %i.hr = getelementptr i8, ptr %.3.i.i, i64 48   ; 2 uses
  %i.hs = getelementptr i8, ptr %.3.i.i, i64 56   ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !87 ; 2 uses
  %i.hu = getelementptr i8, ptr %.3.i.i, i64 64   ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !75 ; 5 uses
  %i.hw = icmp ult i64 %i.ht, %i.hv
  %.pre.i = load ptr, ptr %i.hr, align 8, !tbaa !81 ; 2 uses
  br i1 %i.hw, label %grow_array_inplace.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hx = icmp slt i64 %i.hv, 0
  br i1 %i.hx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hy = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.hy, ptr noundef nonnull @.str.4) #12
  br label %process_thread_sample.exit.thread49

bb.bx:                                            ; preds = %bb.bv
  %i.hz = shl nuw i64 %i.hv, 1
  %mul.ov.i.i57.i = icmp samesign ugt i64 %i.hv, 576460752303423487
  br i1 %mul.ov.i.i57.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ia = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.ia, ptr noundef nonnull @.str.5) #12
  br label %process_thread_sample.exit.thread49

bb.bz:                                            ; preds = %bb.bx
  %i.ib = shl nuw i64 %i.hv, 5
  %i.ic = call ptr @PyMem_Realloc(ptr noundef %.pre.i, i64 noundef %i.ib) #12 ; 3 uses
  %.not.i.i58.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i58.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.id = call ptr @PyErr_NoMemory() #12          ; 0 uses
  br label %process_thread_sample.exit.thread49

bb.cb:                                            ; preds = %bb.bz
  store i64 %i.hz, ptr %i.hu, align 8, !tbaa !75
  store ptr %i.ic, ptr %i.hr, align 8, !tbaa !81
  %.pre154.i = load i64, ptr %i.hs, align 8, !tbaa !87
  br label %grow_array_inplace.exit.i

grow_array_inplace.exit.i:                        ; preds = %bb.cb, %bb.bu
  %i.ie = phi i64 [ %.pre154.i, %bb.cb ], [ %i.ht, %bb.bu ] ; 2 uses
  %i.if = phi ptr [ %i.ic, %bb.cb ], [ %.pre.i, %bb.bu ]
  %i.ig = getelementptr [16 x i8], ptr %i.if, i64 %i.ie ; 2 uses
  store i64 %i.dh, ptr %i.ig, align 8, !tbaa !88
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  store i8 %i.bt, ptr %i.ih, align 8, !tbaa !90
  %i.ii = add i64 %i.ie, 1
  store i64 %i.ii, ptr %i.hs, align 8, !tbaa !87
  %i.ij = getelementptr i8, ptr %.3.i.i, i64 72
  store i32 1, ptr %i.ij, align 8, !tbaa !91
  br label %bb.cx

compare_stacks.exit.thread.i:                     ; preds = %bb.bt, %compare_stacks.exit.i, %bb.bs, %bb.br, %._crit_edge66.i.i, %.thread.i.i
  %.2.i96.i = phi i32 [ 0, %compare_stacks.exit.i ], [ 1, %.thread.i.i ], [ 1, %bb.bs ], [ %..i.i, %bb.bt ], [ 1, %._crit_edge66.i.i ], [ 2, %bb.br ] ; 2 uses
  %.17795.i = phi i64 [ 0, %compare_stacks.exit.i ], [ %i.dj, %.thread.i.i ], [ %.076.i, %bb.bs ], [ %.076.i, %bb.bt ], [ %i.hm, %._crit_edge66.i.i ], [ %.076.i, %bb.br ] ; 13 uses
  %.17994.i = phi i64 [ 0, %compare_stacks.exit.i ], [ %i.gs, %.thread.i.i ], [ 0, %bb.bs ], [ %.078.i, %bb.bt ], [ %i.hl, %._crit_edge66.i.i ], [ 0, %bb.br ] ; 4 uses
  %.18192.i = phi i64 [ %.181.i, %compare_stacks.exit.i ], [ 0, %.thread.i.i ], [ %i.dj, %bb.bs ], [ %.080.i, %bb.bt ], [ 0, %._crit_edge66.i.i ], [ %.080.i, %bb.br ] ; 5 uses
  %i.ik = getelementptr i8, ptr %.3.i.i, i64 72
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !91
  %.not46.i = icmp eq i32 %i.il, 0
  br i1 %.not46.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %compare_stacks.exit.thread.i
  %i.im = call fastcc i32 @flush_pending_rle(ptr noundef %0, ptr noundef nonnull %.3.i.i)
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %process_thread_sample.exit.thread49, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %compare_stacks.exit.thread.i
  %.val.i = load i64, ptr %.3.i.i, align 8
  %i.io = getelementptr i8, ptr %.3.i.i, i64 16
  %.val47.i = load i32, ptr %i.io, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %.val.i, ptr %i.a, align 16
  store i32 %.val47.i, ptr %i.z, align 8
  %i.ip = trunc nuw nsw i32 %.2.i96.i to i8
  store i8 %i.ip, ptr %i.aa, align 4, !tbaa !39
  %i.iq = icmp ult i64 %i.dh, 128
  br i1 %i.iq, label %encode_varint_u64.exit.thread.i.i, label %.preheader.i.i.i

encode_varint_u64.exit.thread.i.i:                ; preds = %bb.cd
  %i.ir = trunc nuw nsw i64 %i.dh to i8
  store i8 %i.ir, ptr %i.ab, align 1, !tbaa !39
  store i8 %i.bt, ptr %i.ac, align 2, !tbaa !39
  br label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.cd, %.preheader.i.i.i
  %.016.i.i.i = phi i64 [ %i.iu, %.preheader.i.i.i ], [ 0, %bb.cd ] ; 4 uses
  %.01215.i.i.i = phi i64 [ %i.iw, %.preheader.i.i.i ], [ %i.dh, %bb.cd ] ; 3 uses
  %i.is = trunc i64 %.01215.i.i.i to i8
  %i.it = or i8 %i.is, -128
  %i.iu = add nuw nsw i64 %.016.i.i.i, 1          ; 2 uses
  %i.iv = getelementptr i8, ptr %i.ab, i64 %.016.i.i.i
  store i8 %i.it, ptr %i.iv, align 1, !tbaa !39
  %i.iw = lshr i64 %.01215.i.i.i, 7               ; 2 uses
  %i.ix = icmp ugt i64 %.01215.i.i.i, 16383
  br i1 %i.ix, label %.preheader.i.i.i, label %encode_varint_u64.exit.i.i, !llvm.loop !92

encode_varint_u64.exit.i.i:                       ; preds = %.preheader.i.i.i
  %i.iy = trunc nuw nsw i64 %i.iw to i8
  %i.iz = getelementptr i8, ptr %i.ab, i64 %i.iu
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !39
  %i.ja = getelementptr i8, ptr %i.a, i64 %.016.i.i.i
  %i.jb = getelementptr i8, ptr %i.ja, i64 15
  store i8 %i.bt, ptr %i.jb, align 1, !tbaa !39
  %i.jc = add nuw i64 %.016.i.i.i, 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %encode_varint_u64.exit.i.i, %encode_varint_u64.exit.thread.i.i
  %i.jd = phi i64 [ 15, %encode_varint_u64.exit.thread.i.i ], [ %i.jc, %encode_varint_u64.exit.i.i ] ; 2 uses
  %.pre.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !93
  br label %bb.ce

bb.ce:                                            ; preds = %.critedge.i.i.i, %.lr.ph.i.i.i
  %i.je = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %.pre.i110.i.i, %.critedge.i.i.i ] ; 2 uses
  %.02631.i.i.i = phi i64 [ %i.jd, %.lr.ph.i.i.i ], [ %i.jn, %.critedge.i.i.i ] ; 2 uses
  %.02730.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.jm, %.critedge.i.i.i ] ; 2 uses
  %i.jf = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.jg = sub i64 %i.jf, %i.je
  %i.jh = call i64 @llvm.umin.i64(i64 %.02631.i.i.i, i64 %i.jg) ; 4 uses
  %i.ji = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.jj = getelementptr i8, ptr %i.ji, i64 %i.je
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jj, ptr align 1 %.02730.i.i.i, i64 %i.jh, i1 false)
  %i.jk = load i64, ptr %i.ae, align 8, !tbaa !93
  %i.jl = add i64 %i.jk, %i.jh                    ; 6 uses
  store i64 %i.jl, ptr %i.ae, align 8, !tbaa !93
  %i.jm = getelementptr i8, ptr %.02730.i.i.i, i64 %i.jh
  %i.jn = sub i64 %.02631.i.i.i, %i.jh            ; 2 uses
  %i.jo = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.jp = icmp ne i64 %i.jl, %i.jo
  %i.jq = icmp eq i64 %i.jl, 0
  %or.cond.i.i.i = or i1 %i.jq, %i.jp
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jr = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.js = load ptr, ptr %0, align 8, !tbaa !38
  %i.jt = call ptr @PyEval_SaveThread() #12
  %i.ju = call i64 @fwrite(ptr noundef readonly %i.jr, i64 noundef 1, i64 noundef %i.jl, ptr noundef %i.js)
  call void @PyEval_RestoreThread(ptr noundef %i.jt) #12
  %.not.i.i.i.i60.i = icmp eq i64 %i.ju, %i.jl
  br i1 %.not.i.i.i.i60.i, label %fwrite_checked_allow_threads.exit.i.i.i.i, label %write_sample_with_encoding.exit.thread.i

fwrite_checked_allow_threads.exit.i.i.i.i:        ; preds = %bb.cf
  store i64 0, ptr %i.ae, align 8, !tbaa !93
  br label %.critedge.i.i.i

write_sample_with_encoding.exit.thread.i:         ; preds = %bb.cf
  %i.jv = load ptr, ptr @PyExc_IOError, align 8, !tbaa !36
  %i.jw = call ptr @PyErr_SetFromErrno(ptr noundef %i.jv) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %process_thread_sample.exit.thread49

.critedge.i.i.i:                                  ; preds = %fwrite_checked_allow_threads.exit.i.i.i.i, %bb.ce
  %.pre.i110.i.i = phi i64 [ 0, %fwrite_checked_allow_threads.exit.i.i.i.i ], [ %i.jl, %bb.ce ] ; 2 uses
  %.not.i.i61.i = icmp eq i64 %i.jn, 0
  br i1 %.not.i.i61.i, label %bb.cg, label %bb.ce

bb.cg:                                            ; preds = %.critedge.i.i.i
  %i.jx = load i64, ptr %i.ag, align 8, !tbaa !94
  %i.jy = add i64 %i.jx, %i.jd                    ; 2 uses
  store i64 %i.jy, ptr %i.ag, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  switch i32 %.2.i96.i, label %default.unreachable [
    i32 1, label %bb.ch
    i32 2, label %bb.ck
    i32 3, label %bb.cp
    i32 0, label %bb.cu
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.jz = and i64 %i.dj, 4294967168
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %encode_varint_u32.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ch
  %i.kb = and i64 %i.dj, 4294967295               ; 7 uses
  %i.kc = trunc i64 %i.dj to i8
  %i.kd = or i8 %i.kc, -128
  store i8 %i.kd, ptr %i.b, align 16, !tbaa !39
  %i.ke = lshr i64 %i.kb, 7                       ; 2 uses
  %i.kf = icmp samesign ugt i64 %i.kb, 16383
  br i1 %i.kf, label %.preheader.i.i.i.i.1, label %encode_varint_u32.exit.thread.i.i

.preheader.i.i.i.i.1:                             ; preds = %.preheader.i.i.i.i
  %i.kg = trunc i64 %i.ke to i8
  %i.kh = or i8 %i.kg, -128
  store i8 %i.kh, ptr %i.aq, align 1, !tbaa !39
  %i.ki = lshr i64 %i.kb, 14                      ; 2 uses
  %i.kj = icmp samesign ugt i64 %i.kb, 2097151
  br i1 %i.kj, label %.preheader.i.i.i.i.2, label %encode_varint_u32.exit.thread.i.i

.preheader.i.i.i.i.2:                             ; preds = %.preheader.i.i.i.i.1
  %i.kk = trunc i64 %i.ki to i8
  %i.kl = or i8 %i.kk, -128
  store i8 %i.kl, ptr %i.ar, align 2, !tbaa !39
  %i.km = lshr i64 %i.kb, 21                      ; 2 uses
  %i.kn = icmp samesign ugt i64 %i.kb, 268435455
  br i1 %i.kn, label %.preheader.i.i.i.i.3, label %encode_varint_u32.exit.thread.i.i

.preheader.i.i.i.i.3:                             ; preds = %.preheader.i.i.i.i.2
  %i.ko = trunc i64 %i.km to i8
  %i.kp = or i8 %i.ko, -128
  store i8 %i.kp, ptr %i.as, align 1, !tbaa !39
  %i.kq = lshr i64 %i.kb, 28
  br label %encode_varint_u32.exit.thread.i.i

encode_varint_u32.exit.thread.i.i:                ; preds = %.preheader.i.i.i.i.3, %.preheader.i.i.i.i.2, %.preheader.i.i.i.i.1, %.preheader.i.i.i.i
  %.016.i.i.i.i.lcssa = phi i64 [ 2, %.preheader.i.i.i.i ], [ 3, %.preheader.i.i.i.i.1 ], [ 4, %.preheader.i.i.i.i.2 ], [ 5, %.preheader.i.i.i.i.3 ]
  %.lcssa359.sroa.phi = phi ptr [ %.lcssa359.sroa.gep, %.preheader.i.i.i.i ], [ %.lcssa359.sroa.gep399, %.preheader.i.i.i.i.1 ], [ %.lcssa359.sroa.gep400, %.preheader.i.i.i.i.2 ], [ %.lcssa359.sroa.gep401, %.preheader.i.i.i.i.3 ]
  %.lcssa358 = phi i64 [ %i.ke, %.preheader.i.i.i.i ], [ %i.ki, %.preheader.i.i.i.i.1 ], [ %i.km, %.preheader.i.i.i.i.2 ], [ %i.kq, %.preheader.i.i.i.i.3 ]
  %i.kr = trunc nuw nsw i64 %.lcssa358 to i8
  store i8 %i.kr, ptr %.lcssa359.sroa.phi, align 1, !tbaa !39
  br label %.lr.ph31.i.i.preheader

.lr.ph31.i.i.preheader:                           ; preds = %encode_varint_u32.exit.i.i, %encode_varint_u32.exit.thread.i.i
  %.06029.i.i.ph = phi i64 [ %.016.i.i.i.i.lcssa, %encode_varint_u32.exit.thread.i.i ], [ 1, %encode_varint_u32.exit.i.i ]
  br label %.lr.ph31.i.i

encode_varint_u32.exit.i.i:                       ; preds = %bb.ch
  %i.ks = trunc i64 %i.dj to i8
  store i8 %i.ks, ptr %i.b, align 16, !tbaa !39
  %.not35.i.i = icmp eq i64 %i.di, 0
  br i1 %.not35.i.i, label %._crit_edge32.i.thread.i, label %.lr.ph31.i.i.preheader

._crit_edge32.i.thread.i:                         ; preds = %encode_varint_u32.exit.i.i
  %i.kt = load i64, ptr %i.ah, align 8, !tbaa !75
  %i.ku = add i64 %i.kt, 1
  store i64 %i.ku, ptr %i.ah, align 8, !tbaa !75
  br label %.lr.ph.i109.i.preheader.i

.lr.ph31.i.i:                                     ; preds = %.lr.ph31.i.i.preheader, %encode_varint_u32.exit71.i.i
  %.05830.i.i = phi i64 [ %i.lw, %encode_varint_u32.exit71.i.i ], [ 0, %.lr.ph31.i.i.preheader ] ; 2 uses
  %.06029.i.i = phi i64 [ %i.lv, %encode_varint_u32.exit71.i.i ], [ %.06029.i.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %i.kv = getelementptr i8, ptr %i.b, i64 %.06029.i.i ; 6 uses
  %i.kw = getelementptr [4 x i8], ptr %i.e, i64 %.05830.i.i
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !6  ; 7 uses
  %i.ky = icmp ult i32 %i.kx, 128
  br i1 %i.ky, label %bb.ci, label %.preheader.i.i67.i.i

bb.ci:                                            ; preds = %.lr.ph31.i.i
  %i.kz = trunc nuw nsw i32 %i.kx to i8
  store i8 %i.kz, ptr %i.kv, align 1, !tbaa !39
  br label %encode_varint_u32.exit71.i.i

.preheader.i.i67.i.i:                             ; preds = %.lr.ph31.i.i
  %i.la = trunc i32 %i.kx to i8
  %i.lb = or i8 %i.la, -128
  store i8 %i.lb, ptr %i.kv, align 1, !tbaa !39
  %i.lc = lshr i32 %i.kx, 7                       ; 2 uses
  %i.ld = zext nneg i32 %i.lc to i64              ; 4 uses
  %i.le = icmp ugt i32 %i.kx, 16383
  br i1 %i.le, label %.preheader.i.i67.i.i.1, label %bb.cj

end_hunk_0
