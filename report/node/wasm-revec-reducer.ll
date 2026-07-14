inline.NumInlined: 4282
inline.NumDeleted: 1948
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv:bb.a
  %i.p = icmp eq ptr %i.n, %i.e
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv, i32 noundef 1474) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.53) #21
  br label %bb.t

bb.e:                                             ; preds = %bb.b, %._crit_edge
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.54) #21
  %i.z = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not46 = icmp eq ptr %i.z, %i.aa
  br i1 %.not46, label %._crit_edge50, label %.lr.ph49

._crit_edge50:                                    ; preds = %.lr.ph49, %bb.f
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.58) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not3051 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not3051, label %.loopexit, label %.lr.ph54

.lr.ph49:                                         ; preds = %bb.f, %.lr.ph49
  %.047 = phi ptr [ %i.av, %.lr.ph49 ], [ %i.z, %bb.f ] ; 2 uses
  %i.af = load i64, ptr %.047, align 4            ; 4 uses
  %.sroa.037.0.extract.trunc = trunc i64 %i.af to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.af, 32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55) #21
  %i.ag = lshr i32 %.sroa.037.0.extract.trunc, 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.ag) #21
  %i.ah = load ptr, ptr %i.b, align 8, !nonnull !13, !align !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.af, 4294967295
  %i.am = add i64 %i.al, %i.ak
  %i.an = inttoptr i64 %i.am to ptr
  tail call void @_ZNK2v88internal8compiler10turboshaft9Operation5PrintEv(ptr noundef nonnull align 4 dereferenceable(4) %i.an) #21
  %sum.shift = lshr i64 %i.af, 36
  %i.ao = trunc nuw nsw i64 %sum.shift to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.ao) #21
  %i.ap = load ptr, ptr %i.b, align 8, !nonnull !13, !align !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = add i64 %.sroa.5.0.extract.shift, %i.as
  %i.au = inttoptr i64 %i.at to ptr
  tail call void @_ZNK2v88internal8compiler10turboshaft9Operation5PrintEv(ptr noundef nonnull align 4 dereferenceable(4) %i.au) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57) #21
  %i.av = getelementptr inbounds nuw i8, ptr %.047, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.aa
  br i1 %.not, label %._crit_edge50, label %.lr.ph49

.lr.ph54:                                         ; preds = %._crit_edge50, %.lr.ph54
  %.02752 = phi ptr [ %i.az, %.lr.ph54 ], [ %i.ac, %._crit_edge50 ] ; 2 uses
  %i.aw = load i64, ptr %.02752, align 4          ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.aw to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.59) #21
  %i.ax = lshr i32 %.sroa.0.0.extract.trunc, 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.60, i32 noundef %i.ax) #21
  %sum.shift44 = lshr i64 %i.aw, 36
  %i.ay = trunc nuw nsw i64 %sum.shift44 to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.ay) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57) #21
  %i.az = getelementptr inbounds nuw i8, ptr %.02752, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.az, %i.ae
  br i1 %.not30, label %.loopexit, label %.lr.ph54

.loopexit:                                        ; preds = %.lr.ph54, %._crit_edge50, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.ba = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.bb = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 4 uses
  store ptr %i.bd, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bh = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %.not.i = icmp eq ptr %i.bb, %i.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr null, i64 %i.bj ; 3 uses
  store ptr %i.bk, ptr %i.bg, align 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit

bb.g:                                             ; preds = %.loopexit
  %i.bl = icmp sgt i64 %i.bj, -1
  br i1 %i.bl, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = icmp ugt i64 %i.bj, %i.bq
  br i1 %i.br, label %bb.j, label %.lr.ph.preheader.i, !prof !20

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 noundef %i.bj) #21
  %.pre.i.i.i = load i64, ptr %i.bo, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %bb.i
  %i.bs = phi i64 [ %.pre.i.i.i, %bb.j ], [ %i.bp, %bb.i ] ; 6 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 5 uses
  %i.bu = add i64 %i.bs, %i.bj
  store i64 %i.bu, ptr %i.bo, align 8
  store ptr %i.bt, ptr %i.be, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bj ; 5 uses
  store ptr %i.bv, ptr %i.bg, align 8
  store ptr %i.bv, ptr %i.bf, align 8
  %i.bw = add i64 %i.bs, %i.bh
  %i.bx = sub i64 %i.bw, %i.bi
  %i.by = add nuw i64 %i.bs, 8
  %umax.a = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.by)
  %i.bz = xor i64 %i.bs, -1
  %i.ca = add i64 %umax.a, %i.bz                  ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 72
  %i.cd = sub i64 %i.bi, %i.bs
  %diff.check = icmp ugt i64 %i.cd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.cc, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bt, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.ba, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ch ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ba, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep72, align 4
  %wide.load73 = load <2 x i64>, ptr %i.ci, align 4
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load73, ptr %i.cj, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.014.i.ph = phi ptr [ %i.bt, %.lr.ph.preheader.i ], [ %i.cf, %middle.block ]
  %.01113.i.ph = phi ptr [ %i.ba, %.lr.ph.preheader.i ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.014.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01113.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.01113.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01113.i, i64 8
  %i.cm = load i64, ptr %.01113.i, align 4
  store i64 %i.cm, ptr %.014.i, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 2 uses
  %i.co = icmp ult ptr %i.cn, %i.bv
  br i1 %i.co, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit, !llvm.loop !93

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit: ; preds = %.lr.ph.i, %middle.block, %.thread.i
  %i.cp = phi ptr [ %i.bk, %.thread.i ], [ %i.bv, %middle.block ], [ %i.bv, %.lr.ph.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8            ; 13 uses
  %i.cs = ptrtoint ptr %i.cr to i64               ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8            ; 4 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cz = call noundef ptr @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE19PrepareForInsertionEPKS6_mPm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.cp, i64 noundef %i.cy, ptr noundef nonnull %i.a) ; 9 uses
  %i.da = ptrtoaddr ptr %i.cz to i64
  %i.db = load i64, ptr %i.a, align 8             ; 2 uses
  %.idx.i = shl i64 %i.db, 3                      ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i
  %.not.i35 = icmp eq i64 %i.db, 0
  br i1 %.not.i35, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit
  %4 = ptrtoint ptr %i.cr to i64                  ; 3 uses
  %i.dd = add i64 %.idx.i, %4
  %i.de = add i64 %4, 8
  %umax78 = call i64 @llvm.umax.i64(i64 %i.dd, i64 %i.de)
  %i.df = xor i64 %4, -1
  %i.dg = add i64 %umax78, %i.df                  ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check80 = icmp ult i64 %i.dg, 168
  br i1 %min.iters.check80, label %.lr.ph.i36.preheader120, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i36.preheader
  %i.dj = add i64 %.idx.i, %i.cs
  %i.dk = add i64 %i.cs, 8
  %umax76 = call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dk)
  %i.dl = xor i64 %i.cs, -1
  %i.dm = add i64 %umax76, %i.dl
  %i.dn = and i64 %i.dm, -8
  %i.do = add i64 %i.dn, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.do
  %scevgep77 = getelementptr i8, ptr %i.cr, i64 %i.do
  %bound0 = icmp ult ptr %i.cz, %scevgep77
  %bound1 = icmp ult ptr %i.cr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i36.preheader120, label %vector.ph81

vector.ph81:                                      ; preds = %vector.memcheck75
  %n.vec83 = and i64 %i.di, 4611686018427387900   ; 3 uses
  %i.dp = shl i64 %n.vec83, 3                     ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cz, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.cr, i64 %i.dp
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph81
  %index85 = phi i64 [ 0, %vector.ph81 ], [ %index.next95, %vector.body84 ] ; 2 uses
  %i.ds = shl i64 %index85, 3                     ; 3 uses
  %i.dt = or disjoint i64 %i.ds, 16               ; 2 uses
  %next.gep86.a = getelementptr i8, ptr %i.cz, i64 %i.ds
  %next.gep87.a = getelementptr i8, ptr %i.cz, i64 %i.dt
  %next.gep88 = getelementptr i8, ptr %i.cr, i64 %i.ds
  %next.gep89 = getelementptr i8, ptr %i.cr, i64 %i.dt
  %wide.vec = load <4 x i32>, ptr %next.gep88, align 4, !alias.scope !94
  %wide.vec91 = load <4 x i32>, ptr %next.gep89, align 4, !alias.scope !94
  store <4 x i32> %wide.vec, ptr %next.gep86.a, align 4, !alias.scope !97, !noalias !94
  store <4 x i32> %wide.vec91, ptr %next.gep87.a, align 4, !alias.scope !97, !noalias !94
  %index.next95 = add nuw i64 %index85, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next95, %n.vec83
  br i1 %i.du, label %middle.block96, label %vector.body84, !llvm.loop !99

middle.block96:                                   ; preds = %vector.body84
  %cmp.n97 = icmp eq i64 %i.di, %n.vec83
  br i1 %cmp.n97, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i, label %.lr.ph.i36.preheader120

.lr.ph.i36.preheader120:                          ; preds = %vector.memcheck75, %.lr.ph.i36.preheader, %middle.block96
  %.0.i14.i.ph = phi ptr [ %i.cz, %vector.memcheck75 ], [ %i.cz, %.lr.ph.i36.preheader ], [ %i.dq, %middle.block96 ]
  %.07.i13.i.ph = phi ptr [ %i.cr, %vector.memcheck75 ], [ %i.cr, %.lr.ph.i36.preheader ], [ %i.dr, %middle.block96 ]
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader120, %.lr.ph.i36
  %.0.i14.i = phi ptr [ %i.dz, %.lr.ph.i36 ], [ %.0.i14.i.ph, %.lr.ph.i36.preheader120 ] ; 3 uses
  %.07.i13.i = phi ptr [ %i.ea, %.lr.ph.i36 ], [ %.07.i13.i.ph, %.lr.ph.i36.preheader120 ] ; 3 uses
  %i.dv = load i32, ptr %.07.i13.i, align 4
  store i32 %i.dv, ptr %.0.i14.i, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.07.i13.i, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 4
  %i.dy = load i32, ptr %i.dw, align 4
  store i32 %i.dy, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.07.i13.i, i64 8 ; 2 uses
  %i.eb = icmp ult ptr %i.ea, %i.dc
  br i1 %i.eb, label %.lr.ph.i36, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i, !llvm.loop !100

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i: ; preds = %.lr.ph.i36, %middle.block96
  %.pre.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i: ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit
  %i.ec = phi i64 [ %.pre.i, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i ], [ 0, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ec ; 4 uses
  %i.ee = icmp ult ptr %i.ed, %i.cu
  br i1 %i.ee, label %.lr.ph17.preheader.i, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit

.lr.ph17.preheader.i:                             ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ec ; 3 uses
  %5 = ptrtoint ptr %i.cu to i64
  %6 = ptrtoint ptr %i.cr to i64                  ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ec, 3
  %i.eh = add i64 %i.eg, %6
  %i.ei = add i64 %i.eh, 8
  %umax102 = call i64 @llvm.umax.i64(i64 %5, i64 %i.ei)
  %7 = shl i64 %i.ec, 3
  %i.ej = add i64 %7, %6
  %8 = xor i64 %i.ej, -1
  %9 = add i64 %umax102, %8                       ; 2 uses
  %i.ek = lshr i64 %9, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check104 = icmp ult i64 %9, 72
  %i.em = sub i64 %i.cs, %i.da
  %diff.check101 = icmp ugt i64 %i.em, -32
  %or.cond119 = or i1 %min.iters.check104, %diff.check101
  br i1 %or.cond119, label %.lr.ph17.i.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec107 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.en = shl i64 %n.vec107, 3                    ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ef, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.ed, i64 %i.en
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph105
  %index109 = phi i64 [ 0, %vector.ph105 ], [ %index.next114, %vector.body108 ] ; 2 uses
  %i.eq = shl i64 %index109, 3                    ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.ef, i64 %i.eq ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.ed, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load112 = load <2 x i64>, ptr %next.gep111, align 4
  %wide.load113 = load <2 x i64>, ptr %i.er, align 4
  %i.es = getelementptr i8, ptr %next.gep110, i64 16
  store <2 x i64> %wide.load112, ptr %next.gep110, align 4
  store <2 x i64> %wide.load113, ptr %i.es, align 4
  %index.next114 = add nuw i64 %index109, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.et, label %middle.block115, label %vector.body108, !llvm.loop !101

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.el, %n.vec107
  br i1 %cmp.n116, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit, label %.lr.ph17.i.preheader

.lr.ph17.i.preheader:                             ; preds = %.lr.ph17.preheader.i, %middle.block115
  %.0.i1216.i.ph = phi ptr [ %i.ef, %.lr.ph17.preheader.i ], [ %i.eo, %middle.block115 ]
  %.07.i1115.i.ph = phi ptr [ %i.ed, %.lr.ph17.preheader.i ], [ %i.ep, %middle.block115 ]
  br label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.preheader, %.lr.ph17.i
  %.0.i1216.i = phi ptr [ %i.ev, %.lr.ph17.i ], [ %.0.i1216.i.ph, %.lr.ph17.i.preheader ] ; 2 uses
  %.07.i1115.i = phi ptr [ %i.ew, %.lr.ph17.i ], [ %.07.i1115.i.ph, %.lr.ph17.i.preheader ] ; 2 uses
  %i.eu = load i64, ptr %.07.i1115.i, align 4
  store i64 %i.eu, ptr %.0.i1216.i, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i1216.i, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.07.i1115.i, i64 8 ; 2 uses
  %i.ex = icmp ult ptr %i.ew, %i.cu
  br i1 %i.ex, label %.lr.ph17.i, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit, !llvm.loop !102

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit: ; preds = %.lr.ph17.i, %middle.block115, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ey = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.ez = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not3155 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not3155, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.k

._crit_edge58:                                    ; preds = %bb.o, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.s, label %bb.p

bb.k:                                             ; preds = %.lr.ph57, %bb.o
  %.02856 = phi ptr [ %i.ey, %.lr.ph57 ], [ %i.fz, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.fk = load <2 x i32>, ptr %.02856, align 4
  store <2 x i32> %i.fk, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.fl = load ptr, ptr %i.b, align 8, !nonnull !13, !align !70
  %i.fm = load ptr, ptr %i.bc, align 8
  call void @_ZN2v88internal8compiler10turboshaft7SLPTreeC2ERNS2_5GraphEPNS2_17WasmRevecAnalyzerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(328) %i.fl, ptr noundef nonnull %0, ptr noundef %i.fm)
  %i.fn = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull readonly align 4 dereferenceable(8) %2, i32 noundef 0) ; 2 uses
  store ptr %i.fn, ptr %i.fa, align 8
  %.not32 = icmp eq ptr %i.fn, null
  br i1 %.not32, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.fo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv, i32 noundef 1507) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.61) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull @.str.62)
  call void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer12MergeSLPTreeERNS2_7SLPTreeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(224) %3)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.fq = load ptr, ptr %i.fb, align 8
  %i.fr = load i64, ptr %i.fc, align 8
  %i.fs = shl i64 %i.fr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fq, i8 0, i64 %i.fs, i1 false)
  %i.ft = load ptr, ptr %i.fd, align 8
  %i.fu = load i64, ptr %i.fe, align 8
  %i.fv = shl i64 %i.fu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ft, i8 0, i64 %i.fv, i1 false)
  %i.fw = load ptr, ptr %i.ff, align 8
  %i.fx = load i64, ptr %i.fg, align 8
  %i.fy = shl i64 %i.fx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fw, i8 0, i64 %i.fy, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.fz = getelementptr inbounds nuw i8, ptr %.02856, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.fz, %i.ez
  br i1 %.not31, label %._crit_edge58, label %bb.k

bb.p:                                             ; preds = %._crit_edge58
  %i.ga = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.gb = load ptr, ptr %i.b, align 8, !nonnull !13, !align !70
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8            ; 2 uses
  %i.gg = sub i64 %i.gd, %i.gf
  %i.gh = icmp ult i64 %i.gg, 96
  br i1 %i.gh, label %bb.q, label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit, !prof !20

bb.q:                                             ; preds = %bb.p
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ga, i64 noundef 96) #21
  %.pre.i.i = load i64, ptr %i.ge, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit: ; preds = %bb.p, %bb.q
  %i.gi = phi i64 [ %.pre.i.i, %bb.q ], [ %i.gf, %bb.p ] ; 2 uses
  %i.gj = inttoptr i64 %i.gi to ptr               ; 2 uses
  %i.gk = add i64 %i.gi, 96
  store i64 %i.gk, ptr %i.ge, align 8
  %i.gl = load ptr, ptr %i.bc, align 8
  call void @_ZN2v88internal8compiler10turboshaft6UseMapC2ERKNS2_5GraphEPNS0_4ZoneEPFbS6_RKNS2_9OperationES8_E(ptr noundef nonnull align 8 dereferenceable(96) %i.gj, ptr noundef nonnull align 8 dereferenceable(328) %i.gb, ptr noundef %i.gl, ptr noundef nonnull @_ZZN2v88internal8compiler10turboshaft13Simd128UseMapC1ERKNS2_5GraphEPNS0_4ZoneEENUlS6_RKNS2_9OperationES8_E_8__invokeES6_SB_S8_) #21
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.gj, ptr %i.gm, align 8
  %i.gn = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv(ptr noundef nonnull align 8 dereferenceable(464) %0)
  br i1 %i.gn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 1, ptr %i.go, align 8
  call void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull @.str.63)
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit, %bb.r, %._crit_edge58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %bb.c, %bb.s
  ret void
}

declare void @_ZNK2v88internal8compiler10turboshaft9Operation5PrintEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft7SLPTreeC2ERNS2_5GraphEPNS2_17WasmRevecAnalyzerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 2 uses
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef 0) #21 ; 5 uses
  %i.m = load i64, ptr %i.h, align 8
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.g, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE15_M_merge_uniqueISO_EEvRT_:bb.a
  %i.bp = urem i64 %i.o, %i.bo
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE7extractENSC_20_Node_const_iteratorIS9_Lb0ELb1EEE.exit
  %.0.i19 = phi i64 [ %i.bp, %bb.o ], [ %i.q, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE7extractENSC_20_Node_const_iteratorIS9_Lb0ELb1EEE.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %i.o, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.g, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.0.i19
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.bt, align 8
  store ptr %i.bu, ptr %i.aq, align 8
  %i.bv = load ptr, ptr %i.g, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0.i19
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.aq, ptr %i.bx, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit

bb.r:                                             ; preds = %bb.p
  %i.by = load ptr, ptr %i.l, align 8
  store ptr %i.by, ptr %i.aq, align 8
  store ptr %i.aq, ptr %i.l, align 8
  %i.bz = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not11.i.i = icmp eq ptr %i.bz, null
  br i1 %.not11.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.g, align 8
  %i.cb = load i64, ptr %i.f, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = urem i64 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ce
  store ptr %i.aq, ptr %i.cf, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cg = load ptr, ptr %i.g, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0.i19
  store ptr %i.l, ptr %i.ch, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit: ; preds = %bb.q, %bb.t
  %i.ci = load i64, ptr %i.k, align 8
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.k, align 8
  br label %bb.u

_ZNKSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit: ; preds = %bb.d, %bb.c
  %.not = icmp eq i64 %.029, 1
  %i.ck = add i64 %.029, -1
  %spec.select = select i1 %.not, i64 1, i64 %i.ck
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeIS9_Lb1EEEm.exit ], [ %spec.select, %_ZNKSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit ]
  %i.cl = icmp eq ptr %i.m, null
  br i1 %i.cl, label %._crit_edge, label %bb.b, !llvm.loop !219
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE16_M_insert_uniqueIRKS6_EESt4pairISt17_Rb_tree_iteratorIS6_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.02224.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not25.i = icmp eq ptr %.02224.i, null
  br i1 %.not25.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02226.i = phi ptr [ %.02224.i, %.lr.ph.i ], [ %.022.i, %bb.b ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02226.i, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, %i.h
  %i.i = icmp ult ptr %i.d, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.02226.i, i64 56
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ult i64 %i.f, %i.k
  %.0.i.i = select i1 %.not.i.i, i1 %i.l, i1 %i.i ; 2 uses
  %.in.v.i = select i1 %.0.i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02226.i, i64 %.in.v.i
  %.022.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.022.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !220

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %.0.i.i, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.021.lcssa31.i = phi ptr [ %.02226.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %.021.lcssa31.i, %i.n
  br i1 %i.o, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa31.i) #24 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre21 = load ptr, ptr %.phi.trans.insert20, align 8
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.pre23 = load i64, ptr %.phi.trans.insert22, align 8
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre25 = load i64, ptr %.phi.trans.insert24, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.q = phi i64 [ %.pre25, %bb.c ], [ %i.f, %._crit_edge.i ]
  %i.r = phi i64 [ %.pre23, %bb.c ], [ %i.k, %._crit_edge.i ]
  %i.s = phi ptr [ %.pre21, %bb.c ], [ %i.d, %._crit_edge.i ] ; 2 uses
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.h, %._crit_edge.i ] ; 2 uses
  %.021.lcssa30.i = phi ptr [ %.021.lcssa31.i, %bb.c ], [ %.02226.i, %._crit_edge.i ]
  %.sroa.07.0.i = phi ptr [ %i.p, %bb.c ], [ %.02226.i, %._crit_edge.i ]
  %.not.i5.i = icmp eq ptr %i.t, %i.s
  %i.u = icmp ult ptr %i.t, %i.s
  %i.v = icmp ult i64 %i.r, %i.q
  %.0.i6.i = select i1 %.not.i5.i, i1 %i.v, i1 %i.u
  br i1 %.0.i6.i, label %select.unfold, label %bb.h

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.021.lcssa31.i, %._crit_edge.thread.i ], [ %.021.lcssa30.i, %bb.d ] ; 4 uses
  %i.w = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.y, %i.aa
  %i.ab = icmp ult ptr %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 56
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ult i64 %i.ad, %i.af
  %.0.i.i7 = select i1 %.not.i.i6, i1 %i.ag, i1 %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  %i.ah = phi i1 [ %.0.i.i7, %bb.e ], [ true, %select.unfold ]
  %i.ai = load ptr, ptr %0, align 8               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = icmp ult i64 %i.an, 64
  br i1 %i.ao, label %bb.g, label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 noundef 64) #21
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit

_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit: ; preds = %bb.f, %bb.g
  %i.ap = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.ar = add i64 %i.ap, 64
  store i64 %i.ar, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef %i.aq, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #21
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit
  %.sroa.012.0 = phi ptr [ %i.aq, %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit ], [ %.sroa.07.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #21
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ac = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit
  %2 = ptrtoint ptr %i.d to i64
  %3 = ptrtoint ptr %i.b to i64                   ; 2 uses
  %i.ad = add i64 %3, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.ad)
  %i.ae = xor i64 %3, -1
  %i.af = add i64 %umax, %i.ae                    ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 72
  %i.ai = sub i64 %i.f, %i.y
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond17 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond17, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.z, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.b, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.b, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 4
  %wide.load15 = load <2 x i64>, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load15, ptr %i.ao, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i10.ph = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.07.i9.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.0.i10 = phi ptr [ %i.ar, %.lr.ph ], [ %.0.i10.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.07.i9 = phi ptr [ %i.as, %.lr.ph ], [ %.07.i9.ph, %.lr.ph.preheader18 ] ; 2 uses
  %i.aq = load i64, ptr %.07.i9, align 4
  store i64 %i.aq, ptr %.0.i10, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i9, i64 8 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.d
  br i1 %i.at, label %.lr.ph, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, !llvm.loop !222

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit: ; preds = %.lr.ph, %middle.block
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit
  %i.au = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.o
  store ptr %i.av, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE19PrepareForInsertionEPKS6_mPm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = xor i64 %i.h, -1
  %.not = icmp ugt i64 %2, %i.i
  br i1 %.not, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.77) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = sub i64 %i.j, %i.f                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add i64 %i.h, %2
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %3, align 8
  %i.s = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.t = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64                 ; 5 uses
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3
  %i.y = add i64 %i.x, %2
  %i.z = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.s, %i.z
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.ab, %i.v
  %i.ad = ashr exact i64 %i.ac, 2
  %i.ae = select i1 %i.aa, i64 2, i64 %i.ad
  %i.af = tail call noundef i64 @llvm.umax.i64(i64 %i.ae, i64 %i.y) ; 3 uses
  %i.ag = load ptr, ptr %0, align 8               ; 3 uses
  %i.ah = icmp ult i64 %i.af, 2305843009213693951
  br i1 %i.ah, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ai = shl nuw i64 %i.af, 3                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.g, label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 noundef %i.ai) #21
  %.pre.i.i = load i64, ptr %i.al, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit: ; preds = %bb.f, %bb.g
  %i.ap = phi i64 [ %.pre.i.i, %bb.g ], [ %i.am, %bb.f ] ; 3 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 7 uses
  %i.ar = add i64 %i.ap, %i.ai
  store i64 %i.ar, ptr %i.al, align 8
  store ptr %i.aq, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.w
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %2
  store ptr %i.at, ptr %i.a, align 8
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit
  %i.au = icmp ult ptr %i.s, %1
  br i1 %i.au, label %.lr.ph54.preheader, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit34

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.av = add i64 %i.v, 8
  %i.aw = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.av)
  %i.ax = xor i64 %i.v, -1
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 72
  %i.bb = sub i64 %i.v, %i.ap
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph54.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph54.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.s, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bf ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.s, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep69, align 4
  %wide.load70 = load <2 x i64>, ptr %i.bg, align 4
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load70, ptr %i.bh, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit34.loopexit, label %.lr.ph54.preheader91

.lr.ph54.preheader91:                             ; preds = %.lr.ph54.preheader, %middle.block
  %.0.i3353.ph = phi ptr [ %i.aq, %.lr.ph54.preheader ], [ %i.bd, %middle.block ]
  %.07.i3252.ph = phi ptr [ %i.s, %.lr.ph54.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader91, %.lr.ph54
  %.0.i3353 = phi ptr [ %i.bk, %.lr.ph54 ], [ %.0.i3353.ph, %.lr.ph54.preheader91 ] ; 2 uses
  %.07.i3252 = phi ptr [ %i.bl, %.lr.ph54 ], [ %.07.i3252.ph, %.lr.ph54.preheader91 ] ; 2 uses
  %i.bj = load i64, ptr %.07.i3252, align 4
  store i64 %i.bj, ptr %.0.i3353, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i3353, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i3252, i64 8 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %1
  br i1 %i.bm, label %.lr.ph54, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit34.loopexit, !llvm.loop !224
end_hunk_1
