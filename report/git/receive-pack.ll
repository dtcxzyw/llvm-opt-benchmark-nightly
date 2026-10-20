Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/receive-pack?download=true
inline.NumInlined: 113
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cmd_receive_pack:bb.a
  br i1 %.not57.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i1 true, ptr @use_push_options, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.ef = call ptr @parse_feature_value(ptr noundef nonnull %i.dw, ptr noundef nonnull @.str.68, ptr noundef nonnull %i.e, ptr noundef null) #20 ; 2 uses
  %.not58.i = icmp eq ptr %i.ef, null
  br i1 %.not58.i, label %bb.an, label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %bb.am
  %.pre89.i = load i64, ptr %i.e, align 8, !tbaa !51
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dd) #22 ; 2 uses
  store i64 %i.eg, ptr %i.e, align 8, !tbaa !51
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge88.i
  %i.eh = phi i64 [ %.pre89.i, %._crit_edge88.i ], [ %i.eg, %bb.an ]
  %.043.i = phi ptr [ %i.ef, %._crit_edge88.i ], [ %i.dd, %bb.an ] ; 2 uses
  %i.ei = load ptr, ptr @the_repository, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 448
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !44
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !54
  %i.em = call i32 @xstrncmpz(ptr noundef %i.el, ptr noundef nonnull %.043.i, i64 noundef %i.eh) #20
  %.not59.i = icmp eq i32 %i.em, 0
  br i1 %.not59.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @die(ptr noundef nonnull @.str.69, ptr noundef nonnull %.043.i) #21
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.en = call ptr @parse_feature_value(ptr noundef nonnull %i.dw, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.e, ptr noundef null) #20 ; 3 uses
  %.not60.i = icmp eq ptr %i.en, null
  br i1 %.not60.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load i64, ptr %i.e, align 8, !tbaa !51
  %i.ep = call ptr @xstrndup(ptr noundef nonnull %i.en, i64 noundef %i.eo) #20
  call void @trace2_data_string_fl(ptr noundef nonnull @.str.11, i32 noundef 2251, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.en) #20
  call void @free(ptr noundef %i.ep) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %.pre90.i = load ptr, ptr %i.dc, align 8, !tbaa !50
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.x
  %i.eq = phi ptr [ %.pre90.i, %bb.as ], [ %i.dq, %bb.x ] ; 2 uses
  %i.er = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eq, ptr noundef nonnull dereferenceable(10) @.str.73) #22
  %.not61.i = icmp eq i32 %i.er, 0
  br i1 %.not61.i, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.es = load i32, ptr %i.de, align 4, !tbaa !157 ; 3 uses
  %i.et = and i32 %i.es, -3
  store i32 %i.et, ptr %i.de, align 4, !tbaa !157
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %bb.au
  %i.eu = call i32 @packet_reader_read(ptr noundef nonnull %23) #20 ; 0 uses
  %i.ev = load i32, ptr %i.df, align 8, !tbaa !158
  switch i32 %i.ev, label %bb.aw [
    i32 2, label %select.unfold.i
    i32 1, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @die(ptr noundef nonnull @.str.74) #21
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ew = load ptr, ptr %i.dc, align 8, !tbaa !50 ; 3 uses
  %i.ex = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ew, ptr noundef nonnull dereferenceable(15) @.str.75) #22
  %.not63.i = icmp eq i32 %i.ex, 0
  br i1 %.not63.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ew) #22
  call void @strbuf_add(ptr noundef nonnull @push_cert, ptr noundef nonnull %i.ew, i64 noundef %i.ey) #20
  br label %bb.av

bb.az:                                            ; preds = %bb.ax
  store i32 %i.es, ptr %i.de, align 4, !tbaa !157
  br label %bb.bb

bb.ba:                                            ; preds = %bb.at
  %i.ez = call fastcc ptr @queue_command(ptr noundef %.04282.i, ptr noundef nonnull %i.eq, i32 noundef %i.ds)
  br label %bb.bb

select.unfold.i:                                  ; preds = %bb.av
  store i32 %i.es, ptr %i.de, align 4, !tbaa !157
  br label %.loopexit.i

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.w
  %.1.i = phi ptr [ %.04282.i, %bb.az ], [ %.04282.i, %bb.w ], [ %i.ez, %bb.ba ] ; 2 uses
  %i.fa = call i32 @packet_reader_read(ptr noundef nonnull %23) #20
  %.not.i = icmp eq i32 %i.fa, 1
  br i1 %.not.i, label %bb.s, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bb, %select.unfold.i, %.thread
  %.04279.i = phi ptr [ %.04282.i, %select.unfold.i ], [ %i.d, %.thread ], [ %.1.i, %bb.bb ] ; 2 uses
  %i.fb = load i64, ptr getelementptr inbounds nuw (i8, ptr @push_cert, i64 8), align 8, !tbaa !55 ; 2 uses
  %.not67.i = icmp eq i64 %i.fb, 0
  br i1 %.not67.i, label %read_head_info.exit, label %bb.bc

bb.bc:                                            ; preds = %.loopexit.i
  %i.fc = load ptr, ptr %.04279.i, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @die(ptr noundef nonnull @.str.78) #21
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @push_cert, i64 16), align 8, !tbaa !56 ; 4 uses
  %i.fe = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.fd, ptr noundef nonnull dereferenceable(1) @.str.79) #22 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.fe, null
  br i1 %.not27.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @die(ptr noundef nonnull @.str.80, i32 noundef 100, ptr noundef nonnull %i.fd) #21
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2 ; 2 uses
  %i.fg = call i64 @parse_signed_buffer(ptr noundef nonnull %i.fd, i64 noundef %i.fb) #20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fg ; 4 uses
  %i.fi = icmp ult ptr %i.ff, %i.fh
  br i1 %i.fi, label %.lr.ph.i.i, label %read_head_info.exit

.lr.ph.i.i:                                       ; preds = %bb.bg
  %i.fj = ptrtoint ptr %i.fh to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.i
  %.02.i.i = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %i.ft, %bb.bh ] ; 3 uses
  %.0231.i.i = phi ptr [ %.04279.i, %.lr.ph.i.i ], [ %i.fr, %bb.bh ]
  %i.fk = ptrtoint ptr %.02.i.i to i64            ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 2 uses
  %i.fm = call ptr @memchr(ptr noundef nonnull %.02.i.i, i32 noundef 10, i64 noundef %i.fl) #22 ; 3 uses
  %.not28.i.i = icmp eq ptr %i.fm, null           ; 2 uses
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %i.fk
  %i.fp = select i1 %.not28.i.i, i64 %i.fl, i64 %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = call fastcc ptr @queue_command(ptr noundef %.0231.i.i, ptr noundef nonnull %.02.i.i, i32 noundef %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.ft = select i1 %.not28.i.i, ptr %i.fh, ptr %i.fs ; 2 uses
  %i.fu = icmp ult ptr %i.ft, %i.fh
  br i1 %i.fu, label %bb.bh, label %read_head_info.exit, !llvm.loop !114

read_head_info.exit:                              ; preds = %bb.bh, %.loopexit.i, %bb.bg
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !46  ; 26 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %.not40 = icmp eq ptr %i.fv, null
  br i1 %.not40, label %bb.hf, label %bb.bi

bb.bi:                                            ; preds = %read_head_info.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %25, i8 0, i64 40, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i8 1, ptr %i.fw, align 8
  %.b = load i1, ptr @use_push_options, align 4
  br i1 %.b, label %bb.bj, label %read_push_options.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fx = call i32 @packet_reader_read(ptr noundef nonnull %23) #20
  %.not3.i = icmp eq i32 %i.fx, 1
  br i1 %.not3.i, label %.lr.ph.i49, label %read_push_options.exit

.lr.ph.i49:                                       ; preds = %bb.bj
  %i.fy = getelementptr inbounds nuw i8, ptr %23, i64 48
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.i49
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !50
  %i.ga = call ptr @string_list_append(ptr noundef nonnull %25, ptr noundef %i.fz) #20 ; 0 uses
  %i.gb = call i32 @packet_reader_read(ptr noundef nonnull %23) #20
  %.not.i50 = icmp eq i32 %i.gb, 1
  br i1 %.not.i50, label %bb.bk, label %read_push_options.exit

read_push_options.exit:                           ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @push_cert, i64 16), align 8, !tbaa !56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !58
  %.not.i51 = icmp eq i8 %i.gd, 0
  br i1 %.not.i51, label %check_cert_push_options.exit.thread, label %.preheader.i

check_cert_push_options.exit.thread:              ; preds = %read_push_options.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.loopexit

.preheader.i:                                     ; preds = %read_push_options.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.bn ] ; 3 uses
  %.013.i = phi ptr [ %i.gc, %.preheader.i ], [ %i.gi, %bb.bn ]
  %i.gf = call ptr @find_commit_header(ptr noundef nonnull %.013.i, ptr noundef nonnull @.str.81, ptr noundef nonnull %i.c) #20 ; 3 uses
  %.not16.i = icmp eq ptr %i.gf, null
  br i1 %.not16.i, label %check_cert_push_options.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %27 = load i64, ptr %i.ge, align 8, !tbaa !59
  %28 = icmp ult i64 %27, %indvars.iv.next.i
  br i1 %28, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gg = load i64, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gj = load ptr, ptr %25, align 8, !tbaa !60
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %indvars.iv.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !62
  %i.gm = call i32 @xstrncmpz(ptr noundef %i.gl, ptr noundef nonnull %i.gf, i64 noundef %i.gg) #20
  %.not18.i = icmp eq i32 %i.gm, 0
  br i1 %.not18.i, label %bb.bl, label %.critedge, !llvm.loop !115

check_cert_push_options.exit:                     ; preds = %bb.bl
  %29 = load i64, ptr %i.ge, align 8, !tbaa !59
  %.not17.i = icmp eq i64 %29, %indvars.iv.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.preheader

.critedge:                                        ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge, %check_cert_push_options.exit
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0120 = phi ptr [ %i.go, %.lr.ph ], [ %i.fv, %.lr.ph.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0120, i64 8
  store ptr @.str.13, ptr %i.gn, align 8, !tbaa !16
  %i.go = load ptr, ptr %.0120, align 8, !tbaa !46 ; 2 uses
  %.not42 = icmp eq ptr %i.go, null
  br i1 %.not42, label %.loopexit, label %.lr.ph, !llvm.loop !116

.loopexit:                                        ; preds = %.lr.ph, %check_cert_push_options.exit.thread, %check_cert_push_options.exit
  call void @prepare_shallow_info(ptr noundef nonnull %22, ptr noundef nonnull %20) #20
  %i.gp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !70
  %i.gr = icmp ne i64 %i.gq, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = icmp ne i64 %i.gt, 0
  %or.cond6 = select i1 %i.gr, i1 true, i1 %i.gu
  br i1 %or.cond6, label %.preheader204, label %bb.bo

bb.bo:                                            ; preds = %.loopexit
  store i32 0, ptr @shallow_update, align 4, !tbaa !12
  br label %.preheader204

.preheader204:                                    ; preds = %bb.bo, %.loopexit
  br label %bb.bp

bb.bp:                                            ; preds = %.preheader204, %bb.bq
  %.06.i = phi ptr [ %i.hc, %bb.bq ], [ %i.fv, %.preheader204 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.06.i, i64 76 ; 2 uses
  %i.gw = load i128, ptr %i.gv, align 1
  %i.gx = getelementptr i8, ptr %i.gv, i64 16
  %i.gy = load i128, ptr %i.gx, align 1
  %i.gz = or i128 %i.gw, %i.gy
  %i.ha = icmp ne i128 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %.not.i.not.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.not.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hc = load ptr, ptr %.06.i, align 8, !tbaa !46 ; 2 uses
  %.not.i53 = icmp eq ptr %i.hc, null
  br i1 %.not.i53, label %delete_only.exit.thread100, label %bb.bp, !llvm.loop !117

delete_only.exit.thread100:                       ; preds = %bb.bq
  store i32 2, ptr @use_keepalive, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  br label %bb.cu

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %.b.i54 = load i1, ptr @use_sideband, align 4
  br i1 %.b.i54, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hd = call fastcc ptr @unpack(i32 noundef 0, ptr noundef nonnull readonly %22)
  br label %unpack_with_sideband.exit

bb.bt:                                            ; preds = %bb.br
  store i32 1, ptr @use_keepalive, align 4, !tbaa !12
  %i.he = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.he, i8 0, i64 40, i1 false)
  store ptr @copy_to_sideband, ptr %15, align 8, !tbaa !72
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store i32 -1, ptr %i.hf, align 8, !tbaa !73
  %i.hg = call i32 @start_async(ptr noundef nonnull %15) #20
  %.not.i55 = icmp eq i32 %i.hg, 0
  br i1 %.not.i55, label %bb.bu, label %unpack_with_sideband.exit

bb.bu:                                            ; preds = %bb.bt
  %i.hh = load i32, ptr %i.hf, align 8, !tbaa !73
  %i.hi = call fastcc ptr @unpack(i32 noundef %i.hh, ptr noundef nonnull readonly %22)
  %i.hj = call i32 @finish_async(ptr noundef nonnull %15) #20 ; 0 uses
  br label %unpack_with_sideband.exit

unpack_with_sideband.exit:                        ; preds = %bb.bs, %bb.bt, %bb.bu
  %.0.i = phi ptr [ %i.hd, %bb.bs ], [ %i.hi, %bb.bu ], [ null, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @remove_nonexistent_theirs_shallow(ptr noundef nonnull %22) #20
  %i.hk = load i64, ptr %i.gp, align 8, !tbaa !70
  %.not.i56 = icmp eq i64 %i.hk, 0
  %i.hl = load i64, ptr %i.gs, align 8
  %.not26.i = icmp eq i64 %i.hl, 0
  %or.cond107 = select i1 %.not.i56, i1 %.not26.i, i1 false
  br i1 %or.cond107, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %unpack_with_sideband.exit
  store i32 0, ptr @shallow_update, align 4, !tbaa !12
  br label %delete_only.exit

bb.bw:                                            ; preds = %unpack_with_sideband.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.bw
  %.037.i = phi ptr [ %i.fv, %bb.bw ], [ %i.hy, %bb.bz ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.037.i, i64 76 ; 3 uses
  %i.ho = load i128, ptr %i.hn, align 1
  %i.hp = getelementptr i8, ptr %i.hn, i64 16
  %i.hq = load i128, ptr %i.hp, align 1
  %i.hr = or i128 %i.ho, %i.hq
  %i.hs = icmp ne i128 %i.hr, 0
  %i.ht = zext i1 %i.hs to i32
  %.not.i.not.i58 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.not.i58, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @oid_array_append(ptr noundef nonnull %21, ptr noundef nonnull %i.hn) #20
  %i.hu = load i64, ptr %i.hm, align 8, !tbaa !75
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = add i32 %i.hv, -1
  %i.hx = getelementptr inbounds nuw i8, ptr %.037.i, i64 36
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !12
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.hy = load ptr, ptr %.037.i, align 8, !tbaa !46 ; 2 uses
  %.not27.i = icmp eq ptr %i.hy, null
  br i1 %.not27.i, label %bb.ca, label %bb.bx, !llvm.loop !118

bb.ca:                                            ; preds = %bb.bz
  %i.hz = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  store ptr %21, ptr %i.hz, align 8, !tbaa !159
  %i.ia = load i32, ptr @shallow_update, align 4, !tbaa !12
  %.not28.i = icmp eq i32 %i.ia, 0
  %i.ib = load i64, ptr %i.hm, align 8, !tbaa !75
  %.fr.i.i = freeze i64 %i.ib                     ; 4 uses
  br i1 %.not28.i, label %bb.cn, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ic = add i64 %.fr.i.i, 31
  %i.id = lshr i64 %i.ic, 5                       ; 2 uses
  %i.ie = trunc i64 %i.id to i32
  %i.if = load ptr, ptr %22, align 8, !tbaa !76
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !75 ; 3 uses
  %mul.ov.i.i.i = icmp ugt i64 %i.ih, 2305843009213693951
  br i1 %mul.ov.i.i.i, label %bb.cc, label %st_mult.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @die(ptr noundef nonnull @.str.106, i64 noundef 8, i64 noundef %i.ih) #21
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.cb
  %i.ii = shl nuw i64 %i.ih, 3
  %i.ij = call ptr @xmalloc(i64 noundef %i.ii) #20 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !77
  call void @assign_shallow_commits_to_refs(ptr noundef nonnull %22, ptr noundef %i.ij, ptr noundef null) #20
  %i.il = load ptr, ptr %22, align 8, !tbaa !76
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !75
  %i.io = call ptr @xcalloc(i64 noundef %i.in, i64 noundef 4) #20
  %i.ip = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 5 uses
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !160
  %i.iq = load ptr, ptr %22, align 8, !tbaa !76
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !75
  %i.it = call ptr @xcalloc(i64 noundef %i.is, i64 noundef 4) #20
  %i.iu = getelementptr inbounds nuw i8, ptr %22, i64 64
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !161
  %i.iv = load ptr, ptr %i.hz, align 8, !tbaa !159
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !75
  %i.iy = call ptr @xcalloc(i64 noundef %i.ix, i64 noundef 4) #20 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %22, i64 72
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !78
  %i.ja = load i64, ptr %i.gp, align 8, !tbaa !70 ; 4 uses
  %.not56.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not56.i.i, label %.preheader48.i.i, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %st_mult.exit.i.i
  %i.jb = load ptr, ptr %i.ip, align 8, !tbaa !160 ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !162 ; 5 uses
  %xtraiter = and i64 %i.ja, 3                    ; 3 uses
  %i.je = icmp ult i64 %i.ja, 4
  br i1 %i.je, label %.epil.preheader, label %.lr.ph.i.i59.new

.lr.ph.i.i59.new:                                 ; preds = %.lr.ph.i.i59
  %unroll_iter = and i64 %i.ja, -4
  br label %bb.cl

.preheader48.i.i.loopexit.unr-lcssa:              ; preds = %bb.cl
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader48.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader48.i.i.loopexit.unr-lcssa, %.lr.ph.i.i59
end_hunk_0
