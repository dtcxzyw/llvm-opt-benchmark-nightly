Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacenc_is?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0

%struct.AACISError = type { i32, i32, float, float, float, float }

@ff_aac_pow34sf_tab = external local_unnamed_addr global [428 x float], align 16
@aac_maxval_cb = internal unnamed_addr constant [14 x i8] c"\00\01\03\05\05\07\07\07\09\09\09\09\09\0B", align 1

; Function Attrs: nounwind uwtable
define void @ff_aac_search_for_is(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 15 uses
  %3 = alloca %struct.AACISError, align 4         ; 7 uses
  %4 = alloca %struct.AACISError, align 4         ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.c = load i32, ptr %i.b, align 8, !tbaa !67
  %i.d = sitofp nsz i32 %i.c to float
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 316 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68   ; 3 uses
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = fdiv nnan nsz float 1.024000e+03, %i.g
  %i.i = fdiv nsz float %i.d, %i.h
  %i.j = fmul nsz float %i.i, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.k = load i32, ptr %2, align 16, !tbaa !70
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.x, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !21
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.l, align 16, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.m, align 16, !tbaa !21
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.n, align 16, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.o, align 16, !tbaa !21
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.p, align 16, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.q, align 16, !tbaa !21
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.r, align 16, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 46668
  %i.t = load i32, ptr %i.s, align 4, !tbaa !68   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.lr.ph.i, label %ff_init_nextband_map.exit

.preheader.lr.ph.i:                               ; preds = %vector.body
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 46664
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 53804 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 52268 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 46638
  %i.z = load i32, ptr %i.v, align 8, !tbaa !71   ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.preheader.i.preheader, label %ff_init_nextband_map.exit

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i32 %i.z, 1
  %unroll_iter = and i64 %i.ab, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod274 = trunc i32 %i.z to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.02533.i = phi i32 [ %i.bk, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.02632.i = phi i8 [ %.2.i.lcssa, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ad = shl nuw nsw i32 %.02533.i, 4
  %i.ae = zext nneg i32 %i.ad to i64              ; 3 uses
  br i1 %i.ac, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %bb.g
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i.1, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %.12730.i = phi i8 [ %.2.i.1, %bb.g ], [ %.02632.i, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.g ], [ 0, %.preheader.i ]
  %i.af = add nuw nsw i64 %indvars.iv38.i, %i.ae  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader.i.new
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.af
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22
  %i.ak = icmp ult i32 %i.aj, 12
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = trunc i64 %i.af to i8                   ; 2 uses
  %i.am = zext i8 %.12730.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  store i8 %i.al, ptr %i.an, align 1, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.preheader.i.new
  %.2.i = phi i8 [ %.12730.i, %.preheader.i.new ], [ %i.al, %bb.c ], [ %.12730.i, %bb.b ] ; 3 uses
  %indvars.iv.next39.i = or disjoint i64 %indvars.iv38.i, 1
  %i.ao = add nuw nsw i64 %indvars.iv.next39.i, %i.ae ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21
  %.not.i.1 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.1, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ao
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = icmp ult i32 %i.as, 12
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = trunc i64 %i.ao to i8                   ; 2 uses
  %i.av = zext i8 %.2.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.2.i.1 = phi i8 [ %.2.i, %bb.d ], [ %i.au, %bb.f ], [ %.2.i, %bb.e ] ; 3 uses
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !50

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv38.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next39.i.1, %._crit_edge.i.unr-lcssa ]
  %.12730.i.epil.init = phi i8 [ %.02632.i, %.preheader.i ], [ %.2.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.ax = add nuw nsw i64 %indvars.iv38.i.epil.init, %i.ae ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !21
  %.not.i.epil = icmp eq i8 %i.az, 0
  br i1 %.not.i.epil, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %.epil.preheader
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ax
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.bc = icmp ult i32 %i.bb, 12
  br i1 %i.bc, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.h
  %i.bd = trunc i64 %i.ax to i8                   ; 2 uses
  %i.be = zext i8 %.12730.i.epil.init to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.h, %bb.i, %._crit_edge.i.unr-lcssa
  %.2.i.lcssa = phi i8 [ %.2.i.1, %._crit_edge.i.unr-lcssa ], [ %.12730.i.epil.init, %.epil.preheader ], [ %i.bd, %bb.i ], [ %.12730.i.epil.init, %bb.h ] ; 2 uses
  %i.bg = zext nneg i32 %.02533.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %.02533.i, %i.bj        ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %i.t
  br i1 %i.bl, label %.preheader.i, label %ff_init_nextband_map.exit, !llvm.loop !51

ff_init_nextband_map.exit:                        ; preds = %._crit_edge.i, %vector.body, %.preheader.lr.ph.i
  %.026.lcssa.i = phi i8 [ 0, %vector.body ], [ 0, %.preheader.lr.ph.i ], [ %.2.i.lcssa, %._crit_edge.i ] ; 2 uses
  %i.bm = zext i8 %.026.lcssa.i to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  store i8 %.026.lcssa.i, ptr %i.bn, align 1, !tbaa !21
  %i.bo = icmp sgt i32 %i.f, 0
  br i1 %i.bo, label %.preheader190.lr.ph, label %._crit_edge229

.preheader190.lr.ph:                              ; preds = %ff_init_nextband_map.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 38240
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 5916
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 7452
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 52268 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 53804 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 53292 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 286 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 12832
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 59184
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.6177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 137 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 7708
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 54060
  %i.ce = load i32, ptr %i.bp, align 8, !tbaa !71 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader190, label %._crit_edge229

.preheader190:                                    ; preds = %.preheader190.lr.ph, %._crit_edge
  %i.cg = phi i32 [ %i.fp, %._crit_edge ], [ %i.f, %.preheader190.lr.ph ]
  %i.ch = phi i32 [ %i.fq, %._crit_edge ], [ %i.ce, %.preheader190.lr.ph ] ; 2 uses
  %.0142228 = phi i32 [ %.1143.lcssa, %._crit_edge ], [ 0, %.preheader190.lr.ph ] ; 2 uses
  %.0144227 = phi i32 [ %.1145.lcssa, %._crit_edge ], [ -1, %.preheader190.lr.ph ] ; 2 uses
  %.0146226 = phi i32 [ %.1147.lcssa, %._crit_edge ], [ -1, %.preheader190.lr.ph ] ; 2 uses
  %.0152225 = phi i32 [ %i.fu, %._crit_edge ], [ 0, %.preheader190.lr.ph ] ; 7 uses
  %.0153224 = phi i32 [ %.1154.lcssa, %._crit_edge ], [ 0, %.preheader190.lr.ph ] ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph, label %.preheader190.._crit_edge_crit_edge

.preheader190.._crit_edge_crit_edge:              ; preds = %.preheader190
  %.pre252 = zext nneg i32 %.0152225 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader190
  %i.cj = shl nsw i32 %.0152225, 4
  %i.ck = zext nneg i32 %.0152225 to i64          ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ck
  %i.cm = zext nneg i32 %i.cj to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv247 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next248, %bb.w ] ; 5 uses
  %.1143220 = phi i32 [ %.0142228, %.lr.ph ], [ %i.fg, %bb.w ]
  %.1145219 = phi i32 [ %.0144227, %.lr.ph ], [ %.3, %bb.w ] ; 8 uses
  %.1147218 = phi i32 [ %.0146226, %.lr.ph ], [ %.2148, %bb.w ] ; 5 uses
  %.1154216 = phi i32 [ %.0153224, %.lr.ph ], [ %.3156, %bb.w ] ; 8 uses
  %.0157213 = phi i32 [ 0, %.lr.ph ], [ %i.fl, %bb.w ] ; 5 uses
  %i.cn = uitofp nneg i32 %.0157213 to float
  %i.co = fmul nsz float %i.j, %i.cn
  %i.cp = load float, ptr %i.bq, align 16, !tbaa !47
  %i.cq = fdiv nsz float %i.cp, 1.700000e+02
  %i.cr = fmul nsz float %i.cq, 6.100000e+03
  %i.cs = fcmp nsz ogt float %i.co, %i.cr
  %i.ct = add nuw nsw i64 %indvars.iv247, %i.cm   ; 13 uses
  br i1 %i.cs, label %bb.k, label %ff_sfdelta_can_remove_band.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !22
  %.not158 = icmp eq i32 %i.cv, 13
  br i1 %.not158, label %ff_sfdelta_can_remove_band.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ct
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %.not159 = icmp eq i8 %i.cx, 0
  br i1 %.not159, label %bb.m, label %ff_sfdelta_can_remove_band.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ct ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !22
  %.not160 = icmp eq i32 %i.cz, 13
  br i1 %.not160, label %ff_sfdelta_can_remove_band.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ct
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  %.not161 = icmp eq i8 %i.db, 0
  %i.dc = icmp sgt i32 %.1147218, -1
  %or.cond186 = select i1 %.not161, i1 %i.dc, i1 false
  br i1 %or.cond186, label %bb.o, label %ff_sfdelta_can_remove_band.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ct
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !21
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !22 ; 2 uses
  %i.di = add nsw i32 %.1147218, -60
  %.not.i168 = icmp slt i32 %i.dh, %i.di
  %i.dj = add nuw nsw i32 %.1147218, 60
  %.not188 = icmp sgt i32 %i.dh, %i.dj
  %or.cond189 = select i1 %.not.i168, i1 true, i1 %.not188
  br i1 %or.cond189, label %ff_sfdelta_can_remove_band.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = load i8, ptr %i.cl, align 1, !tbaa !21  ; 2 uses
  %.not232 = icmp eq i8 %i.dk, 0
  br i1 %.not232, label %._crit_edge205, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.dl = load ptr, ptr %i.bx, align 16, !tbaa !48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv247
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !21  ; 2 uses
  %.not233 = icmp eq i8 %i.dn, 0
  br i1 %.not233, label %._crit_edge205, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count245 = zext i8 %i.dk to i64
  %wide.trip.count = zext i8 %i.dn to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv242 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next243, %._crit_edge.us ] ; 2 uses
  %i.do = phi <4 x float> [ zeroinitializer, %.preheader.us.preheader ], [ %i.eb, %._crit_edge.us ]
  %5 = trunc i64 %indvars.iv242 to i32
  %.tr = add i32 %.0152225, %5
  %6 = shl i32 %.tr, 7
  %7 = add i32 %6, %.0157213
  %8 = zext i32 %7 to i64
  br label %bb.q

bb.q:                                             ; preds = %.preheader.us, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.dp = phi <4 x float> [ %i.do, %.preheader.us ], [ %i.eb, %bb.q ]
  %i.dq = add nuw nsw i64 %indvars.iv, %8         ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !49 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dq
  %i.du = load float, ptr %i.dt, align 4, !tbaa !49 ; 3 uses
  %i.dv = fadd nsz float %i.ds, %i.du
  %i.dw = fsub nsz float %i.ds, %i.du
  %i.dx = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.dw, i64 1
  %i.dz = insertelement <4 x float> %i.dy, float %i.du, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.ds, i64 3 ; 2 uses
  %i.eb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.ea, <4 x float> %i.dp) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond241.not, label %._crit_edge.us, label %bb.q, !llvm.loop !52

._crit_edge.us:                                   ; preds = %bb.q
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count245
  br i1 %exitcond246.not, label %._crit_edge205, label %.preheader.us, !llvm.loop !53

._crit_edge205:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.p
  %i.ec = phi <4 x float> [ zeroinitializer, %bb.p ], [ zeroinitializer, %.preheader.lr.ph ], [ %i.eb, %._crit_edge.us ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.ed = trunc nuw nsw i64 %indvars.iv247 to i32 ; 2 uses
  %i.ee = extractelement <4 x float> %i.ec, i64 1
  %i.ef = extractelement <4 x float> %i.ec, i64 2 ; 3 uses
  %i.eg = extractelement <4 x float> %i.ec, i64 3 ; 4 uses
  call fastcc void @aac_is_encoding_err(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef %0, ptr noundef nonnull %2, i32 noundef %.0157213, i32 noundef %.0152225, i32 noundef %i.ed, float noundef %i.eg, float noundef %i.ef, float noundef %i.ee, i32 noundef -1)
  %.sroa.0175.0.copyload = load i32, ptr %3, align 4, !tbaa !22
  %.sroa.5176.0.copyload = load i32, ptr %.sroa.5176.0..sroa_idx, align 4, !tbaa !22
  %.sroa.6177.0.copyload = load float, ptr %.sroa.6177.0..sroa_idx, align 4, !tbaa !49
  %.sroa.7178.0.copyload = load float, ptr %.sroa.7178.0..sroa_idx, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.eh = extractelement <4 x float> %i.ec, i64 0
  call fastcc void @aac_is_encoding_err(ptr dead_on_unwind noalias writable align 4 %4, ptr noundef %0, ptr noundef nonnull %2, i32 noundef %.0157213, i32 noundef %.0152225, i32 noundef %i.ed, float noundef %i.eg, float noundef %i.ef, float noundef %i.eh, i32 noundef 1)
  %.sroa.0.0.copyload = load i32, ptr %4, align 4, !tbaa !22
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !49
  %.sroa.6173.0.copyload = load float, ptr %.sroa.6173.0..sroa_idx, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %.not163 = icmp ne i32 %.sroa.0175.0.copyload, 0
  %i.ei = fcmp nsz olt float %.sroa.6177.0.copyload, %.sroa.5.0.copyload
  %or.cond187 = select i1 %.not163, i1 %i.ei, i1 false
  br i1 %or.cond187, label %.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge205
  %.not164 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not164, label %ff_sfdelta_can_remove_band.exit.thread, label %.thread

.thread:                                          ; preds = %bb.r, %._crit_edge205
  %i.ej = phi i32 [ %.sroa.5176.0.copyload, %._crit_edge205 ], [ %.sroa.4.0.copyload, %bb.r ]
  %i.ek = phi float [ %.sroa.7178.0.copyload, %._crit_edge205 ], [ %.sroa.6173.0.copyload, %bb.r ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ct
  store i8 1, ptr %i.el, align 1, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ct ; 2 uses
  store i8 0, ptr %i.em, align 1, !tbaa !21
  %i.en = fdiv nsz float %i.eg, %i.ek
  %i.eo = tail call nsz float @llvm.sqrt.f32(float %i.en)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ct
  store float %i.eo, ptr %i.ep, align 4, !tbaa !49
  %i.eq = fdiv nsz float %i.eg, %i.ef
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ct
  store float %i.eq, ptr %i.er, align 4, !tbaa !49
  %i.es = icmp sgt i32 %i.ej, 0                   ; 2 uses
  %i.et = select i1 %i.es, i32 15, i32 14         ; 3 uses
  store i32 %i.et, ptr %i.cy, align 4, !tbaa !22
  %.not165 = icmp eq i32 %.1143220, 0
  %.not166 = icmp eq i32 %.1145219, %i.et
  %or.cond = select i1 %.not165, i1 true, i1 %.not166
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread
  store i8 1, ptr %i.em, align 1, !tbaa !21
  %i.eu = select i1 %i.es, i32 14, i32 15         ; 2 uses
  store i32 %i.eu, ptr %i.cy, align 4, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  %i.ev = phi i32 [ %i.eu, %bb.s ], [ %i.et, %.thread ]
  %i.ew = add nsw i32 %.1154216, 1
  br label %ff_sfdelta_can_remove_band.exit.thread

ff_sfdelta_can_remove_band.exit.thread:           ; preds = %bb.j, %bb.r, %bb.t, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.3156 = phi i32 [ %.1154216, %bb.r ], [ %.1154216, %bb.o ], [ %.1154216, %bb.k ], [ %.1154216, %bb.n ], [ %.1154216, %bb.m ], [ %.1154216, %bb.l ], [ %i.ew, %bb.t ], [ %.1154216, %bb.j ] ; 2 uses
  %.3 = phi i32 [ %.1145219, %bb.r ], [ %.1145219, %bb.o ], [ %.1145219, %bb.k ], [ %.1145219, %bb.n ], [ %.1145219, %bb.m ], [ %.1145219, %bb.l ], [ %i.ev, %bb.t ], [ %.1145219, %bb.j ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ct
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !21
  %.not167 = icmp eq i8 %i.ey, 0
  br i1 %.not167, label %bb.u, label %bb.w

bb.u:                                             ; preds = %ff_sfdelta_can_remove_band.exit.thread
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ct
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !22
  %i.fb = icmp ult i32 %i.fa, 12
  br i1 %i.fb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ct
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %ff_sfdelta_can_remove_band.exit.thread
  %.2148 = phi i32 [ %.1147218, %ff_sfdelta_can_remove_band.exit.thread ], [ %i.fd, %bb.v ], [ %.1147218, %bb.u ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ct
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !21
  %i.fg = zext i8 %i.ff to i32                    ; 2 uses
  %i.fh = load ptr, ptr %i.bx, align 16, !tbaa !48
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv247
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !21
  %i.fk = zext i8 %i.fj to i32
  %i.fl = add nuw nsw i32 %.0157213, %i.fk
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.fm = load i32, ptr %i.bp, align 8, !tbaa !71 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next248, %i.fn
  br i1 %i.fo, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %bb.w
  %.pre251 = load i32, ptr %i.e, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader190.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi253 = phi i64 [ %.pre252, %.preheader190.._crit_edge_crit_edge ], [ %i.ck, %._crit_edge.loopexit ]
  %i.fp = phi i32 [ %i.cg, %.preheader190.._crit_edge_crit_edge ], [ %.pre251, %._crit_edge.loopexit ] ; 2 uses
  %i.fq = phi i32 [ %i.ch, %.preheader190.._crit_edge_crit_edge ], [ %i.fm, %._crit_edge.loopexit ]
  %.1154.lcssa = phi i32 [ %.0153224, %.preheader190.._crit_edge_crit_edge ], [ %.3156, %._crit_edge.loopexit ] ; 2 uses
  %.1147.lcssa = phi i32 [ %.0146226, %.preheader190.._crit_edge_crit_edge ], [ %.2148, %._crit_edge.loopexit ]
  %.1145.lcssa = phi i32 [ %.0144227, %.preheader190.._crit_edge_crit_edge ], [ %.3, %._crit_edge.loopexit ]
  %.1143.lcssa = phi i32 [ %.0142228, %.preheader190.._crit_edge_crit_edge ], [ %i.fg, %._crit_edge.loopexit ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.pre-phi253
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !21
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nuw nsw i32 %.0152225, %i.ft        ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %i.fp
  br i1 %i.fv, label %.preheader190, label %._crit_edge229.loopexit, !llvm.loop !55

._crit_edge229.loopexit:                          ; preds = %._crit_edge
  %i.fw = icmp ne i32 %.1154.lcssa, 0
  %i.fx = zext i1 %i.fw to i8
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %.preheader190.lr.ph, %._crit_edge229.loopexit, %ff_init_nextband_map.exit
  %.0153.lcssa = phi i8 [ 0, %ff_init_nextband_map.exit ], [ %i.fx, %._crit_edge229.loopexit ], [ 0, %.preheader190.lr.ph ]
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.0153.lcssa, ptr %i.fy, align 8, !tbaa !73
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %._crit_edge229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @aac_is_encoding_err(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 24)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef range(i32 -1, 2) %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12832 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 59184 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 38688 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 39712 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40736 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 41760 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = fcmp nsz ole float %8, 0.000000e+00
  %i.h = fcmp nsz ole float %6, 0.000000e+00
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 286
  %i.j = sext i32 %4 to i64                       ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 38160
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 38232
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6940
  %i.p = shl nsw i32 %4, 4
  %i.q = add nsw i32 %i.p, %5
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = sitofp nsz i32 %9 to float               ; 2 uses
  %i.u = fdiv nsz float %7, %6                    ; 2 uses
  %i.v = tail call nsz float @llvm.sqrt.f32(float %i.u)
  %i.w = fmul nsz float %i.u, %i.v
  %i.x = tail call nsz noundef float @llvm.sqrt.f32(float %i.w)
  %i.y = fmul nsz float %i.x, %i.t                ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 6 uses
end_hunk_0
