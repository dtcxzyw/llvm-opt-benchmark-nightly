Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/fastlz?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@fastlz2_compress:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4194249, i8 -1, i64 %i.he, i1 false), !tbaa !19
  %scevgep298 = getelementptr i8, ptr %.4194249, i64 %i.hd
  %i.hf = urem i32 %i.hb, 255
  %scevgep299 = getelementptr i8, ptr %.2192, i64 2
  %scevgep300 = getelementptr i8, ptr %scevgep299, i64 %i.hd
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph252.preheader, %bb.af
  %.2192.pn.lcssa = phi ptr [ %.2192, %bb.af ], [ %scevgep298, %.lr.ph252.preheader ] ; 4 uses
  %.2.lcssa = phi i32 [ %i.gw, %bb.af ], [ %i.hf, %.lr.ph252.preheader ]
  %.4194.lcssa = phi ptr [ %.4194249, %bb.af ], [ %scevgep300, %.lr.ph252.preheader ]
  %i.hg = trunc nuw i32 %.2.lcssa to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.2192.pn.lcssa, i64 2
  store i8 %i.hg, ptr %.4194.lcssa, align 1, !tbaa !19
  %i.hi = getelementptr inbounds nuw i8, ptr %.2192.pn.lcssa, i64 3
  store i8 -1, ptr %i.hh, align 1, !tbaa !19
  %i.hj = lshr i32 %i.gm, 8
  %i.hk = trunc i32 %i.hj to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %.2192.pn.lcssa, i64 4
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !19
  %i.hm = trunc i32 %.0182240 to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %.2192.pn.lcssa, i64 5
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %._crit_edge, %bb.ab, %._crit_edge261
  %.5 = phi ptr [ %i.fu, %bb.ab ], [ %i.gl, %._crit_edge261 ], [ %i.gv, %bb.ae ], [ %i.hn, %._crit_edge ] ; 2 uses
  %i.ho = load i8, ptr %i.fh, align 1, !tbaa !19
  %i.hp = zext i8 %i.ho to i32
  %i.hq = getelementptr inbounds i8, ptr %.4199.fr, i64 -2 ; 3 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !19
  %i.hs = zext i8 %i.hr to i32                    ; 2 uses
  %i.ht = shl nuw nsw i32 %i.hs, 8
  %i.hu = or disjoint i32 %i.ht, %i.hp            ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %.4199.fr, i64 -1 ; 3 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !19
  %i.hx = zext i8 %i.hw to i32
  %i.hy = shl nuw nsw i32 %i.hx, 8
  %i.hz = or disjoint i32 %i.hy, %i.hs
  %i.ia = lshr i32 %i.hu, 3
  %i.ib = xor i32 %i.ia, %i.hz
  %i.ic = xor i32 %i.ib, %i.hu
  %i.id = and i32 %i.ic, 8191
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ie
  store ptr %i.fh, ptr %i.if, align 8, !tbaa !15
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !19
  %i.ih = zext i8 %i.ig to i32
  %i.ii = load i8, ptr %i.hv, align 1, !tbaa !19
  %i.ij = zext i8 %i.ii to i32                    ; 2 uses
  %i.ik = shl nuw nsw i32 %i.ij, 8
  %i.il = or disjoint i32 %i.ik, %i.ih            ; 2 uses
  %i.im = load i8, ptr %.4199.fr, align 1, !tbaa !19
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 8
  %i.ip = or disjoint i32 %i.io, %i.ij
  %i.iq = lshr i32 %i.il, 3
  %i.ir = xor i32 %i.iq, %i.ip
  %i.is = xor i32 %i.ir, %i.il
  %i.it = and i32 %i.is, 8191
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.iu
  store ptr %i.hq, ptr %i.iv, align 8, !tbaa !15
  %i.iw = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 31, ptr %.5, align 1, !tbaa !19
  br label %bb.aj, !llvm.loop !38

bb.ah:                                            ; preds = %bb.j, %bb.k, %bb.e, %bb.f, %bb.g, %bb.h
  %i.ix = getelementptr inbounds nuw i8, ptr %.1191267, i64 1 ; 2 uses
  store i8 %.pre308, ptr %.1191267, align 1, !tbaa !19
  %i.iy = add i32 %.0186270, 1                    ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 32
  br i1 %i.iz, label %bb.ai, label %bb.aj, !prof !12

bb.ai:                                            ; preds = %bb.ah
  %i.ja = getelementptr inbounds nuw i8, ptr %.1191267, i64 2
  store i8 31, ptr %i.ix, align 1, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %.5200 = phi ptr [ %i.hv, %bb.ag ], [ %i.bo, %bb.ai ], [ %i.bo, %bb.ah ] ; 3 uses
  %.7 = phi ptr [ %i.iw, %bb.ag ], [ %i.ja, %bb.ai ], [ %i.ix, %bb.ah ] ; 2 uses
  %.2188 = phi i32 [ 0, %bb.ag ], [ 0, %bb.ai ], [ %i.iy, %bb.ah ] ; 2 uses
  %i.jb = icmp ult ptr %.5200, %i.g
  br i1 %i.jb, label %.lr.ph272, label %._crit_edge273, !prof !22

._crit_edge273:                                   ; preds = %bb.aj, %middle.block
  %.1196.lcssa = phi ptr [ %i.au, %middle.block ], [ %.5200, %bb.aj ] ; 2 uses
  %.1191.lcssa = phi ptr [ %i.aw, %middle.block ], [ %.7, %bb.aj ] ; 2 uses
  %.0186.lcssa = phi i32 [ 2, %middle.block ], [ %.2188, %bb.aj ] ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  %.not277 = icmp ugt ptr %.1196.lcssa, %i.jc
  br i1 %.not277, label %._crit_edge283, label %.lr.ph282

.lr.ph282:                                        ; preds = %._crit_edge273, %bb.al
  %.3280 = phi i32 [ %.4, %bb.al ], [ %.0186.lcssa, %._crit_edge273 ]
  %.8279 = phi ptr [ %.9, %bb.al ], [ %.1191.lcssa, %._crit_edge273 ] ; 3 uses
  %.6201278 = phi ptr [ %i.jd, %bb.al ], [ %.1196.lcssa, %._crit_edge273 ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.6201278, i64 1 ; 2 uses
  %i.je = load i8, ptr %.6201278, align 1, !tbaa !19
  %i.jf = getelementptr inbounds nuw i8, ptr %.8279, i64 1 ; 2 uses
  store i8 %i.je, ptr %.8279, align 1, !tbaa !19
  %i.jg = add i32 %.3280, 1                       ; 2 uses
  %i.jh = icmp eq i32 %i.jg, 32
  br i1 %i.jh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph282
  %i.ji = getelementptr inbounds nuw i8, ptr %.8279, i64 2
  store i8 31, ptr %i.jf, align 1, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph282
  %.9 = phi ptr [ %i.ji, %bb.ak ], [ %i.jf, %.lr.ph282 ] ; 2 uses
  %.4 = phi i32 [ 0, %bb.ak ], [ %i.jg, %.lr.ph282 ] ; 2 uses
  %.not = icmp ugt ptr %i.jd, %i.jc
  br i1 %.not, label %._crit_edge283, label %.lr.ph282, !llvm.loop !39

._crit_edge283:                                   ; preds = %bb.al, %._crit_edge273
  %.8.lcssa = phi ptr [ %.1191.lcssa, %._crit_edge273 ], [ %.9, %bb.al ] ; 3 uses
  %.3.lcssa = phi i32 [ %.0186.lcssa, %._crit_edge273 ], [ %.4, %bb.al ] ; 3 uses
  %.not214 = icmp eq i32 %.3.lcssa, 0
  br i1 %.not214, label %bb.an, label %bb.am

bb.am:                                            ; preds = %._crit_edge283
  %i.jj = trunc i32 %.3.lcssa to i8
  %i.jk = add i8 %i.jj, -1
  %i.jl = zext i32 %.3.lcssa to i64
  %i.jm = sub nsw i64 0, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %.8.lcssa, i64 %i.jm
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -1
  store i8 %i.jk, ptr %i.jo, align 1, !tbaa !19
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge283
  %i.jp = getelementptr inbounds i8, ptr %.8.lcssa, i64 -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.10 = phi ptr [ %.8.lcssa, %bb.am ], [ %i.jp, %bb.an ]
  %i.jq = load i8, ptr %2, align 1, !tbaa !19
  %i.jr = or i8 %i.jq, 32
  store i8 %i.jr, ptr %2, align 1, !tbaa !19
  %i.js = ptrtoint ptr %.10 to i64
  %i.jt = ptrtoint ptr %2 to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = trunc i64 %i.ju to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.b, %bb.ao, %._crit_edge291
  %.0202 = phi i32 [ %i.ap, %._crit_edge291 ], [ %i.jv, %bb.ao ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.0202
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @fastlz_decompress(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 3 uses
  %i.b = lshr i8 %i.a, 5
  switch i8 %i.b, label %fastlz1_decompress.exit [
    i8 0, label %bb.b
    i8 1, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = and i8 %i.a, 31
  %i.i = zext nneg i8 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %.087.i = phi ptr [ %i.g, %bb.b ], [ %.592.i, %.loopexit.i ] ; 13 uses
  %.082.i = phi ptr [ %2, %bb.b ], [ %.5.i, %.loopexit.i ] ; 17 uses
  %.078.i = phi i32 [ %i.i, %bb.b ], [ %.4.i, %.loopexit.i ] ; 10 uses
  %.082.i118 = ptrtoaddr ptr %.082.i to i64
  %.087.i119 = ptrtoaddr ptr %.087.i to i64
  %i.j = icmp ugt i32 %.078.i, 31
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i32 %.078.i, 8
  %i.l = and i32 %i.k, 7936
  %i.m = lshr i32 %.078.i, 5
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  %i.o = icmp eq i32 %i.n, 6
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.087.i, i64 1
  %i.q = load i8, ptr %.087.i, align 1, !tbaa !19
  %i.r = zext i8 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, 6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.188.i = phi ptr [ %i.p, %bb.e ], [ %.087.i, %bb.d ] ; 3 uses
  %.073.i = phi i32 [ %i.s, %bb.e ], [ %i.n, %bb.d ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.188.i, i64 1 ; 3 uses
  %i.u = load i8, ptr %.188.i, align 1, !tbaa !19
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.l, %i.v               ; 3 uses
  %i.x = zext nneg i32 %.073.i to i64             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.082.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3 ; 2 uses
  %i.aa = icmp ugt ptr %i.z, %i.f
  br i1 %i.aa, label %fastlz1_decompress.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.ab = zext nneg i32 %i.w to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %.082.i, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %2
  br i1 %i.af, label %fastlz1_decompress.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp ult ptr %i.t, %i.d
  br i1 %i.ag, label %bb.i, label %bb.j, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.188.i, i64 2
  %i.ai = load i8, ptr %i.t, align 1, !tbaa !19
  %i.aj = zext i8 %i.ai to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.289.i = phi ptr [ %i.ah, %bb.i ], [ %i.t, %bb.h ] ; 7 uses
  %.179.i = phi i32 [ %i.aj, %bb.i ], [ %.078.i, %bb.h ] ; 7 uses
  %.176.i = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]    ; 7 uses
  %i.ak = icmp eq i32 %i.w, 0
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !19  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.082.i, i64 1 ; 2 uses
  store i8 %i.al, ptr %.082.i, align 1, !tbaa !19
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.082.i, i64 2
  store i8 %i.al, ptr %i.am, align 1, !tbaa !19
  %i.ao = getelementptr i8, ptr %.082.i, i64 3    ; 2 uses
  store i8 %i.al, ptr %i.an, align 1, !tbaa !19
  %.not103128.i = icmp eq i32 %.073.i, 0
  br i1 %.not103128.i, label %.loopexit.i, label %.lr.ph132.preheader.i

.lr.ph132.preheader.i:                            ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 %i.al, i64 %i.x, i1 false), !tbaa !19
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.aq = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %.082.i, i64 2
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !19
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %.082.i, i64 3 ; 6 uses
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !19
  %.not102121.i = icmp eq i32 %.073.i, 0
  br i1 %.not102121.i, label %.loopexit.i, label %iter.check100

iter.check100:                                    ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 5 uses
  %4 = zext i32 %.073.i to i64                    ; 5 uses
  %min.iters.check82 = icmp ult i32 %.073.i, 4
  %diff.check80 = icmp samesign ult i32 %i.w, 31
  %or.cond = select i1 %min.iters.check82, i1 true, i1 %diff.check80
  br i1 %or.cond, label %.lr.ph126.i.preheader, label %vector.main.loop.iter.check83

vector.main.loop.iter.check83:                    ; preds = %iter.check100
  %min.iters.check84 = icmp ult i32 %.073.i, 32
  br i1 %min.iters.check84, label %vec.epilog.ph104, label %vector.ph85

vector.ph85:                                      ; preds = %vector.main.loop.iter.check83
  %i.av = and i64 %4, 28
  %n.vec86 = and i64 %4, 4294967264               ; 6 uses
  %i.aw = trunc nuw i64 %n.vec86 to i32
  %i.ax = sub i32 %.073.i, %i.aw
  %i.ay = getelementptr i8, ptr %i.au, i64 %n.vec86
  %i.az = getelementptr i8, ptr %i.at, i64 %n.vec86 ; 2 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.ph85, %vector.body87
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next93, %vector.body87 ] ; 3 uses
  %next.gep89 = getelementptr i8, ptr %i.au, i64 %index88 ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.at, i64 %index88 ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load91 = load <16 x i8>, ptr %next.gep89, align 1, !tbaa !19
  %wide.load92 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !19
  %i.bb = getelementptr i8, ptr %next.gep90, i64 16
  store <16 x i8> %wide.load91, ptr %next.gep90, align 1, !tbaa !19
  store <16 x i8> %wide.load92, ptr %i.bb, align 1, !tbaa !19
  %index.next93 = add nuw i64 %index88, 32        ; 2 uses
  %i.bc = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.bc, label %middle.block94, label %vector.body87, !llvm.loop !40

middle.block94:                                   ; preds = %vector.body87
  %cmp.n95 = icmp eq i64 %n.vec86, %4
  br i1 %cmp.n95, label %.loopexit.i, label %vec.epilog.iter.check102

vec.epilog.iter.check102:                         ; preds = %middle.block94
  %min.epilog.iters.check103 = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check103, label %.lr.ph126.i.preheader, label %vec.epilog.ph104, !prof !56

vec.epilog.ph104:                                 ; preds = %vector.main.loop.iter.check83, %vec.epilog.iter.check102
  %vec.epilog.resume.val96 = phi i64 [ %n.vec86, %vec.epilog.iter.check102 ], [ 0, %vector.main.loop.iter.check83 ]
  %n.vec105 = and i64 %4, 4294967292              ; 5 uses
  %i.bd = trunc nuw i64 %n.vec105 to i32
  %i.be = sub i32 %.073.i, %i.bd
  %i.bf = getelementptr i8, ptr %i.au, i64 %n.vec105
  %i.bg = getelementptr i8, ptr %i.at, i64 %n.vec105 ; 2 uses
  br label %vec.epilog.vector.body106

vec.epilog.vector.body106:                        ; preds = %vec.epilog.vector.body106, %vec.epilog.ph104
  %index107 = phi i64 [ %vec.epilog.resume.val96, %vec.epilog.ph104 ], [ %index.next111, %vec.epilog.vector.body106 ] ; 3 uses
  %next.gep108 = getelementptr i8, ptr %i.au, i64 %index107
  %next.gep109 = getelementptr i8, ptr %i.at, i64 %index107
  %wide.load110 = load <4 x i8>, ptr %next.gep108, align 1, !tbaa !19
  store <4 x i8> %wide.load110, ptr %next.gep109, align 1, !tbaa !19
  %index.next111 = add nuw i64 %index107, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next111, %n.vec105
  br i1 %i.bh, label %vec.epilog.middle.block112, label %vec.epilog.vector.body106, !llvm.loop !41

vec.epilog.middle.block112:                       ; preds = %vec.epilog.vector.body106
  %cmp.n113 = icmp eq i64 %n.vec105, %4
  br i1 %cmp.n113, label %.loopexit.i, label %.lr.ph126.i.preheader

.lr.ph126.i.preheader:                            ; preds = %iter.check100, %vec.epilog.iter.check102, %vec.epilog.middle.block112
  %.2124.i.ph = phi i32 [ %.073.i, %iter.check100 ], [ %i.ax, %vec.epilog.iter.check102 ], [ %i.be, %vec.epilog.middle.block112 ] ; 4 uses
  %.074123.i.ph = phi ptr [ %i.au, %iter.check100 ], [ %i.ay, %vec.epilog.iter.check102 ], [ %i.bf, %vec.epilog.middle.block112 ] ; 2 uses
  %.284122.i.ph = phi ptr [ %i.at, %iter.check100 ], [ %i.az, %vec.epilog.iter.check102 ], [ %i.bg, %vec.epilog.middle.block112 ] ; 2 uses
  %i.bi = add i32 %.2124.i.ph, -1
  %xtraiter153 = and i32 %.2124.i.ph, 7           ; 2 uses
  %lcmp.mod154.not = icmp eq i32 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.lr.ph126.i.prol.loopexit, label %.lr.ph126.i.prol

.lr.ph126.i.prol:                                 ; preds = %.lr.ph126.i.preheader, %.lr.ph126.i.prol
  %.2124.i.prol = phi i32 [ %i.bm, %.lr.ph126.i.prol ], [ %.2124.i.ph, %.lr.ph126.i.preheader ]
  %.074123.i.prol = phi ptr [ %i.bj, %.lr.ph126.i.prol ], [ %.074123.i.ph, %.lr.ph126.i.preheader ] ; 2 uses
  %.284122.i.prol = phi ptr [ %i.bl, %.lr.ph126.i.prol ], [ %.284122.i.ph, %.lr.ph126.i.preheader ] ; 2 uses
  %prol.iter155 = phi i32 [ %prol.iter155.next, %.lr.ph126.i.prol ], [ 0, %.lr.ph126.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.074123.i.prol, i64 1 ; 2 uses
  %i.bk = load i8, ptr %.074123.i.prol, align 1, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %.284122.i.prol, i64 1 ; 3 uses
  store i8 %i.bk, ptr %.284122.i.prol, align 1, !tbaa !19
  %i.bm = add i32 %.2124.i.prol, -1               ; 2 uses
  %prol.iter155.next = add i32 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i32 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.lr.ph126.i.prol.loopexit, label %.lr.ph126.i.prol, !llvm.loop !42

.lr.ph126.i.prol.loopexit:                        ; preds = %.lr.ph126.i.prol, %.lr.ph126.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph126.i.preheader ], [ %i.bl, %.lr.ph126.i.prol ]
  %.2124.i.unr = phi i32 [ %.2124.i.ph, %.lr.ph126.i.preheader ], [ %i.bm, %.lr.ph126.i.prol ]
  %.074123.i.unr = phi ptr [ %.074123.i.ph, %.lr.ph126.i.preheader ], [ %i.bj, %.lr.ph126.i.prol ]
  %.284122.i.unr = phi ptr [ %.284122.i.ph, %.lr.ph126.i.preheader ], [ %i.bl, %.lr.ph126.i.prol ]
  %i.bn = icmp ult i32 %i.bi, 7
  br i1 %i.bn, label %.loopexit.i, label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %.lr.ph126.i.prol.loopexit, %.lr.ph126.i
  %.2124.i = phi i32 [ %i.cm, %.lr.ph126.i ], [ %.2124.i.unr, %.lr.ph126.i.prol.loopexit ]
  %.074123.i = phi ptr [ %i.cj, %.lr.ph126.i ], [ %.074123.i.unr, %.lr.ph126.i.prol.loopexit ] ; 9 uses
  %.284122.i = phi ptr [ %i.cl, %.lr.ph126.i ], [ %.284122.i.unr, %.lr.ph126.i.prol.loopexit ] ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.074123.i, i64 1
  %i.bp = load i8, ptr %.074123.i, align 1, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %.284122.i, i64 1
  store i8 %i.bp, ptr %.284122.i, align 1, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %.074123.i, i64 2
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %.284122.i, i64 2
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %.074123.i, i64 3
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %.284122.i, i64 3
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %.074123.i, i64 4
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %.284122.i, i64 4
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %.074123.i, i64 5
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %.284122.i, i64 5
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %.074123.i, i64 6
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %.284122.i, i64 6
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %.074123.i, i64 7
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %.284122.i, i64 7
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %.074123.i, i64 8
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %.284122.i, i64 8 ; 2 uses
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !19
  %i.cm = add i32 %.2124.i, -8                    ; 2 uses
  %.not102.i.7 = icmp eq i32 %i.cm, 0
  br i1 %.not102.i.7, label %.loopexit.i, label %.lr.ph126.i, !llvm.loop !43

bb.m:                                             ; preds = %bb.c
  %i.cn = add nuw nsw i32 %.078.i, 1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.082.i, i64 %i.co
  %i.cq = icmp ugt ptr %i.cp, %i.f
  %i.cr = getelementptr inbounds nuw i8, ptr %.087.i, i64 %i.co
  %i.cs = icmp ugt ptr %i.cr, %i.d
  %or.cond.i = select i1 %i.cq, i1 true, i1 %i.cs, !prof !58
  br i1 %or.cond.i, label %fastlz1_decompress.exit, label %bb.n, !prof !58

bb.n:                                             ; preds = %bb.m
  %i.ct = load i8, ptr %.087.i, align 1, !tbaa !19
  store i8 %i.ct, ptr %.082.i, align 1, !tbaa !19
  %.385113.i = getelementptr inbounds nuw i8, ptr %.082.i, i64 1 ; 4 uses
  %.390114.i = getelementptr inbounds nuw i8, ptr %.087.i, i64 1 ; 4 uses
  %.not115.i = icmp eq i32 %.078.i, 0
  br i1 %.not115.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.cu = zext nneg i32 %.078.i to i64            ; 2 uses
  %min.iters.check122 = icmp ult i32 %.078.i, 8
  %i.cv = sub i64 %.087.i119, %.082.i118
  %diff.check120 = icmp ugt i64 %i.cv, -8
  %or.cond138 = select i1 %min.iters.check122, i1 true, i1 %diff.check120
  br i1 %or.cond138, label %.lr.ph.i.preheader141, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph.i.preheader
  %n.vec124 = and i64 %i.cu, 24                   ; 6 uses
  %i.cw = getelementptr i8, ptr %.390114.i, i64 %n.vec124 ; 3 uses
  %i.cx = getelementptr i8, ptr %.385113.i, i64 %n.vec124 ; 2 uses
  %i.cy = trunc nuw nsw i64 %n.vec124 to i32
  %i.cz = sub nsw i32 %.078.i, %i.cy
  %i.da = getelementptr i8, ptr %.087.i, i64 5
  %wide.load129 = load <4 x i8>, ptr %.390114.i, align 1, !tbaa !19
  %wide.load130 = load <4 x i8>, ptr %i.da, align 1, !tbaa !19
  %i.db = getelementptr i8, ptr %.082.i, i64 5
  store <4 x i8> %wide.load129, ptr %.385113.i, align 1, !tbaa !19
  store <4 x i8> %wide.load130, ptr %i.db, align 1, !tbaa !19
  %i.dc = icmp eq i64 %n.vec124, 8
  br i1 %i.dc, label %middle.block132, label %vector.body125.1

vector.body125.1:                                 ; preds = %vector.ph123
  %next.gep127.1 = getelementptr i8, ptr %.087.i, i64 9
  %next.gep128.1 = getelementptr i8, ptr %.082.i, i64 9
  %i.dd = getelementptr i8, ptr %.087.i, i64 13
  %wide.load129.1 = load <4 x i8>, ptr %next.gep127.1, align 1, !tbaa !19
  %wide.load130.1 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !19
  %i.de = getelementptr i8, ptr %.082.i, i64 13
  store <4 x i8> %wide.load129.1, ptr %next.gep128.1, align 1, !tbaa !19
  store <4 x i8> %wide.load130.1, ptr %i.de, align 1, !tbaa !19
  %i.df = icmp eq i64 %n.vec124, 16
  br i1 %i.df, label %middle.block132, label %vector.body125.2

vector.body125.2:                                 ; preds = %vector.body125.1
  %next.gep127.2 = getelementptr i8, ptr %.087.i, i64 17
  %next.gep128.2 = getelementptr i8, ptr %.082.i, i64 17
  %i.dg = getelementptr i8, ptr %.087.i, i64 21
  %wide.load129.2 = load <4 x i8>, ptr %next.gep127.2, align 1, !tbaa !19
  %wide.load130.2 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !19
  %i.dh = getelementptr i8, ptr %.082.i, i64 21
  store <4 x i8> %wide.load129.2, ptr %next.gep128.2, align 1, !tbaa !19
  store <4 x i8> %wide.load130.2, ptr %i.dh, align 1, !tbaa !19
  br label %middle.block132

middle.block132:                                  ; preds = %vector.body125.2, %vector.body125.1, %vector.ph123
  %ind.escape133 = getelementptr i8, ptr %i.cw, i64 -1
  %cmp.n134 = icmp eq i64 %n.vec124, %i.cu
  br i1 %cmp.n134, label %._crit_edge.i, label %.lr.ph.i.preheader141

.lr.ph.i.preheader141:                            ; preds = %.lr.ph.i.preheader, %middle.block132
  %.390118.i.ph = phi ptr [ %.390114.i, %.lr.ph.i.preheader ], [ %i.cw, %middle.block132 ] ; 2 uses
  %.385117.i.ph = phi ptr [ %.385113.i, %.lr.ph.i.preheader ], [ %i.cx, %middle.block132 ] ; 2 uses
  %.280116.i.ph = phi i32 [ %.078.i, %.lr.ph.i.preheader ], [ %i.cz, %middle.block132 ] ; 4 uses
  %i.di = add nsw i32 %.280116.i.ph, -1
  %xtraiter150 = and i32 %.280116.i.ph, 7         ; 2 uses
  %lcmp.mod151.not = icmp eq i32 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader141, %.lr.ph.i.prol
  %.390118.i.prol = phi ptr [ %.390.i.prol, %.lr.ph.i.prol ], [ %.390118.i.ph, %.lr.ph.i.preheader141 ] ; 3 uses
  %.385117.i.prol = phi ptr [ %.385.i.prol, %.lr.ph.i.prol ], [ %.385117.i.ph, %.lr.ph.i.preheader141 ] ; 2 uses
  %.280116.i.prol = phi i32 [ %i.dk, %.lr.ph.i.prol ], [ %.280116.i.ph, %.lr.ph.i.preheader141 ]
  %prol.iter152 = phi i32 [ %prol.iter152.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader141 ]
  %i.dj = load i8, ptr %.390118.i.prol, align 1, !tbaa !19
  store i8 %i.dj, ptr %.385117.i.prol, align 1, !tbaa !19
  %i.dk = add nsw i32 %.280116.i.prol, -1         ; 2 uses
  %.385.i.prol = getelementptr inbounds nuw i8, ptr %.385117.i.prol, i64 1 ; 3 uses
  %.390.i.prol = getelementptr inbounds nuw i8, ptr %.390118.i.prol, i64 1 ; 3 uses
  %prol.iter152.next = add i32 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i32 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !44

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader141
  %.390118.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader141 ], [ %.390118.i.prol, %.lr.ph.i.prol ]
  %.385.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader141 ], [ %.385.i.prol, %.lr.ph.i.prol ]
  %.390.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader141 ], [ %.390.i.prol, %.lr.ph.i.prol ]
  %.390118.i.unr = phi ptr [ %.390118.i.ph, %.lr.ph.i.preheader141 ], [ %.390.i.prol, %.lr.ph.i.prol ]
  %.385117.i.unr = phi ptr [ %.385117.i.ph, %.lr.ph.i.preheader141 ], [ %.385.i.prol, %.lr.ph.i.prol ]
  %.280116.i.unr = phi i32 [ %.280116.i.ph, %.lr.ph.i.preheader141 ], [ %i.dk, %.lr.ph.i.prol ]
  %i.dl = icmp ult i32 %i.di, 7
  br i1 %i.dl, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.390118.i = phi ptr [ %.390.i.7, %.lr.ph.i ], [ %.390118.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %.385117.i = phi ptr [ %.385.i.7, %.lr.ph.i ], [ %.385117.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.280116.i = phi i32 [ %i.du, %.lr.ph.i ], [ %.280116.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.dm = load i8, ptr %.390118.i, align 1, !tbaa !19
  store i8 %i.dm, ptr %.385117.i, align 1, !tbaa !19
  %.385.i = getelementptr inbounds nuw i8, ptr %.385117.i, i64 1
  %.390.i = getelementptr inbounds nuw i8, ptr %.390118.i, i64 1
  %i.dn = load i8, ptr %.390.i, align 1, !tbaa !19
  store i8 %i.dn, ptr %.385.i, align 1, !tbaa !19
  %.385.i.1 = getelementptr inbounds nuw i8, ptr %.385117.i, i64 2
  %.390.i.1 = getelementptr inbounds nuw i8, ptr %.390118.i, i64 2
  %i.do = load i8, ptr %.390.i.1, align 1, !tbaa !19
  store i8 %i.do, ptr %.385.i.1, align 1, !tbaa !19
  %.385.i.2 = getelementptr inbounds nuw i8, ptr %.385117.i, i64 3
  %.390.i.2 = getelementptr inbounds nuw i8, ptr %.390118.i, i64 3
  %i.dp = load i8, ptr %.390.i.2, align 1, !tbaa !19
  store i8 %i.dp, ptr %.385.i.2, align 1, !tbaa !19
  %.385.i.3 = getelementptr inbounds nuw i8, ptr %.385117.i, i64 4
  %.390.i.3 = getelementptr inbounds nuw i8, ptr %.390118.i, i64 4
  %i.dq = load i8, ptr %.390.i.3, align 1, !tbaa !19
  store i8 %i.dq, ptr %.385.i.3, align 1, !tbaa !19
  %.385.i.4 = getelementptr inbounds nuw i8, ptr %.385117.i, i64 5
  %.390.i.4 = getelementptr inbounds nuw i8, ptr %.390118.i, i64 5
  %i.dr = load i8, ptr %.390.i.4, align 1, !tbaa !19
  store i8 %i.dr, ptr %.385.i.4, align 1, !tbaa !19
  %.385.i.5 = getelementptr inbounds nuw i8, ptr %.385117.i, i64 6
  %.390.i.5 = getelementptr inbounds nuw i8, ptr %.390118.i, i64 6
  %i.ds = load i8, ptr %.390.i.5, align 1, !tbaa !19
  store i8 %i.ds, ptr %.385.i.5, align 1, !tbaa !19
  %.385.i.6 = getelementptr inbounds nuw i8, ptr %.385117.i, i64 7
  %.390.i.6 = getelementptr inbounds nuw i8, ptr %.390118.i, i64 7
  %i.dt = load i8, ptr %.390.i.6, align 1, !tbaa !19
  store i8 %i.dt, ptr %.385.i.6, align 1, !tbaa !19
  %i.du = add nsw i32 %.280116.i, -8              ; 2 uses
  %.385.i.7 = getelementptr inbounds nuw i8, ptr %.385117.i, i64 8 ; 2 uses
  %.390.i.7 = getelementptr inbounds nuw i8, ptr %.390118.i, i64 8 ; 2 uses
  %.not.i.7 = icmp eq i32 %i.du, 0
  br i1 %.not.i.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !45

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %.390.i.6.le = getelementptr inbounds nuw i8, ptr %.390118.i, i64 7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.prol.loopexit, %middle.block132, %bb.n
  %.087.pn.lcssa.i = phi ptr [ %.087.i, %bb.n ], [ %ind.escape133, %middle.block132 ], [ %.390118.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.390.i.6.le, %._crit_edge.i.loopexit.unr-lcssa ]
  %.385.lcssa.i = phi ptr [ %.385113.i, %bb.n ], [ %i.cx, %middle.block132 ], [ %.385.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.385.i.7, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.390.lcssa.i = phi ptr [ %.390114.i, %bb.n ], [ %i.cw, %middle.block132 ], [ %.390.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.390.i.7, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %i.dv = icmp ult ptr %.390.lcssa.i, %i.d
  br i1 %i.dv, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.087.pn.lcssa.i, i64 2
  %i.dx = load i8, ptr %.390.lcssa.i, align 1, !tbaa !19
  %i.dy = zext i8 %i.dx to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph126.i.prol.loopexit, %.lr.ph126.i, %middle.block94, %vec.epilog.middle.block112, %bb.o, %bb.l, %.lr.ph132.preheader.i, %bb.k
  %.592.i = phi ptr [ %i.dw, %bb.o ], [ %.289.i, %bb.k ], [ %.289.i, %bb.l ], [ %.289.i, %.lr.ph132.preheader.i ], [ %.289.i, %middle.block94 ], [ %.289.i, %vec.epilog.middle.block112 ], [ %.289.i, %.lr.ph126.i ], [ %.289.i, %.lr.ph126.i.prol.loopexit ]
  %.5.i = phi ptr [ %.385.lcssa.i, %bb.o ], [ %i.ao, %bb.k ], [ %i.at, %bb.l ], [ %i.z, %.lr.ph132.preheader.i ], [ %i.az, %middle.block94 ], [ %i.bg, %vec.epilog.middle.block112 ], [ %.lcssa.unr, %.lr.ph126.i.prol.loopexit ], [ %i.cl, %.lr.ph126.i ] ; 2 uses
  %.4.i = phi i32 [ %i.dy, %bb.o ], [ %.179.i, %bb.k ], [ %.179.i, %bb.l ], [ %.179.i, %.lr.ph132.preheader.i ], [ %.179.i, %middle.block94 ], [ %.179.i, %vec.epilog.middle.block112 ], [ %.179.i, %.lr.ph126.i ], [ %.179.i, %.lr.ph126.i.prol.loopexit ]
  %.3.i = phi i32 [ 1, %bb.o ], [ %.176.i, %bb.k ], [ %.176.i, %bb.l ], [ %.176.i, %.lr.ph132.preheader.i ], [ %.176.i, %middle.block94 ], [ %.176.i, %vec.epilog.middle.block112 ], [ %.176.i, %.lr.ph126.i ], [ %.176.i, %.lr.ph126.i.prol.loopexit ]
  %.not104.i = icmp eq i32 %.3.i, 0
  br i1 %.not104.i, label %.thread.i, label %bb.c, !prof !59, !llvm.loop !46

.thread.i:                                        ; preds = %.loopexit.i, %._crit_edge.i
  %.5111.i = phi ptr [ %.5.i, %.loopexit.i ], [ %.385.lcssa.i, %._crit_edge.i ]
  %i.dz = ptrtoint ptr %.5111.i to i64
  %i.ea = ptrtoint ptr %2 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  br label %fastlz1_decompress.exit

bb.p:                                             ; preds = %bb.a
  %i.ed = sext i32 %1 to i64
  %i.ee = getelementptr inbounds i8, ptr %0, i64 %i.ed ; 3 uses
  %i.ef = sext i32 %3 to i64
  %i.eg = getelementptr inbounds i8, ptr %2, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ei = and i8 %i.a, 31
  %i.ej = zext nneg i8 %i.ei to i32
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.i17, %bb.p
  %.0104.i = phi ptr [ %i.eh, %bb.p ], [ %.8.i, %.loopexit.i17 ] ; 12 uses
  %.098.i = phi ptr [ %2, %bb.p ], [ %.7.i, %.loopexit.i17 ] ; 20 uses
  %.093.i = phi i32 [ %i.ej, %bb.p ], [ %.5.i18, %.loopexit.i17 ] ; 10 uses
  %.0104.i63 = ptrtoaddr ptr %.0104.i to i64
  %.098.i45 = ptrtoaddr ptr %.098.i to i64        ; 2 uses
  %i.ek = shl nuw nsw i32 %.093.i, 8
  %i.el = and i32 %i.ek, 7936                     ; 2 uses
  %i.em = icmp ugt i32 %.093.i, 31
  br i1 %i.em, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.en = lshr i32 %.093.i, 5
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  %i.ep = zext nneg i32 %i.el to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %.098.i, i64 %i.eq
  %i.es = icmp eq i32 %i.eo, 6
  br i1 %i.es, label %.preheader.i, label %.loopexit134.i

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.1105.i = phi ptr [ %i.et, %.preheader.i ], [ %.0104.i, %bb.r ] ; 2 uses
  %.085.i = phi i32 [ %i.ew, %.preheader.i ], [ 6, %bb.r ]
  %i.et = getelementptr inbounds nuw i8, ptr %.1105.i, i64 1 ; 2 uses
  %i.eu = load i8, ptr %.1105.i, align 1, !tbaa !19 ; 2 uses
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add i32 %.085.i, %i.ev                  ; 2 uses
  %i.ex = icmp eq i8 %i.eu, -1
  br i1 %i.ex, label %.preheader.i, label %.loopexit134.i, !llvm.loop !47

.loopexit134.i:                                   ; preds = %.preheader.i, %bb.r
  %.2106.i = phi ptr [ %.0104.i, %bb.r ], [ %i.et, %.preheader.i ] ; 4 uses
  %.186.i = phi i32 [ %i.eo, %bb.r ], [ %i.ew, %.preheader.i ] ; 10 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.2106.i, i64 1 ; 3 uses
  %i.ez = load i8, ptr %.2106.i, align 1, !tbaa !19 ; 2 uses
  %i.fa = zext i8 %i.ez to i64
  %i.fb = sub nsw i64 0, %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.er, i64 %i.fb ; 2 uses
  %i.fd = icmp eq i8 %i.ez, -1
  br i1 %i.fd, label %bb.s, label %bb.u, !prof !12

bb.s:                                             ; preds = %.loopexit134.i
  %i.fe = icmp eq i32 %i.el, 7936
  br i1 %i.fe, label %bb.t, label %bb.u, !prof !55

bb.t:                                             ; preds = %bb.s
  %i.ff = getelementptr inbounds nuw i8, ptr %.2106.i, i64 2
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !19
  %i.fh = zext i8 %i.fg to i64
  %.neg.i = mul nsw i64 %i.fh, -256
  %i.fi = getelementptr inbounds nuw i8, ptr %.2106.i, i64 3
  %i.fj = load i8, ptr %i.ff, align 1, !tbaa !19
  %i.fk = zext i8 %i.fj to i64
  %.neg121.i = sub nsw i64 %.neg.i, %i.fk
  %i.fl = getelementptr inbounds i8, ptr %.098.i, i64 %.neg121.i
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8191
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.loopexit134.i
  %.3107.i = phi ptr [ %i.fi, %bb.t ], [ %i.ey, %bb.s ], [ %i.ey, %.loopexit134.i ] ; 4 uses
  %.087.i20 = phi ptr [ %i.fm, %bb.t ], [ %i.fc, %bb.s ], [ %i.fc, %.loopexit134.i ] ; 6 uses
  %.087.i2046 = ptrtoaddr ptr %.087.i20 to i64
  %i.fn = zext i32 %.186.i to i64                 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.098.i, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 3
  %i.fq = icmp ugt ptr %i.fp, %i.eg
  br i1 %i.fq, label %fastlz1_decompress.exit, label %bb.v, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.fr = getelementptr inbounds i8, ptr %.087.i20, i64 -1 ; 2 uses
  %i.fs = icmp ult ptr %i.fr, %2
  br i1 %i.fs, label %fastlz1_decompress.exit, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.ft = icmp ult ptr %.3107.i, %i.ee
  br i1 %i.ft, label %bb.x, label %bb.y, !prof !55

bb.x:                                             ; preds = %bb.w
  %i.fu = getelementptr inbounds nuw i8, ptr %.3107.i, i64 1
  %i.fv = load i8, ptr %.3107.i, align 1, !tbaa !19
  %i.fw = zext i8 %i.fv to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.4108.i = phi ptr [ %i.fu, %bb.x ], [ %.3107.i, %bb.w ] ; 7 uses
  %.194.i = phi i32 [ %i.fw, %bb.x ], [ %.093.i, %bb.w ] ; 7 uses
  %.190.i = phi i32 [ 1, %bb.x ], [ 0, %bb.w ]    ; 7 uses
  %i.fx = icmp eq ptr %.087.i20, %.098.i
  %i.fy = load i8, ptr %i.fr, align 1, !tbaa !19  ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.098.i, i64 1 ; 2 uses
  store i8 %i.fy, ptr %.098.i, align 1, !tbaa !19
  br i1 %i.fx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %.098.i, i64 2
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !19
  %i.gb = getelementptr i8, ptr %.098.i, i64 3    ; 2 uses
  store i8 %i.fy, ptr %i.ga, align 1, !tbaa !19
  %.not123151.i = icmp eq i32 %.186.i, 0
  br i1 %.not123151.i, label %.loopexit.i17, label %.lr.ph155.preheader.i

.lr.ph155.preheader.i:                            ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gb, i8 %i.fy, i64 %i.fn, i1 false), !tbaa !19
  %scevgep.i = getelementptr i8, ptr %.098.i, i64 4
  %i.gc = add i32 %.186.i, -1
  %i.gd = zext i32 %i.gc to i64
  %scevgep163.i = getelementptr i8, ptr %scevgep.i, i64 %i.gd
  br label %.loopexit.i17

bb.aa:                                            ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %.087.i20, i64 1
  %i.gf = load i8, ptr %.087.i20, align 1, !tbaa !19
  %i.gg = getelementptr inbounds nuw i8, ptr %.098.i, i64 2
  store i8 %i.gf, ptr %i.fz, align 1, !tbaa !19
  %i.gh = load i8, ptr %i.ge, align 1, !tbaa !19
  %i.gi = getelementptr inbounds nuw i8, ptr %.098.i, i64 3 ; 6 uses
  store i8 %i.gh, ptr %i.gg, align 1, !tbaa !19
  %.not122144.i = icmp eq i32 %.186.i, 0
  br i1 %.not122144.i, label %.loopexit.i17, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %.087.i20, i64 2 ; 5 uses
  %5 = zext i32 %.186.i to i64                    ; 5 uses
  %min.iters.check = icmp ult i32 %.186.i, 4
  %i.gk = sub i64 %.098.i45, %.087.i2046
  %diff.check = icmp ult i64 %i.gk, 31
  %or.cond139 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond139, label %.lr.ph149.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i32 %.186.i, 32
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gl = and i64 %5, 28
  %n.vec = and i64 %5, 4294967264                 ; 6 uses
  %i.gm = trunc nuw i64 %n.vec to i32
  %i.gn = sub i32 %.186.i, %i.gm
  %i.go = getelementptr i8, ptr %i.gj, i64 %n.vec
  %i.gp = getelementptr i8, ptr %i.gi, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.gj, i64 %index ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.gi, i64 %index ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19
  %wide.load49 = load <16 x i8>, ptr %i.gq, align 1, !tbaa !19
  %i.gr = getelementptr i8, ptr %next.gep48, i64 16
  store <16 x i8> %wide.load, ptr %next.gep48, align 1, !tbaa !19
  store <16 x i8> %wide.load49, ptr %i.gr, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %.loopexit.i17, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph149.i.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %5, 4294967292               ; 5 uses
  %i.gt = trunc nuw i64 %n.vec52 to i32
  %i.gu = sub i32 %.186.i, %i.gt
  %i.gv = getelementptr i8, ptr %i.gj, i64 %n.vec52
  %i.gw = getelementptr i8, ptr %i.gi, i64 %n.vec52 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.gj, i64 %index53
  %next.gep55 = getelementptr i8, ptr %i.gi, i64 %index53
  %wide.load56 = load <4 x i8>, ptr %next.gep54, align 1, !tbaa !19
  store <4 x i8> %wide.load56, ptr %next.gep55, align 1, !tbaa !19
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
  %i.gx = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.gx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %n.vec52, %5
  br i1 %cmp.n58, label %.loopexit.i17, label %.lr.ph149.i.preheader

.lr.ph149.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3147.i.ph = phi i32 [ %.186.i, %iter.check ], [ %i.gn, %vec.epilog.iter.check ], [ %i.gu, %vec.epilog.middle.block ] ; 4 uses
  %.188146.i.ph = phi ptr [ %i.gj, %iter.check ], [ %i.go, %vec.epilog.iter.check ], [ %i.gv, %vec.epilog.middle.block ] ; 2 uses
  %.2100145.i.ph = phi ptr [ %i.gi, %iter.check ], [ %i.gp, %vec.epilog.iter.check ], [ %i.gw, %vec.epilog.middle.block ] ; 2 uses
  %i.gy = add i32 %.3147.i.ph, -1
  %xtraiter147 = and i32 %.3147.i.ph, 7           ; 2 uses
  %lcmp.mod148.not = icmp eq i32 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %.lr.ph149.i.prol.loopexit, label %.lr.ph149.i.prol

.lr.ph149.i.prol:                                 ; preds = %.lr.ph149.i.preheader, %.lr.ph149.i.prol
  %.3147.i.prol = phi i32 [ %i.hc, %.lr.ph149.i.prol ], [ %.3147.i.ph, %.lr.ph149.i.preheader ]
  %.188146.i.prol = phi ptr [ %i.gz, %.lr.ph149.i.prol ], [ %.188146.i.ph, %.lr.ph149.i.preheader ] ; 2 uses
  %.2100145.i.prol = phi ptr [ %i.hb, %.lr.ph149.i.prol ], [ %.2100145.i.ph, %.lr.ph149.i.preheader ] ; 2 uses
  %prol.iter149 = phi i32 [ %prol.iter149.next, %.lr.ph149.i.prol ], [ 0, %.lr.ph149.i.preheader ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.188146.i.prol, i64 1 ; 2 uses
  %i.ha = load i8, ptr %.188146.i.prol, align 1, !tbaa !19
  %i.hb = getelementptr inbounds nuw i8, ptr %.2100145.i.prol, i64 1 ; 3 uses
  store i8 %i.ha, ptr %.2100145.i.prol, align 1, !tbaa !19
  %i.hc = add i32 %.3147.i.prol, -1               ; 2 uses
  %prol.iter149.next = add i32 %prol.iter149, 1   ; 2 uses
  %prol.iter149.cmp.not = icmp eq i32 %prol.iter149.next, %xtraiter147
  br i1 %prol.iter149.cmp.not, label %.lr.ph149.i.prol.loopexit, label %.lr.ph149.i.prol, !llvm.loop !50

.lr.ph149.i.prol.loopexit:                        ; preds = %.lr.ph149.i.prol, %.lr.ph149.i.preheader
  %.lcssa146.unr = phi ptr [ poison, %.lr.ph149.i.preheader ], [ %i.hb, %.lr.ph149.i.prol ]
  %.3147.i.unr = phi i32 [ %.3147.i.ph, %.lr.ph149.i.preheader ], [ %i.hc, %.lr.ph149.i.prol ]
  %.188146.i.unr = phi ptr [ %.188146.i.ph, %.lr.ph149.i.preheader ], [ %i.gz, %.lr.ph149.i.prol ]
  %.2100145.i.unr = phi ptr [ %.2100145.i.ph, %.lr.ph149.i.preheader ], [ %i.hb, %.lr.ph149.i.prol ]
  %i.hd = icmp ult i32 %i.gy, 7
  br i1 %i.hd, label %.loopexit.i17, label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %.lr.ph149.i.prol.loopexit, %.lr.ph149.i
  %.3147.i = phi i32 [ %i.ic, %.lr.ph149.i ], [ %.3147.i.unr, %.lr.ph149.i.prol.loopexit ]
  %.188146.i = phi ptr [ %i.hz, %.lr.ph149.i ], [ %.188146.i.unr, %.lr.ph149.i.prol.loopexit ] ; 9 uses
  %.2100145.i = phi ptr [ %i.ib, %.lr.ph149.i ], [ %.2100145.i.unr, %.lr.ph149.i.prol.loopexit ] ; 9 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.188146.i, i64 1
  %i.hf = load i8, ptr %.188146.i, align 1, !tbaa !19
  %i.hg = getelementptr inbounds nuw i8, ptr %.2100145.i, i64 1
  store i8 %i.hf, ptr %.2100145.i, align 1, !tbaa !19
  %i.hh = getelementptr inbounds nuw i8, ptr %.188146.i, i64 2
  %i.hi = load i8, ptr %i.he, align 1, !tbaa !19
  %i.hj = getelementptr inbounds nuw i8, ptr %.2100145.i, i64 2
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !19
  %i.hk = getelementptr inbounds nuw i8, ptr %.188146.i, i64 3
  %i.hl = load i8, ptr %i.hh, align 1, !tbaa !19
  %i.hm = getelementptr inbounds nuw i8, ptr %.2100145.i, i64 3
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !19
  %i.hn = getelementptr inbounds nuw i8, ptr %.188146.i, i64 4
  %i.ho = load i8, ptr %i.hk, align 1, !tbaa !19
  %i.hp = getelementptr inbounds nuw i8, ptr %.2100145.i, i64 4
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !19
  %i.hq = getelementptr inbounds nuw i8, ptr %.188146.i, i64 5
  %i.hr = load i8, ptr %i.hn, align 1, !tbaa !19
  %i.hs = getelementptr inbounds nuw i8, ptr %.2100145.i, i64 5
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !19
  %i.ht = getelementptr inbounds nuw i8, ptr %.188146.i, i64 6
  %i.hu = load i8, ptr %i.hq, align 1, !tbaa !19
  %i.hv = getelementptr inbounds nuw i8, ptr %.2100145.i, i64 6
  store i8 %i.hu, ptr %i.hs, align 1, !tbaa !19
  %i.hw = getelementptr inbounds nuw i8, ptr %.188146.i, i64 7
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !19
  %i.hy = getelementptr inbounds nuw i8, ptr %.2100145.i, i64 7
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !19
  %i.hz = getelementptr inbounds nuw i8, ptr %.188146.i, i64 8
  %i.ia = load i8, ptr %i.hw, align 1, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %.2100145.i, i64 8 ; 2 uses
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !19
  %i.ic = add i32 %.3147.i, -8                    ; 2 uses
  %.not122.i.7 = icmp eq i32 %i.ic, 0
  br i1 %.not122.i.7, label %.loopexit.i17, label %.lr.ph149.i, !llvm.loop !51

bb.ab:                                            ; preds = %bb.q
  %i.id = add nuw nsw i32 %.093.i, 1
  %i.ie = zext nneg i32 %i.id to i64              ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.098.i, i64 %i.ie
  %i.ig = icmp ugt ptr %i.if, %i.eg
  %i.ih = getelementptr inbounds nuw i8, ptr %.0104.i, i64 %i.ie
  %i.ii = icmp ugt ptr %i.ih, %i.ee
  %or.cond.i12 = select i1 %i.ig, i1 true, i1 %i.ii, !prof !58
  br i1 %or.cond.i12, label %fastlz1_decompress.exit, label %bb.ac, !prof !58

bb.ac:                                            ; preds = %bb.ab
  %i.ij = load i8, ptr %.0104.i, align 1, !tbaa !19
  store i8 %i.ij, ptr %.098.i, align 1, !tbaa !19
  %.5103136.i = getelementptr inbounds nuw i8, ptr %.098.i, i64 1 ; 4 uses
  %.6110137.i = getelementptr inbounds nuw i8, ptr %.0104.i, i64 1 ; 4 uses
  %.not138.i = icmp eq i32 %.093.i, 0
  br i1 %.not138.i, label %._crit_edge.i15, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %bb.ac
  %i.ik = zext nneg i32 %.093.i to i64            ; 2 uses
  %min.iters.check65 = icmp ult i32 %.093.i, 8
  %i.il = sub i64 %.0104.i63, %.098.i45
  %diff.check64 = icmp ugt i64 %i.il, -8
  %or.cond140 = select i1 %min.iters.check65, i1 true, i1 %diff.check64
  br i1 %or.cond140, label %.lr.ph.i13.preheader142, label %vector.ph66

vector.ph66:                                      ; preds = %.lr.ph.i13.preheader
  %n.vec67 = and i64 %i.ik, 24                    ; 6 uses
  %i.im = getelementptr i8, ptr %.6110137.i, i64 %n.vec67 ; 3 uses
  %i.in = getelementptr i8, ptr %.5103136.i, i64 %n.vec67 ; 2 uses
  %i.io = trunc nuw nsw i64 %n.vec67 to i32
  %i.ip = sub nsw i32 %.093.i, %i.io
  %i.iq = getelementptr i8, ptr %.0104.i, i64 5
  %wide.load72 = load <4 x i8>, ptr %.6110137.i, align 1, !tbaa !19
  %wide.load73 = load <4 x i8>, ptr %i.iq, align 1, !tbaa !19
  %i.ir = getelementptr i8, ptr %.098.i, i64 5
  store <4 x i8> %wide.load72, ptr %.5103136.i, align 1, !tbaa !19
  store <4 x i8> %wide.load73, ptr %i.ir, align 1, !tbaa !19
  %i.is = icmp eq i64 %n.vec67, 8
  br i1 %i.is, label %middle.block75, label %vector.body68.1

vector.body68.1:                                  ; preds = %vector.ph66
  %next.gep70.1 = getelementptr i8, ptr %.0104.i, i64 9
  %next.gep71.1 = getelementptr i8, ptr %.098.i, i64 9
  %i.it = getelementptr i8, ptr %.0104.i, i64 13
  %wide.load72.1 = load <4 x i8>, ptr %next.gep70.1, align 1, !tbaa !19
  %wide.load73.1 = load <4 x i8>, ptr %i.it, align 1, !tbaa !19
  %i.iu = getelementptr i8, ptr %.098.i, i64 13
  store <4 x i8> %wide.load72.1, ptr %next.gep71.1, align 1, !tbaa !19
  store <4 x i8> %wide.load73.1, ptr %i.iu, align 1, !tbaa !19
  %i.iv = icmp eq i64 %n.vec67, 16
  br i1 %i.iv, label %middle.block75, label %vector.body68.2

vector.body68.2:                                  ; preds = %vector.body68.1
  %next.gep70.2 = getelementptr i8, ptr %.0104.i, i64 17
  %next.gep71.2 = getelementptr i8, ptr %.098.i, i64 17
  %i.iw = getelementptr i8, ptr %.0104.i, i64 21
  %wide.load72.2 = load <4 x i8>, ptr %next.gep70.2, align 1, !tbaa !19
  %wide.load73.2 = load <4 x i8>, ptr %i.iw, align 1, !tbaa !19
  %i.ix = getelementptr i8, ptr %.098.i, i64 21
  store <4 x i8> %wide.load72.2, ptr %next.gep71.2, align 1, !tbaa !19
  store <4 x i8> %wide.load73.2, ptr %i.ix, align 1, !tbaa !19
  br label %middle.block75

middle.block75:                                   ; preds = %vector.body68.2, %vector.body68.1, %vector.ph66
  %ind.escape = getelementptr i8, ptr %i.im, i64 -1
  %cmp.n76 = icmp eq i64 %n.vec67, %i.ik
  br i1 %cmp.n76, label %._crit_edge.i15, label %.lr.ph.i13.preheader142

.lr.ph.i13.preheader142:                          ; preds = %.lr.ph.i13.preheader, %middle.block75
  %.6110141.i.ph = phi ptr [ %.6110137.i, %.lr.ph.i13.preheader ], [ %i.im, %middle.block75 ] ; 2 uses
  %.5103140.i.ph = phi ptr [ %.5103136.i, %.lr.ph.i13.preheader ], [ %i.in, %middle.block75 ] ; 2 uses
  %.396139.i.ph = phi i32 [ %.093.i, %.lr.ph.i13.preheader ], [ %i.ip, %middle.block75 ] ; 4 uses
  %i.iy = add nsw i32 %.396139.i.ph, -1
  %xtraiter = and i32 %.396139.i.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i13.prol.loopexit, label %.lr.ph.i13.prol

.lr.ph.i13.prol:                                  ; preds = %.lr.ph.i13.preheader142, %.lr.ph.i13.prol
  %.6110141.i.prol = phi ptr [ %.6110.i.prol, %.lr.ph.i13.prol ], [ %.6110141.i.ph, %.lr.ph.i13.preheader142 ] ; 3 uses
  %.5103140.i.prol = phi ptr [ %.5103.i.prol, %.lr.ph.i13.prol ], [ %.5103140.i.ph, %.lr.ph.i13.preheader142 ] ; 2 uses
  %.396139.i.prol = phi i32 [ %i.ja, %.lr.ph.i13.prol ], [ %.396139.i.ph, %.lr.ph.i13.preheader142 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i13.prol ], [ 0, %.lr.ph.i13.preheader142 ]
  %i.iz = load i8, ptr %.6110141.i.prol, align 1, !tbaa !19
  store i8 %i.iz, ptr %.5103140.i.prol, align 1, !tbaa !19
  %i.ja = add nsw i32 %.396139.i.prol, -1         ; 2 uses
  %.5103.i.prol = getelementptr inbounds nuw i8, ptr %.5103140.i.prol, i64 1 ; 3 uses
  %.6110.i.prol = getelementptr inbounds nuw i8, ptr %.6110141.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i13.prol.loopexit, label %.lr.ph.i13.prol, !llvm.loop !52

.lr.ph.i13.prol.loopexit:                         ; preds = %.lr.ph.i13.prol, %.lr.ph.i13.preheader142
  %.6110141.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i13.preheader142 ], [ %.6110141.i.prol, %.lr.ph.i13.prol ]
  %.5103.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i13.preheader142 ], [ %.5103.i.prol, %.lr.ph.i13.prol ]
  %.6110.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i13.preheader142 ], [ %.6110.i.prol, %.lr.ph.i13.prol ]
  %.6110141.i.unr = phi ptr [ %.6110141.i.ph, %.lr.ph.i13.preheader142 ], [ %.6110.i.prol, %.lr.ph.i13.prol ]
  %.5103140.i.unr = phi ptr [ %.5103140.i.ph, %.lr.ph.i13.preheader142 ], [ %.5103.i.prol, %.lr.ph.i13.prol ]
  %.396139.i.unr = phi i32 [ %.396139.i.ph, %.lr.ph.i13.preheader142 ], [ %i.ja, %.lr.ph.i13.prol ]
  %i.jb = icmp ult i32 %i.iy, 7
  br i1 %i.jb, label %._crit_edge.i15, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.prol.loopexit, %.lr.ph.i13
  %.6110141.i = phi ptr [ %.6110.i.7, %.lr.ph.i13 ], [ %.6110141.i.unr, %.lr.ph.i13.prol.loopexit ] ; 10 uses
  %.5103140.i = phi ptr [ %.5103.i.7, %.lr.ph.i13 ], [ %.5103140.i.unr, %.lr.ph.i13.prol.loopexit ] ; 9 uses
  %.396139.i = phi i32 [ %i.jk, %.lr.ph.i13 ], [ %.396139.i.unr, %.lr.ph.i13.prol.loopexit ]
  %i.jc = load i8, ptr %.6110141.i, align 1, !tbaa !19
  store i8 %i.jc, ptr %.5103140.i, align 1, !tbaa !19
  %.5103.i = getelementptr inbounds nuw i8, ptr %.5103140.i, i64 1
  %.6110.i = getelementptr inbounds nuw i8, ptr %.6110141.i, i64 1
  %i.jd = load i8, ptr %.6110.i, align 1, !tbaa !19
  store i8 %i.jd, ptr %.5103.i, align 1, !tbaa !19
  %.5103.i.1 = getelementptr inbounds nuw i8, ptr %.5103140.i, i64 2
  %.6110.i.1 = getelementptr inbounds nuw i8, ptr %.6110141.i, i64 2
  %i.je = load i8, ptr %.6110.i.1, align 1, !tbaa !19
  store i8 %i.je, ptr %.5103.i.1, align 1, !tbaa !19
  %.5103.i.2 = getelementptr inbounds nuw i8, ptr %.5103140.i, i64 3
  %.6110.i.2 = getelementptr inbounds nuw i8, ptr %.6110141.i, i64 3
  %i.jf = load i8, ptr %.6110.i.2, align 1, !tbaa !19
  store i8 %i.jf, ptr %.5103.i.2, align 1, !tbaa !19
  %.5103.i.3 = getelementptr inbounds nuw i8, ptr %.5103140.i, i64 4
  %.6110.i.3 = getelementptr inbounds nuw i8, ptr %.6110141.i, i64 4
  %i.jg = load i8, ptr %.6110.i.3, align 1, !tbaa !19
  store i8 %i.jg, ptr %.5103.i.3, align 1, !tbaa !19
  %.5103.i.4 = getelementptr inbounds nuw i8, ptr %.5103140.i, i64 5
  %.6110.i.4 = getelementptr inbounds nuw i8, ptr %.6110141.i, i64 5
  %i.jh = load i8, ptr %.6110.i.4, align 1, !tbaa !19
end_hunk_0
