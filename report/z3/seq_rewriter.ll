Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_rewriter?download=true
inline.NumInlined: 6287
inline.NumDeleted: 1145
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN12seq_rewriter9mk_re_xorEP4exprS1_R7obj_refIS0_11ast_managerE:bb.a

_ZNK8seq_util3rex11is_full_seqEPK4expr.exit.thread71: ; preds = %_Z9is_app_ofPK4exprii.exit.i, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.ct = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.cs, i32 noundef %i.p, i32 noundef 35, ptr noundef nonnull %2) ; 3 uses
  %.not.i48 = icmp eq ptr %i.ct, null
  br i1 %.not.i48, label %bb.t, label %_ZN11ast_manager7inc_refEP3ast.exit.i49

_ZN11ast_manager7inc_refEP3ast.exit.i49:          ; preds = %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit.thread71
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !86
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !86
  br label %bb.t

bb.t:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i49, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit.thread71
  %i.cx = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i50 = icmp eq ptr %i.cx, null
  br i1 %.not.i4.i50, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit51, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !86
  %i.dc = add i32 %i.db, -1                       ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !86
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.v, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit51

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cz, ptr noundef nonnull %i.cx)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit51

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit51:    ; preds = %bb.t, %bb.u, %bb.v
  store ptr %i.ct, ptr %3, align 8, !tbaa !33
  br label %bb.an

_ZNK8seq_util3rex11is_full_seqEPK4expr.exit.thread: ; preds = %bb.p, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit42.thread, %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i, %bb.q, %bb.s, %bb.r, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit
  br i1 %i.ar, label %bb.w, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread

bb.w:                                             ; preds = %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit.thread
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i52, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread, label %_Z9is_app_ofPK4exprii.exit.i53

_Z9is_app_ofPK4exprii.exit.i53:                   ; preds = %bb.w
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !148
  %i.dj = icmp eq i32 %i.di, %i.p                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 37
  %i.dn = select i1 %i.dj, i1 %i.dm, i1 false
  br i1 %i.dn, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread72, label %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i54

_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i54:     ; preds = %_Z9is_app_ofPK4exprii.exit.i53
  %i.do = icmp eq i32 %i.dl, 25
  %i.dp = select i1 %i.dj, i1 %i.do, i1 false
  br i1 %i.dp, label %bb.x, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread

bb.x:                                             ; preds = %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i54
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !149
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.y, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !27 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = and i32 %i.dw, 65535
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.z, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !147
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i55, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56

_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56:    ; preds = %bb.z
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !148
  %i.ee = icmp eq i32 %i.ed, %i.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = icmp eq i32 %i.eg, 38
  %i.ei = select i1 %i.ee, i1 %i.eh, i1 false
  br i1 %i.ei, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread72, label %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread

_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread72: ; preds = %_Z9is_app_ofPK4exprii.exit.i53, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.el = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ek, i32 noundef %i.p, i32 noundef 35, ptr noundef nonnull %1) ; 3 uses
  %.not.i57 = icmp eq ptr %i.el, null
  br i1 %.not.i57, label %bb.aa, label %_ZN11ast_manager7inc_refEP3ast.exit.i58

_ZN11ast_manager7inc_refEP3ast.exit.i58:          ; preds = %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread72
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !86
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !86
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i58, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread72
  %i.ep = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i59 = icmp eq ptr %i.ep, null
  br i1 %.not.i4.i59, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit60, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !86
  %i.eu = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !86
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ac, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit60

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.er, ptr noundef nonnull %i.ep)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit60

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit60:    ; preds = %bb.aa, %bb.ab, %bb.ac
  store ptr %i.el, ptr %3, align 8, !tbaa !33
  br label %bb.an

_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread: ; preds = %bb.w, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit.thread, %_ZNK8seq_util3rex7is_starEPK4expr.exit.i.i54, %bb.x, %bb.z, %bb.y, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56
  br i1 %i.t, label %bb.ad, label %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit

bb.ad:                                            ; preds = %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !147
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i61, label %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit, label %_ZNK8seq_util3rex13is_complementEPK4expr.exit.i

_ZNK8seq_util3rex13is_complementEPK4expr.exit.i:  ; preds = %bb.ad
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !148
  %i.fb = icmp eq i32 %i.fa, %i.p
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = icmp eq i32 %i.fd, 35
  %i.ff = select i1 %i.fb, i1 %i.fe, i1 false
  br i1 %i.ff, label %bb.ae, label %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit

bb.ae:                                            ; preds = %_ZNK8seq_util3rex13is_complementEPK4expr.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !149
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.af, label %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !27
  br label %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit

_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit: ; preds = %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread, %bb.ad, %_ZNK8seq_util3rex13is_complementEPK4expr.exit.i, %bb.ae, %bb.af
  %.070 = phi ptr [ null, %bb.ad ], [ %i.fk, %bb.af ], [ null, %bb.ae ], [ null, %_ZNK8seq_util3rex13is_complementEPK4expr.exit.i ], [ null, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread ] ; 2 uses
  %.0.i = phi i1 [ false, %bb.ad ], [ true, %bb.af ], [ false, %bb.ae ], [ false, %_ZNK8seq_util3rex13is_complementEPK4expr.exit.i ], [ false, %_ZNK8seq_util3rex11is_full_seqEPK4expr.exit56.thread ] ; 2 uses
  br i1 %i.ar, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !147
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i63, label %.thread, label %_ZNK8seq_util3rex13is_complementEPK4expr.exit.i64

_ZNK8seq_util3rex13is_complementEPK4expr.exit.i64: ; preds = %bb.ag
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !148
  %i.fq = icmp eq i32 %i.fp, %i.p
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp eq i32 %i.fs, 35
  %i.fu = select i1 %i.fq, i1 %i.ft, i1 false
  br i1 %i.fu, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %_ZNK8seq_util3rex13is_complementEPK4expr.exit.i64
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !149
  %i.fx = icmp eq i32 %i.fw, 1
  br i1 %i.fx, label %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit65, label %.thread

_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit65: ; preds = %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !27 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !165, !nonnull !31, !align !32 ; 2 uses
  br i1 %.0.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit65
  %i.gc = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gb, i32 noundef %i.p, i32 noundef 32, ptr noundef %.070, ptr noundef %i.fz)
  %4 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.gc) ; 0 uses
  br label %bb.an

.thread:                                          ; preds = %bb.ag, %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit, %_ZNK8seq_util3rex13is_complementEPK4expr.exit.i64, %bb.ah
  br i1 %.0.i, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.gf = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ge, i32 noundef %i.p, i32 noundef 32, ptr noundef %.070, ptr noundef nonnull %2)
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.gh = load i32, ptr %i.o, align 8, !tbaa !74
  %i.gi = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gg, i32 noundef %i.gh, i32 noundef 35, ptr noundef %i.gf)
  %i.gj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.gi) ; 0 uses
  br label %bb.an

bb.ak:                                            ; preds = %_ZNK8seq_util3rex13is_complementEPK4exprRPS1_.exit65
  %i.gk = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gb, i32 noundef %i.p, i32 noundef 32, ptr noundef nonnull %1, ptr noundef %i.fz)
  %i.gl = load ptr, ptr %i.ga, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.gm = load i32, ptr %i.o, align 8, !tbaa !74
  %i.gn = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gl, i32 noundef %i.gm, i32 noundef 35, ptr noundef %i.gk)
  %5 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.gn) ; 0 uses
  br label %bb.an

bb.al:                                            ; preds = %.thread
  %i.go = load i32, ptr %1, align 4, !tbaa !200
  %i.gp = load i32, ptr %2, align 4, !tbaa !200
  %i.gq = icmp ugt i32 %i.go, %i.gp
  br i1 %i.gq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.gt = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gs, i32 noundef %i.p, i32 noundef 32, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %i.gu = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.gt) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.am, %bb.al, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit60, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit51, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit46, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit40, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit
  %.1 = phi i32 [ 4, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ], [ 4, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit40 ], [ 4, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit46 ], [ 0, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit51 ], [ 0, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit60 ], [ 0, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 4, %bb.am ], [ 5, %bb.al ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN12seq_rewriter11mk_re_interEP4exprS1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr noundef nonnull %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.obj_ref, align 8             ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZN12seq_rewriter21try_collapse_re_interEP4exprS1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN12seq_rewriter24mk_regex_inter_normalizeEP4exprS1_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %4, ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.b = load ptr, ptr %3, align 8, !tbaa !33     ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !86
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !86
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.d, ptr noundef nonnull %i.b)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.d, %bb.c, %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !33
  store ptr %i.k, ptr %3, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret i32 4
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 1, 6) i32 @_ZN12seq_rewriter16mk_re_complementEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 5 uses
  %i.f = and i32 %i.e, 65535
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZNK8seq_util3rex8is_to_reEPK4exprRPS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !139  ; 13 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNK8seq_util3rex8is_to_reEPK4exprRPS1_.exit.thread, label %_ZNK8seq_util3rex15is_intersectionEPK4expr.exit.i

_ZNK8seq_util3rex15is_intersectionEPK4expr.exit.i: ; preds = %bb.b
  %i.l = load i32, ptr %i.k, align 8, !tbaa !148
  %i.m = icmp eq i32 %i.l, %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 31
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %_ZNK8seq_util3rex8is_unionEPK4expr.exit.i

bb.c:                                             ; preds = %_ZNK8seq_util3rex15is_intersectionEPK4expr.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !149
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %_ZNK8seq_util3rex8is_unionEPK4expr.exit.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.aa = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.z, i32 noundef %i.c, i32 noundef 35, ptr noundef %i.v)
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !74
  %i.ad = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ab, i32 noundef %i.ac, i32 noundef 35, ptr noundef %i.x)
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.af = load i32, ptr %i.b, align 8, !tbaa !74
  %i.ag = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, i32 noundef %i.af, i32 noundef 29, ptr noundef %i.aa, ptr noundef %i.ad) ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.e, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !86
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.d
  %i.ak = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ak, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !86
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !86
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.am, ptr noundef nonnull %i.ak)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.e, %bb.f, %bb.g
  store ptr %i.ag, ptr %2, align 8, !tbaa !33
  br label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

_ZNK8seq_util3rex8is_unionEPK4expr.exit.i:        ; preds = %bb.c, %_ZNK8seq_util3rex15is_intersectionEPK4expr.exit.i
  %i.ar = load i32, ptr %i.k, align 8, !tbaa !148
  %i.as = icmp eq i32 %i.ar, %i.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, 29
  %i.aw = select i1 %i.as, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.h, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit

bb.h:                                             ; preds = %_ZNK8seq_util3rex8is_unionEPK4expr.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !149
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.i, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.bg = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bf, i32 noundef %i.c, i32 noundef 35, ptr noundef %i.bb)
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.bi = load i32, ptr %i.b, align 8, !tbaa !74
  %i.bj = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bh, i32 noundef %i.bi, i32 noundef 35, ptr noundef %i.bd)
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.bl = load i32, ptr %i.b, align 8, !tbaa !74
  %i.bm = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bk, i32 noundef %i.bl, i32 noundef 31, ptr noundef %i.bg, ptr noundef %i.bj) ; 3 uses
  %.not.i24 = icmp eq ptr %i.bm, null
  br i1 %.not.i24, label %bb.j, label %_ZN11ast_manager7inc_refEP3ast.exit.i25

_ZN11ast_manager7inc_refEP3ast.exit.i25:          ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !86
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !86
  br label %bb.j

bb.j:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i25, %bb.i
  %i.bq = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i26 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i26, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !86
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.l, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit27

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit27

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit27:    ; preds = %bb.j, %bb.k, %bb.l
  store ptr %i.bm, ptr %2, align 8, !tbaa !33
  br label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

_ZNK8seq_util3rex8is_emptyEPK4expr.exit:          ; preds = %bb.h, %_ZNK8seq_util3rex8is_unionEPK4expr.exit.i
  %i.bx = load i32, ptr %i.k, align 8, !tbaa !148
  %i.by = icmp eq i32 %i.bx, %i.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp eq i32 %i.ca, 36
  %i.cc = select i1 %i.by, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.m, label %_Z9is_app_ofPK4exprii.exit.i
end_hunk_0
