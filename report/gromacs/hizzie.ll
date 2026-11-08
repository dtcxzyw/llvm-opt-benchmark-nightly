Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hizzie?download=true
inline.NumInlined: 99
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z9set_histpP7t_atomsPA3_fP8t_symtabff:bb.a
  %i.i = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = tail call noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.o, ptr noundef nonnull @.str.18)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.b, !llvm.loop !42

.critedge.loopexit:                               ; preds = %bb.b
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0131.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %.critedge.loopexit ] ; 3 uses
  %i.r = icmp eq i32 %i.c, %.0131.lcssa
  br i1 %i.r, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !53
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.19, i64 86, i64 1, ptr %i.s) #14 ; 0 uses
  %i.t = sext i32 %i.c to i64                     ; 4 uses
  %i.u = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 213, i64 noundef range(i64 -2147483648, 2147483648) %i.t, i64 noundef 1) ; 8 uses
  %i.v = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 214, i64 noundef range(i64 -2147483648, 2147483648) %i.t, i64 noundef 1) ; 8 uses
  %i.w = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 215, i64 noundef range(i64 -2147483648, 2147483648) %i.t, i64 noundef 1) ; 5 uses
  %i.x = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef 216, i64 noundef 1, i64 noundef 40) ; 6 uses
  br i1 %i.e, label %.lr.ph181, label %._crit_edge

.lr.ph181:                                        ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %wide.trip.count215 = zext nneg i32 %i.c to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph181, %_ZL10in_stringsPciPPKc.exit145.thread
  %indvars.iv212 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next213, %_ZL10in_stringsPciPPKc.exit145.thread ] ; 4 uses
  %.0126180 = phi i32 [ 0, %.lr.ph181 ], [ %.1127, %_ZL10in_stringsPciPPKc.exit145.thread ] ; 2 uses
  %.0128179 = phi i32 [ 0, %.lr.ph181 ], [ %.1129, %_ZL10in_stringsPciPPKc.exit145.thread ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv212
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 22 uses
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZL10in_stringsPciPPKc.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.1, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZL10in_stringsPciPPKc.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.2, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZL10in_stringsPciPPKc.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZL10in_stringsPciPPKc.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.4, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZL10in_stringsPciPPKc.exit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.5, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZL10in_stringsPciPPKc.exit, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.6, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZL10in_stringsPciPPKc.exit, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.7, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZL10in_stringsPciPPKc.exit, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.8, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZL10in_stringsPciPPKc.exit, label %_ZL10in_stringsPciPPKc.exit.thread

_ZL10in_stringsPciPPKc.exit:                      ; preds = %.lr.ph.i.8, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv212
  store i8 1, ptr %i.av, align 1, !tbaa !31
  %i.aw = add nsw i32 %.0126180, 1
  br label %_ZL10in_stringsPciPPKc.exit.thread

_ZL10in_stringsPciPPKc.exit.thread:               ; preds = %.lr.ph.i.8, %_ZL10in_stringsPciPPKc.exit
  %.1127 = phi i32 [ %i.aw, %_ZL10in_stringsPciPPKc.exit ], [ %.0126180, %.lr.ph.i.8 ] ; 2 uses
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.9, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.1

.lr.ph.i139.1:                                    ; preds = %_ZL10in_stringsPciPPKc.exit.thread
  %i.az = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.10, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.2

.lr.ph.i139.2:                                    ; preds = %.lr.ph.i139.1
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.11, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.3

.lr.ph.i139.3:                                    ; preds = %.lr.ph.i139.2
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.12, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.4

.lr.ph.i139.4:                                    ; preds = %.lr.ph.i139.3
  %i.bf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.13, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.5

.lr.ph.i139.5:                                    ; preds = %.lr.ph.i139.4
  %i.bh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.14, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.6

.lr.ph.i139.6:                                    ; preds = %.lr.ph.i139.5
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.15, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.7

.lr.ph.i139.7:                                    ; preds = %.lr.ph.i139.6
  %i.bl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.16, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.8

.lr.ph.i139.8:                                    ; preds = %.lr.ph.i139.7
  %i.bn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.5, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.9

.lr.ph.i139.9:                                    ; preds = %.lr.ph.i139.8
  %i.bp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.6, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.10

.lr.ph.i139.10:                                   ; preds = %.lr.ph.i139.9
  %i.br = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.7, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.11

.lr.ph.i139.11:                                   ; preds = %.lr.ph.i139.10
  %i.bt = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.17, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZL10in_stringsPciPPKc.exit145, label %.lr.ph.i139.12

.lr.ph.i139.12:                                   ; preds = %.lr.ph.i139.11
  %i.bv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.8, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #15
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZL10in_stringsPciPPKc.exit145, label %_ZL10in_stringsPciPPKc.exit145.thread

_ZL10in_stringsPciPPKc.exit145:                   ; preds = %.lr.ph.i139.12, %.lr.ph.i139.11, %.lr.ph.i139.10, %.lr.ph.i139.9, %.lr.ph.i139.8, %.lr.ph.i139.7, %.lr.ph.i139.6, %.lr.ph.i139.5, %.lr.ph.i139.4, %.lr.ph.i139.3, %.lr.ph.i139.2, %.lr.ph.i139.1, %_ZL10in_stringsPciPPKc.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv212
  store i8 1, ptr %i.bx, align 1, !tbaa !31
  %i.by = add nsw i32 %.0128179, 1
  br label %_ZL10in_stringsPciPPKc.exit145.thread

_ZL10in_stringsPciPPKc.exit145.thread:            ; preds = %.lr.ph.i139.12, %_ZL10in_stringsPciPPKc.exit145
  %.1129 = phi i32 [ %i.by, %_ZL10in_stringsPciPPKc.exit145 ], [ %.0128179, %.lr.ph.i139.12 ] ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !43

._crit_edge:                                      ; preds = %_ZL10in_stringsPciPPKc.exit145.thread, %bb.d
  %.0128.lcssa = phi i32 [ 0, %bb.d ], [ %.1129, %_ZL10in_stringsPciPPKc.exit145.thread ]
  %.0126.lcssa = phi i32 [ 0, %bb.d ], [ %.1127, %_ZL10in_stringsPciPPKc.exit145.thread ]
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !53
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.25, i32 noundef %.0128.lcssa, i32 noundef %.0126.lcssa) #16 ; 0 uses
  %.val = load i32, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.cc = add nsw i32 %.val, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.21, i32 noundef 91, i64 noundef range(i64 -2147483648, 2147483648) %i.cd, i64 noundef 4)
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !55
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.cg = mul nsw i32 %.val, 6
  %i.ch = sext i32 %i.cg to i64
  %i.ci = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.21, i32 noundef 92, i64 noundef range(i64 -2147483648, 2147483648) %i.ch, i64 noundef 4) ; 7 uses
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !55
  store i32 %.val, ptr %i.x, align 8, !tbaa !57
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !58 ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !59
  %i.ck = icmp sgt i32 %.val, 0
  br i1 %i.ck, label %.lr.ph15.i, label %_ZL9chk_allhbP7t_atomsPA3_fP8t_blockaPKbS6_f.exit

.lr.ph15.i:                                       ; preds = %._crit_edge
  %i.cl = fmul float %4, %4                       ; 6 uses
  %i.cm = zext nneg i32 %.val to i64              ; 9 uses
  %6 = add nsw i64 %i.cm, -2
  %i.cn = add nsw i64 %i.cm, -2
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph15.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph15.i ] ; 3 uses
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.pre-phi.i, %.loopexit.i ], [ 0, %.lr.ph15.i ] ; 10 uses
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i147, %.loopexit.i ], [ 1, %.lr.ph15.i ] ; 3 uses
  %.04813.i = phi i32 [ %.5.i, %.loopexit.i ], [ 0, %.lr.ph15.i ] ; 12 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv26.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !31, !range !32, !noundef !33
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.e
  %i.cr = add nuw nsw i64 %indvars.iv26.i, 1      ; 8 uses
  %i.cs = icmp samesign ult i64 %i.cr, %i.cm
  br i1 %i.cs, label %.lr.ph9.i, label %.loopexit.i

.lr.ph9.i:                                        ; preds = %.preheader.i
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv26.i ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %7 = sub i64 %indvars.iv26.i, %i.cm
  %xtraiter239 = and i64 %7, 1
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %.prol.preheader237, label %.prol.loopexit238

.prol.preheader237:                               ; preds = %.lr.ph9.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cr
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !31, !range !32, !noundef !33
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.f, label %.prol.loopexit238.unr-lcssa

bb.f:                                             ; preds = %.prol.preheader237
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.cr ; 3 uses
  %i.da = load float, ptr %i.ct, align 4, !tbaa !34
  %i.db = load float, ptr %i.cz, align 4, !tbaa !34
  %i.dc = fsub float %i.da, %i.db                 ; 2 uses
  %i.dd = load float, ptr %i.cu, align 4, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !34
  %i.dg = fsub float %i.dd, %i.df                 ; 2 uses
  %i.dh = load float, ptr %i.cv, align 4, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !34
  %i.dk = fsub float %i.dh, %i.dj                 ; 2 uses
  %i.dl = fmul float %i.dg, %i.dg
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dm)
  %i.do = fcmp olt float %i.dn, %i.cl
  br i1 %i.do, label %bb.g, label %.prol.loopexit238.unr-lcssa

bb.g:                                             ; preds = %bb.f
  %i.dp = add nsw i32 %.04813.i, 1
  %i.dq = sext i32 %.04813.i to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.dq
  %i.ds = trunc nuw nsw i64 %i.cr to i32
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !59
  br label %.prol.loopexit238.unr-lcssa

.prol.loopexit238.unr-lcssa:                      ; preds = %bb.g, %bb.f, %.prol.preheader237
  %.2.i.prol = phi i32 [ %i.dp, %bb.g ], [ %.04813.i, %bb.f ], [ %.04813.i, %.prol.preheader237 ] ; 2 uses
  %indvars.iv.next22.i.prol = add nuw nsw i64 %indvars.iv26.i, 2
  br label %.prol.loopexit238

.prol.loopexit238:                                ; preds = %.prol.loopexit238.unr-lcssa, %.lr.ph9.i
  %.2.i.lcssa.unr = phi i32 [ poison, %.lr.ph9.i ], [ %.2.i.prol, %.prol.loopexit238.unr-lcssa ]
  %indvars.iv21.i.unr = phi i64 [ %i.cr, %.lr.ph9.i ], [ %indvars.iv.next22.i.prol, %.prol.loopexit238.unr-lcssa ]
  %.17.i.unr = phi i32 [ %.04813.i, %.lr.ph9.i ], [ %.2.i.prol, %.prol.loopexit238.unr-lcssa ]
  %i.dt = icmp eq i64 %i.cn, %indvars.iv26.i
  br i1 %i.dt, label %.loopexit.i, label %.lr.ph9.i.new

.lr.ph9.i.new:                                    ; preds = %.prol.loopexit238, %bb.m
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i.1, %bb.m ], [ %indvars.iv21.i.unr, %.prol.loopexit238 ] ; 5 uses
  %.17.i = phi i32 [ %.2.i.1, %bb.m ], [ %.17.i.unr, %.prol.loopexit238 ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv21.i
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !31, !range !32, !noundef !33
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph9.i.new
  %i.dx = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv21.i ; 3 uses
  %i.dy = load float, ptr %i.ct, align 4, !tbaa !34
  %i.dz = load float, ptr %i.dx, align 4, !tbaa !34
  %i.ea = fsub float %i.dy, %i.dz                 ; 2 uses
  %i.eb = load float, ptr %i.cu, align 4, !tbaa !34
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !34
  %i.ee = fsub float %i.eb, %i.ed                 ; 2 uses
  %i.ef = load float, ptr %i.cv, align 4, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !34
  %i.ei = fsub float %i.ef, %i.eh                 ; 2 uses
  %i.ej = fmul float %i.ee, %i.ee
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.ej)
  %i.el = tail call noundef float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %i.ek)
  %i.em = fcmp olt float %i.el, %i.cl
  br i1 %i.em, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.en = add nsw i32 %.17.i, 1
  %i.eo = sext i32 %.17.i to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.eo
  %i.eq = trunc nuw nsw i64 %indvars.iv21.i to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph9.i.new
  %.2.i = phi i32 [ %i.en, %bb.i ], [ %.17.i, %bb.h ], [ %.17.i, %.lr.ph9.i.new ] ; 4 uses
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next22.i
  %i.es = load i8, ptr %i.er, align 1, !tbaa !31, !range !32, !noundef !33
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next22.i ; 3 uses
  %i.ev = load float, ptr %i.ct, align 4, !tbaa !34
  %i.ew = load float, ptr %i.eu, align 4, !tbaa !34
  %i.ex = fsub float %i.ev, %i.ew                 ; 2 uses
  %i.ey = load float, ptr %i.cu, align 4, !tbaa !34
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !34
  %i.fb = fsub float %i.ey, %i.fa                 ; 2 uses
  %i.fc = load float, ptr %i.cv, align 4, !tbaa !34
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !34
  %i.ff = fsub float %i.fc, %i.fe                 ; 2 uses
  %i.fg = fmul float %i.fb, %i.fb
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.fg)
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fh)
  %i.fj = fcmp olt float %i.fi, %i.cl
  br i1 %i.fj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fk = add nsw i32 %.2.i, 1
  %i.fl = sext i32 %.2.i to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.fl
  %i.fn = trunc nuw nsw i64 %indvars.iv.next22.i to i32
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.2.i.1 = phi i32 [ %i.fk, %bb.l ], [ %.2.i, %bb.k ], [ %.2.i, %bb.j ] ; 2 uses
  %indvars.iv.next22.i.1 = add nuw nsw i64 %indvars.iv21.i, 2 ; 2 uses
  %exitcond25.not.i.1 = icmp eq i64 %indvars.iv.next22.i.1, %i.cm
  br i1 %exitcond25.not.i.1, label %.loopexit.i, label %.lr.ph9.i.new, !llvm.loop !44

bb.n:                                             ; preds = %bb.e
  %i.fo = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv26.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !31, !range !32, !noundef !33
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = add nuw nsw i64 %indvars.iv26.i, 1      ; 8 uses
  %i.fs = icmp samesign ult i64 %i.fr, %i.cm
  %or.cond.i = select i1 %i.fq, i1 %i.fs, i1 false
  br i1 %or.cond.i, label %.lr.ph.i148, label %.loopexit.i

.lr.ph.i148:                                      ; preds = %bb.n
  %i.ft = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv26.i ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 3 uses
  %8 = sub i64 %indvar, %i.cm
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph.i148
  %i.fw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.fr
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !31, !range !32, !noundef !33
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.o, label %.prol.loopexit.unr-lcssa

bb.o:                                             ; preds = %.prol.preheader
  %i.fz = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.fr ; 3 uses
  %i.ga = load float, ptr %i.ft, align 4, !tbaa !34
  %i.gb = load float, ptr %i.fz, align 4, !tbaa !34
  %i.gc = fsub float %i.ga, %i.gb                 ; 2 uses
  %i.gd = load float, ptr %i.fu, align 4, !tbaa !34
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !34
  %i.gg = fsub float %i.gd, %i.gf                 ; 2 uses
  %i.gh = load float, ptr %i.fv, align 4, !tbaa !34
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !34
  %i.gk = fsub float %i.gh, %i.gj                 ; 2 uses
  %i.gl = fmul float %i.gg, %i.gg
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %i.gl)
  %i.gn = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gm)
  %i.go = fcmp olt float %i.gn, %i.cl
  br i1 %i.go, label %bb.p, label %.prol.loopexit.unr-lcssa

bb.p:                                             ; preds = %bb.o
  %i.gp = add nsw i32 %.04813.i, 1
  %i.gq = sext i32 %.04813.i to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gq
  %i.gs = trunc nuw nsw i64 %i.fr to i32
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !59
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.p, %bb.o, %.prol.preheader
  %.4.i.prol = phi i32 [ %i.gp, %bb.p ], [ %.04813.i, %bb.o ], [ %.04813.i, %.prol.preheader ] ; 2 uses
  %indvars.iv.next19.i.prol = add nuw nsw i64 %indvars.iv26.i, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i148
  %.4.i.lcssa.unr = phi i32 [ poison, %.lr.ph.i148 ], [ %.4.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv18.i.unr = phi i64 [ %i.fr, %.lr.ph.i148 ], [ %indvars.iv.next19.i.prol, %.prol.loopexit.unr-lcssa ]
  %.34.i.unr = phi i32 [ %.04813.i, %.lr.ph.i148 ], [ %.4.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.gt = icmp eq i64 %6, %indvar
  br i1 %i.gt, label %.loopexit.i, label %.lr.ph.i148.new

.lr.ph.i148.new:                                  ; preds = %.prol.loopexit, %bb.v
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.1, %bb.v ], [ %indvars.iv18.i.unr, %.prol.loopexit ] ; 5 uses
  %.34.i = phi i32 [ %.4.i.1, %bb.v ], [ %.34.i.unr, %.prol.loopexit ] ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv18.i
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !31, !range !32, !noundef !33
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.i148.new
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv18.i ; 3 uses
  %i.gy = load float, ptr %i.ft, align 4, !tbaa !34
  %i.gz = load float, ptr %i.gx, align 4, !tbaa !34
  %i.ha = fsub float %i.gy, %i.gz                 ; 2 uses
  %i.hb = load float, ptr %i.fu, align 4, !tbaa !34
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !34
  %i.he = fsub float %i.hb, %i.hd                 ; 2 uses
  %i.hf = load float, ptr %i.fv, align 4, !tbaa !34
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !34
  %i.hi = fsub float %i.hf, %i.hh                 ; 2 uses
  %i.hj = fmul float %i.he, %i.he
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ha, float %i.hj)
  %i.hl = tail call noundef float @llvm.fmuladd.f32(float %i.hi, float %i.hi, float %i.hk)
  %i.hm = fcmp olt float %i.hl, %i.cl
  br i1 %i.hm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hn = add nsw i32 %.34.i, 1
  %i.ho = sext i32 %.34.i to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ho
  %i.hq = trunc nuw nsw i64 %indvars.iv18.i to i32
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !59
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph.i148.new
  %.4.i = phi i32 [ %i.hn, %bb.r ], [ %.34.i, %bb.q ], [ %.34.i, %.lr.ph.i148.new ] ; 4 uses
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next19.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !31, !range !32, !noundef !33
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.hu = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next19.i ; 3 uses
  %i.hv = load float, ptr %i.ft, align 4, !tbaa !34
  %i.hw = load float, ptr %i.hu, align 4, !tbaa !34
  %i.hx = fsub float %i.hv, %i.hw                 ; 2 uses
  %i.hy = load float, ptr %i.fu, align 4, !tbaa !34
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !34
  %i.ib = fsub float %i.hy, %i.ia                 ; 2 uses
  %i.ic = load float, ptr %i.fv, align 4, !tbaa !34
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !34
  %i.if = fsub float %i.ic, %i.ie                 ; 2 uses
  %i.ig = fmul float %i.ib, %i.ib
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hx, float %i.ig)
  %i.ii = tail call noundef float @llvm.fmuladd.f32(float %i.if, float %i.if, float %i.ih)
  %i.ij = fcmp olt float %i.ii, %i.cl
  br i1 %i.ij, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ik = add nsw i32 %.4.i, 1
  %i.il = sext i32 %.4.i to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.il
  %i.in = trunc nuw nsw i64 %indvars.iv.next19.i to i32
  store i32 %i.in, ptr %i.im, align 4, !tbaa !59
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.4.i.1 = phi i32 [ %i.ik, %bb.u ], [ %.4.i, %bb.t ], [ %.4.i, %bb.s ] ; 2 uses
  %indvars.iv.next19.i.1 = add nuw nsw i64 %indvars.iv18.i, 2 ; 2 uses
  %exitcond.not.i149.1 = icmp eq i64 %indvars.iv.next19.i.1, %i.cm
  br i1 %exitcond.not.i149.1, label %.loopexit.i, label %.lr.ph.i148.new, !llvm.loop !45

.loopexit.i:                                      ; preds = %.prol.loopexit, %bb.v, %.prol.loopexit238, %bb.m, %bb.n, %.preheader.i
  %indvars.iv.next27.pre-phi.i = phi i64 [ %i.cr, %.prol.loopexit238 ], [ %i.fr, %bb.n ], [ %i.cr, %.preheader.i ], [ %i.cr, %bb.m ], [ %i.fr, %bb.v ], [ %i.fr, %.prol.loopexit ]
  %.5.i = phi i32 [ %.2.i.1, %bb.m ], [ %.04813.i, %bb.n ], [ %.04813.i, %.preheader.i ], [ %.2.i.lcssa.unr, %.prol.loopexit238 ], [ %.4.i.lcssa.unr, %.prol.loopexit ], [ %.4.i.1, %bb.v ] ; 3 uses
  %indvars.iv.next.i147 = add nuw nsw i64 %indvars.iv.i146, 1
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i146
  store i32 %.5.i, ptr %i.io, align 4, !tbaa !59
  %exitcond217 = icmp eq i64 %indvars.iv.i146, %i.cm
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond217, label %_ZL9chk_allhbP7t_atomsPA3_fP8t_blockaPKbS6_f.exit, label %bb.e, !llvm.loop !46

_ZL9chk_allhbP7t_atomsPA3_fP8t_blockaPKbS6_f.exit: ; preds = %.loopexit.i, %._crit_edge
  %.048.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %.5.i, %.loopexit.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %.048.lcssa.i, ptr %i.ip, align 8, !tbaa !60
  %i.iq = load ptr, ptr @stderr, align 8, !tbaa !53
  %i.ir = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.26, i32 noundef %.048.lcssa.i) #16 ; 0 uses
  %i.is = icmp slt i32 %.0131.lcssa, %i.c
  br i1 %i.is, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %_ZL9chk_allhbP7t_atomsPA3_fP8t_blockaPKbS6_f.exit
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph206, %bb.ah
  %.0124205 = phi i32 [ -1, %.lr.ph206 ], [ %.1125, %bb.ah ] ; 3 uses
  %.1132204 = phi i32 [ %.0131.lcssa, %.lr.ph206 ], [ %.3, %bb.ah ] ; 5 uses
  %i.ix = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.iy = load ptr, ptr %i.it, align 8, !tbaa !19
  %i.iz = sext i32 %.1132204 to i64               ; 3 uses
  %i.ja = getelementptr inbounds [36 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !24
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [32 x i8], ptr %i.ix, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !51
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !27
  %i.jh = tail call noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.jg, ptr noundef nonnull @.str.18)
  %.not135 = icmp eq i32 %i.jh, 0
  br i1 %.not135, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ji = add nsw i32 %.1132204, 1
  br label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.jj = load ptr, ptr %i.it, align 8, !tbaa !19 ; 2 uses
  %i.jk = getelementptr inbounds [36 x i8], ptr %i.jj, i64 %i.iz
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !24 ; 5 uses
  %.not136 = icmp eq i32 %i.jm, %.0124205
  br i1 %.not136, label %bb.ah, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.jn = icmp slt i32 %.1132204, %i.c
  br i1 %i.jn, label %.lr.ph190, label %.critedge2

.lr.ph190:                                        ; preds = %.preheader, %bb.ac
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %bb.ac ], [ %i.iz, %.preheader ] ; 4 uses
  %.0189 = phi i32 [ %.1, %bb.ac ], [ -1, %.preheader ] ; 5 uses
  %.0115188 = phi i32 [ %.1116, %bb.ac ], [ -1, %.preheader ] ; 5 uses
  %.0117187 = phi i32 [ %.1118, %bb.ac ], [ -1, %.preheader ] ; 5 uses
  %.0119186 = phi i32 [ %.1120, %bb.ac ], [ -1, %.preheader ] ; 6 uses
  %.0121185 = phi i32 [ %.1122, %bb.ac ], [ -1, %.preheader ] ; 5 uses
  %i.jo = getelementptr inbounds [36 x i8], ptr %i.jj, i64 %indvars.iv218
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !24
  %i.jr = icmp eq i32 %i.jq, %i.jm
  %i.js = trunc nsw i64 %indvars.iv218 to i32     ; 6 uses
  br i1 %i.jr, label %bb.z, label %.critedge2

bb.z:                                             ; preds = %.lr.ph190
  %i.jt = load ptr, ptr %i.iu, align 8, !tbaa !29
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %indvars.iv218
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !30
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !27 ; 7 uses
  %i.jx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(4) @.str.27) #15
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.ac, label %sub_0

sub_0:                                            ; preds = %bb.z
  %i.jz = load i8, ptr %i.jw, align 1
  %.not208 = icmp eq i8 %i.jz, 67
  br i1 %.not208, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.kb = load i8, ptr %i.ka, align 1
  %.not209 = icmp eq i8 %i.kb, 71
  br i1 %.not209, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.kd = load i8, ptr %i.kc, align 1
  %i.ke = icmp eq i8 %i.kd, 0
  br i1 %i.ke, label %bb.ac, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.kf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(4) @.str.29) #15
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.tail.thread
  %i.kh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(4) @.str.13) #15
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull dereferenceable(4) @.str.15) #15
  %i.kk = icmp eq i32 %i.kj, 0
  %spec.select = select i1 %i.kk, i32 %i.js, i32 %.0119186
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.tail.thread, %.tail, %bb.z
  %.1122 = phi i32 [ %.0121185, %bb.ab ], [ %.0121185, %bb.z ], [ %.0121185, %.tail ], [ %.0121185, %.tail.thread ], [ %i.js, %bb.aa ] ; 2 uses
  %.1120 = phi i32 [ %spec.select, %bb.ab ], [ %.0119186, %bb.z ], [ %.0119186, %.tail ], [ %.0119186, %.tail.thread ], [ %.0119186, %bb.aa ] ; 2 uses
  %.1118 = phi i32 [ %.0117187, %bb.ab ], [ %.0117187, %bb.z ], [ %i.js, %.tail ], [ %.0117187, %.tail.thread ], [ %.0117187, %bb.aa ] ; 2 uses
  %.1116 = phi i32 [ %.0115188, %bb.ab ], [ %i.js, %bb.z ], [ %.0115188, %.tail ], [ %.0115188, %.tail.thread ], [ %.0115188, %bb.aa ] ; 2 uses
  %.1 = phi i32 [ %.0189, %bb.ab ], [ %.0189, %bb.z ], [ %.0189, %.tail ], [ %i.js, %.tail.thread ], [ %.0189, %bb.aa ] ; 2 uses
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, 1 ; 2 uses
end_hunk_0
