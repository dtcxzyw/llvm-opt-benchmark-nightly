Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/Glucose?download=true
inline.NumInlined: 1329
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5Gluco6Solver6solve_Ev:bb.a

bb.n:                                             ; preds = %bb.k
  %.not67.old = icmp samesign ult i8 %i.bq, 2
  br i1 %.not67.old, label %_ZNK5Gluco6Solver12withinBudgetEv.exit.thread, label %.backedge

.backedge:                                        ; preds = %bb.n, %_ZL9Abc_Clockv.exit
  %i.cn = call i8 @_ZN5Gluco6Solver6searchEi(ptr noundef nonnull align 8 dereferenceable(1216) %0, i32 poison) ; 2 uses
  %i.co = load i8, ptr %i.bf, align 8, !tbaa !84, !range !67, !noundef !68
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZNK5Gluco6Solver12withinBudgetEv.exit.thread, label %.lr.ph90, !llvm.loop !260

_ZNK5Gluco6Solver12withinBudgetEv.exit.thread:    ; preds = %bb.n, %bb.j, %_ZNK5Gluco6Solver12withinBudgetEv.exit.thread64, %_ZNK5Gluco6Solver12withinBudgetEv.exit, %_ZL9Abc_Clockv.exit, %.lr.ph90, %.backedge, %bb.g
  %.lcssa = phi i8 [ %i.bn, %bb.g ], [ %i.bq, %bb.n ], [ %i.bq, %bb.j ], [ %i.bq, %_ZNK5Gluco6Solver12withinBudgetEv.exit.thread64 ], [ %i.bq, %_ZNK5Gluco6Solver12withinBudgetEv.exit ], [ %i.bq, %_ZL9Abc_Clockv.exit ], [ %i.bq, %.lr.ph90 ], [ %i.cn, %.backedge ] ; 7 uses
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !85
  %.not35 = icmp eq i32 %i.cq, 0
  br i1 %.not35, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK5Gluco6Solver12withinBudgetEv.exit.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !225
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %puts36 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZNK5Gluco6Solver12withinBudgetEv.exit.thread
  %i.cu = load i8, ptr %i.c, align 8, !tbaa !72, !range !67, !noundef !68
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cw = icmp eq i8 %.lcssa, 1
  br i1 %i.cw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !71
  %i.cz = call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr %i.cy) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !71
  %i.dc = call i32 @fclose(ptr noundef %i.db)     ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.dd = icmp eq i8 %.lcssa, 0                   ; 3 uses
  br i1 %i.dd, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !105 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !107
  %.not.i44 = icmp slt i32 %i.dh, %i.df
  br i1 %.not.i44, label %bb.w, label %_ZN5Gluco3vecINS_5lboolEE6growToEi.exit

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !118 ; 5 uses
  %.not.i.i = icmp slt i32 %i.dj, %i.df
  br i1 %.not.i.i, label %bb.x, label %_ZN5Gluco3vecINS_5lboolEE8capacityEi.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dk = add i32 %i.df, 1
  %i.dl = sub i32 %i.dk, %i.dj
  %i.dm = and i32 %i.dl, -2
  %i.dn = ashr i32 %i.dj, 1
  %i.do = and i32 %i.dn, -2
  %i.dp = add nsw i32 %i.do, 2
  %i.dq = call noundef i32 @llvm.smax.i32(i32 %i.dp, i32 %i.dm) ; 2 uses
  %i.dr = sub nsw i32 2147483647, %i.dj
  %i.ds = icmp samesign ugt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.du = add nsw i32 %i.dq, %i.dj                ; 2 uses
  store i32 %i.du, ptr %i.di, align 4, !tbaa !118
  %i.dv = sext i32 %i.du to i64
  %i.dw = call ptr @realloc(ptr noundef %i.dt, i64 noundef %i.dv) #34 ; 2 uses
  store ptr %i.dw, ptr %i.f, align 8, !tbaa !106
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.z, label %_ZN5Gluco3vecINS_5lboolEE8capacityEi.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dy = tail call ptr @__errno_location() #30
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !50
  %i.ea = icmp eq i32 %i.dz, 12
  br i1 %i.ea, label %bb.aa, label %_ZN5Gluco3vecINS_5lboolEE8capacityEi.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.x
  call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecINS_5lboolEE8capacityEi.exit.i:      ; preds = %bb.z, %bb.y, %bb.w
  %i.eb = load i32, ptr %i.dg, align 8, !tbaa !107 ; 3 uses
  %i.ec = icmp slt i32 %i.eb, %i.df
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN5Gluco3vecINS_5lboolEE8capacityEi.exit.i
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.ee = sext i32 %i.eb to i64
  %scevgep.i = getelementptr i8, ptr %i.ed, i64 %i.ee
  %i.ef = xor i32 %i.eb, -1
  %i.eg = add i32 %i.df, %i.ef
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add nuw nsw i64 %i.eh, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ei, i1 false), !tbaa !129
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN5Gluco3vecINS_5lboolEE8capacityEi.exit.i
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !107
  %.pre = load i32, ptr %i.de, align 8, !tbaa !105
  br label %_ZN5Gluco3vecINS_5lboolEE6growToEi.exit

_ZN5Gluco3vecINS_5lboolEE6growToEi.exit:          ; preds = %bb.v, %._crit_edge.i
  %i.ej = phi i32 [ %i.df, %bb.v ], [ %.pre, %._crit_edge.i ]
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph, label %.loopexit68

.lr.ph:                                           ; preds = %_ZN5Gluco3vecINS_5lboolEE6growToEi.exit
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !106
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i8, ptr %i.en, align 1, !tbaa !119
  %i.eo = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv
  store i8 %.sroa.0.0.copyload.i, ptr %i.ep, align 1, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eq = load i32, ptr %i.de, align 8, !tbaa !105
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next, %i.er
  br i1 %i.es, label %bb.ab, label %.loopexit68, !llvm.loop !261

bb.ac:                                            ; preds = %bb.u
  %i.et = icmp eq i8 %.lcssa, 1
  br i1 %i.et, label %bb.ad, label %.loopexit68

bb.ad:                                            ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !100
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ae, label %.loopexit68

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.l, align 4, !tbaa !74
  br label %.loopexit68

.loopexit68:                                      ; preds = %bb.ab, %_ZN5Gluco3vecINS_5lboolEE6growToEi.exit, %bb.ac, %bb.ad, %bb.ae
  call void @_ZN5Gluco6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(1216) %0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.ex = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #32 ; 0 uses
  %i.ey = load i64, ptr %1, align 8, !tbaa !249
  %i.ez = sitofp i64 %i.ey to double
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !252
  %i.fc = sitofp i64 %i.fb to double
  %i.fd = fdiv double %i.fc, 1.000000e+06
  %i.fe = fadd double %i.fd, %i.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %i.dd, label %.thread, label %bb.af

.thread:                                          ; preds = %.loopexit68
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !245
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 8, !tbaa !245
  br label %.sink.split

bb.af:                                            ; preds = %.loopexit68
  %i.fi = icmp eq i8 %.lcssa, 1
  br i1 %i.fi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !247
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !247
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %.thread
  %.sink89 = phi i64 [ 1160, %.thread ], [ 1168, %bb.ag ]
  %not..ph = phi i32 [ -1, %.thread ], [ 0, %bb.ag ]
  %i.fm = fsub double %i.fe, %i.v
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink89 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !47
  %i.fp = fadd double %i.fm, %i.fo
  store double %i.fp, ptr %i.fn, align 8, !tbaa !47
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.af
  %not. = phi i32 [ -1, %bb.af ], [ %not..ph, %.sink.split ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !42 ; 2 uses
  %.not37 = icmp eq ptr %i.fr, null
  br i1 %.not37, label %.thread66, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fs = load i8, ptr %i.bj, align 4, !tbaa !44, !range !67, !noundef !68
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dd, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !105 ; 5 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i32 %i.fv, 0
  %i.fy = shl nsw i64 %i.fw, 2
  %i.fz = select i1 %i.fx, i64 -1, i64 %i.fy
  %i.ga = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fz) #36 ; 5 uses
  %i.gb = icmp sgt i32 %i.fv, 0
  br i1 %i.gb, label %.lr.ph71, label %.loopexit

.lr.ph71:                                         ; preds = %bb.ak
  %i.gc = load ptr, ptr %i.f, align 8, !tbaa !106 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fv to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.fv, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph71
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %index ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %wide.load = load <4 x i8>, ptr %i.gd, align 1, !tbaa !129
  %wide.load100 = load <4 x i8>, ptr %i.ge, align 1, !tbaa !129
  %i.gf = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.gg = icmp eq <4 x i8> %wide.load100, zeroinitializer
  %i.gh = zext <4 x i1> %i.gf to <4 x i32>
  %i.gi = zext <4 x i1> %i.gg to <4 x i32>
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <4 x i32> %i.gh, ptr %i.gj, align 4, !tbaa !50
  store <4 x i32> %i.gi, ptr %i.gk, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph71, %middle.block
  %indvars.iv74.ph = phi i64 [ 0, %.lr.ph71 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %scalar.ph ], [ %indvars.iv74.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv74
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !129
  %i.go = icmp eq i8 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv74
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !50
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !263

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.ak, %bb.aj
  %i.gr = phi i32 [ %not., %bb.aj ], [ 1, %bb.ak ], [ 1, %middle.block ], [ 1, %scalar.ph ]
  %.017 = phi ptr [ null, %bb.aj ], [ %i.ga, %bb.ak ], [ %i.ga, %middle.block ], [ %i.ga, %scalar.ph ]
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !264
  %i.gu = call noundef i32 %i.fr(ptr noundef %i.gt, i32 noundef %i.gr, ptr noundef %.017) #32 ; 0 uses
  br label %.thread66

bb.al:                                            ; preds = %bb.ai
  store i8 0, ptr %i.bj, align 4, !tbaa !44
  br label %.thread66

.thread66:                                        ; preds = %bb.ah, %_ZN5Gluco3vecINS_3LitEE5clearEb.exit, %.loopexit, %bb.al
  %.sroa.054.2 = phi i8 [ 1, %_ZN5Gluco3vecINS_3LitEE5clearEb.exit ], [ %.lcssa, %bb.al ], [ %.lcssa, %.loopexit ], [ %.lcssa, %bb.ah ]
  ret i8 %.sroa.054.2
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Gluco6Solver8toDimacsEP8_IO_FILERNS_6ClauseERNS_3vecIiEERi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %2, align 4                ; 2 uses
  %i.e = lshr i64 %i.d, 32                        ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 4, !tbaa !50 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.k = ashr i32 %.sroa.0.0.copyload.i.i, 1
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !106  ; 2 uses
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = trunc i32 %.sroa.0.0.copyload.i.i to i8
  %i.p = load i8, ptr %i.n, align 1, !tbaa !129
  %i.q = and i8 %i.o, 1
  %i.r = icmp eq i8 %i.p, %i.q
  br i1 %i.r, label %_ZNK5Gluco6Solver9satisfiedERKNS_6ClauseE.exit.thread, label %.split

.split:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i13.i = load i32, ptr %i.s, align 4, !tbaa !50 ; 2 uses
  %i.t = ashr i32 %.sroa.0.0.copyload.i13.i, 1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 %i.u
  %i.w = trunc i32 %.sroa.0.0.copyload.i13.i to i8
  %i.x = load i8, ptr %i.v, align 1, !tbaa !129
  %i.y = and i8 %i.w, 1
  %i.z = icmp eq i8 %i.x, %i.y
  br i1 %i.z, label %_ZNK5Gluco6Solver9satisfiedERKNS_6ClauseE.exit.thread, label %.preheader

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.e
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.d, !llvm.loop !166

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i14.i = load i32, ptr %i.aa, align 4, !tbaa !50 ; 2 uses
  %i.ab = ashr i32 %.sroa.0.0.copyload.i14.i, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.i, i64 %i.ac
  %i.ae = trunc i32 %.sroa.0.0.copyload.i14.i to i8
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !129
  %i.ag = and i8 %i.ae, 1
  %i.ah = icmp eq i8 %i.af, %i.ag
  br i1 %i.ah, label %_ZNK5Gluco6Solver9satisfiedERKNS_6ClauseE.exit.thread, label %bb.c

.preheader:                                       ; preds = %.split
  %.pre = load i64, ptr %2, align 4               ; 2 uses
  %.pre22 = lshr i64 %.pre, 32
  %.pre23 = trunc nuw i64 %.pre22 to i32
  %i.ai = icmp sgt i32 %.pre23, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.preheader
  %i.aj = phi i64 [ %.pre, %.preheader ], [ %i.d, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.e

._crit_edge:                                      ; preds = %bb.g, %.preheader.i, %.preheader
  %i.al = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr %1) ; 0 uses
  br label %_ZNK5Gluco6Solver9satisfiedERKNS_6ClauseE.exit.thread

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.am = phi i64 [ %i.aj, %.lr.ph ], [ %i.bb, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %.sroa.02.0.copyload = load i32, ptr %i.an, align 4, !tbaa !50 ; 3 uses
  %i.ao = ashr i32 %.sroa.02.0.copyload, 1        ; 2 uses
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !106
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  %i.as = trunc i32 %.sroa.02.0.copyload to i8
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !129
  %i.au = and i8 %i.as, 1
  %i.av = xor i8 %i.at, %i.au
  %.not = icmp eq i8 %i.av, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = trunc i32 %.sroa.02.0.copyload to i1
  %i.ax = select i1 %i.aw, ptr @.str.99, ptr @.str.100
  %i.ay = tail call fastcc noundef i32 @_ZL6mapVariRN5Gluco3vecIiEERi(i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.az = add nsw i32 %i.ay, 1
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.98, ptr noundef nonnull %i.ax, i32 noundef %i.az) #32 ; 0 uses
  %.pre21 = load i64, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bb = phi i64 [ %i.am, %bb.e ], [ %.pre21, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = ashr i64 %i.bb, 32
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.e, label %._crit_edge, !llvm.loop !265

_ZNK5Gluco6Solver9satisfiedERKNS_6ClauseE.exit.thread: ; preds = %bb.d, %bb.b, %.split, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL6mapVariRN5Gluco3vecIiEERi(i32 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98
  %.not = icmp sgt i32 %i.b, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !97
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %_ZN5Gluco3vecIiE6growToEiRKi.exit, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = add nsw i32 %0, 1                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !217  ; 5 uses
  %.not.i.i.not = icmp sgt i32 %i.j, %0
  br i1 %.not.i.i.not, label %_ZN5Gluco3vecIiE8capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %0, 2
  %i.l = sub i32 %i.k, %i.j
  %i.m = and i32 %i.l, -2
  %i.n = ashr i32 %i.j, 1
  %i.o = and i32 %i.n, -2
  %i.p = add nsw i32 %i.o, 2
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %i.m) ; 2 uses
  %i.r = sub nsw i32 2147483647, %i.j
  %i.s = icmp samesign ugt i32 %i.q, %i.r
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %1, align 8, !tbaa !97
  %i.u = add nsw i32 %i.q, %i.j                   ; 2 uses
  store i32 %i.u, ptr %i.i, align 4, !tbaa !217
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  %i.x = tail call ptr @realloc(ptr noundef %i.t, i64 noundef %i.w) #34 ; 2 uses
  store ptr %i.x, ptr %1, align 8, !tbaa !97
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %_ZN5Gluco3vecIiE8capacityEi.exit.i

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @__errno_location() #30
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !50
  %i.ab = icmp eq i32 %i.aa, 12
  br i1 %i.ab, label %bb.g, label %_ZN5Gluco3vecIiE8capacityEi.exit.i

bb.g:                                             ; preds = %bb.f, %bb.d
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecIiE8capacityEi.exit.i:               ; preds = %bb.f, %bb.e, %bb.c
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !98  ; 2 uses
  %.not10 = icmp sgt i32 %i.ac, %0
  br i1 %.not10, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5Gluco3vecIiE8capacityEi.exit.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !97
  %i.ae = sext i32 %i.ac to i64                   ; 2 uses
end_hunk_0
