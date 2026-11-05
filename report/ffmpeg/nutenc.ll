Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/nutenc?download=true
inline.NumInlined: 115
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@write_headers:bb.a
bb.az:                                            ; preds = %bb.ay
  %.not.i.i227.i.1 = icmp ult i32 %i.pa, 16384
  br i1 %.not.i.i227.i.1, label %get_v_length.exit.preheader.i229.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i.i227.i.2 = icmp ult i32 %i.pa, 2097152
  br i1 %.not.i.i227.i.2, label %get_v_length.exit.preheader.i229.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i227.i.3 = icmp ult i32 %i.pa, 268435456
  %spec.select284 = select i1 %.not.i.i227.i.3, i64 4, i64 5
  br label %get_v_length.exit.preheader.i229.i

get_v_length.exit.preheader.i229.i:               ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %indvars.iv.i224.i.lcssa = phi i64 [ 1, %bb.ay ], [ 2, %bb.az ], [ 3, %bb.ba ], [ %spec.select284, %bb.bb ] ; 2 uses
  %i.pg = and i64 %indvars.iv.i224.i.lcssa, 4294967294
  %.not276.i = icmp eq i64 %i.pg, 0
  br i1 %.not276.i, label %put_v.exit233.i, label %get_v_length.exit.i230.i

get_v_length.exit.i230.i:                         ; preds = %get_v_length.exit.preheader.i229.i, %get_v_length.exit.i230.i
  %indvars.iv9.i231.i = phi i64 [ %indvars.iv.next10.i232.i, %get_v_length.exit.i230.i ], [ %indvars.iv.i224.i.lcssa, %get_v_length.exit.preheader.i229.i ] ; 2 uses
  %indvars.iv.next10.i232.i = add nsw i64 %indvars.iv9.i231.i, -1 ; 2 uses
  %i.ph = mul nuw nsw i64 %indvars.iv.next10.i232.i, 7
  %i.pi = lshr i64 %i.pf, %i.ph
  %i.pj = trunc nuw nsw i64 %i.pi to i32
  %i.pk = and i32 %i.pj, 127
  %i.pl = or disjoint i32 %i.pk, 128
  call void @avio_w8(ptr noundef %i.jj, i32 noundef %i.pl) #13
  %i.pm = icmp sgt i64 %indvars.iv9.i231.i, 2
  br i1 %i.pm, label %get_v_length.exit.i230.i, label %put_v.exit233.i, !llvm.loop !1

put_v.exit233.i:                                  ; preds = %get_v_length.exit.i230.i, %get_v_length.exit.preheader.i229.i
  %i.pn = and i32 %i.pa, 127
  call void @avio_w8(ptr noundef %i.jj, i32 noundef %i.pn) #13
  %i.po = load i32, ptr %i.pc, align 4, !tbaa !173 ; 2 uses
  %i.pp = sext i32 %i.po to i64                   ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %put_v.exit233.i
  %indvars.iv.i234.i = phi i64 [ %indvars.iv.next.i238.i, %bb.bc ], [ 1, %put_v.exit233.i ] ; 3 uses
  %.03.i.i235.i = phi i64 [ %i.pq, %bb.bc ], [ %i.pp, %put_v.exit233.i ]
  %i.pq = lshr i64 %.03.i.i235.i, 7               ; 2 uses
  %.not.i.i237.i = icmp eq i64 %i.pq, 0
  %indvars.iv.next.i238.i = add nuw nsw i64 %indvars.iv.i234.i, 1
  br i1 %.not.i.i237.i, label %get_v_length.exit.preheader.i239.i, label %bb.bc, !llvm.loop !0

get_v_length.exit.preheader.i239.i:               ; preds = %bb.bc
  %i.pr = and i64 %indvars.iv.i234.i, 4294967294
  %.not277.i = icmp eq i64 %i.pr, 0
  br i1 %.not277.i, label %put_v.exit243.i, label %get_v_length.exit.i240.i

get_v_length.exit.i240.i:                         ; preds = %get_v_length.exit.preheader.i239.i, %get_v_length.exit.i240.i
  %indvars.iv9.i241.i = phi i64 [ %indvars.iv.next10.i242.i, %get_v_length.exit.i240.i ], [ %indvars.iv.i234.i, %get_v_length.exit.preheader.i239.i ] ; 2 uses
  %indvars.iv.next10.i242.i = add nsw i64 %indvars.iv9.i241.i, -1 ; 2 uses
  %i.ps = mul nuw nsw i64 %indvars.iv.next10.i242.i, 7
  %i.pt = lshr i64 %i.pp, %i.ps
  %i.pu = trunc i64 %i.pt to i32
  %i.pv = and i32 %i.pu, 127
  %i.pw = or disjoint i32 %i.pv, 128
  call void @avio_w8(ptr noundef %i.jj, i32 noundef %i.pw) #13
  %i.px = icmp sgt i64 %indvars.iv9.i241.i, 2
  br i1 %i.px, label %get_v_length.exit.i240.i, label %put_v.exit243.i, !llvm.loop !1

put_v.exit243.i:                                  ; preds = %get_v_length.exit.i240.i, %get_v_length.exit.preheader.i239.i
  %i.py = and i32 %i.po, 127
  br label %put_v.exit253.i

put_v.exit253.i:                                  ; preds = %put_v.exit243.i, %put_v.exit213.i
  %.sink280.i = phi i32 [ 0, %put_v.exit213.i ], [ %i.py, %put_v.exit243.i ]
  call void @avio_w8(ptr noundef %i.jj, i32 noundef %.sink280.i) #13
  br label %.sink.split

write_streamheader.exit:                          ; preds = %put_v.exit103.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.jx) #13
  br label %.thread

.sink.split:                                      ; preds = %put_v.exit183.i, %put_v.exit253.i
  %.sink = phi i32 [ 0, %put_v.exit253.i ], [ %i.oa, %put_v.exit183.i ]
  call void @avio_w8(ptr noundef %i.jj, i32 noundef %.sink) #13
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split, %put_v.exit153.i
  %i.pz = load ptr, ptr %i.h, align 8, !tbaa !86
  call fastcc void @put_packet(ptr noundef %1, ptr noundef %i.pz, i64 noundef 5643873726143592923)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qa = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 44
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !38
  %i.qd = zext i32 %i.qc to i64
  %i.qe = icmp samesign ult i64 %indvars.iv.next, %i.qd
  br i1 %i.qe, label %.lr.ph, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.bd, %write_mainheader.exit
  %.lcssa111 = phi ptr [ %i.jf, %write_mainheader.exit ], [ %i.qa, %bb.bd ] ; 2 uses
  %i.qf = load ptr, ptr %i.h, align 8, !tbaa !86  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store ptr null, ptr %i.g, align 8, !tbaa !74
  %i.qg = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.f) #13
  %i.qh = icmp slt i32 %i.qg, 0
  br i1 %i.qh, label %write_globalinfo.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge
  %i.qi = call i32 @ff_standardize_creation_time(ptr noundef nonnull %.lcssa111) #13 ; 0 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.lcssa111, i64 192 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !174
  %i.ql = call ptr @av_dict_iterate(ptr noundef %i.qk, ptr noundef null) #13 ; 2 uses
  %.not1.i = icmp eq ptr %i.ql, null
  br i1 %.not1.i, label %put_v.exit.i59, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.be, %.lr.ph.i57
  %i.qm = phi ptr [ %i.qt, %.lr.ph.i57 ], [ %i.ql, %bb.be ] ; 3 uses
  %.02.i = phi i32 [ %i.qr, %.lr.ph.i57 ], [ 0, %bb.be ]
  %i.qn = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.qo = load ptr, ptr %i.qm, align 8, !tbaa !176
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !177
  call fastcc void @add_info(ptr noundef %i.qn, ptr noundef %i.qo, ptr noundef %i.qq)
  %i.qr = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.qs = load ptr, ptr %i.qj, align 8, !tbaa !174
  %i.qt = call ptr @av_dict_iterate(ptr noundef %i.qs, ptr noundef nonnull %i.qm) #13 ; 2 uses
  %.not.i58 = icmp eq ptr %i.qt, null
  br i1 %.not.i58, label %put_v.exit.i59, label %.lr.ph.i57, !llvm.loop !159

put_v.exit.i59:                                   ; preds = %.lr.ph.i57, %bb.be
  %.0.lcssa.i = phi i32 [ 0, %bb.be ], [ %i.qr, %.lr.ph.i57 ] ; 6 uses
  call void @avio_w8(ptr noundef %i.qf, i32 noundef 0) #13
  call void @avio_w8(ptr noundef %i.qf, i32 noundef 0) #13
  call void @avio_w8(ptr noundef %i.qf, i32 noundef 0) #13
  call void @avio_w8(ptr noundef %i.qf, i32 noundef 0) #13
  %i.qu = zext nneg i32 %.0.lcssa.i to i64
  %.not.i.i54.i = icmp ult i32 %.0.lcssa.i, 128
  br i1 %.not.i.i54.i, label %get_v_length.exit.preheader.i56.i, label %bb.bf

bb.bf:                                            ; preds = %put_v.exit.i59
  %.not.i.i54.i.1 = icmp ult i32 %.0.lcssa.i, 16384
  br i1 %.not.i.i54.i.1, label %get_v_length.exit.preheader.i56.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i54.i.2 = icmp ult i32 %.0.lcssa.i, 2097152
  br i1 %.not.i.i54.i.2, label %get_v_length.exit.preheader.i56.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i54.i.3 = icmp ult i32 %.0.lcssa.i, 268435456
  %spec.select285 = select i1 %.not.i.i54.i.3, i64 4, i64 5
  br label %get_v_length.exit.preheader.i56.i

get_v_length.exit.preheader.i56.i:                ; preds = %bb.bh, %bb.bg, %bb.bf, %put_v.exit.i59
  %indvars.iv.i51.i.lcssa = phi i64 [ 1, %put_v.exit.i59 ], [ 2, %bb.bf ], [ 3, %bb.bg ], [ %spec.select285, %bb.bh ] ; 2 uses
  %i.qv = and i64 %indvars.iv.i51.i.lcssa, 4294967294
  %.not5.i = icmp eq i64 %i.qv, 0
  br i1 %.not5.i, label %put_v.exit60.i, label %get_v_length.exit.i57.i

get_v_length.exit.i57.i:                          ; preds = %get_v_length.exit.preheader.i56.i, %get_v_length.exit.i57.i
  %indvars.iv9.i58.i = phi i64 [ %indvars.iv.next10.i59.i, %get_v_length.exit.i57.i ], [ %indvars.iv.i51.i.lcssa, %get_v_length.exit.preheader.i56.i ] ; 2 uses
  %indvars.iv.next10.i59.i = add nsw i64 %indvars.iv9.i58.i, -1 ; 2 uses
  %i.qw = mul nuw nsw i64 %indvars.iv.next10.i59.i, 7
  %i.qx = lshr i64 %i.qu, %i.qw
  %i.qy = trunc nuw nsw i64 %i.qx to i32
  %i.qz = and i32 %i.qy, 127
  %i.ra = or disjoint i32 %i.qz, 128
  call void @avio_w8(ptr noundef %i.qf, i32 noundef %i.ra) #13
  %i.rb = icmp sgt i64 %indvars.iv9.i58.i, 2
  br i1 %i.rb, label %get_v_length.exit.i57.i, label %put_v.exit60.i, !llvm.loop !1

put_v.exit60.i:                                   ; preds = %get_v_length.exit.i57.i, %get_v_length.exit.preheader.i56.i
  %i.rc = and i32 %.0.lcssa.i, 127
  call void @avio_w8(ptr noundef %i.qf, i32 noundef %i.rc) #13
  %i.rd = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.re = call i32 @avio_close_dyn_buf(ptr noundef %i.rd, ptr noundef nonnull %i.g) #13
  %i.rf = load ptr, ptr %i.g, align 8, !tbaa !74
  call void @avio_write(ptr noundef %i.qf, ptr noundef %i.rf, i32 noundef %i.re) #13
  %i.rg = load ptr, ptr %i.g, align 8, !tbaa !74
  call void @av_free(ptr noundef %i.rg) #13
  br label %write_globalinfo.exit

write_globalinfo.exit:                            ; preds = %._crit_edge, %put_v.exit60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %i.rh = load ptr, ptr %i.h, align 8, !tbaa !86
  call fastcc void @put_packet(ptr noundef %1, ptr noundef %i.rh, i64 noundef 5641228474469759608)
  %i.ri = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 44
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !38
  %.not133 = icmp eq i32 %i.rk, 0
  br i1 %.not133, label %.preheader, label %.lr.ph129

.preheader:                                       ; preds = %bb.ca, %write_globalinfo.exit
  %i.rl = phi ptr [ %i.ri, %write_globalinfo.exit ], [ %i.vh, %bb.ca ] ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 72
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !40
  %.not134 = icmp eq i32 %i.rn, 0
  br i1 %.not134, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 4256
  %i.rp = getelementptr i8, ptr %i.j, i64 4296
  br label %bb.cb

.lr.ph129:                                        ; preds = %write_globalinfo.exit, %bb.ca
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.pre-phi, %bb.ca ], [ 0, %write_globalinfo.exit ] ; 7 uses
  %i.rq = phi ptr [ %i.vh, %bb.ca ], [ %i.ri, %write_globalinfo.exit ]
  %i.rr = load ptr, ptr %i.h, align 8, !tbaa !86  ; 8 uses
  %i.rs = getelementptr i8, ptr %i.rq, i64 48
  %.val46.val = load ptr, ptr %i.rs, align 8, !tbaa !45
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.val46.val, i64 %indvars.iv159
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !47 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !74
  %i.rv = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.c) #13 ; 2 uses
  %i.rw = icmp slt i32 %i.rv, 0
  br i1 %i.rw, label %write_streaminfo.exit.thread, label %.preheader1.i

write_streaminfo.exit.thread:                     ; preds = %.lr.ph129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread

.preheader1.i:                                    ; preds = %.lr.ph129
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 80 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !178
  %i.rz = call ptr @av_dict_iterate(ptr noundef %i.ry, ptr noundef null) #13 ; 2 uses
  %.not2.i = icmp eq ptr %i.rz, null
  br i1 %.not2.i, label %.preheader.i, label %.lr.ph.i60

.preheader.i:                                     ; preds = %add_info.exit, %.preheader1.i
  %.035.lcssa.i = phi i32 [ 0, %.preheader1.i ], [ %i.td, %add_info.exit ] ; 2 uses
  %i.sa = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_nut_dispositions, i64 12), align 4, !tbaa !180 ; 2 uses
  %.not434.i = icmp eq i32 %i.sa, 0
  br i1 %.not434.i, label %._crit_edge.i65, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.preheader.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  br label %bb.bk

.lr.ph.i60:                                       ; preds = %.preheader1.i, %add_info.exit
  %i.sc = phi ptr [ %i.tf, %add_info.exit ], [ %i.rz, %.preheader1.i ] ; 3 uses
  %.0353.i = phi i32 [ %i.td, %add_info.exit ], [ 0, %.preheader1.i ]
  %i.sd = load ptr, ptr %i.c, align 8, !tbaa !86  ; 7 uses
  %i.se = load ptr, ptr %i.sc, align 8, !tbaa !176 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !177 ; 2 uses
  %i.sh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.se) #16 ; 3 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i60
  %indvars.iv.i.i.i91 = phi i64 [ %indvars.iv.next.i.i.i94, %bb.bi ], [ 1, %.lr.ph.i60 ] ; 3 uses
  %.03.i.i.i.i92 = phi i64 [ %i.si, %bb.bi ], [ %i.sh, %.lr.ph.i60 ]
  %i.si = lshr i64 %.03.i.i.i.i92, 7              ; 2 uses
  %.not.i.i.i.i93 = icmp eq i64 %i.si, 0
  %indvars.iv.next.i.i.i94 = add nuw nsw i64 %indvars.iv.i.i.i91, 1
  br i1 %.not.i.i.i.i93, label %get_v_length.exit.preheader.i.i.i95, label %bb.bi, !llvm.loop !0

get_v_length.exit.preheader.i.i.i95:              ; preds = %bb.bi
  %i.sj = and i64 %indvars.iv.i.i.i91, 4294967294
  %.not.i.i96 = icmp eq i64 %i.sj, 0
  br i1 %.not.i.i96, label %put_str.exit.i, label %get_v_length.exit.i.i.i97

get_v_length.exit.i.i.i97:                        ; preds = %get_v_length.exit.preheader.i.i.i95, %get_v_length.exit.i.i.i97
  %indvars.iv9.i.i.i98 = phi i64 [ %indvars.iv.next10.i.i.i99, %get_v_length.exit.i.i.i97 ], [ %indvars.iv.i.i.i91, %get_v_length.exit.preheader.i.i.i95 ] ; 2 uses
  %indvars.iv.next10.i.i.i99 = add nsw i64 %indvars.iv9.i.i.i98, -1 ; 2 uses
  %i.sk = mul nuw nsw i64 %indvars.iv.next10.i.i.i99, 7
  %i.sl = lshr i64 %i.sh, %i.sk
  %i.sm = trunc i64 %i.sl to i32
  %i.sn = and i32 %i.sm, 127
  %i.so = or disjoint i32 %i.sn, 128
  call void @avio_w8(ptr noundef %i.sd, i32 noundef %i.so) #13
  %i.sp = icmp sgt i64 %indvars.iv9.i.i.i98, 2
  br i1 %i.sp, label %get_v_length.exit.i.i.i97, label %put_str.exit.i, !llvm.loop !1

put_str.exit.i:                                   ; preds = %get_v_length.exit.i.i.i97, %get_v_length.exit.preheader.i.i.i95
  %i.sq = trunc i64 %i.sh to i32                  ; 2 uses
  %i.sr = and i32 %i.sq, 127
  call void @avio_w8(ptr noundef %i.sd, i32 noundef %i.sr) #13
  call void @avio_write(ptr noundef %i.sd, ptr noundef nonnull %i.se, i32 noundef %i.sq) #13
  call void @avio_w8(ptr noundef %i.sd, i32 noundef 2) #13
  %i.ss = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sg) #16 ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %put_str.exit.i
  %indvars.iv.i.i14.i = phi i64 [ %indvars.iv.next.i.i17.i, %bb.bj ], [ 1, %put_str.exit.i ] ; 3 uses
  %.03.i.i.i15.i = phi i64 [ %i.st, %bb.bj ], [ %i.ss, %put_str.exit.i ]
  %i.st = lshr i64 %.03.i.i.i15.i, 7              ; 2 uses
  %.not.i.i.i16.i = icmp eq i64 %i.st, 0
  %indvars.iv.next.i.i17.i = add nuw nsw i64 %indvars.iv.i.i14.i, 1
  br i1 %.not.i.i.i16.i, label %get_v_length.exit.preheader.i.i18.i, label %bb.bj, !llvm.loop !0

get_v_length.exit.preheader.i.i18.i:              ; preds = %bb.bj
  %i.su = and i64 %indvars.iv.i.i14.i, 4294967294
  %.not.i19.i = icmp eq i64 %i.su, 0
  br i1 %.not.i19.i, label %add_info.exit, label %get_v_length.exit.i.i20.i

get_v_length.exit.i.i20.i:                        ; preds = %get_v_length.exit.preheader.i.i18.i, %get_v_length.exit.i.i20.i
  %indvars.iv9.i.i21.i = phi i64 [ %indvars.iv.next10.i.i22.i, %get_v_length.exit.i.i20.i ], [ %indvars.iv.i.i14.i, %get_v_length.exit.preheader.i.i18.i ] ; 2 uses
  %indvars.iv.next10.i.i22.i = add nsw i64 %indvars.iv9.i.i21.i, -1 ; 2 uses
  %i.sv = mul nuw nsw i64 %indvars.iv.next10.i.i22.i, 7
  %i.sw = lshr i64 %i.ss, %i.sv
  %i.sx = trunc i64 %i.sw to i32
  %i.sy = and i32 %i.sx, 127
  %i.sz = or disjoint i32 %i.sy, 128
  call void @avio_w8(ptr noundef %i.sd, i32 noundef %i.sz) #13
  %i.ta = icmp sgt i64 %indvars.iv9.i.i21.i, 2
  br i1 %i.ta, label %get_v_length.exit.i.i20.i, label %add_info.exit, !llvm.loop !1

add_info.exit:                                    ; preds = %get_v_length.exit.i.i20.i, %get_v_length.exit.preheader.i.i18.i
  %i.tb = trunc i64 %i.ss to i32                  ; 2 uses
  %i.tc = and i32 %i.tb, 127
  call void @avio_w8(ptr noundef %i.sd, i32 noundef %i.tc) #13
  call void @avio_write(ptr noundef %i.sd, ptr noundef nonnull %i.sg, i32 noundef %i.tb) #13
  %i.td = add nuw nsw i32 %.0353.i, 1             ; 2 uses
  %i.te = load ptr, ptr %i.rx, align 8, !tbaa !178
  %i.tf = call ptr @av_dict_iterate(ptr noundef %i.te, ptr noundef nonnull %i.sc) #13 ; 2 uses
  %.not.i61 = icmp eq ptr %i.tf, null
  br i1 %.not.i61, label %.preheader.i, label %.lr.ph.i60, !llvm.loop !160

bb.bk:                                            ; preds = %bb.bm, %.lr.ph7.i
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next.i64, %bb.bm ] ; 2 uses
  %i.tg = phi i32 [ %i.sa, %.lr.ph7.i ], [ %i.to, %bb.bm ]
  %.15.i = phi i32 [ %.035.lcssa.i, %.lr.ph7.i ], [ %.2.i63, %bb.bm ] ; 2 uses
  %i.th = load i32, ptr %i.sb, align 8, !tbaa !181
  %i.ti = and i32 %i.th, %i.tg
  %.not45.i = icmp eq i32 %i.ti, 0
  br i1 %.not45.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr @ff_nut_dispositions, i64 %indvars.iv.i62
  %i.tk = load ptr, ptr %i.c, align 8, !tbaa !86
  call fastcc void @add_info(ptr noundef %i.tk, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.tj)
  %i.tl = add nsw i32 %.15.i, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.2.i63 = phi i32 [ %i.tl, %bb.bl ], [ %.15.i, %bb.bk ] ; 2 uses
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %i.tm = getelementptr inbounds nuw [16 x i8], ptr @ff_nut_dispositions, i64 %indvars.iv.next.i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 12
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !180 ; 2 uses
  %.not43.i = icmp eq i32 %i.to, 0
  br i1 %.not43.i, label %._crit_edge.i65, label %bb.bk, !llvm.loop !161

._crit_edge.i65:                                  ; preds = %bb.bm, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.035.lcssa.i, %.preheader.i ], [ %.2.i63, %bb.bm ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !54
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !57
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %._crit_edge.i65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ru, i64 204
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !182 ; 2 uses
  %i.tv = icmp sgt i32 %i.tu, 0
  br i1 %i.tv, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ru, i64 208
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !183 ; 2 uses
  %i.ty = icmp sgt i32 %i.tx, 0
  br i1 %i.ty, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.tz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.23, i32 noundef %i.tu, i32 noundef %i.tx) #13 ; 0 uses
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ru, i64 88
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !184
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ru, i64 92
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !185
  %i.ue = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.23, i32 noundef %i.ub, i32 noundef %i.ud) #13 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.uf = load ptr, ptr %i.c, align 8, !tbaa !86
  call fastcc void @add_info(ptr noundef %i.uf, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.e)
  %i.ug = add nsw i32 %.1.lcssa.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.i65
  %.3.i66 = phi i32 [ %i.ug, %bb.br ], [ %.1.lcssa.i, %._crit_edge.i65 ] ; 5 uses
  %i.uh = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.ui = call i32 @avio_close_dyn_buf(ptr noundef %i.uh, ptr noundef nonnull %i.d) #13
  %.not44.i = icmp eq i32 %.3.i66, 0
  br i1 %.not44.i, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.uj = add nuw nsw i64 %indvars.iv159, 1       ; 3 uses
  %.not.i.i.i69 = icmp samesign ult i64 %indvars.iv159, 127
  br i1 %.not.i.i.i69, label %get_v_length.exit.preheader.i.i71, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i.i.i69.2.a = icmp samesign ult i64 %indvars.iv159, 16383
  br i1 %.not.i.i.i69.2.a, label %get_v_length.exit.preheader.i.i71, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not.i.i.i69.3.a = icmp samesign ult i64 %indvars.iv159, 2097151
  br i1 %.not.i.i.i69.3.a, label %get_v_length.exit.preheader.i.i71, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not.i.i.i69.4 = icmp samesign ult i64 %indvars.iv159, 268435455
  %spec.select286 = select i1 %.not.i.i.i69.4, i64 4, i64 5
  br label %get_v_length.exit.preheader.i.i71

get_v_length.exit.preheader.i.i71:                ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %indvars.iv.i.i67.lcssa = phi i64 [ 1, %bb.bt ], [ 2, %bb.bu ], [ 3, %bb.bv ], [ %spec.select286, %bb.bw ] ; 2 uses
  %2 = and i64 %indvars.iv.i.i67.lcssa, 4294967294
  %.not17.i = icmp eq i64 %2, 0
  br i1 %.not17.i, label %put_v.exit.i75, label %get_v_length.exit.i.i72

get_v_length.exit.i.i72:                          ; preds = %get_v_length.exit.preheader.i.i71, %get_v_length.exit.i.i72
  %indvars.iv9.i.i73 = phi i64 [ %indvars.iv.next10.i.i74, %get_v_length.exit.i.i72 ], [ %indvars.iv.i.i67.lcssa, %get_v_length.exit.preheader.i.i71 ] ; 2 uses
  %indvars.iv.next10.i.i74 = add nsw i64 %indvars.iv9.i.i73, -1 ; 2 uses
  %i.uk = mul nuw nsw i64 %indvars.iv.next10.i.i74, 7
  %i.ul = lshr i64 %i.uj, %i.uk
  %i.um = trunc nuw nsw i64 %i.ul to i32
  %i.un = and i32 %i.um, 127
  %i.uo = or disjoint i32 %i.un, 128
  call void @avio_w8(ptr noundef %i.rr, i32 noundef %i.uo) #13
  %i.up = icmp sgt i64 %indvars.iv9.i.i73, 2
  br i1 %i.up, label %get_v_length.exit.i.i72, label %put_v.exit.i75, !llvm.loop !1

put_v.exit.i75:                                   ; preds = %get_v_length.exit.i.i72, %get_v_length.exit.preheader.i.i71
  %i.uq = trunc nuw i64 %i.uj to i32
  %i.ur = and i32 %i.uq, 127
  call void @avio_w8(ptr noundef %i.rr, i32 noundef %i.ur) #13
  call void @avio_w8(ptr noundef %i.rr, i32 noundef 0) #13
  call void @avio_w8(ptr noundef %i.rr, i32 noundef 0) #13
  call void @avio_w8(ptr noundef %i.rr, i32 noundef 0) #13
  %i.us = sext i32 %.3.i66 to i64                 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %put_v.exit.i75
  %indvars.iv.i76.i = phi i64 [ %indvars.iv.next.i80.i, %bb.bx ], [ 1, %put_v.exit.i75 ] ; 3 uses
  %.03.i.i77.i = phi i64 [ %i.ut, %bb.bx ], [ %i.us, %put_v.exit.i75 ]
  %i.ut = lshr i64 %.03.i.i77.i, 7                ; 2 uses
  %.not.i.i79.i = icmp eq i64 %i.ut, 0
  %indvars.iv.next.i80.i = add nuw nsw i64 %indvars.iv.i76.i, 1
  br i1 %.not.i.i79.i, label %get_v_length.exit.preheader.i81.i, label %bb.bx, !llvm.loop !0

get_v_length.exit.preheader.i81.i:                ; preds = %bb.bx
  %i.uu = and i64 %indvars.iv.i76.i, 4294967294
  %.not18.i = icmp eq i64 %i.uu, 0
  br i1 %.not18.i, label %write_streaminfo.exit, label %get_v_length.exit.i82.i

get_v_length.exit.i82.i:                          ; preds = %get_v_length.exit.preheader.i81.i, %get_v_length.exit.i82.i
  %indvars.iv9.i83.i = phi i64 [ %indvars.iv.next10.i84.i, %get_v_length.exit.i82.i ], [ %indvars.iv.i76.i, %get_v_length.exit.preheader.i81.i ] ; 2 uses
  %indvars.iv.next10.i84.i = add nsw i64 %indvars.iv9.i83.i, -1 ; 2 uses
  %i.uv = mul nuw nsw i64 %indvars.iv.next10.i84.i, 7
  %i.uw = lshr i64 %i.us, %i.uv
  %i.ux = trunc i64 %i.uw to i32
  %i.uy = and i32 %i.ux, 127
  %i.uz = or disjoint i32 %i.uy, 128
  call void @avio_w8(ptr noundef %i.rr, i32 noundef %i.uz) #13
  %i.va = icmp sgt i64 %indvars.iv9.i83.i, 2
  br i1 %i.va, label %get_v_length.exit.i82.i, label %write_streaminfo.exit, !llvm.loop !1

write_streaminfo.exit:                            ; preds = %get_v_length.exit.i82.i, %get_v_length.exit.preheader.i81.i
  %i.vb = and i32 %.3.i66, 127
  call void @avio_w8(ptr noundef %i.rr, i32 noundef %i.vb) #13
  %i.vc = load ptr, ptr %i.d, align 8, !tbaa !74
  call void @avio_write(ptr noundef %i.rr, ptr noundef %i.vc, i32 noundef %i.ui) #13
  %i.vd = load ptr, ptr %i.d, align 8, !tbaa !74
  call void @av_free(ptr noundef %i.vd) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ve = icmp sgt i32 %.3.i66, 0
  br i1 %i.ve, label %bb.by, label %.thread

bb.by:                                            ; preds = %write_streaminfo.exit
  %i.vf = load ptr, ptr %i.h, align 8, !tbaa !86
  call fastcc void @put_packet(ptr noundef %1, ptr noundef %i.vf, i64 noundef 5641228474469759608)
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bs
  %i.vg = load ptr, ptr %i.d, align 8, !tbaa !74
  call void @av_free(ptr noundef %i.vg) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %.pre = add nuw nsw i64 %indvars.iv159, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %indvars.iv.next160.pre-phi = phi i64 [ %.pre, %bb.bz ], [ %i.uj, %bb.by ] ; 2 uses
  %i.vh = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 44
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !38
  %i.vk = zext i32 %i.vj to i64
  %i.vl = icmp samesign ult i64 %indvars.iv.next160.pre-phi, %i.vk
  br i1 %i.vl, label %.lr.ph129, label %.preheader, !llvm.loop !162

bb.cb:                                            ; preds = %.lr.ph131, %.loopexit
  %indvars.iv162 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next163, %.loopexit ] ; 4 uses
  %i.vm = phi ptr [ %i.rl, %.lr.ph131 ], [ %i.yq, %.loopexit ]
  %i.vn = load ptr, ptr %i.h, align 8, !tbaa !86  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !74
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 80
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !43
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv162
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !68 ; 3 uses
  %i.vs = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.vt = icmp slt i32 %i.vs, 0
  br i1 %i.vt, label %write_chapter.exit.thread, label %put_v.exit.i76

write_chapter.exit.thread:                        ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread

put_v.exit.i76:                                   ; preds = %bb.cb
  call void @avio_w8(ptr noundef %i.vn, i32 noundef 0) #13
  %i.vu = shl nuw nsw i64 %indvars.iv162, 1
  %i.vv = add nuw nsw i64 %i.vu, 2
  %i.vw = and i64 %i.vv, 4294967294
  %i.vx = add nsw i64 %i.vw, -1                   ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %put_v.exit.i76
  %indvars.iv.i.i.i78 = phi i64 [ %indvars.iv.next.i.i.i81, %bb.cc ], [ 1, %put_v.exit.i76 ] ; 3 uses
  %.03.i.i.i.i79 = phi i64 [ %i.vy, %bb.cc ], [ %i.vx, %put_v.exit.i76 ]
  %i.vy = lshr i64 %.03.i.i.i.i79, 7              ; 2 uses
  %.not.i.i.i.i80 = icmp eq i64 %i.vy, 0
  %indvars.iv.next.i.i.i81 = add nuw nsw i64 %indvars.iv.i.i.i78, 1
  br i1 %.not.i.i.i.i80, label %get_v_length.exit.preheader.i.i.i82, label %bb.cc, !llvm.loop !0

get_v_length.exit.preheader.i.i.i82:              ; preds = %bb.cc
  %i.vz = and i64 %indvars.iv.i.i.i78, 4294967294
  %.not.i.i83 = icmp eq i64 %i.vz, 0
  br i1 %.not.i.i83, label %put_s.exit.i, label %get_v_length.exit.i.i.i84

get_v_length.exit.i.i.i84:                        ; preds = %get_v_length.exit.preheader.i.i.i82, %get_v_length.exit.i.i.i84
  %indvars.iv9.i.i.i85 = phi i64 [ %indvars.iv.next10.i.i.i86, %get_v_length.exit.i.i.i84 ], [ %indvars.iv.i.i.i78, %get_v_length.exit.preheader.i.i.i82 ] ; 2 uses
  %indvars.iv.next10.i.i.i86 = add nsw i64 %indvars.iv9.i.i.i85, -1 ; 2 uses
  %i.wa = mul nuw nsw i64 %indvars.iv.next10.i.i.i86, 7
  %i.wb = lshr i64 %i.vx, %i.wa
  %i.wc = trunc nuw nsw i64 %i.wb to i32
  %i.wd = and i32 %i.wc, 127
  %i.we = or disjoint i32 %i.wd, 128
  call void @avio_w8(ptr noundef %i.vn, i32 noundef %i.we) #13
  %i.wf = icmp sgt i64 %indvars.iv9.i.i.i85, 2
  br i1 %i.wf, label %get_v_length.exit.i.i.i84, label %put_s.exit.i, !llvm.loop !1

put_s.exit.i:                                     ; preds = %get_v_length.exit.i.i.i84, %get_v_length.exit.preheader.i.i.i82
  %i.wg = trunc nuw i64 %i.vx to i32
  %i.wh = and i32 %i.wg, 127
  call void @avio_w8(ptr noundef %i.vn, i32 noundef %i.wh) #13
  %i.wi = load ptr, ptr %i.ro, align 8, !tbaa !41
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv162
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !70
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vr, i64 16 ; 2 uses
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !187
  %.val.i = load i32, ptr %i.ba, align 4, !tbaa !44
  %.val28.i = load ptr, ptr %i.rp, align 8, !tbaa !42
  %i.wn = zext i32 %.val.i to i64
  %i.wo = mul i64 %i.wm, %i.wn
  %i.wp = ptrtoint ptr %i.wk to i64
  %i.wq = ptrtoint ptr %.val28.i to i64
  %i.wr = sub i64 %i.wp, %i.wq
  %i.ws = ashr exact i64 %i.wr, 3
  %i.wt = add i64 %i.ws, %i.wo                    ; 3 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %put_s.exit.i
  %indvars.iv.i.i29.i = phi i64 [ %indvars.iv.next.i.i32.i, %bb.cd ], [ 1, %put_s.exit.i ] ; 3 uses
  %.03.i.i.i30.i = phi i64 [ %i.wu, %bb.cd ], [ %i.wt, %put_s.exit.i ]
  %i.wu = lshr i64 %.03.i.i.i30.i, 7              ; 2 uses
  %.not.i.i.i31.i = icmp eq i64 %i.wu, 0
  %indvars.iv.next.i.i32.i = add nuw nsw i64 %indvars.iv.i.i29.i, 1
  br i1 %.not.i.i.i31.i, label %get_v_length.exit.preheader.i.i33.i, label %bb.cd, !llvm.loop !0

get_v_length.exit.preheader.i.i33.i:              ; preds = %bb.cd
  %i.wv = and i64 %indvars.iv.i.i29.i, 4294967294
  %.not.i34.i = icmp eq i64 %i.wv, 0
  br i1 %.not.i34.i, label %put_tt.exit.i, label %get_v_length.exit.i.i35.i

get_v_length.exit.i.i35.i:                        ; preds = %get_v_length.exit.preheader.i.i33.i, %get_v_length.exit.i.i35.i
  %indvars.iv9.i.i36.i = phi i64 [ %indvars.iv.next10.i.i37.i, %get_v_length.exit.i.i35.i ], [ %indvars.iv.i.i29.i, %get_v_length.exit.preheader.i.i33.i ] ; 2 uses
  %indvars.iv.next10.i.i37.i = add nsw i64 %indvars.iv9.i.i36.i, -1 ; 2 uses
  %i.ww = mul nuw nsw i64 %indvars.iv.next10.i.i37.i, 7
  %i.wx = lshr i64 %i.wt, %i.ww
  %i.wy = trunc i64 %i.wx to i32
  %i.wz = and i32 %i.wy, 127
  %i.xa = or disjoint i32 %i.wz, 128
  call void @avio_w8(ptr noundef %i.vn, i32 noundef %i.xa) #13
  %i.xb = icmp sgt i64 %indvars.iv9.i.i36.i, 2
  br i1 %i.xb, label %get_v_length.exit.i.i35.i, label %put_tt.exit.i, !llvm.loop !1

put_tt.exit.i:                                    ; preds = %get_v_length.exit.i.i35.i, %get_v_length.exit.preheader.i.i33.i
  %i.xc = trunc i64 %i.wt to i32
  %i.xd = and i32 %i.xc, 127
  call void @avio_w8(ptr noundef %i.vn, i32 noundef %i.xd) #13
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !188
  %i.xg = load i64, ptr %i.wl, align 8, !tbaa !187
  %i.xh = sub nsw i64 %i.xf, %i.xg                ; 3 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %put_tt.exit.i
  %indvars.iv.i38.i = phi i64 [ %indvars.iv.next.i42.i, %bb.ce ], [ 1, %put_tt.exit.i ] ; 3 uses
  %.03.i.i39.i = phi i64 [ %i.xi, %bb.ce ], [ %i.xh, %put_tt.exit.i ]
  %i.xi = lshr i64 %.03.i.i39.i, 7                ; 2 uses
  %.not.i.i41.i = icmp eq i64 %i.xi, 0
  %indvars.iv.next.i42.i = add nuw nsw i64 %indvars.iv.i38.i, 1
  br i1 %.not.i.i41.i, label %get_v_length.exit.preheader.i43.i, label %bb.ce, !llvm.loop !0

get_v_length.exit.preheader.i43.i:                ; preds = %bb.ce
  %i.xj = and i64 %indvars.iv.i38.i, 4294967294
  %.not63.i = icmp eq i64 %i.xj, 0
  br i1 %.not63.i, label %put_v.exit47.i, label %get_v_length.exit.i44.i

get_v_length.exit.i44.i:                          ; preds = %get_v_length.exit.preheader.i43.i, %get_v_length.exit.i44.i
  %indvars.iv9.i45.i = phi i64 [ %indvars.iv.next10.i46.i, %get_v_length.exit.i44.i ], [ %indvars.iv.i38.i, %get_v_length.exit.preheader.i43.i ] ; 2 uses
  %indvars.iv.next10.i46.i = add nsw i64 %indvars.iv9.i45.i, -1 ; 2 uses
  %i.xk = mul nuw nsw i64 %indvars.iv.next10.i46.i, 7
  %i.xl = lshr i64 %i.xh, %i.xk
  %i.xm = trunc i64 %i.xl to i32
  %i.xn = and i32 %i.xm, 127
  %i.xo = or disjoint i32 %i.xn, 128
  call void @avio_w8(ptr noundef %i.vn, i32 noundef %i.xo) #13
  %i.xp = icmp sgt i64 %indvars.iv9.i45.i, 2
  br i1 %i.xp, label %get_v_length.exit.i44.i, label %put_v.exit47.i, !llvm.loop !1
end_hunk_0
