Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver3?download=true
inline.NumInlined: 540
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@sat_solver3_minimize_assumptions:bb.a
  %.not35.not45.i.i111 = icmp sgt i32 %i.kt, %i.ks
  br i1 %.not35.not45.i.i111, label %.lr.ph.i.i119, label %._crit_edge.i.i112

.lr.ph.i.i119:                                    ; preds = %bb.an
  %i.ku = sext i32 %.val42.i.i108 to i64
  %i.kv = getelementptr [4 x i8], ptr %.val39.i.i110, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 -4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !32
  %i.ky = sext i32 %i.kt to i64
  %i.kz = sext i32 %i.kx to i64
  %i.la = sext i32 %i.ks to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.i.i119
  %indvars.iv.i.i120 = phi i64 [ %i.ky, %.lr.ph.i.i119 ], [ %indvars.iv.next.i.i121, %bb.aq ] ; 2 uses
  %indvars.iv.next.i.i121 = add nsw i64 %indvars.iv.i.i120, -1 ; 4 uses
  %i.lb = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i.i121
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !32
  %i.le = ashr i32 %i.ld, 1
  %.val41.i.i122 = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.lf = sext i32 %i.le to i64                   ; 3 uses
  %i.lg = getelementptr inbounds i8, ptr %.val41.i.i122, i64 %i.lf
  store i8 3, ptr %i.lg, align 1, !tbaa !25
  %i.lh = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.lf
  store i32 0, ptr %i.li, align 4, !tbaa !32
  %.not37.i.i123 = icmp sgt i64 %indvars.iv.i.i120, %i.kz
  br i1 %.not37.i.i123, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lj = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i.i121
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !32
  %.val43.i.i124 = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.lm = trunc i32 %i.ll to i8
  %i.ln = and i8 %i.lm, 1
  %i.lo = xor i8 %i.ln, 1
  %i.lp = getelementptr inbounds i8, ptr %.val43.i.i124, i64 %i.lf
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not35.not.i.i125 = icmp sgt i64 %indvars.iv.next.i.i121, %i.la
  br i1 %.not35.not.i.i125, label %bb.ao, label %._crit_edge.i.i112, !llvm.loop !189

._crit_edge.i.i112:                               ; preds = %bb.aq, %bb.an
  %i.lq = load i32, ptr %i.k, align 8, !tbaa !58  ; 2 uses
  %.not36.not48.i.i113 = icmp sgt i32 %i.lq, %i.ks
  br i1 %.not36.not48.i.i113, label %.lr.ph51.i.i115, label %._crit_edge52.i.i114

.lr.ph51.i.i115:                                  ; preds = %._crit_edge.i.i112
  %i.lr = sext i32 %i.lq to i64
  %i.ls = sext i32 %i.ks to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph51.i.i115
  %indvars.iv54.i.i116 = phi i64 [ %i.lr, %.lr.ph51.i.i115 ], [ %indvars.iv.next55.i.i117, %bb.ar ]
  %indvars.iv.next55.i.i117 = add nsw i64 %indvars.iv54.i.i116, -1 ; 3 uses
  %i.lt = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.lt, i64 %indvars.iv.next55.i.i117
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !32
  %i.lw = ashr i32 %i.lv, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.lw)
  %.not36.not.i.i118 = icmp sgt i64 %indvars.iv.next55.i.i117, %i.ls
  br i1 %.not36.not.i.i118, label %bb.ar, label %._crit_edge52.i.i114, !llvm.loop !190

._crit_edge52.i.i114:                             ; preds = %bb.ar, %._crit_edge.i.i112
  store i32 %i.ks, ptr %i.f, align 4, !tbaa !57
  store i32 %i.ks, ptr %i.k, align 8, !tbaa !58
  store i32 %i.kp, ptr %i.d, align 4, !tbaa !37
  br label %sat_solver3_pop.exit126

sat_solver3_pop.exit126:                          ; preds = %bb.am, %._crit_edge52.i.i114
  %.val42.i.i108240 = phi i32 [ %.val42.i.i108, %bb.am ], [ %i.kp, %._crit_edge52.i.i114 ]
  %i.lx = add nsw i32 %.184193, -1
  %i.ly = icmp sgt i32 %.184193, 0
  br i1 %i.ly, label %bb.am, label %tailrecurse.backedge, !llvm.loop !221

bb.as:                                            ; preds = %.lr.ph188
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %.preheader169._crit_edge, label %.lr.ph188, !llvm.loop !222

.preheader169._crit_edge:                         ; preds = %bb.as
  %i.lz = zext nneg i32 %i.hq to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lz
  %i.mb = tail call i32 @sat_solver3_minimize_assumptions(ptr noundef %0, ptr noundef nonnull %i.ma, i32 noundef %i.aa, i32 noundef %3)
  %.val42.i.i127.pre = load i32, ptr %i.d, align 4, !tbaa !37
  br label %bb.at

bb.at:                                            ; preds = %.preheader169._crit_edge, %sat_solver3_pop.exit145
  %.val42.i.i127 = phi i32 [ %.val42.i.i127.pre, %.preheader169._crit_edge ], [ %.val42.i.i127238, %sat_solver3_pop.exit145 ] ; 3 uses
  %.6198 = phi i32 [ 0, %.preheader169._crit_edge ], [ %i.nl, %sat_solver3_pop.exit145 ]
  %i.mc = load i32, ptr %i.c, align 8, !tbaa !93  ; 2 uses
  %i.md = add nsw i32 %i.mc, -1                   ; 4 uses
  store i32 %i.md, ptr %i.c, align 8, !tbaa !93
  %.not.i.not.i128 = icmp slt i32 %.val42.i.i127, %i.mc
  br i1 %.not.i.not.i128, label %sat_solver3_pop.exit145, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val39.i.i129 = load ptr, ptr %i.e, align 8, !tbaa !31 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [4 x i8], ptr %.val39.i.i129, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !32 ; 6 uses
  %i.mh = load i32, ptr %i.f, align 4, !tbaa !57  ; 2 uses
  %.not35.not45.i.i130 = icmp sgt i32 %i.mh, %i.mg
  br i1 %.not35.not45.i.i130, label %.lr.ph.i.i138, label %._crit_edge.i.i131

.lr.ph.i.i138:                                    ; preds = %bb.au
  %i.mi = sext i32 %.val42.i.i127 to i64
  %i.mj = getelementptr [4 x i8], ptr %.val39.i.i129, i64 %i.mi
  %i.mk = getelementptr i8, ptr %i.mj, i64 -4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !32
  %i.mm = sext i32 %i.mh to i64
  %i.mn = sext i32 %i.ml to i64
  %i.mo = sext i32 %i.mg to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.lr.ph.i.i138
  %indvars.iv.i.i139 = phi i64 [ %i.mm, %.lr.ph.i.i138 ], [ %indvars.iv.next.i.i140, %bb.ax ] ; 2 uses
  %indvars.iv.next.i.i140 = add nsw i64 %indvars.iv.i.i139, -1 ; 4 uses
  %i.mp = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i140
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !32
  %i.ms = ashr i32 %i.mr, 1
  %.val41.i.i141 = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.mt = sext i32 %i.ms to i64                   ; 3 uses
  %i.mu = getelementptr inbounds i8, ptr %.val41.i.i141, i64 %i.mt
  store i8 3, ptr %i.mu, align 1, !tbaa !25
  %i.mv = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.mt
  store i32 0, ptr %i.mw, align 4, !tbaa !32
  %.not37.i.i142 = icmp sgt i64 %indvars.iv.i.i139, %i.mn
  br i1 %.not37.i.i142, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mx = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i.i140
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !32
  %.val43.i.i143 = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.na = trunc i32 %i.mz to i8
  %i.nb = and i8 %i.na, 1
  %i.nc = xor i8 %i.nb, 1
  %i.nd = getelementptr inbounds i8, ptr %.val43.i.i143, i64 %i.mt
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !25
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.not35.not.i.i144 = icmp sgt i64 %indvars.iv.next.i.i140, %i.mo
  br i1 %.not35.not.i.i144, label %bb.av, label %._crit_edge.i.i131, !llvm.loop !189

._crit_edge.i.i131:                               ; preds = %bb.ax, %bb.au
  %i.ne = load i32, ptr %i.k, align 8, !tbaa !58  ; 2 uses
  %.not36.not48.i.i132 = icmp sgt i32 %i.ne, %i.mg
  br i1 %.not36.not48.i.i132, label %.lr.ph51.i.i134, label %._crit_edge52.i.i133

.lr.ph51.i.i134:                                  ; preds = %._crit_edge.i.i131
  %i.nf = sext i32 %i.ne to i64
  %i.ng = sext i32 %i.mg to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph51.i.i134
  %indvars.iv54.i.i135 = phi i64 [ %i.nf, %.lr.ph51.i.i134 ], [ %indvars.iv.next55.i.i136, %bb.ay ]
  %indvars.iv.next55.i.i136 = add nsw i64 %indvars.iv54.i.i135, -1 ; 3 uses
  %i.nh = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %indvars.iv.next55.i.i136
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !32
  %i.nk = ashr i32 %i.nj, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.nk)
  %.not36.not.i.i137 = icmp sgt i64 %indvars.iv.next55.i.i136, %i.ng
  br i1 %.not36.not.i.i137, label %bb.ay, label %._crit_edge52.i.i133, !llvm.loop !190

._crit_edge52.i.i133:                             ; preds = %bb.ay, %._crit_edge.i.i131
  store i32 %i.mg, ptr %i.f, align 4, !tbaa !57
  store i32 %i.mg, ptr %i.k, align 8, !tbaa !58
  store i32 %i.md, ptr %i.d, align 4, !tbaa !37
  br label %sat_solver3_pop.exit145

sat_solver3_pop.exit145:                          ; preds = %bb.at, %._crit_edge52.i.i133
  %.val42.i.i127238 = phi i32 [ %.val42.i.i127, %bb.at ], [ %i.md, %._crit_edge52.i.i133 ]
  %i.nl = add nuw nsw i32 %.6198, 1               ; 2 uses
  %exitcond231.not = icmp eq i32 %i.nl, %i.hq
  br i1 %exitcond231.not, label %._crit_edge201, label %bb.at, !llvm.loop !223

._crit_edge201:                                   ; preds = %sat_solver3_pop.exit145, %.preheader169._crit_edge.thread
  %i.nm = phi i32 [ %i.kb, %.preheader169._crit_edge.thread ], [ %i.mb, %sat_solver3_pop.exit145 ]
  %i.nn = add nsw i32 %i.nm, %i.hq
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge201, %tailrecurse._crit_edge
  %.0 = phi i32 [ %i.z, %tailrecurse._crit_edge ], [ %i.nn, %._crit_edge201 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @sat_solver3_minimize_assumptions2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = icmp eq i32 %2, 1
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.f = load i32, ptr %1, align 4, !tbaa !32
  %i.g = xor i32 %i.f, 1                          ; 2 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !193
  %i.j = sext i32 %3 to i64
  store i64 %i.j, ptr %i.h, align 8, !tbaa !193
  %i.k = tail call i32 @sat_solver3_push(ptr noundef %0, i32 noundef %i.g) ; 0 uses
  %i.l = tail call i32 @sat_solver3_solve_internal(ptr noundef %0) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %i.o = add nsw i32 %i.n, -1                     ; 3 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !93
  %i.p = getelementptr i8, ptr %0, i64 316        ; 2 uses
  %.val42.i.i = load i32, ptr %i.p, align 4, !tbaa !37 ; 2 uses
  %.not.i.not.i = icmp slt i32 %.val42.i.i, %i.n
  br i1 %.not.i.not.i, label %sat_solver3_pop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 320
  %.val39.i.i = load ptr, ptr %i.q, align 8, !tbaa !31 ; 2 uses
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %.val39.i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57   ; 2 uses
  %.not35.not45.i.i = icmp sgt i32 %i.v, %i.t
  br i1 %.not35.not45.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.w = sext i32 %.val42.i.i to i64
  %i.x = getelementptr [4 x i8], ptr %.val39.i.i, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 208
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ad = getelementptr i8, ptr %0, i64 216
  %i.ae = sext i32 %i.v to i64
  %i.af = sext i32 %i.z to i64
  %i.ag = sext i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 4 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = ashr i32 %i.aj, 1
  %.val41.i.i = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.val41.i.i, i64 %i.al
  store i8 3, ptr %i.am, align 1, !tbaa !25
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.al
  store i32 0, ptr %i.ao, align 4, !tbaa !32
  %.not37.i.i = icmp sgt i64 %indvars.iv.i.i, %i.af
  br i1 %.not37.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.val43.i.i = load ptr, ptr %i.ad, align 8, !tbaa !78
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 1
  %i.au = xor i8 %i.at, 1
  %i.av = getelementptr inbounds i8, ptr %.val43.i.i, i64 %i.al
  store i8 %i.au, ptr %i.av, align 1, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not35.not.i.i = icmp sgt i64 %indvars.iv.next.i.i, %i.ag
  br i1 %.not35.not.i.i, label %bb.d, label %._crit_edge.i.i, !llvm.loop !189

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  %.not36.not48.i.i = icmp sgt i32 %i.ax, %i.t
  br i1 %.not36.not48.i.i, label %.lr.ph51.i.i, label %._crit_edge52.i.i

.lr.ph51.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = sext i32 %i.ax to i64
  %i.ba = sext i32 %i.t to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph51.i.i
  %indvars.iv54.i.i = phi i64 [ %i.az, %.lr.ph51.i.i ], [ %indvars.iv.next55.i.i, %bb.g ]
  %indvars.iv.next55.i.i = add nsw i64 %indvars.iv54.i.i, -1 ; 3 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv.next55.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = ashr i32 %i.bd, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.be)
  %.not36.not.i.i = icmp sgt i64 %indvars.iv.next55.i.i, %i.ba
  br i1 %.not36.not.i.i, label %bb.g, label %._crit_edge52.i.i, !llvm.loop !190

._crit_edge52.i.i:                                ; preds = %bb.g, %._crit_edge.i.i
  store i32 %i.t, ptr %i.u, align 4, !tbaa !57
  store i32 %i.t, ptr %i.aw, align 8, !tbaa !58
  store i32 %i.o, ptr %i.p, align 4, !tbaa !37
  br label %sat_solver3_pop.exit

sat_solver3_pop.exit:                             ; preds = %bb.b, %._crit_edge52.i.i
  %i.bf = icmp eq i32 %i.l, -1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %sat_solver3_pop.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bh = call i32 @sat_solver3_addclause(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bg) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %sat_solver3_pop.exit
  %sext = shl i64 %i.i, 32
  %i.bi = ashr exact i64 %sext, 32
  store i64 %i.bi, ptr %i.h, align 8, !tbaa !193
  %i.bj = icmp ne i32 %i.l, -1
  %i.bk = zext i1 %i.bj to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.bn

bb.j:                                             ; preds = %bb.a
  %i.bl = sdiv i32 %2, 2                          ; 11 uses
  %i.bm = sub nsw i32 %2, %i.bl                   ; 2 uses
  %i.bn = icmp sgt i32 %2, 1                      ; 2 uses
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.j
  %i.bo = sext i32 %i.bl to i64                   ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bo
  %i.bq = tail call i32 @sat_solver3_minimize_assumptions2(ptr noundef %0, ptr noundef %i.bp, i32 noundef %i.bm, i32 noundef %3)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i32 0, ptr %i.br, align 4, !tbaa !37
  br label %.preheader209

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.bl to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %indvars.iv279 = phi i32 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next280, %bb.ab ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ab ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !32
  %i.bu = tail call i32 @sat_solver3_push(ptr noundef %0, i32 noundef %i.bt)
  %.not110 = icmp eq i32 %i.bu, 0
  br i1 %.not110, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 316       ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 320
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cc = getelementptr i8, ptr %0, i64 208
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ce = getelementptr i8, ptr %0, i64 216
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ci = getelementptr i8, ptr %0, i64 300       ; 3 uses
  %i.cj = getelementptr i8, ptr %0, i64 304       ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val42.i.i111.pre = load i32, ptr %i.by, align 4, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %sat_solver3_pop.exit129
  %.val42.i.i111 = phi i32 [ %.val42.i.i111.pre, %.preheader ], [ %.val42.i.i111292, %sat_solver3_pop.exit129 ] ; 3 uses
  %.0102239 = phi i32 [ %i.bw, %.preheader ], [ %i.fx, %sat_solver3_pop.exit129 ] ; 2 uses
  %i.cl = load i32, ptr %i.bx, align 8, !tbaa !93 ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1                   ; 4 uses
  store i32 %i.cm, ptr %i.bx, align 8, !tbaa !93
  %.not.i.not.i112 = icmp slt i32 %.val42.i.i111, %i.cl
  br i1 %.not.i.not.i112, label %sat_solver3_pop.exit129, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val39.i.i113 = load ptr, ptr %i.bz, align 8, !tbaa !31 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %.val39.i.i113, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32 ; 6 uses
  %i.cq = load i32, ptr %i.ca, align 4, !tbaa !57 ; 2 uses
  %.not35.not45.i.i114 = icmp sgt i32 %i.cq, %i.cp
  br i1 %.not35.not45.i.i114, label %.lr.ph.i.i122, label %._crit_edge.i.i115

.lr.ph.i.i122:                                    ; preds = %bb.l
  %i.cr = sext i32 %.val42.i.i111 to i64
  %i.cs = getelementptr [4 x i8], ptr %.val39.i.i113, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !32
  %i.cv = sext i32 %i.cq to i64
  %i.cw = sext i32 %i.cu to i64
  %i.cx = sext i32 %i.cp to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i122
  %indvars.iv.i.i123 = phi i64 [ %i.cv, %.lr.ph.i.i122 ], [ %indvars.iv.next.i.i124, %bb.o ] ; 2 uses
  %indvars.iv.next.i.i124 = add nsw i64 %indvars.iv.i.i123, -1 ; 4 uses
  %i.cy = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i124
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !32
  %i.db = ashr i32 %i.da, 1
  %.val41.i.i125 = load ptr, ptr %i.cc, align 8, !tbaa !8
  %i.dc = sext i32 %i.db to i64                   ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.val41.i.i125, i64 %i.dc
  store i8 3, ptr %i.dd, align 1, !tbaa !25
  %i.de = load ptr, ptr %i.cd, align 8, !tbaa !62
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dc
  store i32 0, ptr %i.df, align 4, !tbaa !32
  %.not37.i.i126 = icmp sgt i64 %indvars.iv.i.i123, %i.cw
  br i1 %.not37.i.i126, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i124
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !32
  %.val43.i.i127 = load ptr, ptr %i.ce, align 8, !tbaa !78
  %i.dj = trunc i32 %i.di to i8
  %i.dk = and i8 %i.dj, 1
  %i.dl = xor i8 %i.dk, 1
  %i.dm = getelementptr inbounds i8, ptr %.val43.i.i127, i64 %i.dc
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not35.not.i.i128 = icmp sgt i64 %indvars.iv.next.i.i124, %i.cx
  br i1 %.not35.not.i.i128, label %bb.m, label %._crit_edge.i.i115, !llvm.loop !189

._crit_edge.i.i115:                               ; preds = %bb.o, %bb.l
  %i.dn = load i32, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %.not36.not48.i.i116 = icmp sgt i32 %i.dn, %i.cp
  br i1 %.not36.not48.i.i116, label %.lr.ph51.i.i118, label %._crit_edge52.i.i117

.lr.ph51.i.i118:                                  ; preds = %._crit_edge.i.i115
  %i.do = sext i32 %i.dn to i64
  %i.dp = sext i32 %i.cp to i64
  %.pre294 = load ptr, ptr %i.cg, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %order_unassigned.exit, %.lr.ph51.i.i118
  %i.dq = phi ptr [ %.pre294, %.lr.ph51.i.i118 ], [ %i.fw, %order_unassigned.exit ] ; 3 uses
  %indvars.iv54.i.i119 = phi i64 [ %i.do, %.lr.ph51.i.i118 ], [ %indvars.iv.next55.i.i120, %order_unassigned.exit ]
  %indvars.iv.next55.i.i120 = add nsw i64 %indvars.iv54.i.i119, -1 ; 3 uses
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %indvars.iv.next55.i.i120
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !32
  %i.du = ashr i32 %i.dt, 1                       ; 2 uses
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !32
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %bb.q, label %order_unassigned.exit

bb.q:                                             ; preds = %bb.p
  %.val.i = load i32, ptr %i.ci, align 4, !tbaa !37 ; 6 uses
  store i32 %.val.i, ptr %i.dw, align 4, !tbaa !32
  %i.dz = load i32, ptr %i.ch, align 8, !tbaa !38
  %i.ea = icmp eq i32 %.val.i, %i.dz
  %.pre296 = load ptr, ptr %i.cj, align 8, !tbaa !31 ; 3 uses
  br i1 %i.ea, label %bb.r, label %veci_push.exit.i

bb.r:                                             ; preds = %bb.q
  %i.eb = icmp slt i32 %.val.i, 4
  %i.ec = shl nsw i32 %.val.i, 1
  %i.ed = lshr i32 %.val.i, 1
  %i.ee = mul nuw nsw i32 %i.ed, 3
  %i.ef = select i1 %i.eb, i32 %i.ec, i32 %i.ee   ; 3 uses
  %.not.i.i = icmp eq ptr %.pre296, null
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 2                    ; 2 uses
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = tail call ptr @realloc(ptr noundef nonnull %.pre296, i64 noundef %i.eh) #27
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.eh) #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ek = phi ptr [ %i.ei, %bb.s ], [ %i.ej, %bb.t ] ; 3 uses
  store ptr %i.ek, ptr %i.cj, align 8, !tbaa !31
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.em = load i32, ptr %i.ch, align 8, !tbaa !38
  %i.en = sitofp i32 %i.em to double
  %i.eo = fmul nnan double %i.en, f0x3EB0000000000000
  %i.ep = sitofp i32 %i.ef to double
  %i.eq = fmul nnan double %i.ep, f0x3EB0000000000000
  %i.er = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.eo, double noundef %i.eq) ; 0 uses
  %i.es = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.et = tail call i32 @fflush(ptr noundef %i.es) ; 0 uses
  %.pre295.pre = load ptr, ptr %i.cj, align 8, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre295 = phi ptr [ %.pre295.pre, %bb.v ], [ %i.ek, %bb.u ]
  store i32 %i.ef, ptr %i.ch, align 8, !tbaa !38
  %.pre.i.i = load i32, ptr %i.ci, align 4, !tbaa !37
  %.pre.i188 = load ptr, ptr %i.cg, align 8, !tbaa !30
  br label %veci_push.exit.i

veci_push.exit.i:                                 ; preds = %bb.w, %bb.q
  %i.eu = phi ptr [ %.pre295, %bb.w ], [ %.pre296, %bb.q ] ; 5 uses
  %i.ev = phi ptr [ %.pre.i188, %bb.w ], [ %i.dq, %bb.q ] ; 4 uses
  %i.ew = phi i32 [ %.pre.i.i, %bb.w ], [ %.val.i, %bb.q ] ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ci, align 4, !tbaa !37
  %i.ey = sext i32 %i.ew to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ey
  store i32 %i.du, ptr %i.ez, align 4, !tbaa !32
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.dv
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !32 ; 3 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !32 ; 3 uses
  %.not31.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not31.i.i, label %..critedge_crit_edge.i.i, label %.lr.ph.i.i187

..critedge_crit_edge.i.i:                         ; preds = %veci_push.exit.i
  %.pre.i10.i = sext i32 %i.fe to i64
  br label %order_update.exit.i

.lr.ph.i.i187:                                    ; preds = %veci_push.exit.i
  %i.ff = load ptr, ptr %i.ck, align 8, !tbaa !27 ; 2 uses
  %i.fg = sext i32 %i.fe to i64                   ; 3 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i187
  %.02832.i.i = phi i32 [ %i.fb, %.lr.ph.i.i187 ], [ %.033.i.i, %bb.y ] ; 5 uses
  %.033.in.i.i = add nsw i32 %.02832.i.i, -1
  %.033.i.i = sdiv i32 %.033.in.i.i, 2            ; 3 uses
  %i.fj = sext i32 %.033.i.i to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !32 ; 2 uses
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !28
  %i.fp = icmp ugt i64 %i.fi, %i.fo
  br i1 %i.fp, label %bb.y, label %order_update.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fq = sext i32 %.02832.i.i to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fq
  store i32 %i.fl, ptr %i.fr, align 4, !tbaa !32
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.fm
  store i32 %.02832.i.i, ptr %i.fs, align 4, !tbaa !32
  %.not.i9.i = icmp ult i32 %.02832.i.i, 3
  br i1 %.not.i9.i, label %order_update.exit.i, label %bb.x, !llvm.loop !33

order_update.exit.i:                              ; preds = %bb.y, %bb.x, %..critedge_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i10.i, %..critedge_crit_edge.i.i ], [ %i.fg, %bb.x ], [ %i.fg, %bb.y ]
  %.028.lcssa.i.i = phi i32 [ 0, %..critedge_crit_edge.i.i ], [ %.033.i.i, %bb.y ], [ %.02832.i.i, %bb.x ] ; 2 uses
  %i.ft = sext i32 %.028.lcssa.i.i to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ft
  store i32 %i.fe, ptr %i.fu, align 4, !tbaa !32
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %.pre-phi.i.i
  store i32 %.028.lcssa.i.i, ptr %i.fv, align 4, !tbaa !32
  br label %order_unassigned.exit

order_unassigned.exit:                            ; preds = %bb.p, %order_update.exit.i
  %i.fw = phi ptr [ %i.dq, %bb.p ], [ %i.ev, %order_update.exit.i ]
  %.not36.not.i.i121 = icmp sgt i64 %indvars.iv.next55.i.i120, %i.dp
  br i1 %.not36.not.i.i121, label %bb.p, label %._crit_edge52.i.i117, !llvm.loop !190

._crit_edge52.i.i117:                             ; preds = %order_unassigned.exit, %._crit_edge.i.i115
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !57
  store i32 %i.cp, ptr %i.cf, align 8, !tbaa !58
  store i32 %i.cm, ptr %i.by, align 4, !tbaa !37
  br label %sat_solver3_pop.exit129

sat_solver3_pop.exit129:                          ; preds = %bb.k, %._crit_edge52.i.i117
  %.val42.i.i111292 = phi i32 [ %.val42.i.i111, %bb.k ], [ %i.cm, %._crit_edge52.i.i117 ]
  %i.fx = add nsw i32 %.0102239, -1
  %i.fy = icmp sgt i32 %.0102239, 0
  br i1 %i.fy, label %bb.k, label %bb.z, !llvm.loop !224

bb.z:                                             ; preds = %sat_solver3_pop.exit129
  %i.fz = add nuw nsw i32 %i.bw, 1
  %.not246 = icmp sgt i32 %i.bl, %i.bw
  br i1 %.not246, label %._crit_edge243, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not247 = icmp slt i32 %indvars.iv279, %i.bl
  br i1 %.not247, label %.lr.ph242.split.us, label %bb.aa, !llvm.loop !225

.lr.ph242.split.us:                               ; preds = %.lr.ph242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %4 = load i32, ptr %i.bv, align 4, !tbaa !32
  %5 = xor i32 %4, 1
  store i32 %5, ptr %i.c, align 4, !tbaa !32
  %6 = call i32 @sat_solver3_addclause(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ga) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %._crit_edge243

bb.aa:                                            ; preds = %.lr.ph242, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.gb = load i32, ptr %i.bv, align 4, !tbaa !32
  %i.gc = xor i32 %i.gb, 1
  store i32 %i.gc, ptr %i.c, align 4, !tbaa !32
  %i.gd = call i32 @sat_solver3_addclause(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ga) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.aa

._crit_edge243:                                   ; preds = %.lr.ph242.split.us, %bb.z
  %i.ge = call i32 @sat_solver3_minimize_assumptions2(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.fz, i32 noundef %3)
  br label %bb.bn

bb.ab:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next280 = add i32 %indvars.iv279, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !226

._crit_edge:                                      ; preds = %bb.ab
  %i.gf = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gf
  %i.gh = tail call i32 @sat_solver3_minimize_assumptions2(ptr noundef %0, ptr noundef %i.gg, i32 noundef %i.bm, i32 noundef %3)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.gj = getelementptr i8, ptr %0, i64 316       ; 2 uses
  %i.gk = getelementptr i8, ptr %0, i64 320
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.gn = getelementptr i8, ptr %0, i64 208
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gp = getelementptr i8, ptr %0, i64 216
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.gt = getelementptr i8, ptr %0, i64 300       ; 3 uses
  %i.gu = getelementptr i8, ptr %0, i64 304       ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val42.i.i130.pre = load i32, ptr %i.gj, align 4, !tbaa !37
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %sat_solver3_pop.exit148
  %.val42.i.i130 = phi i32 [ %.val42.i.i130.pre, %._crit_edge ], [ %.val42.i.i130282, %sat_solver3_pop.exit148 ] ; 3 uses
  %.1215 = phi i32 [ 0, %._crit_edge ], [ %i.ki, %sat_solver3_pop.exit148 ]
  %i.gw = load i32, ptr %i.gi, align 8, !tbaa !93 ; 2 uses
  %i.gx = add nsw i32 %i.gw, -1                   ; 4 uses
  store i32 %i.gx, ptr %i.gi, align 8, !tbaa !93
  %.not.i.not.i131 = icmp slt i32 %.val42.i.i130, %i.gw
  br i1 %.not.i.not.i131, label %sat_solver3_pop.exit148, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val39.i.i132 = load ptr, ptr %i.gk, align 8, !tbaa !31 ; 2 uses
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.val39.i.i132, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !32 ; 6 uses
  %i.hb = load i32, ptr %i.gl, align 4, !tbaa !57 ; 2 uses
  %.not35.not45.i.i133 = icmp sgt i32 %i.hb, %i.ha
  br i1 %.not35.not45.i.i133, label %.lr.ph.i.i141, label %._crit_edge.i.i134

.lr.ph.i.i141:                                    ; preds = %bb.ad
  %i.hc = sext i32 %.val42.i.i130 to i64
  %i.hd = getelementptr [4 x i8], ptr %.val39.i.i132, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !32
  %i.hg = sext i32 %i.hb to i64
  %i.hh = sext i32 %i.hf to i64
  %i.hi = sext i32 %i.ha to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph.i.i141
  %indvars.iv.i.i142 = phi i64 [ %i.hg, %.lr.ph.i.i141 ], [ %indvars.iv.next.i.i143, %bb.ag ] ; 2 uses
  %indvars.iv.next.i.i143 = add nsw i64 %indvars.iv.i.i142, -1 ; 4 uses
  %i.hj = load ptr, ptr %i.gm, align 8, !tbaa !59
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %indvars.iv.next.i.i143
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !32
  %i.hm = ashr i32 %i.hl, 1
  %.val41.i.i144 = load ptr, ptr %i.gn, align 8, !tbaa !8
  %i.hn = sext i32 %i.hm to i64                   ; 3 uses
  %i.ho = getelementptr inbounds i8, ptr %.val41.i.i144, i64 %i.hn
  store i8 3, ptr %i.ho, align 1, !tbaa !25
  %i.hp = load ptr, ptr %i.go, align 8, !tbaa !62
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hn
  store i32 0, ptr %i.hq, align 4, !tbaa !32
  %.not37.i.i145 = icmp sgt i64 %indvars.iv.i.i142, %i.hh
  br i1 %.not37.i.i145, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hr = load ptr, ptr %i.gm, align 8, !tbaa !59
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv.next.i.i143
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !32
  %.val43.i.i146 = load ptr, ptr %i.gp, align 8, !tbaa !78
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = and i8 %i.hu, 1
  %i.hw = xor i8 %i.hv, 1
  %i.hx = getelementptr inbounds i8, ptr %.val43.i.i146, i64 %i.hn
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not35.not.i.i147 = icmp sgt i64 %indvars.iv.next.i.i143, %i.hi
  br i1 %.not35.not.i.i147, label %bb.ae, label %._crit_edge.i.i134, !llvm.loop !189

._crit_edge.i.i134:                               ; preds = %bb.ag, %bb.ad
  %i.hy = load i32, ptr %i.gq, align 8, !tbaa !58 ; 2 uses
  %.not36.not48.i.i135 = icmp sgt i32 %i.hy, %i.ha
  br i1 %.not36.not48.i.i135, label %.lr.ph51.i.i137, label %._crit_edge52.i.i136

.lr.ph51.i.i137:                                  ; preds = %._crit_edge.i.i134
  %i.hz = sext i32 %i.hy to i64
  %i.ia = sext i32 %i.ha to i64
  %.pre = load ptr, ptr %i.gr, align 8, !tbaa !30
  br label %bb.ah

bb.ah:                                            ; preds = %order_unassigned.exit205, %.lr.ph51.i.i137
  %i.ib = phi ptr [ %.pre, %.lr.ph51.i.i137 ], [ %i.kh, %order_unassigned.exit205 ] ; 3 uses
  %indvars.iv54.i.i138 = phi i64 [ %i.hz, %.lr.ph51.i.i137 ], [ %indvars.iv.next55.i.i139, %order_unassigned.exit205 ]
  %indvars.iv.next55.i.i139 = add nsw i64 %indvars.iv54.i.i138, -1 ; 3 uses
  %i.ic = load ptr, ptr %i.gm, align 8, !tbaa !59
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv.next55.i.i139
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !32
  %i.if = ashr i32 %i.ie, 1                       ; 2 uses
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !32
  %i.ij = icmp eq i32 %i.ii, -1
  br i1 %i.ij, label %bb.ai, label %order_unassigned.exit205

bb.ai:                                            ; preds = %bb.ah
  %.val.i189 = load i32, ptr %i.gt, align 4, !tbaa !37 ; 6 uses
  store i32 %.val.i189, ptr %i.ih, align 4, !tbaa !32
  %i.ik = load i32, ptr %i.gs, align 8, !tbaa !38
  %i.il = icmp eq i32 %.val.i189, %i.ik
  %.pre285 = load ptr, ptr %i.gu, align 8, !tbaa !31 ; 3 uses
  br i1 %i.il, label %bb.aj, label %veci_push.exit.i190

bb.aj:                                            ; preds = %bb.ai
  %i.im = icmp slt i32 %.val.i189, 4
  %i.in = shl nsw i32 %.val.i189, 1
  %i.io = lshr i32 %.val.i189, 1
  %i.ip = mul nuw nsw i32 %i.io, 3
  %i.iq = select i1 %i.im, i32 %i.in, i32 %i.ip   ; 3 uses
  %.not.i.i202 = icmp eq ptr %.pre285, null
  %i.ir = sext i32 %i.iq to i64
  %i.is = shl nsw i64 %i.ir, 2                    ; 2 uses
  br i1 %.not.i.i202, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.it = tail call ptr @realloc(ptr noundef nonnull %.pre285, i64 noundef %i.is) #27
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.is) #28
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.iv = phi ptr [ %i.it, %bb.ak ], [ %i.iu, %bb.al ] ; 3 uses
  store ptr %i.iv, ptr %i.gu, align 8, !tbaa !31
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ix = load i32, ptr %i.gs, align 8, !tbaa !38
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fmul nnan double %i.iy, f0x3EB0000000000000
  %i.ja = sitofp i32 %i.iq to double
  %i.jb = fmul nnan double %i.ja, f0x3EB0000000000000
  %i.jc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.iz, double noundef %i.jb) ; 0 uses
  %i.jd = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.je = tail call i32 @fflush(ptr noundef %i.jd) ; 0 uses
  %.pre284.pre = load ptr, ptr %i.gu, align 8, !tbaa !31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pre284 = phi ptr [ %.pre284.pre, %bb.an ], [ %i.iv, %bb.am ]
  store i32 %i.iq, ptr %i.gs, align 8, !tbaa !38
  %.pre.i.i203 = load i32, ptr %i.gt, align 4, !tbaa !37
  %.pre.i204 = load ptr, ptr %i.gr, align 8, !tbaa !30
  br label %veci_push.exit.i190

veci_push.exit.i190:                              ; preds = %bb.ao, %bb.ai
  %i.jf = phi ptr [ %.pre284, %bb.ao ], [ %.pre285, %bb.ai ] ; 5 uses
  %i.jg = phi ptr [ %.pre.i204, %bb.ao ], [ %i.ib, %bb.ai ] ; 4 uses
  %i.jh = phi i32 [ %.pre.i.i203, %bb.ao ], [ %.val.i189, %bb.ai ] ; 2 uses
  %i.ji = add nsw i32 %i.jh, 1
  store i32 %i.ji, ptr %i.gt, align 4, !tbaa !37
  %i.jj = sext i32 %i.jh to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jj
  store i32 %i.if, ptr %i.jk, align 4, !tbaa !32
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.ig
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !32 ; 3 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !32 ; 3 uses
  %.not31.i.i191 = icmp eq i32 %i.jm, 0
  br i1 %.not31.i.i191, label %..critedge_crit_edge.i.i200, label %.lr.ph.i.i192

..critedge_crit_edge.i.i200:                      ; preds = %veci_push.exit.i190
  %.pre.i10.i201 = sext i32 %i.jp to i64
  br label %order_update.exit.i196

.lr.ph.i.i192:                                    ; preds = %veci_push.exit.i190
  %i.jq = load ptr, ptr %i.gv, align 8, !tbaa !27 ; 2 uses
  %i.jr = sext i32 %i.jp to i64                   ; 3 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i.i192
  %.02832.i.i193 = phi i32 [ %i.jm, %.lr.ph.i.i192 ], [ %.033.i.i195, %bb.aq ] ; 5 uses
  %.033.in.i.i194 = add nsw i32 %.02832.i.i193, -1
  %.033.i.i195 = sdiv i32 %.033.in.i.i194, 2      ; 3 uses
  %i.ju = sext i32 %.033.i.i195 to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !32 ; 2 uses
  %i.jx = sext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !28
  %i.ka = icmp ugt i64 %i.jt, %i.jz
end_hunk_0
begin_hunk_1_@sat_solver3_minimize_assumptions2:bb.a
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !32
  %i.lb = load i32, ptr %i.kk, align 4, !tbaa !37 ; 5 uses
  %i.lc = load i32, ptr %i.kj, align 8, !tbaa !38
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %bb.as, label %veci_push.exit

bb.as:                                            ; preds = %bb.ar
  %i.le = icmp slt i32 %i.lb, 4
  %i.lf = shl nsw i32 %i.lb, 1
  %i.lg = lshr i32 %i.lb, 1
  %i.lh = mul nuw nsw i32 %i.lg, 3
  %i.li = select i1 %i.le, i32 %i.lf, i32 %i.lh   ; 3 uses
  %.not.i = icmp eq ptr %.pre287, null
  %i.lj = sext i32 %i.li to i64
  %i.lk = shl nsw i64 %i.lj, 2                    ; 2 uses
  br i1 %.not.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ll = tail call ptr @realloc(ptr noundef nonnull %.pre287, i64 noundef %i.lk) #27
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.lm = tail call noalias ptr @malloc(i64 noundef %i.lk) #28
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ln = phi ptr [ %i.ll, %bb.at ], [ %i.lm, %bb.au ] ; 3 uses
  store ptr %i.ln, ptr %i.kl, align 8, !tbaa !31
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lp = load i32, ptr %i.kj, align 8, !tbaa !38
  %i.lq = sitofp i32 %i.lp to double
  %i.lr = fmul nnan double %i.lq, f0x3EB0000000000000
  %i.ls = sitofp i32 %i.li to double
  %i.lt = fmul nnan double %i.ls, f0x3EB0000000000000
  %i.lu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.lr, double noundef %i.lt) ; 0 uses
  %i.lv = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.lw = tail call i32 @fflush(ptr noundef %i.lv) ; 0 uses
  %.pre286.pre = load ptr, ptr %i.kl, align 8, !tbaa !31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pre286 = phi ptr [ %.pre286.pre, %bb.aw ], [ %i.ln, %bb.av ]
  store i32 %i.li, ptr %i.kj, align 8, !tbaa !38
  %.pre.i = load i32, ptr %i.kk, align 4, !tbaa !37
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.ar, %bb.ax
  %.pre287298 = phi ptr [ %.pre286, %bb.ax ], [ %.pre287, %bb.ar ] ; 2 uses
  %i.lx = phi i32 [ %.pre.i, %bb.ax ], [ %i.lb, %bb.ar ] ; 2 uses
  %i.ly = add nsw i32 %i.lx, 1
  store i32 %i.ly, ptr %i.kk, align 4, !tbaa !37
  %i.lz = sext i32 %i.lx to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %.pre287298, i64 %i.lz
  store i32 %i.la, ptr %i.ma, align 4, !tbaa !32
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %.preheader209, label %bb.ar, !llvm.loop !230

.preheader208:                                    ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223, %middle.block, %.preheader209
  br i1 %i.bn, label %.lr.ph225, label %.preheader207

.lr.ph225:                                        ; preds = %.preheader208
  %i.mb = getelementptr i8, ptr %0, i64 648
  %.val = load ptr, ptr %i.mb, align 8, !tbaa !31 ; 7 uses
  %i.mc = sext i32 %i.kn to i64                   ; 2 uses
  %wide.trip.count268 = zext nneg i32 %i.bl to i64 ; 5 uses
  %invariant.gep343 = getelementptr [4 x i8], ptr %1, i64 %i.mc ; 6 uses
  %min.iters.check355 = icmp ult i32 %2, 32
  br i1 %min.iters.check355, label %scalar.ph354.preheader, label %vector.memcheck351

vector.memcheck351:                               ; preds = %.lr.ph225
  %.val352 = ptrtoaddr ptr %.val to i64
  %i.md = shl nsw i64 %i.mc, 2
  %i.me = add i64 %i.md, %i.a
  %i.mf = sub i64 %.val352, %i.me
  %diff.check353 = icmp ugt i64 %i.mf, -32
  br i1 %diff.check353, label %scalar.ph354.preheader, label %vector.ph356

vector.ph356:                                     ; preds = %vector.memcheck351
  %n.vec357 = and i64 %wide.trip.count268, 1073741816 ; 3 uses
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next362, %vector.body358 ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %index359 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %wide.load360 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !32
  %wide.load361 = load <4 x i32>, ptr %i.mh, align 4, !tbaa !32
  %i.mi = getelementptr [4 x i8], ptr %invariant.gep343, i64 %index359 ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 16
  store <4 x i32> %wide.load360, ptr %i.mi, align 4, !tbaa !32
  store <4 x i32> %wide.load361, ptr %i.mj, align 4, !tbaa !32
  %index.next362 = add nuw i64 %index359, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next362, %n.vec357
  br i1 %i.mk, label %middle.block363, label %vector.body358, !llvm.loop !231

middle.block363:                                  ; preds = %vector.body358
  %cmp.n364 = icmp eq i64 %n.vec357, %wide.trip.count268
  br i1 %cmp.n364, label %.preheader207, label %scalar.ph354.preheader

scalar.ph354.preheader:                           ; preds = %vector.memcheck351, %.lr.ph225, %middle.block363
  %indvars.iv265.ph = phi i64 [ 0, %vector.memcheck351 ], [ 0, %.lr.ph225 ], [ %n.vec357, %middle.block363 ] ; 3 uses
  %xtraiter371 = and i64 %wide.trip.count268, 3   ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %scalar.ph354.prol.loopexit, label %scalar.ph354.prol

scalar.ph354.prol:                                ; preds = %scalar.ph354.preheader, %scalar.ph354.prol
  %indvars.iv265.prol = phi i64 [ %indvars.iv.next266.prol, %scalar.ph354.prol ], [ %indvars.iv265.ph, %scalar.ph354.preheader ] ; 3 uses
  %prol.iter373 = phi i64 [ %prol.iter373.next, %scalar.ph354.prol ], [ 0, %scalar.ph354.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv265.prol
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !32
  %gep344.prol = getelementptr [4 x i8], ptr %invariant.gep343, i64 %indvars.iv265.prol
  store i32 %i.mm, ptr %gep344.prol, align 4, !tbaa !32
  %indvars.iv.next266.prol = add nuw nsw i64 %indvars.iv265.prol, 1 ; 2 uses
  %prol.iter373.next = add i64 %prol.iter373, 1   ; 2 uses
  %prol.iter373.cmp.not = icmp eq i64 %prol.iter373.next, %xtraiter371
  br i1 %prol.iter373.cmp.not, label %scalar.ph354.prol.loopexit, label %scalar.ph354.prol, !llvm.loop !232

scalar.ph354.prol.loopexit:                       ; preds = %scalar.ph354.prol, %scalar.ph354.preheader
  %indvars.iv265.unr = phi i64 [ %indvars.iv265.ph, %scalar.ph354.preheader ], [ %indvars.iv.next266.prol, %scalar.ph354.prol ]
  %i.mn = sub nsw i64 %indvars.iv265.ph, %wide.trip.count268
  %i.mo = icmp ugt i64 %i.mn, -4
  br i1 %i.mo, label %.preheader207, label %scalar.ph354

.lr.ph223:                                        ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.3, %.lr.ph223 ], [ %indvars.iv260.unr, %.lr.ph223.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv260
  %i.mp = load i32, ptr %gep, align 4, !tbaa !32
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv260
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !32
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next261
  %i.mr = load i32, ptr %gep.1, align 4, !tbaa !32
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next261
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !32
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next261.1
  %i.mt = load i32, ptr %gep.2, align 4, !tbaa !32
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next261.1
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !32
  %indvars.iv.next261.2 = add nuw nsw i64 %indvars.iv260, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next261.2
  %i.mv = load i32, ptr %gep.3, align 4, !tbaa !32
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next261.2
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !32
  %indvars.iv.next261.3 = add nuw nsw i64 %indvars.iv260, 4 ; 2 uses
  %exitcond264.not.3 = icmp eq i64 %indvars.iv.next261.3, %wide.trip.count263
  br i1 %exitcond264.not.3, label %.preheader208, label %.lr.ph223, !llvm.loop !233

.preheader207:                                    ; preds = %scalar.ph354.prol.loopexit, %scalar.ph354, %middle.block363, %.preheader208
  br i1 %i.ko, label %.lr.ph228.preheader, label %._crit_edge229.thread

._crit_edge229.thread:                            ; preds = %.preheader207
  %i.mx = sext i32 %i.kn to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %1, i64 %i.mx
  %i.mz = tail call i32 @sat_solver3_minimize_assumptions2(ptr noundef nonnull %0, ptr noundef %i.my, i32 noundef %i.bl, i32 noundef %3)
  br label %._crit_edge233

.lr.ph228.preheader:                              ; preds = %.preheader207
  %wide.trip.count273 = zext nneg i32 %i.kn to i64
  br label %.lr.ph228

scalar.ph354:                                     ; preds = %scalar.ph354.prol.loopexit, %scalar.ph354
  %indvars.iv265 = phi i64 [ %indvars.iv.next266.3, %scalar.ph354 ], [ %indvars.iv265.unr, %scalar.ph354.prol.loopexit ] ; 6 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv265
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !32
  %gep344 = getelementptr [4 x i8], ptr %invariant.gep343, i64 %indvars.iv265
  store i32 %i.nb, ptr %gep344, align 4, !tbaa !32
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next266
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !32
  %gep344.1 = getelementptr [4 x i8], ptr %invariant.gep343, i64 %indvars.iv.next266
  store i32 %i.nd, ptr %gep344.1, align 4, !tbaa !32
  %indvars.iv.next266.1 = add nuw nsw i64 %indvars.iv265, 2 ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next266.1
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !32
  %gep344.2 = getelementptr [4 x i8], ptr %invariant.gep343, i64 %indvars.iv.next266.1
  store i32 %i.nf, ptr %gep344.2, align 4, !tbaa !32
  %indvars.iv.next266.2 = add nuw nsw i64 %indvars.iv265, 3 ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next266.2
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !32
  %gep344.3 = getelementptr [4 x i8], ptr %invariant.gep343, i64 %indvars.iv.next266.2
  store i32 %i.nh, ptr %gep344.3, align 4, !tbaa !32
  %indvars.iv.next266.3 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %exitcond269.not.3 = icmp eq i64 %indvars.iv.next266.3, %wide.trip.count268
  br i1 %exitcond269.not.3, label %.preheader207, label %scalar.ph354, !llvm.loop !234

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.bg
  %indvars.iv276 = phi i32 [ 1, %.lr.ph228.preheader ], [ %indvars.iv.next277, %bb.bg ] ; 2 uses
  %indvars.iv270 = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next271, %bb.bg ] ; 4 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv270
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !32
  %i.nk = tail call i32 @sat_solver3_push(ptr noundef %0, i32 noundef %i.nj)
  %.not = icmp eq i32 %i.nk, 0
  br i1 %.not, label %.preheader206, label %bb.bg

.preheader206:                                    ; preds = %.lr.ph228
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv270 ; 2 uses
  %i.nm = trunc nuw nsw i64 %indvars.iv270 to i32 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.no = getelementptr i8, ptr %0, i64 316       ; 2 uses
  %i.np = getelementptr i8, ptr %0, i64 320
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ns = getelementptr i8, ptr %0, i64 208
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.nu = getelementptr i8, ptr %0, i64 216
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val42.i.i149.pre = load i32, ptr %i.no, align 4, !tbaa !37
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader206, %sat_solver3_pop.exit167
  %.val42.i.i149 = phi i32 [ %.val42.i.i149.pre, %.preheader206 ], [ %.val42.i.i149290, %sat_solver3_pop.exit167 ] ; 3 uses
  %.2104234 = phi i32 [ %i.nm, %.preheader206 ], [ %i.pf, %sat_solver3_pop.exit167 ] ; 2 uses
  %i.nw = load i32, ptr %i.nn, align 8, !tbaa !93 ; 2 uses
  %i.nx = add nsw i32 %i.nw, -1                   ; 4 uses
  store i32 %i.nx, ptr %i.nn, align 8, !tbaa !93
  %.not.i.not.i150 = icmp slt i32 %.val42.i.i149, %i.nw
  br i1 %.not.i.not.i150, label %sat_solver3_pop.exit167, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val39.i.i151 = load ptr, ptr %i.np, align 8, !tbaa !31 ; 2 uses
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %.val39.i.i151, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !32 ; 6 uses
  %i.ob = load i32, ptr %i.nq, align 4, !tbaa !57 ; 2 uses
  %.not35.not45.i.i152 = icmp sgt i32 %i.ob, %i.oa
  br i1 %.not35.not45.i.i152, label %.lr.ph.i.i160, label %._crit_edge.i.i153

.lr.ph.i.i160:                                    ; preds = %bb.az
  %i.oc = sext i32 %.val42.i.i149 to i64
  %i.od = getelementptr [4 x i8], ptr %.val39.i.i151, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.od, i64 -4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !32
  %i.og = sext i32 %i.ob to i64
  %i.oh = sext i32 %i.of to i64
  %i.oi = sext i32 %i.oa to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %.lr.ph.i.i160
  %indvars.iv.i.i161 = phi i64 [ %i.og, %.lr.ph.i.i160 ], [ %indvars.iv.next.i.i162, %bb.bc ] ; 2 uses
  %indvars.iv.next.i.i162 = add nsw i64 %indvars.iv.i.i161, -1 ; 4 uses
  %i.oj = load ptr, ptr %i.nr, align 8, !tbaa !59
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %indvars.iv.next.i.i162
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !32
  %i.om = ashr i32 %i.ol, 1
  %.val41.i.i163 = load ptr, ptr %i.ns, align 8, !tbaa !8
  %i.on = sext i32 %i.om to i64                   ; 3 uses
  %i.oo = getelementptr inbounds i8, ptr %.val41.i.i163, i64 %i.on
  store i8 3, ptr %i.oo, align 1, !tbaa !25
  %i.op = load ptr, ptr %i.nt, align 8, !tbaa !62
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.on
  store i32 0, ptr %i.oq, align 4, !tbaa !32
  %.not37.i.i164 = icmp sgt i64 %indvars.iv.i.i161, %i.oh
  br i1 %.not37.i.i164, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.or = load ptr, ptr %i.nr, align 8, !tbaa !59
  %i.os = getelementptr inbounds [4 x i8], ptr %i.or, i64 %indvars.iv.next.i.i162
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !32
  %.val43.i.i165 = load ptr, ptr %i.nu, align 8, !tbaa !78
  %i.ou = trunc i32 %i.ot to i8
  %i.ov = and i8 %i.ou, 1
  %i.ow = xor i8 %i.ov, 1
  %i.ox = getelementptr inbounds i8, ptr %.val43.i.i165, i64 %i.on
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !25
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.not35.not.i.i166 = icmp sgt i64 %indvars.iv.next.i.i162, %i.oi
  br i1 %.not35.not.i.i166, label %bb.ba, label %._crit_edge.i.i153, !llvm.loop !189

._crit_edge.i.i153:                               ; preds = %bb.bc, %bb.az
  %i.oy = load i32, ptr %i.nv, align 8, !tbaa !58 ; 2 uses
  %.not36.not48.i.i154 = icmp sgt i32 %i.oy, %i.oa
  br i1 %.not36.not48.i.i154, label %.lr.ph51.i.i156, label %._crit_edge52.i.i155

.lr.ph51.i.i156:                                  ; preds = %._crit_edge.i.i153
  %i.oz = sext i32 %i.oy to i64
  %i.pa = sext i32 %i.oa to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph51.i.i156
  %indvars.iv54.i.i157 = phi i64 [ %i.oz, %.lr.ph51.i.i156 ], [ %indvars.iv.next55.i.i158, %bb.bd ]
  %indvars.iv.next55.i.i158 = add nsw i64 %indvars.iv54.i.i157, -1 ; 3 uses
  %i.pb = load ptr, ptr %i.nr, align 8, !tbaa !59
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.pb, i64 %indvars.iv.next55.i.i158
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !32
  %i.pe = ashr i32 %i.pd, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.pe)
  %.not36.not.i.i159 = icmp sgt i64 %indvars.iv.next55.i.i158, %i.pa
  br i1 %.not36.not.i.i159, label %bb.bd, label %._crit_edge52.i.i155, !llvm.loop !190

._crit_edge52.i.i155:                             ; preds = %bb.bd, %._crit_edge.i.i153
  store i32 %i.oa, ptr %i.nq, align 4, !tbaa !57
  store i32 %i.oa, ptr %i.nv, align 8, !tbaa !58
  store i32 %i.nx, ptr %i.no, align 4, !tbaa !37
  br label %sat_solver3_pop.exit167

sat_solver3_pop.exit167:                          ; preds = %bb.ay, %._crit_edge52.i.i155
  %.val42.i.i149290 = phi i32 [ %.val42.i.i149, %bb.ay ], [ %i.nx, %._crit_edge52.i.i155 ]
  %i.pf = add nsw i32 %.2104234, -1
  %i.pg = icmp sgt i32 %.2104234, 0
  br i1 %i.pg, label %bb.ay, label %bb.be, !llvm.loop !235

bb.be:                                            ; preds = %sat_solver3_pop.exit167
  %i.ph = add nuw nsw i32 %i.nm, 1
  %.not244 = icmp sgt i32 %i.kn, %i.nm
  br i1 %.not244, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.be
  %i.pi = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.not245 = icmp slt i32 %indvars.iv276, %i.kn
  %.not245.fr = freeze i1 %.not245
  br i1 %.not245.fr, label %.lr.ph237.split.us, label %bb.bf, !llvm.loop !236

.lr.ph237.split.us:                               ; preds = %.lr.ph237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %7 = load i32, ptr %i.nl, align 4, !tbaa !32
  %8 = xor i32 %7, 1
  store i32 %8, ptr %i.d, align 4, !tbaa !32
  %9 = call i32 @sat_solver3_addclause(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.pi) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %._crit_edge238

bb.bf:                                            ; preds = %.lr.ph237, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.pj = load i32, ptr %i.nl, align 4, !tbaa !32
  %i.pk = xor i32 %i.pj, 1
  store i32 %i.pk, ptr %i.d, align 4, !tbaa !32
  %i.pl = call i32 @sat_solver3_addclause(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.pi) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.bf

._crit_edge238:                                   ; preds = %.lr.ph237.split.us, %bb.be
  %i.pm = call i32 @sat_solver3_minimize_assumptions2(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ph, i32 noundef %3)
  br label %bb.bn

bb.bg:                                            ; preds = %.lr.ph228
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  %indvars.iv.next277 = add nuw i32 %indvars.iv276, 1
  br i1 %exitcond274.not, label %._crit_edge229, label %.lr.ph228, !llvm.loop !237

._crit_edge229:                                   ; preds = %bb.bg
  %i.pn = zext nneg i32 %i.kn to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pn
  %i.pp = tail call i32 @sat_solver3_minimize_assumptions2(ptr noundef %0, ptr noundef nonnull %i.po, i32 noundef %i.bl, i32 noundef %3)
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.pr = getelementptr i8, ptr %0, i64 316       ; 2 uses
  %i.ps = getelementptr i8, ptr %0, i64 320
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.pv = getelementptr i8, ptr %0, i64 208
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.px = getelementptr i8, ptr %0, i64 216
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val42.i.i168.pre = load i32, ptr %i.pr, align 4, !tbaa !37
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge229, %sat_solver3_pop.exit186
  %.val42.i.i168 = phi i32 [ %.val42.i.i168.pre, %._crit_edge229 ], [ %.val42.i.i168288, %sat_solver3_pop.exit186 ] ; 3 uses
  %.6230 = phi i32 [ 0, %._crit_edge229 ], [ %i.ri, %sat_solver3_pop.exit186 ]
  %i.pz = load i32, ptr %i.pq, align 8, !tbaa !93 ; 2 uses
  %i.qa = add nsw i32 %i.pz, -1                   ; 4 uses
  store i32 %i.qa, ptr %i.pq, align 8, !tbaa !93
  %.not.i.not.i169 = icmp slt i32 %.val42.i.i168, %i.pz
  br i1 %.not.i.not.i169, label %sat_solver3_pop.exit186, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.val39.i.i170 = load ptr, ptr %i.ps, align 8, !tbaa !31 ; 2 uses
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %.val39.i.i170, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !32 ; 6 uses
  %i.qe = load i32, ptr %i.pt, align 4, !tbaa !57 ; 2 uses
  %.not35.not45.i.i171 = icmp sgt i32 %i.qe, %i.qd
  br i1 %.not35.not45.i.i171, label %.lr.ph.i.i179, label %._crit_edge.i.i172

.lr.ph.i.i179:                                    ; preds = %bb.bi
  %i.qf = sext i32 %.val42.i.i168 to i64
  %i.qg = getelementptr [4 x i8], ptr %.val39.i.i170, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 -4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !32
  %i.qj = sext i32 %i.qe to i64
  %i.qk = sext i32 %i.qi to i64
  %i.ql = sext i32 %i.qd to i64
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.lr.ph.i.i179
  %indvars.iv.i.i180 = phi i64 [ %i.qj, %.lr.ph.i.i179 ], [ %indvars.iv.next.i.i181, %bb.bl ] ; 2 uses
  %indvars.iv.next.i.i181 = add nsw i64 %indvars.iv.i.i180, -1 ; 4 uses
  %i.qm = load ptr, ptr %i.pu, align 8, !tbaa !59
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %indvars.iv.next.i.i181
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !32
  %i.qp = ashr i32 %i.qo, 1
  %.val41.i.i182 = load ptr, ptr %i.pv, align 8, !tbaa !8
  %i.qq = sext i32 %i.qp to i64                   ; 3 uses
  %i.qr = getelementptr inbounds i8, ptr %.val41.i.i182, i64 %i.qq
  store i8 3, ptr %i.qr, align 1, !tbaa !25
  %i.qs = load ptr, ptr %i.pw, align 8, !tbaa !62
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qq
  store i32 0, ptr %i.qt, align 4, !tbaa !32
  %.not37.i.i183 = icmp sgt i64 %indvars.iv.i.i180, %i.qk
  br i1 %.not37.i.i183, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qu = load ptr, ptr %i.pu, align 8, !tbaa !59
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %indvars.iv.next.i.i181
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !32
  %.val43.i.i184 = load ptr, ptr %i.px, align 8, !tbaa !78
  %i.qx = trunc i32 %i.qw to i8
  %i.qy = and i8 %i.qx, 1
  %i.qz = xor i8 %i.qy, 1
  %i.ra = getelementptr inbounds i8, ptr %.val43.i.i184, i64 %i.qq
  store i8 %i.qz, ptr %i.ra, align 1, !tbaa !25
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.not35.not.i.i185 = icmp sgt i64 %indvars.iv.next.i.i181, %i.ql
  br i1 %.not35.not.i.i185, label %bb.bj, label %._crit_edge.i.i172, !llvm.loop !189

._crit_edge.i.i172:                               ; preds = %bb.bl, %bb.bi
  %i.rb = load i32, ptr %i.py, align 8, !tbaa !58 ; 2 uses
  %.not36.not48.i.i173 = icmp sgt i32 %i.rb, %i.qd
  br i1 %.not36.not48.i.i173, label %.lr.ph51.i.i175, label %._crit_edge52.i.i174

.lr.ph51.i.i175:                                  ; preds = %._crit_edge.i.i172
  %i.rc = sext i32 %i.rb to i64
  %i.rd = sext i32 %i.qd to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph51.i.i175
  %indvars.iv54.i.i176 = phi i64 [ %i.rc, %.lr.ph51.i.i175 ], [ %indvars.iv.next55.i.i177, %bb.bm ]
  %indvars.iv.next55.i.i177 = add nsw i64 %indvars.iv54.i.i176, -1 ; 3 uses
  %i.re = load ptr, ptr %i.pu, align 8, !tbaa !59
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.re, i64 %indvars.iv.next55.i.i177
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !32
  %i.rh = ashr i32 %i.rg, 1
  tail call fastcc void @order_unassigned(ptr noundef nonnull %0, i32 noundef %i.rh)
  %.not36.not.i.i178 = icmp sgt i64 %indvars.iv.next55.i.i177, %i.rd
  br i1 %.not36.not.i.i178, label %bb.bm, label %._crit_edge52.i.i174, !llvm.loop !190

._crit_edge52.i.i174:                             ; preds = %bb.bm, %._crit_edge.i.i172
  store i32 %i.qd, ptr %i.pt, align 4, !tbaa !57
  store i32 %i.qd, ptr %i.py, align 8, !tbaa !58
  store i32 %i.qa, ptr %i.pr, align 4, !tbaa !37
  br label %sat_solver3_pop.exit186

sat_solver3_pop.exit186:                          ; preds = %bb.bh, %._crit_edge52.i.i174
  %.val42.i.i168288 = phi i32 [ %.val42.i.i168, %bb.bh ], [ %i.qa, %._crit_edge52.i.i174 ]
  %i.ri = add nuw nsw i32 %.6230, 1               ; 2 uses
  %exitcond275.not = icmp eq i32 %i.ri, %i.kn
  br i1 %exitcond275.not, label %._crit_edge233, label %bb.bh, !llvm.loop !238

._crit_edge233:                                   ; preds = %sat_solver3_pop.exit186, %._crit_edge229.thread
  %i.rj = phi i32 [ %i.mz, %._crit_edge229.thread ], [ %i.pp, %sat_solver3_pop.exit186 ]
  %i.rk = add nsw i32 %i.rj, %i.kn
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge233, %._crit_edge238, %._crit_edge243, %bb.i
  %.0 = phi i32 [ %i.bk, %bb.i ], [ %i.ge, %._crit_edge243 ], [ %i.pm, %._crit_edge238 ], [ %i.rk, %._crit_edge233 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @sat_solver3_nvars(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !26
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @sat_solver3_nclauses(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @sat_solver3_nconflicts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load i64, ptr %i.a, align 8, !tbaa !151
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #13

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @order_unassigned(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 300        ; 3 uses
  %.val = load i32, ptr %i.h, align 4, !tbaa !37  ; 6 uses
  store i32 %.val, ptr %i.d, align 4, !tbaa !32
  %i.i = load i32, ptr %i.g, align 8, !tbaa !38
  %i.j = icmp eq i32 %.val, %i.i
  br i1 %i.j, label %bb.c, label %veci_push.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %.val, 4
  %i.l = shl nsw i32 %.val, 1
end_hunk_1
