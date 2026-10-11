Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_encoding?download=true
inline.NumInlined: 3193
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm:bb.a
  %i.i = ptrtoint ptr %.pre to i64
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit: ; preds = %bb.a, %bb.e
  %i.j = phi ptr [ %.pre21, %bb.e ], [ null, %bb.a ] ; 2 uses
  %i.k = phi i64 [ %i.i, %bb.e ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.k, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.e
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit
  %i.q = icmp ugt i64 %i.o, %i.e
  br i1 %i.q, label %bb.g, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e
  store ptr %i.r, ptr %i.l, align 8, !tbaa !140
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1

bb.h:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = sub nuw i64 %i.e, %i.o
  tail call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.0.ptr.1, i64 noundef %i.s) #19
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1: ; preds = %bb.h, %bb.g, %bb.f
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !140
  %i.v = load ptr, ptr %.0.ptr.2, align 8, !tbaa !139 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.e
  br i1 %i.aa, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1
  %i.ab = icmp ugt i64 %i.z, %i.e
  br i1 %i.ab, label %bb.j, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.e
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !140
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2

bb.k:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1
  %i.ad = sub nuw i64 %i.e, %i.z
  tail call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.0.ptr.2, i64 noundef %i.ad) #19
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2: ; preds = %bb.k, %bb.j, %bb.i
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140
  %i.ag = load ptr, ptr %.0.ptr.3, align 8, !tbaa !139 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2                 ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.e
  br i1 %i.al, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2
  %i.am = icmp ugt i64 %i.ak, %i.e
  br i1 %i.am, label %bb.m, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.e
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !140
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3

bb.n:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2
  %i.ao = sub nuw i64 %i.e, %i.ak
  tail call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.0.ptr.3, i64 noundef %i.ao) #19
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3: ; preds = %bb.n, %bb.m, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.e
  br i1 %i.aw, label %bb.b, label %bb.c
}

declare void @_ZN3jxl11TreeSamples17PrepareForSamplesEm(ptr noundef nonnull align 8 dereferenceable(304), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl20PrecomputeReferencesERKNS_7ChannelEmRKNS_5ImageEjPS0_(ptr noundef nonnull align 8 dereferenceable(84) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i32, ptr %4, align 8, !tbaa !201
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !200
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.h = load i64, ptr %i.f, align 8, !tbaa !122
  %i.i = mul i64 %i.h, %.07.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 64) ]
  %i.k = load i32, ptr %4, align 8, !tbaa !201
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.j, i8 0, i64 %i.m, i1 false)
  %i.n = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !200
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, !llvm.loop !676

_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit:  ; preds = %bb.b, %bb.a, %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !97   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !122
  %i.v = lshr i64 %i.u, 2                         ; 2 uses
  %i.w = icmp sgt i32 %3, 0
  %i.x = icmp ne i64 %i.s, 0
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit
  %.06892 = add nsw i32 %3, -1
  %i.z = load ptr, ptr %2, align 8, !tbaa !85     ; 3 uses
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 76 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.not88 = icmp eq i64 %1, 0
  %i.ai = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 1)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = zext nneg i32 %.06892 to i64            ; 2 uses
  br i1 %.not88, label %.lr.ph95.split.us, label %.lr.ph95.split

.lr.ph95.split.us:                                ; preds = %.lr.ph95, %bb.g
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %bb.g ], [ %i.ak, %.lr.ph95 ] ; 3 uses
  %i.al = phi i64 [ %i.ca, %bb.g ], [ 0, %.lr.ph95 ]
  %.093.us = phi i32 [ %.1.us, %bb.g ], [ 0, %.lr.ph95 ] ; 5 uses
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %indvars.iv104 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !97
  %.not.us = icmp eq i64 %i.ao, %i.ad
  br i1 %.not.us, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph95.split.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !98
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !98
  %.not70.us = icmp eq i64 %i.aq, %i.ar
  br i1 %.not70.us, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.at = load i32, ptr %i.as, align 8, !tbaa !680
  %i.au = load i32, ptr %i.af, align 8, !tbaa !680
  %.not71.us = icmp eq i32 %i.at, %i.au
  br i1 %.not71.us, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !681
  %i.ax = load i32, ptr %i.ag, align 4, !tbaa !681
  %.not72.us = icmp eq i32 %i.aw, %i.ax
  br i1 %.not72.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !141 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !97 ; 3 uses
  %.not98 = icmp eq i64 %i.ba, 0
  br i1 %.not98, label %._crit_edge.split.us.us, label %.thread.us.us.peel

.thread.us.us.peel:                               ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !141 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 64) ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.al ; 5 uses
  %i.bd = load i32, ptr %i.az, align 64, !tbaa !27 ; 4 uses
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 false)
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !27
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 %i.bd, ptr %i.bi, align 4, !tbaa !27
  %exitcond102.peel.not = icmp eq i64 %i.ba, 1
  br i1 %exitcond102.peel.not, label %._crit_edge.split.us.us, label %.thread.us.us

.thread.us.us:                                    ; preds = %.thread.us.us.peel, %.thread.us.us
  %.06691.us.us = phi i64 [ %i.bx, %.thread.us.us ], [ 1, %.thread.us.us.peel ] ; 2 uses
  %.06790.us.us.pn = phi ptr [ %.06790.us.us, %.thread.us.us ], [ %i.bc, %.thread.us.us.peel ]
  %.06790.us.us = getelementptr inbounds nuw [4 x i8], ptr %.06790.us.us.pn, i64 %i.v ; 5 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.06691.us.us ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !27 ; 3 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = tail call i32 @llvm.abs.i32(i32 %i.bk, i1 false)
  store i32 %i.bm, ptr %.06790.us.us, align 4, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %.06790.us.us, i64 4
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !27
  %i.bo = getelementptr i8, ptr %i.bj, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !27
  %i.bq = sext i32 %i.bp to i64
  %i.br = sub nsw i64 %i.bl, %i.bq                ; 2 uses
  %i.bs = tail call noundef i64 @llvm.abs.i64(i64 %i.br, i1 true)
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.06790.us.us, i64 8
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !27
  %i.bv = trunc i64 %i.br to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %.06790.us.us, i64 12
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !27
  %i.bx = add nuw i64 %.06691.us.us, 1            ; 2 uses
  %exitcond102.not = icmp eq i64 %i.bx, %i.ba
  br i1 %exitcond102.not, label %._crit_edge.split.us.us, label %.thread.us.us, !llvm.loop !677

._crit_edge.split.us.us:                          ; preds = %.thread.us.us, %.thread.us.us.peel, %bb.f
  %i.by = add i32 %.093.us, 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.split.us.us, %bb.e, %bb.d, %bb.c, %.lr.ph95.split.us
  %.1.us = phi i32 [ %.093.us, %.lr.ph95.split.us ], [ %.093.us, %bb.c ], [ %.093.us, %bb.d ], [ %.093.us, %bb.e ], [ %i.by, %._crit_edge.split.us.us ] ; 2 uses
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, -1
  %i.bz = icmp sgt i64 %indvars.iv104, 0
  %i.ca = zext i32 %.1.us to i64                  ; 2 uses
  %i.cb = icmp ugt i64 %i.s, %i.ca
  %i.cc = select i1 %i.bz, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph95.split.us, label %._crit_edge96, !llvm.loop !678

._crit_edge96:                                    ; preds = %bb.l, %bb.g, %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit
  ret void

.lr.ph95.split:                                   ; preds = %.lr.ph95, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %i.ak, %.lr.ph95 ] ; 3 uses
  %i.cd = phi i64 [ %i.eo, %bb.l ], [ 0, %.lr.ph95 ]
  %.093 = phi i32 [ %.1, %bb.l ], [ 0, %.lr.ph95 ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %indvars.iv ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !97
  %.not = icmp eq i64 %i.cg, %i.ad
  br i1 %.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph95.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !98
  %i.cj = load i64, ptr %i.ae, align 8, !tbaa !98
  %.not70 = icmp eq i64 %i.ci, %i.cj
  br i1 %.not70, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !680
  %i.cm = load i32, ptr %i.af, align 8, !tbaa !680
  %.not71 = icmp eq i32 %i.cl, %i.cm
  br i1 %.not71, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 76
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !681
  %i.cp = load i32, ptr %i.ag, align 4, !tbaa !681
  %.not72 = icmp eq i32 %i.co, %i.cp
  br i1 %.not72, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !141 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !122 ; 2 uses
  %i.cu = mul i64 %i.ct, %1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cu ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cv, i64 64) ]
  %i.cw = mul i64 %i.ct, %i.ai
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cx, i64 64) ]
  %i.cy = load i64, ptr %i.aj, align 8, !tbaa !97 ; 3 uses
  %.not97 = icmp eq i64 %i.cy, 0
  br i1 %.not97, label %._crit_edge.split, label %.thread.peel

.thread.peel:                                     ; preds = %bb.k
  %i.cz = load ptr, ptr %i.ah, align 8, !tbaa !141 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cz, i64 64) ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cd ; 5 uses
  %i.db = load i32, ptr %i.cv, align 64, !tbaa !27 ; 3 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.db, i1 false)
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %i.db, ptr %i.de, align 4, !tbaa !27
  %i.df = load i32, ptr %i.cx, align 64, !tbaa !27
  %i.dg = sext i32 %i.df to i64
  %i.dh = sub nsw i64 %i.dc, %i.dg                ; 2 uses
  %i.di = tail call noundef i64 @llvm.abs.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw i64 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !27
  %i.dl = trunc i64 %i.dh to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !27
  %exitcond.peel.not = icmp eq i64 %i.cy, 1
  br i1 %exitcond.peel.not, label %._crit_edge.split, label %.thread

._crit_edge.split:                                ; preds = %.thread, %.thread.peel, %bb.k
  %i.dn = add i32 %.093, 4
  br label %bb.l

.thread:                                          ; preds = %.thread.peel, %.thread
  %.06691 = phi i64 [ %i.em, %.thread ], [ 1, %.thread.peel ] ; 3 uses
  %.06790.pn = phi ptr [ %.06790, %.thread ], [ %i.da, %.thread.peel ]
  %.06790 = getelementptr inbounds nuw [4 x i8], ptr %.06790.pn, i64 %i.v ; 5 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.06691 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !27 ; 3 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = tail call i32 @llvm.abs.i32(i32 %i.dp, i1 false)
  store i32 %i.dr, ptr %.06790, align 4, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %.06790, i64 4
  store i32 %i.dp, ptr %i.ds, align 4, !tbaa !27
  %i.dt = getelementptr i8, ptr %i.do, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !27 ; 3 uses
  %i.dv = getelementptr [4 x i8], ptr %i.cx, i64 %.06691 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !27 ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dv, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !27 ; 3 uses
  %.sroa.speculated77 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.du) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.dw) ; 2 uses
  %i.dz = add i32 %i.dw, %i.du
  %i.ea = sub i32 %i.dz, %i.dy
  %i.eb = icmp slt i32 %i.dy, %.sroa.speculated77
  %i.ec = select i1 %i.eb, i32 %.sroa.speculated, i32 %i.ea
  %i.ed = icmp sgt i32 %i.dy, %.sroa.speculated
  %i.ee = select i1 %i.ed, i32 %.sroa.speculated77, i32 %i.ec
  %i.ef = sext i32 %i.ee to i64
  %i.eg = sub nsw i64 %i.dq, %i.ef                ; 2 uses
  %i.eh = tail call noundef i64 @llvm.abs.i64(i64 %i.eg, i1 true)
  %i.ei = trunc nuw i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %.06790, i64 8
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !27
  %i.ek = trunc i64 %i.eg to i32
  %i.el = getelementptr inbounds nuw i8, ptr %.06790, i64 12
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !27
  %i.em = add nuw i64 %.06691, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.em, %i.cy
  br i1 %exitcond.not, label %._crit_edge.split, label %.thread, !llvm.loop !679

bb.l:                                             ; preds = %bb.j, %bb.i, %.lr.ph95.split, %bb.h, %._crit_edge.split
  %.1 = phi i32 [ %.093, %.lr.ph95.split ], [ %.093, %bb.h ], [ %.093, %bb.i ], [ %.093, %bb.j ], [ %i.dn, %._crit_edge.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.en = icmp sgt i64 %indvars.iv, 0
  %i.eo = zext i32 %.1 to i64                     ; 2 uses
  %i.ep = icmp ugt i64 %i.s, %i.eo
  %i.eq = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph95.split, label %._crit_edge96, !llvm.loop !678
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN3jxl12_GLOBAL__N_114GatherTreeDataERKNS_5ImageEimRKNS_8weighted6HeaderERKNS_14ModularOptionsERNS_11TreeSamplesEPmENK3$_1clEPKimm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [14 x i64], align 16              ; 5 uses
  %4 = alloca %"struct.jxl::PredictionResult", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load ptr, ptr %0, align 8, !tbaa !683, !nonnull !106
  %i.c = load i8, ptr %i.b, align 1, !tbaa !131, !range !105, !noundef !106
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !684, !nonnull !106, !align !206
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !685, !nonnull !106, !align !206
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !686, !nonnull !106, !align !206
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = trunc i64 %2 to i32
  %i.p = trunc i64 %3 to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !687, !nonnull !106, !align !206
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !688, !nonnull !106, !align !206
  call void @_ZN3jxl15PredictLearnAllEPNSt3__16vectorIiNS0_9allocatorIiEEEEmPKiliiRKNS_7ChannelEPNS_8weighted5StateEPl(ptr noundef nonnull %i.f, i64 noundef %i.j, ptr noundef %i.k, i64 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(84) %i.r, ptr noundef nonnull %i.t, ptr noundef nonnull %i.a) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !684, !nonnull !106, !align !206
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !685, !nonnull !106, !align !206
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !686, !nonnull !106, !align !206
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.ae = trunc i64 %2 to i32
  %i.af = trunc i64 %3 to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !689, !nonnull !106, !align !206
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !687, !nonnull !106, !align !206
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !688, !nonnull !106, !align !206
  call void @_ZN3jxl12PredictLearnEPNSt3__16vectorIiNS0_9allocatorIiEEEEmPKiliiNS_9PredictorERKNS_7ChannelEPNS_8weighted5StateE(ptr dead_on_unwind nonnull writable sret(%"struct.jxl::PredictionResult") align 8 %4, ptr noundef nonnull %i.v, i64 noundef %i.z, ptr noundef %i.aa, i64 noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(84) %i.am, ptr noundef nonnull %i.ao) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !143
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !689, !nonnull !106, !align !206
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !130
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.av
  store i64 %i.aq, ptr %i.aw, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !690, !nonnull !106, !align !206
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !118 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !33
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !691, !nonnull !106, !align !206 ; 2 uses
  %.val = load ptr, ptr %i.bd, align 8, !tbaa !145 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val14 = load ptr, ptr %i.be, align 8, !tbaa !146
  %i.bf = load i64, ptr %.val, align 8, !tbaa !33 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !33 ; 4 uses
  %i.bi = add i64 %i.bh, %i.bf
  store i64 %i.bh, ptr %.val, align 8, !tbaa !33
  %i.bj = shl i64 %i.bf, 23
  %i.bk = xor i64 %i.bj, %i.bf                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 18
  %i.bm = lshr i64 %i.bh, 5
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = xor i64 %i.bn, %i.bh
  %i.bp = xor i64 %i.bo, %i.bk
  store i64 %i.bp, ptr %i.bg, align 8, !tbaa !33
  %i.bq = lshr i64 %i.bi, 32
  %i.br = load i64, ptr %.val14, align 8, !tbaa !33
  %.not = icmp ugt i64 %i.bq, %i.br
  br i1 %.not, label %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !689, !nonnull !106, !align !206
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !27
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !684, !nonnull !106, !align !206
  call void @_ZN3jxl11TreeSamples9AddSampleElRKNSt3__16vectorIiNS1_9allocatorIiEEEEPKl(ptr noundef nonnull align 8 dereferenceable(304) %i.bt, i64 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull %i.a) #20
  br label %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit

_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit:   ; preds = %bb.e, %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !688, !nonnull !106, !align !206 ; 10 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !27
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !685, !nonnull !106, !align !206
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !97
  %i.ci = and i64 %3, 1
  %.not.i = icmp eq i64 %i.ci, 0                  ; 2 uses
  %i.cj = add i64 %i.ch, 2                        ; 2 uses
  %i.ck = select i1 %.not.i, i64 %i.cj, i64 0
  %i.cl = select i1 %.not.i, i64 0, i64 %i.cj     ; 4 uses
  %i.cm = shl nsw i64 %i.cd, 3                    ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !149
  %i.cp = sub nsw i64 %i.co, %i.cm
  %i.cq = trunc i64 %i.cp to i32
end_hunk_0
