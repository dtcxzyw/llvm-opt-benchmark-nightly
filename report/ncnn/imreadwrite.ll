Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZL13stbi__do_zlibP10stbi__zbufPciii:bb.a
  br i1 %i.fr, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.fs = shl nuw i32 %.028.i.i.i, 1              ; 3 uses
  %i.ft = icmp ugt i32 %i.fp, %i.fs
  br i1 %i.ft, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !500

._crit_edge.i.i.i:                                ; preds = %bb.ad, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.fo, %.preheader.i.i.i ], [ %i.fs, %bb.ad ]
  %i.fu = zext i32 %.0.lcssa.i.i.i to i64         ; 2 uses
  %i.fv = tail call ptr @realloc(ptr noundef %i.ff, i64 noundef %i.fu) #37 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i

_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i:      ; preds = %._crit_edge.i.i.i
  store ptr %i.fv, ptr %i.d, align 8, !tbaa !108
  %i.fx = and i64 %i.fi, 4294967295
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fx ; 2 uses
  store ptr %i.fy, ptr %i.e, align 8, !tbaa !109
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fu
  store ptr %i.fz, ptr %i.h, align 8, !tbaa !510
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !106
  br label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i

_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i: ; preds = %._crit_edge.i.i.i, %bb.ac, %bb.ab, %bb.z, %._crit_edge50.i.i, %.thread.i.i, %bb.v, %.lr.ph.i.i.i
  %.str.76.sink.i = phi ptr [ @.str.23, %.lr.ph.i.i.i ], [ @.str.76, %.thread.i.i ], [ @.str.23, %._crit_edge.i.i.i ], [ @.str.23, %bb.ac ], [ @.str.78, %bb.ab ], [ @.str.76, %._crit_edge50.i.i ], [ @.str.76, %bb.v ], [ @.str.77, %bb.z ]
  store ptr %.str.76.sink.i, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i: ; preds = %_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i, %bb.aa
  %i.ga = phi ptr [ %.pre.i.i, %_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i ], [ %i.ew, %bb.aa ]
  %i.gb = phi ptr [ %i.fy, %_ZL13stbi__zexpandP10stbi__zbufPci.exit.i.i ], [ %i.as, %bb.aa ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %i.ga, i64 %i.ex, i1 false)
  %i.gc = load ptr, ptr %0, align 8, !tbaa !106
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ex
  store ptr %i.gd, ptr %0, align 8, !tbaa !106
  %i.ge = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.ex ; 2 uses
  store ptr %i.gf, ptr %i.e, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  br label %bb.eq

bb.ae:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit30.i
  %i.gg = tail call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.af, ptr noundef nonnull @_ZL21stbi__zdefault_length, i32 noundef 288)
  %.not18.i = icmp eq i32 %i.gg, 0
  br i1 %.not18.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gh = tail call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.ag, ptr noundef nonnull @_ZL23stbi__zdefault_distance, i32 noundef 32)
  %.not19.i = icmp eq i32 %i.gh, 0
  br i1 %.not19.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, label %bb.ce

default.unreachable:                              ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit30.i
  unreachable

bb.ag:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.gi = icmp slt i32 %i.by, 7
  br i1 %i.gi, label %.preheader204.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i

.preheader204.i:                                  ; preds = %bb.ag, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i
  %i.gj = phi i32 [ %i.gs, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i ], [ %i.cd, %bb.ag ] ; 5 uses
  %i.gk = phi i32 [ %i.gr, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i ], [ %i.cc, %bb.ag ] ; 3 uses
  %.highbits.i.i.i44.i = lshr i32 %i.gk, %i.gj
  %.not.i.i.i45.i = icmp eq i32 %.highbits.i.i.i44.i, 0
  br i1 %.not.i.i.i45.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader204.i
  %i.gl = load ptr, ptr %i.z, align 8, !tbaa !107
  store ptr %i.gl, ptr %0, align 8, !tbaa !106
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i

bb.ai:                                            ; preds = %.preheader204.i
  %.val.i.i.i.i46.i = load ptr, ptr %0, align 8, !tbaa !106 ; 3 uses
  %.val2.i.i.i.i47.i = load ptr, ptr %i.z, align 8, !tbaa !107
  %.not3.i.i.i.i48.i = icmp ult ptr %.val.i.i.i.i46.i, %.val2.i.i.i.i47.i
  br i1 %.not3.i.i.i.i48.i, label %bb.aj, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i

bb.aj:                                            ; preds = %bb.ai
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i46.i, i64 1
  store ptr %i.gm, ptr %0, align 8, !tbaa !106
  %i.gn = load i8, ptr %.val.i.i.i.i46.i, align 1, !tbaa !35
  %i.go = zext i8 %i.gn to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i:     ; preds = %bb.aj, %bb.ai
  %i.gp = phi i32 [ %i.go, %bb.aj ], [ 0, %bb.ai ]
  %i.gq = shl i32 %i.gp, %i.gj
  %i.gr = or i32 %i.gq, %i.gk                     ; 3 uses
  store i32 %i.gr, ptr %i.y, align 4, !tbaa !513
  %i.gs = add nsw i32 %i.gj, 8                    ; 3 uses
  store i32 %i.gs, ptr %i.x, align 8, !tbaa !512
  %i.gt = icmp slt i32 %i.gj, 17
  br i1 %i.gt, label %.preheader204.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i, !llvm.loop !496

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i, %bb.ah, %bb.ag
  %i.gu = phi i32 [ %i.cd, %bb.ag ], [ %i.gj, %bb.ah ], [ %i.gs, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i ] ; 2 uses
  %i.gv = phi i32 [ %i.cc, %bb.ag ], [ %i.gk, %bb.ah ], [ %i.gr, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i49.i ] ; 2 uses
  %i.gw = and i32 %i.gv, 31
  %i.gx = lshr i32 %i.gv, 5                       ; 3 uses
  store i32 %i.gx, ptr %i.y, align 4, !tbaa !513
  %i.gy = add nsw i32 %i.gu, -5                   ; 3 uses
  store i32 %i.gy, ptr %i.x, align 8, !tbaa !512
  %i.gz = add nuw nsw i32 %i.gw, 257              ; 3 uses
  %i.ha = icmp slt i32 %i.gu, 10
  br i1 %i.ha, label %.preheader203.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i

.preheader203.i:                                  ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i
  %i.hb = phi i32 [ %i.hk, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i ], [ %i.gy, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i ] ; 5 uses
  %i.hc = phi i32 [ %i.hj, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i ], [ %i.gx, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i ] ; 3 uses
  %.highbits.i.i63.i.i = lshr i32 %i.hc, %i.hb
  %.not.i.i64.i.i = icmp eq i32 %.highbits.i.i63.i.i, 0
  br i1 %.not.i.i64.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader203.i
  %i.hd = load ptr, ptr %i.z, align 8, !tbaa !107
  store ptr %i.hd, ptr %0, align 8, !tbaa !106
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i

bb.al:                                            ; preds = %.preheader203.i
  %.val.i.i.i65.i.i = load ptr, ptr %0, align 8, !tbaa !106 ; 3 uses
  %.val2.i.i.i66.i.i = load ptr, ptr %i.z, align 8, !tbaa !107
  %.not3.i.i.i67.i.i = icmp ult ptr %.val.i.i.i65.i.i, %.val2.i.i.i66.i.i
  br i1 %.not3.i.i.i67.i.i, label %bb.am, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i

bb.am:                                            ; preds = %bb.al
  %i.he = getelementptr inbounds nuw i8, ptr %.val.i.i.i65.i.i, i64 1
  store ptr %i.he, ptr %0, align 8, !tbaa !106
  %i.hf = load i8, ptr %.val.i.i.i65.i.i, align 1, !tbaa !35
  %i.hg = zext i8 %i.hf to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i:     ; preds = %bb.am, %bb.al
  %i.hh = phi i32 [ %i.hg, %bb.am ], [ 0, %bb.al ]
  %i.hi = shl i32 %i.hh, %i.hb
  %i.hj = or i32 %i.hi, %i.hc                     ; 3 uses
  store i32 %i.hj, ptr %i.y, align 4, !tbaa !513
  %i.hk = add nsw i32 %i.hb, 8                    ; 3 uses
  store i32 %i.hk, ptr %i.x, align 8, !tbaa !512
  %i.hl = icmp slt i32 %i.hb, 17
  br i1 %i.hl, label %.preheader203.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i, !llvm.loop !496

_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i, %bb.ak, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i
  %i.hm = phi i32 [ %i.gy, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i ], [ %i.hb, %bb.ak ], [ %i.hk, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i ] ; 2 uses
  %i.hn = phi i32 [ %i.gx, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i36.i ], [ %i.hc, %bb.ak ], [ %i.hj, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i68.i.i ] ; 2 uses
  %i.ho = and i32 %i.hn, 31
  %i.hp = lshr i32 %i.hn, 5                       ; 3 uses
  store i32 %i.hp, ptr %i.y, align 4, !tbaa !513
  %i.hq = add nsw i32 %i.hm, -5                   ; 3 uses
  store i32 %i.hq, ptr %i.x, align 8, !tbaa !512
  %i.hr = add nuw nsw i32 %i.ho, 1                ; 2 uses
  %i.hs = icmp slt i32 %i.hm, 9
  br i1 %i.hs, label %.preheader202.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit77.i.i

.preheader202.i:                                  ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i
  %i.ht = phi i32 [ %i.ic, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i ], [ %i.hq, %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i ] ; 5 uses
  %i.hu = phi i32 [ %i.ib, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i ], [ %i.hp, %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i ] ; 3 uses
  %.highbits.i.i71.i.i = lshr i32 %i.hu, %i.ht
  %.not.i.i72.i.i = icmp eq i32 %.highbits.i.i71.i.i, 0
  br i1 %.not.i.i72.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader202.i
  %i.hv = load ptr, ptr %i.z, align 8, !tbaa !107
  store ptr %i.hv, ptr %0, align 8, !tbaa !106
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit77.i.i

bb.ao:                                            ; preds = %.preheader202.i
  %.val.i.i.i73.i.i = load ptr, ptr %0, align 8, !tbaa !106 ; 3 uses
  %.val2.i.i.i74.i.i = load ptr, ptr %i.z, align 8, !tbaa !107
  %.not3.i.i.i75.i.i = icmp ult ptr %.val.i.i.i73.i.i, %.val2.i.i.i74.i.i
  br i1 %.not3.i.i.i75.i.i, label %bb.ap, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hw = getelementptr inbounds nuw i8, ptr %.val.i.i.i73.i.i, i64 1
  store ptr %i.hw, ptr %0, align 8, !tbaa !106
  %i.hx = load i8, ptr %.val.i.i.i73.i.i, align 1, !tbaa !35
  %i.hy = zext i8 %i.hx to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i:     ; preds = %bb.ap, %bb.ao
  %i.hz = phi i32 [ %i.hy, %bb.ap ], [ 0, %bb.ao ]
  %i.ia = shl i32 %i.hz, %i.ht
  %i.ib = or i32 %i.ia, %i.hu                     ; 3 uses
  store i32 %i.ib, ptr %i.y, align 4, !tbaa !513
  %i.ic = add nsw i32 %i.ht, 8                    ; 3 uses
  store i32 %i.ic, ptr %i.x, align 8, !tbaa !512
  %i.id = icmp slt i32 %i.ht, 17
  br i1 %i.id, label %.preheader202.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit77.i.i, !llvm.loop !496

_ZL14stbi__zreceiveP10stbi__zbufi.exit77.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i, %bb.an, %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i
  %i.ie = phi i32 [ %i.hq, %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i ], [ %i.ht, %bb.an ], [ %i.ic, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i ]
  %i.if = phi i32 [ %i.hp, %_ZL14stbi__zreceiveP10stbi__zbufi.exit69.i.i ], [ %i.hu, %bb.an ], [ %i.ib, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i76.i.i ] ; 2 uses
  %i.ig = and i32 %i.if, 15
  %i.ih = lshr i32 %i.if, 4                       ; 2 uses
  store i32 %i.ih, ptr %i.y, align 4, !tbaa !513
  %i.ii = add nsw i32 %i.ie, -4                   ; 2 uses
  store i32 %i.ii, ptr %i.x, align 8, !tbaa !512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.b, i8 0, i64 19, i1 false)
  %6 = add nuw nsw i32 %i.ig, 4
  %wide.trip.count.i.i = zext nneg i32 %6 to i64
  br label %bb.aq

bb.aq:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i, %_ZL14stbi__zreceiveP10stbi__zbufi.exit77.i.i
  %indvars.iv.i37.i = phi i64 [ 0, %_ZL14stbi__zreceiveP10stbi__zbufi.exit77.i.i ], [ %indvars.iv.next.i38.i, %_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i ] ; 2 uses
  %i.ij = phi i32 [ %i.ii, %_ZL14stbi__zreceiveP10stbi__zbufi.exit77.i.i ], [ %i.ja, %_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i ] ; 3 uses
  %i.ik = phi i32 [ %i.ih, %_ZL14stbi__zreceiveP10stbi__zbufi.exit77.i.i ], [ %i.iz, %_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i ] ; 2 uses
  %i.il = icmp slt i32 %i.ij, 3
  br i1 %i.il, label %.preheader178.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i

.preheader178.i.i:                                ; preds = %bb.aq, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i
  %i.im = phi i32 [ %i.iv, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i ], [ %i.ij, %bb.aq ] ; 5 uses
  %i.in = phi i32 [ %i.iu, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i ], [ %i.ik, %bb.aq ] ; 3 uses
  %.highbits.i.i79.i.i = lshr i32 %i.in, %i.im
  %.not.i.i80.i.i = icmp eq i32 %.highbits.i.i79.i.i, 0
  br i1 %.not.i.i80.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.preheader178.i.i
  %i.io = load ptr, ptr %i.z, align 8, !tbaa !107
  store ptr %i.io, ptr %0, align 8, !tbaa !106
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i

bb.as:                                            ; preds = %.preheader178.i.i
  %.val.i.i.i81.i.i = load ptr, ptr %0, align 8, !tbaa !106 ; 3 uses
  %.val2.i.i.i82.i.i = load ptr, ptr %i.z, align 8, !tbaa !107
  %.not3.i.i.i83.i.i = icmp ult ptr %.val.i.i.i81.i.i, %.val2.i.i.i82.i.i
  br i1 %.not3.i.i.i83.i.i, label %bb.at, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i

bb.at:                                            ; preds = %bb.as
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.i.i.i81.i.i, i64 1
  store ptr %i.ip, ptr %0, align 8, !tbaa !106
  %i.iq = load i8, ptr %.val.i.i.i81.i.i, align 1, !tbaa !35
  %i.ir = zext i8 %i.iq to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i:     ; preds = %bb.at, %bb.as
  %i.is = phi i32 [ %i.ir, %bb.at ], [ 0, %bb.as ]
  %i.it = shl i32 %i.is, %i.im
  %i.iu = or i32 %i.it, %i.in                     ; 3 uses
  store i32 %i.iu, ptr %i.y, align 4, !tbaa !513
  %i.iv = add nsw i32 %i.im, 8                    ; 3 uses
  store i32 %i.iv, ptr %i.x, align 8, !tbaa !512
  %i.iw = icmp slt i32 %i.im, 17
  br i1 %i.iw, label %.preheader178.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i, !llvm.loop !496

_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i, %bb.ar, %bb.aq
  %i.ix = phi i32 [ %i.ij, %bb.aq ], [ %i.im, %bb.ar ], [ %i.iv, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i ]
  %i.iy = phi i32 [ %i.ik, %bb.aq ], [ %i.in, %bb.ar ], [ %i.iu, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i84.i.i ] ; 2 uses
  %i.iz = lshr i32 %i.iy, 3                       ; 2 uses
  store i32 %i.iz, ptr %i.y, align 4, !tbaa !513
  %i.ja = add nsw i32 %i.ix, -3                   ; 2 uses
  store i32 %i.ja, ptr %i.x, align 8, !tbaa !512
  %i.jb = trunc i32 %i.iy to i8
  %i.jc = and i8 %i.jb, 7
  %i.jd = getelementptr inbounds nuw i8, ptr @_ZZL27stbi__compute_huffman_codesP10stbi__zbufE15length_dezigzag, i64 %indvars.iv.i37.i
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !35
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jf
  store i8 %i.jc, ptr %i.jg, align 1, !tbaa !35
  %indvars.iv.next.i38.i = add nuw nsw i64 %indvars.iv.i37.i, 1 ; 2 uses
  %exitcond.not.i39.i = icmp eq i64 %indvars.iv.next.i38.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i39.i, label %bb.au, label %bb.aq, !llvm.loop !501

bb.au:                                            ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit85.i.i
  %i.jh = add nuw nsw i32 %i.hr, %i.gz            ; 3 uses
  %i.ji = call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %5, ptr noundef nonnull %i.b, i32 noundef 19)
  %.not.i40.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i40.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i, label %.preheader.i41.i

.preheader.i41.i:                                 ; preds = %bb.au
  %.promoted173.i.i = load i32, ptr %i.x, align 8, !tbaa !512
  br label %bb.av

bb.av:                                            ; preds = %bb.cb, %.preheader.i41.i
  %.050174.i.i = phi i32 [ 0, %.preheader.i41.i ], [ %.353.i.i, %bb.cb ] ; 7 uses
  %i.jj = phi i32 [ %.promoted173.i.i, %.preheader.i41.i ], [ %i.oa, %bb.cb ] ; 3 uses
  %i.jk = icmp slt i32 %i.jj, 16
  br i1 %i.jk, label %bb.aw, label %._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i.i

._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i.i: ; preds = %bb.av
  %.pre.i.i.i = load i32, ptr %i.y, align 4, !tbaa !513
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.val.i.i43.i = load ptr, ptr %0, align 8, !tbaa !106 ; 2 uses
  %.val16.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !107 ; 3 uses
  %.not18.i.i.i = icmp ult ptr %.val.i.i43.i, %.val16.i.i.i
  br i1 %.not18.i.i.i, label %bb.ax, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i

bb.ax:                                            ; preds = %bb.aw
  %.promoted.i.i86.i.i = load i32, ptr %i.y, align 4, !tbaa !513
  br label %bb.ay

bb.ay:                                            ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i, %bb.ax
  %.val.i.i.i87.i.i = phi ptr [ %.val.i.i19.i.i.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i ], [ %.val.i.i43.i, %bb.ax ] ; 4 uses
  %i.jl = phi i32 [ %i.jt, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i ], [ %i.jj, %bb.ax ] ; 5 uses
  %i.jm = phi i32 [ %i.js, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i ], [ %.promoted.i.i86.i.i, %bb.ax ] ; 3 uses
  %.highbits.i.i88.i.i = lshr i32 %i.jm, %i.jl
  %.not.i.i89.i.i = icmp eq i32 %.highbits.i.i88.i.i, 0
  br i1 %.not.i.i89.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr %.val16.i.i.i, ptr %0, align 8, !tbaa !106
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %.not3.i.i.i90.i.i = icmp ult ptr %.val.i.i.i87.i.i, %.val16.i.i.i
  br i1 %.not3.i.i.i90.i.i, label %bb.bb, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.jn = getelementptr inbounds nuw i8, ptr %.val.i.i.i87.i.i, i64 1 ; 2 uses
  store ptr %i.jn, ptr %0, align 8, !tbaa !106
  %i.jo = load i8, ptr %.val.i.i.i87.i.i, align 1, !tbaa !35
  %i.jp = zext i8 %i.jo to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i:     ; preds = %bb.bb, %bb.ba
  %.val.i.i19.i.i.i = phi ptr [ %i.jn, %bb.bb ], [ %.val.i.i.i87.i.i, %bb.ba ]
  %i.jq = phi i32 [ %i.jp, %bb.bb ], [ 0, %bb.ba ]
  %i.jr = shl i32 %i.jq, %i.jl
  %i.js = or i32 %i.jr, %i.jm                     ; 3 uses
  store i32 %i.js, ptr %i.y, align 4, !tbaa !513
  %i.jt = add nsw i32 %i.jl, 8                    ; 3 uses
  store i32 %i.jt, ptr %i.x, align 8, !tbaa !512
  %i.ju = icmp slt i32 %i.jl, 17
  br i1 %i.ju, label %bb.ay, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i, !llvm.loop !496

_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i, %bb.az, %._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i.i
  %i.jv = phi i32 [ %i.jj, %._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i.i ], [ %i.jl, %bb.az ], [ %i.jt, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i ] ; 2 uses
  %i.jw = phi i32 [ %.pre.i.i.i, %._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i.i ], [ %i.jm, %bb.az ], [ %i.js, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i91.i.i ] ; 4 uses
  %i.jx = and i32 %i.jw, 511
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.jy
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !41 ; 2 uses
  %.not15.i.i.i = icmp eq i16 %i.ka, 0
  br i1 %.not15.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i
  %i.kb = zext i16 %i.ka to i32                   ; 2 uses
  %i.kc = lshr i32 %i.kb, 9                       ; 2 uses
  %i.kd = lshr i32 %i.jw, %i.kc                   ; 2 uses
  store i32 %i.kd, ptr %i.y, align 4, !tbaa !513
  %i.ke = sub nsw i32 %i.jv, %i.kc                ; 2 uses
  store i32 %i.ke, ptr %i.x, align 8, !tbaa !512
  %i.kf = and i32 %i.kb, 511
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i

bb.bd:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i.i
  %trunc.i.i.i.i.i.i = trunc i32 %i.jw to i16
  %rev.i.i.i.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i.i.i)
  %i.kg = zext i16 %rev.i.i.i.i.i.i to i32        ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.be ], [ 10, %bb.bd ] ; 7 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !23
  %i.kj = icmp sgt i32 %i.ki, %i.kg
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.kj, label %bb.bf, label %bb.be, !llvm.loop !502

bb.bf:                                            ; preds = %bb.be
  %i.kk = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32 ; 3 uses
  %i.kl = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 15
  br i1 %i.kl, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.km = sub nuw nsw i32 16, %i.kk
  %i.kn = lshr i32 %i.kg, %i.km
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !41
  %i.kq = zext i16 %i.kp to i32
  %i.kr = sub nsw i32 %i.kn, %i.kq
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i.i
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !41
  %i.ku = zext i16 %i.kt to i32
  %i.kv = add nsw i32 %i.kr, %i.ku                ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, 287
  br i1 %i.kw, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kx = sext i32 %i.kv to i64                   ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.ad, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !35
  %i.la = zext i8 %i.kz to i64
  %.not.i17.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.la
  br i1 %.not.i17.i.i.i, label %bb.bi, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i

bb.bi:                                            ; preds = %bb.bh
  %i.lb = lshr i32 %i.jw, %i.kk                   ; 2 uses
  store i32 %i.lb, ptr %i.y, align 4, !tbaa !513
  %i.lc = sub nsw i32 %i.jv, %i.kk                ; 2 uses
  store i32 %i.lc, ptr %i.x, align 8, !tbaa !512
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.kx
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !41
  %i.lf = zext i16 %i.le to i32
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i

_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i: ; preds = %bb.bi, %bb.bc
  %.promoted.i.i110.i.i = phi i32 [ %i.lb, %bb.bi ], [ %i.kd, %bb.bc ] ; 6 uses
end_hunk_0
begin_hunk_1_@_ZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKvi:bb.a
  %i.yy = insertelement <4 x i8> poison, i8 %i.xr, i64 0
  %i.yz = insertelement <4 x i8> %i.yy, i8 %i.yd, i64 1
  %i.za = insertelement <4 x i8> %i.yz, i8 %i.ym, i64 2
  %i.zb = insertelement <4 x i8> %i.za, i8 %i.yv, i64 3
  %i.zc = uitofp <4 x i8> %i.zb to <4 x float>    ; 3 uses
  %i.zd = insertelement <4 x i8> poison, i8 %i.xp, i64 0
  %i.ze = insertelement <4 x i8> %i.zd, i8 %i.yb, i64 1
  %i.zf = insertelement <4 x i8> %i.ze, i8 %i.yk, i64 2
  %i.zg = insertelement <4 x i8> %i.zf, i8 %i.yt, i64 3
  %i.zh = uitofp <4 x i8> %i.zg to <4 x float>    ; 3 uses
  %i.zi = insertelement <4 x i8> poison, i8 %i.xt, i64 0
  %i.zj = insertelement <4 x i8> %i.zi, i8 %i.yf, i64 1
  %i.zk = insertelement <4 x i8> %i.zj, i8 %i.yo, i64 2
  %i.zl = insertelement <4 x i8> %i.zk, i8 %i.yx, i64 3
  %i.zm = uitofp <4 x i8> %i.zl to <4 x float>    ; 3 uses
  %i.zn = fmul nnan <4 x float> %i.zc, splat (float 5.870000e-01)
  %i.zo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zh, <4 x float> splat (float 2.990000e-01), <4 x float> %i.zn)
  %i.zp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zm, <4 x float> splat (float 1.140000e-01), <4 x float> %i.zo)
  %i.zq = fadd <4 x float> %i.zp, splat (float -1.280000e+02)
  store <4 x float> %i.zq, ptr %i.xu, align 16, !tbaa !112
  %i.zr = fmul nnan <4 x float> %i.zc, splat (float -3.312600e-01)
  %i.zs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zh, <4 x float> splat (float -1.687400e-01), <4 x float> %i.zr)
  %i.zt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zm, <4 x float> splat (float 5.000000e-01), <4 x float> %i.zs)
  store <4 x float> %i.zt, ptr %i.xv, align 16, !tbaa !112
  %i.zu = fmul nnan <4 x float> %i.zc, splat (float -4.186900e-01)
  %i.zv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zh, <4 x float> splat (float 5.000000e-01), <4 x float> %i.zu)
  %i.zw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zm, <4 x float> splat (float f0xBDA685DB), <4 x float> %i.zv)
  store <4 x float> %i.zw, ptr %i.xw, align 16, !tbaa !112
  %indvars.iv.next378.3 = or disjoint i64 %indvars.iv381, 4 ; 3 uses
  %i.zx = add i32 %i.sa, %i.xk
  %i.zy = mul i32 %i.zx, %3
  %i.zz = sext i32 %i.zy to i64                   ; 3 uses
  %i.aaa = getelementptr inbounds i8, ptr %4, i64 %i.zz
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !35
  %i.aac = getelementptr inbounds i8, ptr %i.rl, i64 %i.zz
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !35
  %i.aae = getelementptr inbounds i8, ptr %i.rm, i64 %i.zz
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !35
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next378.3
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next378.3
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next378.3
  %i.aaj = add i32 %i.sc, %i.xk
  %i.aak = mul i32 %i.aaj, %3
  %i.aal = sext i32 %i.aak to i64                 ; 3 uses
  %i.aam = getelementptr inbounds i8, ptr %4, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !35
  %i.aao = getelementptr inbounds i8, ptr %i.rl, i64 %i.aal
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !35
  %i.aaq = getelementptr inbounds i8, ptr %i.rm, i64 %i.aal
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !35
  %i.aas = add i32 %i.se, %i.xk
  %i.aat = mul i32 %i.aas, %3
  %i.aau = sext i32 %i.aat to i64                 ; 3 uses
  %i.aav = getelementptr inbounds i8, ptr %4, i64 %i.aau
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !35
  %i.aax = getelementptr inbounds i8, ptr %i.rl, i64 %i.aau
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !35
  %i.aaz = getelementptr inbounds i8, ptr %i.rm, i64 %i.aau
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !35
  %i.abb = add i32 %i.sg, %i.xk
  %i.abc = mul i32 %i.abb, %3
  %i.abd = sext i32 %i.abc to i64                 ; 3 uses
  %i.abe = getelementptr inbounds i8, ptr %4, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !35
  %i.abg = getelementptr inbounds i8, ptr %i.rl, i64 %i.abd
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !35
  %i.abi = getelementptr inbounds i8, ptr %i.rm, i64 %i.abd
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !35
  %i.abk = insertelement <4 x i8> poison, i8 %i.aad, i64 0
  %i.abl = insertelement <4 x i8> %i.abk, i8 %i.aap, i64 1
  %i.abm = insertelement <4 x i8> %i.abl, i8 %i.aay, i64 2
  %i.abn = insertelement <4 x i8> %i.abm, i8 %i.abh, i64 3
  %i.abo = uitofp <4 x i8> %i.abn to <4 x float>  ; 3 uses
  %i.abp = insertelement <4 x i8> poison, i8 %i.aab, i64 0
  %i.abq = insertelement <4 x i8> %i.abp, i8 %i.aan, i64 1
  %i.abr = insertelement <4 x i8> %i.abq, i8 %i.aaw, i64 2
  %i.abs = insertelement <4 x i8> %i.abr, i8 %i.abf, i64 3
  %i.abt = uitofp <4 x i8> %i.abs to <4 x float>  ; 3 uses
  %i.abu = insertelement <4 x i8> poison, i8 %i.aaf, i64 0
  %i.abv = insertelement <4 x i8> %i.abu, i8 %i.aar, i64 1
  %i.abw = insertelement <4 x i8> %i.abv, i8 %i.aba, i64 2
  %i.abx = insertelement <4 x i8> %i.abw, i8 %i.abj, i64 3
  %i.aby = uitofp <4 x i8> %i.abx to <4 x float>  ; 3 uses
  %i.abz = fmul nnan <4 x float> %i.abo, splat (float 5.870000e-01)
  %i.aca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abt, <4 x float> splat (float 2.990000e-01), <4 x float> %i.abz)
  %i.acb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aby, <4 x float> splat (float 1.140000e-01), <4 x float> %i.aca)
  %i.acc = fadd <4 x float> %i.acb, splat (float -1.280000e+02)
  store <4 x float> %i.acc, ptr %i.aag, align 16, !tbaa !112
  %i.acd = fmul nnan <4 x float> %i.abo, splat (float -3.312600e-01)
  %i.ace = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abt, <4 x float> splat (float -1.687400e-01), <4 x float> %i.acd)
  %i.acf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aby, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ace)
  store <4 x float> %i.acf, ptr %i.aah, align 16, !tbaa !112
  %i.acg = fmul nnan <4 x float> %i.abo, splat (float -4.186900e-01)
  %i.ach = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abt, <4 x float> splat (float 5.000000e-01), <4 x float> %i.acg)
  %i.aci = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aby, <4 x float> splat (float f0xBDA685DB), <4 x float> %i.ach)
  store <4 x float> %i.aci, ptr %i.aai, align 16, !tbaa !112
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 8
  %i.acj = add nuw nsw i32 %.2294.us.us, 1        ; 2 uses
  %exitcond384.not = icmp eq i32 %i.acj, %indvars.iv374
  br i1 %exitcond384.not, label %.split296.us313, label %.split.us.us, !llvm.loop !602

.split296.us313:                                  ; preds = %.split.us307, %.split.us.us
  %i.ack = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.u, i32 noundef 8, ptr noundef %i.i, i32 noundef %.3300.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YAC_HT) ; 2 uses
  %i.acl = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.v, i32 noundef 8, ptr noundef %i.j, i32 noundef %.3252297.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT) ; 2 uses
  %i.acm = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.w, i32 noundef 8, ptr noundef %i.j, i32 noundef %.3248298.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #35
  %i.acn = add nuw nsw i32 %.1244299.us, 8        ; 2 uses
  %i.aco = icmp slt i32 %i.acn, %1
  br i1 %i.aco, label %bb.g, label %._crit_edge.us, !llvm.loop !603

._crit_edge.us:                                   ; preds = %.split296.us313
  %i.acp = add nuw nsw i32 %.1242305.us, 8        ; 2 uses
  %i.acq = icmp slt i32 %i.acp, %2
  %indvars.iv.next375 = add i32 %indvars.iv374, 8
  br i1 %i.acq, label %.preheader280.us, label %.loopexit, !llvm.loop !604

.preheader279:                                    ; preds = %middle.block
  br i1 %i.rn, label %.preheader278.lr.ph, label %.loopexit

.preheader278.lr.ph:                              ; preds = %.preheader279
  %i.acr = icmp sgt i32 %1, 0
  %i.acs = add nsw i32 %2, -1                     ; 2 uses
  %i.act = add nsw i32 %1, -1
  %i.acu = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.acv = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  %i.acw = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  br i1 %i.acr, label %.preheader278.us, label %.loopexit

.preheader278.us:                                 ; preds = %.preheader278.lr.ph, %._crit_edge.us332
  %indvars.iv389 = phi i32 [ %indvars.iv.next390, %._crit_edge.us332 ], [ 16, %.preheader278.lr.ph ] ; 2 uses
  %.0234331.us = phi i32 [ %i.aej, %._crit_edge.us332 ], [ 0, %.preheader278.lr.ph ]
  %.0241330.us = phi i32 [ %i.bpr, %._crit_edge.us332 ], [ 0, %.preheader278.lr.ph ] ; 2 uses
  %.0245329.us = phi i32 [ %i.bpo, %._crit_edge.us332 ], [ 0, %.preheader278.lr.ph ]
  %.0249328.us = phi i32 [ %i.bpn, %._crit_edge.us332 ], [ 0, %.preheader278.lr.ph ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader278.us, %middle.block438
  %.1235325.us = phi i32 [ %.0234331.us, %.preheader278.us ], [ %i.aej, %middle.block438 ]
  %.0243324.us = phi i32 [ 0, %.preheader278.us ], [ %i.bpp, %middle.block438 ] ; 2 uses
  %.1246323.us = phi i32 [ %.0245329.us, %.preheader278.us ], [ %i.bpo, %middle.block438 ]
  %.1250322.us = phi i32 [ %.0249328.us, %.preheader278.us ], [ %i.bpn, %middle.block438 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #35
  %i.acx = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  %.not265.us = icmp eq i32 %i.acx, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.1317.us = phi i32 [ %.0241330.us, %bb.h ], [ %i.aef, %bb.k ] ; 2 uses
  %.0237316.us = phi i32 [ 0, %bb.h ], [ %i.add, %bb.k ] ; 2 uses
  %i.acy = call i32 @llvm.smin.i32(i32 %.1317.us, i32 %i.acs) ; 2 uses
  %i.acz = sub nsw i32 %i.acs, %i.acy
  %i.ada = select i1 %.not265.us, i32 %i.acy, i32 %i.acz
  %i.adb = mul nsw i32 %i.ada, %1
  %i.adc = sext i32 %.0237316.us to i64
  %i.add = add i32 %.0237316.us, 16               ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %bb.j ], [ %i.adc, %bb.i ] ; 4 uses
  %.1227315.us = phi i32 [ %i.aee, %bb.j ], [ %.0243324.us, %bb.i ] ; 2 uses
  %i.ade = call i32 @llvm.smin.i32(i32 %.1227315.us, i32 %i.act)
  %i.adf = add i32 %i.ade, %i.adb
  %i.adg = mul i32 %i.adf, %3
  %i.adh = sext i32 %i.adg to i64                 ; 3 uses
  %i.adi = getelementptr inbounds i8, ptr %4, i64 %i.adh
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !35
  %i.adk = uitofp i8 %i.adj to float              ; 3 uses
  %i.adl = getelementptr inbounds i8, ptr %i.rl, i64 %i.adh
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !35
  %i.adn = uitofp i8 %i.adm to float              ; 3 uses
  %i.ado = getelementptr inbounds i8, ptr %i.rm, i64 %i.adh
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !35
  %i.adq = uitofp i8 %i.adp to float              ; 3 uses
  %i.adr = fmul nnan float %i.adn, 5.870000e-01
  %i.ads = call float @llvm.fmuladd.f32(float %i.adk, float 2.990000e-01, float %i.adr)
  %i.adt = call float @llvm.fmuladd.f32(float %i.adq, float 1.140000e-01, float %i.ads)
  %i.adu = fadd float %i.adt, -1.280000e+02
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv385
  store float %i.adu, ptr %i.adv, align 4, !tbaa !112
  %i.adw = fmul nnan float %i.adn, -3.312600e-01
  %i.adx = call float @llvm.fmuladd.f32(float %i.adk, float -1.687400e-01, float %i.adw)
  %i.ady = call float @llvm.fmuladd.f32(float %i.adq, float 5.000000e-01, float %i.adx)
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv385
  store float %i.ady, ptr %i.adz, align 4, !tbaa !112
  %i.aea = fmul nnan float %i.adn, -4.186900e-01
  %i.aeb = call float @llvm.fmuladd.f32(float %i.adk, float 5.000000e-01, float %i.aea)
  %i.aec = call float @llvm.fmuladd.f32(float %i.adq, float f0xBDA685DB, float %i.aeb)
  %i.aed = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv385
  store float %i.aec, ptr %i.aed, align 4, !tbaa !112
  %i.aee = add nuw nsw i32 %.1227315.us, 1
  %indvars.iv.next386 = add nsw i64 %indvars.iv385, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next386 to i32
  %exitcond388.not = icmp eq i32 %i.add, %lftr.wideiv
  br i1 %exitcond388.not, label %bb.k, label %bb.j, !llvm.loop !605

bb.k:                                             ; preds = %bb.j
  %i.aef = add nuw i32 %.1317.us, 1               ; 2 uses
  %exitcond391.not = icmp eq i32 %i.aef, %indvars.iv389
  br i1 %exitcond391.not, label %vector.ph432, label %bb.i, !llvm.loop !606

vector.ph432:                                     ; preds = %bb.k
  %i.aeg = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, i32 noundef 16, ptr noundef %i.i, i32 noundef %.1235325.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YAC_HT)
  %i.aeh = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.acu, i32 noundef 16, ptr noundef %i.i, i32 noundef %i.aeg, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YAC_HT)
  %i.aei = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.acv, i32 noundef 16, ptr noundef %i.i, i32 noundef %i.aeh, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YAC_HT)
  %i.aej = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.acw, i32 noundef 16, ptr noundef %i.i, i32 noundef %i.aei, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YAC_HT) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #35
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph432
  %index434 = phi i64 [ 0, %vector.ph432 ], [ %index.next437, %vector.body433 ] ; 6 uses
  %i.aek = shl nuw i64 %index434, 3               ; 2 uses
  %i.ael = shl nuw nsw i64 %index434, 5           ; 33 uses
  %i.aem = shl i64 %index434, 5                   ; 32 uses
  %i.aen = or disjoint i64 %i.aem, 32             ; 2 uses
  %i.aeo = shl i64 %index434, 5                   ; 32 uses
  %i.aep = or disjoint i64 %i.aeo, 64             ; 2 uses
  %i.aeq = shl i64 %index434, 5                   ; 32 uses
  %i.aer = or disjoint i64 %i.aeq, 96             ; 2 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ael
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aen
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aep
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aer
  %i.aew = load float, ptr %i.aes, align 16, !tbaa !112
  %i.aex = load float, ptr %i.aet, align 16, !tbaa !112
  %i.aey = load float, ptr %i.aeu, align 16, !tbaa !112
  %i.aez = load float, ptr %i.aev, align 16, !tbaa !112
  %i.afa = insertelement <4 x float> poison, float %i.aew, i64 0
  %i.afb = insertelement <4 x float> %i.afa, float %i.aex, i64 1
  %i.afc = insertelement <4 x float> %i.afb, float %i.aey, i64 2
  %i.afd = insertelement <4 x float> %i.afc, float %i.aez, i64 3
  %i.afe = or disjoint i64 %i.ael, 1              ; 2 uses
  %i.aff = or disjoint i64 %i.aem, 33             ; 2 uses
  %i.afg = or disjoint i64 %i.aeo, 65             ; 2 uses
  %i.afh = or disjoint i64 %i.aeq, 97             ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.afe
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aff
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.afg
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.afh
  %i.afm = load float, ptr %i.afi, align 4, !tbaa !112
  %i.afn = load float, ptr %i.afj, align 4, !tbaa !112
  %i.afo = load float, ptr %i.afk, align 4, !tbaa !112
  %i.afp = load float, ptr %i.afl, align 4, !tbaa !112
  %i.afq = insertelement <4 x float> poison, float %i.afm, i64 0
  %i.afr = insertelement <4 x float> %i.afq, float %i.afn, i64 1
  %i.afs = insertelement <4 x float> %i.afr, float %i.afo, i64 2
  %i.aft = insertelement <4 x float> %i.afs, float %i.afp, i64 3
  %i.afu = or disjoint i64 %i.ael, 16             ; 2 uses
  %i.afv = or disjoint i64 %i.aem, 48             ; 2 uses
  %i.afw = or disjoint i64 %i.aeo, 80             ; 2 uses
  %i.afx = or disjoint i64 %i.aeq, 112            ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.afu
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.afv
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.afw
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.afx
  %i.agc = load float, ptr %i.afy, align 16, !tbaa !112
  %i.agd = load float, ptr %i.afz, align 16, !tbaa !112
  %i.age = load float, ptr %i.aga, align 16, !tbaa !112
  %i.agf = load float, ptr %i.agb, align 16, !tbaa !112
  %i.agg = insertelement <4 x float> poison, float %i.agc, i64 0
  %i.agh = insertelement <4 x float> %i.agg, float %i.agd, i64 1
  %i.agi = insertelement <4 x float> %i.agh, float %i.age, i64 2
  %i.agj = insertelement <4 x float> %i.agi, float %i.agf, i64 3
  %i.agk = or disjoint i64 %i.ael, 17             ; 2 uses
  %i.agl = or disjoint i64 %i.aem, 49             ; 2 uses
  %i.agm = or disjoint i64 %i.aeo, 81             ; 2 uses
  %i.agn = or disjoint i64 %i.aeq, 113            ; 2 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.agk
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.agl
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.agm
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.agn
  %i.ags = load float, ptr %i.ago, align 4, !tbaa !112
  %i.agt = load float, ptr %i.agp, align 4, !tbaa !112
  %i.agu = load float, ptr %i.agq, align 4, !tbaa !112
  %i.agv = load float, ptr %i.agr, align 4, !tbaa !112
  %i.agw = insertelement <4 x float> poison, float %i.ags, i64 0
  %i.agx = insertelement <4 x float> %i.agw, float %i.agt, i64 1
  %i.agy = insertelement <4 x float> %i.agx, float %i.agu, i64 2
  %i.agz = insertelement <4 x float> %i.agy, float %i.agv, i64 3
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aek
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ael
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aen
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aep
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aer
  %i.ahf = load float, ptr %i.ahb, align 16, !tbaa !112
  %i.ahg = load float, ptr %i.ahc, align 16, !tbaa !112
  %i.ahh = load float, ptr %i.ahd, align 16, !tbaa !112
  %i.ahi = load float, ptr %i.ahe, align 16, !tbaa !112
  %i.ahj = insertelement <4 x float> poison, float %i.ahf, i64 0
  %i.ahk = insertelement <4 x float> %i.ahj, float %i.ahg, i64 1
  %i.ahl = insertelement <4 x float> %i.ahk, float %i.ahh, i64 2
  %i.ahm = insertelement <4 x float> %i.ahl, float %i.ahi, i64 3
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.afe
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aff
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.afg
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.afh
  %i.ahr = load float, ptr %i.ahn, align 4, !tbaa !112
  %i.ahs = load float, ptr %i.aho, align 4, !tbaa !112
  %i.aht = load float, ptr %i.ahp, align 4, !tbaa !112
  %i.ahu = load float, ptr %i.ahq, align 4, !tbaa !112
  %i.ahv = insertelement <4 x float> poison, float %i.ahr, i64 0
  %i.ahw = insertelement <4 x float> %i.ahv, float %i.ahs, i64 1
  %i.ahx = insertelement <4 x float> %i.ahw, float %i.aht, i64 2
  %i.ahy = insertelement <4 x float> %i.ahx, float %i.ahu, i64 3
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.afu
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.afv
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.afw
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.afx
  %i.aid = load float, ptr %i.ahz, align 16, !tbaa !112
  %i.aie = load float, ptr %i.aia, align 16, !tbaa !112
  %i.aif = load float, ptr %i.aib, align 16, !tbaa !112
  %i.aig = load float, ptr %i.aic, align 16, !tbaa !112
  %i.aih = insertelement <4 x float> poison, float %i.aid, i64 0
  %i.aii = insertelement <4 x float> %i.aih, float %i.aie, i64 1
  %i.aij = insertelement <4 x float> %i.aii, float %i.aif, i64 2
  %i.aik = insertelement <4 x float> %i.aij, float %i.aig, i64 3
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.agk
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.agl
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.agm
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.agn
  %i.aip = load float, ptr %i.ail, align 4, !tbaa !112
  %i.aiq = load float, ptr %i.aim, align 4, !tbaa !112
  %i.air = load float, ptr %i.ain, align 4, !tbaa !112
  %i.ais = load float, ptr %i.aio, align 4, !tbaa !112
  %i.ait = insertelement <4 x float> poison, float %i.aip, i64 0
  %i.aiu = insertelement <4 x float> %i.ait, float %i.aiq, i64 1
  %i.aiv = insertelement <4 x float> %i.aiu, float %i.air, i64 2
  %i.aiw = insertelement <4 x float> %i.aiv, float %i.ais, i64 3
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aek
  %i.aiy = or disjoint i64 %i.ael, 2              ; 2 uses
  %i.aiz = or disjoint i64 %i.aem, 34             ; 2 uses
  %i.aja = or disjoint i64 %i.aeo, 66             ; 2 uses
  %i.ajb = or disjoint i64 %i.aeq, 98             ; 2 uses
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aiy
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aiz
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aja
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ajb
  %i.ajg = load float, ptr %i.ajc, align 8, !tbaa !112
  %i.ajh = load float, ptr %i.ajd, align 8, !tbaa !112
  %i.aji = load float, ptr %i.aje, align 8, !tbaa !112
  %i.ajj = load float, ptr %i.ajf, align 8, !tbaa !112
  %i.ajk = insertelement <4 x float> poison, float %i.ajg, i64 0
  %i.ajl = insertelement <4 x float> %i.ajk, float %i.ajh, i64 1
  %i.ajm = insertelement <4 x float> %i.ajl, float %i.aji, i64 2
  %i.ajn = insertelement <4 x float> %i.ajm, float %i.ajj, i64 3
  %i.ajo = or disjoint i64 %i.ael, 3              ; 2 uses
  %i.ajp = or disjoint i64 %i.aem, 35             ; 2 uses
  %i.ajq = or disjoint i64 %i.aeo, 67             ; 2 uses
  %i.ajr = or disjoint i64 %i.aeq, 99             ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ajo
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ajp
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ajq
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ajr
  %i.ajw = load float, ptr %i.ajs, align 4, !tbaa !112
  %i.ajx = load float, ptr %i.ajt, align 4, !tbaa !112
  %i.ajy = load float, ptr %i.aju, align 4, !tbaa !112
  %i.ajz = load float, ptr %i.ajv, align 4, !tbaa !112
  %i.aka = insertelement <4 x float> poison, float %i.ajw, i64 0
  %i.akb = insertelement <4 x float> %i.aka, float %i.ajx, i64 1
  %i.akc = insertelement <4 x float> %i.akb, float %i.ajy, i64 2
  %i.akd = insertelement <4 x float> %i.akc, float %i.ajz, i64 3
  %i.ake = or disjoint i64 %i.ael, 18             ; 2 uses
  %i.akf = or disjoint i64 %i.aem, 50             ; 2 uses
  %i.akg = or disjoint i64 %i.aeo, 82             ; 2 uses
  %i.akh = or disjoint i64 %i.aeq, 114            ; 2 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ake
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.akf
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.akg
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.akh
  %i.akm = load float, ptr %i.aki, align 8, !tbaa !112
  %i.akn = load float, ptr %i.akj, align 8, !tbaa !112
  %i.ako = load float, ptr %i.akk, align 8, !tbaa !112
  %i.akp = load float, ptr %i.akl, align 8, !tbaa !112
  %i.akq = insertelement <4 x float> poison, float %i.akm, i64 0
  %i.akr = insertelement <4 x float> %i.akq, float %i.akn, i64 1
  %i.aks = insertelement <4 x float> %i.akr, float %i.ako, i64 2
  %i.akt = insertelement <4 x float> %i.aks, float %i.akp, i64 3
  %i.aku = or disjoint i64 %i.ael, 19             ; 2 uses
  %i.akv = or disjoint i64 %i.aem, 51             ; 2 uses
  %i.akw = or disjoint i64 %i.aeo, 83             ; 2 uses
  %i.akx = or disjoint i64 %i.aeq, 115            ; 2 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aku
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.akv
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.akw
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.akx
  %i.alc = load float, ptr %i.aky, align 4, !tbaa !112
  %i.ald = load float, ptr %i.akz, align 4, !tbaa !112
  %i.ale = load float, ptr %i.ala, align 4, !tbaa !112
  %i.alf = load float, ptr %i.alb, align 4, !tbaa !112
  %i.alg = insertelement <4 x float> poison, float %i.alc, i64 0
  %i.alh = insertelement <4 x float> %i.alg, float %i.ald, i64 1
  %i.ali = insertelement <4 x float> %i.alh, float %i.ale, i64 2
  %i.alj = insertelement <4 x float> %i.ali, float %i.alf, i64 3
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aiy
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aiz
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aja
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ajb
end_hunk_1
