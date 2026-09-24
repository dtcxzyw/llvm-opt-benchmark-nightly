Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shortest?download=true
inline.NumInlined: 19
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Pshortestpath:bb.a
  %tris.val265 = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %tris.val265
  br i1 %i.gf, label %.preheader.i.preheader, label %.loopexit290, !llvm.loop !42

.lr.ph326:                                        ; preds = %.preheader289, %bb.al
  %.1221325 = phi i64 [ %i.gh, %bb.al ], [ 0, %.preheader289 ] ; 3 uses
  %i.gg = tail call fastcc i32 @pointintri(i64 noundef %.1221325, ptr noundef %1)
  %.not247 = icmp eq i32 %i.gg, 0
  %tris.val263.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 3 uses
  br i1 %.not247, label %bb.al, label %._crit_edge327

bb.al:                                            ; preds = %.lr.ph326
  %i.gh = add nuw i64 %.1221325, 1                ; 3 uses
  %i.gi = icmp ult i64 %i.gh, %tris.val263.pre.pre
  br i1 %i.gi, label %.lr.ph326, label %._crit_edge327, !llvm.loop !43

._crit_edge327:                                   ; preds = %bb.al, %.lr.ph326
  %.1221.lcssa = phi i64 [ %i.gh, %bb.al ], [ %.1221325, %.lr.ph326 ] ; 6 uses
  %i.gj = icmp eq i64 %.1221.lcssa, %tris.val263.pre.pre
  br i1 %i.gj, label %._crit_edge327.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge327
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.not356 = icmp eq i64 %tris.val263.pre.pre, 0
  br i1 %.not356, label %._crit_edge334.thread, label %.lr.ph333

._crit_edge327.thread:                            ; preds = %.preheader291, %.preheader289, %._crit_edge327
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gl, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 182, ptr noundef nonnull @.str.6) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

.lr.ph333:                                        ; preds = %.preheader, %bb.am
  %.2222332 = phi i64 [ %i.go, %bb.am ], [ 0, %.preheader ] ; 3 uses
  %i.gn = tail call fastcc i32 @pointintri(i64 noundef %.2222332, ptr noundef nonnull %i.gk)
  %.not248 = icmp eq i32 %i.gn, 0
  %tris.val.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  br i1 %.not248, label %bb.am, label %._crit_edge334

bb.am:                                            ; preds = %.lr.ph333
  %i.go = add nuw i64 %.2222332, 1                ; 3 uses
  %i.gp = icmp ult i64 %i.go, %tris.val.pre.pre
  br i1 %i.gp, label %.lr.ph333, label %._crit_edge334, !llvm.loop !44

._crit_edge334:                                   ; preds = %bb.am, %.lr.ph333
  %.2222.lcssa.ph = phi i64 [ %i.go, %bb.am ], [ %.2222332, %.lr.ph333 ] ; 3 uses
  %i.gq = icmp eq i64 %.2222.lcssa.ph, %tris.val.pre.pre
  br i1 %i.gq, label %._crit_edge334.thread, label %bb.an

._crit_edge334.thread:                            ; preds = %.preheader, %._crit_edge334
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @.str.7) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

bb.an:                                            ; preds = %._crit_edge334
  %i.gt = tail call fastcc zeroext i1 @marktripath(i64 noundef %.1221.lcssa, i64 noundef %.2222.lcssa.ph)
  br i1 %i.gt, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef nonnull @.str.8) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  %i.gw = tail call fastcc i32 @growops(i64 noundef 2)
  %.not249 = icmp eq i32 %i.gw, 0
  br i1 %.not249, label %bb.ap, label %bb.ce

bb.ap:                                            ; preds = %bb.ao
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.gx, align 8, !tbaa !49
  %i.gy = load ptr, ptr @ops, align 8, !tbaa !32  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !61
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.gy, ptr %2, align 8, !tbaa !55
  br label %bb.ce

bb.aq:                                            ; preds = %bb.an
  %i.ha = icmp eq i64 %.1221.lcssa, %.2222.lcssa.ph
  br i1 %i.ha, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  %i.hb = load i64, ptr @opn, align 8, !tbaa !33
  %.not.i = icmp ult i64 %i.hb, 2
  %.pre381 = load ptr, ptr @ops, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.hc = tail call dereferenceable_or_null(32) ptr @realloc(ptr noundef %.pre381, i64 noundef 32) #17 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %growops.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.hc, ptr @ops, align 8, !tbaa !32
  store i64 2, ptr @opn, align 8, !tbaa !33
  br label %bb.au

growops.exit:                                     ; preds = %bb.as
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.he, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 441, ptr noundef nonnull @.str.11) #14 ; 0 uses
  br label %bb.ce

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.hg = phi ptr [ %.pre381, %bb.ar ], [ %i.hc, %bb.at ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.hh, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !61
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.hg, ptr %2, align 8, !tbaa !55
  br label %bb.ce

bb.av:                                            ; preds = %bb.aq
  store ptr %1, ptr %3, align 16, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.hj, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.gk, ptr %i.hk, align 16, !tbaa !26
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.hl, align 8, !tbaa !58
  %.not19.i.not = icmp eq i64 %i.aa, 0
  br i1 %.not19.i.not, label %bb.aw, label %add2dq.exit

bb.aw:                                            ; preds = %bb.av
  %i.hm = load ptr, ptr %i.p, align 8, !tbaa !27
  store ptr %i.hm, ptr %i.hj, align 8, !tbaa !58
  br label %add2dq.exit

add2dq.exit:                                      ; preds = %bb.av, %bb.aw
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !20
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ac
  store ptr %3, ptr %i.hn, align 8, !tbaa !27
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 %i.ac, ptr %i.ho, align 8, !tbaa !34
  %.not250343 = icmp eq i64 %.1221.lcssa, -1
  br i1 %.not250343, label %._crit_edge346, label %.lr.ph345

.lr.ph345:                                        ; preds = %add2dq.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph345, %.loopexit
  %.3223344 = phi i64 [ %.1221.lcssa, %.lr.ph345 ], [ %i.mh, %.loopexit ] ; 2 uses
  %i.hq = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.lk, %.loopexit ] ; 8 uses
  %i.hr = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.lj, %.loopexit ] ; 7 uses
  %i.hs = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.li, %.loopexit ] ; 3 uses
  %i.ht = load ptr, ptr @tris, align 8, !tbaa !18
  %i.hu = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.3223344) #12
  %i.hv = getelementptr inbounds nuw [80 x i8], ptr %i.ht, i64 %i.hu ; 9 uses
  store i32 2, ptr %i.hv, align 8, !tbaa !35
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 3 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !31 ; 2 uses
  %.not254 = icmp eq i64 %i.hx, -1
  br i1 %.not254, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hy = load ptr, ptr @tris, align 8, !tbaa !18
  %i.hz = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.hx) #12
  %i.ia = getelementptr inbounds nuw [80 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !35
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !31 ; 2 uses
  %.not254.1 = icmp eq i64 %i.ie, -1
  br i1 %.not254.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.if = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ig = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.ie) #12
  %i.ih = getelementptr inbounds nuw [80 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !35
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !31 ; 2 uses
  %.not254.2 = icmp eq i64 %i.il, -1
  br i1 %.not254.2, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.im = load ptr, ptr @tris, align 8, !tbaa !18
  %i.in = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.il) #12
  %i.io = getelementptr inbounds nuw [80 x i8], ptr %i.im, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !35
  %i.iq = icmp eq i32 %i.ip, 1
  br i1 %i.iq, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !27
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !26 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hr ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !27
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !26 ; 2 uses
  %i.ix = load double, ptr %i.gk, align 8
  %i.iy = load double, ptr %i.hp, align 8
  %i.iz = load double, ptr %i.it, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jb = load double, ptr %i.ja, align 8
  %i.jc = load double, ptr %i.iw, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.je = load double, ptr %i.jd, align 8
  %i.jf = call i32 @ccw(double %i.ix, double %i.iy, double %i.iz, double %i.jb, double %i.jc, double %i.je) #12
  %i.jg = icmp eq i32 %i.jf, 1                    ; 2 uses
  %i.jh = load ptr, ptr %i.iu, align 8, !tbaa !27 ; 2 uses
  %. = select i1 %i.jg, ptr %i.jh, ptr %i.hk
  %.287 = select i1 %i.jg, ptr %i.hk, ptr %i.jh
  br label %bb.bg

.thread:                                          ; preds = %bb.ay, %bb.ba, %bb.bc
  %.0217338.lcssa.wide = phi i32 [ 0, %bb.ay ], [ 1, %bb.ba ], [ 2, %bb.bc ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %6 = add nuw nsw i32 %.0217338.lcssa.wide, 1    ; 2 uses
  %7 = icmp eq i32 %6, 3
  %8 = select i1 %7, i32 0, i32 %6
  %9 = zext nneg i32 %8 to i64
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %9
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !30
  %10 = zext nneg i32 %.0217338.lcssa.wide to i64
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %10 ; 4 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !29
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !26 ; 2 uses
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !26 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !26 ; 2 uses
  %i.js = load double, ptr %i.jn, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.ju = load double, ptr %i.jt, align 8
  %i.jv = load double, ptr %i.jo, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jx = load double, ptr %i.jw, align 8
  %i.jy = load double, ptr %i.jr, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.ka = load double, ptr %i.jz, align 8
  %i.kb = call i32 @ccw(double %i.js, double %i.ju, double %i.jv, double %i.jx, double %i.jy, double %i.ka) #12
  %i.kc = icmp eq i32 %i.kb, 1
  br i1 %i.kc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.thread
  %i.kd = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.ke = load ptr, ptr %i.jl, align 8, !tbaa !29
  br label %bb.bg

bb.bf:                                            ; preds = %.thread
  %i.kf = load ptr, ptr %i.jl, align 8, !tbaa !29
  %i.kg = load ptr, ptr %i.jp, align 8, !tbaa !30
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf
  %.0216 = phi ptr [ %., %bb.bd ], [ %i.kf, %bb.bf ], [ %i.kd, %bb.be ] ; 5 uses
  %.0215 = phi ptr [ %.287, %bb.bd ], [ %i.kg, %bb.bf ], [ %i.ke, %bb.be ] ; 7 uses
  %i.kh = icmp eq i64 %.3223344, %.1221.lcssa
  br i1 %i.kh, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %.not19.i268 = icmp ult i64 %i.hr, %i.hq
  br i1 %.not19.i268, label %add2dq.exit270, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hr
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !27
  %i.kk = getelementptr inbounds nuw i8, ptr %.0216, i64 8
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !58
  br label %add2dq.exit270

add2dq.exit270:                                   ; preds = %bb.bh, %bb.bi
  %i.kl = add i64 %i.hr, 1                        ; 4 uses
  store i64 %i.kl, ptr %i.ad, align 8, !tbaa !21
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kl
  store ptr %.0216, ptr %i.km, align 8, !tbaa !27
  %.not19.i271 = icmp ult i64 %i.kl, %i.hq
  br i1 %.not19.i271, label %add2dq.exit273, label %bb.bj

bb.bj:                                            ; preds = %add2dq.exit270
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !27
  %i.kp = getelementptr inbounds nuw i8, ptr %.0215, i64 8
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !58
  br label %add2dq.exit273

add2dq.exit273:                                   ; preds = %add2dq.exit270, %bb.bj
  %i.kq = add i64 %i.hq, -1                       ; 3 uses
  store i64 %i.kq, ptr %i.ab, align 8, !tbaa !20
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kq
  store ptr %.0215, ptr %i.kr, align 8, !tbaa !27
  br label %bb.bq

bb.bk:                                            ; preds = %bb.bg
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !27
  %.not255 = icmp eq ptr %i.kt, %.0215
  br i1 %.not255, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hr
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !27
  %.not256 = icmp eq ptr %i.kv, %.0215
  br i1 %.not256, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kw = call fastcc i64 @finddqsplit(ptr noundef %4, ptr noundef %.0215) ; 4 uses
  %.not19.i274 = icmp ult i64 %i.hr, %i.kw
  br i1 %.not19.i274, label %add2dq.exit276, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kw
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !27
  %i.kz = getelementptr inbounds nuw i8, ptr %.0215, i64 8
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !58
  br label %add2dq.exit276

add2dq.exit276:                                   ; preds = %bb.bm, %bb.bn
  %i.la = add i64 %i.kw, -1                       ; 3 uses
  store i64 %i.la, ptr %i.ab, align 8, !tbaa !20
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.la
  store ptr %.0215, ptr %i.lb, align 8, !tbaa !27
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.kw, i64 %i.hs) ; 2 uses
  store i64 %spec.store.select, ptr %i.ho, align 8
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.lc = call fastcc i64 @finddqsplit(ptr noundef %4, ptr noundef %.0216) ; 4 uses
  %.not19.i277 = icmp ult i64 %i.lc, %i.hq
  br i1 %.not19.i277, label %add2dq.exit279, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !27
  %i.lf = getelementptr inbounds nuw i8, ptr %.0216, i64 8
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !58
  br label %add2dq.exit279

add2dq.exit279:                                   ; preds = %bb.bo, %bb.bp
  %i.lg = add i64 %i.lc, 1                        ; 3 uses
  store i64 %i.lg, ptr %i.ad, align 8, !tbaa !21
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lg
  store ptr %.0216, ptr %i.lh, align 8, !tbaa !27
  %spec.store.select288 = call i64 @llvm.umin.i64(i64 %i.lc, i64 %i.hs) ; 2 uses
  store i64 %spec.store.select288, ptr %i.ho, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %add2dq.exit279, %add2dq.exit276, %add2dq.exit273
  %i.li = phi i64 [ %spec.store.select288, %add2dq.exit279 ], [ %spec.store.select, %add2dq.exit276 ], [ %i.hs, %add2dq.exit273 ]
  %i.lj = phi i64 [ %i.lg, %add2dq.exit279 ], [ %i.hr, %add2dq.exit276 ], [ %i.kl, %add2dq.exit273 ]
  %i.lk = phi i64 [ %i.hq, %add2dq.exit279 ], [ %i.la, %add2dq.exit276 ], [ %i.kq, %add2dq.exit273 ]
  %i.ll = load i64, ptr %i.hw, align 8, !tbaa !31 ; 2 uses
  %.not257 = icmp eq i64 %i.ll, -1
  br i1 %.not257, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lm = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ln = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.ll) #12
  %i.lo = getelementptr inbounds nuw [80 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !35
  %i.lq = icmp eq i32 %i.lp, 1
  br i1 %i.lq, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.lr = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !31 ; 2 uses
  %.not257.1 = icmp eq i64 %i.ls, -1
  br i1 %.not257.1, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lt = load ptr, ptr @tris, align 8, !tbaa !18
  %i.lu = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.ls) #12
  %i.lv = getelementptr inbounds nuw [80 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !35
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ly = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !31 ; 2 uses
  %.not257.2 = icmp eq i64 %i.lz, -1
  br i1 %.not257.2, label %._crit_edge346, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ma = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.mb = load ptr, ptr @tris, align 8, !tbaa !18
  %i.mc = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.lz) #12
  %i.md = getelementptr inbounds nuw [80 x i8], ptr %i.mb, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 8, !tbaa !35
  %i.mf = icmp eq i32 %i.me, 1
  br i1 %i.mf, label %.loopexit, label %._crit_edge346

.loopexit:                                        ; preds = %bb.br, %bb.bt, %bb.bv
  %.lcssa360 = phi ptr [ %i.hv, %bb.br ], [ %i.hw, %bb.bt ], [ %i.ma, %bb.bv ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.lcssa360, i64 24
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !31 ; 2 uses
  %.not250 = icmp eq i64 %i.mh, -1
  br i1 %.not250, label %._crit_edge346, label %bb.ax, !llvm.loop !45

._crit_edge346:                                   ; preds = %bb.bu, %bb.bv, %.loopexit, %add2dq.exit
  call void @free(ptr noundef %i.p) #12
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge346, %bb.bw
  %.0348 = phi i64 [ 0, %._crit_edge346 ], [ %i.mi, %bb.bw ]
  %.0213347 = phi ptr [ %i.hk, %._crit_edge346 ], [ %i.mk, %bb.bw ]
  %i.mi = add i64 %.0348, 1                       ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.0213347, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !58 ; 2 uses
  %.not251 = icmp eq ptr %i.mk, null
  br i1 %.not251, label %bb.bx, label %bb.bw, !llvm.loop !46

bb.bx:                                            ; preds = %bb.bw
  %i.ml = load i64, ptr @opn, align 8, !tbaa !33
  %.not.i280 = icmp ugt i64 %i.mi, %i.ml
  %.pre380 = load ptr, ptr @ops, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i280, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.mm = shl i64 %i.mi, 4
  %i.mn = call ptr @realloc(ptr noundef %.pre380, i64 noundef %i.mm) #17 ; 3 uses
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
end_hunk_0
