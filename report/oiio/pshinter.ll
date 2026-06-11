inline.NumInlined: 100
inline.NumDeleted: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PSHinter_Interface_ = type { ptr, ptr, ptr }
%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.PSH_GlyphRec_ = type { i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x %struct.PSH_Hint_TableRec_], i8, i8, i8, i8, i8 }
%struct.PSH_Hint_TableRec_ = type { i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.PS_MaskRec_ = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [9 x i8] c"pshinter\00", align 1
@pshinter_interface = internal constant %struct.PSHinter_Interface_ { ptr @pshinter_get_globals_funcs, ptr @pshinter_get_t1_funcs, ptr @pshinter_get_t2_funcs }, align 8
@pshinter_module_class = hidden local_unnamed_addr constant %struct.FT_Module_Class_ { i64 0, i64 280, ptr @.str, i64 65536, i64 131072, ptr @pshinter_interface, ptr @ps_hinter_init, ptr @ps_hinter_done, ptr null }, align 8

; Function Attrs: nounwind uwtable
define hidden i32 @ps_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %4 = alloca %struct.PSH_GlyphRec_, align 8      ; 52 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !7    ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.de, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %1, align 8, !tbaa !14
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.de, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  %i.g = load ptr, ptr %2, align 8, !tbaa !15     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  %i.i = sext i16 %i.c to i64
  %i.j = call ptr @ft_mem_qrealloc(ptr noundef %i.g, i64 noundef 72, i64 noundef 0, i64 noundef %i.i, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !27
  %i.l = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %psh_glyph_init.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = load i16, ptr %1, align 8, !tbaa !14
  %i.n = sext i16 %i.m to i64
  %i.o = call ptr @ft_mem_qrealloc(ptr noundef %i.g, i64 noundef 16, i64 noundef 0, i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !28
  %i.q = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not119.i = icmp eq i32 %i.q, 0
  br i1 %.not119.i, label %bb.e, label %psh_glyph_init.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load i16, ptr %i.b, align 2, !tbaa !7    ; 2 uses
  %i.s = sext i16 %i.r to i32
  store i32 %i.s, ptr %4, align 8, !tbaa !29
  %i.t = load i16, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.u = sext i16 %i.t to i32                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !30
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !27   ; 4 uses
  %.not161.i = icmp eq i16 %i.t, 0
  br i1 %.not161.i, label %._crit_edge154.i, label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %wide.trip.count.i = zext i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph153.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.0151.i = phi i32 [ 0, %.lr.ph153.i ], [ %i.ac, %bb.h ] ; 4 uses
  %.0112149.i = phi ptr [ %i.o, %.lr.ph153.i ], [ %i.bh, %bb.h ] ; 9 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !32
  %i.ab = sext i16 %i.aa to i32                   ; 3 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 3 uses
  %i.ad = sub nsw i32 %i.ac, %.0151.i             ; 5 uses
  %i.ae = zext i32 %.0151.i to i64
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %i.w, i64 %i.ae ; 7 uses
  store ptr %i.af, ptr %.0112149.i, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %.0112149.i, i64 8
  store i32 %i.ad, ptr %i.ag, align 8, !tbaa !35
  %.not126.i = icmp eq i32 %i.ad, 0
  br i1 %.not126.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = zext i32 %i.ac to i64
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.w, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -72
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %.0112149.i, ptr %i.ak, align 8, !tbaa !39
  %.not162.i = icmp eq i32 %i.ad, 1
  br i1 %.not162.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.al = sub nsw i32 %i.ab, %.0151.i
  %xtraiter = and i32 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0113148.i.prol = phi i32 [ %i.ap, %.lr.ph.i.prol ], [ %i.ad, %.lr.ph.i.preheader ]
  %.0114147.i.prol = phi ptr [ %i.am, %.lr.ph.i.prol ], [ %i.af, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0114147.i.prol, i64 72 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0114147.i.prol, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !40
  store ptr %.0114147.i.prol, ptr %i.am, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %.0114147.i.prol, i64 88
  store ptr %.0112149.i, ptr %i.ao, align 8, !tbaa !39
  %i.ap = add i32 %.0113148.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !41

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0113148.i.unr = phi i32 [ %i.ad, %.lr.ph.i.preheader ], [ %i.ap, %.lr.ph.i.prol ]
  %.0114147.i.unr = phi ptr [ %i.af, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %.lcssa332.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %i.aq = sub nsw i32 %.0151.i, %i.ab
  %i.ar = icmp ugt i32 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0113148.i = phi i32 [ %i.be, %.lr.ph.i ], [ %.0113148.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0114147.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.0114147.i.unr, %.lr.ph.i.prol.loopexit ] ; 13 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 72 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !40
  store ptr %.0114147.i, ptr %i.as, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 88
  store ptr %.0112149.i, ptr %i.au, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 144 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 80
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !40
  store ptr %i.as, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 160
  store ptr %.0112149.i, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 216 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 152
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !40
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 232
  store ptr %.0112149.i, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 288 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 224
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !40
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %.0114147.i, i64 304
  store ptr %.0112149.i, ptr %i.bd, align 8, !tbaa !39
  %i.be = add i32 %.0113148.i, -4                 ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 1
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  %.0114.lcssa.i = phi ptr [ %i.af, %bb.g ], [ %.lcssa332.unr, %.lr.ph.i.prol.loopexit ], [ %i.bb, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0114.lcssa.i, i64 8
  store ptr %i.af, ptr %i.bg, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %.0112149.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge154.i, label %bb.f, !llvm.loop !45

._crit_edge154.i:                                 ; preds = %bb.h, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 3 uses
  %.not163.i = icmp eq i16 %i.r, 0
  br i1 %.not163.i, label %._crit_edge159.thread.i, label %.lr.ph158.i

._crit_edge159.thread.i:                          ; preds = %._crit_edge154.i
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %1, ptr %i.bk, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %2, ptr %i.bl, align 8, !tbaa !48
  br label %psh_glyph_load_points.exit.i

.lr.ph158.i:                                      ; preds = %._crit_edge154.i
  %i.bm = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %.lr.ph158.i
  %indvars.iv183.i = phi i64 [ 0, %.lr.ph158.i ], [ %indvars.iv.next184.i, %bb.t ] ; 3 uses
  %.0115156.i = phi ptr [ %i.w, %.lr.ph158.i ], [ %i.dv, %bb.t ] ; 6 uses
  %i.bo = load ptr, ptr %.0115156.i, align 8, !tbaa !36
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bm
  %i.br = sdiv exact i64 %i.bq, 72
  %i.bs = getelementptr inbounds nuw i8, ptr %.0115156.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bm
  %i.bw = sdiv exact i64 %i.bv, 72
  %i.bx = getelementptr inbounds nuw i8, ptr %.0115156.i, i64 24 ; 4 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !49
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv183.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51
  %i.cb = and i8 %i.ca, 1                         ; 2 uses
  %i.cc = xor i8 %i.cb, 1
  %spec.store.select.i = zext nneg i8 %i.cc to i32 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.bx, align 8
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv183.i ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !52 ; 2 uses
  %sext.i = shl i64 %i.br, 32
  %i.cf = ashr exact i64 %sext.i, 28
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 %i.cf ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !52
  %i.ci = sub nsw i64 %i.ce, %i.ch                ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !54 ; 2 uses
end_hunk_0
begin_hunk_1_@ps_hints_apply:bb.a
  %i.gf = icmp eq ptr %i.ge, %i.fn
  br i1 %i.gf, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %.171.i.i, i64 48
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !63
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !63
  %i.gk = sub nsw i64 %i.gh, %i.gj                ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.171.i.i, i64 56
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !64
  %i.gp = sub nsw i64 %i.gm, %i.go                ; 3 uses
  %i.gq = icmp eq i64 %i.gk, 0
  %i.gr = icmp eq i64 %i.gp, 0
  %i.gs = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %i.gs, label %.backedge, label %bb.z

.backedge:                                        ; preds = %bb.y, %bb.z
  br label %bb.x, !llvm.loop !66

bb.z:                                             ; preds = %bb.y
  %i.gt = call i32 @ft_corner_orientation(i64 noundef %i.gc, i64 noundef %i.gd, i64 noundef %i.gk, i64 noundef %i.gp) #12 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %.backedge, label %.preheader83.i.i

.preheader83.i.i:                                 ; preds = %bb.z, %bb.af
  %.074.i.i = phi ptr [ %.169.i.i, %bb.af ], [ %.171.i.i, %bb.z ]
  %.173.i.i = phi ptr [ %i.gy, %bb.af ], [ %i.fr, %bb.z ]
  %.067.i.i = phi i64 [ %i.hc, %bb.af ], [ %i.gk, %bb.z ]
  %.066.i.i = phi i64 [ %i.hf, %bb.af ], [ %i.gp, %bb.z ]
  %.065.i.i = phi i32 [ %i.hj, %bb.af ], [ %i.gt, %bb.z ]
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.preheader83.i.i
  %.068.i.i = phi ptr [ %.173.i.i, %.preheader83.i.i ], [ %i.gy, %bb.ac ] ; 3 uses
  %.1.i.i = phi i32 [ 0, %.preheader83.i.i ], [ %spec.select.i.i, %bb.ac ]
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 48
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !63
  %.phi.trans.insert122.i.i = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 56
  %.pre123.i.i = load i64, ptr %.phi.trans.insert122.i.i, align 8, !tbaa !64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %i.gv = phi i64 [ %.pre123.i.i, %bb.aa ], [ %i.he, %bb.ab ]
  %i.gw = phi i64 [ %.pre.i.i, %bb.aa ], [ %i.hb, %bb.ab ]
  %.169.i.i = phi ptr [ %.068.i.i, %bb.aa ], [ %i.gy, %bb.ab ] ; 3 uses
  %.2.i.i = phi i32 [ %.1.i.i, %bb.aa ], [ %spec.select.i.i, %bb.ab ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.169.i.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !40 ; 6 uses
  %i.gz = icmp eq ptr %i.gy, %.171.i.i
  %spec.select.i.i = select i1 %i.gz, i32 1, i32 %.2.i.i ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !63 ; 2 uses
  %i.hc = sub nsw i64 %i.hb, %i.gw                ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !64 ; 2 uses
  %i.hf = sub nsw i64 %i.he, %i.gv                ; 3 uses
  %i.hg = icmp eq i64 %i.hc, 0
  %i.hh = icmp eq i64 %i.hf, 0
  %i.hi = select i1 %i.hg, i1 %i.hh, i1 false
  br i1 %i.hi, label %bb.ab, label %bb.ac, !llvm.loop !67

bb.ac:                                            ; preds = %bb.ab
  %i.hj = call i32 @ft_corner_orientation(i64 noundef %.067.i.i, i64 noundef %.066.i.i, i64 noundef %i.hc, i64 noundef %i.hf) #12 ; 3 uses
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.aa, label %bb.ad, !llvm.loop !68

bb.ad:                                            ; preds = %bb.ac
  %i.hl = xor i32 %i.hj, %.065.i.i
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %.preheader.i.i, label %bb.af

.preheader.i.i:                                   ; preds = %bb.ad, %.preheader.i.i
  %.175.i.i = phi ptr [ %i.hr, %.preheader.i.i ], [ %.074.i.i, %bb.ad ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.175.i.i, i64 24 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !49
  %i.hp = or i32 %i.ho, 4
  store i32 %i.hp, ptr %i.hn, align 8, !tbaa !49
  %i.hq = getelementptr inbounds nuw i8, ptr %.175.i.i, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !40 ; 3 uses
  %.not.i.i = icmp eq ptr %i.hr, %.169.i.i
  br i1 %.not.i.i, label %bb.ae, label %.preheader.i.i, !llvm.loop !69

bb.ae:                                            ; preds = %.preheader.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !49
  %i.hu = or i32 %i.ht, 4
  store i32 %i.hu, ptr %i.hs, align 8, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not82.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not82.i.i, label %.preheader83.i.i, label %.loopexit.i.i, !llvm.loop !70

.loopexit.i.i:                                    ; preds = %bb.v, %bb.x, %bb.af, %.lr.ph.i129.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hv = load i32, ptr %i.v, align 4, !tbaa !30
  %i.hw = zext i32 %i.hv to i64
  %i.hx = icmp samesign ult i64 %indvars.iv.next.i.i, %i.hw
  br i1 %i.hx, label %.lr.ph.i129.i, label %psh_glyph_compute_inflections.exit.i, !llvm.loop !71

psh_glyph_compute_inflections.exit.i:             ; preds = %.loopexit.i.i, %psh_glyph_load_points.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ib = call fastcc i32 @psh_hint_table_init(ptr noundef %i.hy, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ia, ptr noundef %i.g) ; 3 uses
  store i32 %i.ib, ptr %i.a, align 4, !tbaa !3
  %.not120.i = icmp eq i32 %i.ib, 0
  br i1 %.not120.i, label %psh_glyph_init.exit, label %psh_glyph_init.exit.thread

psh_glyph_init.exit.thread:                       ; preds = %psh_glyph_compute_inflections.exit.i, %bb.c, %bb.d
  %.ph = phi i32 [ %i.q, %bb.d ], [ %i.l, %bb.c ], [ %i.ib, %psh_glyph_compute_inflections.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

psh_glyph_init.exit:                              ; preds = %psh_glyph_compute_inflections.exit.i
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.if = call fastcc i32 @psh_hint_table_init(ptr noundef %i.ic, ptr noundef nonnull %i.id, ptr noundef nonnull %i.ie, ptr noundef %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not = icmp eq i32 %i.if, 0
  br i1 %.not, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %psh_glyph_init.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !48 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 400
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !72 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 808
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !72 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 824 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !75
  %.not76 = icmp eq i32 %i.in, 0
  br i1 %.not76, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !76
  %i.iq = sext i32 %i.ip to i64
  %sext = shl i64 %i.il, 32
  %i.ir = ashr exact i64 %sext, 32
  %i.is = mul nsw i64 %i.ir, %i.iq                ; 2 uses
  %i.it = ashr i64 %i.is, 63
  %i.iu = add nsw i64 %i.is, 32768
  %i.iv = add nsw i64 %i.iu, %i.it
  %i.iw = shl i64 %i.iv, 16
  %i.ix = ashr i64 %i.iw, 32                      ; 4 uses
  %i.iy = add nsw i64 %i.ix, 32
  %i.iz = and i64 %i.iy, -64                      ; 4 uses
  %.not77 = icmp eq i64 %i.iz, 0
  %.not78 = icmp eq i64 %i.ix, %i.iz
  %or.cond = or i1 %.not77, %.not78
  br i1 %or.cond, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ja = call i64 @FT_MulDiv(i64 noundef %i.il, i64 noundef %i.iz, i64 noundef %i.ix) #12
  %i.jb = icmp slt i64 %i.iz, %i.ix
  br i1 %i.jb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.neg = sdiv i64 %i.ij, -50
  %i.jc = add i64 %.neg, %i.ij
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.073 = phi i64 [ %i.jc, %bb.aj ], [ %i.ij, %bb.ai ]
  %i.jd = load ptr, ptr %i.ig, align 8, !tbaa !48
  call void @psh_globals_set_scale(ptr noundef %i.jd, i64 noundef %.073, i64 noundef %i.ja, i64 noundef 0, i64 noundef 0)
  br label %.thread

.thread:                                          ; preds = %bb.ag, %bb.ak, %bb.ah
  %.not79 = phi i1 [ false, %bb.ak ], [ true, %bb.ah ], [ true, %bb.ag ]
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 192
  store i8 1, ptr %i.je, align 8, !tbaa !78
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 193
  store i8 1, ptr %i.jf, align 1, !tbaa !79
  %i.jg = icmp eq i32 %3, 2
  %i.jh = and i32 %3, -2
  %i.ji = icmp eq i32 %i.jh, 2
  %i.jj = zext i1 %i.ji to i8
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 194
  store i8 %i.jj, ptr %i.jk, align 2, !tbaa !80
  %i.jl = icmp eq i32 %3, 4
  %i.jm = or i1 %i.jg, %i.jl
  %i.jn = zext i1 %i.jm to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 195
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !81
  %i.jp = icmp ne i32 %3, 1
  %i.jq = zext i1 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 196
  store i8 %i.jq, ptr %i.jr, align 4, !tbaa !82
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 3944 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 3948 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 3940 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 1600
  %.pre197 = load i32, ptr %4, align 8, !tbaa !29
  br label %bb.al

bb.al:                                            ; preds = %.thread, %bb.dd
  %5 = phi i32 [ %.pre197, %.thread ], [ %10, %bb.dd ] ; 10 uses
  %i.jy = phi i1 [ true, %.thread ], [ false, %bb.dd ] ; 3 uses
  %i.jz = phi i1 [ false, %.thread ], [ true, %bb.dd ]
  %indvars.iv = phi i64 [ 0, %.thread ], [ 1, %bb.dd ] ; 3 uses
  %.not19.i = icmp eq i32 %5, 0
  br i1 %.not19.i, label %psh_glyph_load_points.exit, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.al
  %i.ka = load ptr, ptr %i.k, align 8, !tbaa !27  ; 4 uses
  %i.kb = load ptr, ptr %i.js, align 8, !tbaa !47
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !46 ; 4 uses
  br i1 %i.jy, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i83
  %xtraiter337 = and i32 %5, 3                    ; 2 uses
  %lcmp.mod338.not = icmp eq i32 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i.prol
  %.022.i.prol = phi i32 [ %i.kj, %.lr.ph.split.i.prol ], [ %5, %.lr.ph.split.i.preheader ]
  %.01721.i.prol = phi ptr [ %i.kk, %.lr.ph.split.i.prol ], [ %i.ka, %.lr.ph.split.i.preheader ] ; 4 uses
  %.01820.i.prol = phi ptr [ %i.kl, %.lr.ph.split.i.prol ], [ %i.kd, %.lr.ph.split.i.preheader ] ; 2 uses
  %prol.iter339 = phi i32 [ %prol.iter339.next, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.split.i.preheader ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.01721.i.prol, i64 28
  store i32 0, ptr %i.ke, align 4, !tbaa !58
  %i.kf = getelementptr inbounds nuw i8, ptr %.01721.i.prol, i64 40
  store ptr null, ptr %i.kf, align 8, !tbaa !59
  %i.kg = getelementptr inbounds nuw i8, ptr %.01721.i.prol, i64 48
  %i.kh = load <2 x i64>, ptr %.01820.i.prol, align 8, !tbaa !60
  %i.ki = shufflevector <2 x i64> %i.kh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ki, ptr %i.kg, align 8, !tbaa !60
  %i.kj = add i32 %.022.i.prol, -1                ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.01721.i.prol, i64 72 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.01820.i.prol, i64 16 ; 2 uses
  %prol.iter339.next = add i32 %prol.iter339, 1   ; 2 uses
  %prol.iter339.cmp.not = icmp eq i32 %prol.iter339.next, %xtraiter337
  br i1 %prol.iter339.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !83

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.022.i.unr = phi i32 [ %5, %.lr.ph.split.i.preheader ], [ %i.kj, %.lr.ph.split.i.prol ]
  %.01721.i.unr = phi ptr [ %i.ka, %.lr.ph.split.i.preheader ], [ %i.kk, %.lr.ph.split.i.prol ]
  %.01820.i.unr = phi ptr [ %i.kd, %.lr.ph.split.i.preheader ], [ %i.kl, %.lr.ph.split.i.prol ]
  %i.km = icmp ult i32 %5, 4
  br i1 %i.km, label %psh_glyph_load_points.exit, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i83
  %xtraiter340 = and i32 %5, 3                    ; 2 uses
  %lcmp.mod341.not = icmp eq i32 %xtraiter340, 0
  br i1 %lcmp.mod341.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.prol
  %.022.us.i.prol = phi i32 [ %i.kr, %.lr.ph.split.us.i.prol ], [ %5, %.lr.ph.split.us.i.preheader ]
  %.01721.us.i.prol = phi ptr [ %i.ks, %.lr.ph.split.us.i.prol ], [ %i.ka, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %.01820.us.i.prol = phi ptr [ %i.kt, %.lr.ph.split.us.i.prol ], [ %i.kd, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %prol.iter342 = phi i32 [ %prol.iter342.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.01721.us.i.prol, i64 28
  store i32 0, ptr %i.kn, align 4, !tbaa !58
  %i.ko = getelementptr inbounds nuw i8, ptr %.01721.us.i.prol, i64 40
  store ptr null, ptr %i.ko, align 8, !tbaa !59
  %i.kp = getelementptr inbounds nuw i8, ptr %.01721.us.i.prol, i64 48
  %i.kq = load <2 x i64>, ptr %.01820.us.i.prol, align 8, !tbaa !60
  store <2 x i64> %i.kq, ptr %i.kp, align 8, !tbaa !60
  %i.kr = add i32 %.022.us.i.prol, -1             ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.01721.us.i.prol, i64 72 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.01820.us.i.prol, i64 16 ; 2 uses
  %prol.iter342.next = add i32 %prol.iter342, 1   ; 2 uses
  %prol.iter342.cmp.not = icmp eq i32 %prol.iter342.next, %xtraiter340
  br i1 %prol.iter342.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !84

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.022.us.i.unr = phi i32 [ %5, %.lr.ph.split.us.i.preheader ], [ %i.kr, %.lr.ph.split.us.i.prol ]
  %.01721.us.i.unr = phi ptr [ %i.ka, %.lr.ph.split.us.i.preheader ], [ %i.ks, %.lr.ph.split.us.i.prol ]
  %.01820.us.i.unr = phi ptr [ %i.kd, %.lr.ph.split.us.i.preheader ], [ %i.kt, %.lr.ph.split.us.i.prol ]
  %i.ku = icmp ult i32 %5, 4
  br i1 %i.ku, label %psh_glyph_load_points.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.022.us.i = phi i32 [ %i.lo, %.lr.ph.split.us.i ], [ %.022.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.01721.us.i = phi ptr [ %i.lp, %.lr.ph.split.us.i ], [ %.01721.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 13 uses
  %.01820.us.i = phi ptr [ %i.lq, %.lr.ph.split.us.i ], [ %.01820.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 28
  store i32 0, ptr %i.kv, align 4, !tbaa !58
  %i.kw = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 40
  store ptr null, ptr %i.kw, align 8, !tbaa !59
  %i.kx = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 48
  %i.ky = load <2 x i64>, ptr %.01820.us.i, align 8, !tbaa !60
  store <2 x i64> %i.ky, ptr %i.kx, align 8, !tbaa !60
  %i.kz = getelementptr inbounds nuw i8, ptr %.01820.us.i, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 100
  store i32 0, ptr %i.la, align 4, !tbaa !58
  %i.lb = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 112
  store ptr null, ptr %i.lb, align 8, !tbaa !59
  %i.lc = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 120
  %i.ld = load <2 x i64>, ptr %i.kz, align 8, !tbaa !60
  store <2 x i64> %i.ld, ptr %i.lc, align 8, !tbaa !60
  %i.le = getelementptr inbounds nuw i8, ptr %.01820.us.i, i64 32
  %i.lf = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 172
  store i32 0, ptr %i.lf, align 4, !tbaa !58
  %i.lg = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 184
  store ptr null, ptr %i.lg, align 8, !tbaa !59
  %i.lh = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 192
  %i.li = load <2 x i64>, ptr %i.le, align 8, !tbaa !60
  store <2 x i64> %i.li, ptr %i.lh, align 8, !tbaa !60
  %i.lj = getelementptr inbounds nuw i8, ptr %.01820.us.i, i64 48
  %i.lk = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 244
  store i32 0, ptr %i.lk, align 4, !tbaa !58
  %i.ll = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 256
  store ptr null, ptr %i.ll, align 8, !tbaa !59
  %i.lm = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 264
  %i.ln = load <2 x i64>, ptr %i.lj, align 8, !tbaa !60
  store <2 x i64> %i.ln, ptr %i.lm, align 8, !tbaa !60
  %i.lo = add i32 %.022.us.i, -4                  ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.01721.us.i, i64 288
  %i.lq = getelementptr inbounds nuw i8, ptr %.01820.us.i, i64 64
  %.not.us.i.3 = icmp eq i32 %i.lo, 0
  br i1 %.not.us.i.3, label %psh_glyph_load_points.exit, label %.lr.ph.split.us.i, !llvm.loop !62

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.022.i = phi i32 [ %i.mo, %.lr.ph.split.i ], [ %.022.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.01721.i = phi ptr [ %i.mp, %.lr.ph.split.i ], [ %.01721.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 13 uses
  %.01820.i = phi ptr [ %i.mq, %.lr.ph.split.i ], [ %.01820.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 5 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.01721.i, i64 28
  store i32 0, ptr %i.lr, align 4, !tbaa !58
  %i.ls = getelementptr inbounds nuw i8, ptr %.01721.i, i64 40
  store ptr null, ptr %i.ls, align 8, !tbaa !59
  %i.lt = getelementptr inbounds nuw i8, ptr %.01721.i, i64 48
  %i.lu = load <2 x i64>, ptr %.01820.i, align 8, !tbaa !60
  %i.lv = shufflevector <2 x i64> %i.lu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.lv, ptr %i.lt, align 8, !tbaa !60
  %i.lw = getelementptr inbounds nuw i8, ptr %.01820.i, i64 16
  %i.lx = getelementptr inbounds nuw i8, ptr %.01721.i, i64 100
  store i32 0, ptr %i.lx, align 4, !tbaa !58
  %i.ly = getelementptr inbounds nuw i8, ptr %.01721.i, i64 112
  store ptr null, ptr %i.ly, align 8, !tbaa !59
  %i.lz = getelementptr inbounds nuw i8, ptr %.01721.i, i64 120
  %i.ma = load <2 x i64>, ptr %i.lw, align 8, !tbaa !60
  %i.mb = shufflevector <2 x i64> %i.ma, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.mb, ptr %i.lz, align 8, !tbaa !60
  %i.mc = getelementptr inbounds nuw i8, ptr %.01820.i, i64 32
  %i.md = getelementptr inbounds nuw i8, ptr %.01721.i, i64 172
  store i32 0, ptr %i.md, align 4, !tbaa !58
  %i.me = getelementptr inbounds nuw i8, ptr %.01721.i, i64 184
  store ptr null, ptr %i.me, align 8, !tbaa !59
  %i.mf = getelementptr inbounds nuw i8, ptr %.01721.i, i64 192
  %i.mg = load <2 x i64>, ptr %i.mc, align 8, !tbaa !60
  %i.mh = shufflevector <2 x i64> %i.mg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.mh, ptr %i.mf, align 8, !tbaa !60
  %i.mi = getelementptr inbounds nuw i8, ptr %.01820.i, i64 48
  %i.mj = getelementptr inbounds nuw i8, ptr %.01721.i, i64 244
  store i32 0, ptr %i.mj, align 4, !tbaa !58
  %i.mk = getelementptr inbounds nuw i8, ptr %.01721.i, i64 256
  store ptr null, ptr %i.mk, align 8, !tbaa !59
  %i.ml = getelementptr inbounds nuw i8, ptr %.01721.i, i64 264
  %i.mm = load <2 x i64>, ptr %i.mi, align 8, !tbaa !60
  %i.mn = shufflevector <2 x i64> %i.mm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.mn, ptr %i.ml, align 8, !tbaa !60
  %i.mo = add i32 %.022.i, -4                     ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.01721.i, i64 288
  %i.mq = getelementptr inbounds nuw i8, ptr %.01820.i, i64 64
  %.not.i84.3 = icmp eq i32 %i.mo, 0
  br i1 %.not.i84.3, label %psh_glyph_load_points.exit, label %.lr.ph.split.i, !llvm.loop !62

psh_glyph_load_points.exit:                       ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %bb.al
  %i.mr = load i32, ptr %i.v, align 4, !tbaa !30  ; 2 uses
  %.not100.i = icmp eq i32 %i.mr, 0
  br i1 %.not100.i, label %.loopexit90.i, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %psh_glyph_load_points.exit
  %i.ms = load ptr, ptr %i.p, align 8, !tbaa !28
  %wide.trip.count.i87 = zext i32 %i.mr to i64
  br label %bb.am

bb.am:                                            ; preds = %.loopexit87.i, %.lr.ph.i86
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph.i86 ], [ %indvars.iv.next.i90, %.loopexit87.i ] ; 3 uses
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %indvars.iv.i88 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !33 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !35
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %.loopexit87.i, label %.preheader88.i

.preheader88.i:                                   ; preds = %bb.am
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.preheader88.i
  %.067.i = phi ptr [ %i.mz, %bb.ao ], [ %i.mu, %.preheader88.i ]
  %i.mz = load ptr, ptr %.067.i, align 8, !tbaa !36 ; 5 uses
  %i.na = icmp eq ptr %i.mz, %i.mu
  br i1 %i.na, label %.loopexit.loopexit102.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 48
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !63
  %i.nd = load i64, ptr %i.my, align 8, !tbaa !63
  %i.ne = icmp eq i64 %i.nc, %i.nd
  br i1 %i.ne, label %bb.an, label %bb.ap, !llvm.loop !85

bb.ap:                                            ; preds = %bb.ao
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !40 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit86.i, %bb.ap
  %.069.i = phi ptr [ %i.ng, %bb.ap ], [ %i.nj, %.loopexit86.i ] ; 3 uses
  %.168.i = phi ptr [ %i.mz, %bb.ap ], [ %i.nz, %.loopexit86.i ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.069.i, i64 48
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %.066.i = phi ptr [ %.069.i, %bb.aq ], [ %i.nj, %bb.as ]
  %i.ni = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !40 ; 6 uses
  %i.nk = icmp eq ptr %i.nj, %i.ng
  br i1 %i.nk, label %.loopexit87.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !63 ; 3 uses
  %i.nn = load i64, ptr %i.nh, align 8, !tbaa !63 ; 4 uses
  %i.no = icmp eq i64 %i.nm, %i.nn
  br i1 %i.no, label %bb.ar, label %bb.at, !llvm.loop !86

bb.at:                                            ; preds = %bb.as
  %i.np = getelementptr inbounds nuw i8, ptr %.168.i, i64 48
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !63
  %i.nr = icmp slt i64 %i.nq, %i.nn
  br i1 %i.nr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ns = icmp slt i64 %i.nm, %i.nn
  br i1 %i.ns, label %.preheader, label %.loopexit86.i

bb.av:                                            ; preds = %bb.at
  %i.nt = icmp sgt i64 %i.nm, %i.nn
  br i1 %i.nt, label %.preheader, label %.loopexit86.i

.preheader:                                       ; preds = %bb.av, %bb.au
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.aw
  %.170.i = phi ptr [ %i.ny, %bb.aw ], [ %.069.i, %.preheader ] ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.170.i, i64 28 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !58
  %i.nw = or i32 %i.nv, 64
  store i32 %i.nw, ptr %i.nu, align 4, !tbaa !58
  %i.nx = getelementptr inbounds nuw i8, ptr %.170.i, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !40 ; 2 uses
  %.not.i89 = icmp eq ptr %i.ny, %i.nj
  br i1 %.not.i89, label %.loopexit86.i, label %bb.aw, !llvm.loop !87

.loopexit86.i:                                    ; preds = %bb.aw, %bb.av, %bb.au
  %i.nz = load ptr, ptr %i.nj, align 8, !tbaa !36
  br label %bb.aq

.loopexit87.i:                                    ; preds = %bb.ar, %bb.am
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, %wide.trip.count.i87
  br i1 %exitcond.not.i91, label %.loopexit90.i, label %bb.am, !llvm.loop !88

.loopexit90.i:                                    ; preds = %.loopexit87.i, %psh_glyph_load_points.exit, %.loopexit.i
  %.164.i = phi i32 [ %i.pb, %.loopexit.i ], [ 0, %psh_glyph_load_points.exit ], [ 0, %.loopexit87.i ] ; 8 uses
  %i.oa = icmp ult i32 %.164.i, %5
  br i1 %i.oa, label %bb.ax, label %psh_glyph_compute_extrema.exit

bb.ax:                                            ; preds = %.loopexit90.i
  %i.ob = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.oc = zext i32 %.164.i to i64
  %i.od = getelementptr inbounds nuw [72 x i8], ptr %i.ob, i64 %i.oc ; 6 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 28 ; 3 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !58 ; 3 uses
  %i.og = and i32 %i.of, 64
  %.not81.i = icmp eq i32 %i.og, 0
  br i1 %.not81.i, label %.loopexit.i, label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.ax
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 56
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %.preheader84.i
  %.061.i = phi ptr [ %i.oi, %bb.az ], [ %i.od, %.preheader84.i ]
  %i.oi = load ptr, ptr %.061.i, align 8, !tbaa !36 ; 3 uses
  %i.oj = icmp eq ptr %i.oi, %i.od
  br i1 %i.oj, label %.loopexit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 56
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !64 ; 3 uses
  %i.om = load i64, ptr %i.oh, align 8, !tbaa !64 ; 6 uses
  %i.on = icmp eq i64 %i.ol, %i.om
  br i1 %i.on, label %bb.ay, label %.preheader.i, !llvm.loop !89

.preheader.i:                                     ; preds = %bb.az, %bb.ba
  %.0.i = phi ptr [ %i.op, %bb.ba ], [ %i.od, %bb.az ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !40 ; 3 uses
  %i.oq = icmp eq ptr %i.op, %i.od
  br i1 %i.oq, label %.loopexit.i, label %bb.ba

bb.ba:                                            ; preds = %.preheader.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  %i.os = load i64, ptr %i.or, align 8, !tbaa !64 ; 3 uses
  %i.ot = icmp eq i64 %i.os, %i.om
  br i1 %i.ot, label %.preheader.i, label %.loopexit83.i, !llvm.loop !90

.loopexit83.i:                                    ; preds = %bb.ba
  %i.ou = icmp slt i64 %i.ol, %i.om
  %i.ov = icmp sgt i64 %i.os, %i.om
  %or.cond.i = and i1 %i.ou, %i.ov
  br i1 %or.cond.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.loopexit83.i
  %i.ow = or i32 %i.of, 128
  store i32 %i.ow, ptr %i.oe, align 4, !tbaa !58
  br label %.loopexit.i

bb.bc:                                            ; preds = %.loopexit83.i
  %i.ox = icmp sgt i64 %i.ol, %i.om
  %i.oy = icmp slt i64 %i.os, %i.om
  %or.cond135.i = and i1 %i.ox, %i.oy
  br i1 %or.cond135.i, label %bb.bd, label %.loopexit.i

bb.bd:                                            ; preds = %bb.bc
  %i.oz = or i32 %i.of, 256
  store i32 %i.oz, ptr %i.oe, align 4, !tbaa !58
  br label %.loopexit.i

.loopexit.loopexit102.i:                          ; preds = %bb.an
  %i.pa = trunc nuw i64 %indvars.iv.i88 to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ay, %.preheader.i, %.loopexit.loopexit102.i, %bb.bd, %bb.bc, %bb.bb, %bb.ax
  %.2.i = phi i32 [ %i.pa, %.loopexit.loopexit102.i ], [ %.164.i, %bb.bb ], [ %.164.i, %bb.ax ], [ %.164.i, %bb.bc ], [ %.164.i, %.preheader.i ], [ %.164.i, %bb.bd ], [ %.164.i, %bb.ay ]
  %i.pb = add i32 %.2.i, 1
  br label %.loopexit90.i, !llvm.loop !91

psh_glyph_compute_extrema.exit:                   ; preds = %.loopexit90.i
  %i.pc = getelementptr inbounds nuw [72 x i8], ptr %i.hy, i64 %indvars.iv ; 11 uses
  %i.pd = load ptr, ptr %i.ig, align 8, !tbaa !48 ; 2 uses
  %.val = load i32, ptr %i.pc, align 8, !tbaa !92 ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pc, i64 8      ; 5 uses
  %.not1.i = icmp eq i32 %.val, 0
  br i1 %.not1.i, label %psh_hint_table_align_hints.exit, label %.lr.ph.i92.preheader

.lr.ph.i92.preheader:                             ; preds = %psh_glyph_compute_extrema.exit
  %.val80 = load ptr, ptr %i.pe, align 8, !tbaa !98
  %i.pf = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %.lr.ph.i92.preheader, %.lr.ph.i92
  %.03.i = phi i32 [ %i.pg, %.lr.ph.i92 ], [ %.val, %.lr.ph.i92.preheader ]
  %.082.i = phi ptr [ %i.ph, %.lr.ph.i92 ], [ %.val80, %.lr.ph.i92.preheader ] ; 2 uses
  call fastcc void @psh_hint_align(ptr noundef %.082.i, ptr noundef readonly %i.pd, i32 noundef range(i32 0, 2) %i.pf, ptr noundef nonnull readonly %4)
  %i.pg = add i32 %.03.i, -1                      ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.082.i, i64 48
  %.not.i93 = icmp eq i32 %i.pg, 0
  br i1 %.not.i93, label %psh_hint_table_align_hints.exit.loopexit, label %.lr.ph.i92, !llvm.loop !99

psh_hint_table_align_hints.exit.loopexit:         ; preds = %.lr.ph.i92
  %.pre.a = load ptr, ptr %i.ig, align 8, !tbaa !48
  br label %psh_hint_table_align_hints.exit

psh_hint_table_align_hints.exit:                  ; preds = %psh_hint_table_align_hints.exit.loopexit, %psh_glyph_compute_extrema.exit
  %i.pi = phi ptr [ %.pre.a, %psh_hint_table_align_hints.exit.loopexit ], [ %i.pd, %psh_glyph_compute_extrema.exit ]
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 56 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !100 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !101 ; 2 uses
  %i.pn = load i32, ptr %i.pk, align 8, !tbaa !104 ; 3 uses
  %i.po = select i1 %i.jy, i32 3, i32 12          ; 2 uses
  %i.pp = getelementptr inbounds nuw [408 x i8], ptr %i.pi, i64 %indvars.iv
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 400
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !72
  %i.ps = call i64 @FT_DivFix(i64 noundef 32, i64 noundef %i.pr) #12
  %i.pt = trunc i64 %i.ps to i32
  %spec.store.select.i95 = call i32 @llvm.smin.i32(i32 %i.pt, i32 12) ; 2 uses
  %i.pu = icmp ugt i32 %i.pn, 1
  br i1 %i.pu, label %bb.be, label %bb.br

bb.be:                                            ; preds = %psh_hint_table_align_hints.exit
  %i.pv = load i32, ptr %4, align 8, !tbaa !29    ; 3 uses
  %.not.i97 = icmp eq i32 %i.pv, 0
  br i1 %.not.i97, label %psh_glyph_find_strong_points.exit, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.be
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !105
  %..i = call i32 @llvm.umin.i32(i32 %i.px, i32 %i.pv)
  %i.py = getelementptr i8, ptr %i.pc, i64 16     ; 3 uses
  %i.pz = getelementptr i8, ptr %i.pc, i64 4      ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bq, %.lr.ph.i98
  %6 = phi i32 [ %i.pv, %.lr.ph.i98 ], [ %7, %bb.bq ] ; 2 uses
  %.pn120.i = phi ptr [ %i.pm, %.lr.ph.i98 ], [ %.056121.i, %bb.bq ] ; 3 uses
  %.057119.i = phi i32 [ %i.pn, %.lr.ph.i98 ], [ %i.sn, %bb.bq ]
  %.058118.i = phi i32 [ %..i, %.lr.ph.i98 ], [ %.69.i, %bb.bq ] ; 3 uses
  %.056121.i = getelementptr inbounds nuw i8, ptr %.pn120.i, i64 24 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.pn120.i, i64 40
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !105
  %.69.i = call i32 @llvm.umin.i32(i32 %i.qb, i32 %6) ; 3 uses
  %i.qc = icmp ugt i32 %.69.i, %.058118.i
  br i1 %i.qc, label %bb.bg, label %bb.bq

bb.bg:                                            ; preds = %bb.bf
  %i.qd = sub nuw i32 %.69.i, %.058118.i
  %i.qe = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.qf = zext i32 %.058118.i to i64
  %i.qg = getelementptr inbounds nuw [72 x i8], ptr %i.qe, i64 %i.qf
  %.056.val.i = load i32, ptr %.056121.i, align 8, !tbaa !107 ; 2 uses
  %i.qh = getelementptr i8, ptr %.pn120.i, i64 32
  %.056.val71.i = load ptr, ptr %i.qh, align 8, !tbaa !108
  %.val.i.i = load i32, ptr %i.pc, align 8, !tbaa !92 ; 6 uses
  %.not1.i.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not1.i.i.i, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.bg
  %.val52.i.i = load ptr, ptr %i.pe, align 8, !tbaa !98 ; 2 uses
  %xtraiter343 = and i32 %.val.i.i, 3             ; 2 uses
  %lcmp.mod344.not = icmp eq i32 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.03.i.i.i.prol = phi ptr [ %i.qn, %.lr.ph.i.i.i.prol ], [ %.val52.i.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.062.i.i.i.prol = phi i32 [ %i.qm, %.lr.ph.i.i.i.prol ], [ %.val.i.i, %.lr.ph.i.preheader.i.i ]
  %prol.iter345 = phi i32 [ %prol.iter345.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.qi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 24 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !109
  %i.qk = and i32 %i.qj, -5
  store i32 %i.qk, ptr %i.qi, align 8, !tbaa !109
  %i.ql = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 40
  store i32 -1, ptr %i.ql, align 8, !tbaa !111
  %i.qm = add i32 %.062.i.i.i.prol, -1            ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 48 ; 2 uses
  %prol.iter345.next = add i32 %prol.iter345, 1   ; 2 uses
  %prol.iter345.cmp.not = icmp eq i32 %prol.iter345.next, %xtraiter343
  br i1 %prol.iter345.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !112

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.03.i.i.i.unr = phi ptr [ %.val52.i.i, %.lr.ph.i.preheader.i.i ], [ %i.qn, %.lr.ph.i.i.i.prol ]
  %.062.i.i.i.unr = phi i32 [ %.val.i.i, %.lr.ph.i.preheader.i.i ], [ %i.qm, %.lr.ph.i.i.i.prol ]
  %i.qo = icmp ult i32 %.val.i.i, 4
  br i1 %i.qo, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.rg, %.lr.ph.i.i.i ], [ %.03.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.062.i.i.i = phi i32 [ %i.rf, %.lr.ph.i.i.i ], [ %.062.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.qp = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 24 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !109
  %i.qr = and i32 %i.qq, -5
  store i32 %i.qr, ptr %i.qp, align 8, !tbaa !109
  %i.qs = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40
  store i32 -1, ptr %i.qs, align 8, !tbaa !111
  %i.qt = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 72 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !109
  %i.qv = and i32 %i.qu, -5
  store i32 %i.qv, ptr %i.qt, align 8, !tbaa !109
  %i.qw = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 88
  store i32 -1, ptr %i.qw, align 8, !tbaa !111
  %i.qx = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 120 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !109
  %i.qz = and i32 %i.qy, -5
  store i32 %i.qz, ptr %i.qx, align 8, !tbaa !109
  %i.ra = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 136
  store i32 -1, ptr %i.ra, align 8, !tbaa !111
  %i.rb = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 168 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !109
  %i.rd = and i32 %i.rc, -5
  store i32 %i.rd, ptr %i.rb, align 8, !tbaa !109
  %i.re = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 184
  store i32 -1, ptr %i.re, align 8, !tbaa !111
  %i.rf = add i32 %.062.i.i.i, -4                 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 192
  %.not.i.i.i.3 = icmp eq i32 %i.rf, 0
  br i1 %.not.i.i.i.3, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !113

psh_hint_table_deactivate.exit.i.i:               ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.bg
  %.not17.i.i = icmp eq i32 %.056.val.i, 0
  br i1 %.not17.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i99

._crit_edge.thread.i.i:                           ; preds = %psh_hint_table_deactivate.exit.i.i
  store i32 0, ptr %i.pz, align 4, !tbaa !114
  %.val75.pre.i = load ptr, ptr %i.py, align 8, !tbaa !115
  br label %psh_hint_table_activate_mask.exit.i

.lr.ph.i.i99:                                     ; preds = %psh_hint_table_deactivate.exit.i.i
  %wide.trip.count.i.i = zext i32 %.056.val.i to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bn, %.lr.ph.i.i99
  %indvars.iv.i.i100 = phi i64 [ 0, %.lr.ph.i.i99 ], [ %indvars.iv.next.i.i103, %bb.bn ] ; 2 uses
  %.05.i.i = phi i32 [ 0, %.lr.ph.i.i99 ], [ %i.rx, %bb.bn ] ; 2 uses
  %.0424.i.i = phi i32 [ 0, %.lr.ph.i.i99 ], [ %.143.i.i, %bb.bn ]
  %.0443.i.i = phi ptr [ %.056.val71.i, %.lr.ph.i.i99 ], [ %.145.i.i, %bb.bn ] ; 3 uses
  %.0491.i.i = phi i32 [ 0, %.lr.ph.i.i99 ], [ %.3.i.i, %bb.bn ] ; 6 uses
  %i.rh = icmp eq i32 %.05.i.i, 0
  br i1 %i.rh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ri = getelementptr inbounds nuw i8, ptr %.0443.i.i, i64 1
  %i.rj = load i8, ptr %.0443.i.i, align 1, !tbaa !51
  %i.rk = zext i8 %i.rj to i32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.145.i.i = phi ptr [ %i.ri, %bb.bi ], [ %.0443.i.i, %bb.bh ]
  %.143.i.i = phi i32 [ %i.rk, %bb.bi ], [ %.0424.i.i, %bb.bh ] ; 2 uses
  %.1.i.i101 = phi i32 [ 128, %bb.bi ], [ %.05.i.i, %bb.bh ] ; 2 uses
  %i.rl = and i32 %.1.i.i101, %.143.i.i
  %.not.i.i102 = icmp eq i32 %i.rl, 0
  br i1 %.not.i.i102, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rm = load ptr, ptr %i.pe, align 8, !tbaa !98
  %i.rn = getelementptr inbounds nuw [48 x i8], ptr %i.rm, i64 %indvars.iv.i.i100 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !109 ; 2 uses
  %i.rq = and i32 %i.rp, 4
  %.not51.i.i = icmp eq i32 %i.rq, 0
  br i1 %.not51.i.i, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.rr = or disjoint i32 %i.rp, 4
  store i32 %i.rr, ptr %i.ro, align 8, !tbaa !109
  %i.rs = icmp ult i32 %.0491.i.i, %.val.i.i
  br i1 %i.rs, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.rt = load ptr, ptr %i.py, align 8, !tbaa !115
  %i.ru = add nuw i32 %.0491.i.i, 1
  %i.rv = zext i32 %.0491.i.i to i64
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.rv
  store ptr %i.rn, ptr %i.rw, align 8, !tbaa !116
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.3.i.i = phi i32 [ %.0491.i.i, %bb.bj ], [ %.0491.i.i, %bb.bk ], [ %i.ru, %bb.bm ], [ %.0491.i.i, %bb.bl ] ; 6 uses
  %i.rx = lshr i32 %.1.i.i101, 1
  %indvars.iv.next.i.i103 = add nuw nsw i64 %indvars.iv.i.i100, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i103, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.bh, !llvm.loop !117

._crit_edge.i.i:                                  ; preds = %bb.bn
  store i32 %.3.i.i, ptr %i.pz, align 4, !tbaa !114
  %i.ry = load ptr, ptr %i.py, align 8, !tbaa !115 ; 5 uses
  %i.rz = icmp ugt i32 %.3.i.i, 1
  br i1 %i.rz, label %.lr.ph15.preheader.i.i, label %psh_hint_table_activate_mask.exit.i

.lr.ph15.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %wide.trip.count24.i.i = zext i32 %.3.i.i to i64
  br label %.lr.ph10.i.i

.lr.ph10.i.i:                                     ; preds = %._crit_edge11.i.i, %.lr.ph15.preheader.i.i
  %indvars.iv20.i.i = phi i64 [ 1, %.lr.ph15.preheader.i.i ], [ %indvars.iv.next21.i.i, %._crit_edge11.i.i ] ; 3 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv20.i.i
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !116 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !118
  %i.sd = trunc i64 %indvars.iv20.i.i to i32      ; 3 uses
  %i.se = add i32 %i.sd, -1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %.lr.ph10.i.i
  %.0468.i.i = phi i32 [ %i.se, %.lr.ph10.i.i ], [ %.046.i.i, %bb.bp ] ; 3 uses
  %.046.in7.i.i = phi i32 [ %i.sd, %.lr.ph10.i.i ], [ %.0468.i.i, %bb.bp ]
  %i.sf = zext i32 %.0468.i.i to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.sf ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !116 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !118
  %i.sj = icmp slt i32 %i.si, %i.sc
  br i1 %i.sj, label %._crit_edge11.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.sk = zext i32 %.046.in7.i.i to i64
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.sk
  store ptr %i.sh, ptr %i.sl, align 8, !tbaa !116
  store ptr %i.sb, ptr %i.sg, align 8, !tbaa !116
  %.046.i.i = add i32 %.0468.i.i, -1              ; 2 uses
  %i.sm = icmp ult i32 %.046.i.i, %i.sd
  br i1 %i.sm, label %bb.bo, label %._crit_edge11.i.i, !llvm.loop !119

._crit_edge11.i.i:                                ; preds = %bb.bp, %bb.bo
  %indvars.iv.next21.i.i = add nuw nsw i64 %indvars.iv20.i.i, 1 ; 2 uses
  %exitcond25.not.i.i = icmp eq i64 %indvars.iv.next21.i.i, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i, label %psh_hint_table_activate_mask.exit.i, label %.lr.ph10.i.i, !llvm.loop !120

psh_hint_table_activate_mask.exit.i:              ; preds = %._crit_edge11.i.i, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %.val75.i = phi ptr [ %i.ry, %._crit_edge.i.i ], [ %.val75.pre.i, %._crit_edge.thread.i.i ], [ %i.ry, %._crit_edge11.i.i ]
  %.val74.i = phi i32 [ %.3.i.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ], [ %.3.i.i, %._crit_edge11.i.i ]
  call fastcc void @psh_hint_table_find_strong_points(i32 %.val74.i, ptr %.val75.i, ptr noundef %i.qg, i32 noundef %i.qd, i32 noundef %spec.store.select.i95, i32 noundef %i.po)
  %.pre199 = load i32, ptr %4, align 8, !tbaa !29
  br label %bb.bq

bb.bq:                                            ; preds = %psh_hint_table_activate_mask.exit.i, %bb.bf
  %7 = phi i32 [ %.pre199, %psh_hint_table_activate_mask.exit.i ], [ %6, %bb.bf ] ; 2 uses
  %i.sn = add i32 %.057119.i, -1                  ; 2 uses
  %i.so = icmp ugt i32 %i.sn, 1
  br i1 %i.so, label %bb.bf, label %.thread.i, !llvm.loop !121

bb.br:                                            ; preds = %psh_hint_table_align_hints.exit
  %i.sp = icmp eq i32 %i.pn, 1
  br i1 %i.sp, label %..thread.i_crit_edge, label %.thread115.i

..thread.i_crit_edge:                             ; preds = %bb.br
  %.pre201 = load i32, ptr %4, align 8, !tbaa !29
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bq, %..thread.i_crit_edge
  %8 = phi i32 [ %.pre201, %..thread.i_crit_edge ], [ %7, %bb.bq ]
  %i.sq = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.sr = load ptr, ptr %i.pj, align 8, !tbaa !100
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !101 ; 2 uses
  %.val.i = load i32, ptr %i.st, align 8, !tbaa !107 ; 2 uses
  %i.su = getelementptr i8, ptr %i.st, i64 8
  %.val70.i = load ptr, ptr %i.su, align 8, !tbaa !108
  %.val.i76.i = load i32, ptr %i.pc, align 8, !tbaa !92 ; 6 uses
  %.not1.i.i77.i = icmp eq i32 %.val.i76.i, 0
  br i1 %.not1.i.i77.i, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.preheader.i78.i

.lr.ph.i.preheader.i78.i:                         ; preds = %.thread.i
  %.val52.i79.i = load ptr, ptr %i.pe, align 8, !tbaa !98 ; 2 uses
  %xtraiter346 = and i32 %.val.i76.i, 3           ; 2 uses
  %lcmp.mod347.not = icmp eq i32 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol

.lr.ph.i.i80.i.prol:                              ; preds = %.lr.ph.i.preheader.i78.i, %.lr.ph.i.i80.i.prol
  %.03.i.i81.i.prol = phi ptr [ %i.ta, %.lr.ph.i.i80.i.prol ], [ %.val52.i79.i, %.lr.ph.i.preheader.i78.i ] ; 3 uses
  %.062.i.i82.i.prol = phi i32 [ %i.sz, %.lr.ph.i.i80.i.prol ], [ %.val.i76.i, %.lr.ph.i.preheader.i78.i ]
  %prol.iter348 = phi i32 [ %prol.iter348.next, %.lr.ph.i.i80.i.prol ], [ 0, %.lr.ph.i.preheader.i78.i ]
  %i.sv = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 24 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !109
  %i.sx = and i32 %i.sw, -5
  store i32 %i.sx, ptr %i.sv, align 8, !tbaa !109
  %i.sy = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 40
  store i32 -1, ptr %i.sy, align 8, !tbaa !111
  %i.sz = add i32 %.062.i.i82.i.prol, -1          ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 48 ; 2 uses
  %prol.iter348.next = add i32 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i32 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol, !llvm.loop !122

.lr.ph.i.i80.i.prol.loopexit:                     ; preds = %.lr.ph.i.i80.i.prol, %.lr.ph.i.preheader.i78.i
  %.03.i.i81.i.unr = phi ptr [ %.val52.i79.i, %.lr.ph.i.preheader.i78.i ], [ %i.ta, %.lr.ph.i.i80.i.prol ]
  %.062.i.i82.i.unr = phi i32 [ %.val.i76.i, %.lr.ph.i.preheader.i78.i ], [ %i.sz, %.lr.ph.i.i80.i.prol ]
  %i.tb = icmp ult i32 %.val.i76.i, 4
  br i1 %i.tb, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.prol.loopexit, %.lr.ph.i.i80.i
  %.03.i.i81.i = phi ptr [ %i.tt, %.lr.ph.i.i80.i ], [ %.03.i.i81.i.unr, %.lr.ph.i.i80.i.prol.loopexit ] ; 9 uses
  %.062.i.i82.i = phi i32 [ %i.ts, %.lr.ph.i.i80.i ], [ %.062.i.i82.i.unr, %.lr.ph.i.i80.i.prol.loopexit ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 24 ; 2 uses
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !109
  %i.te = and i32 %i.td, -5
  store i32 %i.te, ptr %i.tc, align 8, !tbaa !109
  %i.tf = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 40
  store i32 -1, ptr %i.tf, align 8, !tbaa !111
  %i.tg = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 72 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !109
  %i.ti = and i32 %i.th, -5
  store i32 %i.ti, ptr %i.tg, align 8, !tbaa !109
  %i.tj = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 88
  store i32 -1, ptr %i.tj, align 8, !tbaa !111
  %i.tk = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 120 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !109
  %i.tm = and i32 %i.tl, -5
  store i32 %i.tm, ptr %i.tk, align 8, !tbaa !109
  %i.tn = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 136
  store i32 -1, ptr %i.tn, align 8, !tbaa !111
  %i.to = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 168 ; 2 uses
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !109
  %i.tq = and i32 %i.tp, -5
  store i32 %i.tq, ptr %i.to, align 8, !tbaa !109
  %i.tr = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 184
  store i32 -1, ptr %i.tr, align 8, !tbaa !111
  %i.ts = add i32 %.062.i.i82.i, -4               ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 192
  %.not.i.i83.i.3 = icmp eq i32 %i.ts, 0
  br i1 %.not.i.i83.i.3, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.i80.i, !llvm.loop !113

psh_hint_table_deactivate.exit.i84.i:             ; preds = %.lr.ph.i.i80.i.prol.loopexit, %.lr.ph.i.i80.i, %.thread.i
  %.not17.i85.i = icmp eq i32 %.val.i, 0
  br i1 %.not17.i85.i, label %._crit_edge.thread.i112.i, label %.lr.ph.i86.i

._crit_edge.thread.i112.i:                        ; preds = %psh_hint_table_deactivate.exit.i84.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store i32 0, ptr %i.tu, align 4, !tbaa !114
  %.phi.trans.insert.i = getelementptr i8, ptr %i.pc, i64 16
  %.val73.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !115
  br label %psh_hint_table_activate_mask.exit113.i

.lr.ph.i86.i:                                     ; preds = %psh_hint_table_deactivate.exit.i84.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %wide.trip.count.i87.i = zext i32 %.val.i to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.by, %.lr.ph.i86.i
  %indvars.iv.i88.i = phi i64 [ 0, %.lr.ph.i86.i ], [ %indvars.iv.next.i99.i, %bb.by ] ; 2 uses
  %.05.i89.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %i.um, %bb.by ] ; 2 uses
  %.0424.i90.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %.143.i94.i, %bb.by ]
  %.0443.i91.i = phi ptr [ %.val70.i, %.lr.ph.i86.i ], [ %.145.i93.i, %bb.by ] ; 3 uses
  %.0491.i92.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %.3.i98.i, %bb.by ] ; 6 uses
  %i.tw = icmp eq i32 %.05.i89.i, 0
  br i1 %i.tw, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.tx = getelementptr inbounds nuw i8, ptr %.0443.i91.i, i64 1
  %i.ty = load i8, ptr %.0443.i91.i, align 1, !tbaa !51
  %i.tz = zext i8 %i.ty to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.145.i93.i = phi ptr [ %i.tx, %bb.bt ], [ %.0443.i91.i, %bb.bs ]
  %.143.i94.i = phi i32 [ %i.tz, %bb.bt ], [ %.0424.i90.i, %bb.bs ] ; 2 uses
  %.1.i95.i = phi i32 [ 128, %bb.bt ], [ %.05.i89.i, %bb.bs ] ; 2 uses
  %i.ua = and i32 %.1.i95.i, %.143.i94.i
  %.not.i96.i = icmp eq i32 %i.ua, 0
  br i1 %.not.i96.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ub = load ptr, ptr %i.pe, align 8, !tbaa !98
  %i.uc = getelementptr inbounds nuw [48 x i8], ptr %i.ub, i64 %indvars.iv.i88.i ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 24 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !109 ; 2 uses
  %i.uf = and i32 %i.ue, 4
  %.not51.i97.i = icmp eq i32 %i.uf, 0
  br i1 %.not51.i97.i, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ug = or disjoint i32 %i.ue, 4
  store i32 %i.ug, ptr %i.ud, align 8, !tbaa !109
  %i.uh = icmp ult i32 %.0491.i92.i, %.val.i76.i
  br i1 %i.uh, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ui = load ptr, ptr %i.tv, align 8, !tbaa !115
  %i.uj = add nuw i32 %.0491.i92.i, 1
  %i.uk = zext i32 %.0491.i92.i to i64
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %i.uk
  store ptr %i.uc, ptr %i.ul, align 8, !tbaa !116
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.3.i98.i = phi i32 [ %.0491.i92.i, %bb.bu ], [ %.0491.i92.i, %bb.bv ], [ %i.uj, %bb.bx ], [ %.0491.i92.i, %bb.bw ] ; 6 uses
  %i.um = lshr i32 %.1.i95.i, 1
  %indvars.iv.next.i99.i = add nuw nsw i64 %indvars.iv.i88.i, 1 ; 2 uses
  %exitcond.not.i100.i = icmp eq i64 %indvars.iv.next.i99.i, %wide.trip.count.i87.i
  br i1 %exitcond.not.i100.i, label %._crit_edge.i101.i, label %bb.bs, !llvm.loop !117

._crit_edge.i101.i:                               ; preds = %bb.by
  %i.un = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store i32 %.3.i98.i, ptr %i.un, align 4, !tbaa !114
  %i.uo = load ptr, ptr %i.tv, align 8, !tbaa !115 ; 5 uses
  %i.up = icmp ugt i32 %.3.i98.i, 1
  br i1 %i.up, label %.lr.ph15.preheader.i102.i, label %psh_hint_table_activate_mask.exit113.i

.lr.ph15.preheader.i102.i:                        ; preds = %._crit_edge.i101.i
  %wide.trip.count24.i103.i = zext i32 %.3.i98.i to i64
  br label %.lr.ph10.i104.i

.lr.ph10.i104.i:                                  ; preds = %._crit_edge11.i109.i, %.lr.ph15.preheader.i102.i
  %indvars.iv20.i105.i = phi i64 [ 1, %.lr.ph15.preheader.i102.i ], [ %indvars.iv.next21.i110.i, %._crit_edge11.i109.i ] ; 3 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv20.i105.i
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !116 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !118
  %i.ut = trunc i64 %indvars.iv20.i105.i to i32   ; 3 uses
  %i.uu = add i32 %i.ut, -1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %.lr.ph10.i104.i
  %.0468.i106.i = phi i32 [ %i.uu, %.lr.ph10.i104.i ], [ %.046.i108.i, %bb.ca ] ; 3 uses
  %.046.in7.i107.i = phi i32 [ %i.ut, %.lr.ph10.i104.i ], [ %.0468.i106.i, %bb.ca ]
  %i.uv = zext i32 %.0468.i106.i to i64
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.uv ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !116 ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !118
  %i.uz = icmp slt i32 %i.uy, %i.us
  br i1 %i.uz, label %._crit_edge11.i109.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.va = zext i32 %.046.in7.i107.i to i64
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.va
  store ptr %i.ux, ptr %i.vb, align 8, !tbaa !116
  store ptr %i.ur, ptr %i.uw, align 8, !tbaa !116
  %.046.i108.i = add i32 %.0468.i106.i, -1        ; 2 uses
  %i.vc = icmp ult i32 %.046.i108.i, %i.ut
  br i1 %i.vc, label %bb.bz, label %._crit_edge11.i109.i, !llvm.loop !119

._crit_edge11.i109.i:                             ; preds = %bb.ca, %bb.bz
  %indvars.iv.next21.i110.i = add nuw nsw i64 %indvars.iv20.i105.i, 1 ; 2 uses
  %exitcond25.not.i111.i = icmp eq i64 %indvars.iv.next21.i110.i, %wide.trip.count24.i103.i
  br i1 %exitcond25.not.i111.i, label %psh_hint_table_activate_mask.exit113.i, label %.lr.ph10.i104.i, !llvm.loop !120

psh_hint_table_activate_mask.exit113.i:           ; preds = %._crit_edge11.i109.i, %._crit_edge.i101.i, %._crit_edge.thread.i112.i
  %.val73.i = phi ptr [ %i.uo, %._crit_edge.i101.i ], [ %.val73.pre.i, %._crit_edge.thread.i112.i ], [ %i.uo, %._crit_edge11.i109.i ]
  %.val72.i = phi i32 [ %.3.i98.i, %._crit_edge.i101.i ], [ 0, %._crit_edge.thread.i112.i ], [ %.3.i98.i, %._crit_edge11.i109.i ]
  call fastcc void @psh_hint_table_find_strong_points(i32 %.val72.i, ptr %.val73.i, ptr noundef %i.sq, i32 noundef %8, i32 noundef %spec.store.select.i95, i32 noundef %i.po)
  br label %.thread115.i

.thread115.i:                                     ; preds = %psh_hint_table_activate_mask.exit113.i, %bb.br
  %.pr.i = load i32, ptr %4, align 8, !tbaa !29   ; 7 uses
  %.not66122.i = icmp eq i32 %.pr.i, 0
  br i1 %.not66122.i, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.preheader.i

.lr.ph125.preheader.i:                            ; preds = %.thread115.i
  %i.vd = load ptr, ptr %i.k, align 8, !tbaa !27  ; 4 uses
  %xtraiter349 = and i32 %.pr.i, 1
  %lcmp.mod350.not = icmp eq i32 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.lr.ph125.i.prol.loopexit, label %.lr.ph125.i.prol

.lr.ph125.i.prol:                                 ; preds = %.lr.ph125.preheader.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !59
  %.not67.i.prol = icmp eq ptr %i.vf, null
  br i1 %.not67.i.prol, label %.lr.ph125.i.prol.loopexit.unr-lcssa, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph125.i.prol
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 28 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !58 ; 2 uses
  %i.vi = and i32 %i.vh, 16
  %.not68.i.prol = icmp eq i32 %i.vi, 0
  br i1 %.not68.i.prol, label %bb.cc, label %.lr.ph125.i.prol.loopexit.unr-lcssa

bb.cc:                                            ; preds = %bb.cb
  %i.vj = or disjoint i32 %i.vh, 16
  store i32 %i.vj, ptr %i.vg, align 4, !tbaa !58
  br label %.lr.ph125.i.prol.loopexit.unr-lcssa

.lr.ph125.i.prol.loopexit.unr-lcssa:              ; preds = %bb.cc, %bb.cb, %.lr.ph125.i.prol
  %i.vk = add nsw i32 %.pr.i, -1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vd, i64 72
  br label %.lr.ph125.i.prol.loopexit

.lr.ph125.i.prol.loopexit:                        ; preds = %.lr.ph125.i.prol.loopexit.unr-lcssa, %.lr.ph125.preheader.i
  %.0124.i.unr = phi ptr [ %i.vd, %.lr.ph125.preheader.i ], [ %i.vl, %.lr.ph125.i.prol.loopexit.unr-lcssa ]
  %.055123.i.unr = phi i32 [ %.pr.i, %.lr.ph125.preheader.i ], [ %i.vk, %.lr.ph125.i.prol.loopexit.unr-lcssa ]
  %i.vm = icmp eq i32 %.pr.i, 1
  br i1 %i.vm, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.lr.ph125.i.prol.loopexit, %bb.ch
  %.0124.i = phi ptr [ %i.wa, %bb.ch ], [ %.0124.i.unr, %.lr.ph125.i.prol.loopexit ] ; 5 uses
  %.055123.i = phi i32 [ %i.vz, %bb.ch ], [ %.055123.i.unr, %.lr.ph125.i.prol.loopexit ]
  %i.vn = getelementptr inbounds nuw i8, ptr %.0124.i, i64 40
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !59
  %.not67.i = icmp eq ptr %i.vo, null
  br i1 %.not67.i, label %.lr.ph125.i.1, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph125.i
  %i.vp = getelementptr inbounds nuw i8, ptr %.0124.i, i64 28 ; 2 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !58 ; 2 uses
  %i.vr = and i32 %i.vq, 16
  %.not68.i = icmp eq i32 %i.vr, 0
  br i1 %.not68.i, label %bb.ce, label %.lr.ph125.i.1

bb.ce:                                            ; preds = %bb.cd
  %i.vs = or disjoint i32 %i.vq, 16
  store i32 %i.vs, ptr %i.vp, align 4, !tbaa !58
  br label %.lr.ph125.i.1

.lr.ph125.i.1:                                    ; preds = %bb.ce, %bb.cd, %.lr.ph125.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.0124.i, i64 112
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !59
  %.not67.i.1 = icmp eq ptr %i.vu, null
  br i1 %.not67.i.1, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph125.i.1
  %i.vv = getelementptr inbounds nuw i8, ptr %.0124.i, i64 100 ; 2 uses
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !58 ; 2 uses
  %i.vx = and i32 %i.vw, 16
  %.not68.i.1 = icmp eq i32 %i.vx, 0
  br i1 %.not68.i.1, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.vy = or disjoint i32 %i.vw, 16
  store i32 %i.vy, ptr %i.vv, align 4, !tbaa !58
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.lr.ph125.i.1
  %i.vz = add i32 %.055123.i, -2                  ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.0124.i, i64 144
  %.not66.i.1 = icmp eq i32 %i.vz, 0
  br i1 %.not66.i.1, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.i, !llvm.loop !123

psh_glyph_find_strong_points.exit:                ; preds = %.lr.ph125.i.prol.loopexit, %bb.ch, %bb.be, %.thread115.i
  %.val81 = phi i32 [ 0, %.thread115.i ], [ 0, %bb.be ], [ %.pr.i, %bb.ch ], [ %.pr.i, %.lr.ph125.i.prol.loopexit ] ; 2 uses
  br i1 %i.jz, label %.split75, label %.split

.split:                                           ; preds = %psh_glyph_find_strong_points.exit
  call fastcc void @psh_glyph_interpolate_strong_points(ptr noundef %4, i32 noundef 0)
  call fastcc void @psh_glyph_interpolate_normal_points(ptr noundef %4, i32 noundef 0)
  call fastcc void @psh_glyph_interpolate_other_points(ptr noundef %4, i32 noundef 0)
  %i.wb = load ptr, ptr %i.js, align 8, !tbaa !47 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !46
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !50
  %i.wg = load i32, ptr %4, align 8, !tbaa !29    ; 2 uses
  %.not20.i = icmp eq i32 %i.wg, 0
  br i1 %.not20.i, label %psh_glyph_save_points.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %.split
  %i.wh = load ptr, ptr %i.k, align 8, !tbaa !27
  br label %.lr.ph.split.us.i105

.lr.ph.split.us.i105:                             ; preds = %bb.cj, %.lr.ph.i104
  %i.wi = phi i32 [ %i.ws, %bb.cj ], [ %i.wg, %.lr.ph.i104 ]
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %bb.cj ], [ 0, %.lr.ph.i104 ] ; 3 uses
  %.01718.us.i = phi ptr [ %i.wt, %bb.cj ], [ %i.wh, %.lr.ph.i104 ] ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.01718.us.i, i64 64
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !124
  %i.wl = getelementptr inbounds nuw [16 x i8], ptr %i.wd, i64 %indvars.iv23.i
  store i64 %i.wk, ptr %i.wl, align 8, !tbaa !52
  %i.wm = getelementptr inbounds nuw i8, ptr %.01718.us.i, i64 28
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !58
  %i.wo = and i32 %i.wn, 16
  %.not.us.i106 = icmp eq i32 %i.wo, 0
  br i1 %.not.us.i106, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.split.us.i105
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wf, i64 %indvars.iv23.i ; 2 uses
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !51
  %i.wr = or i8 %i.wq, 32
  store i8 %i.wr, ptr %i.wp, align 1, !tbaa !51
  %.pre26.i = load i32, ptr %4, align 8, !tbaa !29
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph.split.us.i105
  %i.ws = phi i32 [ %.pre26.i, %bb.ci ], [ %i.wi, %.lr.ph.split.us.i105 ] ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.01718.us.i, i64 72
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.wu = zext i32 %i.ws to i64
  %i.wv = icmp samesign ult i64 %indvars.iv.next24.i, %i.wu
  br i1 %i.wv, label %.lr.ph.split.us.i105, label %psh_glyph_save_points.exit, !llvm.loop !125

.split75:                                         ; preds = %psh_glyph_find_strong_points.exit
  %.not15.i = icmp eq i32 %.val81, 0
  br i1 %.not15.i, label %psh_glyph_find_blue_points.exit, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.split75
  %.val82 = load ptr, ptr %i.k, align 8, !tbaa !27
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit.i108, %.lr.ph19.i
  %.05317.i = phi i32 [ %.val81, %.lr.ph19.i ], [ %i.zi, %.loopexit.i108 ]
  %.05416.i = phi ptr [ %.val82, %.lr.ph19.i ], [ %i.zj, %.loopexit.i108 ] ; 7 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.05416.i, i64 32
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !55
  %i.wy = and i32 %i.wx, 12
  %.not59.i = icmp eq i32 %i.wy, 0
  br i1 %.not59.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wz = getelementptr inbounds nuw i8, ptr %.05416.i, i64 36
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !56
  %i.xb = and i32 %i.xa, 12
  %.not60.i = icmp eq i32 %i.xb, 0
  br i1 %.not60.i, label %.loopexit.i108, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.xc = getelementptr inbounds nuw i8, ptr %.05416.i, i64 28 ; 3 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !58 ; 3 uses
  %i.xe = and i32 %i.xd, 16
  %.not61.i = icmp eq i32 %i.xe, 0
  br i1 %.not61.i, label %bb.cn, label %.loopexit.i108

bb.cn:                                            ; preds = %bb.cm
  %i.xf = getelementptr inbounds nuw i8, ptr %.05416.i, i64 48
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !63 ; 4 uses
  %i.xh = load i32, ptr %i.im, align 8, !tbaa !126 ; 2 uses
  %.not625.i = icmp eq i32 %i.xh, 0
  br i1 %.not625.i, label %._crit_edge.i111, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.cn
  %i.xi = load i32, ptr %i.ju, align 8, !tbaa !127 ; 2 uses
  %i.xj = sub nsw i32 0, %i.xi
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %.05416.i, i64 64
  br label %bb.co

bb.co:                                            ; preds = %bb.ct, %.lr.ph.i110
  %i.xm = phi i32 [ %i.xd, %.lr.ph.i110 ], [ %i.yc, %bb.ct ] ; 4 uses
  %.07.i = phi ptr [ %i.jt, %.lr.ph.i110 ], [ %i.ye, %bb.ct ] ; 4 uses
  %.0556.i = phi i32 [ %i.xh, %.lr.ph.i110 ], [ %i.yd, %bb.ct ]
  %i.xn = getelementptr inbounds nuw i8, ptr %.07.i, i64 12
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !128
  %i.xp = sext i32 %i.xo to i64
  %i.xq = sub nsw i64 %i.xg, %i.xp                ; 2 uses
  %i.xr = icmp slt i64 %i.xq, %i.xk
  br i1 %i.xr, label %._crit_edge.i111, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.xs = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !129
  %i.xu = add nsw i32 %i.xt, %i.xi
  %i.xv = sext i32 %i.xu to i64
  %.not63.i = icmp sgt i64 %i.xg, %i.xv
  br i1 %.not63.i, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xw = load i8, ptr %i.jv, align 4, !tbaa !130
  %.not64.i = icmp eq i8 %i.xw, 0
  br i1 %.not64.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.xx = load i32, ptr %i.jw, align 4, !tbaa !131
  %i.xy = sext i32 %i.xx to i64
  %.not65.i = icmp sgt i64 %i.xq, %i.xy
  br i1 %.not65.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.xz = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !132
  store i64 %i.ya, ptr %i.xl, align 8, !tbaa !124
  %i.yb = or i32 %i.xm, 48                        ; 2 uses
  store i32 %i.yb, ptr %i.xc, align 4, !tbaa !58
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cp
  %i.yc = phi i32 [ %i.xm, %bb.cr ], [ %i.yb, %bb.cs ], [ %i.xm, %bb.cp ] ; 2 uses
  %i.yd = add i32 %.0556.i, -1                    ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  %.not62.i = icmp eq i32 %i.yd, 0
  br i1 %.not62.i, label %._crit_edge.i111, label %bb.co, !llvm.loop !133

._crit_edge.i111:                                 ; preds = %bb.ct, %bb.co, %bb.cn
  %i.yf = phi i32 [ %i.xd, %bb.cn ], [ %i.xm, %bb.co ], [ %i.yc, %bb.ct ]
  %i.yg = load i32, ptr %i.jx, align 8, !tbaa !126 ; 3 uses
  %.not669.i = icmp eq i32 %i.yg, 0
  br i1 %.not669.i, label %.loopexit.i108, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %._crit_edge.i111
  %i.yh = zext i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [48 x i8], ptr %i.im, i64 %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 736
  %i.yk = load i32, ptr %i.ju, align 8, !tbaa !127 ; 2 uses
  %i.yl = sub nsw i32 0, %i.yk
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %.05416.i, i64 64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cz, %.lr.ph13.i
  %i.yo = phi i32 [ %i.yf, %.lr.ph13.i ], [ %i.zf, %bb.cz ] ; 3 uses
  %.111.i = phi ptr [ %i.yj, %.lr.ph13.i ], [ %i.zh, %bb.cz ] ; 4 uses
  %.15610.i = phi i32 [ %i.yg, %.lr.ph13.i ], [ %i.zg, %bb.cz ]
  %i.yp = getelementptr inbounds nuw i8, ptr %.111.i, i64 8
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !129
  %i.yr = sext i32 %i.yq to i64
  %i.ys = sub nsw i64 %i.yr, %i.xg                ; 2 uses
  %i.yt = icmp slt i64 %i.ys, %i.ym
  br i1 %i.yt, label %.loopexit.i108, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yu = getelementptr inbounds nuw i8, ptr %.111.i, i64 12
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !128
  %i.yw = sub nsw i32 %i.yv, %i.yk
  %i.yx = sext i32 %i.yw to i64
  %.not67.i112 = icmp slt i64 %i.xg, %i.yx
  br i1 %.not67.i112, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.yy = load i8, ptr %i.jv, align 4, !tbaa !130
  %.not68.i113 = icmp eq i8 %i.yy, 0
  br i1 %.not68.i113, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.yz = load i32, ptr %i.jw, align 4, !tbaa !131
  %i.za = sext i32 %i.yz to i64
  %i.zb = icmp slt i64 %i.ys, %i.za
  br i1 %i.zb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.zc = getelementptr inbounds nuw i8, ptr %.111.i, i64 40
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !134
  store i64 %i.zd, ptr %i.yn, align 8, !tbaa !124
  %i.ze = or i32 %i.yo, 48                        ; 2 uses
  store i32 %i.ze, ptr %i.xc, align 4, !tbaa !58
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cv
  %i.zf = phi i32 [ %i.yo, %bb.cx ], [ %i.ze, %bb.cy ], [ %i.yo, %bb.cv ]
  %i.zg = add i32 %.15610.i, -1                   ; 2 uses
  %i.zh = getelementptr inbounds i8, ptr %.111.i, i64 -48
  %.not66.i114 = icmp eq i32 %i.zg, 0
  br i1 %.not66.i114, label %.loopexit.i108, label %bb.cu, !llvm.loop !135

.loopexit.i108:                                   ; preds = %bb.cz, %bb.cu, %._crit_edge.i111, %bb.cm, %bb.cl
  %i.zi = add i32 %.05317.i, -1                   ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.05416.i, i64 72
  %.not.i109 = icmp eq i32 %i.zi, 0
  br i1 %.not.i109, label %psh_glyph_find_blue_points.exit, label %bb.ck, !llvm.loop !136

psh_glyph_find_blue_points.exit:                  ; preds = %.loopexit.i108, %.split75
  call fastcc void @psh_glyph_interpolate_strong_points(ptr noundef %4, i32 noundef 1)
  call fastcc void @psh_glyph_interpolate_normal_points(ptr noundef %4, i32 noundef 1)
  call fastcc void @psh_glyph_interpolate_other_points(ptr noundef %4, i32 noundef 1)
  %i.zk = load ptr, ptr %i.js, align 8, !tbaa !47 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !46
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !50
  %i.zp = load i32, ptr %4, align 8, !tbaa !29    ; 2 uses
  %.not20.i115 = icmp eq i32 %i.zp, 0
  br i1 %.not20.i115, label %psh_glyph_save_points.exit, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %psh_glyph_find_blue_points.exit
  %i.zq = load ptr, ptr %i.k, align 8, !tbaa !27
  br label %.lr.ph.split.i117

.lr.ph.split.i117:                                ; preds = %bb.db, %.lr.ph.i116
  %i.zr = phi i32 [ %i.aac, %bb.db ], [ %i.zp, %.lr.ph.i116 ]
  %indvars.iv.i118 = phi i64 [ %indvars.iv.next.i121, %bb.db ], [ 0, %.lr.ph.i116 ] ; 3 uses
  %.01718.i = phi ptr [ %i.aad, %bb.db ], [ %i.zq, %.lr.ph.i116 ] ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.01718.i, i64 64
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !124
  %i.zu = getelementptr inbounds nuw [16 x i8], ptr %i.zm, i64 %indvars.iv.i118
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  store i64 %i.zt, ptr %i.zv, align 8, !tbaa !54
  %i.zw = getelementptr inbounds nuw i8, ptr %.01718.i, i64 28
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !58
  %i.zy = and i32 %i.zx, 16
  %.not.i119 = icmp eq i32 %i.zy, 0
  br i1 %.not.i119, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph.split.i117
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zo, i64 %indvars.iv.i118 ; 2 uses
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !51
  %i.aab = or i8 %i.aaa, 64
  store i8 %i.aab, ptr %i.zz, align 1, !tbaa !51
  %.pre.i120 = load i32, ptr %4, align 8, !tbaa !29
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.lr.ph.split.i117
  %i.aac = phi i32 [ %.pre.i120, %bb.da ], [ %i.zr, %.lr.ph.split.i117 ] ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.01718.i, i64 72
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %i.aae = zext i32 %i.aac to i64
  %i.aaf = icmp samesign ult i64 %indvars.iv.next.i121, %i.aae
  br i1 %i.aaf, label %.lr.ph.split.i117, label %psh_glyph_save_points.exit, !llvm.loop !125

psh_glyph_save_points.exit:                       ; preds = %bb.cj, %bb.db, %psh_glyph_find_blue_points.exit, %.split
  %9 = phi i32 [ %i.aac, %bb.db ], [ 0, %.split ], [ 0, %psh_glyph_find_blue_points.exit ], [ %i.ws, %bb.cj ]
  br i1 %.not79, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %psh_glyph_save_points.exit
  %i.aag = load ptr, ptr %i.ig, align 8, !tbaa !48
  call void @psh_globals_set_scale(ptr noundef %i.aag, i64 noundef %i.ij, i64 noundef %i.il, i64 noundef 0, i64 noundef 0)
  %.pre = load i32, ptr %4, align 8, !tbaa !29
  br label %bb.dd

bb.dd:                                            ; preds = %psh_glyph_save_points.exit, %bb.dc
  %10 = phi i32 [ %9, %psh_glyph_save_points.exit ], [ %.pre, %bb.dc ]
  br i1 %i.jy, label %bb.al, label %.loopexit, !llvm.loop !137

.loopexit:                                        ; preds = %bb.dd, %psh_glyph_init.exit.thread, %psh_glyph_init.exit
  %i.aah = phi i32 [ %.ph, %psh_glyph_init.exit.thread ], [ %i.if, %psh_glyph_init.exit ], [ 0, %bb.dd ]
  %i.aai = load ptr, ptr %i.h, align 8, !tbaa !21 ; 8 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aak = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.aal = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !138
  call void @ft_mem_free(ptr noundef %i.aai, ptr noundef %i.aam) #12
  %i.aan = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 0, ptr %i.aan, align 8, !tbaa !139
  %i.aao = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aal, i8 0, i64 16, i1 false)
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !115
  call void @ft_mem_free(ptr noundef %i.aai, ptr noundef %i.aap) #12
  store ptr null, ptr %i.aao, align 8, !tbaa !115
  %i.aaq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !98
  call void @ft_mem_free(ptr noundef %i.aai, ptr noundef %i.aar) #12
  %i.aas = getelementptr inbounds nuw i8, ptr %4, i64 144
  store ptr null, ptr %i.aas, align 8, !tbaa !140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aak, i8 0, i64 16, i1 false)
  %i.aat = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !138
  call void @ft_mem_free(ptr noundef %i.aai, ptr noundef %i.aau) #12
  %i.aav = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.aav, align 8, !tbaa !139
  %i.aaw = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aat, i8 0, i64 16, i1 false)
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !115
  call void @ft_mem_free(ptr noundef %i.aai, ptr noundef %i.aax) #12
  store ptr null, ptr %i.aaw, align 8, !tbaa !115
  %i.aay = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !98
  call void @ft_mem_free(ptr noundef %i.aai, ptr noundef %i.aaz) #12
  %i.aba = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr null, ptr %i.aba, align 8, !tbaa !140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aaj, i8 0, i64 16, i1 false)
  %i.abb = load ptr, ptr %i.k, align 8, !tbaa !27
  call void @ft_mem_free(ptr noundef %i.aai, ptr noundef %i.abb) #12
  store ptr null, ptr %i.k, align 8, !tbaa !27
  %i.abc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !28
  call void @ft_mem_free(ptr noundef %i.aai, ptr noundef %i.abd) #12
  br label %bb.de

bb.de:                                            ; preds = %bb.a, %bb.b, %.loopexit
  %.071 = phi i32 [ %i.aah, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.071
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @psh_globals_set_scale(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %.not = icmp eq i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load i64, ptr %i.c, align 8, !tbaa !141
  %.not22 = icmp eq i64 %3, %i.d
  br i1 %.not22, label %psh_globals_scale_widths.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %3, ptr %i.e, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %psh_globals_scale_widths.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !143
  %i.j = sext i32 %i.i to i64
  %sext.i = shl i64 %1, 32
  %i.k = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.l = mul nsw i64 %i.k, %i.j                   ; 2 uses
  %i.m = ashr i64 %i.l, 63
  %i.n = add nsw i64 %i.l, 32768
  %i.o = add nsw i64 %i.n, %i.m
  %i.p = shl i64 %i.o, 16
  %i.q = ashr i64 %i.p, 32                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !145
  %i.s = add nsw i64 %i.q, 32
  %i.t = and i64 %i.s, -64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %i.u, align 8, !tbaa !146
  %.03038.i = add i32 %i.g, -1                    ; 2 uses
  %.not3439.i = icmp eq i32 %.03038.i, 0
  br i1 %.not3439.i, label %psh_globals_scale_widths.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.03041.i = phi i32 [ %.030.i, %.lr.ph.i ], [ %.03038.i, %.lr.ph.preheader.i ]
  %.03140.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.v, %.lr.ph.preheader.i ] ; 4 uses
  %i.w = load i32, ptr %.03140.i, align 8, !tbaa !143
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.k, %i.x                   ; 2 uses
  %i.z = ashr i64 %i.y, 63
  %i.aa = add nsw i64 %i.y, 32768
  %i.ab = add nsw i64 %i.aa, %i.z
  %i.ac = shl i64 %i.ab, 16
  %i.ad = ashr i64 %i.ac, 32                      ; 2 uses
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !145 ; 2 uses
  %reass.sub = sub i64 %i.ad, %i.ae
  %i.af = add i64 %reass.sub, 127
  %i.ag = icmp ult i64 %i.af, 255
  %spec.select35.i = select i1 %i.ag, i64 %i.ae, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03140.i, i64 8
  store i64 %spec.select35.i, ptr %i.ah, align 8, !tbaa !145
  %i.ai = add nsw i64 %spec.select35.i, 32
  %i.aj = and i64 %i.ai, -64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03140.i, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !146
  %i.al = getelementptr inbounds nuw i8, ptr %.03140.i, i64 24
  %.030.i = add i32 %.03041.i, -1                 ; 2 uses
  %.not34.i = icmp eq i32 %.030.i, 0
  br i1 %.not34.i, label %psh_globals_scale_widths.exit, label %.lr.ph.i, !llvm.loop !147

psh_globals_scale_widths.exit:                    ; preds = %.lr.ph.i, %bb.d, %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !72
  %.not23 = icmp eq i64 %2, %i.an
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %psh_globals_scale_widths.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !141
  %.not24 = icmp eq i64 %4, %i.ap
  br i1 %.not24, label %psh_blues_scale_zones.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %psh_globals_scale_widths.exit
  store i64 %2, ptr %i.am, align 8, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i64 %4, ptr %i.aq, align 8, !tbaa !141
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !142 ; 2 uses
  %.not.i25 = icmp eq i32 %i.as, 0
  br i1 %.not.i25, label %psh_globals_scale_widths.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.au = load i32, ptr %i.at, align 8, !tbaa !143
  %i.av = sext i32 %i.au to i64
  %sext.i26 = shl i64 %2, 32
  %i.aw = ashr exact i64 %sext.i26, 32            ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.av                ; 2 uses
  %i.ay = ashr i64 %i.ax, 63
  %i.az = add nsw i64 %i.ax, 32768
  %i.ba = add nsw i64 %i.az, %i.ay
  %i.bb = shl i64 %i.ba, 16
  %i.bc = ashr i64 %i.bb, 32                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !145
  %i.be = add nsw i64 %i.bc, 32
  %i.bf = and i64 %i.be, -64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !146
  %.03038.i27 = add i32 %i.as, -1                 ; 2 uses
  %.not3439.i28 = icmp eq i32 %.03038.i27, 0
  br i1 %.not3439.i28, label %psh_globals_scale_widths.exit37, label %.lr.ph.preheader.i29

.lr.ph.preheader.i29:                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30, %.lr.ph.preheader.i29
  %.03041.i31 = phi i32 [ %.030.i35, %.lr.ph.i30 ], [ %.03038.i27, %.lr.ph.preheader.i29 ]
  %.03140.i32 = phi ptr [ %i.bx, %.lr.ph.i30 ], [ %i.bh, %.lr.ph.preheader.i29 ] ; 4 uses
  %i.bi = load i32, ptr %.03140.i32, align 8, !tbaa !143
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.aw, %i.bj                ; 2 uses
  %i.bl = ashr i64 %i.bk, 63
  %i.bm = add nsw i64 %i.bk, 32768
  %i.bn = add nsw i64 %i.bm, %i.bl
  %i.bo = shl i64 %i.bn, 16
  %i.bp = ashr i64 %i.bo, 32                      ; 2 uses
  %i.bq = load i64, ptr %i.bd, align 8, !tbaa !145 ; 2 uses
  %reass.sub44 = sub i64 %i.bp, %i.bq
  %i.br = add i64 %reass.sub44, 127
  %i.bs = icmp ult i64 %i.br, 255
  %spec.select35.i34 = select i1 %i.bs, i64 %i.bq, i64 %i.bp ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03140.i32, i64 8
  store i64 %spec.select35.i34, ptr %i.bt, align 8, !tbaa !145
  %i.bu = add nsw i64 %spec.select35.i34, 32
end_hunk_1
