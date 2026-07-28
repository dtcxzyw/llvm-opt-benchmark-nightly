inline.NumInlined: 344
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx
define hidden noundef zeroext i1 @_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx(ptr %0, i64 %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  store ptr %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4llvh20consumeSignedIntegerERNS_9StringRefEjRx(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ne i64 %i.c, 0
  %.0 = select i1 %i.b, i1 true, i1 %i.d
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh9StringRef12getAsIntegerEjRNS_5APIntE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 10 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !50
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc noundef i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.035 = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.promoted = load ptr, ptr %3, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.pr = phi i64 [ %i.d, %.preheader ], [ %i.i, %bb.e ] ; 4 uses
  %.promoted100 = phi ptr [ %.promoted, %.preheader ], [ %i.h, %bb.e ] ; 4 uses
  %i.f = load i8, ptr %.promoted100, align 1, !tbaa !15
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.promoted100, i64 1
  %i.i = add i64 %.pr, -1                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.d, !llvm.loop !62

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !63
  %i.m = icmp ult i32 %i.l, 65
  br i1 %i.m, label %_ZN4llvh5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh5APIntD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #20
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.h, %bb.g, %bb.f
  store i64 0, ptr %2, align 8
  store i32 64, ptr %i.k, align 8, !tbaa !63
  br label %bb.ak

.critedge:                                        ; preds = %bb.d, %.critedge
  %.039 = phi i32 [ %i.r, %.critedge ], [ 0, %bb.d ] ; 6 uses
  %i.p = shl nuw i32 1, %.039                     ; 2 uses
  %i.q = icmp ult i32 %i.p, %.035
  %i.r = add i32 %.039, 1
  br i1 %i.q, label %.critedge, label %bb.i, !llvm.loop !65

bb.i:                                             ; preds = %.critedge
  %i.s = icmp eq i32 %i.p, %.035                  ; 2 uses
  %i.t = trunc i64 %.pr to i32
  %i.u = mul i32 %.039, %i.t                      ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !63   ; 5 uses
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp ugt i32 %i.u, %i.w
  br i1 %i.y, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNK4llvh5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %i.u) #18
  %i.z = load i32, ptr %i.v, align 8, !tbaa !63
  %i.aa = icmp ult i32 %i.z, 65
  br i1 %i.aa, label %_ZN4llvh5APIntD2Ev.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN4llvh5APIntD2Ev.exit52, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #20
  br label %_ZN4llvh5APIntD2Ev.exit52

_ZN4llvh5APIntD2Ev.exit52:                        ; preds = %bb.m, %bb.l, %bb.k
  %i.ad = load i64, ptr %4, align 8
  store i64 %i.ad, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !63 ; 2 uses
  store i32 %i.af, ptr %i.v, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %_ZN4llvh5APIntD2Ev.exit52
  %i.ag = phi i32 [ %i.w, %bb.j ], [ %i.af, %_ZN4llvh5APIntD2Ev.exit52 ], [ %i.w, %bb.i ]
  %.037 = phi i32 [ %i.u, %bb.j ], [ %i.u, %_ZN4llvh5APIntD2Ev.exit52 ], [ %i.w, %bb.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !63
  store i64 0, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 1, ptr %i.ai, align 8, !tbaa !63
  store i64 0, ptr %6, align 8, !tbaa !15
  br i1 %i.s, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.aj = zext i32 %.035 to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 %.037, ptr %i.ak, align 8, !tbaa !63
  %i.al = icmp ult i32 %.037, 65
  br i1 %i.al, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i55, label %bb.p

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i55:       ; preds = %bb.o
  %i.am = sub nsw i32 0, %.037
  %i.an = and i32 %i.am, 63
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = lshr i64 -1, %i.ao
  %i.aq = and i64 %i.ap, %i.aj                    ; 2 uses
  store i64 %i.aq, ptr %7, align 8, !tbaa !15
  store i64 %i.aq, ptr %5, align 8
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !63
  store i32 %i.ar, ptr %i.ah, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.037, ptr %i.as, align 8, !tbaa !63
  store i64 0, ptr %8, align 8, !tbaa !15
  br label %_ZN4llvh5APIntD2Ev.exit58

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %7, i64 noundef %i.aj, i1 noundef zeroext false) #18
  %i.at = load i64, ptr %7, align 8
  store i64 %i.at, ptr %5, align 8
  %i.au = load i32, ptr %i.ak, align 8, !tbaa !63
  store i32 %i.au, ptr %i.ah, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.037, ptr %i.av, align 8, !tbaa !63
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef 0, i1 noundef zeroext false) #18
  br label %_ZN4llvh5APIntD2Ev.exit58

_ZN4llvh5APIntD2Ev.exit58:                        ; preds = %bb.p, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i55
  %i.aw = phi ptr [ %i.as, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i55 ], [ %i.av, %bb.p ] ; 2 uses
  %i.ax = load i64, ptr %8, align 8
  store i64 %i.ax, ptr %6, align 8
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !63 ; 2 uses
  store i32 %i.ay, ptr %i.ai, align 8, !tbaa !63
  store i32 0, ptr %i.aw, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pre = load i32, ptr %i.v, align 8, !tbaa !63
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit58, %bb.n
  %i.az = phi i32 [ %i.ay, %_ZN4llvh5APIntD2Ev.exit58 ], [ 1, %bb.n ] ; 5 uses
  %i.ba = phi i32 [ %.pre, %_ZN4llvh5APIntD2Ev.exit58 ], [ %i.ag, %bb.n ] ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 65
  br i1 %i.bb, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i59, label %bb.r

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i59:       ; preds = %bb.q
  store i64 0, ptr %2, align 8, !tbaa !15
  br label %.lr.ph

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %2, align 8, !tbaa !15
  store i64 0, ptr %i.bc, align 8, !tbaa !12
  %i.bd = load ptr, ptr %2, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = zext i32 %i.ba to i64
  %i.bg = add nuw nsw i64 %i.bf, 63
  %sh.diff.i = lshr i64 %i.bg, 3
  %9 = and i64 %sh.diff.i, 1073741816
  %10 = add nsw i64 %9, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %10, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i59
  %i.bh = zext nneg i32 %.039 to i64
  br i1 %i.s, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvh5APIntoREm.exit.us
  %i.bi = phi ptr [ %i.cr, %_ZN4llvh5APIntoREm.exit.us ], [ %.promoted100, %.lr.ph ] ; 2 uses
  %i.bj = phi i64 [ %i.cs, %_ZN4llvh5APIntoREm.exit.us ], [ %.pr, %.lr.ph ]
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !15  ; 6 uses
  %i.bl = icmp sgt i8 %i.bk, 47
  br i1 %i.bl, label %bb.s, label %.critedge44

bb.s:                                             ; preds = %.lr.ph.split.us
  %i.bm = icmp samesign ult i8 %i.bk, 58
  br i1 %i.bm, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp samesign ugt i8 %i.bk, 96
  br i1 %i.bn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = add nsw i8 %i.bk, -65
  %or.cond.us = icmp ult i8 %i.bo, 26
  br i1 %or.cond.us, label %bb.w, label %.critedge44

bb.v:                                             ; preds = %bb.t
  %i.bp = icmp samesign ult i8 %i.bk, 123
  br i1 %i.bp, label %bb.w, label %.critedge44

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u
  %.sink177 = phi i32 [ -87, %bb.v ], [ -55, %bb.u ], [ -48, %bb.s ]
  %i.bq = zext nneg i8 %i.bk to i32
  %i.br = add nsw i32 %.sink177, %i.bq            ; 3 uses
  %.not.us = icmp ult i32 %i.br, %.035
  br i1 %.not.us, label %bb.x, label %.critedge44

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr %i.v, align 8, !tbaa !63  ; 4 uses
  %i.bt = icmp ult i32 %i.bs, 65
  br i1 %i.bt, label %_ZN4llvh5APIntlSEj.exit.us.thread, label %_ZN4llvh5APIntlSEj.exit.us

_ZN4llvh5APIntlSEj.exit.us.thread:                ; preds = %bb.x
  %i.bu = icmp eq i32 %.039, %i.bs
  %i.bv = load i64, ptr %2, align 8
  %i.bw = shl i64 %i.bv, %i.bh
  %storemerge.i.us = select i1 %i.bu, i64 0, i64 %i.bw
  %i.bx = sub nsw i32 0, %i.bs
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i64 -1, %i.bz
  %i.cb = and i64 %storemerge.i.us, %i.ca
  store i64 %i.cb, ptr %2, align 8, !tbaa !15
  %i.cc = zext nneg i32 %i.br to i64
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i61.us

_ZN4llvh5APIntlSEj.exit.us:                       ; preds = %bb.x
  call void @_ZN4llvh5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %.039) #18
  %.pre152 = load i32, ptr %i.v, align 8, !tbaa !63 ; 2 uses
  %i.cd = zext nneg i32 %i.br to i64              ; 2 uses
  %i.ce = icmp ult i32 %.pre152, 65
  br i1 %i.ce, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i61.us, label %bb.y

bb.y:                                             ; preds = %_ZN4llvh5APIntlSEj.exit.us
  %i.cf = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !12
  %i.ch = or i64 %i.cg, %i.cd
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !12
  br label %_ZN4llvh5APIntoREm.exit.us

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i61.us:    ; preds = %_ZN4llvh5APIntlSEj.exit.us.thread, %_ZN4llvh5APIntlSEj.exit.us
  %i.ci = phi i64 [ %i.cc, %_ZN4llvh5APIntlSEj.exit.us.thread ], [ %i.cd, %_ZN4llvh5APIntlSEj.exit.us ]
  %i.cj = phi i32 [ %i.bs, %_ZN4llvh5APIntlSEj.exit.us.thread ], [ %.pre152, %_ZN4llvh5APIntlSEj.exit.us ]
  %i.ck = load i64, ptr %2, align 8, !tbaa !15
  %i.cl = or i64 %i.ck, %i.ci
  %i.cm = sub nsw i32 0, %i.cj
  %i.cn = and i32 %i.cm, 63
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = lshr i64 -1, %i.co
  %i.cq = and i64 %i.cl, %i.cp
  store i64 %i.cq, ptr %2, align 8, !tbaa !15
  br label %_ZN4llvh5APIntoREm.exit.us

_ZN4llvh5APIntoREm.exit.us:                       ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i61.us, %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.cs = add i64 %i.bj, -1                       ; 2 uses
  %.not138 = icmp eq i64 %i.cs, 0
  br i1 %.not138, label %.critedge44, label %.lr.ph.split.us, !llvm.loop !66

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvh5APIntaSEm.exit64
  %i.ct = phi ptr [ %i.ds, %_ZN4llvh5APIntaSEm.exit64 ], [ %.promoted100, %.lr.ph ] ; 2 uses
  %i.cu = phi i64 [ %i.dt, %_ZN4llvh5APIntaSEm.exit64 ], [ %.pr, %.lr.ph ]
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !15  ; 6 uses
  %i.cw = icmp sgt i8 %i.cv, 47
  br i1 %i.cw, label %bb.z, label %.critedge44.loopexit139

bb.z:                                             ; preds = %.lr.ph.split
  %i.cx = icmp samesign ult i8 %i.cv, 58
  br i1 %i.cx, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = icmp samesign ugt i8 %i.cv, 96
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = icmp samesign ult i8 %i.cv, 123
  br i1 %i.cz, label %bb.ad, label %.critedge44.loopexit139

bb.ac:                                            ; preds = %bb.aa
  %i.da = add nsw i8 %i.cv, -65
  %or.cond = icmp ult i8 %i.da, 26
  br i1 %or.cond, label %bb.ad, label %.critedge44.loopexit139

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %.sink178 = phi i32 [ -48, %bb.z ], [ -87, %bb.ab ], [ -55, %bb.ac ]
  %i.db = zext nneg i8 %i.cv to i32
  %i.dc = add nsw i32 %.sink178, %i.db            ; 2 uses
  %.not = icmp ult i32 %i.dc, %.035
  br i1 %.not, label %bb.ae, label %.critedge44.loopexit139

bb.ae:                                            ; preds = %bb.ad
  %i.dd = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntmLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %5) #18 ; 0 uses
  %i.de = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.df = load i32, ptr %i.ai, align 8, !tbaa !63 ; 3 uses
  %i.dg = icmp ult i32 %i.df, 65
  br i1 %i.dg, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i63, label %bb.af

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i63:       ; preds = %bb.ae
  %i.dh = sub nsw i32 0, %i.df
  %i.di = and i32 %i.dh, 63
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = lshr i64 -1, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  store i64 %i.dl, ptr %6, align 8, !tbaa !15
  br label %_ZN4llvh5APIntaSEm.exit64

bb.af:                                            ; preds = %bb.ae
  %i.dm = load ptr, ptr %6, align 8, !tbaa !15
  store i64 %i.de, ptr %i.dm, align 8, !tbaa !12
  %i.dn = load ptr, ptr %6, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = zext i32 %i.df to i64
  %i.dq = add nuw nsw i64 %i.dp, 63
  %sh.diff.i62 = lshr i64 %i.dq, 3
  %11 = and i64 %sh.diff.i62, 1073741816
  %12 = add nsw i64 %11, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.do, i8 0, i64 %12, i1 false)
  br label %_ZN4llvh5APIntaSEm.exit64

_ZN4llvh5APIntaSEm.exit64:                        ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i63, %bb.af
  %i.dr = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %6) #18 ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.dt = add i64 %i.cu, -1                       ; 2 uses
  %.not137 = icmp eq i64 %i.dt, 0
  br i1 %.not137, label %.critedge44.loopexit139, label %.lr.ph.split, !llvm.loop !66

.critedge44.loopexit139:                          ; preds = %bb.ab, %.lr.ph.split, %bb.ac, %bb.ad, %_ZN4llvh5APIntaSEm.exit64
  %.lcssa.ph142 = phi i1 [ false, %_ZN4llvh5APIntaSEm.exit64 ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %.lr.ph.split ], [ true, %bb.ab ]
  %.pre153 = load i32, ptr %i.ai, align 8, !tbaa !63
  br label %.critedge44

.critedge44:                                      ; preds = %_ZN4llvh5APIntoREm.exit.us, %bb.w, %bb.u, %.lr.ph.split.us, %bb.v, %.critedge44.loopexit139
  %i.du = phi i32 [ %.pre153, %.critedge44.loopexit139 ], [ %i.az, %bb.v ], [ %i.az, %.lr.ph.split.us ], [ %i.az, %bb.u ], [ %i.az, %bb.w ], [ %i.az, %_ZN4llvh5APIntoREm.exit.us ]
  %.lcssa = phi i1 [ %.lcssa.ph142, %.critedge44.loopexit139 ], [ false, %_ZN4llvh5APIntoREm.exit.us ], [ true, %bb.w ], [ true, %bb.u ], [ true, %.lr.ph.split.us ], [ true, %bb.v ]
  %i.dv = icmp ugt i32 %i.du, 64
  br i1 %i.dv, label %bb.ag, label %_ZN4llvh5APIntD2Ev.exit67

bb.ag:                                            ; preds = %.critedge44
  %i.dw = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN4llvh5APIntD2Ev.exit67, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.dw) #20
  br label %_ZN4llvh5APIntD2Ev.exit67

_ZN4llvh5APIntD2Ev.exit67:                        ; preds = %.critedge44, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.dy = load i32, ptr %i.ah, align 8, !tbaa !63
  %i.dz = icmp ugt i32 %i.dy, 64
  br i1 %i.dz, label %bb.ai, label %_ZN4llvh5APIntD2Ev.exit68

bb.ai:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit67
  %i.ea = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %_ZN4llvh5APIntD2Ev.exit68, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #20
  br label %_ZN4llvh5APIntD2Ev.exit68

_ZN4llvh5APIntD2Ev.exit68:                        ; preds = %_ZN4llvh5APIntD2Ev.exit67, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.c, %_ZN4llvh5APIntD2Ev.exit68, %_ZN4llvh5APIntD2Ev.exit
  %.3 = phi i1 [ %.lcssa, %_ZN4llvh5APIntD2Ev.exit68 ], [ false, %_ZN4llvh5APIntD2Ev.exit ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i1 %.3
}

declare void @_ZNK4llvh5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntmLERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh9StringRef11getAsDoubleERdb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 5 uses
  %4 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  call void @_ZN4llvh6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef 0.000000e+00) #18
  %i.b = tail call noundef nonnull align 1 ptr @_ZN4llvh11APFloatBase10IEEEdoubleEv() #21
  call void @_ZN4llvh7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %3, ptr noundef nonnull align 1 %i.b) #18
  call void @_ZN4llvh6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !12
  %i.c = call noundef i32 @_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef 0) #18 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 16
  %.not6 = icmp ne i32 %i.d, 0
  %or.cond.not = and i1 %2, %.not6
  br i1 %or.cond.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = tail call noundef nonnull align 1 ptr @_ZN4llvh11APFloatBase15PPCDoubleDoubleEv() #21, !inline_history !67
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.f = tail call noundef nonnull align 1 ptr @_ZN4llvh11APFloatBase15PPCDoubleDoubleEv() #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.i.i = select i1 %.not.i.i, ptr %i.i, ptr %i.a
  %i.j = call noundef double @_ZNK4llvh6detail9IEEEFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i) #18
  store double %i.j, ptr %1, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.c ]
  %.0 = phi i1 [ true, %._crit_edge ], [ false, %bb.c ]
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.k, %.pre-phi
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #18, !inline_history !70
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #18, !inline_history !70
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i1 %.0
}

declare noundef i32 @_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = tail call i64 @_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_(ptr noundef %0, ptr noundef %i.a)
  ret i64 %i.b
}

declare void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare void @_ZN4llvh5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvh6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24), double noundef) unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 1 ptr @_ZN4llvh11APFloatBase10IEEEdoubleEv() local_unnamed_addr #9

declare void @_ZN4llvh7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvh6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #10

declare noundef double @_ZNK4llvh6detail9IEEEFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 1 ptr @_ZN4llvh11APFloatBase15PPCDoubleDoubleEv() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N4llvh7APFloatESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.idx.i = shl i64 %i.d, 5                       ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i
  %i.g = tail call noundef nonnull align 1 ptr @_ZN4llvh11APFloatBase15PPCDoubleDoubleEv() #21
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_ZN4llvh7APFloatD2Ev.exit.i
  %i.h = phi ptr [ %i.i, %_ZN4llvh7APFloatD2Ev.exit.i ], [ %i.f, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #18, !inline_history !73
  br label %_ZN4llvh7APFloatD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #18, !inline_history !73
  br label %_ZN4llvh7APFloatD2Ev.exit.i

_ZN4llvh7APFloatD2Ev.exit.i:                      ; preds = %bb.e, %bb.d
  %i.l = icmp eq ptr %i.i, %i.b
  br i1 %i.l, label %_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit, label %bb.c

_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit: ; preds = %_ZN4llvh7APFloatD2Ev.exit.i, %bb.b
  %i.m = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.c, i64 noundef %i.m) #20, !inline_history !74
  br label %_ZNSt10unique_ptrIA_N4llvh7APFloatESt14default_deleteIS2_EED2Ev.exit

end_hunk_0
