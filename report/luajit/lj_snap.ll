Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_snap?download=true
inline.NumInlined: 26
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lj_snap_shrink:bb.a
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = call fastcc i32 @snap_usedef(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.x, i32 noundef %i.r) ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.r
  br i1 %i.z, label %bb.b, label %snap_useuv.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 61
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !58
  %i.ae = and i8 %i.ad, 1
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %snap_useuv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !59 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %.not25.i = icmp eq i32 %i.ag, 0
  br i1 %.not25.i, label %snap_useuv.exit, label %.lr.ph24.preheader.i

.lr.ph24.preheader.i:                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.loopexit.i, %.lr.ph24.preheader.i
  %.023.pn.i = phi ptr [ %.023.i, %.loopexit.i ], [ %i.ak, %.lr.ph24.preheader.i ]
  %.01722.i = phi i64 [ %i.ct, %.loopexit.i ], [ 0, %.lr.ph24.preheader.i ]
  %.023.i = getelementptr inbounds i8, ptr %.023.pn.i, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.023.i, align 8, !tbaa !61
  %i.am = inttoptr i64 %i.al to ptr               ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !40
  %i.ap = icmp eq i8 %i.ao, 7
  br i1 %i.ap, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph24.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 60
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !40  ; 3 uses
  %.not26.i = icmp eq i8 %i.ar, 0
  br i1 %.not26.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.pre27.i = load i64, ptr %i.as, align 8, !tbaa !40
  %i.at = inttoptr i64 %.pre27.i to ptr           ; 2 uses
  %i.au = zext i8 %i.ar to i64                    ; 3 uses
  %min.iters.check = icmp ult i8 %i.ar, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.au, 248                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue88, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue88 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index
  %i.aw = load <8 x i16>, ptr %i.av, align 2, !tbaa !45 ; 9 uses
  %i.ax = icmp slt <8 x i16> %i.aw, zeroinitializer ; 8 uses
  %i.ay = extractelement <8 x i1> %i.ax, i64 0
  br i1 %i.ay, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.az = extractelement <8 x i16> %i.aw, i64 0
  %i.ba = and i16 %i.az, 255
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  store i8 0, ptr %i.bc, align 1, !tbaa !40
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bd = extractelement <8 x i1> %i.ax, i64 1
  br i1 %i.bd, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue
  %i.be = extractelement <8 x i16> %i.aw, i64 1
  %i.bf = and i16 %i.be, 255
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  store i8 0, ptr %i.bh, align 1, !tbaa !40
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue
  %i.bi = extractelement <8 x i1> %i.ax, i64 2
  br i1 %i.bi, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  %i.bj = extractelement <8 x i16> %i.aw, i64 2
  %i.bk = and i16 %i.bj, 255
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  store i8 0, ptr %i.bm, align 1, !tbaa !40
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.bn = extractelement <8 x i1> %i.ax, i64 3
  br i1 %i.bn, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  %i.bo = extractelement <8 x i16> %i.aw, i64 3
  %i.bp = and i16 %i.bo, 255
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  store i8 0, ptr %i.br, align 1, !tbaa !40
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.bs = extractelement <8 x i1> %i.ax, i64 4
  br i1 %i.bs, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  %i.bt = extractelement <8 x i16> %i.aw, i64 4
  %i.bu = and i16 %i.bt, 255
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  store i8 0, ptr %i.bw, align 1, !tbaa !40
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.bx = extractelement <8 x i1> %i.ax, i64 5
  br i1 %i.bx, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.by = extractelement <8 x i16> %i.aw, i64 5
  %i.bz = and i16 %i.by, 255
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  store i8 0, ptr %i.cb, align 1, !tbaa !40
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.cc = extractelement <8 x i1> %i.ax, i64 6
  br i1 %i.cc, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  %i.cd = extractelement <8 x i16> %i.aw, i64 6
  %i.ce = and i16 %i.cd, 255
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  store i8 0, ptr %i.cg, align 1, !tbaa !40
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.ch = extractelement <8 x i1> %i.ax, i64 7
  br i1 %i.ch, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  %i.ci = extractelement <8 x i16> %i.aw, i64 7
  %i.cj = and i16 %i.ci, 255
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  store i8 0, ptr %i.cl, align 1, !tbaa !40
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %pred.store.continue88
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01620.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.e
  %.01620.i = phi i64 [ %i.cs, %bb.e ], [ %.01620.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %.01620.i
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !45 ; 2 uses
  %.not18.i = icmp sgt i16 %i.co, -1
  br i1 %.not18.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  %i.cp = and i16 %i.co, 255
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  store i8 0, ptr %i.cr, align 1, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %scalar.ph
  %i.cs = add nuw nsw i64 %.01620.i, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.au
  br i1 %exitcond.not, label %.loopexit.i, label %scalar.ph, !llvm.loop !123

.loopexit.i:                                      ; preds = %bb.e, %middle.block, %.preheader.i, %.lr.ph24.i
  %i.ct = add nuw nsw i64 %.01722.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ct, %i.ah
  br i1 %exitcond.not.i, label %snap_useuv.exit, label %.lr.ph24.i, !llvm.loop !0

snap_useuv.exit:                                  ; preds = %.loopexit.i, %bb.c, %bb.b, %bb.a
  %i.cu = add i32 %i.t, %i.r                      ; 2 uses
  %i.cv = add i32 %i.y, %i.t
  %i.cw = trunc i32 %i.cu to i8
  %i.cx = getelementptr i8, ptr %i.g, i64 -4
  store i8 %i.cw, ptr %i.cx, align 4, !tbaa !56
  %.not60 = icmp eq i8 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %snap_useuv.exit
  %wide.trip.count = zext i8 %i.o to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.051 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.i ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !12 ; 2 uses
  %i.da = lshr i32 %i.cz, 24                      ; 3 uses
  %i.db = icmp ult i32 %i.da, %i.cv
  br i1 %i.db, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.dc = icmp ult i32 %i.da, %i.cu
  br i1 %i.dc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dd = sub i32 %i.da, %i.t
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !40
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.di = add i32 %.051, 1
  %i.dj = zext i32 %.051 to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dj
  store i32 %i.cz, ptr %i.dk, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1 = phi i32 [ %i.di, %bb.h ], [ %.051, %bb.g ], [ %.051, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond63.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !124

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load i32, ptr %i.h, align 4, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %snap_useuv.exit
  %1 = phi i32 [ %i.k, %snap_useuv.exit ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %.0.lcssa = phi i32 [ 0, %snap_useuv.exit ], [ %.1, %._crit_edge.loopexit ] ; 9 uses
  %i.dl = trunc i32 %.0.lcssa to i8
  store i8 %i.dl, ptr %i.n, align 2, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !37 ; 3 uses
  %i.do = xor i32 %1, -1
  %i.dp = add i32 %i.dn, %i.do                    ; 2 uses
  %.not53 = icmp ult i32 %i.dp, %i.p
  br i1 %.not53, label %._crit_edge58, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %2 = sub i32 %i.dn, %1
  %i.dq = add nuw nsw i32 %i.p, 1
  %i.dr = tail call i32 @llvm.umax.i32(i32 %2, i32 %i.dq)
  %i.ds = sub i32 %i.dr, %i.p                     ; 3 uses
  %min.iters.check90 = icmp ult i32 %i.ds, 28
  br i1 %min.iters.check90, label %.lr.ph57.preheader101, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph57.preheader
  %3 = sub i32 %i.dn, %1
  %i.dt = add nuw nsw i32 %i.p, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %3, i32 %i.dt)
  %i.du = add i32 %umax, -1                       ; 2 uses
  %i.dv = sub i32 %i.du, %i.p
  %i.dw = xor i32 %.0.lcssa, -1
  %i.dx = icmp ugt i32 %i.dv, %i.dw
  %i.dy = icmp ult i32 %i.du, %i.p
  %i.dz = or i1 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph57.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ea = zext i32 %.0.lcssa to i64
  %i.eb = zext i8 %i.o to i64
  %i.ec = sub nsw i64 %i.ea, %i.eb
  %i.ed = shl nsw i64 %i.ec, 2
  %i.ee = add nsw i64 %i.ed, -1
  %diff.check = icmp ult i64 %i.ee, 31
  br i1 %diff.check, label %.lr.ph57.preheader101, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck
  %n.vec92 = and i32 %i.ds, -8                    ; 4 uses
  %i.ef = add i32 %.0.lcssa, %n.vec92             ; 2 uses
  %i.eg = add i32 %n.vec92, %i.p
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i32 [ 0, %vector.ph91 ], [ %index.next96, %vector.body93 ] ; 3 uses
  %i.eh = add i32 %.0.lcssa, %index94
  %i.ei = add i32 %index94, %i.p
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load = load <4 x i32>, ptr %i.ek, align 4, !tbaa !12
  %wide.load95 = load <4 x i32>, ptr %i.el, align 4, !tbaa !12
  %i.em = zext i32 %i.eh to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x i32> %wide.load, ptr %i.en, align 4, !tbaa !12
  store <4 x i32> %wide.load95, ptr %i.eo, align 4, !tbaa !12
  %index.next96 = add nuw i32 %index94, 8         ; 2 uses
  %i.ep = icmp eq i32 %index.next96, %n.vec92
  br i1 %i.ep, label %middle.block97, label %vector.body93, !llvm.loop !125

middle.block97:                                   ; preds = %vector.body93
  %cmp.n98 = icmp eq i32 %i.ds, %n.vec92
  br i1 %cmp.n98, label %._crit_edge58.loopexit, label %.lr.ph57.preheader101

.lr.ph57.preheader101:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph57.preheader, %middle.block97
  %.255.ph = phi i32 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %vector.scevcheck ], [ %.0.lcssa, %.lr.ph57.preheader ], [ %i.ef, %middle.block97 ]
  %.14854.ph = phi i32 [ %i.p, %vector.memcheck ], [ %i.p, %vector.scevcheck ], [ %i.p, %.lr.ph57.preheader ], [ %i.eg, %middle.block97 ]
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader101, %.lr.ph57
  %.255 = phi i32 [ %i.eu, %.lr.ph57 ], [ %.255.ph, %.lr.ph57.preheader101 ] ; 2 uses
  %.14854 = phi i32 [ %i.eq, %.lr.ph57 ], [ %.14854.ph, %.lr.ph57.preheader101 ] ; 2 uses
  %i.eq = add i32 %.14854, 1                      ; 2 uses
  %i.er = zext i32 %.14854 to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !12
  %i.eu = add i32 %.255, 1                        ; 2 uses
  %i.ev = zext i32 %.255 to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ev
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !12
  %.not = icmp ugt i32 %i.eq, %i.dp
  br i1 %.not, label %._crit_edge58.loopexit, label %.lr.ph57, !llvm.loop !126

._crit_edge58.loopexit:                           ; preds = %.lr.ph57, %middle.block97
  %.lcssa = phi i32 [ %i.ef, %middle.block97 ], [ %i.eu, %.lr.ph57 ]
  %.pre64 = load i32, ptr %i.h, align 4, !tbaa !41
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge58.loopexit, %._crit_edge
  %i.ex = phi i32 [ %1, %._crit_edge ], [ %.pre64, %._crit_edge58.loopexit ]
  %.2.lcssa = phi i32 [ %.0.lcssa, %._crit_edge ], [ %.lcssa, %._crit_edge58.loopexit ]
  %i.ey = add i32 %i.ex, %.2.lcssa
  store i32 %i.ey, ptr %i.dm, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @lj_snap_regspmap(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(ret: address, provenance) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = load i32, ptr %i.d, align 4, !tbaa !41
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %.val = load i32, ptr %i.j, align 4, !tbaa !67
  %i.k = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %.val34 = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.l = add i32 %.val, -1
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val34, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !40
  %i.q = icmp eq i8 %i.p, 20
  br i1 %i.q, label %.lr.ph.i, label %snap_renamefilter.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.02.i = phi ptr [ %i.z, %bb.c ], [ %i.n, %bb.a ] ; 4 uses
  %.081.i = phi i64 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02.i, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !40
  %i.t = zext i16 %i.s to i32
  %.not.i = icmp ult i32 %2, %i.t
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = load i16, ptr %.02.i, align 8, !tbaa !40
  %i.v = and i16 %i.u, 63
  %i.w = zext nneg i16 %i.v to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = or i64 %i.x, %.081.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i64 [ %i.y, %bb.b ], [ %.081.i, %.lr.ph.i ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.02.i, i64 -8
  %i.aa = getelementptr inbounds i8, ptr %.02.i, i64 -3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !40
  %i.ac = icmp eq i8 %i.ab, 20
  br i1 %i.ac, label %.lr.ph.i, label %snap_renamefilter.exit, !llvm.loop !1

snap_renamefilter.exit:                           ; preds = %bb.c, %bb.a
  %.08.lcssa.i = phi i64 [ 0, %bb.a ], [ %.1.i, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %snap_renameref.exit, %snap_renamefilter.exit
  %.031 = phi ptr [ %3, %snap_renamefilter.exit ], [ %i.bv, %snap_renameref.exit ] ; 7 uses
  %.030 = phi i32 [ 0, %snap_renamefilter.exit ], [ %.2, %snap_renameref.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.031, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !40
  switch i8 %i.ae, label %bb.n [
    i8 71, label %bb.e
    i8 14, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !40
  %i.ah = and i16 %i.ag, 1
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ai = load i16, ptr %.031, align 8, !tbaa !40
  %i.aj = zext i16 %i.ai to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader
  %.1 = phi i32 [ %i.ap, %bb.f ], [ %.030, %.preheader ] ; 2 uses
  %i.ak = zext i32 %.1 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12 ; 2 uses
  %i.an = lshr i32 %i.am, 24
  %i.ao = icmp eq i32 %i.an, %i.aj
  %i.ap = add i32 %.1, 1                          ; 2 uses
  br i1 %i.ao, label %bb.g, label %bb.f

bb.g:                                             ; preds = %bb.f
  %i.aq = and i32 %i.am, 65535
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ar = load i16, ptr %.031, align 8, !tbaa !40
  %i.as = zext i16 %i.ar to i32
  %i.at = add nuw nsw i32 %i.as, 32768
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %i.ap, %bb.g ], [ %.030, %bb.h ]
  %.029 = phi i32 [ %i.aq, %bb.g ], [ %i.at, %bb.h ] ; 2 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !68  ; 2 uses
  %i.av = zext nneg i32 %.029 to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !40 ; 3 uses
  %i.az = and i64 %i.av, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ba, %.08.lcssa.i
  %.not33 = icmp eq i64 %i.bb, 0
  br i1 %.not33, label %snap_renameref.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val35 = load i32, ptr %i.j, align 4, !tbaa !67
  %i.bc = add i32 %.val35, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !40
  %i.bh = icmp eq i8 %i.bg, 20
  br i1 %i.bh, label %.lr.ph.i37, label %snap_renameref.exit

.lr.ph.i37:                                       ; preds = %bb.j, %bb.m
  %.02.i38 = phi ptr [ %i.bq, %bb.m ], [ %i.be, %bb.j ] ; 5 uses
  %.091.i = phi i16 [ %.1.i39, %bb.m ], [ %i.ay, %bb.j ] ; 2 uses
  %i.bi = load i16, ptr %.02.i38, align 8, !tbaa !40
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp eq i32 %.029, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i37
  %i.bl = getelementptr inbounds nuw i8, ptr %.02.i38, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !40
  %i.bn = zext i16 %i.bm to i32
  %.not.i40 = icmp ult i32 %2, %i.bn
  br i1 %.not.i40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.02.i38, i64 6
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i37
  %.1.i39 = phi i16 [ %i.bp, %bb.l ], [ %.091.i, %bb.k ], [ %.091.i, %.lr.ph.i37 ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.02.i38, i64 -8
  %i.br = getelementptr inbounds i8, ptr %.02.i38, i64 -3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !40
  %i.bt = icmp eq i8 %i.bs, 20
  br i1 %i.bt, label %.lr.ph.i37, label %snap_renameref.exit, !llvm.loop !2

snap_renameref.exit:                              ; preds = %bb.m, %bb.j, %bb.i
  %.028 = phi i16 [ %i.ay, %bb.i ], [ %i.ay, %bb.j ], [ %.1.i39, %bb.m ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.031, i64 6
  store i16 %.028, ptr %i.bu, align 2, !tbaa !40
  %i.bv = getelementptr inbounds nuw i8, ptr %.031, i64 8
  br label %bb.d

bb.n:                                             ; preds = %bb.e, %bb.d
  ret ptr %.031
}

; Function Attrs: nounwind uwtable
define hidden void @lj_snap_replay(ptr noundef initializes((252, 256)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3020
  %i.d = load i32, ptr %i.c, align 4, !tbaa !69
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = load i32, ptr %i.f, align 4, !tbaa !41
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.m = load i8, ptr %i.l, align 2, !tbaa !51    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  store i32 0, ptr %i.n, align 4, !tbaa !133
  %.not493.not = icmp eq i8 %i.m, 0
  br i1 %.not493.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.trip.count = zext i8 %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.0267472 = phi i32 [ 0, %.lr.ph ], [ %.1268, %bb.l ] ; 4 uses
  %.0272471 = phi i64 [ 0, %.lr.ph ], [ %.1273, %bb.l ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12   ; 7 uses
  %i.w = lshr i32 %i.v, 24                        ; 5 uses
end_hunk_0
