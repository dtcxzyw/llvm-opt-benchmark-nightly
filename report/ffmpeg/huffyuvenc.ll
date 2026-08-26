Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/huffyuvenc?download=true
inline.NumInlined: 90
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 70
begin_hunk_0_@encode_init:bb.a
  %i.ds = shl i32 %i.dr, 4
  %i.dt = add i32 %i.ds, 240
  %i.du = load i32, ptr %i.am, align 4, !tbaa !69
  %i.dv = or i32 %i.dt, %i.du
  %i.dw = load i32, ptr %i.an, align 8, !tbaa !70
  %i.dx = shl i32 %i.dw, 2
  %i.dy = or i32 %i.dv, %i.dx
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !51
  %i.ec = load i32, ptr %i.ag, align 4, !tbaa !49
  %.not214 = icmp eq i32 %i.ec, 0
  br i1 %.not214, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = load i32, ptr %i.ad, align 8, !tbaa !48
  %.not215 = icmp eq i32 %i.ed, 0
  %i.ee = select i1 %.not215, i8 2, i8 1
  %i.ef = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !51
  %i.ei = or i8 %i.ee, %i.eh
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !51
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ej = load i32, ptr %i.ak, align 8, !tbaa !50
  %.not216 = icmp eq i32 %i.ej, 0
  br i1 %.not216, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !51
  %i.en = or i8 %i.em, 4
  store i8 %i.en, ptr %i.el, align 1, !tbaa !51
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.y
  %.sink322 = phi i8 [ 0, %bb.y ], [ 1, %bb.ac ], [ 1, %bb.ab ]
  %i.eo = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  store i8 %.sink322, ptr %i.ep, align 1, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i32 4, ptr %i.eq, align 8, !tbaa !71
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !72 ; 2 uses
  %.not217 = icmp eq ptr %i.es, null
  %i.et = load i32, ptr %i.av, align 4, !tbaa !55 ; 5 uses
  %i.eu = icmp sgt i32 %i.et, 0                   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 3 uses
  br i1 %.not217, label %.preheader228, label %.preheader232

.preheader232:                                    ; preds = %bb.ad
  br i1 %i.eu, label %.preheader231.preheader, label %.preheader229.split.preheader

.preheader231.preheader:                          ; preds = %.preheader232
  %wide.trip.count = zext nneg i32 %i.et to i64
  br label %.preheader231

.preheader228:                                    ; preds = %bb.ad
  br i1 %i.eu, label %.preheader227.preheader, label %.thread

.preheader227.preheader:                          ; preds = %.preheader228
  %wide.trip.count276 = zext nneg i32 %i.et to i64
  br label %.preheader227

.preheader231:                                    ; preds = %.preheader231.preheader, %._crit_edge
  %indvars.iv262 = phi i64 [ 0, %.preheader231.preheader ], [ %indvars.iv.next263, %._crit_edge ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [131072 x i8], ptr %i.ev, i64 %indvars.iv262
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader231, %bb.ae
  %indvars.iv = phi i64 [ 0, %.preheader231 ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv
  store i64 1, ptr %i.ex, align 8, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.ae
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next263, 4
  br i1 %exitcond265.not, label %.preheader229.split.preheader, label %.preheader231, !llvm.loop !76

.preheader229.split.preheader:                    ; preds = %._crit_edge, %.preheader232
  br label %.preheader229.split

.preheader229.split:                              ; preds = %.preheader229.split.backedge, %.preheader229.split.preheader
  %i.ey = phi i32 [ %i.et, %.preheader229.split.preheader ], [ %i.fi, %.preheader229.split.backedge ] ; 2 uses
  %indvars.iv269 = phi i64 [ 0, %.preheader229.split.preheader ], [ %indvars.iv269.be, %.preheader229.split.backedge ] ; 2 uses
  %.1188242 = phi ptr [ %i.es, %.preheader229.split.preheader ], [ %.2189.lcssa, %.preheader229.split.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not218237 = icmp sgt i32 %i.ey, 0
  br i1 %.not218237, label %.lr.ph, label %._crit_edge241

.lr.ph:                                           ; preds = %.preheader229.split
  %i.ez = getelementptr inbounds nuw [131072 x i8], ptr %i.ev, i64 %indvars.iv269
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.fa = load i32, ptr %i.av, align 4, !tbaa !55 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %.not218 = icmp slt i64 %indvars.iv.next267, %i.fb
  br i1 %.not218, label %bb.ag, label %._crit_edge241, !llvm.loop !77

bb.ag:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv266 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next267, %bb.af ] ; 2 uses
  %.2189238 = phi ptr [ %.1188242, %.lr.ph ], [ %i.fg, %bb.af ] ; 2 uses
  %i.fc = call i64 @strtol(ptr noundef %.2189238, ptr noundef nonnull %i.a, i32 noundef 0) #12
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv266 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !73
  %i.ff = add i64 %i.fe, %i.fc
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !73
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !78  ; 3 uses
  %i.fh = icmp eq ptr %i.fg, %.2189238
  br i1 %i.fh, label %bb.ak, label %bb.af

._crit_edge241:                                   ; preds = %bb.af, %.preheader229.split
  %i.fi = phi i32 [ %i.ey, %.preheader229.split ], [ %i.fa, %bb.af ]
  %.2189.lcssa = phi ptr [ %.1188242, %.preheader229.split ], [ %i.fg, %bb.af ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond272 = icmp eq i64 %indvars.iv.next270, 4
  br i1 %exitcond272, label %bb.ah, label %.preheader229.split.backedge

.preheader229.split.backedge:                     ; preds = %._crit_edge241, %bb.aj
  %indvars.iv269.be = phi i64 [ %indvars.iv.next270, %._crit_edge241 ], [ 0, %bb.aj ]
  br label %.preheader229.split, !llvm.loop !79

bb.ah:                                            ; preds = %._crit_edge241
  %i.fj = load i8, ptr %.2189.lcssa, align 1, !tbaa !51
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %.thread.loopexit259, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %.2189.lcssa, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !51
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %.thread.loopexit259, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %.2189.lcssa, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !51
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %.thread.loopexit259, label %.preheader229.split.backedge

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

.preheader227:                                    ; preds = %.preheader227.preheader, %._crit_edge246
  %indvars.iv278 = phi i64 [ 0, %.preheader227.preheader ], [ %indvars.iv.next279, %._crit_edge246 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [131072 x i8], ptr %i.ev, i64 %indvars.iv278
  br label %bb.al

bb.al:                                            ; preds = %.preheader227, %bb.al
  %indvars.iv273 = phi i64 [ 0, %.preheader227 ], [ %indvars.iv.next274, %bb.al ] ; 3 uses
  %indvars275 = trunc i64 %indvars.iv273 to i32   ; 2 uses
  %i.fs = sub nsw i32 %i.et, %indvars275
  %..2184 = tail call i32 @llvm.smin.i32(i32 %indvars275, i32 %i.fs) ; 2 uses
  %i.ft = mul nuw nsw i32 %..2184, %..2184
  %i.fu = add nuw nsw i32 %i.ft, 1
  %i.fv = udiv i32 100000000, %i.fu
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv273
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !73
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge246, label %bb.al, !llvm.loop !80

._crit_edge246:                                   ; preds = %bb.al
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next279, 4
  br i1 %exitcond281.not, label %.thread, label %.preheader227, !llvm.loop !81

.thread.loopexit259:                              ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pre308 = load i32, ptr %i.eq, align 8, !tbaa !71
  %i.fy = sext i32 %.pre308 to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge246, %.thread.loopexit259, %.preheader228
  %i.fz = phi i64 [ %i.fy, %.thread.loopexit259 ], [ 4, %.preheader228 ], [ 4, %._crit_edge246 ]
  %i.ga = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %i.fz
  %i.gc = tail call fastcc i32 @store_huffman_tables(ptr noundef %i.c, ptr noundef %i.gb) ; 3 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %.thread
  %i.ge = load i32, ptr %i.eq, align 8, !tbaa !71
  %i.gf = add nsw i32 %i.ge, %i.gc
  store i32 %i.gf, ptr %i.eq, align 8, !tbaa !71
  %i.gg = load i32, ptr %i.bz, align 8, !tbaa !61
  %.not219 = icmp eq i32 %i.gg, 0
  br i1 %.not219, label %.preheader223, label %.preheader225

.preheader225:                                    ; preds = %bb.am
  %1 = load i32, ptr %i.ax, align 8, !tbaa !56
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 116
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = mul nsw i32 %3, %1
  %i.gh = load i32, ptr %i.av, align 4, !tbaa !55 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  br i1 %i.gi, label %.lr.ph250.preheader, label %.loopexit224.split

.lr.ph250.preheader:                              ; preds = %.preheader225
  %wide.trip.count285 = zext nneg i32 %i.gh to i64
  br label %.lr.ph250

.preheader223:                                    ; preds = %bb.am
  %i.gk = load i32, ptr %i.av, align 4, !tbaa !55 ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  br i1 %i.gl, label %.preheader, label %.loopexit224.split

.lr.ph250:                                        ; preds = %.lr.ph250.preheader, %._crit_edge251
  %indvars.iv287 = phi i64 [ 0, %.lr.ph250.preheader ], [ %indvars.iv.next288, %._crit_edge251 ] ; 3 uses
  %.not221 = icmp eq i64 %indvars.iv287, 0
  %i.gn = select i1 %.not221, i32 10, i32 40
  %5 = sdiv i32 %4, %i.gn
  %i.go = getelementptr inbounds nuw [131072 x i8], ptr %i.gj, i64 %indvars.iv287
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph250, %bb.an
  %indvars.iv282 = phi i64 [ 0, %.lr.ph250 ], [ %indvars.iv.next283, %bb.an ] ; 3 uses
  %indvars284 = trunc i64 %indvars.iv282 to i32   ; 2 uses
  %i.gp = sub nsw i32 %i.gh, %indvars284
  %..3185 = tail call i32 @llvm.smin.i32(i32 %indvars284, i32 %i.gp) ; 2 uses
  %i.gq = mul nuw nsw i32 %..3185, %..3185
  %i.gr = add nuw nsw i32 %i.gq, 1
  %i.gs = sdiv i32 %5, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv282
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !73
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count285
  br i1 %exitcond286.not, label %._crit_edge251, label %bb.an, !llvm.loop !82

._crit_edge251:                                   ; preds = %bb.an
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next288, 4
  br i1 %exitcond290.not, label %.loopexit224.split, label %.lr.ph250, !llvm.loop !83

.preheader:                                       ; preds = %.preheader223
  %i.gv = zext nneg i32 %i.gk to i64
  %i.gw = shl nuw nsw i64 %i.gv, 3                ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gm, i8 0, i64 %i.gw, i1 false), !tbaa !73
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 131208
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gx, i8 0, i64 %i.gw, i1 false), !tbaa !73
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 262280
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gy, i8 0, i64 %i.gw, i1 false), !tbaa !73
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 393352
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gz, i8 0, i64 %i.gw, i1 false), !tbaa !73
  br label %.loopexit224.split

.loopexit224.split:                               ; preds = %._crit_edge251, %.preheader, %.preheader225, %.preheader223
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store i32 0, ptr %i.ha, align 4, !tbaa !84
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond301 = icmp eq i64 %indvars.iv.next299, 3
  br i1 %exitcond301, label %.loopexit, label %bb.ap, !llvm.loop !85

bb.ap:                                            ; preds = %.loopexit224.split, %bb.ao
  %indvars.iv298 = phi i64 [ 0, %.loopexit224.split ], [ %indvars.iv.next299, %bb.ao ] ; 2 uses
  %i.hc = load i32, ptr %i.ax, align 8, !tbaa !56
  %i.hd = shl nsw i32 %i.hc, 2
  %i.he = add nsw i32 %i.hd, 16
  %i.hf = sext i32 %i.he to i64
  %i.hg = tail call noalias ptr @av_malloc(i64 noundef %i.hf) #12 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv298
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !51
  %.not220 = icmp eq ptr %i.hg, null
  br i1 %.not220, label %.loopexit, label %bb.ao

.loopexit:                                        ; preds = %bb.ao, %bb.ap, %bb.ak, %.thread, %bb.c, %bb.a, %bb.v, %bb.s, %bb.m, %bb.e
  %.6 = phi i32 [ -22, %bb.e ], [ -22, %bb.m ], [ -22, %bb.s ], [ -22, %bb.v ], [ -12, %bb.c ], [ %i.gc, %.thread ], [ -12, %bb.a ], [ -1, %bb.ak ], [ -12, %bb.ap ], [ 0, %bb.ao ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca i32, align 4                      ; 20 uses
  %i.c = alloca i32, align 4                      ; 14 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 10 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 92 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56   ; 67 uses
  %i.m = ashr i32 %i.l, 1                         ; 38 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !66   ; 15 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 52 ; 8 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60
  %i.r = add nsw i32 %i.q, 1                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 11 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !53
  %i.u = mul nsw i32 %i.r, %i.t                   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %i.x = mul nsw i32 %i.w, %i.r                   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53
  %i.aa = mul nsw i32 %i.z, %i.r                  ; 4 uses
  %i.ab = mul i32 %i.l, 12
  %i.ac = mul i32 %i.ab, %i.o
  %i.ad = add nsw i32 %i.ac, 16384
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call i32 @ff_alloc_packet(ptr noundef %0, ptr noundef %1, i64 noundef %i.ae) #12 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !61
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.loopexit1093.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !86
  %i.al = tail call fastcc i32 @store_huffman_tables(ptr noundef nonnull %i.j, ptr noundef %i.ak) ; 5 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader1092

.preheader1092:                                   ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !55 ; 6 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 2 uses
  br i1 %i.ap, label %.preheader1091.preheader, label %.loopexit1093.split

.preheader1091.preheader:                         ; preds = %.preheader1092
  %wide.trip.count = zext nneg i32 %i.ao to i64   ; 12 uses
  %min.iters.check = icmp ult i32 %i.ao, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader1091.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ar, align 8, !tbaa !73
  %wide.load1399 = load <2 x i64>, ptr %i.as, align 8, !tbaa !73
  %i.at = lshr <2 x i64> %wide.load, splat (i64 1)
  %i.au = lshr <2 x i64> %wide.load1399, splat (i64 1)
  store <2 x i64> %i.at, ptr %i.ar, align 8, !tbaa !73
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader1091.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader1091.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !73
  %i.ay = lshr i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 131208 ; 2 uses
  %min.iters.check1401 = icmp ult i32 %i.ao, 4
  br i1 %min.iters.check1401, label %scalar.ph1400.preheader, label %vector.ph1402

vector.ph1402:                                    ; preds = %._crit_edge
  %n.vec1403 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1402
  %index1405 = phi i64 [ 0, %vector.ph1402 ], [ %index.next1408, %vector.body1404 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index1405 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load1406 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !73
  %wide.load1407 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !73
  %i.bc = lshr <2 x i64> %wide.load1406, splat (i64 1)
  %i.bd = lshr <2 x i64> %wide.load1407, splat (i64 1)
  store <2 x i64> %i.bc, ptr %i.ba, align 8, !tbaa !73
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !73
  %index.next1408 = add nuw i64 %index1405, 4     ; 2 uses
  %i.be = icmp eq i64 %index.next1408, %n.vec1403
  br i1 %i.be, label %middle.block1409, label %vector.body1404, !llvm.loop !92

middle.block1409:                                 ; preds = %vector.body1404
  %cmp.n1410 = icmp eq i64 %n.vec1403, %wide.trip.count
  br i1 %cmp.n1410, label %._crit_edge.1, label %scalar.ph1400.preheader

scalar.ph1400.preheader:                          ; preds = %._crit_edge, %middle.block1409
  %indvars.iv.1.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec1403, %middle.block1409 ]
  br label %scalar.ph1400

scalar.ph1400:                                    ; preds = %scalar.ph1400.preheader, %scalar.ph1400
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph1400 ], [ %indvars.iv.1.ph, %scalar.ph1400.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.1 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !73
  %i.bh = lshr i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !73
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.1, label %scalar.ph1400, !llvm.loop !93

._crit_edge.1:                                    ; preds = %scalar.ph1400, %middle.block1409
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 262280 ; 2 uses
  %min.iters.check1413 = icmp ult i32 %i.ao, 4
  br i1 %min.iters.check1413, label %scalar.ph1412.preheader, label %vector.ph1414

vector.ph1414:                                    ; preds = %._crit_edge.1
  %n.vec1415 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body1416
end_hunk_0
