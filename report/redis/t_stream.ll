Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_stream?download=true
inline.NumInlined: 273
inline.NumDeleted: 13
begin_hunk_0_@streamIteratorGetID:bb.a
  %i.dt = call ptr @lpGet(ptr noundef %i.ds, ptr noundef nonnull %i.c, ptr noundef null) #18 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %lpGetIntegerIfValid.exit203
  %i.dv = load i64, ptr %i.c, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit206

bb.al:                                            ; preds = %lpGetIntegerIfValid.exit203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 0, ptr %i.d, align 8, !tbaa !21
  %i.dw = load i64, ptr %i.c, align 8, !tbaa !13
  %i.dx = call i32 @string2ll(ptr noundef nonnull %i.dt, i64 noundef %i.dw, ptr noundef nonnull %i.d) #18
  %.not11.i204 = icmp eq i32 %i.dx, 0
  br i1 %.not11.i204, label %bb.am, label %bb.an, !prof !63

bb.am:                                            ; preds = %bb.al
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dy = load i64, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %lpGetIntegerIfValid.exit206

lpGetIntegerIfValid.exit206:                      ; preds = %bb.ak, %bb.an
  %.0.i205 = phi i64 [ %i.dv, %bb.ak ], [ %i.dy, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.dz = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ea = add i64 %i.dz, %.0.i205
  store i64 %i.ea, ptr %i.ab, align 8, !tbaa !49
  %i.eb = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.ec = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ed = call ptr @lpNext(ptr noundef %i.eb, ptr noundef %i.ec) #18 ; 3 uses
  store ptr %i.ed, ptr %i.o, align 8, !tbaa !126
  %i.ee = and i64 %.0.i199, 2                     ; 2 uses
  %.not181 = icmp eq i64 %i.ee, 0                 ; 4 uses
  br i1 %.not181, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %lpGetIntegerIfValid.exit206
  %i.ef = load i64, ptr %i.y, align 8, !tbaa !132 ; 2 uses
  store i64 %i.ef, ptr %2, align 8, !tbaa !13
  br label %bb.au

bb.ap:                                            ; preds = %lpGetIntegerIfValid.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.eg = call ptr @lpGet(ptr noundef %i.ed, ptr noundef nonnull %i.a, ptr noundef null) #18 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit209

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !21
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ek = call i32 @string2ll(ptr noundef nonnull %i.eg, i64 noundef %i.ej, ptr noundef nonnull %i.b) #18
  %.not11.i207 = icmp eq i32 %i.ek, 0
  br i1 %.not11.i207, label %bb.as, label %bb.at, !prof !63

bb.as:                                            ; preds = %bb.ar
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.el = load i64, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %lpGetIntegerIfValid.exit209

lpGetIntegerIfValid.exit209:                      ; preds = %bb.aq, %bb.at
  %.0.i208 = phi i64 [ %i.ei, %bb.aq ], [ %i.el, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i64 %.0.i208, ptr %2, align 8, !tbaa !13
  %i.em = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.eo = call ptr @lpNext(ptr noundef %i.em, ptr noundef %i.en) #18 ; 2 uses
  store ptr %i.eo, ptr %i.o, align 8, !tbaa !126
  %.pr215 = load i64, ptr %2, align 8, !tbaa !13
  br label %bb.au

bb.au:                                            ; preds = %lpGetIntegerIfValid.exit209, %bb.ao
  %i.ep = phi ptr [ %i.eo, %lpGetIntegerIfValid.exit209 ], [ %i.ed, %bb.ao ] ; 3 uses
  %i.eq = phi i64 [ %.pr215, %lpGetIntegerIfValid.exit209 ], [ %i.ef, %bb.ao ] ; 3 uses
  %i.er = icmp sgt i64 %i.eq, -1
  br i1 %i.er, label %bb.aw, label %bb.av, !prof !43

bb.av:                                            ; preds = %bb.au
  call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1427) #18
  call void @abort() #19
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.es = load i32, ptr %i.q, align 4, !tbaa !120
  %.not182 = icmp eq i32 %i.es, 0
  %i.et = load i64, ptr %1, align 8, !tbaa !50    ; 8 uses
  br i1 %.not182, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.eu = load i64, ptr %i.af, align 8, !tbaa !122 ; 2 uses
  %i.ev = icmp ugt i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ew = icmp eq i64 %i.et, %i.eu
  br i1 %i.ew, label %bb.az, label %bb.bn

bb.az:                                            ; preds = %bb.ay
  %i.ex = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ey = load i64, ptr %i.ag, align 8, !tbaa !123
  %.not183 = icmp ult i64 %i.ex, %i.ey
  br i1 %.not183, label %bb.bn, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.ez = load i32, ptr %i.ae, align 8, !tbaa !121
  %.not184 = icmp eq i32 %i.ez, 0
  %i.fa = and i64 %.0.i199, 1
  %.not185 = icmp eq i64 %i.fa, 0
  %or.cond = select i1 %.not184, i1 true, i1 %.not185
  br i1 %or.cond, label %bb.bb, label %bb.bn

bb.bb:                                            ; preds = %bb.ba
  %i.fb = load i64, ptr %i.ac, align 8, !tbaa !124 ; 2 uses
  %i.fc = icmp ugt i64 %i.et, %i.fb
  br i1 %i.fc, label %.thread218, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fd = icmp eq i64 %i.et, %i.fb
  br i1 %i.fd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fe = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ff = load i64, ptr %i.ad, align 8, !tbaa !125
  %i.fg = icmp ugt i64 %i.fe, %i.ff
  br i1 %i.fg, label %.thread218, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fh = trunc i64 %.0.i199 to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.fh, ptr %i.fi, align 8, !tbaa !138
  br i1 %.not181, label %.thread218, label %.thread218.sink.split

bb.bf:                                            ; preds = %bb.aw
  %i.fj = load i64, ptr %i.ac, align 8, !tbaa !124 ; 2 uses
  %i.fk = icmp ult i64 %i.et, %i.fj
  br i1 %i.fk, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fl = icmp eq i64 %i.et, %i.fj
  br i1 %i.fl, label %bb.bh, label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  %i.fm = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.fn = load i64, ptr %i.ad, align 8, !tbaa !125
  %.not186 = icmp ugt i64 %i.fm, %i.fn
  br i1 %.not186, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %i.fo = load i32, ptr %i.ae, align 8, !tbaa !121
  %.not187 = icmp eq i32 %i.fo, 0
  %i.fp = and i64 %.0.i199, 1
  %.not188 = icmp eq i64 %i.fp, 0
  %or.cond191 = select i1 %.not187, i1 true, i1 %.not188
  br i1 %or.cond191, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.fq = load i64, ptr %i.af, align 8, !tbaa !122 ; 2 uses
  %i.fr = icmp ult i64 %i.et, %i.fq
  br i1 %i.fr, label %.thread218, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fs = icmp eq i64 %i.et, %i.fq
  br i1 %i.fs, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ft = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.fu = load i64, ptr %i.ag, align 8, !tbaa !123
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %.thread218, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fw = trunc i64 %.0.i199 to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !138
  br i1 %.not181, label %.thread218, label %.thread218.sink.split

bb.bn:                                            ; preds = %bb.ba, %bb.ay, %bb.az
  %.not249 = icmp eq i64 %i.eq, 0
  br i1 %.not249, label %.loopexit225.backedge, label %.lr.ph247.preheader

.loopexit225.backedge:                            ; preds = %bb.bp, %.lr.ph247, %bb.bn
  %.be = phi ptr [ %i.gb, %.lr.ph247 ], [ %i.ep, %bb.bn ], [ %i.gg, %bb.bp ]
  br label %.loopexit225

.lr.ph247.preheader:                              ; preds = %bb.bn
  %.lobit = lshr exact i64 %i.ee, 1
  %i.fy = xor i64 %.lobit, 1
  %spec.select221 = shl nuw nsw i64 %i.eq, %i.fy
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %i.fz = phi ptr [ %i.gb, %.lr.ph247 ], [ %i.ep, %.lr.ph247.preheader ]
  %.0150245 = phi i64 [ %i.gc, %.lr.ph247 ], [ 0, %.lr.ph247.preheader ]
  %i.ga = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.gb = call ptr @lpNext(ptr noundef %i.ga, ptr noundef %i.fz) #18 ; 3 uses
  store ptr %i.gb, ptr %i.o, align 8, !tbaa !126
  %i.gc = add nuw nsw i64 %.0150245, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gc, %spec.select221
  br i1 %exitcond.not, label %.loopexit225.backedge, label %.lr.ph247, !llvm.loop !139

bb.bo:                                            ; preds = %bb.bh, %bb.bg, %bb.bi
  %spec.select = select i1 %.not181, i64 5, i64 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bp
  %i.gd = phi ptr [ %i.ep, %bb.bo ], [ %i.gg, %bb.bp ]
  %.1244 = phi i64 [ %spec.select, %bb.bo ], [ %i.ge, %bb.bp ]
  %i.ge = add nsw i64 %.1244, -1                  ; 2 uses
  %i.gf = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.gg = call ptr @lpPrev(ptr noundef %i.gf, ptr noundef %i.gd) #18 ; 3 uses
  store ptr %i.gg, ptr %i.o, align 8, !tbaa !126
  %.not190 = icmp eq i64 %i.ge, 0
  br i1 %.not190, label %.loopexit225.backedge, label %bb.bp, !llvm.loop !140

.thread218.sink.split:                            ; preds = %bb.bm, %bb.be
  %i.gh = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !141
  br label %.thread218

.thread218:                                       ; preds = %.thread211, %bb.f, %.thread218.sink.split, %bb.bl, %bb.bd, %bb.bb, %bb.bj, %bb.be, %bb.bm
  %.3 = phi i32 [ 1, %bb.be ], [ 1, %bb.bm ], [ 0, %bb.bj ], [ 0, %bb.bl ], [ 1, %.thread218.sink.split ], [ 0, %bb.bd ], [ 0, %bb.bb ], [ 0, %bb.f ], [ 0, %.thread211 ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local void @streamIteratorStop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @raxStop(ptr noundef nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @streamAppendItem(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.raxIterator, align 8        ; 12 uses
  %i.i = alloca [2 x i64], align 16               ; 10 uses
  %i.j = alloca ptr, align 8                      ; 11 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca [21 x i8], align 16               ; 4 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not154 = icmp eq i32 %5, 0
  br i1 %.not154, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0196.0.copyload = load i64, ptr %4, align 8, !tbaa !13
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %streamNextID.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !142  ; 3 uses
  %i.o = load i64, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !143  ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %streamNextID.exit.thread295

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__errno_location() #21
  store i32 33, ptr %i.t, align 4, !tbaa !9
  br label %bb.bx

bb.g:                                             ; preds = %bb.d
  %.sroa.17.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.17.0.copyload209 = load i64, ptr %.sroa.17.0..sroa_idx208, align 8, !tbaa !13
  br label %streamNextID.exit

bb.h:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = tail call i64 @commandTimeSnapshot() #18 ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !50   ; 5 uses
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %streamNextID.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.17.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.17.0.copyload217 = load i64, ptr %.sroa.17.0..sroa_idx216, align 8, !tbaa !13 ; 2 uses
  %i.y = icmp eq i64 %.sroa.17.0.copyload217, -1
  br i1 %i.y, label %bb.j, label %streamNextID.exit.thread295

bb.j:                                             ; preds = %bb.i
  %i.z = icmp eq i64 %i.w, -1
  br i1 %i.z, label %streamNextID.exit.thread.thread, label %streamNextID.exit.thread298

streamNextID.exit.thread298:                      ; preds = %bb.j
  %i.aa = add nuw i64 %i.w, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %streamCompareID.exit

streamNextID.exit.thread295:                      ; preds = %bb.i, %bb.e
  %.sink = phi i64 [ %i.r, %bb.e ], [ %.sroa.17.0.copyload217, %bb.i ]
  %.ph = phi i64 [ %i.n, %bb.e ], [ %i.w, %bb.i ] ; 2 uses
  %i.ac = add nuw i64 %.sink, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %streamNextID.exit.thread

streamNextID.exit:                                ; preds = %bb.h, %bb.c, %bb.g
  %i.ae = phi i64 [ %.pre, %bb.c ], [ %i.w, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %.sroa.0196.0 = phi i64 [ %.sroa.0196.0.copyload, %bb.c ], [ %i.v, %bb.h ], [ %i.o, %bb.g ] ; 3 uses
  %.sroa.17.0 = phi i64 [ %.sroa.17.0.copyload, %bb.c ], [ 0, %bb.h ], [ %.sroa.17.0.copyload209, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = icmp ugt i64 %.sroa.0196.0, %i.ae
  br i1 %i.ag, label %streamCompareID.exit, label %streamNextID.exit.thread

streamNextID.exit.thread:                         ; preds = %streamNextID.exit.thread295, %streamNextID.exit
  %i.ah = phi i64 [ %i.ae, %streamNextID.exit ], [ %.ph, %streamNextID.exit.thread295 ]
  %i.ai = phi ptr [ %i.af, %streamNextID.exit ], [ %i.ad, %streamNextID.exit.thread295 ]
  %.sroa.17.0234 = phi i64 [ %.sroa.17.0, %streamNextID.exit ], [ %i.ac, %streamNextID.exit.thread295 ] ; 2 uses
  %.sroa.0196.0232 = phi i64 [ %.sroa.0196.0, %streamNextID.exit ], [ %.ph, %streamNextID.exit.thread295 ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.0196.0232, %i.ah
  br i1 %i.aj, label %streamNextID.exit.thread.thread, label %bb.k

bb.k:                                             ; preds = %streamNextID.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.am = icmp ugt i64 %.sroa.17.0234, %i.al
  br i1 %i.am, label %streamCompareID.exit, label %streamNextID.exit.thread.thread

streamCompareID.exit:                             ; preds = %streamNextID.exit.thread298, %streamNextID.exit, %bb.k
  %i.an = phi ptr [ %i.ai, %bb.k ], [ %i.af, %streamNextID.exit ], [ %i.ab, %streamNextID.exit.thread298 ] ; 2 uses
  %.sroa.17.0235 = phi i64 [ %.sroa.17.0234, %bb.k ], [ %.sroa.17.0, %streamNextID.exit ], [ 0, %streamNextID.exit.thread298 ] ; 6 uses
  %.sroa.0196.0233 = phi i64 [ %.sroa.0196.0232, %bb.k ], [ %.sroa.0196.0, %streamNextID.exit ], [ %i.aa, %streamNextID.exit.thread298 ] ; 6 uses
  %i.ao = icmp sgt i64 %2, 0                      ; 4 uses
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %streamCompareID.exit
  %i.ap = shl nuw i64 %2, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 1)
  br label %.lr.ph

streamNextID.exit.thread.thread:                  ; preds = %bb.j, %bb.k, %streamNextID.exit.thread
  %i.aq = tail call ptr @__errno_location() #21
  store i32 33, ptr %i.aq, align 4, !tbaa !9
  br label %bb.bx

._crit_edge:                                      ; preds = %sdslen.exit
  %i.ar = icmp ugt i64 %i.bl, 1073741824
  br i1 %i.ar, label %bb.q, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sdslen.exit
  %.0144249 = phi i64 [ %i.bm, %sdslen.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0145248 = phi i64 [ %i.bl, %sdslen.exit ], [ 0, %.lr.ph.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0144249
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !144
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 5 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -1
  %.val.i = load i8, ptr %i.aw, align 1, !tbaa !69 ; 2 uses
  %i.ax = and i8 %.val.i, 7
  switch i8 %i.ax, label %sdslen.exit [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %.lr.ph
  %i.ay = lshr i8 %.val.i, 3
  %i.az = zext nneg i8 %i.ay to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 -3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !69
  %i.bc = zext i8 %i.bb to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds i8, ptr %i.av, i64 -5
  %i.be = load i16, ptr %i.bd, align 1, !tbaa !77
  %i.bf = zext i16 %i.be to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %.lr.ph
end_hunk_0
