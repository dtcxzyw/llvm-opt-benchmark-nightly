Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/addr2line?download=true
inline.NumInlined: 199
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fill_lines:bb.a
  %i.nf = zext i32 %i.ne to i64
  br label %read_addr.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.ng = getelementptr [8 x i8], ptr %i.nc, i64 %.sroa.0.0.i
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !43
  br label %read_addr.exit.i

read_addr.exit.i:                                 ; preds = %bb.bk, %bb.bj
  %.0.i98.i = phi i64 [ %i.nf, %bb.bj ], [ %i.nh, %bb.bk ]
  store i64 %.0.i98.i, ptr %i.ek, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.bl

.critedge.i:                                      ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %di_skip_records.exit.i

select.unfold108.i:                               ; preds = %uleb128.exit21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.bl

di_skip_records.exit.i:                           ; preds = %bb.aw, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %.thread367

bb.bl:                                            ; preds = %select.unfold108.i, %read_addr.exit.i, %bb.bg, %bb.bf, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.ni = load ptr, ptr %19, align 8, !tbaa !47   ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 168
  %.val.i264 = load ptr, ptr %i.nj, align 8, !tbaa !121 ; 4 uses
  %.not.i.i265 = icmp eq ptr %.val.i264, null
  br i1 %.not.i.i265, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nk = load i32, ptr %.val.i264, align 4, !tbaa !10
  %i.nl = icmp eq i32 %i.nk, -1
  %i.nm = select i1 %i.nl, i64 14, i64 6
  %i.nn = getelementptr i8, ptr %.val.i264, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !14  ; 4 uses
  switch i8 %i.no, label %addr_header_init.exit.i [
    i8 4, label %bb.bn
    i8 8, label %bb.bn
  ]

addr_header_init.exit.i:                          ; preds = %bb.bm
  %i.np = zext i8 %i.no to i32
  %i.nq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %i.np) #15 ; 0 uses
  br label %.thread367

bb.bn:                                            ; preds = %bb.bm, %bb.bm, %bb.bl
  %.sroa.9120.0.ph.i = phi i8 [ %i.no, %bb.bm ], [ %i.no, %bb.bm ], [ 0, %bb.bl ]
  %i.nr = getelementptr i8, ptr %i.ni, i64 192
  %.val77.i = load ptr, ptr %i.nr, align 8, !tbaa !122 ; 3 uses
  %.not.i84.i = icmp eq ptr %.val77.i, null
  br i1 %.not.i84.i, label %rnglists_header_init.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ns = load i32, ptr %.val77.i, align 4, !tbaa !10
  %i.nt = icmp ne i32 %i.ns, -1                   ; 2 uses
  %spec.select149.i = select i1 %i.nt, i64 4, i64 12
  %i.nu = getelementptr i8, ptr %.val77.i, i64 %spec.select149.i ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 2
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.nw, label %rnglists_header_init.exit.thread.i [
    i8 4, label %bb.bp
    i8 8, label %bb.bp
  ]

rnglists_header_init.exit.thread.i:               ; preds = %bb.bo
  %i.nx = zext i8 %i.nw to i32
  %i.ny = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %i.nx) #15 ; 0 uses
  br label %.thread367

bb.bp:                                            ; preds = %bb.bo, %bb.bo
  %i.nz = getelementptr i8, ptr %i.nu, i64 4
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !10
  %i.ob = icmp eq i32 %i.oa, 0
  br label %rnglists_header_init.exit.i

rnglists_header_init.exit.i:                      ; preds = %bb.bp, %bb.bn
  %.sroa.5.1.i = phi i1 [ false, %bb.bn ], [ %i.nt, %bb.bp ]
  %.sroa.9117.0.i = phi i1 [ true, %bb.bn ], [ %i.ob, %bb.bp ]
  %i.oc = load ptr, ptr %i.ec, align 8, !tbaa !67 ; 2 uses
  %i.od = load ptr, ptr %i.eo, align 8, !tbaa !112
  %i.oe = icmp ult ptr %i.oc, %i.od
  br i1 %i.oe, label %.lr.ph190.i, label %debug_info_read.exit

.lr.ph190.i:                                      ; preds = %rnglists_header_init.exit.i
  %i.of = icmp eq i8 %.sroa.9120.0.ph.i, 4
  br label %bb.bq

bb.bq:                                            ; preds = %.critedge.i291, %.lr.ph190.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %11, i8 0, i64 64, i1 false)
  %i.og = call fastcc ptr @di_read_die(ptr noundef nonnull %19, ptr noundef %10, ptr noundef %6)
  %.not.i266 = icmp eq ptr %i.og, null
  br i1 %.not.i266, label %.critedge.i291, label %bb.br, !llvm.loop !86

bb.br:                                            ; preds = %bb.bq
  %i.oh = load i32, ptr %i.fl, align 8, !tbaa !61
  switch i32 %i.oh, label %.preheader813 [
    i32 46, label %.preheader158.i.preheader
    i32 29, label %.preheader158.i.preheader
  ]

.preheader158.i.preheader:                        ; preds = %bb.br, %bb.br
  br label %.preheader158.i

.preheader813:                                    ; preds = %.thread.i, %bb.br
  br label %bb.bs

bb.bs:                                            ; preds = %.preheader813, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  %.promoted.i.i.i310 = load ptr, ptr %i.fd, align 8, !tbaa !42 ; 2 uses
  %i.oi = getelementptr i8, ptr %.promoted.i.i.i310, i64 1 ; 3 uses
  store ptr %i.oi, ptr %i.fd, align 8, !tbaa !42
  %i.oj = load i8, ptr %.promoted.i.i.i310, align 1, !tbaa !14 ; 3 uses
  %i.ok = icmp sgt i8 %i.oj, -1
  br i1 %i.ok, label %uleb128.exit.i.i316, label %.lr.ph.i.i.i311

.lr.ph.i.i.i311:                                  ; preds = %bb.bs, %.lr.ph.i.i.i311
  %i.ol = phi i8 [ %i.ot, %.lr.ph.i.i.i311 ], [ %i.oj, %bb.bs ]
  %i.om = phi ptr [ %i.os, %.lr.ph.i.i.i311 ], [ %i.oi, %bb.bs ] ; 2 uses
  %.01020.i.i.i312 = phi i32 [ %i.or, %.lr.ph.i.i.i311 ], [ 0, %bb.bs ] ; 2 uses
  %.01119.i.i.i313 = phi i64 [ %.112.i.i.i314, %.lr.ph.i.i.i311 ], [ 0, %bb.bs ]
  %i.on = and i8 %i.ol, 127
  %i.oo = zext nneg i8 %i.on to i32
  %i.op = shl i32 %i.oo, %.01020.i.i.i312
  %i.oq = sext i32 %i.op to i64
  %i.or = add i32 %.01020.i.i.i312, 7             ; 2 uses
  %.112.i.i.i314 = add i64 %.01119.i.i.i313, %i.oq ; 2 uses
  %i.os = getelementptr i8, ptr %i.om, i64 1      ; 3 uses
  store ptr %i.os, ptr %i.fd, align 8, !tbaa !42
  %i.ot = load i8, ptr %i.om, align 1, !tbaa !14  ; 3 uses
  %i.ou = icmp sgt i8 %i.ot, -1
  br i1 %i.ou, label %._crit_edge.loopexit.i.i.i315, label %.lr.ph.i.i.i311

._crit_edge.loopexit.i.i.i315:                    ; preds = %.lr.ph.i.i.i311
  %i.ov = zext nneg i32 %i.or to i64
  br label %uleb128.exit.i.i316

uleb128.exit.i.i316:                              ; preds = %._crit_edge.loopexit.i.i.i315, %bb.bs
  %.promoted.i11.i.i317 = phi ptr [ %i.oi, %bb.bs ], [ %i.os, %._crit_edge.loopexit.i.i.i315 ] ; 2 uses
  %.011.lcssa.i.i.i318 = phi i64 [ 0, %bb.bs ], [ %.112.i.i.i314, %._crit_edge.loopexit.i.i.i315 ]
  %.010.lcssa.i.i.i319 = phi i64 [ 0, %bb.bs ], [ %i.ov, %._crit_edge.loopexit.i.i.i315 ]
  %.lcssa.i.i.i320 = phi i8 [ %i.oj, %bb.bs ], [ %i.ot, %._crit_edge.loopexit.i.i.i315 ]
  %i.ow = zext nneg i8 %.lcssa.i.i.i320 to i64
  %i.ox = shl i64 %i.ow, %.010.lcssa.i.i.i319
  %i.oy = getelementptr i8, ptr %.promoted.i11.i.i317, i64 1 ; 2 uses
  store ptr %i.oy, ptr %i.fd, align 8, !tbaa !42
  %i.oz = load i8, ptr %.promoted.i11.i.i317, align 1, !tbaa !14 ; 3 uses
  %i.pa = icmp sgt i8 %i.oz, -1
  br i1 %i.pa, label %uleb128.exit21.i.i326, label %.lr.ph.i12.i.i321

.lr.ph.i12.i.i321:                                ; preds = %uleb128.exit.i.i316, %.lr.ph.i12.i.i321
  %i.pb = phi i8 [ %i.pj, %.lr.ph.i12.i.i321 ], [ %i.oz, %uleb128.exit.i.i316 ]
  %i.pc = phi ptr [ %i.pi, %.lr.ph.i12.i.i321 ], [ %i.oy, %uleb128.exit.i.i316 ] ; 2 uses
  %.01020.i13.i.i322 = phi i32 [ %i.ph, %.lr.ph.i12.i.i321 ], [ 0, %uleb128.exit.i.i316 ] ; 2 uses
  %.01119.i14.i.i323 = phi i64 [ %.112.i15.i.i324, %.lr.ph.i12.i.i321 ], [ 0, %uleb128.exit.i.i316 ]
  %i.pd = and i8 %i.pb, 127
  %i.pe = zext nneg i8 %i.pd to i32
  %i.pf = shl i32 %i.pe, %.01020.i13.i.i322
  %i.pg = sext i32 %i.pf to i64
  %i.ph = add i32 %.01020.i13.i.i322, 7           ; 2 uses
  %.112.i15.i.i324 = add i64 %.01119.i14.i.i323, %i.pg ; 2 uses
  %i.pi = getelementptr i8, ptr %i.pc, i64 1      ; 2 uses
  store ptr %i.pi, ptr %i.fd, align 8, !tbaa !42
  %i.pj = load i8, ptr %i.pc, align 1, !tbaa !14  ; 3 uses
  %i.pk = icmp sgt i8 %i.pj, -1
  br i1 %i.pk, label %._crit_edge.loopexit.i16.i.i325, label %.lr.ph.i12.i.i321

._crit_edge.loopexit.i16.i.i325:                  ; preds = %.lr.ph.i12.i.i321
  %i.pl = zext nneg i32 %i.ph to i64
  br label %uleb128.exit21.i.i326

uleb128.exit21.i.i326:                            ; preds = %._crit_edge.loopexit.i16.i.i325, %uleb128.exit.i.i316
  %.011.lcssa.i17.i.i327 = phi i64 [ 0, %uleb128.exit.i.i316 ], [ %.112.i15.i.i324, %._crit_edge.loopexit.i16.i.i325 ]
  %.010.lcssa.i18.i.i328 = phi i64 [ 0, %uleb128.exit.i.i316 ], [ %i.pl, %._crit_edge.loopexit.i16.i.i325 ]
  %.lcssa.i19.i.i329 = phi i8 [ %i.oz, %uleb128.exit.i.i316 ], [ %i.pj, %._crit_edge.loopexit.i16.i.i325 ]
  %i.pm = zext nneg i8 %.lcssa.i19.i.i329 to i64
  %i.pn = shl i64 %i.pm, %.010.lcssa.i18.i.i328
  %.11217.i20.i.i330 = add i64 %i.pn, %.011.lcssa.i17.i.i327 ; 2 uses
  %.11217.i.i.i331 = sub i64 0, %.011.lcssa.i.i.i318
  %i.po = icmp eq i64 %i.ox, %.11217.i.i.i331
  %i.pp = icmp eq i64 %.11217.i20.i.i330, 0
  %or.cond.not.i.i332 = select i1 %i.po, i1 true, i1 %i.pp
  br i1 %or.cond.not.i.i332, label %select.unfold146.i, label %bb.bt

bb.bt:                                            ; preds = %uleb128.exit21.i.i326
  %i.pq = call fastcc zeroext i1 @debug_info_reader_read_value(ptr noundef nonnull %19, i64 noundef %.11217.i20.i.i330, ptr noundef %9, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br i1 %i.pq, label %bb.bs, label %.critedge.thread.i

.preheader158.i:                                  ; preds = %.preheader158.i.preheader, %di_read_record.exit.thread.i
  %.sroa.0.0.i267 = phi i64 [ %.sroa.0.2.i297, %di_read_record.exit.thread.i ], [ 0, %.preheader158.i.preheader ] ; 14 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.2.i, %di_read_record.exit.thread.i ], [ 0, %.preheader158.i.preheader ] ; 9 uses
  %.sroa.10.0.i = phi i64 [ %.sroa.10.2.i, %di_read_record.exit.thread.i ], [ 0, %.preheader158.i.preheader ] ; 12 uses
  %.sroa.14.0.i = phi i8 [ %.sroa.14.2.i, %di_read_record.exit.thread.i ], [ 0, %.preheader158.i.preheader ] ; 10 uses
  %.sroa.17.0.i = phi i1 [ %.sroa.17.2.i, %di_read_record.exit.thread.i ], [ false, %.preheader158.i.preheader ] ; 9 uses
  %.sroa.19.0.i = phi i1 [ %.sroa.19.2.i, %di_read_record.exit.thread.i ], [ false, %.preheader158.i.preheader ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 48, i1 false)
  %.promoted.i.i86.i268 = load ptr, ptr %i.fd, align 8, !tbaa !42 ; 2 uses
  %i.pr = getelementptr i8, ptr %.promoted.i.i86.i268, i64 1 ; 3 uses
  store ptr %i.pr, ptr %i.fd, align 8, !tbaa !42
  %i.ps = load i8, ptr %.promoted.i.i86.i268, align 1, !tbaa !14 ; 3 uses
  %i.pt = icmp sgt i8 %i.ps, -1
  br i1 %i.pt, label %uleb128.exit.i92.i274, label %.lr.ph.i.i87.i269

.lr.ph.i.i87.i269:                                ; preds = %.preheader158.i, %.lr.ph.i.i87.i269
  %i.pu = phi i8 [ %i.qc, %.lr.ph.i.i87.i269 ], [ %i.ps, %.preheader158.i ]
  %i.pv = phi ptr [ %i.qb, %.lr.ph.i.i87.i269 ], [ %i.pr, %.preheader158.i ] ; 2 uses
  %.01020.i.i88.i270 = phi i32 [ %i.qa, %.lr.ph.i.i87.i269 ], [ 0, %.preheader158.i ] ; 2 uses
  %.01119.i.i89.i271 = phi i64 [ %.112.i.i90.i272, %.lr.ph.i.i87.i269 ], [ 0, %.preheader158.i ]
  %i.pw = and i8 %i.pu, 127
  %i.px = zext nneg i8 %i.pw to i32
  %i.py = shl i32 %i.px, %.01020.i.i88.i270
  %i.pz = sext i32 %i.py to i64
  %i.qa = add i32 %.01020.i.i88.i270, 7           ; 2 uses
  %.112.i.i90.i272 = add i64 %.01119.i.i89.i271, %i.pz ; 2 uses
  %i.qb = getelementptr i8, ptr %i.pv, i64 1      ; 3 uses
  store ptr %i.qb, ptr %i.fd, align 8, !tbaa !42
  %i.qc = load i8, ptr %i.pv, align 1, !tbaa !14  ; 3 uses
  %i.qd = icmp sgt i8 %i.qc, -1
  br i1 %i.qd, label %._crit_edge.loopexit.i.i91.i273, label %.lr.ph.i.i87.i269

._crit_edge.loopexit.i.i91.i273:                  ; preds = %.lr.ph.i.i87.i269
  %i.qe = zext nneg i32 %i.qa to i64
  br label %uleb128.exit.i92.i274

uleb128.exit.i92.i274:                            ; preds = %._crit_edge.loopexit.i.i91.i273, %.preheader158.i
  %.promoted.i16.i.i275 = phi ptr [ %i.pr, %.preheader158.i ], [ %i.qb, %._crit_edge.loopexit.i.i91.i273 ] ; 2 uses
  %.011.lcssa.i.i93.i276 = phi i64 [ 0, %.preheader158.i ], [ %.112.i.i90.i272, %._crit_edge.loopexit.i.i91.i273 ]
  %.010.lcssa.i.i94.i277 = phi i64 [ 0, %.preheader158.i ], [ %i.qe, %._crit_edge.loopexit.i.i91.i273 ]
  %.lcssa.i.i95.i278 = phi i8 [ %i.ps, %.preheader158.i ], [ %i.qc, %._crit_edge.loopexit.i.i91.i273 ]
  %i.qf = zext nneg i8 %.lcssa.i.i95.i278 to i64
  %i.qg = shl i64 %i.qf, %.010.lcssa.i.i94.i277
  %.11217.i.i96.i279 = add i64 %i.qg, %.011.lcssa.i.i93.i276 ; 2 uses
  %i.qh = getelementptr i8, ptr %.promoted.i16.i.i275, i64 1 ; 2 uses
  store ptr %i.qh, ptr %i.fd, align 8, !tbaa !42
  %i.qi = load i8, ptr %.promoted.i16.i.i275, align 1, !tbaa !14 ; 3 uses
  %i.qj = icmp sgt i8 %i.qi, -1
  br i1 %i.qj, label %uleb128.exit26.i.i285, label %.lr.ph.i17.i.i280

.lr.ph.i17.i.i280:                                ; preds = %uleb128.exit.i92.i274, %.lr.ph.i17.i.i280
  %i.qk = phi i8 [ %i.qs, %.lr.ph.i17.i.i280 ], [ %i.qi, %uleb128.exit.i92.i274 ]
  %i.ql = phi ptr [ %i.qr, %.lr.ph.i17.i.i280 ], [ %i.qh, %uleb128.exit.i92.i274 ] ; 2 uses
  %.01020.i18.i.i281 = phi i32 [ %i.qq, %.lr.ph.i17.i.i280 ], [ 0, %uleb128.exit.i92.i274 ] ; 2 uses
  %.01119.i19.i.i282 = phi i64 [ %.112.i20.i.i283, %.lr.ph.i17.i.i280 ], [ 0, %uleb128.exit.i92.i274 ]
  %i.qm = and i8 %i.qk, 127
  %i.qn = zext nneg i8 %i.qm to i32
  %i.qo = shl i32 %i.qn, %.01020.i18.i.i281
  %i.qp = sext i32 %i.qo to i64
  %i.qq = add i32 %.01020.i18.i.i281, 7           ; 2 uses
  %.112.i20.i.i283 = add i64 %.01119.i19.i.i282, %i.qp ; 2 uses
  %i.qr = getelementptr i8, ptr %i.ql, i64 1      ; 2 uses
  store ptr %i.qr, ptr %i.fd, align 8, !tbaa !42
  %i.qs = load i8, ptr %i.ql, align 1, !tbaa !14  ; 3 uses
  %i.qt = icmp sgt i8 %i.qs, -1
  br i1 %i.qt, label %._crit_edge.loopexit.i21.i.i284, label %.lr.ph.i17.i.i280

._crit_edge.loopexit.i21.i.i284:                  ; preds = %.lr.ph.i17.i.i280
  %i.qu = zext nneg i32 %i.qq to i64
  br label %uleb128.exit26.i.i285

uleb128.exit26.i.i285:                            ; preds = %._crit_edge.loopexit.i21.i.i284, %uleb128.exit.i92.i274
  %.011.lcssa.i22.i.i286 = phi i64 [ 0, %uleb128.exit.i92.i274 ], [ %.112.i20.i.i283, %._crit_edge.loopexit.i21.i.i284 ]
  %.010.lcssa.i23.i.i287 = phi i64 [ 0, %uleb128.exit.i92.i274 ], [ %i.qu, %._crit_edge.loopexit.i21.i.i284 ]
  %.lcssa.i24.i.i288 = phi i8 [ %i.qi, %uleb128.exit.i92.i274 ], [ %i.qs, %._crit_edge.loopexit.i21.i.i284 ]
  %i.qv = zext nneg i8 %.lcssa.i24.i.i288 to i64
  %i.qw = shl i64 %i.qv, %.010.lcssa.i23.i.i287
  %.11217.i25.i.i289 = add i64 %i.qw, %.011.lcssa.i22.i.i286 ; 3 uses
  %i.qx = icmp ne i64 %.11217.i.i96.i279, 0
  %i.qy = icmp ne i64 %.11217.i25.i.i289, 0
  %or.cond.i.i290 = select i1 %i.qx, i1 %i.qy, i1 false
  br i1 %or.cond.i.i290, label %bb.bu, label %.preheader.i

bb.bu:                                            ; preds = %uleb128.exit26.i.i285
  store i64 %.11217.i.i96.i279, ptr %i.fm, align 8, !tbaa !116
  store i64 %.11217.i25.i.i289, ptr %i.fn, align 8, !tbaa !117
  %i.qz = call fastcc zeroext i1 @debug_info_reader_read_value(ptr noundef nonnull %19, i64 noundef %.11217.i25.i.i289, ptr noundef nonnull %12, ptr noundef %6)
  br i1 %i.qz, label %di_read_record.exit.i296, label %.preheader.i

di_read_record.exit.i296:                         ; preds = %bb.bu
  %i.ra = load i64, ptr %i.fm, align 8, !tbaa !116 ; 2 uses
  switch i64 %i.ra, label %di_read_record.exit.thread.i [
    i64 3, label %bb.bv
    i64 88, label %bb.bw
    i64 89, label %bb.bx
    i64 17, label %bb.by
    i64 18, label %bb.by
    i64 85, label %bb.by
    i64 60, label %.thread.i
    i64 49, label %bb.cg
  ]

.thread.i:                                        ; preds = %di_read_record.exit.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.preheader813

bb.bv:                                            ; preds = %di_read_record.exit.i296
  %.val78.i = load ptr, ptr %12, align 8, !tbaa !14 ; 2 uses
  %.val79.i = load i64, ptr %i.fu, align 8
  %.not.i97.i = icmp eq ptr %.val78.i, null
  %i.rb = getelementptr i8, ptr %.val78.i, i64 %.val79.i
  %spec.select.i.i = select i1 %.not.i97.i, ptr null, ptr %i.rb
  store ptr %spec.select.i.i, ptr %i.fr, align 16, !tbaa !27
  br label %di_read_record.exit.thread.i

bb.bw:                                            ; preds = %di_read_record.exit.i296
  %i.rc = load i64, ptr %12, align 8, !tbaa !14
  %i.rd = trunc i64 %i.rc to i32
  %i.re = load i8, ptr %i.ew, align 8, !tbaa !114
  %i.rf = load i16, ptr %i.ey, align 2, !tbaa !115
  %i.rg = load ptr, ptr %i.fa, align 8, !tbaa !123
  %i.rh = load ptr, ptr %i.fb, align 8, !tbaa !124
  %i.ri = load ptr, ptr %19, align 8, !tbaa !47
  call fastcc void @fill_filename(i32 noundef %i.rd, i8 noundef zeroext %i.re, i16 noundef zeroext %i.rf, ptr noundef %i.rg, ptr noundef %i.rh, ptr noundef nonnull %11, ptr noundef %i.ri, ptr noundef %6)
  br label %di_read_record.exit.thread.i

bb.bx:                                            ; preds = %di_read_record.exit.i296
  %i.rj = load i64, ptr %12, align 8, !tbaa !14
  %i.rk = trunc i64 %i.rj to i32
  store i32 %i.rk, ptr %i.ft, align 8, !tbaa !23
  br label %di_read_record.exit.thread.i

bb.by:                                            ; preds = %di_read_record.exit.i296, %di_read_record.exit.i296, %di_read_record.exit.i296
  %i.rl = load i32, ptr %i.fs, align 8, !tbaa !68
  switch i32 %i.rl, label %read_addr.exit.i.i [
    i32 3, label %bb.bz
    i32 5, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.rm = load i64, ptr %12, align 8, !tbaa !14
  br label %read_addr.exit.i.i

bb.ca:                                            ; preds = %bb.by
  %i.rn = load i64, ptr %i.ff, align 8, !tbaa !118
  %i.ro = load i64, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.rp = getelementptr i8, ptr %.val.i264, i64 %i.rn ; 2 uses
  br i1 %i.of, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.rq = getelementptr [4 x i8], ptr %i.rp, i64 %i.ro
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !10
  %i.rs = zext i32 %i.rr to i64
  br label %read_addr.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.rt = getelementptr [8 x i8], ptr %i.rp, i64 %i.ro
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !43
  br label %read_addr.exit.i.i

read_addr.exit.i.i:                               ; preds = %bb.cc, %bb.cb, %bb.bz, %bb.by
  %.0.i98.i333 = phi i64 [ %i.rm, %bb.bz ], [ 0, %bb.by ], [ %i.rs, %bb.cb ], [ %i.ru, %bb.cc ] ; 3 uses
  switch i64 %i.ra, label %di_read_record.exit.thread.i [
    i64 17, label %bb.cd
    i64 18, label %bb.ce
    i64 85, label %bb.cf
  ]

bb.cd:                                            ; preds = %read_addr.exit.i.i
  br label %di_read_record.exit.thread.i

bb.ce:                                            ; preds = %read_addr.exit.i.i
  %i.rv = load i64, ptr %i.fn, align 8, !tbaa !117
  %i.rw = icmp eq i64 %i.rv, 1
  %i.rx = select i1 %i.rw, i64 0, i64 %.sroa.0.0.i267
  %spec.select150.i = add i64 %i.rx, %.0.i98.i333
  br label %di_read_record.exit.thread.i

bb.cf:                                            ; preds = %read_addr.exit.i.i
  br label %di_read_record.exit.thread.i

bb.cg:                                            ; preds = %di_read_record.exit.i296
  %i.ry = load i64, ptr %i.fn, align 8, !tbaa !117
  %i.rz = load i64, ptr %12, align 8, !tbaa !14
  %i.sa = load ptr, ptr %i.ec, align 8, !tbaa !67
  %i.sb = load ptr, ptr %i.fd, align 8, !tbaa !69
  %i.sc = load i32, ptr %i.es, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %.off.i.i = add i64 %i.ry, -17
  %switch.i.i = icmp ult i64 %.off.i.i, 5
  br i1 %switch.i.i, label %bb.ch, label %read_abstract_origin.exit.i

bb.ch:                                            ; preds = %bb.cg
  %i.sd = load ptr, ptr %i.en, align 8, !tbaa !111
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.rz
  store ptr %i.se, ptr %i.ec, align 8, !tbaa !67
  %i.sf = call fastcc ptr @di_read_die(ptr noundef nonnull %19, ptr noundef %7, ptr noundef %6)
  %.not.i99.i = icmp eq ptr %i.sf, null
  br i1 %.not.i99.i, label %read_abstract_origin.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ch, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %.promoted.i.i.i.i = load ptr, ptr %i.fd, align 8, !tbaa !42 ; 2 uses
  %i.sg = getelementptr i8, ptr %.promoted.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.sg, ptr %i.fd, align 8, !tbaa !42
  %i.sh = load i8, ptr %.promoted.i.i.i.i, align 1, !tbaa !14 ; 3 uses
  %i.si = icmp sgt i8 %i.sh, -1
  br i1 %i.si, label %uleb128.exit.i.i.i303, label %.lr.ph.i.i.i.i298

.lr.ph.i.i.i.i298:                                ; preds = %.preheader.i.i, %.lr.ph.i.i.i.i298
  %i.sj = phi i8 [ %i.sr, %.lr.ph.i.i.i.i298 ], [ %i.sh, %.preheader.i.i ]
  %i.sk = phi ptr [ %i.sq, %.lr.ph.i.i.i.i298 ], [ %i.sg, %.preheader.i.i ] ; 2 uses
  %.01020.i.i.i.i299 = phi i32 [ %i.sp, %.lr.ph.i.i.i.i298 ], [ 0, %.preheader.i.i ] ; 2 uses
  %.01119.i.i.i.i300 = phi i64 [ %.112.i.i.i.i301, %.lr.ph.i.i.i.i298 ], [ 0, %.preheader.i.i ]
  %i.sl = and i8 %i.sj, 127
  %i.sm = zext nneg i8 %i.sl to i32
  %i.sn = shl i32 %i.sm, %.01020.i.i.i.i299
  %i.so = sext i32 %i.sn to i64
  %i.sp = add i32 %.01020.i.i.i.i299, 7           ; 2 uses
  %.112.i.i.i.i301 = add i64 %.01119.i.i.i.i300, %i.so ; 2 uses
  %i.sq = getelementptr i8, ptr %i.sk, i64 1      ; 3 uses
  store ptr %i.sq, ptr %i.fd, align 8, !tbaa !42
  %i.sr = load i8, ptr %i.sk, align 1, !tbaa !14  ; 3 uses
  %i.ss = icmp sgt i8 %i.sr, -1
  br i1 %i.ss, label %._crit_edge.loopexit.i.i.i.i302, label %.lr.ph.i.i.i.i298

._crit_edge.loopexit.i.i.i.i302:                  ; preds = %.lr.ph.i.i.i.i298
  %i.st = zext nneg i32 %i.sp to i64
  br label %uleb128.exit.i.i.i303

uleb128.exit.i.i.i303:                            ; preds = %._crit_edge.loopexit.i.i.i.i302, %.preheader.i.i
  %.promoted.i16.i.i.i = phi ptr [ %i.sg, %.preheader.i.i ], [ %i.sq, %._crit_edge.loopexit.i.i.i.i302 ] ; 2 uses
  %.011.lcssa.i.i.i.i304 = phi i64 [ 0, %.preheader.i.i ], [ %.112.i.i.i.i301, %._crit_edge.loopexit.i.i.i.i302 ]
  %.010.lcssa.i.i.i.i305 = phi i64 [ 0, %.preheader.i.i ], [ %i.st, %._crit_edge.loopexit.i.i.i.i302 ]
  %.lcssa.i.i.i.i306 = phi i8 [ %i.sh, %.preheader.i.i ], [ %i.sr, %._crit_edge.loopexit.i.i.i.i302 ]
  %i.su = zext nneg i8 %.lcssa.i.i.i.i306 to i64
  %i.sv = shl i64 %i.su, %.010.lcssa.i.i.i.i305
  %.11217.i.i.i.i307 = add i64 %i.sv, %.011.lcssa.i.i.i.i304 ; 2 uses
  %i.sw = getelementptr i8, ptr %.promoted.i16.i.i.i, i64 1 ; 2 uses
  store ptr %i.sw, ptr %i.fd, align 8, !tbaa !42
  %i.sx = load i8, ptr %.promoted.i16.i.i.i, align 1, !tbaa !14 ; 3 uses
  %i.sy = icmp sgt i8 %i.sx, -1
  br i1 %i.sy, label %uleb128.exit26.i.i.i, label %.lr.ph.i17.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %uleb128.exit.i.i.i303, %.lr.ph.i17.i.i.i
  %i.sz = phi i8 [ %i.th, %.lr.ph.i17.i.i.i ], [ %i.sx, %uleb128.exit.i.i.i303 ]
  %i.ta = phi ptr [ %i.tg, %.lr.ph.i17.i.i.i ], [ %i.sw, %uleb128.exit.i.i.i303 ] ; 2 uses
  %.01020.i18.i.i.i = phi i32 [ %i.tf, %.lr.ph.i17.i.i.i ], [ 0, %uleb128.exit.i.i.i303 ] ; 2 uses
  %.01119.i19.i.i.i = phi i64 [ %.112.i20.i.i.i, %.lr.ph.i17.i.i.i ], [ 0, %uleb128.exit.i.i.i303 ]
  %i.tb = and i8 %i.sz, 127
  %i.tc = zext nneg i8 %i.tb to i32
  %i.td = shl i32 %i.tc, %.01020.i18.i.i.i
  %i.te = sext i32 %i.td to i64
  %i.tf = add i32 %.01020.i18.i.i.i, 7            ; 2 uses
  %.112.i20.i.i.i = add i64 %.01119.i19.i.i.i, %i.te ; 2 uses
  %i.tg = getelementptr i8, ptr %i.ta, i64 1      ; 2 uses
  store ptr %i.tg, ptr %i.fd, align 8, !tbaa !42
  %i.th = load i8, ptr %i.ta, align 1, !tbaa !14  ; 3 uses
  %i.ti = icmp sgt i8 %i.th, -1
  br i1 %i.ti, label %._crit_edge.loopexit.i21.i.i.i, label %.lr.ph.i17.i.i.i

._crit_edge.loopexit.i21.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i
  %i.tj = zext nneg i32 %i.tf to i64
  br label %uleb128.exit26.i.i.i

uleb128.exit26.i.i.i:                             ; preds = %._crit_edge.loopexit.i21.i.i.i, %uleb128.exit.i.i.i303
  %.011.lcssa.i22.i.i.i = phi i64 [ 0, %uleb128.exit.i.i.i303 ], [ %.112.i20.i.i.i, %._crit_edge.loopexit.i21.i.i.i ]
  %.010.lcssa.i23.i.i.i = phi i64 [ 0, %uleb128.exit.i.i.i303 ], [ %i.tj, %._crit_edge.loopexit.i21.i.i.i ]
  %.lcssa.i24.i.i.i = phi i8 [ %i.sx, %uleb128.exit.i.i.i303 ], [ %i.th, %._crit_edge.loopexit.i21.i.i.i ]
  %i.tk = zext nneg i8 %.lcssa.i24.i.i.i to i64
  %i.tl = shl i64 %i.tk, %.010.lcssa.i23.i.i.i
  %.11217.i25.i.i.i = add i64 %i.tl, %.011.lcssa.i22.i.i.i ; 3 uses
  %i.tm = icmp ne i64 %.11217.i.i.i.i307, 0
  %i.tn = icmp ne i64 %.11217.i25.i.i.i, 0
  %or.cond.i.i.i308 = select i1 %i.tm, i1 %i.tn, i1 false
  br i1 %or.cond.i.i.i308, label %bb.ci, label %.thread.i.i

bb.ci:                                            ; preds = %uleb128.exit26.i.i.i
  store i64 %.11217.i.i.i.i307, ptr %i.fo, align 8, !tbaa !116
  store i64 %.11217.i25.i.i.i, ptr %i.fp, align 8, !tbaa !117
  %i.to = call fastcc zeroext i1 @debug_info_reader_read_value(ptr noundef nonnull %19, i64 noundef %.11217.i25.i.i.i, ptr noundef nonnull %8, ptr noundef %6)
  br i1 %i.to, label %di_read_record.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ci, %uleb128.exit26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %read_abstract_origin.exit.i

di_read_record.exit.i.i:                          ; preds = %bb.ci
  %i.tp = load i64, ptr %i.fo, align 8, !tbaa !116
  %cond.i.i = icmp eq i64 %i.tp, 3
  br i1 %cond.i.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %di_read_record.exit.i.i
  %.val.i.i309 = load ptr, ptr %8, align 8, !tbaa !14 ; 2 uses
  %.val19.i.i = load i64, ptr %i.fq, align 8
  %.not.i.i.i = icmp eq ptr %.val.i.i309, null
  %i.tq = getelementptr i8, ptr %.val.i.i309, i64 %.val19.i.i
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.tq
  store ptr %spec.select.i.i.i, ptr %i.fr, align 16, !tbaa !27
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %di_read_record.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.preheader.i.i

read_abstract_origin.exit.i:                      ; preds = %.thread.i.i, %bb.ch, %bb.cg
  store ptr %i.sa, ptr %i.ec, align 8, !tbaa !67
  store ptr %i.sb, ptr %i.fd, align 8, !tbaa !69
  store i32 %i.sc, ptr %i.es, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %di_read_record.exit.thread.i

di_read_record.exit.thread.i:                     ; preds = %read_abstract_origin.exit.i, %bb.cf, %bb.ce, %bb.cd, %read_addr.exit.i.i, %bb.bx, %bb.bw, %bb.bv, %di_read_record.exit.i296
  %.sroa.0.2.i297 = phi i64 [ %.sroa.0.0.i267, %bb.ce ], [ %.sroa.0.0.i267, %di_read_record.exit.i296 ], [ %.sroa.0.0.i267, %bb.bv ], [ %.sroa.0.0.i267, %bb.bw ], [ %.sroa.0.0.i267, %bb.bx ], [ %.sroa.0.0.i267, %read_abstract_origin.exit.i ], [ %.sroa.0.0.i267, %read_addr.exit.i.i ], [ %.0.i98.i333, %bb.cd ], [ %.sroa.0.0.i267, %bb.cf ]
  %.sroa.8.2.i = phi i64 [ %spec.select150.i, %bb.ce ], [ %.sroa.8.0.i, %di_read_record.exit.i296 ], [ %.sroa.8.0.i, %bb.bv ], [ %.sroa.8.0.i, %bb.bw ], [ %.sroa.8.0.i, %bb.bx ], [ %.sroa.8.0.i, %read_abstract_origin.exit.i ], [ %.sroa.8.0.i, %read_addr.exit.i.i ], [ %.sroa.8.0.i, %bb.cd ], [ %.sroa.8.0.i, %bb.cf ]
  %.sroa.10.2.i = phi i64 [ %.sroa.10.0.i, %bb.ce ], [ %.sroa.10.0.i, %di_read_record.exit.i296 ], [ %.sroa.10.0.i, %bb.bv ], [ %.sroa.10.0.i, %bb.bw ], [ %.sroa.10.0.i, %bb.bx ], [ %.sroa.10.0.i, %read_abstract_origin.exit.i ], [ %.sroa.10.0.i, %read_addr.exit.i.i ], [ %.sroa.10.0.i, %bb.cd ], [ %.0.i98.i333, %bb.cf ]
  %.sroa.14.2.i = phi i8 [ %.sroa.14.0.i, %bb.ce ], [ %.sroa.14.0.i, %di_read_record.exit.i296 ], [ %.sroa.14.0.i, %bb.bv ], [ %.sroa.14.0.i, %bb.bw ], [ %.sroa.14.0.i, %bb.bx ], [ %.sroa.14.0.i, %read_abstract_origin.exit.i ], [ %.sroa.14.0.i, %read_addr.exit.i.i ], [ 1, %bb.cd ], [ %.sroa.14.0.i, %bb.cf ]
  %.sroa.17.2.i = phi i1 [ true, %bb.ce ], [ %.sroa.17.0.i, %di_read_record.exit.i296 ], [ %.sroa.17.0.i, %bb.bv ], [ %.sroa.17.0.i, %bb.bw ], [ %.sroa.17.0.i, %bb.bx ], [ %.sroa.17.0.i, %read_abstract_origin.exit.i ], [ %.sroa.17.0.i, %read_addr.exit.i.i ], [ %.sroa.17.0.i, %bb.cd ], [ %.sroa.17.0.i, %bb.cf ]
  %.sroa.19.2.i = phi i1 [ %.sroa.19.0.i, %bb.ce ], [ %.sroa.19.0.i, %di_read_record.exit.i296 ], [ %.sroa.19.0.i, %bb.bv ], [ %.sroa.19.0.i, %bb.bw ], [ %.sroa.19.0.i, %bb.bx ], [ %.sroa.19.0.i, %read_abstract_origin.exit.i ], [ %.sroa.19.0.i, %read_addr.exit.i.i ], [ %.sroa.19.0.i, %bb.cd ], [ true, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.preheader158.i

.preheader.i:                                     ; preds = %bb.bu, %uleb128.exit26.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br i1 %.not76188.i, label %.lr.ph.i, label %.critedge.i291

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.tr = load ptr, ptr %19, align 8, !tbaa !47   ; 5 uses
  %i.ts = getelementptr i8, ptr %i.tr, i64 32     ; 2 uses
  %i.tt = getelementptr i8, ptr %i.tr, i64 40     ; 2 uses
  %20 = trunc nuw i8 %.sroa.14.0.i to i1          ; 2 uses
  %i.tu = getelementptr i8, ptr %i.tr, i64 120
  %i.tv = getelementptr i8, ptr %i.tr, i64 192
  %.not191.i = icmp eq i8 %.sroa.14.0.i, 0
  %or.cond.i = select i1 %.sroa.19.0.i, i1 true, i1 %.not191.i
  %i.tw = load <2 x ptr>, ptr %11, align 16
  %i.tx = load i32, ptr %i.ft, align 8
  %i.ty = load i64, ptr %i.fv, align 16
  %i.tz = load ptr, ptr %i.fr, align 16
  %.pre.i = load i64, ptr %i.ts, align 8, !tbaa !30 ; 2 uses
  %.pre225.i = load i64, ptr %i.tt, align 8, !tbaa !70 ; 2 uses
  %.else.val.i = load i64, ptr %i.ek, align 8
  %spec.select369 = select i1 %20, i64 %.sroa.0.0.i267, i64 %.else.val.i ; 2 uses
  %i.ua = load i8, ptr %i.ep, align 8
  %i.ub = icmp ugt i8 %i.ua, 4
  %i.uc = load i64, ptr %i.fg, align 8            ; 2 uses
  %.val.i102.i = load i8, ptr %i.eq, align 4      ; 2 uses
  %i.ud = zext i8 %.val.i102.i to i64             ; 5 uses
  %i.ue = icmp eq i8 %.val.i102.i, 4              ; 3 uses
  br label %bb.cl

bb.cl:                                            ; preds = %.thread143.i, %.lr.ph.i
  %i.uf = phi i64 [ %.pre225.i, %.lr.ph.i ], [ %i.zu, %.thread143.i ] ; 7 uses
  %i.ug = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.zv, %.thread143.i ] ; 7 uses
  %i.uh = phi i64 [ %.pre225.i, %.lr.ph.i ], [ %i.zw, %.thread143.i ] ; 7 uses
  %i.ui = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.zx, %.thread143.i ] ; 7 uses
  %indvars.iv.i = phi i64 [ %i.fw, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread143.i ] ; 3 uses
  %i.uj = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !20
  %i.ul = ptrtoint ptr %i.uk to i64
  %i.um = sub i64 %i.ul, %i.ui
  %i.un = add i64 %i.um, %i.uh                    ; 7 uses
  br i1 %.sroa.17.0.i, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  br i1 %or.cond.i, label %.critedge.thread.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.not91.i.i = icmp ugt i64 %.sroa.0.0.i267, %i.un
  %.not92.i.i = icmp ugt i64 %i.un, %.sroa.8.0.i
  %or.cond152.i = select i1 %.not91.i.i, i1 true, i1 %.not92.i.i
  br i1 %or.cond152.i, label %.thread143.i, label %ranges_include.exit.i

bb.co:                                            ; preds = %bb.cl
  br i1 %.sroa.19.0.i, label %.cont.i, label %bb.dm

.cont.i:                                          ; preds = %bb.co
  br i1 %i.ub, label %bb.cp, label %bb.dj

bb.cp:                                            ; preds = %.cont.i
  %i.uo = load ptr, ptr %i.tv, align 8, !tbaa !122 ; 2 uses
  br i1 %.sroa.9117.0.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.up = getelementptr i8, ptr %i.uo, i64 %.sroa.10.0.i
  %i.uq = getelementptr i8, ptr %i.up, i64 %i.uc
  br label %read_dw_form_addr.exit.thread.i.i.preheader

bb.cr:                                            ; preds = %bb.cp
  %i.ur = getelementptr i8, ptr %i.uo, i64 %i.uc  ; 3 uses
  br i1 %.sroa.5.1.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.us = getelementptr [4 x i8], ptr %i.ur, i64 %.sroa.10.0.i
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !10
  %i.uu = zext i32 %i.ut to i64
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.uv = getelementptr [8 x i8], ptr %i.ur, i64 %.sroa.10.0.i
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !43
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn.i.i293 = phi i64 [ %i.uw, %bb.ct ], [ %i.uu, %bb.cs ]
  %storemerge.i.i = getelementptr i8, ptr %i.ur, i64 %.pn.i.i293
  br label %read_dw_form_addr.exit.thread.i.i.preheader

read_dw_form_addr.exit.thread.i.i.preheader:      ; preds = %bb.cu, %bb.cq
  %.07.i.i294.ph = phi ptr [ %storemerge.i.i, %bb.cu ], [ %i.uq, %bb.cq ]
  br label %read_dw_form_addr.exit.thread.i.i

read_dw_form_addr.exit.thread.i.i:                ; preds = %read_dw_form_addr.exit.thread.i.i.backedge, %read_dw_form_addr.exit.thread.i.i.preheader
  %.07.i.i294 = phi ptr [ %.07.i.i294.ph, %read_dw_form_addr.exit.thread.i.i.preheader ], [ %.07.i.i294.be, %read_dw_form_addr.exit.thread.i.i.backedge ] ; 6 uses
  %.072.i.i = phi i64 [ %spec.select369, %read_dw_form_addr.exit.thread.i.i.preheader ], [ %.072.i.i.be, %read_dw_form_addr.exit.thread.i.i.backedge ] ; 11 uses
  %.069.i.i = phi i1 [ true, %read_dw_form_addr.exit.thread.i.i.preheader ], [ %.069.i.i.be, %read_dw_form_addr.exit.thread.i.i.backedge ] ; 9 uses
  %i.ux = getelementptr i8, ptr %.07.i.i294, i64 1 ; 15 uses
  %i.uy = load i8, ptr %.07.i.i294, align 1, !tbaa !14
  switch i8 %i.uy, label %read_dw_form_addr.exit.thread.i.i.backedge [
    i8 0, label %.thread143.i
    i8 1, label %bb.cv
    i8 2, label %bb.cw
    i8 3, label %bb.cx
    i8 4, label %bb.cy
    i8 5, label %bb.da
    i8 6, label %bb.dd
    i8 7, label %bb.dg
  ]

bb.cv:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.uz = getelementptr i8, ptr %.07.i.i294, i64 2 ; 2 uses
  %i.va = load i8, ptr %i.ux, align 1, !tbaa !14
  %i.vb = icmp sgt i8 %i.va, -1
  br i1 %i.vb, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i.i103.i

.lr.ph.i.i103.i:                                  ; preds = %bb.cv, %.lr.ph.i.i103.i
  %i.vc = phi ptr [ %i.vd, %.lr.ph.i.i103.i ], [ %i.uz, %bb.cv ] ; 2 uses
  %i.vd = getelementptr i8, ptr %i.vc, i64 1      ; 2 uses
  %i.ve = load i8, ptr %i.vc, align 1, !tbaa !14
  %i.vf = icmp sgt i8 %i.ve, -1
  br i1 %i.vf, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i.i103.i

bb.cw:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.vg = getelementptr i8, ptr %.07.i.i294, i64 2 ; 2 uses
  %i.vh = load i8, ptr %i.ux, align 1, !tbaa !14
  %i.vi = icmp sgt i8 %i.vh, -1
  br i1 %i.vi, label %uleb128.exit112.i.i, label %.lr.ph.i103.i.i

.lr.ph.i103.i.i:                                  ; preds = %bb.cw, %.lr.ph.i103.i.i
  %i.vj = phi ptr [ %i.vk, %.lr.ph.i103.i.i ], [ %i.vg, %bb.cw ] ; 2 uses
  %i.vk = getelementptr i8, ptr %i.vj, i64 1      ; 2 uses
  %i.vl = load i8, ptr %i.vj, align 1, !tbaa !14
  %i.vm = icmp sgt i8 %i.vl, -1
  br i1 %i.vm, label %uleb128.exit112.i.i, label %.lr.ph.i103.i.i

uleb128.exit112.i.i:                              ; preds = %.lr.ph.i103.i.i, %bb.cw
  %.29.i.i = phi ptr [ %i.vg, %bb.cw ], [ %i.vk, %.lr.ph.i103.i.i ] ; 2 uses
  %i.vn = getelementptr i8, ptr %.29.i.i, i64 1   ; 2 uses
  %i.vo = load i8, ptr %.29.i.i, align 1, !tbaa !14
  %i.vp = icmp sgt i8 %i.vo, -1
  br i1 %i.vp, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i114.i.i

.lr.ph.i114.i.i:                                  ; preds = %uleb128.exit112.i.i, %.lr.ph.i114.i.i
  %i.vq = phi ptr [ %i.vr, %.lr.ph.i114.i.i ], [ %i.vn, %uleb128.exit112.i.i ] ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vq, i64 1      ; 2 uses
  %i.vs = load i8, ptr %i.vq, align 1, !tbaa !14
  %i.vt = icmp sgt i8 %i.vs, -1
  br i1 %i.vt, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i114.i.i

bb.cx:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.vu = getelementptr i8, ptr %.07.i.i294, i64 2 ; 2 uses
  %i.vv = load i8, ptr %i.ux, align 1, !tbaa !14
  %i.vw = icmp sgt i8 %i.vv, -1
  br i1 %i.vw, label %uleb128.exit134.i.i, label %.lr.ph.i125.i.i

.lr.ph.i125.i.i:                                  ; preds = %bb.cx, %.lr.ph.i125.i.i
  %i.vx = phi ptr [ %i.vy, %.lr.ph.i125.i.i ], [ %i.vu, %bb.cx ] ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vx, i64 1      ; 2 uses
  %i.vz = load i8, ptr %i.vx, align 1, !tbaa !14
  %i.wa = icmp sgt i8 %i.vz, -1
  br i1 %i.wa, label %uleb128.exit134.i.i, label %.lr.ph.i125.i.i

uleb128.exit134.i.i:                              ; preds = %.lr.ph.i125.i.i, %bb.cx
  %.4.i.i295 = phi ptr [ %i.vu, %bb.cx ], [ %i.vy, %.lr.ph.i125.i.i ] ; 2 uses
  %i.wb = getelementptr i8, ptr %.4.i.i295, i64 1 ; 2 uses
  %i.wc = load i8, ptr %.4.i.i295, align 1, !tbaa !14
  %i.wd = icmp sgt i8 %i.wc, -1
  br i1 %i.wd, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i136.i.i

.lr.ph.i136.i.i:                                  ; preds = %uleb128.exit134.i.i, %.lr.ph.i136.i.i
  %i.we = phi ptr [ %i.wf, %.lr.ph.i136.i.i ], [ %i.wb, %uleb128.exit134.i.i ] ; 2 uses
  %i.wf = getelementptr i8, ptr %i.we, i64 1      ; 2 uses
  %i.wg = load i8, ptr %i.we, align 1, !tbaa !14
  %i.wh = icmp sgt i8 %i.wg, -1
  br i1 %i.wh, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i136.i.i

bb.cy:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  br i1 %.069.i.i, label %bb.cz, label %read_dw_form_addr.exit.thread.i.i.backedge

bb.cz:                                            ; preds = %bb.cy
  %i.wi = getelementptr i8, ptr %.07.i.i294, i64 2 ; 2 uses
  %i.wj = load i8, ptr %i.ux, align 1, !tbaa !14  ; 3 uses
  %i.wk = icmp sgt i8 %i.wj, -1
  br i1 %i.wk, label %uleb128.exit156.i.i, label %.lr.ph.i147.i.i

.lr.ph.i147.i.i:                                  ; preds = %bb.cz, %.lr.ph.i147.i.i
  %i.wl = phi i8 [ %i.wt, %.lr.ph.i147.i.i ], [ %i.wj, %bb.cz ]
  %i.wm = phi ptr [ %i.ws, %.lr.ph.i147.i.i ], [ %i.wi, %bb.cz ] ; 2 uses
  %.01020.i148.i.i = phi i32 [ %i.wr, %.lr.ph.i147.i.i ], [ 0, %bb.cz ] ; 2 uses
  %.01119.i149.i.i = phi i64 [ %.112.i150.i.i, %.lr.ph.i147.i.i ], [ 0, %bb.cz ]
  %i.wn = and i8 %i.wl, 127
  %i.wo = zext nneg i8 %i.wn to i32
  %i.wp = shl i32 %i.wo, %.01020.i148.i.i
  %i.wq = sext i32 %i.wp to i64
  %i.wr = add i32 %.01020.i148.i.i, 7             ; 2 uses
  %.112.i150.i.i = add i64 %.01119.i149.i.i, %i.wq ; 2 uses
  %i.ws = getelementptr i8, ptr %i.wm, i64 1      ; 2 uses
  %i.wt = load i8, ptr %i.wm, align 1, !tbaa !14  ; 3 uses
  %i.wu = icmp sgt i8 %i.wt, -1
  br i1 %i.wu, label %._crit_edge.loopexit.i151.i.i, label %.lr.ph.i147.i.i

._crit_edge.loopexit.i151.i.i:                    ; preds = %.lr.ph.i147.i.i
  %i.wv = zext nneg i32 %i.wr to i64
  br label %uleb128.exit156.i.i

uleb128.exit156.i.i:                              ; preds = %._crit_edge.loopexit.i151.i.i, %bb.cz
  %.6.i.i = phi ptr [ %i.wi, %bb.cz ], [ %i.ws, %._crit_edge.loopexit.i151.i.i ] ; 2 uses
  %.011.lcssa.i152.i.i = phi i64 [ 0, %bb.cz ], [ %.112.i150.i.i, %._crit_edge.loopexit.i151.i.i ]
  %.010.lcssa.i153.i.i = phi i64 [ 0, %bb.cz ], [ %i.wv, %._crit_edge.loopexit.i151.i.i ]
  %.lcssa.i154.i.i = phi i8 [ %i.wj, %bb.cz ], [ %i.wt, %._crit_edge.loopexit.i151.i.i ]
  %i.ww = zext nneg i8 %.lcssa.i154.i.i to i64
  %i.wx = shl i64 %i.ww, %.010.lcssa.i153.i.i
  %.11217.i155.i.i = add i64 %.011.lcssa.i152.i.i, %.072.i.i
  %i.wy = add i64 %.11217.i155.i.i, %i.wx
  %i.wz = getelementptr i8, ptr %.6.i.i, i64 1    ; 2 uses
  %i.xa = load i8, ptr %.6.i.i, align 1, !tbaa !14 ; 3 uses
  %i.xb = icmp sgt i8 %i.xa, -1
  br i1 %i.xb, label %uleb128.exit167.i.i, label %.lr.ph.i158.i.i

.lr.ph.i158.i.i:                                  ; preds = %uleb128.exit156.i.i, %.lr.ph.i158.i.i
  %i.xc = phi i8 [ %i.xk, %.lr.ph.i158.i.i ], [ %i.xa, %uleb128.exit156.i.i ]
  %i.xd = phi ptr [ %i.xj, %.lr.ph.i158.i.i ], [ %i.wz, %uleb128.exit156.i.i ] ; 2 uses
  %.01020.i159.i.i = phi i32 [ %i.xi, %.lr.ph.i158.i.i ], [ 0, %uleb128.exit156.i.i ] ; 2 uses
  %.01119.i160.i.i = phi i64 [ %.112.i161.i.i, %.lr.ph.i158.i.i ], [ 0, %uleb128.exit156.i.i ]
  %i.xe = and i8 %i.xc, 127
  %i.xf = zext nneg i8 %i.xe to i32
  %i.xg = shl i32 %i.xf, %.01020.i159.i.i
  %i.xh = sext i32 %i.xg to i64
  %i.xi = add i32 %.01020.i159.i.i, 7             ; 2 uses
  %.112.i161.i.i = add i64 %.01119.i160.i.i, %i.xh ; 2 uses
  %i.xj = getelementptr i8, ptr %i.xd, i64 1      ; 2 uses
  %i.xk = load i8, ptr %i.xd, align 1, !tbaa !14  ; 3 uses
  %i.xl = icmp sgt i8 %i.xk, -1
  br i1 %i.xl, label %._crit_edge.loopexit.i162.i.i, label %.lr.ph.i158.i.i

._crit_edge.loopexit.i162.i.i:                    ; preds = %.lr.ph.i158.i.i
  %i.xm = zext nneg i32 %i.xi to i64
  br label %uleb128.exit167.i.i

uleb128.exit167.i.i:                              ; preds = %._crit_edge.loopexit.i162.i.i, %uleb128.exit156.i.i
  %.7.i.i = phi ptr [ %i.wz, %uleb128.exit156.i.i ], [ %i.xj, %._crit_edge.loopexit.i162.i.i ]
  %.011.lcssa.i163.i.i = phi i64 [ 0, %uleb128.exit156.i.i ], [ %.112.i161.i.i, %._crit_edge.loopexit.i162.i.i ]
  %.010.lcssa.i164.i.i = phi i64 [ 0, %uleb128.exit156.i.i ], [ %i.xm, %._crit_edge.loopexit.i162.i.i ]
  %.lcssa.i165.i.i = phi i8 [ %i.xa, %uleb128.exit156.i.i ], [ %i.xk, %._crit_edge.loopexit.i162.i.i ]
  %i.xn = zext nneg i8 %.lcssa.i165.i.i to i64
  %i.xo = shl i64 %i.xn, %.010.lcssa.i164.i.i
  %.11217.i166.i.i = add i64 %.011.lcssa.i163.i.i, %.072.i.i
  %i.xp = add i64 %.11217.i166.i.i, %i.xo
  br label %read_dw_form_addr.exit.i.i

bb.da:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.xq = getelementptr i8, ptr %i.ux, i64 %i.ud  ; 2 uses
  br i1 %i.ue, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %.val.i.i.i.i.i = load i32, ptr %i.ux, align 1
  %i.xr = zext i32 %.val.i.i.i.i.i to i64
  br label %read_dw_form_addr.exit.thread.i.i.backedge

bb.dc:                                            ; preds = %bb.da
  %.val.i3.i.i.i.i.i = load i64, ptr %i.ux, align 1
  br label %read_dw_form_addr.exit.thread.i.i.backedge

bb.dd:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.xs = getelementptr i8, ptr %i.ux, i64 %i.ud  ; 4 uses
  br i1 %i.ue, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %.val.i.i.i170.i.i = load i32, ptr %i.ux, align 1
  %i.xt = zext i32 %.val.i.i.i170.i.i to i64
  %i.xu = getelementptr i8, ptr %i.xs, i64 %i.ud
  %.val.i.i.i174.i.i = load i32, ptr %i.xs, align 1
  %i.xv = zext i32 %.val.i.i.i174.i.i to i64
  br label %read_dw_form_addr.exit.i.i

bb.df:                                            ; preds = %bb.dd
  %.val.i3.i.i.i168.i.i = load i64, ptr %i.ux, align 1
  %i.xw = getelementptr i8, ptr %i.xs, i64 %i.ud
  %.val.i3.i.i.i172.i.i = load i64, ptr %i.xs, align 1
  br label %read_dw_form_addr.exit.i.i

bb.dg:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.xx = getelementptr i8, ptr %i.ux, i64 %i.ud  ; 2 uses
  br i1 %i.ue, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %.val.i.i.i178.i.i = load i32, ptr %i.ux, align 1
  %i.xy = zext i32 %.val.i.i.i178.i.i to i64
  br label %read_dw_form_addr.exit179.i.i

bb.di:                                            ; preds = %bb.dg
  %.val.i3.i.i.i176.i.i = load i64, ptr %i.ux, align 1
  br label %read_dw_form_addr.exit179.i.i

read_dw_form_addr.exit179.i.i:                    ; preds = %bb.di, %bb.dh
  %.0.i177.i.i = phi i64 [ %i.xy, %bb.dh ], [ %.val.i3.i.i.i176.i.i, %bb.di ] ; 2 uses
  %i.xz = getelementptr i8, ptr %i.xx, i64 1      ; 2 uses
  %i.ya = load i8, ptr %i.xx, align 1, !tbaa !14  ; 3 uses
  %i.yb = icmp sgt i8 %i.ya, -1
  br i1 %i.yb, label %uleb128.exit190.i.i, label %.lr.ph.i181.i.i

.lr.ph.i181.i.i:                                  ; preds = %read_dw_form_addr.exit179.i.i, %.lr.ph.i181.i.i
  %i.yc = phi i8 [ %i.yk, %.lr.ph.i181.i.i ], [ %i.ya, %read_dw_form_addr.exit179.i.i ]
  %i.yd = phi ptr [ %i.yj, %.lr.ph.i181.i.i ], [ %i.xz, %read_dw_form_addr.exit179.i.i ] ; 2 uses
  %.01020.i182.i.i = phi i32 [ %i.yi, %.lr.ph.i181.i.i ], [ 0, %read_dw_form_addr.exit179.i.i ] ; 2 uses
  %.01119.i183.i.i = phi i64 [ %.112.i184.i.i, %.lr.ph.i181.i.i ], [ 0, %read_dw_form_addr.exit179.i.i ]
  %i.ye = and i8 %i.yc, 127
  %i.yf = zext nneg i8 %i.ye to i32
  %i.yg = shl i32 %i.yf, %.01020.i182.i.i
  %i.yh = sext i32 %i.yg to i64
  %i.yi = add i32 %.01020.i182.i.i, 7             ; 2 uses
  %.112.i184.i.i = add i64 %.01119.i183.i.i, %i.yh ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yd, i64 1      ; 2 uses
  %i.yk = load i8, ptr %i.yd, align 1, !tbaa !14  ; 3 uses
  %i.yl = icmp sgt i8 %i.yk, -1
  br i1 %i.yl, label %._crit_edge.loopexit.i185.i.i, label %.lr.ph.i181.i.i

._crit_edge.loopexit.i185.i.i:                    ; preds = %.lr.ph.i181.i.i
  %i.ym = zext nneg i32 %i.yi to i64
  br label %uleb128.exit190.i.i

uleb128.exit190.i.i:                              ; preds = %._crit_edge.loopexit.i185.i.i, %read_dw_form_addr.exit179.i.i
  %.8.i.i = phi ptr [ %i.xz, %read_dw_form_addr.exit179.i.i ], [ %i.yj, %._crit_edge.loopexit.i185.i.i ]
  %.011.lcssa.i186.i.i = phi i64 [ 0, %read_dw_form_addr.exit179.i.i ], [ %.112.i184.i.i, %._crit_edge.loopexit.i185.i.i ]
  %.010.lcssa.i187.i.i = phi i64 [ 0, %read_dw_form_addr.exit179.i.i ], [ %i.ym, %._crit_edge.loopexit.i185.i.i ]
  %.lcssa.i188.i.i = phi i8 [ %i.ya, %read_dw_form_addr.exit179.i.i ], [ %i.yk, %._crit_edge.loopexit.i185.i.i ]
  %i.yn = zext nneg i8 %.lcssa.i188.i.i to i64
  %i.yo = shl i64 %i.yn, %.010.lcssa.i187.i.i
  %.11217.i189.i.i = add i64 %.011.lcssa.i186.i.i, %.0.i177.i.i
  %i.yp = add i64 %.11217.i189.i.i, %i.yo
  br label %read_dw_form_addr.exit.i.i

read_dw_form_addr.exit.i.i:                       ; preds = %uleb128.exit190.i.i, %bb.df, %bb.de, %uleb128.exit167.i.i
  %.9.i.i = phi ptr [ %.7.i.i, %uleb128.exit167.i.i ], [ %i.xw, %bb.df ], [ %.8.i.i, %uleb128.exit190.i.i ], [ %i.xu, %bb.de ]
  %.170.i.i = phi i1 [ true, %uleb128.exit167.i.i ], [ %.069.i.i, %bb.df ], [ %.069.i.i, %uleb128.exit190.i.i ], [ %.069.i.i, %bb.de ]
  %.068.i.i = phi i64 [ %i.wy, %uleb128.exit167.i.i ], [ %.val.i3.i.i.i168.i.i, %bb.df ], [ %.0.i177.i.i, %uleb128.exit190.i.i ], [ %i.xt, %bb.de ] ; 2 uses
  %.067.i.i = phi i64 [ %i.xp, %uleb128.exit167.i.i ], [ %.val.i3.i.i.i172.i.i, %bb.df ], [ %i.yp, %uleb128.exit190.i.i ], [ %i.xv, %bb.de ]
  %.not90.i.i = icmp ule i64 %.068.i.i, %i.un
  %i.yq = icmp ult i64 %i.un, %.067.i.i
  %or.cond93.i.i = select i1 %.not90.i.i, i1 %i.yq, i1 false
  br i1 %or.cond93.i.i, label %ranges_include.exit.i, label %read_dw_form_addr.exit.thread.i.i.backedge

read_dw_form_addr.exit.thread.i.i.backedge:       ; preds = %.lr.ph.i136.i.i, %.lr.ph.i114.i.i, %.lr.ph.i.i103.i, %read_dw_form_addr.exit.i.i, %bb.dc, %bb.db, %bb.cy, %uleb128.exit134.i.i, %uleb128.exit112.i.i, %bb.cv, %read_dw_form_addr.exit.thread.i.i
  %.07.i.i294.be = phi ptr [ %i.wb, %uleb128.exit134.i.i ], [ %i.vr, %.lr.ph.i114.i.i ], [ %.9.i.i, %read_dw_form_addr.exit.i.i ], [ %i.xq, %bb.db ], [ %i.xq, %bb.dc ], [ %i.ux, %bb.cy ], [ %i.vn, %uleb128.exit112.i.i ], [ %i.vd, %.lr.ph.i.i103.i ], [ %i.ux, %read_dw_form_addr.exit.thread.i.i ], [ %i.uz, %bb.cv ], [ %i.wf, %.lr.ph.i136.i.i ]
  %.072.i.i.be = phi i64 [ %.072.i.i, %uleb128.exit134.i.i ], [ %.072.i.i, %.lr.ph.i114.i.i ], [ %.072.i.i, %read_dw_form_addr.exit.i.i ], [ %i.xr, %bb.db ], [ %.val.i3.i.i.i.i.i, %bb.dc ], [ %.072.i.i, %bb.cy ], [ %.072.i.i, %uleb128.exit112.i.i ], [ %.072.i.i, %.lr.ph.i.i103.i ], [ %.072.i.i, %read_dw_form_addr.exit.thread.i.i ], [ %.072.i.i, %bb.cv ], [ %.072.i.i, %.lr.ph.i136.i.i ]
  %.069.i.i.be = phi i1 [ %.069.i.i, %uleb128.exit134.i.i ], [ %.069.i.i, %.lr.ph.i114.i.i ], [ %.170.i.i, %read_dw_form_addr.exit.i.i ], [ true, %bb.db ], [ true, %bb.dc ], [ false, %bb.cy ], [ %.069.i.i, %uleb128.exit112.i.i ], [ false, %.lr.ph.i.i103.i ], [ %.069.i.i, %read_dw_form_addr.exit.thread.i.i ], [ false, %bb.cv ], [ %.069.i.i, %.lr.ph.i136.i.i ]
  br label %read_dw_form_addr.exit.thread.i.i

bb.dj:                                            ; preds = %.cont.i
  %i.yr = load ptr, ptr %i.tu, align 8, !tbaa !125
  %i.ys = getelementptr i8, ptr %i.yr, i64 %.sroa.10.0.i ; 3 uses
  %i.yt = getelementptr i8, ptr %i.ys, i64 8
  %.val.i3.i.i64.i.i = load i64, ptr %i.ys, align 1 ; 2 uses
  %.val.i3.i.i19165.i.i = load i64, ptr %i.yt, align 1 ; 2 uses
  %i.yu = icmp ne i64 %.val.i3.i.i64.i.i, 0
  %i.yv = icmp ne i64 %.val.i3.i.i19165.i.i, 0
  %or.cond66.i.i = select i1 %i.yu, i1 true, i1 %i.yv
  br i1 %or.cond66.i.i, label %.lr.ph.i.i, label %.thread143.i

.lr.ph.i.i:                                       ; preds = %bb.dj, %bb.dl
  %.val.i3.i.i19169.i.i = phi i64 [ %.val.i3.i.i191.i.i, %bb.dl ], [ %.val.i3.i.i19165.i.i, %bb.dj ] ; 2 uses
  %.pn70.i.i = phi ptr [ %i.yw, %bb.dl ], [ %i.ys, %bb.dj ] ; 2 uses
  %.val.i3.i.i68.i.i = phi i64 [ %.val.i3.i.i.i.i292, %bb.dl ], [ %.val.i3.i.i64.i.i, %bb.dj ] ; 2 uses
  %.367.i.i = phi i64 [ %.5.i.i, %bb.dl ], [ %spec.select369, %bb.dj ] ; 3 uses
  %i.yw = getelementptr i8, ptr %.pn70.i.i, i64 16 ; 2 uses
  %i.yx = icmp eq i64 %.val.i3.i.i68.i.i, -1
  br i1 %i.yx, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i
  %i.yy = add i64 %.367.i.i, %.val.i3.i.i68.i.i   ; 2 uses
  %.not.i100.i = icmp ule i64 %i.yy, %i.un
  %i.yz = add i64 %.367.i.i, %.val.i3.i.i19169.i.i
  %i.za = icmp ult i64 %i.un, %i.yz
  %or.cond95.i.i = select i1 %.not.i100.i, i1 %i.za, i1 false
  br i1 %or.cond95.i.i, label %ranges_include.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph.i.i
  %.5.i.i = phi i64 [ %.367.i.i, %bb.dk ], [ %.val.i3.i.i19169.i.i, %.lr.ph.i.i ]
  %i.zb = getelementptr i8, ptr %.pn70.i.i, i64 24
  %.val.i3.i.i.i.i292 = load i64, ptr %i.yw, align 1 ; 2 uses
  %.val.i3.i.i191.i.i = load i64, ptr %i.zb, align 1 ; 2 uses
  %i.zc = icmp ne i64 %.val.i3.i.i.i.i292, 0
  %i.zd = icmp ne i64 %.val.i3.i.i191.i.i, 0
  %or.cond.i101.i = select i1 %i.zc, i1 true, i1 %i.zd
  br i1 %or.cond.i101.i, label %.lr.ph.i.i, label %.thread143.i

bb.dm:                                            ; preds = %bb.co
  %i.ze = icmp eq i64 %.sroa.0.0.i267, %i.un
  %or.cond153.i = select i1 %20, i1 %i.ze, i1 false
  br i1 %or.cond153.i, label %ranges_include.exit.i, label %.thread143.i

ranges_include.exit.i:                            ; preds = %bb.dk, %read_dw_form_addr.exit.i.i, %bb.dm, %bb.cn
  %.580.i.i = phi i64 [ %.sroa.0.0.i267, %bb.cn ], [ %.068.i.i, %read_dw_form_addr.exit.i.i ], [ %.sroa.0.0.i267, %bb.dm ], [ %i.yy, %bb.dk ] ; 2 uses
  switch i64 %.580.i.i, label %bb.dn [
    i64 -1, label %.critedge.thread.i
    i64 0, label %.thread143.i
  ]

bb.dn:                                            ; preds = %ranges_include.exit.i
  %i.zf = getelementptr [64 x i8], ptr %4, i64 %indvars.iv.i ; 6 uses
  %i.zg = getelementptr i8, ptr %i.zf, i64 48     ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !27
  %.not74.i = icmp eq ptr %i.zh, null
  br i1 %.not74.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.zi = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.zi, ptr noundef nonnull align 8 dereferenceable(64) %i.zf, i64 noundef 64, i1 noundef false) #15
  %i.zj = getelementptr i8, ptr %i.zf, i64 56
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !35
  store <2 x ptr> %i.tw, ptr %i.zi, align 8, !tbaa !42
  %i.zk = getelementptr i8, ptr %i.zi, i64 24
  store i32 %i.tx, ptr %i.zk, align 8, !tbaa !23
  %i.zl = getelementptr i8, ptr %i.zi, i64 40
  store i64 0, ptr %i.zl, align 8, !tbaa !31
  %.pre226.i = load i64, ptr %i.ts, align 8, !tbaa !30
  %.pre227.i = load i64, ptr %i.tt, align 8, !tbaa !70
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.zm = phi i64 [ %.pre227.i, %bb.do ], [ %i.uf, %bb.dn ] ; 3 uses
  %i.zn = phi i64 [ %.pre226.i, %bb.do ], [ %i.ug, %bb.dn ] ; 3 uses
  %i.zo = load ptr, ptr %i.tr, align 8, !tbaa !19
  %i.zp = getelementptr i8, ptr %i.zf, i64 16
  store ptr %i.zo, ptr %i.zp, align 8, !tbaa !26
  %i.zq = getelementptr i8, ptr %i.zf, i64 32
  store i64 %i.ty, ptr %i.zq, align 8, !tbaa !34
  store ptr %i.tz, ptr %i.zg, align 8, !tbaa !27
  %i.zr = sub i64 %.580.i.i, %i.zm
  %i.zs = add i64 %i.zr, %i.zn
  %i.zt = getelementptr i8, ptr %i.zf, i64 40
  store i64 %i.zs, ptr %i.zt, align 8, !tbaa !31
  br label %.thread143.i

.thread143.i:                                     ; preds = %bb.dl, %read_dw_form_addr.exit.thread.i.i, %bb.dp, %ranges_include.exit.i, %bb.dm, %bb.dj, %bb.cn
  %i.zu = phi i64 [ %i.uf, %read_dw_form_addr.exit.thread.i.i ], [ %i.zm, %bb.dp ], [ %i.uf, %ranges_include.exit.i ], [ %i.uf, %bb.dm ], [ %i.uf, %bb.dj ], [ %i.uf, %bb.cn ], [ %i.uf, %bb.dl ]
  %i.zv = phi i64 [ %i.ug, %read_dw_form_addr.exit.thread.i.i ], [ %i.zn, %bb.dp ], [ %i.ug, %ranges_include.exit.i ], [ %i.ug, %bb.dm ], [ %i.ug, %bb.dj ], [ %i.ug, %bb.cn ], [ %i.ug, %bb.dl ]
  %i.zw = phi i64 [ %i.uh, %read_dw_form_addr.exit.thread.i.i ], [ %i.zm, %bb.dp ], [ %i.uh, %ranges_include.exit.i ], [ %i.uh, %bb.dm ], [ %i.uh, %bb.dj ], [ %i.uh, %bb.cn ], [ %i.uh, %bb.dl ]
  %i.zx = phi i64 [ %i.ui, %read_dw_form_addr.exit.thread.i.i ], [ %i.zn, %bb.dp ], [ %i.ui, %ranges_include.exit.i ], [ %i.ui, %bb.dm ], [ %i.ui, %bb.dj ], [ %i.ui, %bb.cn ], [ %i.ui, %bb.dl ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i291, label %bb.cl, !llvm.loop !87

select.unfold146.i:                               ; preds = %uleb128.exit21.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.critedge.i291, !llvm.loop !86

.critedge.thread.i:                               ; preds = %ranges_include.exit.i, %bb.cm, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.thread367

.critedge.i291:                                   ; preds = %.thread143.i, %select.unfold146.i, %.preheader.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.zy = load ptr, ptr %i.ec, align 8, !tbaa !67 ; 2 uses
  %i.zz = load ptr, ptr %i.eo, align 8, !tbaa !112
  %i.aaa = icmp ult ptr %i.zy, %i.zz
  br i1 %i.aaa, label %bb.bq, label %debug_info_read.exit

debug_info_read.exit:                             ; preds = %.critedge.i291, %rnglists_header_init.exit.i
  %i.aab = phi ptr [ %i.oc, %rnglists_header_init.exit.i ], [ %i.zy, %.critedge.i291 ] ; 2 uses
  %i.aac = load ptr, ptr %i.eg, align 8, !tbaa !49
  %i.aad = icmp ult ptr %i.aab, %i.aac
  br i1 %i.aad, label %bb.ad, label %._crit_edge487, !llvm.loop !88

.thread367:                                       ; preds = %bb.af, %di_read_debug_line_cu.exit.i, %bb.an, %di_skip_records.exit.i, %addr_header_init.exit.i, %.critedge.thread.i, %rnglists_header_init.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.dq

._crit_edge487:                                   ; preds = %debug_info_read.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.loopexit370

bb.dq:                                            ; preds = %.thread367, %bb.aa, %bb.ab
  %.not249 = icmp eq ptr %.0226.lcssa, null       ; 2 uses
  %spec.select261 = select i1 %.not249, ptr %.0219.lcssa, ptr %.0226.lcssa ; 3 uses
  %spec.select262 = select i1 %.not249, ptr %.0216.lcssa, ptr %.0222.lcssa ; 2 uses
  %i.aae = icmp ne ptr %spec.select261, null
  %i.aaf = icmp ne ptr %spec.select262, null
  %or.cond5 = select i1 %i.aae, i1 %i.aaf, i1 false
  br i1 %or.cond5, label %bb.dr, label %.loopexit370

bb.dr:                                            ; preds = %bb.dq
  %i.aag = getelementptr i8, ptr %spec.select262, i64 24
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !95
  %i.aai = getelementptr i8, ptr %i.n, i64 %i.aah
  %i.aaj = getelementptr i8, ptr %spec.select261, i64 24
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !95
  %i.aal = getelementptr i8, ptr %i.n, i64 %i.aak
  %i.aam = getelementptr i8, ptr %spec.select261, i64 32
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !99
  %i.aao = udiv i64 %i.aan, 24                    ; 2 uses
  %i.aap = trunc i64 %i.aao to i32
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %.lr.ph492, label %.loopexit370

.lr.ph492:                                        ; preds = %bb.dr
  %i.aar = getelementptr i8, ptr %i.c, i64 32
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !30 ; 2 uses
  %i.aat = icmp slt i32 %5, %0
  br i1 %i.aat, label %.lr.ph492.split.us.preheader, label %.loopexit370

.lr.ph492.split.us.preheader:                     ; preds = %.lr.ph492
  %i.aau = sext i32 %5 to i64
  %wide.trip.count587 = and i64 %i.aao, 2147483647
  %wide.trip.count582 = sext i32 %0 to i64
  br label %.lr.ph492.split.us

.lr.ph492.split.us:                               ; preds = %.lr.ph492.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv584 = phi i64 [ 0, %.lr.ph492.split.us.preheader ], [ %indvars.iv.next585, %..loopexit_crit_edge.us ] ; 2 uses
  %i.aav = getelementptr [24 x i8], ptr %i.aal, i64 %indvars.iv584 ; 4 uses
  %i.aaw = getelementptr i8, ptr %i.aav, i64 8
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !126
  %i.aay = add i64 %i.aas, %i.aax                 ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.aav, i64 4
  %i.aba = load i8, ptr %i.aaz, align 4, !tbaa !106
  %i.abb = and i8 %i.aba, 15
  %.not250.us = icmp eq i8 %i.abb, 2
  br i1 %.not250.us, label %.preheader.us, label %..loopexit_crit_edge.us

bb.ds:                                            ; preds = %.preheader.us, %bb.dx
  %indvars.iv579 = phi i64 [ %i.aau, %.preheader.us ], [ %indvars.iv.next580, %bb.dx ] ; 3 uses
  %i.abc = getelementptr [64 x i8], ptr %4, i64 %indvars.iv579 ; 5 uses
  %i.abd = getelementptr i8, ptr %i.abc, i64 24
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !23
  %i.abf = icmp sgt i32 %i.abe, 0
  br i1 %i.abf, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abg = getelementptr [8 x i8], ptr %1, i64 %indvars.iv579
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !20
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = sub i64 %i.abi, %i.aay
  %i.abk = load i64, ptr %i.abv, align 8, !tbaa !107
  %i.abl = icmp ugt i64 %i.abj, %i.abk
  br i1 %i.abl, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.abm = getelementptr i8, ptr %i.abc, i64 48   ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !27
  %.not251.us = icmp eq ptr %i.abn, null
  br i1 %.not251.us, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.abo = load i32, ptr %i.aav, align 8, !tbaa !108
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr i8, ptr %i.aai, i64 %i.abp
  store ptr %i.abq, ptr %i.abm, align 8, !tbaa !27
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.abr = getelementptr i8, ptr %i.abc, i64 40
  store i64 %i.aay, ptr %i.abr, align 8, !tbaa !31
  %i.abs = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.abt = getelementptr i8, ptr %i.abc, i64 16
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !26
  %i.abu = getelementptr i8, ptr %i.abc, i64 32
  store i64 %i.aas, ptr %i.abu, align 8, !tbaa !34
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dt, %bb.ds
  %indvars.iv.next580 = add nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond583.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count582
  br i1 %exitcond583.not, label %..loopexit_crit_edge.us, label %bb.ds, !llvm.loop !89

..loopexit_crit_edge.us:                          ; preds = %bb.dx, %.lr.ph492.split.us
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 1 ; 2 uses
  %exitcond588.not = icmp eq i64 %indvars.iv.next585, %wide.trip.count587
  br i1 %exitcond588.not, label %.loopexit370, label %.lr.ph492.split.us, !llvm.loop !90

.preheader.us:                                    ; preds = %.lr.ph492.split.us
  %i.abv = getelementptr i8, ptr %i.aav, i64 16
  br label %bb.ds

.loopexit370:                                     ; preds = %..loopexit_crit_edge.us, %.lr.ph492, %bb.dr, %._crit_edge487, %bb.dq
  %i.abw = getelementptr i8, ptr %i.c, i64 96
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !50 ; 2 uses
  %.not252 = icmp eq ptr %i.abx, null
  br i1 %.not252, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %.loopexit370
  %i.aby = icmp ne ptr %.0233.lcssa, null
  %i.abz = icmp ne i32 %2, 0                      ; 2 uses
  %or.cond7 = and i1 %i.abz, %i.aby
  br i1 %or.cond7, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aca = getelementptr i8, ptr %.0233.lcssa, i64 24
end_hunk_0
