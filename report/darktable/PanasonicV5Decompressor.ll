inline.NumInlined: 502
inline.NumDeleted: 264
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8rawspeed23PanasonicV5Decompressor12processBlockIL_ZNS0_15TwelveBitPacketEEEEvRKNS0_5BlockE:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %.026 = phi i32 [ %i.an, %bb.g ], [ 0, %bb.f ]  ; 2 uses
  %i.ao = icmp eq i32 %i.u, %.02752
  %spec.select = select i1 %i.ao, ptr %i.s, ptr %i.w
  %.0 = load i32, ptr %spec.select, align 8, !tbaa !164 ; 2 uses
  %i.ap = icmp slt i32 %.026, %.0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !172, !noalias !173
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !38, !noalias !173
  %i.as = load i32, ptr %i.z, align 8, !tbaa !176, !noalias !173
  %i.at = mul nsw i32 %i.as, %i.ar                ; 2 uses
  %i.au = load i32, ptr %i.aa, align 4, !tbaa !177, !noalias !173
  %i.av = load i32, ptr %i.ab, align 8, !tbaa !178, !noalias !173
  %i.aw = ashr i32 %i.av, 1                       ; 3 uses
  %i.ax = icmp ne i32 %i.aw, 0
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp sge i32 %i.aw, %i.at
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp samesign ult i32 %.02752, %i.au
  %i.ba = mul nuw nsw i32 %i.aw, %.02752
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.bb ; 9 uses
  %i.bd = zext nneg i32 %i.at to i64              ; 2 uses
  %i.be = zext nneg i32 %.sroa.1838.051 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.o
  %.147 = phi i32 [ %.026, %.lr.ph ], [ %i.dx, %bb.o ] ; 2 uses
  %.sroa.1838.146 = phi i64 [ %i.be, %.lr.ph ], [ %indvars.iv.next, %bb.o ]
  %.sroa.035.145 = phi i64 [ %.sroa.035.050, %.lr.ph ], [ %i.dw, %bb.o ]
  %i.bf = zext i32 %.147 to i64
  br label %bb.j

.loopexit.i:                                      ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.lcssa74 = phi i64 [ %.lcssa74.unr, %.prol.loopexit ], [ 0, %.lr.ph.i.new ] ; 2 uses
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ds, %.lr.ph.i.new ] ; 2 uses
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next.i.7, %.lr.ph.i.new ]
  %i.bg = trunc nuw i32 %.lcssa363841.i to i8
  %.lhs.trunc = add nuw nsw i8 %i.bg, 20
  %i.bh = udiv i8 %.lhs.trunc, 12
  %.zext = zext nneg i8 %i.bh to i32              ; 2 uses
  %i.bi = add i32 %.043.i, %.zext
  %i.bj = add i32 %.043.i, 1
  %i.bk = add i32 %i.bj, %.zext
  %i.bl = icmp slt i32 %i.bi, 9
  br i1 %i.bl, label %bb.j, label %bb.o, !llvm.loop !179

bb.j:                                             ; preds = %.loopexit.i, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i ], [ %.sroa.1838.146, %bb.i ] ; 4 uses
  %.sroa.035.2 = phi i64 [ %.lcssa74, %.loopexit.i ], [ %.sroa.035.145, %bb.i ]
  %.043.i = phi i32 [ %i.bk, %.loopexit.i ], [ 0, %bb.i ] ; 2 uses
  %.01142.i = phi i64 [ %indvars.iv.next.i.lcssa, %.loopexit.i ], [ %i.bf, %bb.i ] ; 2 uses
  %.lcssa363841.i = phi i32 [ %.lcssa, %.loopexit.i ], [ 0, %bb.i ] ; 6 uses
  %i.bm = icmp samesign ult i32 %.lcssa363841.i, 65
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 4 uses
  %.not.i.i.i = icmp samesign ugt i64 %indvars.iv.next, %i.ad
  br i1 %.not.i.i.i, label %bb.l, label %bb.k, !prof !165

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  br label %.lr.ph.i

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp samesign ugt i64 %indvars.iv, %i.ae
  br i1 %i.bo, label %bb.m, label %bb.n, !prof !165

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #11
          to label %.noexc31 unwind label %bb.p

.noexc31:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %i.bp = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.speculated27.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.j, i32 %i.bp) ; 3 uses
  %i.bq = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.j, i32 %i.bq)
  %i.br = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.bs = icmp samesign ult i32 %i.br, 5
  call void @llvm.assume(i1 %i.bs)
  %i.bt = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bt
  %i.bv = zext nneg i32 %i.br to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bu, i64 %i.bv, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.k
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.n ], [ %i.bn, %bb.k ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bw = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.bx = or disjoint i32 %.lcssa363841.i, 32     ; 2 uses
  %i.by = zext nneg i32 %.lcssa363841.i to i64
  %i.bz = shl nuw nsw i64 %i.bw, %i.by
  %i.ca = or i64 %i.bz, %.sroa.035.2              ; 2 uses
  call void @llvm.assume(i1 %i.az)
  %i.cb = add nuw nsw i32 %.lcssa363841.i, 20
  %i.cc = udiv i32 %i.cb, 12
  %i.cd = add nuw nsw i32 %i.cc, 1
  %xtraiter = and i32 %i.cd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %.01142.i, %.lr.ph.i ] ; 3 uses
  %i.ce = phi i64 [ %i.ci, %.prol.preheader ], [ %i.ca, %.lr.ph.i ] ; 2 uses
  %i.cf = phi i32 [ %i.cj, %.prol.preheader ], [ %i.bx, %.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cg = trunc i64 %i.ce to i16
  %i.ch = and i16 %i.cg, 4095
  %i.ci = lshr i64 %i.ce, 12                      ; 3 uses
  %i.cj = add nsw i32 %i.cf, -12                  ; 3 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.i.prol, %i.bd
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i.prol
  store i16 %i.ch, ptr %i.cl, align 2, !tbaa !180
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !182

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.lcssa74.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ci, %.prol.preheader ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i ], [ %i.cj, %.prol.preheader ]
  %indvars.iv.next.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %indvars.iv.i.unr = phi i64 [ %.01142.i, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %.unr = phi i64 [ %i.ca, %.lr.ph.i ], [ %i.ci, %.prol.preheader ]
  %.unr77 = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.cj, %.prol.preheader ]
  %i.cm = icmp samesign ult i32 %.lcssa363841.i, 64
  br i1 %i.cm, label %.loopexit.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 9 uses
  %i.cn = phi i64 [ 0, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ] ; 6 uses
  %i.co = phi i32 [ %i.ds, %.lr.ph.i.new ], [ %.unr77, %.prol.loopexit ] ; 2 uses
  %i.cp = trunc i64 %i.cn to i16
  %i.cq = and i16 %i.cp, 4095
  %i.cr = lshr i64 %i.cn, 12
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i
  store i16 %i.cq, ptr %i.cs, align 2, !tbaa !180
  %i.ct = trunc i64 %i.cr to i16
  %i.cu = and i16 %i.ct, 4095
  %i.cv = lshr i64 %i.cn, 24
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i16 %i.cu, ptr %i.cx, align 2, !tbaa !180
  %i.cy = trunc i64 %i.cv to i16
  %i.cz = and i16 %i.cy, 4095
  %i.da = lshr i64 %i.cn, 36
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i16 %i.cz, ptr %i.dc, align 2, !tbaa !180
  %i.dd = trunc i64 %i.da to i16
  %i.de = and i16 %i.dd, 4095
  %i.df = lshr i64 %i.cn, 48
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  store i16 %i.de, ptr %i.dh, align 2, !tbaa !180
  %i.di = trunc nuw i64 %i.df to i16
  %i.dj = and i16 %i.di, 4095
  %i.dk = lshr i64 %i.cn, 60
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i16 %i.dj, ptr %i.dm, align 2, !tbaa !180
  %i.dn = trunc nuw nsw i64 %i.dk to i16
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 10
  store i16 %i.dn, ptr %i.dp, align 2, !tbaa !180
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i16 0, ptr %i.dr, align 2, !tbaa !180
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.ds = add nsw i32 %i.co, -96                  ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next.i.6, %i.bd
  call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.next.i.6
  store i16 0, ptr %i.du, align 2, !tbaa !180
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i.7 = icmp slt i32 %i.co, 108
  br i1 %.not.i.7, label %.loopexit.i, label %.lr.ph.i.new, !llvm.loop !184

bb.o:                                             ; preds = %.loopexit.i
  %i.dv = zext nneg i32 %.lcssa to i64
  %i.dw = lshr i64 %.lcssa74, %i.dv               ; 2 uses
  %i.dx = add nsw i32 %.147, 10                   ; 2 uses
  %i.dy = icmp slt i32 %i.dx, %.0
  br i1 %i.dy, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !185

bb.p:                                             ; preds = %bb.m
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %bb.o
  %i.ea = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.sroa.035.1.lcssa = phi i64 [ %.sroa.035.050, %bb.h ], [ %i.dw, %._crit_edge.loopexit ]
  %.sroa.1838.1.lcssa = phi i32 [ %.sroa.1838.051, %bb.h ], [ %i.ea, %._crit_edge.loopexit ]
  %i.eb = add i32 %.02752, 1
  %exitcond.not = icmp eq i32 %.02752, %i.u
  br i1 %exitcond.not, label %._crit_edge54, label %bb.f, !llvm.loop !186

bb.q:                                             ; preds = %bb.p, %bb.e
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.p ], [ %i.al, %bb.e ]
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i32, label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !170
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #20
  br label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33

_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed23PanasonicV5Decompressor11ProxyStream10parseBlockEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %i.e = icmp uge i32 %i.b, %i.d
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp sgt i32 %i.b, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub i32 %i.b, %i.d
  %i.h = icmp eq i32 %i.g, 16384
  tail call void @llvm.assume(i1 %i.h)
  %i.i = zext i32 %i.d to i64                     ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 8184
  %i.k = zext nneg i32 %i.b to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.j, %i.k
  br i1 %.not.i.i.i, label %bb.b, label %_ZN8rawspeed10ByteStream9getBufferEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
  unreachable

_ZN8rawspeed10ByteStream9getBufferEj.exit:        ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.m = add nuw nsw i32 %i.d, 8184               ; 3 uses
  %i.n = icmp samesign ule i32 %i.m, %i.b
  tail call void @llvm.assume(i1 %i.n)
  %i.o = sub nsw i32 %i.b, %i.m                   ; 2 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !26
  %i.p = icmp samesign ugt i32 %i.o, 8184
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !168  ; 5 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp ult i64 %i.w, 16384
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !187  ; 2 uses
  br i1 %i.x, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %_ZN8rawspeed10ByteStream9getBufferEj.exit
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.v                     ; 3 uses
  %i.ac = tail call noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #23 ; 6 uses
  %i.ad = icmp sgt i64 %i.ab, 0
  br i1 %i.ad, label %bb.c, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.t, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.c, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.w) #20
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.d, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !168
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab ; 2 uses
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !188
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16384
  store ptr %i.af, ptr %i.r, align 8, !tbaa !170
  %.pre32 = ptrtoint ptr %i.ac to i64
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZN8rawspeed10ByteStream9getBufferEj.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
  %.pre-phi = phi i64 [ %.pre32, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.v, %_ZN8rawspeed10ByteStream9getBufferEj.exit ]
  %i.ag = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.t, %_ZN8rawspeed10ByteStream9getBufferEj.exit ]
  %i.ah = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.z, %_ZN8rawspeed10ByteStream9getBufferEj.exit ]
  %i.ai = zext i32 %i.o to i64
  %i.aj = zext nneg i32 %i.m to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.ao, %.pre-phi
  %i.aq = getelementptr inbounds i8, ptr %i.ag, i64 %i.ap
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.aq, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.an)
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !187 ; 2 uses
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !187
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8184
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 %i.aw
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.ax, ptr noundef %i.al, ptr noundef nonnull %i.at)
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !187 ; 2 uses
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !188
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = and i64 %i.bc, 2147483648
  %i.be = icmp eq i64 %i.bd, 0
  tail call void @llvm.assume(i1 %i.be)
  %.sroa.213.8.insert.ext = and i64 %i.bc, 2147483647
  %.sroa.213.8.insert.insert = or disjoint i64 %.sroa.213.8.insert.ext, 244834610708480
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ay, ptr %i.bf, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.213.8.insert.insert, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.516.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !189

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !163
  store i8 %i.s, ptr %i.g, align 1, !tbaa !163
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !188
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !189

end_hunk_0
begin_hunk_1_@_ZNK8rawspeed23PanasonicV5Decompressor12processBlockIL_ZNS0_17FourteenBitPacketEEEEvRKNS0_5BlockE:bb.a
_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !167  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !147  ; 3 uses
  %.not49 = icmp sgt i32 %i.r, %i.u
  br i1 %.not49, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !16     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 568
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 592
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 608
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 612
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ac = add nuw nsw i32 %i.j, 8
  %i.ad = zext nneg i32 %i.j to i64
  %i.ae = zext nneg i32 %i.ac to i64
  br label %bb.f

._crit_edge54:                                    ; preds = %._crit_edge, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge54
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !170
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #20
  br label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit

_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit: ; preds = %._crit_edge54, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %.lr.ph53, %._crit_edge
  %.02752 = phi i32 [ %i.r, %.lr.ph53 ], [ %i.cs, %._crit_edge ] ; 6 uses
  %.sroa.1838.051 = phi i32 [ 0, %.lr.ph53 ], [ %.sroa.1838.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.050 = phi i64 [ 0, %.lr.ph53 ], [ %.sroa.035.1.lcssa, %._crit_edge ] ; 2 uses
  %i.am = icmp eq i32 %i.r, %.02752
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %i.p, align 8, !tbaa !171
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026 = phi i32 [ %i.an, %bb.g ], [ 0, %bb.f ]  ; 2 uses
  %i.ao = icmp eq i32 %i.u, %.02752
  %spec.select = select i1 %i.ao, ptr %i.s, ptr %i.w
  %.0 = load i32, ptr %spec.select, align 8, !tbaa !164 ; 2 uses
  %i.ap = icmp slt i32 %.026, %.0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !172, !noalias !190
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !38, !noalias !190
  %i.as = load i32, ptr %i.z, align 8, !tbaa !176, !noalias !190
  %i.at = mul nsw i32 %i.as, %i.ar                ; 2 uses
  %i.au = load i32, ptr %i.aa, align 4, !tbaa !177, !noalias !190
  %i.av = load i32, ptr %i.ab, align 8, !tbaa !178, !noalias !190
  %i.aw = ashr i32 %i.av, 1                       ; 3 uses
  %i.ax = icmp ne i32 %i.aw, 0
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp sge i32 %i.aw, %i.at
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp samesign ult i32 %.02752, %i.au
  %i.ba = mul nuw nsw i32 %i.aw, %.02752
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = zext nneg i32 %i.at to i64
  %i.be = zext nneg i32 %.sroa.1838.051 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.p
  %.147 = phi i32 [ %.026, %.lr.ph ], [ %i.co, %bb.p ] ; 2 uses
  %.sroa.1838.146 = phi i64 [ %i.be, %.lr.ph ], [ %indvars.iv.next, %bb.p ]
  %.sroa.035.145 = phi i64 [ %.sroa.035.050, %.lr.ph ], [ %i.cn, %bb.p ]
  %i.bf = zext i32 %.147 to i64
  br label %bb.j

bb.j:                                             ; preds = %.prol.loopexit, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.prol.loopexit ], [ %.sroa.1838.146, %bb.i ] ; 4 uses
  %.sroa.035.2 = phi i64 [ %.lcssa74.unr, %.prol.loopexit ], [ %.sroa.035.145, %bb.i ]
  %.043.i = phi i32 [ %i.ck, %.prol.loopexit ], [ 0, %bb.i ] ; 2 uses
  %.01142.i = phi i64 [ %indvars.iv.next.i.lcssa.unr, %.prol.loopexit ], [ %i.bf, %bb.i ]
  %.lcssa363841.i = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ 0, %bb.i ] ; 5 uses
  %i.bg = icmp samesign ult i32 %.lcssa363841.i, 65
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 4 uses
  %.not.i.i.i = icmp samesign ugt i64 %indvars.iv.next, %i.ad
  br i1 %.not.i.i.i, label %bb.l, label %bb.k, !prof !165

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  br label %.lr.ph.i

bb.l:                                             ; preds = %bb.j
  %i.bi = icmp samesign ugt i64 %indvars.iv, %i.ae
  br i1 %i.bi, label %bb.m, label %bb.n, !prof !165

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #11
          to label %.noexc31 unwind label %bb.q

.noexc31:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.speculated27.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.j, i32 %i.bj) ; 3 uses
  %i.bk = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.j, i32 %i.bk)
  %i.bl = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bl, 5
  call void @llvm.assume(i1 %i.bm)
  %i.bn = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bn
  %i.bp = zext nneg i32 %i.bl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bo, i64 %i.bp, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.k
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.n ], [ %i.bh, %bb.k ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.assume(i1 %i.az)
  %i.bq = add nuw nsw i32 %.lcssa363841.i, 18
  %i.br = udiv i32 %i.bq, 14
  %i.bs = add nuw nsw i32 %i.br, 1
  %xtraiter = and i32 %i.bs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.bt = or disjoint i32 %.lcssa363841.i, 32
  %i.bu = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.bv = zext nneg i32 %.lcssa363841.i to i64
  %i.bw = shl nuw nsw i64 %i.bu, %i.bv
  %i.bx = or i64 %i.bw, %.sroa.035.2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %.01142.i, %.prol.preheader ], [ %indvars.iv.next.i.prol, %bb.o ] ; 3 uses
  %i.by = phi i64 [ %i.bx, %.prol.preheader ], [ %i.cc, %bb.o ] ; 2 uses
  %i.bz = phi i32 [ %i.bt, %.prol.preheader ], [ %i.cd, %bb.o ]
  %prol.iter = phi i32 [ 0, %.prol.preheader ], [ %prol.iter.next, %bb.o ]
  %i.ca = trunc i64 %i.by to i16
  %i.cb = and i16 %i.ca, 16383
  %i.cc = lshr i64 %i.by, 14                      ; 2 uses
  %i.cd = add nsw i32 %i.bz, -14                  ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.i.prol, %i.bd
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.i.prol
  store i16 %i.cb, ptr %i.cf, align 2, !tbaa !180
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.o, !llvm.loop !193

.prol.loopexit:                                   ; preds = %bb.o, %.lr.ph.i
  %.lcssa74.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.cc, %bb.o ] ; 2 uses
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i ], [ %i.cd, %bb.o ] ; 2 uses
  %indvars.iv.next.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %bb.o ]
  %i.cg = trunc nuw i32 %.lcssa363841.i to i8
  %.lhs.trunc = add nuw nsw i8 %i.cg, 18
  %i.ch = udiv i8 %.lhs.trunc, 14
  %.zext = zext nneg i8 %i.ch to i32              ; 2 uses
  %i.ci = add i32 %.043.i, %.zext
  %i.cj = add i32 %.043.i, 1
  %i.ck = add i32 %i.cj, %.zext
  %i.cl = icmp slt i32 %i.ci, 8
  br i1 %i.cl, label %bb.j, label %bb.p, !llvm.loop !194

bb.p:                                             ; preds = %.prol.loopexit
  %i.cm = zext nneg i32 %.lcssa.unr to i64
  %i.cn = lshr i64 %.lcssa74.unr, %i.cm           ; 2 uses
  %i.co = add nsw i32 %.147, 9                    ; 2 uses
  %i.cp = icmp slt i32 %i.co, %.0
  br i1 %i.cp, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !195

bb.q:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %bb.p
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.sroa.035.1.lcssa = phi i64 [ %.sroa.035.050, %bb.h ], [ %i.cn, %._crit_edge.loopexit ]
  %.sroa.1838.1.lcssa = phi i32 [ %.sroa.1838.051, %bb.h ], [ %i.cr, %._crit_edge.loopexit ]
  %i.cs = add i32 %.02752, 1
  %exitcond.not = icmp eq i32 %.02752, %i.u
  br i1 %exitcond.not, label %._crit_edge54, label %bb.f, !llvm.loop !196

bb.r:                                             ; preds = %bb.q, %bb.e
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %i.al, %bb.e ]
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i32, label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !170
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #20
  br label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33

_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0, !12, i64 8}
!18 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !14, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSN8rawspeed6BufferE", !21, i64 0, !8, i64 8}
!21 = !{!"p1 omnipotent char", !14, i64 0}
!22 = !{!20, !8, i64 8}
!23 = !{!24, !25, i64 12}
!24 = !{!"_ZTSN8rawspeed10DataBufferE", !20, i64 0, !25, i64 12}
!25 = !{!"_ZTSN8rawspeed10EndiannessE", !9, i64 0}
!26 = !{!27, !8, i64 16}
!27 = !{!"_ZTSN8rawspeed10ByteStreamE", !24, i64 0, !8, i64 16}
!28 = !{!29, !8, i64 40}
!29 = !{!"_ZTSN8rawspeed23PanasonicV5DecompressorE", !30, i64 0, !27, i64 16, !8, i64 40, !32, i64 48, !33, i64 56}
!30 = !{!"_ZTSN8rawspeed8RawImageE", !31, i64 0}
!31 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !17, i64 0}
!32 = !{!"long", !9, i64 0}
!33 = !{!"_ZTSSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN8rawspeed23PanasonicV5Decompressor5BlockE", !14, i64 0}
!38 = !{!39, !8, i64 592}
!39 = !{!"_ZTSN8rawspeed12RawImageDataE", !40, i64 8, !47, i64 40, !8, i64 48, !8, i64 52, !48, i64 56, !49, i64 64, !8, i64 96, !54, i64 100, !55, i64 120, !60, i64 160, !65, i64 168, !70, i64 192, !75, i64 216, !8, i64 240, !48, i64 244, !79, i64 248, !41, i64 552, !93, i64 553, !94, i64 560, !8, i64 592, !8, i64 596, !47, i64 600, !47, i64 608, !100, i64 616}
!40 = !{!"_ZTSN8rawspeed8ErrorLogE", !41, i64 0, !42, i64 8}
!41 = !{!"_ZTSN8rawspeed5MutexE"}
!42 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!46 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!47 = !{!"_ZTSN8rawspeed8iPoint2DE", !8, i64 0, !8, i64 4}
!48 = !{!"bool", !9, i64 0}
!49 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !50, i64 0, !47, i64 24}
!50 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!54 = !{!"_ZTSSt5arrayIiLm4EE", !9, i64 0}
!55 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !56, i64 0}
!56 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !57, i64 0}
!57 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !58, i64 0}
!58 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !59, i64 0}
!59 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !9, i64 0, !48, i64 32}
!60 = !{!"_ZTSN8rawspeed8OptionalIiEE", !61, i64 0}
!61 = !{!"_ZTSSt8optionalIiE", !62, i64 0}
!62 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !63, i64 0}
!63 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !64, i64 0}
!64 = !{!"_ZTSSt22_Optional_payload_baseIiE", !9, i64 0, !48, i64 4}
!65 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!69 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !14, i64 0}
!70 = !{!"_ZTSSt6vectorIjSaIjEE", !71, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"p1 int", !14, i64 0}
!75 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!79 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !80, i64 0, !81, i64 8, !86, i64 32, !8, i64 56, !47, i64 60, !91, i64 72, !91, i64 104, !91, i64 136, !91, i64 168, !91, i64 200, !91, i64 232, !91, i64 264, !8, i64 296}
!80 = !{!"double", !9, i64 0}
!81 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !82, i64 0}
!82 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !83, i64 0}
!83 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !84, i64 0}
!84 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !85, i64 0}
!85 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !9, i64 0, !48, i64 16}
!86 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !87, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!90 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !14, i64 0}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !92, i64 0, !32, i64 8, !9, i64 16}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!93 = !{!"_ZTSN8rawspeed12RawImageTypeE", !9, i64 0}
!94 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !95, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !97, i64 0, !99, i64 8}
!97 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !98, i64 0}
!98 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!99 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!100 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !101, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !102, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !103, i64 0}
!103 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !104, i64 0}
!104 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !105, i64 0}
!105 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !106, i64 0}
!106 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !14, i64 0}
!107 = !{!39, !93, i64 553}
!108 = !{!39, !8, i64 596}
!109 = !{!47, !8, i64 0}
!110 = !{!111, !8, i64 4}
!111 = !{!"_ZTSN8rawspeed23PanasonicV5Decompressor9PacketDscE", !8, i64 0, !8, i64 4}
!112 = !{!29, !32, i64 48}
!113 = !{!114, !116, !118}
!114 = distinct !{!114, !115, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj: argument 0"}
!115 = distinct !{!115, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj"}
!116 = distinct !{!116, !117, !"_ZNK8rawspeed10ByteStream10peekStreamEj: argument 0"}
!117 = distinct !{!117, !"_ZNK8rawspeed10ByteStream10peekStreamEj"}
!118 = distinct !{!118, !119, !"_ZNK8rawspeed10ByteStream10peekStreamEjj: argument 0"}
!119 = distinct !{!119, !"_ZNK8rawspeed10ByteStream10peekStreamEjj"}
!120 = !{!36, !37, i64 0}
!121 = !{!36, !37, i64 16}
!122 = !{!39, !8, i64 40}
!123 = !{!36, !37, i64 8}
!124 = !{!125, !127}
!125 = distinct !{!125, !126, !"_ZSt19__relocate_object_aIN8rawspeed23PanasonicV5Decompressor5BlockES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!126 = distinct !{!126, !"_ZSt19__relocate_object_aIN8rawspeed23PanasonicV5Decompressor5BlockES2_SaIS2_EEvPT_PT0_RT1_"}
!127 = distinct !{!127, !126, !"_ZSt19__relocate_object_aIN8rawspeed23PanasonicV5Decompressor5BlockES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!128 = distinct !{!128, !129}
!129 = !{!"llvm.loop.mustprogress"}
!130 = !{!131, !133, !135}
!131 = distinct !{!131, !132, !"_ZNK8rawspeed10ByteStream10peekStreamEj: argument 0"}
end_hunk_1
