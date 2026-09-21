Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1403
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4llvm5APInt8getSplatEjRKS0_:bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.co = phi ptr [ %i.dj, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.cp = phi i64 [ %i.dh, %.lr.ph.i ], [ %.unr29, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cq = load i64, ptr %gep.i, align 8, !tbaa !26
  %i.cr = lshr i64 %i.cq, %i.bn
  %i.cs = or i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %i.co, align 8, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.ct = sub nuw i32 %indvars.i, %.sroa.speculated.i.i
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !26
  %i.cx = shl i64 %i.cw, %i.bl                    ; 2 uses
  %i.cy = and i64 %indvars.iv.next.i, 4294967295
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cy ; 2 uses
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !26
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.da = load i64, ptr %gep.i.1, align 8, !tbaa !26
  %i.db = lshr i64 %i.da, %i.bn
  %i.dc = or i64 %i.db, %i.cx
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !26
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.dd = sub nuw i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !26
  %i.dh = shl i64 %i.dg, %i.bl                    ; 2 uses
  %i.di = and i64 %indvars.iv.next.i.1, 4294967295
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.di ; 2 uses
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !26
  %i.dk = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.dk, label %.lr.ph.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e, %.lr.ph.i.i8, %.preheader.i.i
  %i.dl = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.dm = zext nneg i32 %i.dl to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bg, i8 0, i64 %i.dm, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %.loopexit.i.i
  %i.dn = getelementptr [8 x i8], ptr %i.bg, i64 %i.ap ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 -8     ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !26
  %i.dq = and i64 %i.dp, %i.au
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !26
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.f
  %bound0 = icmp ult ptr %i.ah, %i.dn
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load = load <2 x i64>, ptr %i.dr, align 8, !tbaa !26, !alias.scope !135
  %wide.load26 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !26, !alias.scope !135
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load27 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !26, !alias.scope !136, !noalias !135
  %wide.load28 = load <2 x i64>, ptr %i.du, align 8, !tbaa !26, !alias.scope !136, !noalias !135
  %i.dv = or <2 x i64> %wide.load27, %wide.load
  %i.dw = or <2 x i64> %wide.load28, %wide.load26
  store <2 x i64> %i.dv, ptr %i.dt, align 8, !tbaa !26, !alias.scope !136, !noalias !135
  store <2 x i64> %i.dw, ptr %i.du, align 8, !tbaa !26, !alias.scope !136, !noalias !135
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.f, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.f ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi i64 [ %i.ed, %.lr.ph.i.i.prol ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.09.i.i.prol
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.09.i.i.prol ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !26
  %i.ec = or i64 %i.eb, %i.dz
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !26
  %i.ed = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter30
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !131

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.prol ]
  %i.ee = sub nsw i64 %.09.i.i.ph, %i.ap
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.fd, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.09.i.i
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.09.i.i ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !26
  %i.ek = or i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !26
  %i.el = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.el ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !26
  %i.eq = or i64 %i.ep, %i.en
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !26
  %i.er = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !26
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.er ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !26
  %i.ew = or i64 %i.ev, %i.et
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !26
  %i.ex = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !26
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ex ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !26
  %i.fc = or i64 %i.fb, %i.ez
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !26
  %i.fd = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.fd, %i.ap
  br i1 %.not.i.i.3, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !132

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #22
  %i.fe = shl i32 %.020, 1                        ; 2 uses
  %i.ff = icmp ult i32 %i.fe, %1
  br i1 %i.ff, label %.lr.ph.split, label %._crit_edge, !llvm.loop !122

._crit_edge:                                      ; preds = %_ZN4llvm5APIntD2Ev.exit, %._crit_edge.split.us, %_ZNK4llvm5APInt4zextEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not21 = icmp eq i64 %i.e, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !24
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01320.in = phi i32 [ %i.f, %.lr.ph ], [ %.01320, %bb.c ] ; 2 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.c ] ; 2 uses
  %.01320 = add nsw i32 %.01320.in, -1            ; 2 uses
  %i.i = zext nneg i32 %.01320 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = or disjoint i32 %.019, %i.n
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %.019, 64
  %i.q = icmp samesign ugt i32 %.01320.in, 1
  br i1 %i.q, label %bb.b, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %bb.c, %bb.a, %.thread
  %.2 = phi i32 [ %i.o, %.thread ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  %i.r = and i32 %i.b, 63
  %.not = icmp eq i32 %i.r, 0
  %.neg = or i32 %i.b, -64
  %.neg15 = select i1 %.not, i32 0, i32 %.neg
  %i.s = add i32 %.2, %.neg15
  ret i32 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = and i32 %i.b, 63                         ; 3 uses
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = sub nuw nsw i32 64, %i.c
  %.016 = select i1 %.not, i32 64, i32 %i.c       ; 3 uses
  %narrow = select i1 %.not, i32 0, i32 %i.d
  %.015 = zext nneg i32 %narrow to i64
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.g
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26
  %i.l = shl i64 %i.k, %.015
  %i.m = xor i64 %i.l, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 false)
  %i.o = trunc nuw nsw i64 %i.n to i32            ; 2 uses
  %i.p = icmp eq i32 %.016, %i.o
  %i.q = icmp ugt i32 %i.b, 64
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.r = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  %1 = add nsw i32 %i.r, -2
  %2 = shl i32 %i.r, 6
  %3 = add i32 %2, %.016
  %i.s = add i32 %3, -64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.023 = phi i32 [ %i.x, %bb.b ], [ %.016, %.lr.ph.preheader ] ; 2 uses
  %.01422 = phi i32 [ %i.y, %bb.b ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.t = zext nneg i32 %.01422 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.x = add i32 %.023, 64
  %i.y = add nsw i32 %.01422, -1
  %i.z = icmp sgt i32 %.01422, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !11

bb.c:                                             ; preds = %.lr.ph
  %i.aa = xor i64 %i.v, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = add i32 %.023, %i.ac
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i32 [ %i.ad, %bb.c ], [ %i.o, %bb.a ], [ %i.s, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = load ptr, ptr %0, align 8, !tbaa !24
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01014 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.01014, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !2

bb.d:                                             ; preds = %bb.b
  %i.m = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.j, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = or disjoint i32 %.01014, %i.n
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %.1)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = load ptr, ptr %0, align 8, !tbaa !24
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.0811 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.0811, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !12

bb.d:                                             ; preds = %bb.b
  %i.m = xor i64 %i.j, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.m, i1 true)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = or disjoint i32 %.0811, %i.o
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 4 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi9 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !26
  %wide.load10 = load <2 x i64>, ptr %i.h, align 8, !tbaa !26
  %i.i = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.j = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load10)
  %i.k = trunc nuw nsw <2 x i64> %i.i to <2 x i32>
  %i.l = trunc nuw nsw <2 x i64> %i.j to <2 x i32>
  %i.m = add <2 x i32> %vec.phi, %i.k             ; 2 uses
  %i.n = add <2 x i32> %vec.phi9, %i.l            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.056.ph = phi i32 [ 0, %.lr.ph ], [ %i.p, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %middle.block ], [ %i.u, %scalar.ph ]
  ret i32 %.05.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.056 = phi i32 [ %i.u, %scalar.ph ], [ %.056.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.r)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = add i32 %.056, %i.t                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not15 = icmp eq i64 %i.e, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.l, 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0916 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.b ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.i)
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %.0916, %i.k             ; 3 uses
  %i.m = icmp samesign ugt i32 %i.l, 1
  br i1 %i.m, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge.loopexit
  %.1 = phi i1 [ %i.g, %._crit_edge.loopexit ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm5APInt18intersectsSlowCaseERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
end_hunk_0
begin_hunk_1_@_ZNK4llvm5APInt7umul_ovERKS0_Rb:bb.a
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !26 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.hb, %i.hd
  br i1 %.not13.i.i.i, label %bb.m, label %_ZNK4llvm5APInt3ultERKS0_.exit, !llvm.loop !8

_ZNK4llvm5APInt3ultERKS0_.exit:                   ; preds = %bb.n
  %.not35 = icmp ugt i64 %i.hb, %i.hd
  br i1 %.not35, label %_ZNK4llvm5APInt3ultERKS0_.exit.thread, label %bb.o

bb.o:                                             ; preds = %.split, %_ZNK4llvm5APInt3ultERKS0_.exit
  store i8 1, ptr %3, align 1, !tbaa !44
  br label %_ZNK4llvm5APInt3ultERKS0_.exit.thread

_ZNK4llvm5APInt3ultERKS0_.exit.thread:            ; preds = %bb.m, %.split, %_ZN4llvm5APIntlSEj.exit, %bb.o, %_ZNK4llvm5APInt3ultERKS0_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt7sshl_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %2, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvm5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !1

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !24
  br label %_ZNK4llvm5APInt3ugtEm.exit.i

_ZNK4llvm5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %2, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !24
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvm5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  tail call void @_ZNK4llvm5APInt7sshl_ovEjRb(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt7sshl_ovEjRb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 18 uses
  %i.c = icmp uge i32 %2, %i.b                    ; 2 uses
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %3, align 1, !tbaa !44
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !23
  %i.f = icmp ult i32 %i.b, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.d:                                             ; preds = %bb.b
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.k, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.e:                                             ; preds = %bb.a
  %i.l = add i32 %i.b, -1                         ; 2 uses
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  %i.p = icmp ult i32 %i.b, 65                    ; 4 uses
  %i.q = load ptr, ptr %1, align 8                ; 5 uses
  %i.r = lshr i32 %i.l, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %.in.i.i.i.i = select i1 %i.p, ptr %1, ptr %i.t
  %i.u = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !24
  %i.v = and i64 %i.u, %i.o
  %.not.i = icmp eq i64 %i.v, 0
  %i.w = ptrtoint ptr %i.q to i64                 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.f
  %.neg.i = add nsw i32 %i.b, -64
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 false)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = add nsw i32 %.neg.i, %i.y
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.aa = zext i32 %i.b to i64
  %i.ab = add nuw nsw i64 %i.aa, 63
  %i.ac = lshr i64 %i.ab, 6                       ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = shl i32 %i.ad, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.al, %bb.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.h
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = or disjoint i32 %.019.i.i, %i.aj
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.al = add i32 %.019.i.i, 64
  %i.am = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.am, label %bb.h, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i: ; preds = %bb.i, %.thread.i.i
  %.2.i.i = phi i32 [ %i.ak, %.thread.i.i ], [ %i.ae, %bb.i ]
  %i.an = and i32 %i.b, 63
  %.not.i.i = icmp eq i32 %i.an, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.ao = add i32 %.2.i.i, %.neg15.i.i
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

bb.j:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = sub nuw nsw i32 64, %i.b
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.w, %i.aq
  %i.as = xor i64 %i.ar, -1
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 false)
  %i.au = trunc nuw nsw i64 %i.at to i32
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.av = and i32 %i.b, 63                        ; 3 uses
  %.not.i.i8 = icmp eq i32 %i.av, 0               ; 2 uses
  %i.aw = sub nuw nsw i32 64, %i.av
  %.016.i.i = select i1 %.not.i.i8, i32 64, i32 %i.av ; 3 uses
  %narrow.i.i = select i1 %.not.i.i8, i32 0, i32 %i.aw
  %.015.i.i = zext nneg i32 %narrow.i.i to i64
  %i.ax = zext i32 %i.b to i64
  %i.ay = add nuw nsw i64 %i.ax, 63               ; 2 uses
  %i.az = lshr i64 %i.ay, 6                       ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.q, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26
  %i.bd = shl i64 %i.bc, %.015.i.i
  %i.be = xor i64 %i.bd, -1
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i32          ; 2 uses
  %i.bh = icmp eq i32 %.016.i.i, %i.bg
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %_ZNK4llvm5APInt11countl_zeroEv.exit.thread14

_ZNK4llvm5APInt11countl_zeroEv.exit.thread14:     ; preds = %bb.l
  %storemerge.in16 = icmp uge i32 %2, %i.bg
  %storemerge17 = zext i1 %storemerge.in16 to i8
  store i8 %storemerge17, ptr %3, align 1, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bi, align 8, !tbaa !23, !alias.scope !423
  br label %bb.o

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.bj = trunc nuw nsw i64 %i.az to i32          ; 2 uses
  %4 = add nsw i32 %i.bj, -2
  %5 = shl i32 %i.bj, 6
  %6 = add nsw i32 %.016.i.i, -64
  %i.bk = add i32 %6, %5
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.023.i.i = phi i32 [ %i.bp, %bb.m ], [ %.016.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01422.i.i = phi i32 [ %i.bq, %bb.m ], [ %4, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bl = zext nneg i32 %.01422.i.i to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !26 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i10
  %i.bp = add i32 %.023.i.i, 64
  %i.bq = add nsw i32 %.01422.i.i, -1
  %i.br = icmp sgt i32 %.01422.i.i, 0
  br i1 %i.br, label %.lr.ph.i.i10, label %_ZNK4llvm5APInt11countl_zeroEv.exit, !llvm.loop !11

bb.n:                                             ; preds = %.lr.ph.i.i10
  %i.bs = xor i64 %i.bn, -1
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = add i32 %.023.i.i, %i.bu
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

_ZNK4llvm5APInt11countl_zeroEv.exit.thread:       ; preds = %bb.k, %bb.g
  %.pn.ph = phi i32 [ %i.au, %bb.k ], [ %i.z, %bb.g ]
  %storemerge.in12 = icmp uge i32 %2, %.pn.ph
  %storemerge13 = zext i1 %storemerge.in12 to i8
  store i8 %storemerge13, ptr %3, align 1, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bw, align 8, !tbaa !23, !alias.scope !424
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i

_ZNK4llvm5APInt11countl_zeroEv.exit:              ; preds = %bb.m, %bb.n, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i
  %.pn = phi i32 [ %i.ao, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i ], [ %i.bv, %bb.n ], [ %i.bk, %bb.m ]
  %storemerge.in = icmp uge i32 %2, %.pn
  %storemerge = zext i1 %storemerge.in to i8
  store i8 %storemerge, ptr %3, align 1, !tbaa !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bx, align 8, !tbaa !23, !alias.scope !427
  br i1 %i.p, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZNK4llvm5APInt11countl_zeroEv.exit._crit_edge

_ZNK4llvm5APInt11countl_zeroEv.exit._crit_edge:   ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit
  %.pre = zext i32 %i.b to i64
  %.pre30 = add nuw nsw i64 %.pre, 63
  br label %bb.o

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit.thread, %_ZNK4llvm5APInt11countl_zeroEv.exit
  %i.by = load i64, ptr %1, align 8, !tbaa !24, !noalias !427
  %i.bz = zext nneg i32 %2 to i64
  %i.ca = shl i64 %i.by, %i.bz
  %i.cb = sub nsw i32 0, %i.b
  %i.cc = and i32 %i.cb, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = lshr i64 -1, %i.cd
  %i.cf = and i64 %i.ca, %i.ce
  store i64 %i.cf, ptr %0, align 8, !tbaa !24, !alias.scope !427
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.o:                                             ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit._crit_edge, %_ZNK4llvm5APInt11countl_zeroEv.exit.thread14
  %.pre-phi31 = phi i64 [ %.pre30, %_ZNK4llvm5APInt11countl_zeroEv.exit._crit_edge ], [ %i.ay, %_ZNK4llvm5APInt11countl_zeroEv.exit.thread14 ]
  %i.cg = lshr i64 %.pre-phi31, 3
  %i.ch = and i64 %i.cg, 1073741816               ; 2 uses
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ch) #21, !noalias !427 ; 2 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !24, !alias.scope !427
  %i.cj = load ptr, ptr %1, align 8, !tbaa !24, !noalias !427
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.cj, i64 %i.ch, i1 false), !noalias !427
  tail call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %2)
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.o, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt7ushl_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %2, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvm5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !1

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !24
  br label %_ZNK4llvm5APInt3ugtEm.exit.i

_ZNK4llvm5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %2, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !24
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvm5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  tail call void @_ZNK4llvm5APInt7ushl_ovEjRb(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt7ushl_ovEjRb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 12 uses
  %i.c = icmp uge i32 %2, %i.b                    ; 2 uses
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %3, align 1, !tbaa !44
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !23
  %i.f = icmp ult i32 %i.b, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.d:                                             ; preds = %bb.b
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.k, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.e:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %i.b, 65
  br i1 %i.l, label %_ZNK4llvm5APInt11countl_zeroEv.exit.thread, label %.lr.ph.i.i

_ZNK4llvm5APInt11countl_zeroEv.exit.thread:       ; preds = %bb.e
  %.neg.i = add nsw i32 %i.b, -64
  %i.m = load i64, ptr %1, align 8, !tbaa !24
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 false)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = add nsw i32 %.neg.i, %i.o
  %i.q = icmp ugt i32 %2, %i.p
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %3, align 1, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.s, align 8, !tbaa !23, !alias.scope !434
  %i.t = load i64, ptr %1, align 8, !tbaa !24, !noalias !435
  %i.u = zext nneg i32 %2 to i64
  %i.v = shl i64 %i.t, %i.u
  %i.w = sub nsw i32 0, %i.b
  %i.x = and i32 %i.w, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 -1, %i.y
  %i.aa = and i64 %i.v, %i.z
  store i64 %i.aa, ptr %0, align 8, !tbaa !24, !alias.scope !435
  br label %_ZN4llvm5APIntC2Ejmbb.exit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ab = zext i32 %i.b to i64
  %i.ac = add nuw nsw i64 %i.ab, 63               ; 2 uses
  %i.ad = lshr i64 %i.ac, 6                       ; 2 uses
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = load ptr, ptr %1, align 8, !tbaa !24
  %i.ag = shl i32 %i.ae, 6
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ %i.ad, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.an, %bb.g ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = or disjoint i32 %.019.i.i, %i.al
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

bb.g:                                             ; preds = %bb.f
  %i.an = add i32 %.019.i.i, 64
  %i.ao = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ao, label %bb.f, label %_ZNK4llvm5APInt11countl_zeroEv.exit, !llvm.loop !1

end_hunk_1
begin_hunk_2_@_ZN4llvm8APIntOps4pdepERKNS_5APIntES3_:bb.a

bb.h:                                             ; preds = %_ZN4llvm5APInt9setBitValEjb.exit.us21, %.lr.ph.split.split.us
  %.016.us17 = phi i32 [ 0, %.lr.ph.split.split.us ], [ %.1.us22, %_ZN4llvm5APInt9setBitValEjb.exit.us21 ] ; 4 uses
  %.01015.us18 = phi i32 [ 0, %.lr.ph.split.split.us ], [ %i.cf, %_ZN4llvm5APInt9setBitValEjb.exit.us21 ] ; 3 uses
  %i.bg = and i32 %.01015.us18, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh                    ; 3 uses
  %i.bj = lshr i32 %.01015.us18, 6
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = and i64 %.pre, %i.bi
  %.not12.us24 = icmp eq i64 %i.bl, 0
  br i1 %.not12.us24, label %_ZN4llvm5APInt9setBitValEjb.exit.us21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = add i32 %.016.us17, 1                   ; 2 uses
  %i.bn = and i32 %.016.us17, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !23
  %i.br = icmp ult i32 %i.bq, 65
  %i.bs = load ptr, ptr %1, align 8
  %i.bt = lshr i32 %.016.us17, 6
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu
  %.in.i.i11.us19 = select i1 %i.br, ptr %1, ptr %i.bv
  %i.bw = load i64, ptr %.in.i.i11.us19, align 8, !tbaa !24
  %i.bx = and i64 %i.bw, %i.bp
  %.not13.us20 = icmp eq i64 %i.bx, 0
  br i1 %.not13.us20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bk ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26
  %i.ca = or i64 %i.bz, %i.bi
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !26
  br label %_ZN4llvm5APInt9setBitValEjb.exit.us21

bb.k:                                             ; preds = %bb.i
  %i.cb = xor i64 %i.bi, -1
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bk ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.ce = and i64 %i.cd, %i.cb
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !26
  br label %_ZN4llvm5APInt9setBitValEjb.exit.us21

_ZN4llvm5APInt9setBitValEjb.exit.us21:            ; preds = %bb.h, %bb.k, %bb.j
  %.1.us22 = phi i32 [ %.016.us17, %bb.h ], [ %i.bm, %bb.k ], [ %i.bm, %bb.j ]
  %i.cf = add nuw i32 %.01015.us18, 1             ; 2 uses
  %.not.us23 = icmp eq i32 %i.cf, %i.b
  br i1 %.not.us23, label %._crit_edge, label %bb.h, !llvm.loop !897

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_ZN4llvm5APInt9setBitValEjb.exit
  %.016 = phi i32 [ %.1, %_ZN4llvm5APInt9setBitValEjb.exit ], [ 0, %.lr.ph.split.split.preheader ] ; 4 uses
  %.01015 = phi i32 [ %i.dh, %_ZN4llvm5APInt9setBitValEjb.exit ], [ 0, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.cg = and i32 %.01015, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch                    ; 3 uses
  %i.cj = lshr i32 %.01015, 6
  %i.ck = zext nneg i32 %i.cj to i64              ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !24
  %i.cn = and i64 %i.cm, %i.ci
  %.not12 = icmp eq i64 %i.cn, 0
  br i1 %.not12, label %_ZN4llvm5APInt9setBitValEjb.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.co = add i32 %.016, 1                        ; 2 uses
  %i.cp = and i32 %.016, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = load i32, ptr %i.a, align 8, !tbaa !23
  %i.ct = icmp ult i32 %i.cs, 65
  %i.cu = load ptr, ptr %1, align 8
  %i.cv = lshr i32 %.016, 6
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cw
  %.in.i.i11 = select i1 %i.ct, ptr %1, ptr %i.cx
  %i.cy = load i64, ptr %.in.i.i11, align 8, !tbaa !24
  %i.cz = and i64 %i.cy, %i.cr
  %.not13 = icmp eq i64 %i.cz, 0
  br i1 %.not13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ck ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !26
  %i.dc = or i64 %i.db, %i.ci
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !26
  br label %_ZN4llvm5APInt9setBitValEjb.exit

bb.n:                                             ; preds = %bb.l
  %i.dd = xor i64 %i.ci, -1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ck ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !26
  %i.dg = and i64 %i.df, %i.dd
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !26
  br label %_ZN4llvm5APInt9setBitValEjb.exit

_ZN4llvm5APInt9setBitValEjb.exit:                 ; preds = %bb.n, %bb.m, %.lr.ph.split.split
  %.1 = phi i32 [ %.016, %.lr.ph.split.split ], [ %i.co, %bb.n ], [ %i.co, %bb.m ]
  %i.dh = add nuw i32 %.01015, 1                  ; 2 uses
  %.not = icmp eq i32 %i.dh, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !897

._crit_edge:                                      ; preds = %_ZN4llvm5APInt9setBitValEjb.exit, %_ZN4llvm5APInt9setBitValEjb.exit.us21, %._crit_edge.split.us, %_ZN4llvm5APInt7getZeroEj.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !37
  %i.g = load i32, ptr %i.a, align 8, !tbaa !35
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !35
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bitreverse.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm5APInt14getNumSignBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 10 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %0, align 8                ; 5 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %0, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.b, 0
  br i1 %i.o, label %_ZNK4llvm5APInt10countl_oneEv.exit, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i32 64, %i.b
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl i64 %i.n, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = trunc nuw nsw i64 %i.t to i32
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

bb.e:                                             ; preds = %bb.b
  %i.v = and i32 %i.b, 63                         ; 3 uses
  %.not.i.i = icmp eq i32 %i.v, 0                 ; 2 uses
  %i.w = sub nuw nsw i32 64, %i.v
  %.016.i.i = select i1 %.not.i.i, i32 64, i32 %i.v ; 3 uses
  %narrow.i.i = select i1 %.not.i.i, i32 0, i32 %i.w
  %.015.i.i = zext nneg i32 %narrow.i.i to i64
  %i.x = zext i32 %i.b to i64
  %i.y = add nuw nsw i64 %i.x, 63
  %i.z = lshr i64 %i.y, 6                         ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.h, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ad = shl i64 %i.ac, %.015.i.i
  %i.ae = xor i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 false)
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %i.ah = icmp eq i32 %.016.i.i, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNK4llvm5APInt10countl_oneEv.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ai = trunc nuw nsw i64 %i.z to i32           ; 2 uses
  %1 = add nsw i32 %i.ai, -2
  %2 = shl i32 %i.ai, 6
  %3 = add nsw i32 %.016.i.i, -64
  %i.aj = add i32 %3, %2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %.023.i.i = phi i32 [ %i.ao, %bb.f ], [ %.016.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01422.i.i = phi i32 [ %i.ap, %bb.f ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = zext nneg i32 %.01422.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i32 %.023.i.i, 64
  %i.ap = add nsw i32 %.01422.i.i, -1
  %i.aq = icmp sgt i32 %.01422.i.i, 0
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZNK4llvm5APInt10countl_oneEv.exit, !llvm.loop !11

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ar = xor i64 %i.am, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = add i32 %.023.i.i, %i.at
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

bb.h:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.i, label %.lr.ph.i.i1

bb.i:                                             ; preds = %bb.h
  %.neg.i = add nsw i32 %i.b, -64
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = add nsw i32 %.neg.i, %i.aw
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

.lr.ph.i.i1:                                      ; preds = %bb.h
  %i.ay = zext i32 %i.b to i64
  %i.az = add nuw nsw i64 %i.ay, 63
  %i.ba = lshr i64 %i.az, 6                       ; 2 uses
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = shl i32 %i.bb, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i1
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ %i.ba, %.lr.ph.i.i1 ] ; 2 uses
  %.019.i.i = phi i32 [ %i.bj, %bb.k ], [ 0, %.lr.ph.i.i1 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !26 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.k, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.j
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 true)
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = or disjoint i32 %.019.i.i, %i.bh
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bj = add i32 %.019.i.i, 64
  %i.bk = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bk, label %bb.j, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i: ; preds = %bb.k, %.thread.i.i
  %.2.i.i = phi i32 [ %i.bi, %.thread.i.i ], [ %i.bc, %bb.k ]
  %i.bl = and i32 %i.b, 63
  %.not.i.i2 = icmp eq i32 %i.bl, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i2, i32 0, i32 %.neg.i.i
  %i.bm = add i32 %.2.i.i, %.neg15.i.i
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

_ZNK4llvm5APInt10countl_oneEv.exit:               ; preds = %bb.f, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i, %bb.i, %bb.g, %bb.e, %bb.d, %bb.c
  %i.bn = phi i32 [ %i.bm, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i ], [ 0, %bb.c ], [ %i.u, %bb.d ], [ %i.au, %bb.g ], [ %i.ag, %bb.e ], [ %i.ax, %bb.i ], [ %i.aj, %bb.f ]
  ret i32 %i.bn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5APInt3absEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 10 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %1, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext i32 %i.b to i64
  %i.p = add nuw nsw i64 %i.o, 63                 ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816                 ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #21 ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.t, i64 %i.r, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.u = lshr i64 %i.p, 6                         ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.u, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.v, align 8, !tbaa !26, !noalias !903
  %wide.load13 = load <2 x i64>, ptr %i.w, align 8, !tbaa !26, !noalias !903
  %i.x = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.y = xor <2 x i64> %wide.load13, splat (i64 -1)
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !26, !noalias !903
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !26, !noalias !903
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !901

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26, !noalias !903
  %i.ac = xor i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !26, !noalias !903
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.u
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !902

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.ad = ptrtoint ptr %i.s to i64
  %i.ae = sub i32 0, %i.b
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 -1, %i.ag                      ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.s, i64 %i.u
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8     ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26, !noalias !903
  %i.al = and i64 %i.ak, %i.ah
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !26, !noalias !903
  %i.am = load i64, ptr %i.s, align 8, !tbaa !26, !noalias !903
  %i.an = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.an, ptr %i.s, align 8, !tbaa !26, !noalias !903
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26, !noalias !903
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !26, !noalias !903
  %.not.i.i.i.i.i = icmp ne i64 %i.aq, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.u
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !0

_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.b
  %i.ar = xor i64 %i.n, -1
  %i.as = sub nsw i32 0, %i.b
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 -1, %i.au
  %i.aw = icmp eq i32 %i.b, 0
  %spec.select.i.i.i = select i1 %i.aw, i64 0, i64 %i.av ; 2 uses
  %i.ax = and i64 %spec.select.i.i.i, %i.ar
  %i.ay = add i64 %i.ax, 1
  %i.az = and i64 %i.ay, %spec.select.i.i.i
  br label %_ZN4llvm5APIntD2Ev.exit

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !26, !noalias !903
  %i.bb = and i64 %i.ba, %i.ah
  store i64 %i.bb, ptr %i.aj, align 8, !tbaa !26, !noalias !903
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.thread.i.i.i, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i
  %.sroa.0.1 = phi i64 [ %i.az, %_ZN4llvm5APInt11tcIncrementEPmj.exit.thread1.i.i.i ], [ %i.ad, %.thread.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bc, align 8, !tbaa !23, !alias.scope !903
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !903
  br label %_ZN4llvm5APIntC2ERKS0_.exit2

bb.d:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bd, align 8, !tbaa !23
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.n, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2ERKS0_.exit2

bb.f:                                             ; preds = %bb.d
  %i.be = zext i32 %i.b to i64
  %i.bf = add nuw nsw i64 %i.be, 63
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741816               ; 2 uses
  %i.bi = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #21 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !24
  %i.bj = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bj, i64 %i.bh, i1 false)
  br label %_ZN4llvm5APIntC2ERKS0_.exit2

_ZN4llvm5APIntC2ERKS0_.exit2:                     ; preds = %bb.f, %bb.e, %_ZN4llvm5APIntD2Ev.exit
  ret void
}

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 1) #23
  %i.e = load ptr, ptr %0, align 8, !tbaa !50
  %i.f = load i64, ptr %i.a, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !48
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !48
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

end_hunk_2
