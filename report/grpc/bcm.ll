Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@aes_nohw_cbc_encrypt:bb.a
bb.c:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cbc128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %.preheader51

.preheader51:                                     ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 15
  br i1 %i.b, label %.lr.ph, label %iter.check

.lr.ph:                                           ; preds = %.preheader51, %.lr.ph
  %.055 = phi ptr [ %.04553, %.lr.ph ], [ %4, %.preheader51 ] ; 2 uses
  %.04354 = phi ptr [ %i.i, %.lr.ph ], [ %0, %.preheader51 ] ; 3 uses
  %.04553 = phi ptr [ %i.j, %.lr.ph ], [ %1, %.preheader51 ] ; 8 uses
  %.04752 = phi i64 [ %i.h, %.lr.ph ], [ %2, %.preheader51 ]
  %.0.copyload.i.i = load i64, ptr %.04354, align 1
  %.0.copyload.i7.i = load i64, ptr %.055, align 1
  %i.c = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.c, ptr %.04553, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %.04553, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.04354, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.f, align 1
  %i.g = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.g, ptr %i.d, align 1
  tail call void %5(ptr noundef nonnull %.04553, ptr noundef nonnull %.04553, ptr noundef %3) #36
  %i.h = add i64 %.04752, -16                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.04354, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04553, i64 16 ; 2 uses
  %i.k = icmp ugt i64 %i.h, 15
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %iter.check

iter.check:                                       ; preds = %.preheader51, %._crit_edge
  %.0.lcssa77 = phi ptr [ %.04553, %._crit_edge ], [ %4, %.preheader51 ] ; 15 uses
  %.043.lcssa76 = phi ptr [ %i.i, %._crit_edge ], [ %0, %.preheader51 ] ; 8 uses
  %.045.lcssa75 = phi ptr [ %i.j, %._crit_edge ], [ %1, %.preheader51 ] ; 18 uses
  %.047.lcssa74 = phi i64 [ %i.h, %._crit_edge ], [ %2, %.preheader51 ] ; 14 uses
  %.045.lcssa7582 = ptrtoaddr ptr %.045.lcssa75 to i64 ; 3 uses
  %.0.lcssa7784 = ptrtoaddr ptr %.0.lcssa77 to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.047.lcssa74, 4
  br i1 %min.iters.check, label %.preheader50.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.043.lcssa7683 = ptrtoaddr ptr %.043.lcssa76 to i64
  %i.l = sub i64 %.043.lcssa7683, %.045.lcssa7582
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %.0.lcssa7784, %.045.lcssa7582
  %diff.check85 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check85
  br i1 %conflict.rdx, label %.preheader50.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check86 = icmp ult i64 %.047.lcssa74, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !80
  %wide.load87 = load <16 x i8>, ptr %i.o, align 1, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load88 = load <16 x i8>, ptr %i.p, align 1, !tbaa !80
  %wide.load89 = load <16 x i8>, ptr %i.q, align 1, !tbaa !80
  %i.r = xor <16 x i8> %wide.load88, %wide.load
  %i.s = xor <16 x i8> %wide.load89, %wide.load87
  %i.t = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !tbaa !80
  store <16 x i8> %i.s, ptr %i.u, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !395

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec90 = and i64 %.047.lcssa74, 12            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %index91
  %wide.load92 = load <4 x i8>, ptr %i.v, align 1, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %index91
  %wide.load93 = load <4 x i8>, ptr %i.w, align 1, !tbaa !80
  %i.x = xor <4 x i8> %wide.load93, %wide.load92
  %i.y = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %index91
  store <4 x i8> %i.x, ptr %i.y, align 1, !tbaa !80
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next94, %n.vec90
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !396

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %.047.lcssa74, %n.vec90
  br i1 %cmp.n95, label %iter.check112, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.04159.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec90, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.047.lcssa74, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader50.prol.loopexit, label %.preheader50.prol

.preheader50.prol:                                ; preds = %.preheader50.preheader, %.preheader50.prol
  %.04159.prol = phi i64 [ %i.ag, %.preheader50.prol ], [ %.04159.ph, %.preheader50.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader50.prol ], [ 0, %.preheader50.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %.04159.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.04159.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !80
  %i.ae = xor i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.04159.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !80
  %i.ag = add nuw nsw i64 %.04159.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader50.prol.loopexit, label %.preheader50.prol, !llvm.loop !397

.preheader50.prol.loopexit:                       ; preds = %.preheader50.prol, %.preheader50.preheader
  %.04159.unr = phi i64 [ %.04159.ph, %.preheader50.preheader ], [ %i.ag, %.preheader50.prol ]
  %i.ah = sub nsw i64 %.04159.ph, %.047.lcssa74
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %iter.check112, label %.preheader50

.preheader50:                                     ; preds = %.preheader50.prol.loopexit, %.preheader50
  %.04159 = phi i64 [ %i.bk, %.preheader50 ], [ %.04159.unr, %.preheader50.prol.loopexit ] ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %.04159
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.04159
  %i.am = load i8, ptr %i.al, align 1, !tbaa !80
  %i.an = xor i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.04159
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !80
  %i.ap = add nuw nsw i64 %.04159, 1              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1, !tbaa !80
  %i.au = xor i8 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.ap
  store i8 %i.au, ptr %i.av, align 1, !tbaa !80
  %i.aw = add nuw nsw i64 %.04159, 2              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !80
  %i.bb = xor i8 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.aw
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !80
  %i.bd = add nuw nsw i64 %.04159, 3              ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !80
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.bd
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !80
  %i.bk = add nuw nsw i64 %.04159, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bk, %.047.lcssa74
  br i1 %exitcond.not.3, label %iter.check112, label %.preheader50, !llvm.loop !398

iter.check112:                                    ; preds = %.preheader50.prol.loopexit, %.preheader50, %vec.epilog.middle.block
  %i.bl = sub nuw nsw i64 16, %.047.lcssa74       ; 2 uses
  %min.iters.check98 = icmp ugt i64 %.047.lcssa74, 8
  %i.bm = sub i64 %.0.lcssa7784, %.045.lcssa7582
  %diff.check97 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check98, i1 true, i1 %diff.check97
  br i1 %or.cond, label %.lr.ph61.preheader, label %vec.epilog.ph116

vec.epilog.ph116:                                 ; preds = %iter.check112
  %n.vec117 = and i64 %i.bl, 24                   ; 3 uses
  %i.bn = add nuw nsw i64 %.047.lcssa74, %n.vec117
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.047.lcssa74
  %wide.load120 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !80
  %i.bp = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.047.lcssa74
  store <8 x i8> %wide.load120, ptr %i.bp, align 1, !tbaa !80
  %i.bq = icmp eq i64 %n.vec117, 8
  br i1 %i.bq, label %vec.epilog.middle.block122, label %vec.epilog.vector.body118.1

vec.epilog.vector.body118.1:                      ; preds = %vec.epilog.ph116
  %i.br = add nuw nsw i64 %.047.lcssa74, 8        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.br
  %wide.load120.1 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.br
  store <8 x i8> %wide.load120.1, ptr %i.bt, align 1, !tbaa !80
  br label %vec.epilog.middle.block122

vec.epilog.middle.block122:                       ; preds = %vec.epilog.vector.body118.1, %vec.epilog.ph116
  %cmp.n123 = icmp eq i64 %i.bl, %n.vec117
  br i1 %cmp.n123, label %._crit_edge62, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %iter.check112, %vec.epilog.middle.block122
  %.14260.ph = phi i64 [ %.047.lcssa74, %iter.check112 ], [ %i.bn, %vec.epilog.middle.block122 ] ; 4 uses
  %i.bu = sub i64 0, %.14260.ph
  %xtraiter127 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader, %.lr.ph61.prol
  %.14260.prol = phi i64 [ %i.by, %.lr.ph61.prol ], [ %.14260.ph, %.lr.ph61.preheader ] ; 3 uses
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph61.prol ], [ 0, %.lr.ph61.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.14260.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.14260.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !80
  %i.by = add i64 %.14260.prol, 1                 ; 2 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol, !llvm.loop !399

.lr.ph61.prol.loopexit:                           ; preds = %.lr.ph61.prol, %.lr.ph61.preheader
  %.14260.unr = phi i64 [ %.14260.ph, %.lr.ph61.preheader ], [ %i.by, %.lr.ph61.prol ]
  %i.bz = add i64 %.14260.ph, -13
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61
  %.14260 = phi i64 [ %i.cq, %.lr.ph61 ], [ %.14260.unr, %.lr.ph61.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.14260
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.14260
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !80
  %i.ce = add i64 %.14260, 1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !80
  %i.ci = add i64 %.14260, 2                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !80
  %i.cm = add i64 %.14260, 3                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !80
  %i.cq = add i64 %.14260, 4                      ; 2 uses
  %exitcond67.not.3 = icmp eq i64 %i.cq, 16
  br i1 %exitcond67.not.3, label %._crit_edge62, label %.lr.ph61, !llvm.loop !400

._crit_edge62:                                    ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61, %vec.epilog.middle.block122
  tail call void %5(ptr noundef nonnull %.045.lcssa75, ptr noundef nonnull %.045.lcssa75, ptr noundef %3) #36
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge62, %._crit_edge
  %.2 = phi ptr [ %.045.lcssa75, %._crit_edge62 ], [ %.04553, %._crit_edge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.2, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.d = icmp ugt ptr %0, inttoptr (i64 31 to ptr)
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -32
  %.not = icmp uge i64 %i.g, %i.e
  %or.cond.not94 = and i1 %i.d, %.not
  %i.h = icmp ult ptr %0, %1
  %or.cond90 = or i1 %i.h, %or.cond.not94
  %i.i = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %or.cond90, label %.preheader95, label %.preheader96

.preheader96:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.preheader, label %iter.check

.lr.ph.preheader:                                 ; preds = %.preheader96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph

.preheader95:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %.preheader95, %.lr.ph108
  %.070107 = phi ptr [ %i.q, %.lr.ph108 ], [ %0, %.preheader95 ] ; 4 uses
  %.071106 = phi ptr [ %.070107, %.lr.ph108 ], [ %4, %.preheader95 ] ; 2 uses
  %.075105 = phi ptr [ %i.r, %.lr.ph108 ], [ %1, %.preheader95 ] ; 5 uses
  %.080104 = phi i64 [ %i.p, %.lr.ph108 ], [ %2, %.preheader95 ]
  tail call void %5(ptr noundef %.070107, ptr noundef %.075105, ptr noundef %3) #36
  %.0.copyload.i.i = load i64, ptr %.075105, align 1
  %.0.copyload.i7.i = load i64, ptr %.071106, align 1
  %i.l = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.l, ptr %.075105, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.075105, i64 8 ; 2 uses
  %.0.copyload.i.1.i = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.071106, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.o, ptr %i.m, align 1
  %i.p = add i64 %.080104, -16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.070107, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.075105, i64 16 ; 2 uses
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %.lr.ph108, label %._crit_edge, !llvm.loop !401

._crit_edge:                                      ; preds = %.lr.ph108, %.preheader95
  %.080.lcssa = phi i64 [ %2, %.preheader95 ], [ %i.p, %.lr.ph108 ]
  %.075.lcssa = phi ptr [ %1, %.preheader95 ], [ %i.r, %.lr.ph108 ]
  %.071.lcssa = phi ptr [ %4, %.preheader95 ], [ %.070107, %.lr.ph108 ]
  %.070.lcssa = phi ptr [ %0, %.preheader95 ], [ %i.q, %.lr.ph108 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.071.lcssa, i64 16, i1 false)
  br label %.loopexit97

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1101 = phi ptr [ %i.y, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.176100 = phi ptr [ %i.z, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.18199 = phi i64 [ %i.x, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  call void %5(ptr noundef %.1101, ptr noundef nonnull %i.b, ptr noundef %3) #36
  %.0.copyload.i = load i64, ptr %.1101, align 1
  %.0.copyload.i91 = load i64, ptr %i.b, align 16
  %.0.copyload.i92 = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i92, %.0.copyload.i91
  store i64 %i.t, ptr %.176100, align 1
  store i64 %.0.copyload.i, ptr %4, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.1101, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.176100, i64 8
  %.0.copyload.i91.1 = load i64, ptr %i.j, align 8
  %.0.copyload.i92.1 = load i64, ptr %i.k, align 1
  %i.w = xor i64 %.0.copyload.i92.1, %.0.copyload.i91.1
  store i64 %i.w, ptr %i.v, align 1
  store i64 %.0.copyload.i.1, ptr %i.k, align 1
  %i.x = add i64 %.18199, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1101, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.176100, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %.lr.ph, label %.loopexit97, !llvm.loop !402

.loopexit97:                                      ; preds = %.lr.ph, %._crit_edge
  %.282 = phi i64 [ %.080.lcssa, %._crit_edge ], [ %i.x, %.lr.ph ] ; 2 uses
  %.277 = phi ptr [ %.075.lcssa, %._crit_edge ], [ %i.z, %.lr.ph ]
  %.2 = phi ptr [ %.070.lcssa, %._crit_edge ], [ %i.y, %.lr.ph ]
  %.not87 = icmp eq i64 %.282, 0
  br i1 %.not87, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader96, %.loopexit97
  %.2134 = phi ptr [ %.2, %.loopexit97 ], [ %0, %.preheader96 ] ; 17 uses
  %.277133 = phi ptr [ %.277, %.loopexit97 ], [ %1, %.preheader96 ] ; 9 uses
  %.282132 = phi i64 [ %.282, %.loopexit97 ], [ %2, %.preheader96 ] ; 21 uses
  %.2134195 = ptrtoaddr ptr %.2134 to i64
  call void %5(ptr noundef %.2134, ptr noundef nonnull %i.b, ptr noundef %3) #36
  %i.ab = sub nuw nsw i64 17, %.282132            ; 4 uses
  %min.iters.check = icmp ult i64 %.282132, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = getelementptr i8, ptr %.277133, i64 %.282132 ; 3 uses
  %i.ad = getelementptr i8, ptr %4, i64 %.282132  ; 3 uses
  %i.ae = getelementptr i8, ptr %.2134, i64 %.282132 ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %.282132 ; 2 uses
  %bound0 = icmp ult ptr %.277133, %i.ad
  %bound1 = icmp ult ptr %4, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %.277133, %i.ae
  %bound1164 = icmp ult ptr %.2134, %i.ac
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %bound0166 = icmp ult ptr %.277133, %i.af
  %bound1167 = icmp ult ptr %i.b, %i.ac
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  %bound0170 = icmp ult ptr %4, %i.ae
  %bound1171 = icmp ult ptr %.2134, %i.ad
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %4, %i.af
  %bound1175 = icmp ult ptr %i.b, %i.ad
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  br i1 %conflict.rdx177, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check178 = icmp ult i64 %.282132, 32
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %.282132, 28
  %n.vec = and i64 %.282132, -32                  ; 5 uses
  %i.ah = or disjoint i64 %i.ab, %n.vec           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.2134, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !80, !alias.scope !415
  %wide.load179 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !80, !alias.scope !415
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load180 = load <16 x i8>, ptr %i.ak, align 16, !tbaa !80, !alias.scope !416
  %wide.load181 = load <16 x i8>, ptr %i.al, align 16, !tbaa !80, !alias.scope !416
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load182 = load <16 x i8>, ptr %i.am, align 1, !tbaa !80, !alias.scope !417, !noalias !418
  %wide.load183 = load <16 x i8>, ptr %i.an, align 1, !tbaa !80, !alias.scope !417, !noalias !418
  %i.ao = xor <16 x i8> %wide.load182, %wide.load180
  %i.ap = xor <16 x i8> %wide.load183, %wide.load181
  %i.aq = getelementptr inbounds nuw i8, ptr %.277133, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !80, !alias.scope !419, !noalias !420
end_hunk_0
begin_hunk_1_@CRYPTO_cbc128_decrypt:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %.274114.prol
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !80
  %i.cd = add nuw nsw i64 %.274114.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter228
  br i1 %prol.iter.cmp.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol, !llvm.loop !412

.lr.ph115.prol.loopexit:                          ; preds = %.lr.ph115.prol, %.lr.ph115.preheader
  %.274114.unr = phi i64 [ %.274114.ph, %.lr.ph115.preheader ], [ %i.cd, %.lr.ph115.prol ]
  %i.ce = sub i64 %.274114.ph, %indvars.iv.lcssa
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %.loopexit, label %.lr.ph115

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.173113 = phi i64 [ %i.cx, %vec.epilog.scalar.ph ], [ %.173113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.2134, i64 %.173113
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %.173113
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !80
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %.173113 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !80
  %i.cm = xor i8 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %.277133, i64 %.173113
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !80
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !80
  %i.co = add nuw nsw i64 %.173113, 1             ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.co
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %i.co ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !80
  %i.cv = xor i8 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.277133, i64 %i.co
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !80
  store i8 %i.cq, ptr %i.ct, align 1, !tbaa !80
  %i.cx = add nuw nsw i64 %.173113, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cx, %.282132
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  br i1 %exitcond.not.1, label %iter.check209.loopexit.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !413

.lr.ph115:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115
  %.274114 = phi i64 [ %i.dn, %.lr.ph115 ], [ %.274114.unr, %.lr.ph115.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2134, i64 %.274114
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !80
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %.274114
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !80
  %i.db = add nuw nsw i64 %.274114, 1             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !80
  %i.df = add nuw nsw i64 %.274114, 2             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !80
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !80
  %i.dj = add nuw nsw i64 %.274114, 3             ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !80
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !80
  %i.dn = add nuw nsw i64 %.274114, 4             ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %i.dn, %indvars.iv.lcssa
  br i1 %exitcond123.not.3, label %.loopexit, label %.lr.ph115, !llvm.loop !414

.loopexit:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %middle.block206, %vec.epilog.middle.block219, %.loopexit97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !82     ; 5 uses
  %.not = icmp eq i32 %6, 0
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c                        ; 2 uses
  br i1 %.not, label %.preheader114, label %.preheader117

.preheader117:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %.preheader116

.preheader114:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph143, label %.preheader

.preheader116:                                    ; preds = %.lr.ph, %.preheader117
  %.0101.lcssa = phi i32 [ %i.a, %.preheader117 ], [ %i.ae, %.lr.ph ] ; 4 uses
  %.097.lcssa = phi i64 [ %2, %.preheader117 ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.093.lcssa = phi ptr [ %1, %.preheader117 ], [ %i.ab, %.lr.ph ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %.preheader117 ], [ %i.v, %.lr.ph ] ; 4 uses
  %i.e = icmp ugt i64 %.097.lcssa, 15
  br i1 %i.e, label %.lr.ph131.peel, label %._crit_edge132

.lr.ph131.peel:                                   ; preds = %.preheader116
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %i.f = icmp ult i32 %.0101.lcssa, 16
  br i1 %i.f, label %.lr.ph126.peel, label %._crit_edge.peel

.lr.ph126.peel:                                   ; preds = %.lr.ph131.peel
  %i.g = zext nneg i32 %.0101.lcssa to i64        ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 2 uses
  %.0.copyload.i.peel = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.g
  %.0.copyload.i111.peel = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i111.peel, %.0.copyload.i.peel ; 2 uses
  store i64 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.g
  store i64 %i.j, ptr %i.k, align 1
  %i.l = icmp ult i32 %.0101.lcssa, 8
  br i1 %i.l, label %.lr.ph126.1.peel, label %._crit_edge.peel

.lr.ph126.1.peel:                                 ; preds = %.lr.ph126.peel
  %indvars.iv.next.peel = add nuw nsw i64 %i.g, 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.peel ; 2 uses
  %.0.copyload.i.1.peel = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %indvars.iv.next.peel
  %.0.copyload.i111.1.peel = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i111.1.peel, %.0.copyload.i.1.peel ; 2 uses
  store i64 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv.next.peel
  store i64 %i.o, ptr %i.p, align 1
  br label %._crit_edge.peel

._crit_edge.peel:                                 ; preds = %.lr.ph126.peel, %.lr.ph126.1.peel, %.lr.ph131.peel
  %i.q = add i64 %.097.lcssa, -16                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.t = icmp ugt i64 %i.q, 15
  br i1 %i.t, label %.lr.ph131.preheader.peel.newph, label %._crit_edge132

.lr.ph131.preheader.peel.newph:                   ; preds = %._crit_edge.peel
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph131

.lr.ph:                                           ; preds = %.preheader117, %.lr.ph
  %.0121 = phi ptr [ %i.v, %.lr.ph ], [ %0, %.preheader117 ] ; 2 uses
  %.093120 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %.preheader117 ] ; 2 uses
  %.097119 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %.preheader117 ]
  %.0101118 = phi i32 [ %i.ae, %.lr.ph ], [ %i.a, %.preheader117 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0121, i64 1 ; 2 uses
  %i.w = load i8, ptr %.0121, align 1, !tbaa !80
  %i.x = zext i32 %.0101118 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !80
  %i.aa = xor i8 %i.z, %i.w                       ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.093120, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.093120, align 1, !tbaa !80
  %i.ac = add i64 %.097119, -1                    ; 3 uses
  %i.ad = add i32 %.0101118, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.preheader116, !llvm.loop !3

.lr.ph131:                                        ; preds = %.lr.ph131.preheader.peel.newph, %.lr.ph131
  %.1130 = phi ptr [ %i.ao, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.194129 = phi ptr [ %i.an, %.lr.ph131 ], [ %i.r, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.198128 = phi i64 [ %i.am, %.lr.ph131 ], [ %i.q, %.lr.ph131.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %.0.copyload.i = load i64, ptr %4, align 1
  %.0.copyload.i111 = load i64, ptr %.1130, align 1
  %i.ai = xor i64 %.0.copyload.i111, %.0.copyload.i ; 2 uses
  store i64 %i.ai, ptr %4, align 1
  store i64 %i.ai, ptr %.194129, align 1
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.1130, i64 8
  %.0.copyload.i111.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i111.1, %.0.copyload.i.1 ; 2 uses
  store i64 %i.ak, ptr %i.u, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.194129, i64 8
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = add i64 %.198128, -16                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.194129, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1130, i64 16 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, 15
  br i1 %i.ap, label %.lr.ph131, label %._crit_edge132, !llvm.loop !421

._crit_edge132:                                   ; preds = %._crit_edge.peel, %.lr.ph131, %.preheader116
  %.1102.lcssa = phi i32 [ %.0101.lcssa, %.preheader116 ], [ 0, %.lr.ph131 ], [ 0, %._crit_edge.peel ] ; 8 uses
  %.198.lcssa = phi i64 [ %.097.lcssa, %.preheader116 ], [ %i.q, %._crit_edge.peel ], [ %i.am, %.lr.ph131 ] ; 10 uses
  %.194.lcssa = phi ptr [ %.093.lcssa, %.preheader116 ], [ %i.r, %._crit_edge.peel ], [ %i.an, %.lr.ph131 ] ; 6 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader116 ], [ %i.s, %._crit_edge.peel ], [ %i.ao, %.lr.ph131 ] ; 6 uses
  %.not109 = icmp eq i64 %.198.lcssa, 0
  br i1 %.not109, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge132
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %min.iters.check = icmp samesign ult i64 %.198.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aq = add nsw i64 %.198.lcssa, -1             ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = xor i32 %.1102.lcssa, -1
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1102.lcssa to i64            ; 4 uses
  %i.ax = getelementptr i8, ptr %4, i64 %i.aw     ; 2 uses
  %i.ay = add nuw nsw i64 %.198.lcssa, %i.aw      ; 3 uses
  %i.az = getelementptr i8, ptr %4, i64 %i.ay     ; 2 uses
  %i.ba = getelementptr i8, ptr %.194.lcssa, i64 %i.aw ; 2 uses
  %i.bb = getelementptr i8, ptr %.194.lcssa, i64 %i.ay ; 2 uses
  %i.bc = getelementptr i8, ptr %.1.lcssa, i64 %i.aw ; 2 uses
  %i.bd = getelementptr i8, ptr %.1.lcssa, i64 %i.ay ; 2 uses
  %bound0 = icmp ult ptr %i.ax, %i.bb
  %bound1 = icmp ult ptr %i.ba, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %bound0234 = icmp ult ptr %i.ax, %i.bd
  %bound1235 = icmp ult ptr %i.bc, %i.az
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx = or i1 %found.conflict, %found.conflict236
  %bound0237 = icmp ult ptr %i.ba, %i.bd
  %bound1238 = icmp ult ptr %i.bc, %i.bb
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx, %found.conflict239
  br i1 %conflict.rdx240, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec246 = and i64 %.198.lcssa, 12             ; 3 uses
  %i.be = and i64 %.198.lcssa, 3
  %i.bf = trunc nuw nsw i64 %n.vec246 to i32
  %i.bg = add i32 %.1102.lcssa, %i.bf             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index247 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next250, %vec.epilog.vector.body ] ; 2 uses
  %i.bh = trunc i64 %index247 to i32
  %i.bi = add i32 %.1102.lcssa, %i.bh
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bj
  %wide.load248 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !80, !alias.scope !435
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %i.bj ; 2 uses
  %wide.load249 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !80, !alias.scope !436, !noalias !437
  %i.bm = xor <4 x i8> %wide.load249, %wide.load248 ; 2 uses
  store <4 x i8> %i.bm, ptr %i.bl, align 1, !tbaa !80, !alias.scope !436, !noalias !437
  %i.bn = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bj
  store <4 x i8> %i.bm, ptr %i.bn, align 1, !tbaa !80, !alias.scope !438, !noalias !435
  %index.next250 = add nuw i64 %index247, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next250, %n.vec246
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !426

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n251 = icmp eq i64 %.198.lcssa, %n.vec246
  br i1 %cmp.n251, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.299138.ph = phi i64 [ %.198.lcssa, %vector.scevcheck ], [ %.198.lcssa, %vector.memcheck ], [ %.198.lcssa, %iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.ph = phi i32 [ %.1102.lcssa, %vector.scevcheck ], [ %.1102.lcssa, %vector.memcheck ], [ %.1102.lcssa, %iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bp = add nsw i64 %.299138.ph, -1
  %i.bq = zext i32 %.3104137.ph to i64            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 %i.bq ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !80
  %i.bv = xor i8 %i.bu, %i.bs                     ; 2 uses
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bq
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !80
  %i.bx = add i32 %.3104137.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa323.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bx, %vec.epilog.scalar.ph.prol ]
  %.299138.unr = phi i64 [ %.299138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bp, %vec.epilog.scalar.ph.prol ]
  %.3104137.unr = phi i32 [ %.3104137.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bx, %vec.epilog.scalar.ph.prol ]
  %i.by = icmp eq i64 %.299138.ph, 1
  br i1 %i.by, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138 = phi i64 [ %i.ch, %vec.epilog.scalar.ph ], [ %.299138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137 = phi i32 [ %i.cp, %vec.epilog.scalar.ph ], [ %.3104137.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bz = zext i32 %.3104137 to i64               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %i.bz ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !80
  %i.ce = xor i8 %i.cd, %i.cb                     ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bz
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !80
  %i.cg = add i32 %.3104137, 1
  %i.ch = add nsw i64 %.299138, -2                ; 2 uses
  %i.ci = zext i32 %i.cg to i64                   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 %i.ci ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !80
  %i.cn = xor i8 %i.cm, %i.ck                     ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.ci
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !80
  %i.cp = add i32 %.3104137, 2                    ; 2 uses
  %.not110.1 = icmp eq i64 %i.ch, 0
  br i1 %.not110.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !427

.preheader:                                       ; preds = %.lr.ph143, %.preheader114
  %.5106.lcssa = phi i32 [ %i.a, %.preheader114 ], [ %i.dq, %.lr.ph143 ] ; 4 uses
  %.3100.lcssa = phi i64 [ %2, %.preheader114 ], [ %i.do, %.lr.ph143 ] ; 3 uses
  %.295.lcssa = phi ptr [ %1, %.preheader114 ], [ %i.dn, %.lr.ph143 ] ; 4 uses
  %.2.lcssa = phi ptr [ %0, %.preheader114 ], [ %i.dk, %.lr.ph143 ] ; 4 uses
  %i.cq = icmp ugt i64 %.3100.lcssa, 15
  br i1 %i.cq, label %.lr.ph156.peel, label %._crit_edge157

.lr.ph156.peel:                                   ; preds = %.preheader
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %i.cr = icmp ult i32 %.5106.lcssa, 16
  br i1 %i.cr, label %.lr.ph150.peel, label %._crit_edge151.peel

.lr.ph150.peel:                                   ; preds = %.lr.ph156.peel
  %i.cs = zext nneg i32 %.5106.lcssa to i64       ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cs
  %.0.copyload.i112.peel = load i64, ptr %i.ct, align 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 %i.cs ; 2 uses
  %.0.copyload.i113.peel = load i64, ptr %i.cv, align 1
  %i.cw = xor i64 %.0.copyload.i113.peel, %.0.copyload.i112.peel
  store i64 %i.cw, ptr %i.cu, align 1
  store i64 %.0.copyload.i112.peel, ptr %i.cv, align 1
  %i.cx = icmp ult i32 %.5106.lcssa, 8
  br i1 %i.cx, label %.lr.ph150.1.peel, label %._crit_edge151.peel

.lr.ph150.1.peel:                                 ; preds = %.lr.ph150.peel
  %indvars.iv.next182.peel = add nuw nsw i64 %i.cs, 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next182.peel
  %.0.copyload.i112.1.peel = load i64, ptr %i.cy, align 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %indvars.iv.next182.peel
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.peel ; 2 uses
  %.0.copyload.i113.1.peel = load i64, ptr %i.da, align 1
  %i.db = xor i64 %.0.copyload.i113.1.peel, %.0.copyload.i112.1.peel
  store i64 %i.db, ptr %i.cz, align 1
  store i64 %.0.copyload.i112.1.peel, ptr %i.da, align 1
  br label %._crit_edge151.peel

._crit_edge151.peel:                              ; preds = %.lr.ph150.peel, %.lr.ph150.1.peel, %.lr.ph156.peel
  %i.dc = add i64 %.3100.lcssa, -16               ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16 ; 2 uses
  %i.df = icmp ugt i64 %i.dc, 15
  br i1 %i.df, label %.lr.ph156.preheader.peel.newph, label %._crit_edge157

.lr.ph156.preheader.peel.newph:                   ; preds = %._crit_edge151.peel
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156

.lr.ph143:                                        ; preds = %.preheader114, %.lr.ph143
  %.2142 = phi ptr [ %i.dk, %.lr.ph143 ], [ %0, %.preheader114 ] ; 2 uses
  %.295141 = phi ptr [ %i.dn, %.lr.ph143 ], [ %1, %.preheader114 ] ; 2 uses
  %.3100140 = phi i64 [ %i.do, %.lr.ph143 ], [ %2, %.preheader114 ]
  %.5106139 = phi i32 [ %i.dq, %.lr.ph143 ], [ %i.a, %.preheader114 ] ; 2 uses
  %i.dh = zext i32 %.5106139 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !80
  %i.dk = getelementptr inbounds nuw i8, ptr %.2142, i64 1 ; 2 uses
  %i.dl = load i8, ptr %.2142, align 1, !tbaa !80 ; 2 uses
  %i.dm = xor i8 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %.295141, i64 1 ; 2 uses
  store i8 %i.dm, ptr %.295141, align 1, !tbaa !80
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !80
  %i.do = add i64 %.3100140, -1                   ; 3 uses
  %i.dp = add i32 %.5106139, 1
  %i.dq = and i32 %i.dp, 15                       ; 3 uses
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = icmp ne i64 %i.do, 0
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %.lr.ph143, label %.preheader, !llvm.loop !4

.lr.ph156:                                        ; preds = %.lr.ph156.preheader.peel.newph, %.lr.ph156
  %.3155 = phi ptr [ %i.ea, %.lr.ph156 ], [ %i.de, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.396154 = phi ptr [ %i.dz, %.lr.ph156 ], [ %i.dd, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.4153 = phi i64 [ %i.dy, %.lr.ph156 ], [ %i.dc, %.lr.ph156.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %.0.copyload.i112 = load i64, ptr %.3155, align 1 ; 2 uses
  %.0.copyload.i113 = load i64, ptr %4, align 1
  %i.du = xor i64 %.0.copyload.i113, %.0.copyload.i112
  store i64 %i.du, ptr %.396154, align 1
  store i64 %.0.copyload.i112, ptr %4, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.3155, i64 8
  %.0.copyload.i112.1 = load i64, ptr %i.dv, align 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.396154, i64 8
  %.0.copyload.i113.1 = load i64, ptr %i.dg, align 1
  %i.dx = xor i64 %.0.copyload.i113.1, %.0.copyload.i112.1
  store i64 %i.dx, ptr %i.dw, align 1
  store i64 %.0.copyload.i112.1, ptr %i.dg, align 1
  %i.dy = add i64 %.4153, -16                     ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.396154, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.3155, i64 16 ; 2 uses
  %i.eb = icmp ugt i64 %i.dy, 15
  br i1 %i.eb, label %.lr.ph156, label %._crit_edge157, !llvm.loop !428

._crit_edge157:                                   ; preds = %._crit_edge151.peel, %.lr.ph156, %.preheader
  %.6.lcssa = phi i32 [ %.5106.lcssa, %.preheader ], [ 0, %.lr.ph156 ], [ 0, %._crit_edge151.peel ] ; 8 uses
  %.4.lcssa = phi i64 [ %.3100.lcssa, %.preheader ], [ %i.dc, %._crit_edge151.peel ], [ %i.dy, %.lr.ph156 ] ; 10 uses
  %.396.lcssa = phi ptr [ %.295.lcssa, %.preheader ], [ %i.dd, %._crit_edge151.peel ], [ %i.dz, %.lr.ph156 ] ; 6 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.de, %._crit_edge151.peel ], [ %i.ea, %.lr.ph156 ] ; 6 uses
  %.not107 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not107, label %.loopexit, label %iter.check300

iter.check300:                                    ; preds = %._crit_edge157
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %min.iters.check272 = icmp samesign ult i64 %.4.lcssa, 4
  br i1 %min.iters.check272, label %vec.epilog.scalar.ph301.preheader, label %vector.scevcheck254

vector.scevcheck254:                              ; preds = %iter.check300
  %i.ec = add nsw i64 %.4.lcssa, -1               ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = xor i32 %.6.lcssa, -1
  %i.ef = icmp ult i32 %i.ee, %i.ed
  %i.eg = icmp ugt i64 %i.ec, 4294967295
  %i.eh = or i1 %i.ef, %i.eg
  br i1 %i.eh, label %vec.epilog.scalar.ph301.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %vector.scevcheck254
  %i.ei = zext i32 %.6.lcssa to i64               ; 4 uses
  %i.ej = getelementptr i8, ptr %.396.lcssa, i64 %i.ei ; 2 uses
  %i.ek = add nuw nsw i64 %.4.lcssa, %i.ei        ; 3 uses
  %i.el = getelementptr i8, ptr %.396.lcssa, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  %i.en = getelementptr i8, ptr %4, i64 %i.ek     ; 2 uses
  %i.eo = getelementptr i8, ptr %.3.lcssa, i64 %i.ei ; 2 uses
  %i.ep = getelementptr i8, ptr %.3.lcssa, i64 %i.ek ; 2 uses
  %bound0274 = icmp ult ptr %i.ej, %i.en
  %bound1275 = icmp ult ptr %i.em, %i.el
  %found.conflict276 = and i1 %bound0274, %bound1275
  %bound0277 = icmp ult ptr %i.ej, %i.ep
  %bound1278 = icmp ult ptr %i.eo, %i.el
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %found.conflict276, %found.conflict279
  %bound0281 = icmp ult ptr %i.em, %i.ep
  %bound1282 = icmp ult ptr %i.eo, %i.en
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %conflict.rdx280, %found.conflict283
  br i1 %conflict.rdx284, label %vec.epilog.scalar.ph301.preheader, label %vec.epilog.ph304

vec.epilog.ph304:                                 ; preds = %vector.memcheck273
  %n.vec305 = and i64 %.4.lcssa, 12               ; 3 uses
  %i.eq = and i64 %.4.lcssa, 3
  %i.er = trunc nuw nsw i64 %n.vec305 to i32
  %i.es = add i32 %.6.lcssa, %i.er                ; 2 uses
  br label %vec.epilog.vector.body306

vec.epilog.vector.body306:                        ; preds = %vec.epilog.vector.body306, %vec.epilog.ph304
  %index307 = phi i64 [ 0, %vec.epilog.ph304 ], [ %index.next310, %vec.epilog.vector.body306 ] ; 2 uses
  %i.et = trunc i64 %index307 to i32
  %i.eu = add i32 %.6.lcssa, %i.et
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 %i.ev ; 2 uses
  %wide.load308 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !80, !alias.scope !439, !noalias !440
  %i.ex = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ev
  %wide.load309 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !80, !alias.scope !440 ; 2 uses
  %i.ey = xor <4 x i8> %wide.load309, %wide.load308
  %i.ez = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.ev
  store <4 x i8> %i.ey, ptr %i.ez, align 1, !tbaa !80, !alias.scope !441, !noalias !442
  store <4 x i8> %wide.load309, ptr %i.ew, align 1, !tbaa !80, !alias.scope !439, !noalias !440
  %index.next310 = add nuw i64 %index307, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next310, %n.vec305
  br i1 %i.fa, label %vec.epilog.middle.block311, label %vec.epilog.vector.body306, !llvm.loop !433

vec.epilog.middle.block311:                       ; preds = %vec.epilog.vector.body306
  %cmp.n312 = icmp eq i64 %.4.lcssa, %n.vec305
  br i1 %cmp.n312, label %.loopexit, label %vec.epilog.scalar.ph301.preheader

vec.epilog.scalar.ph301.preheader:                ; preds = %iter.check300, %vector.scevcheck254, %vector.memcheck273, %vec.epilog.middle.block311
  %.5163.ph = phi i64 [ %.4.lcssa, %vector.scevcheck254 ], [ %.4.lcssa, %vector.memcheck273 ], [ %.4.lcssa, %iter.check300 ], [ %i.eq, %vec.epilog.middle.block311 ] ; 4 uses
  %.8162.ph = phi i32 [ %.6.lcssa, %vector.scevcheck254 ], [ %.6.lcssa, %vector.memcheck273 ], [ %.6.lcssa, %iter.check300 ], [ %i.es, %vec.epilog.middle.block311 ] ; 3 uses
  %xtraiter333 = and i64 %.5163.ph, 1
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %vec.epilog.scalar.ph301.prol.loopexit, label %vec.epilog.scalar.ph301.prol

vec.epilog.scalar.ph301.prol:                     ; preds = %vec.epilog.scalar.ph301.preheader
  %i.fb = add nsw i64 %.5163.ph, -1
  %i.fc = zext i32 %.8162.ph to i64               ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !80
  %i.ff = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fc
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !80  ; 2 uses
  %i.fh = xor i8 %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fc
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !80
  store i8 %i.fg, ptr %i.fd, align 1, !tbaa !80
  %i.fj = add i32 %.8162.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph301.prol.loopexit

vec.epilog.scalar.ph301.prol.loopexit:            ; preds = %vec.epilog.scalar.ph301.prol, %vec.epilog.scalar.ph301.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph301.preheader ], [ %i.fj, %vec.epilog.scalar.ph301.prol ]
  %.5163.unr = phi i64 [ %.5163.ph, %vec.epilog.scalar.ph301.preheader ], [ %i.fb, %vec.epilog.scalar.ph301.prol ]
  %.8162.unr = phi i32 [ %.8162.ph, %vec.epilog.scalar.ph301.preheader ], [ %i.fj, %vec.epilog.scalar.ph301.prol ]
  %i.fk = icmp eq i64 %.5163.ph, 1
  br i1 %i.fk, label %.loopexit, label %vec.epilog.scalar.ph301

vec.epilog.scalar.ph301:                          ; preds = %vec.epilog.scalar.ph301.prol.loopexit, %vec.epilog.scalar.ph301
  %.5163 = phi i64 [ %i.ft, %vec.epilog.scalar.ph301 ], [ %.5163.unr, %vec.epilog.scalar.ph301.prol.loopexit ]
  %.8162 = phi i32 [ %i.gb, %vec.epilog.scalar.ph301 ], [ %.8162.unr, %vec.epilog.scalar.ph301.prol.loopexit ] ; 3 uses
  %i.fl = zext i32 %.8162 to i64                  ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 %i.fl ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !80
  %i.fo = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fl
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !80  ; 2 uses
  %i.fq = xor i8 %i.fp, %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fl
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !80
  store i8 %i.fp, ptr %i.fm, align 1, !tbaa !80
  %i.fs = add i32 %.8162, 1
  %i.ft = add nsw i64 %.5163, -2                  ; 2 uses
  %i.fu = zext i32 %i.fs to i64                   ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !80
  %i.fx = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fu
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !80  ; 2 uses
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fu
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !80
  store i8 %i.fy, ptr %i.fv, align 1, !tbaa !80
  %i.gb = add i32 %.8162, 2                       ; 2 uses
  %.not108.1 = icmp eq i64 %i.ft, 0
  br i1 %.not108.1, label %.loopexit, label %vec.epilog.scalar.ph301, !llvm.loop !434

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph301.prol.loopexit, %vec.epilog.scalar.ph301, %vec.epilog.middle.block, %vec.epilog.middle.block311, %._crit_edge157, %._crit_edge132
  %storemerge = phi i32 [ %.1102.lcssa, %._crit_edge132 ], [ %i.gb, %vec.epilog.scalar.ph301 ], [ %.6.lcssa, %._crit_edge157 ], [ %i.es, %vec.epilog.middle.block311 ], [ %i.bg, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph301.prol.loopexit ], [ %.lcssa323.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cp, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %5, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cfb128_1_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.032 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.b ] ; 3 uses
  %i.a = lshr i64 %.032, 3                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !80
  %i.d = zext i8 %i.c to i32
  %i.e = trunc i64 %.032 to i32
  %i.f = and i32 %i.e, 7                          ; 3 uses
  %i.g = lshr exact i32 128, %i.f
  %i.h = and i32 %i.g, %i.d
  %.not = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not, i8 0, i8 -128           ; 2 uses
  %i.j = load <16 x i8>, ptr %4, align 1          ; 2 uses
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #36, !inline_history !5
  %i.k = load i8, ptr %4, align 1, !tbaa !80
  %i.l = xor i8 %i.k, %i.i                        ; 2 uses
  %..i = select i1 %.not.i, i8 %i.i, i8 %i.l
  %i.m = insertelement <16 x i8> poison, i8 %..i, i64 0
  %i.n = shufflevector <16 x i8> %i.j, <16 x i8> %i.m, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.o = tail call <16 x i8> @llvm.fshl.v16i8(<16 x i8> %i.j, <16 x i8> %i.n, <16 x i8> splat (i8 1))
  store <16 x i8> %i.o, ptr %4, align 1, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !80
  %i.r = zext i8 %i.q to i32
  %i.s = ashr i32 -129, %i.f
  %i.t = and i32 %i.s, %i.r
  %i.u = and i8 %i.l, -128
  %i.v = zext i8 %i.u to i32
  %i.w = lshr exact i32 %i.v, %i.f
  %i.x = or i32 %i.t, %i.w
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %i.p, align 1, !tbaa !80
  %i.z = add nuw i64 %.032, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !443

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cfb128_8_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 16           ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.010.us = phi i64 [ %i.f, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.010.us
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #36, !inline_history !5
  %i.c = load i8, ptr %i.a, align 1, !tbaa !80    ; 2 uses
  %i.d = load i8, ptr %4, align 1, !tbaa !80
  %i.e = xor i8 %i.d, %i.c
  store i8 %i.e, ptr %i.b, align 1, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.c, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.f = add nuw i64 %.010.us, 1                  ; 2 uses
  %exitcond12.not = icmp eq i64 %i.f, %2
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !444

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.010 = phi i64 [ %i.l, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
end_hunk_1
begin_hunk_2_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  %i.ak = icmp samesign ugt i64 %spec.store.select, %i.aj ; 2 uses
  %spec.select = select i1 %i.ak, i32 0, i32 %i.ai ; 4 uses
  %i.al = select i1 %i.ak, i64 %i.aj, i64 0
  %spec.select69 = sub nuw nsw i64 %spec.store.select, %i.al ; 2 uses
  tail call void %7(ptr noundef %.16179, ptr noundef %.16378, i64 noundef %spec.select69, ptr noundef %3, ptr noundef nonnull %4) #36
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %spec.select)
  store i32 %i.am, ptr %i.s, align 1
  %i.an = icmp eq i32 %spec.select, 0
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = load i8, ptr %i.v, align 1, !tbaa !80
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 2 uses
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.v, align 1, !tbaa !80
  %i.as = lshr i32 %i.aq, 8
  %i.at = load i8, ptr %i.w, align 1, !tbaa !80
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.as, %i.au            ; 2 uses
  %i.aw = trunc i32 %i.av to i8
  store i8 %i.aw, ptr %i.w, align 1, !tbaa !80
  %i.ax = lshr i32 %i.av, 8
  %i.ay = load i8, ptr %i.x, align 1, !tbaa !80
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.ax, %i.az            ; 2 uses
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %i.x, align 1, !tbaa !80
  %i.bc = lshr i32 %i.ba, 8
  %i.bd = load i8, ptr %i.y, align 1, !tbaa !80
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.bc, %i.be            ; 2 uses
  %i.bg = trunc i32 %i.bf to i8
  store i8 %i.bg, ptr %i.y, align 1, !tbaa !80
  %i.bh = lshr i32 %i.bf, 8
  %i.bi = load i8, ptr %i.z, align 1, !tbaa !80
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bh, %i.bj            ; 2 uses
  %i.bl = trunc i32 %i.bk to i8
  store i8 %i.bl, ptr %i.z, align 1, !tbaa !80
  %i.bm = lshr i32 %i.bk, 8
  %i.bn = load i8, ptr %i.aa, align 1, !tbaa !80
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bm, %i.bo            ; 2 uses
  %i.bq = trunc i32 %i.bp to i8
  store i8 %i.bq, ptr %i.aa, align 1, !tbaa !80
  %i.br = lshr i32 %i.bp, 8
  %i.bs = load i8, ptr %i.ab, align 1, !tbaa !80
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.br, %i.bt            ; 2 uses
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.ab, align 1, !tbaa !80
  %i.bw = lshr i32 %i.bu, 8
  %i.bx = load i8, ptr %i.ac, align 1, !tbaa !80
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bw, %i.by            ; 2 uses
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %i.ac, align 1, !tbaa !80
  %i.cb = lshr i32 %i.bz, 8
  %i.cc = load i8, ptr %i.ad, align 1, !tbaa !80
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cb, %i.cd            ; 2 uses
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.ad, align 1, !tbaa !80
  %i.cg = lshr i32 %i.ce, 8
  %i.ch = load i8, ptr %i.ae, align 1, !tbaa !80
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.cg, %i.ci            ; 2 uses
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %i.ae, align 1, !tbaa !80
  %i.cl = lshr i32 %i.cj, 8
  %i.cm = load i8, ptr %i.af, align 1, !tbaa !80
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cl, %i.cn            ; 2 uses
  %i.cp = trunc i32 %i.co to i8
  store i8 %i.cp, ptr %i.af, align 1, !tbaa !80
  %i.cq = lshr i32 %i.co, 8
  %i.cr = load i8, ptr %4, align 1, !tbaa !80
  %i.cs = trunc nuw nsw i32 %i.cq to i8
  %i.ct = add i8 %i.cr, %i.cs
  store i8 %i.ct, ptr %4, align 1, !tbaa !80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cu = shl nuw nsw i64 %spec.select69, 4       ; 3 uses
  %i.cv = sub i64 %.16577, %i.cu                  ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.16378, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.16179, i64 %i.cu ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, 15
  br i1 %i.cy, label %bb.b, label %._crit_edge83, !llvm.loop !446

._crit_edge83:                                    ; preds = %bb.d, %._crit_edge
  %.165.lcssa = phi i64 [ %.064.lcssa, %._crit_edge ], [ %i.cv, %bb.d ] ; 9 uses
  %.163.lcssa = phi ptr [ %.062.lcssa, %._crit_edge ], [ %i.cw, %bb.d ] ; 5 uses
  %.161.lcssa = phi ptr [ %.060.lcssa, %._crit_edge ], [ %i.cx, %bb.d ] ; 5 uses
  %.057.lcssa = phi i32 [ %i.t, %._crit_edge ], [ %spec.select, %bb.d ]
  %.163.lcssa113 = ptrtoaddr ptr %.163.lcssa to i64 ; 2 uses
  %.161.lcssa114 = ptrtoaddr ptr %.161.lcssa to i64
  %.not = icmp eq i64 %.165.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #36
  %i.cz = add i32 %.057.lcssa, 1                  ; 2 uses
  %i.da = tail call noundef i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.da, ptr %i.s, align 1
  %i.db = icmp eq i32 %i.cz, 0
  br i1 %i.db, label %bb.f, label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !80
  %i.dh = lshr i32 %i.df, 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !80
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dh, %i.dk            ; 2 uses
  %i.dm = trunc i32 %i.dl to i8
  store i8 %i.dm, ptr %i.di, align 1, !tbaa !80
  %i.dn = lshr i32 %i.dl, 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !80
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dn, %i.dq            ; 2 uses
  %i.ds = trunc i32 %i.dr to i8
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !80
  %i.dt = lshr i32 %i.dr, 8
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !80
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dt, %i.dw            ; 2 uses
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !80
  %i.dz = lshr i32 %i.dx, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !80
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.dz, %i.ec            ; 2 uses
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !80
  %i.ef = lshr i32 %i.ed, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !80
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.ef, %i.ei            ; 2 uses
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %i.eg, align 1, !tbaa !80
  %i.el = lshr i32 %i.ej, 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !80
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %i.el, %i.eo            ; 2 uses
  %i.eq = trunc i32 %i.ep to i8
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !80
  %i.er = lshr i32 %i.ep, 8
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !80
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nuw nsw i32 %i.er, %i.eu            ; 2 uses
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.es, align 1, !tbaa !80
  %i.ex = lshr i32 %i.ev, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !80
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ex, %i.fa            ; 2 uses
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.ey, align 1, !tbaa !80
  %i.fd = lshr i32 %i.fb, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !80
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !80
  %i.fj = lshr i32 %i.fh, 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !80
  %i.fm = zext i8 %i.fl to i32
  %i.fn = add nuw nsw i32 %i.fj, %i.fm            ; 2 uses
  %i.fo = trunc i32 %i.fn to i8
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !80
  %i.fp = lshr i32 %i.fn, 8
  %i.fq = load i8, ptr %4, align 1, !tbaa !80
  %i.fr = trunc nuw nsw i32 %i.fp to i8
  %i.fs = add i8 %i.fq, %i.fr
  store i8 %i.fs, ptr %4, align 1, !tbaa !80
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %bb.e
  %min.iters.check = icmp samesign ult i64 %.165.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ft = add nsw i64 %.165.lcssa, -1             ; 2 uses
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = xor i32 %.058.lcssa, -1
  %i.fw = icmp ult i32 %i.fv, %i.fu
  %i.fx = icmp ugt i64 %i.ft, 4294967295
  %i.fy = or i1 %i.fw, %i.fx
  br i1 %i.fy, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fz = sub i64 %.161.lcssa114, %.163.lcssa113
  %diff.check = icmp ugt i64 %i.fz, -32
  %i.ga = sub i64 %i.a, %.163.lcssa113
  %diff.check115 = icmp ugt i64 %i.ga, -32
  %conflict.rdx = or i1 %diff.check, %diff.check115
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec121 = and i64 %.165.lcssa, 12             ; 3 uses
  %i.gb = trunc nuw nsw i64 %n.vec121 to i32
  %i.gc = add i32 %.058.lcssa, %i.gb              ; 2 uses
  %i.gd = and i64 %.165.lcssa, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.ge = trunc i64 %index122 to i32
  %i.gf = add i32 %.058.lcssa, %i.ge
  %i.gg = zext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gg
  %wide.load123 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !80
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 %i.gg
  %wide.load124 = load <4 x i8>, ptr %i.gi, align 1, !tbaa !80
  %i.gj = xor <4 x i8> %wide.load124, %wide.load123
  %i.gk = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gg
  store <4 x i8> %i.gj, ptr %i.gk, align 1, !tbaa !80
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !447

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %.165.lcssa, %n.vec121
  br i1 %cmp.n126, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.15989.ph = phi i32 [ %.058.lcssa, %vector.scevcheck ], [ %.058.lcssa, %vector.memcheck ], [ %.058.lcssa, %iter.check ], [ %i.gc, %vec.epilog.middle.block ] ; 3 uses
  %.26688.ph = phi i64 [ %.165.lcssa, %vector.scevcheck ], [ %.165.lcssa, %vector.memcheck ], [ %.165.lcssa, %iter.check ], [ %i.gd, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.26688.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gm = add nsw i64 %.26688.ph, -1
  %i.gn = zext i32 %.15989.ph to i64              ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !80
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 %i.gn
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !80
  %i.gs = xor i8 %i.gr, %i.gp
  %i.gt = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gn
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !80
  %i.gu = add i32 %.15989.ph, 1                   ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %.15989.unr = phi i32 [ %.15989.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %.26688.unr = phi i64 [ %.26688.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gm, %vec.epilog.scalar.ph.prol ]
  %i.gv = icmp eq i64 %.26688.ph, 1
  br i1 %i.gv, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15989 = phi i32 [ %i.hm, %vec.epilog.scalar.ph ], [ %.15989.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.26688 = phi i64 [ %i.he, %vec.epilog.scalar.ph ], [ %.26688.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gw = zext i32 %.15989 to i64                 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !80
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 %i.gw
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !80
  %i.hb = xor i8 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gw
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !80
  %i.hd = add i32 %.15989, 1
  %i.he = add nsw i64 %.26688, -2                 ; 2 uses
  %i.hf = zext i32 %i.hd to i64                   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !80
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 %i.hf
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !80
  %i.hk = xor i8 %i.hj, %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.hf
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !80
  %i.hm = add i32 %.15989, 2                      ; 2 uses
  %.not68.1 = icmp eq i64 %i.he, 0
  br i1 %.not68.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !448

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %._crit_edge83
  %.2 = phi i32 [ %.058.lcssa, %._crit_edge83 ], [ %i.gc, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hm, %vec.epilog.scalar.ph ]
  store i32 %.2, ptr %6, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @CRYPTO_ghash_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %.0.copyload.i = load i64, ptr %3, align 1
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i5 = load i64, ptr %i.b, align 1
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = tail call i64 @llvm.fshl.i64(i64 %i.a, i64 %i.c, i64 1)
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.c, i64 %i.a, i64 1)
  store i64 %i.f, ptr %i.d, align 8, !tbaa !94
  %isneg.i = icmp slt i64 %i.a, 0
  %i.g = select i1 %isneg.i, i64 -4467570830351532032, i64 0
  %i.h = xor i64 %i.g, %i.e
  store i64 %i.h, ptr %2, align 8, !tbaa !95
  store ptr @gcm_gmult_nohw, ptr %0, align 8, !tbaa !84
  store ptr @gcm_ghash_nohw, ptr %1, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @gcm_init_nohw(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !94
  %i.d = load i64, ptr %1, align 8, !tbaa !96     ; 3 uses
  %i.e = tail call i64 @llvm.fshl.i64(i64 %i.d, i64 %i.b, i64 1)
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.d, i64 1)
  store i64 %i.f, ptr %i.c, align 8, !tbaa !94
  %isneg = icmp slt i64 %i.d, 0
  %i.g = select i1 %isneg, i64 -4467570830351532032, i64 0
  %i.h = xor i64 %i.g, %i.e
  store i64 %i.h, ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @gcm_gmult_nohw(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.g, align 1
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i) ; 2 uses
  %.0.copyload.i6 = load i64, ptr %0, align 1
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6) ; 2 uses
  %.val = load i64, ptr %1, align 8, !tbaa !95    ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.j, align 8, !tbaa !94 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.h, i64 noundef %.val5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.i, i64 noundef %.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.k = xor i64 %i.i, %i.h
  %i.l = xor i64 %.val5, %.val
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.k, i64 noundef %i.l)
  %i.m = load i64, ptr %i.a, align 8, !tbaa !96   ; 8 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !96
  %i.p = load i64, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.q = load i64, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !96
  %i.s = shl i64 %i.m, 63
  %i.t = shl i64 %i.m, 62
  %i.u = shl i64 %i.m, 57
  %i.v = xor i64 %i.t, %i.s
  %i.w = xor i64 %i.v, %i.u
  %i.x = xor i64 %i.w, %i.o
  %i.y = xor i64 %i.x, %i.m
  %i.z = xor i64 %i.y, %i.n
  %i.aa = xor i64 %i.z, %i.p                      ; 7 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.m, i64 63)
  %i.ac = lshr i64 %i.aa, 1
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.m, i64 62)
  %i.ae = lshr i64 %i.aa, 2
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.m, i64 57)
  %i.ag = xor i64 %i.r, %i.ab
  %i.ah = xor i64 %i.ag, %i.ad
  %i.ai = xor i64 %i.ah, %i.af
  %i.aj = xor i64 %i.ai, %i.m
  %i.ak = xor i64 %i.aj, %i.n
  %i.al = xor i64 %i.ak, %i.p
  %i.am = xor i64 %i.al, %i.q
  %i.an = lshr i64 %i.aa, 7
  %i.ao = xor i64 %i.ae, %i.ac
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = xor i64 %i.ap, %i.q
  %i.ar = xor i64 %i.aq, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
end_hunk_2
begin_hunk_3_@CRYPTO_gcm128_encrypt:bb.a
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = xor i64 %i.bd, %i.ae
  %i.bf = xor i64 %i.be, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %i.bf)
  store i64 %i.bg, ptr %i.t, align 8
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba)
  store i64 %i.bh, ptr %i.u, align 8
  store i32 0, ptr %i.r, align 4, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !106 ; 3 uses
  %.not108 = icmp eq i32 %i.bj, 0
  br i1 %.not108, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not136 = icmp eq i64 %4, 0
  br i1 %.not136, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.090119 = phi i32 [ %i.bj, %.lr.ph ], [ %i.by, %bb.e ] ; 2 uses
  %.092118 = phi i64 [ %4, %.lr.ph ], [ %i.bw, %bb.e ]
  %.096117 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %bb.e ] ; 2 uses
  %.0100116 = phi ptr [ %2, %.lr.ph ], [ %i.bm, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0100116, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.0100116, align 1, !tbaa !80
  %i.bo = zext i32 %.090119 to i64                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !80
  %i.br = xor i8 %i.bq, %i.bn                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.096117, i64 1 ; 2 uses
  store i8 %i.br, ptr %.096117, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !80
  %i.bv = xor i8 %i.bu, %i.br
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !80
  %i.bw = add nsw i64 %.092118, -1                ; 3 uses
  %i.bx = add i32 %.090119, 1
  %i.by = and i32 %i.bx, 15                       ; 4 uses
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = icmp ne i64 %i.bw, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.e, label %._crit_edge, !llvm.loop !469

._crit_edge:                                      ; preds = %bb.e
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i112 = load i64, ptr %i.ce, align 8
  %i.cf = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i112) ; 2 uses
  %.0.copyload.i6.i113 = load i64, ptr %i.cd, align 8
  %i.cg = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i113) ; 2 uses
  %.val.i114 = load i64, ptr %0, align 8, !tbaa !95 ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 8
  %.val5.i115 = load i64, ptr %i.ch, align 8, !tbaa !94 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.cf, i64 noundef %.val5.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.cg, i64 noundef %.val.i114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.ci = xor i64 %i.cg, %i.cf
  %i.cj = xor i64 %.val5.i115, %.val.i114
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.ci, i64 noundef %i.cj)
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !96  ; 8 uses
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !96  ; 2 uses
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !96
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !96  ; 2 uses
  %i.co = load i64, ptr %i.d, align 8, !tbaa !96  ; 2 uses
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !96
  %i.cq = shl i64 %i.ck, 63
  %i.cr = shl i64 %i.ck, 62
  %i.cs = shl i64 %i.ck, 57
  %i.ct = xor i64 %i.cq, %i.cr
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = xor i64 %i.cu, %i.cm
  %i.cw = xor i64 %i.cv, %i.ck
  %i.cx = xor i64 %i.cw, %i.cl
  %i.cy = xor i64 %i.cx, %i.cn                    ; 7 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 63)
  %i.da = lshr i64 %i.cy, 1
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 62)
  %i.dc = lshr i64 %i.cy, 2
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 57)
  %i.de = xor i64 %i.cp, %i.cz
  %i.df = xor i64 %i.de, %i.db
  %i.dg = xor i64 %i.df, %i.dd
  %i.dh = xor i64 %i.dg, %i.ck
  %i.di = xor i64 %i.dh, %i.cl
  %i.dj = xor i64 %i.di, %i.cn
  %i.dk = xor i64 %i.dj, %i.co
  %i.dl = lshr i64 %i.cy, 7
  %i.dm = xor i64 %i.da, %i.dc
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = xor i64 %i.dn, %i.co
  %i.dp = xor i64 %i.do, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dq = tail call noundef i64 @llvm.bswap.i64(i64 %i.dp)
  store i64 %i.dq, ptr %i.cd, align 8
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dk)
  store i64 %i.dr, ptr %i.ce, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1101 = phi ptr [ %i.bm, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %.197 = phi ptr [ %i.bs, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.193 = phi i64 [ %i.bw, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.ds, align 4
  %i.dt = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !99 ; 2 uses
  %i.dw = icmp ugt i64 %.193, 3071
  br i1 %i.dw, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph128, %bb.h
  %.088126 = phi i32 [ %i.dt, %.lr.ph128 ], [ %i.dz, %bb.h ]
  %.294125 = phi i64 [ %.193, %.lr.ph128 ], [ %i.ed, %bb.h ]
  %.298124 = phi ptr [ %.197, %.lr.ph128 ], [ %i.eb, %bb.h ] ; 3 uses
  %.2102123 = phi ptr [ %.1101, %.lr.ph128 ], [ %i.ec, %bb.h ] ; 2 uses
  tail call void %i.dv(ptr noundef %.2102123, ptr noundef %.298124, i64 noundef 192, ptr noundef nonnull %i.dx, ptr noundef nonnull %1) #36
  %i.dz = add i32 %.088126, 192                   ; 3 uses
  %i.ea = tail call noundef i32 @llvm.bswap.i32(i32 %i.dz)
  store i32 %i.ea, ptr %i.ds, align 4
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.dy, ptr noundef nonnull %0, ptr noundef %.298124, i64 noundef 3072)
  %i.eb = getelementptr inbounds nuw i8, ptr %.298124, i64 3072 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2102123, i64 3072 ; 2 uses
  %i.ed = add nsw i64 %.294125, -3072             ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 3071
  br i1 %i.ee, label %bb.h, label %._crit_edge129, !llvm.loop !470

._crit_edge129:                                   ; preds = %bb.h, %bb.g
  %.2102.lcssa = phi ptr [ %.1101, %bb.g ], [ %i.ec, %bb.h ] ; 4 uses
  %.298.lcssa = phi ptr [ %.197, %bb.g ], [ %i.eb, %bb.h ] ; 5 uses
  %.294.lcssa = phi i64 [ %.193, %bb.g ], [ %i.ed, %bb.h ] ; 4 uses
  %.088.lcssa = phi i32 [ %i.dt, %bb.g ], [ %i.dz, %bb.h ] ; 2 uses
  %i.ef = and i64 %.294.lcssa, 4080               ; 5 uses
  %.not109 = icmp eq i64 %i.ef, 0
  br i1 %.not109, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge129
  %i.eg = lshr i64 %.294.lcssa, 4                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.dv(ptr noundef %.2102.lcssa, ptr noundef %.298.lcssa, i64 noundef %i.eg, ptr noundef nonnull %i.eh, ptr noundef nonnull %1) #36
  %i.ei = trunc nuw nsw i64 %i.eg to i32
  %i.ej = add i32 %.088.lcssa, %i.ei              ; 2 uses
  %i.ek = tail call noundef i32 @llvm.bswap.i32(i32 %i.ej)
  store i32 %i.ek, ptr %i.ds, align 4
  %i.el = getelementptr i8, ptr %.2102.lcssa, i64 %i.ef
  %i.em = and i64 %.294.lcssa, 15
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.en, ptr noundef nonnull %0, ptr noundef %.298.lcssa, i64 noundef %i.ef)
  %i.eo = getelementptr i8, ptr %.298.lcssa, i64 %i.ef
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge129
  %.3103 = phi ptr [ %i.el, %bb.i ], [ %.2102.lcssa, %._crit_edge129 ] ; 7 uses
  %.399 = phi ptr [ %i.eo, %bb.i ], [ %.298.lcssa, %._crit_edge129 ] ; 7 uses
  %.395 = phi i64 [ %i.em, %bb.i ], [ %.294.lcssa, %._crit_edge129 ] ; 14 uses
  %.189 = phi i32 [ %i.ej, %bb.i ], [ %.088.lcssa, %._crit_edge129 ]
  %.not110 = icmp eq i64 %.395, 0
  br i1 %.not110, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !100
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.eq(ptr noundef nonnull %1, ptr noundef nonnull %i.er, ptr noundef nonnull %i.es) #36
  %i.et = add i32 %.189, 1
  %i.eu = tail call noundef i32 @llvm.bswap.i32(i32 %i.et)
  store i32 %i.eu, ptr %i.ds, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ew = add i64 %.395, -4294967297
  %or.cond199 = icmp ult i64 %i.ew, -4294967293
  br i1 %or.cond199, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ex = add nuw nsw i64 %.395, %i.ef            ; 2 uses
  %i.ey = getelementptr i8, ptr %.298.lcssa, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %1, i64 %.395
  %i.fa = getelementptr i8, ptr %i.ez, i64 64     ; 2 uses
  %i.fb = getelementptr i8, ptr %.2102.lcssa, i64 %i.ex ; 2 uses
  %bound0 = icmp ult ptr %.399, %i.fa
  %bound1 = icmp ult ptr %i.er, %i.ey
  %found.conflict = and i1 %bound0, %bound1
  %bound0178 = icmp ult ptr %.399, %i.fb
  %bound1179 = icmp ult ptr %.3103, %i.ey
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx = or i1 %found.conflict, %found.conflict180
  %bound0181 = icmp ult ptr %i.er, %i.fb
  %bound1182 = icmp ult ptr %.3103, %i.fa
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx, %found.conflict183
  br i1 %conflict.rdx184, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check185 = icmp ult i64 %.395, 16
  br i1 %min.iters.check185, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fc = and i64 %.395, 12
  %n.vec = and i64 %.395, 8589934576              ; 4 uses
  %i.fd = trunc i64 %n.vec to i32                 ; 2 uses
  %i.fe = and i64 %.395, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = and i64 %index, 4294967280              ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.ff
  %wide.load = load <16 x i8>, ptr %i.fg, align 1, !tbaa !80, !alias.scope !478
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ff
  %wide.load186 = load <16 x i8>, ptr %i.fh, align 1, !tbaa !80, !alias.scope !479, !noalias !478
  %i.fi = xor <16 x i8> %wide.load186, %wide.load ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.399, i64 %i.ff
  store <16 x i8> %i.fi, ptr %i.fj, align 1, !tbaa !80, !alias.scope !480, !noalias !481
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ff ; 2 uses
  %wide.load187 = load <16 x i8>, ptr %i.fk, align 1, !tbaa !80, !alias.scope !479, !noalias !478
  %i.fl = xor <16 x i8> %wide.load187, %i.fi
  store <16 x i8> %i.fl, ptr %i.fk, align 1, !tbaa !80, !alias.scope !479, !noalias !478
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.395, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec189 = and i64 %.395, 8589934588           ; 3 uses
  %i.fn = trunc i64 %n.vec189 to i32              ; 2 uses
  %i.fo = and i64 %.395, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next194, %vec.epilog.vector.body ] ; 2 uses
  %i.fp = and i64 %index190, 4294967292           ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.fp
  %wide.load191 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !80, !alias.scope !478
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fp
  %wide.load192 = load <4 x i8>, ptr %i.fr, align 1, !tbaa !80, !alias.scope !479, !noalias !478
  %i.fs = xor <4 x i8> %wide.load192, %wide.load191 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fp
  store <4 x i8> %i.fs, ptr %i.ft, align 1, !tbaa !80, !alias.scope !480, !noalias !481
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fp ; 2 uses
  %wide.load193 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !80, !alias.scope !479, !noalias !478
  %i.fv = xor <4 x i8> %wide.load193, %i.fs
  store <4 x i8> %i.fv, ptr %i.fu, align 1, !tbaa !80, !alias.scope !479, !noalias !478
  %index.next194 = add nuw i64 %index190, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !476

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n195 = icmp eq i64 %.395, %n.vec189
  br i1 %cmp.n195, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2135.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.fd, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ] ; 3 uses
  %.4134.ph = phi i64 [ %.395, %iter.check ], [ %.395, %vector.memcheck ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fo, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.4134.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fx = add nsw i64 %.4134.ph, -1
  %i.fy = zext i32 %.2135.ph to i64               ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !80
  %i.gb = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fy
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !80
  %i.gd = xor i8 %i.gc, %i.ga                     ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fy
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !80
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fy ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !80
  %i.gh = xor i8 %i.gg, %i.gd
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !80
  %i.gi = add i32 %.2135.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gi, %vec.epilog.scalar.ph.prol ]
  %.2135.unr = phi i32 [ %.2135.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gi, %vec.epilog.scalar.ph.prol ]
  %.4134.unr = phi i64 [ %.4134.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fx, %vec.epilog.scalar.ph.prol ]
  %i.gj = icmp eq i64 %.4134.ph, 1
  br i1 %i.gj, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2135 = phi i32 [ %i.hg, %vec.epilog.scalar.ph ], [ %.2135.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4134 = phi i64 [ %i.gv, %vec.epilog.scalar.ph ], [ %.4134.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gk = zext i32 %.2135 to i64                  ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !80
  %i.gn = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gk
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !80
  %i.gp = xor i8 %i.go, %i.gm                     ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gk
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gk ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !80
  %i.gt = xor i8 %i.gs, %i.gp
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !80
  %i.gu = add i32 %.2135, 1
  %i.gv = add i64 %.4134, -2                      ; 2 uses
  %i.gw = zext i32 %i.gu to i64                   ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !80
  %i.gz = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gw
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !80
  %i.hb = xor i8 %i.ha, %i.gy                     ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gw
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !80
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gw ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !80
  %i.hf = xor i8 %i.he, %i.hb
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !80
  %i.hg = add i32 %.2135, 2                       ; 2 uses
  %.not111.1 = icmp eq i64 %i.gv, 0
  br i1 %.not111.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !477

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.j, %._crit_edge
  %storemerge = phi i32 [ %i.by, %._crit_edge ], [ 0, %bb.j ], [ %i.bj, %.preheader ], [ %i.fn, %vec.epilog.middle.block ], [ %i.fd, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hg, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.bi, align 8, !tbaa !106
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @CRYPTO_gcm128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !103
  %i.o = add i64 %i.n, %4                         ; 3 uses
  %i.p = icmp ugt i64 %i.o, 68719476704
  %i.q = icmp ult i64 %i.o, %4
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.o, ptr %i.m, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !105
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.u, align 8
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i) ; 2 uses
  %.0.copyload.i6.i = load i64, ptr %i.t, align 8
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i) ; 2 uses
  %.val.i = load i64, ptr %0, align 8, !tbaa !95  ; 2 uses
end_hunk_3
begin_hunk_4_@CRYPTO_gcm128_decrypt:bb.a
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = xor i64 %i.bd, %i.ae
  %i.bf = xor i64 %i.be, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %i.bf)
  store i64 %i.bg, ptr %i.t, align 8
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba)
  store i64 %i.bh, ptr %i.u, align 8
  store i32 0, ptr %i.r, align 4, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !106 ; 3 uses
  %.not112 = icmp eq i32 %i.bj, 0
  br i1 %.not112, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not140 = icmp eq i64 %4, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.092123 = phi ptr [ %2, %.lr.ph ], [ %i.bm, %bb.e ] ; 2 uses
  %.096122 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %bb.e ] ; 2 uses
  %.0100121 = phi i32 [ %i.bj, %.lr.ph ], [ %i.by, %bb.e ] ; 2 uses
  %.0104120 = phi i64 [ %4, %.lr.ph ], [ %i.bw, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.092123, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.092123, align 1, !tbaa !80 ; 2 uses
  %i.bo = zext i32 %.0100121 to i64               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !80
  %i.br = xor i8 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.096122, i64 1 ; 2 uses
  store i8 %i.br, ptr %.096122, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !80
  %i.bv = xor i8 %i.bu, %i.bn
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !80
  %i.bw = add nsw i64 %.0104120, -1               ; 3 uses
  %i.bx = add i32 %.0100121, 1
  %i.by = and i32 %i.bx, 15                       ; 4 uses
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = icmp ne i64 %i.bw, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.e, label %._crit_edge, !llvm.loop !482

._crit_edge:                                      ; preds = %bb.e
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i116 = load i64, ptr %i.ce, align 8
  %i.cf = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i116) ; 2 uses
  %.0.copyload.i6.i117 = load i64, ptr %i.cd, align 8
  %i.cg = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i117) ; 2 uses
  %.val.i118 = load i64, ptr %0, align 8, !tbaa !95 ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 8
  %.val5.i119 = load i64, ptr %i.ch, align 8, !tbaa !94 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.cf, i64 noundef %.val5.i119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.cg, i64 noundef %.val.i118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.ci = xor i64 %i.cg, %i.cf
  %i.cj = xor i64 %.val5.i119, %.val.i118
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.ci, i64 noundef %i.cj)
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !96  ; 8 uses
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !96  ; 2 uses
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !96
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !96  ; 2 uses
  %i.co = load i64, ptr %i.d, align 8, !tbaa !96  ; 2 uses
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !96
  %i.cq = shl i64 %i.ck, 63
  %i.cr = shl i64 %i.ck, 62
  %i.cs = shl i64 %i.ck, 57
  %i.ct = xor i64 %i.cq, %i.cr
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = xor i64 %i.cu, %i.cm
  %i.cw = xor i64 %i.cv, %i.ck
  %i.cx = xor i64 %i.cw, %i.cl
  %i.cy = xor i64 %i.cx, %i.cn                    ; 7 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 63)
  %i.da = lshr i64 %i.cy, 1
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 62)
  %i.dc = lshr i64 %i.cy, 2
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 57)
  %i.de = xor i64 %i.cp, %i.cz
  %i.df = xor i64 %i.de, %i.db
  %i.dg = xor i64 %i.df, %i.dd
  %i.dh = xor i64 %i.dg, %i.ck
  %i.di = xor i64 %i.dh, %i.cl
  %i.dj = xor i64 %i.di, %i.cn
  %i.dk = xor i64 %i.dj, %i.co
  %i.dl = lshr i64 %i.cy, 7
  %i.dm = xor i64 %i.da, %i.dc
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = xor i64 %i.dn, %i.co
  %i.dp = xor i64 %i.do, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dq = tail call noundef i64 @llvm.bswap.i64(i64 %i.dp)
  store i64 %i.dq, ptr %i.cd, align 8
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dk)
  store i64 %i.dr, ptr %i.ce, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1105 = phi i64 [ %i.bw, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %.197 = phi ptr [ %i.bs, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.193 = phi ptr [ %i.bm, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.ds, align 4
  %i.dt = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !99 ; 2 uses
  %i.dw = icmp ugt i64 %.1105, 3071
  br i1 %i.dw, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph132, %bb.h
  %.2130 = phi ptr [ %.193, %.lr.ph132 ], [ %i.ec, %bb.h ] ; 3 uses
  %.094129 = phi i32 [ %i.dt, %.lr.ph132 ], [ %i.dz, %bb.h ]
  %.298128 = phi ptr [ %.197, %.lr.ph132 ], [ %i.eb, %bb.h ] ; 2 uses
  %.2106127 = phi i64 [ %.1105, %.lr.ph132 ], [ %i.ed, %bb.h ]
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.dx, ptr noundef nonnull %0, ptr noundef %.2130, i64 noundef 3072)
  tail call void %i.dv(ptr noundef %.2130, ptr noundef %.298128, i64 noundef 192, ptr noundef nonnull %i.dy, ptr noundef nonnull %1) #36
  %i.dz = add i32 %.094129, 192                   ; 3 uses
  %i.ea = tail call noundef i32 @llvm.bswap.i32(i32 %i.dz)
  store i32 %i.ea, ptr %i.ds, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.298128, i64 3072 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2130, i64 3072 ; 2 uses
  %i.ed = add nsw i64 %.2106127, -3072            ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 3071
  br i1 %i.ee, label %bb.h, label %._crit_edge133, !llvm.loop !483

._crit_edge133:                                   ; preds = %bb.h, %bb.g
  %.2106.lcssa = phi i64 [ %.1105, %bb.g ], [ %i.ed, %bb.h ] ; 4 uses
  %.298.lcssa = phi ptr [ %.197, %bb.g ], [ %i.eb, %bb.h ] ; 4 uses
  %.094.lcssa = phi i32 [ %i.dt, %bb.g ], [ %i.dz, %bb.h ] ; 2 uses
  %.2.lcssa = phi ptr [ %.193, %bb.g ], [ %i.ec, %bb.h ] ; 5 uses
  %i.ef = and i64 %.2106.lcssa, 4080              ; 5 uses
  %.not113 = icmp eq i64 %i.ef, 0
  br i1 %.not113, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge133
  %i.eg = lshr i64 %.2106.lcssa, 4                ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.eh, ptr noundef nonnull %0, ptr noundef %.2.lcssa, i64 noundef %i.ef)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.dv(ptr noundef %.2.lcssa, ptr noundef %.298.lcssa, i64 noundef %i.eg, ptr noundef nonnull %i.ei, ptr noundef nonnull %1) #36
  %i.ej = trunc nuw nsw i64 %i.eg to i32
  %i.ek = add i32 %.094.lcssa, %i.ej              ; 2 uses
  %i.el = tail call noundef i32 @llvm.bswap.i32(i32 %i.ek)
  store i32 %i.el, ptr %i.ds, align 4
  %i.em = getelementptr i8, ptr %.298.lcssa, i64 %i.ef
  %i.en = getelementptr i8, ptr %.2.lcssa, i64 %i.ef
  %i.eo = and i64 %.2106.lcssa, 15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge133
  %.3107 = phi i64 [ %i.eo, %bb.i ], [ %.2106.lcssa, %._crit_edge133 ] ; 14 uses
  %.399 = phi ptr [ %i.em, %bb.i ], [ %.298.lcssa, %._crit_edge133 ] ; 7 uses
  %.195 = phi i32 [ %i.ek, %bb.i ], [ %.094.lcssa, %._crit_edge133 ]
  %.3 = phi ptr [ %i.en, %bb.i ], [ %.2.lcssa, %._crit_edge133 ] ; 7 uses
  %.not114 = icmp eq i64 %.3107, 0
  br i1 %.not114, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !100
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.eq(ptr noundef nonnull %1, ptr noundef nonnull %i.er, ptr noundef nonnull %i.es) #36
  %i.et = add i32 %.195, 1
  %i.eu = tail call noundef i32 @llvm.bswap.i32(i32 %i.et)
  store i32 %i.eu, ptr %i.ds, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ew = add i64 %.3107, -4294967297
  %or.cond206 = icmp ult i64 %i.ew, -4294967293
  br i1 %or.cond206, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ex = getelementptr i8, ptr %1, i64 %.3107
  %i.ey = getelementptr i8, ptr %i.ex, i64 64     ; 2 uses
  %i.ez = add nuw nsw i64 %.3107, %i.ef           ; 2 uses
  %i.fa = getelementptr i8, ptr %.298.lcssa, i64 %i.ez ; 2 uses
  %i.fb = getelementptr i8, ptr %.2.lcssa, i64 %i.ez ; 2 uses
  %bound0 = icmp ult ptr %i.er, %i.fa
  %bound1 = icmp ult ptr %.399, %i.ey
  %found.conflict = and i1 %bound0, %bound1
  %bound0182 = icmp ult ptr %i.er, %i.fb
  %bound1183 = icmp ult ptr %.3, %i.ey
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx = or i1 %found.conflict, %found.conflict184
  %bound0185 = icmp ult ptr %.399, %i.fb
  %bound1186 = icmp ult ptr %.3, %i.fa
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx, %found.conflict187
  br i1 %conflict.rdx188, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check189 = icmp ult i64 %.3107, 32
  br i1 %min.iters.check189, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fc = and i64 %.3107, 28
  %n.vec = and i64 %.3107, 8589934560             ; 4 uses
  %i.fd = trunc i64 %n.vec to i32                 ; 2 uses
  %i.fe = and i64 %.3107, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = and i64 %index, 4294967264              ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load = load <16 x i8>, ptr %i.fg, align 1, !tbaa !80, !alias.scope !491 ; 2 uses
  %wide.load190 = load <16 x i8>, ptr %i.fh, align 1, !tbaa !80, !alias.scope !491 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ff ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %wide.load191 = load <16 x i8>, ptr %i.fi, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  %wide.load192 = load <16 x i8>, ptr %i.fj, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  %i.fk = xor <16 x i8> %wide.load191, %wide.load
  %i.fl = xor <16 x i8> %wide.load192, %wide.load190
  store <16 x i8> %i.fk, ptr %i.fi, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  store <16 x i8> %i.fl, ptr %i.fj, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ff ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load193 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  %wide.load194 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  %i.fo = xor <16 x i8> %wide.load193, %wide.load
  %i.fp = xor <16 x i8> %wide.load194, %wide.load190
  %i.fq = getelementptr inbounds nuw i8, ptr %.399, i64 %i.ff ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <16 x i8> %i.fo, ptr %i.fq, align 1, !tbaa !80, !alias.scope !494, !noalias !491
  store <16 x i8> %i.fp, ptr %i.fr, align 1, !tbaa !80, !alias.scope !494, !noalias !491
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.3107, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec196 = and i64 %.3107, 8589934588          ; 3 uses
  %i.ft = trunc i64 %n.vec196 to i32              ; 2 uses
  %i.fu = and i64 %.3107, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index197 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 2 uses
  %i.fv = and i64 %index197, 4294967292           ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fv
  %wide.load198 = load <4 x i8>, ptr %i.fw, align 1, !tbaa !80, !alias.scope !491 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fv ; 2 uses
  %wide.load199 = load <4 x i8>, ptr %i.fx, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  %i.fy = xor <4 x i8> %wide.load199, %wide.load198
  store <4 x i8> %i.fy, ptr %i.fx, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  %i.fz = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fv
  %wide.load200 = load <4 x i8>, ptr %i.fz, align 1, !tbaa !80, !alias.scope !492, !noalias !493
  %i.ga = xor <4 x i8> %wide.load200, %wide.load198
  %i.gb = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fv
  store <4 x i8> %i.ga, ptr %i.gb, align 1, !tbaa !80, !alias.scope !494, !noalias !491
  %index.next201 = add nuw i64 %index197, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.gc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !489

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n202 = icmp eq i64 %.3107, %n.vec196
  br i1 %cmp.n202, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2102139.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.fd, %vec.epilog.iter.check ], [ %i.ft, %vec.epilog.middle.block ] ; 3 uses
  %.4138.ph = phi i64 [ %.3107, %iter.check ], [ %.3107, %vector.memcheck ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fu, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.4138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gd = add nsw i64 %.4138.ph, -1
  %i.ge = zext i32 %.2102139.ph to i64            ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !80  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ge ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !80
  %i.gj = xor i8 %i.gi, %i.gg
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !80
  %i.gk = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ge
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !80
  %i.gm = xor i8 %i.gl, %i.gg
  %i.gn = getelementptr inbounds nuw i8, ptr %.399, i64 %i.ge
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !80
  %i.go = add i32 %.2102139.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.go, %vec.epilog.scalar.ph.prol ]
  %.2102139.unr = phi i32 [ %.2102139.ph, %vec.epilog.scalar.ph.preheader ], [ %i.go, %vec.epilog.scalar.ph.prol ]
  %.4138.unr = phi i64 [ %.4138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gd, %vec.epilog.scalar.ph.prol ]
  %i.gp = icmp eq i64 %.4138.ph, 1
  br i1 %i.gp, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2102139 = phi i32 [ %i.hm, %vec.epilog.scalar.ph ], [ %.2102139.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4138 = phi i64 [ %i.hb, %vec.epilog.scalar.ph ], [ %.4138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gq = zext i32 %.2102139 to i64               ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.3, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !80  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gq ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !80
  %i.gv = xor i8 %i.gu, %i.gs
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !80
  %i.gw = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gq
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !80
  %i.gy = xor i8 %i.gx, %i.gs
  %i.gz = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gq
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !80
  %i.ha = add i32 %.2102139, 1
  %i.hb = add i64 %.4138, -2                      ; 2 uses
  %i.hc = zext i32 %i.ha to i64                   ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.3, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !80  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.hc ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !80
  %i.hh = xor i8 %i.hg, %i.he
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !80
  %i.hi = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.hc
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !80
  %i.hk = xor i8 %i.hj, %i.he
  %i.hl = getelementptr inbounds nuw i8, ptr %.399, i64 %i.hc
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !80
  %i.hm = add i32 %.2102139, 2                    ; 2 uses
  %.not115.1 = icmp eq i64 %i.hb, 0
  br i1 %.not115.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !490

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.j, %._crit_edge
  %storemerge = phi i32 [ %i.by, %._crit_edge ], [ 0, %bb.j ], [ %i.bj, %.preheader ], [ %i.ft, %vec.epilog.middle.block ], [ %i.fd, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hm, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.bi, align 8, !tbaa !106
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @CRYPTO_gcm128_finish(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !106
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !105
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
end_hunk_4
begin_hunk_5_@CRYPTO_ofb128_encrypt:bb.a
  %.0.copyload.i.1.i = load i64, ptr %i.v, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.f, align 1
  %i.w = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.w, ptr %i.u, align 1
  %i.x = add i64 %.13949, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.13750, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.13551, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.139.lcssa = phi i64 [ %.038.lcssa, %.preheader ], [ %i.x, %bb.b ] ; 5 uses
  %.137.lcssa = phi ptr [ %.036.lcssa, %.preheader ], [ %i.y, %bb.b ] ; 3 uses
  %.135.lcssa = phi ptr [ %.034.lcssa, %.preheader ], [ %i.z, %bb.b ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ 0, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.139.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void %6(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %xtraiter = and i64 %.139.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ab = add nsw i64 %.139.lcssa, -1
  %i.ac = zext i32 %.1.lcssa to i64               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !80
  %i.ah = xor i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.ac
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !80
  %i.aj = add i32 %.1.lcssa, 1                    ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.258.unr = phi i32 [ %.1.lcssa, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.24057.unr = phi i64 [ %.139.lcssa, %bb.c ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ak = icmp eq i64 %.139.lcssa, 1
  br i1 %i.ak, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258 = phi i32 [ %i.bb, %.new ], [ %.258.unr, %.prol.loopexit ] ; 3 uses
  %.24057 = phi i64 [ %i.at, %.new ], [ %.24057.unr, %.prol.loopexit ]
  %i.al = zext i32 %.258 to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.al
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !80
  %i.as = add i32 %.258, 1
  %i.at = add nsw i64 %.24057, -2                 ; 2 uses
  %i.au = zext i32 %i.as to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.au
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !80
  %i.bb = add i32 %.258, 2                        ; 2 uses
  %.not41.1 = icmp eq i64 %i.at, 0
  br i1 %.not41.1, label %.loopexit, label %.new, !llvm.loop !8

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %._crit_edge
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bb, %.new ]
  store i32 %.3, ptr %5, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !82     ; 5 uses
  %.not.i = icmp eq i32 %6, 0
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b                        ; 2 uses
  br i1 %.not.i, label %.preheader114.i, label %.preheader117.i

.preheader117.i:                                  ; preds = %bb.a
  br i1 %i.d, label %.lr.ph.i, label %.preheader116.i

.preheader114.i:                                  ; preds = %bb.a
  br i1 %i.d, label %.lr.ph143.i, label %.preheader.i

.preheader116.i:                                  ; preds = %.lr.ph.i, %.preheader117.i
  %.0101.lcssa.i = phi i32 [ %i.a, %.preheader117.i ], [ %i.ae, %.lr.ph.i ] ; 4 uses
  %.097.lcssa.i = phi i64 [ %2, %.preheader117.i ], [ %i.ac, %.lr.ph.i ] ; 3 uses
  %.093.lcssa.i = phi ptr [ %1, %.preheader117.i ], [ %i.ab, %.lr.ph.i ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader117.i ], [ %i.v, %.lr.ph.i ] ; 4 uses
  %i.e = icmp ugt i64 %.097.lcssa.i, 15
  br i1 %i.e, label %.lr.ph131.i.peel, label %._crit_edge132.i

.lr.ph131.i.peel:                                 ; preds = %.preheader116.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %i.f = icmp ult i32 %.0101.lcssa.i, 16
  br i1 %i.f, label %.lr.ph126.i.peel, label %._crit_edge.i.peel

.lr.ph126.i.peel:                                 ; preds = %.lr.ph131.i.peel
  %i.g = zext nneg i32 %.0101.lcssa.i to i64      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 2 uses
  %.0.copyload.i.i.peel = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.g
  %.0.copyload.i111.i.peel = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i111.i.peel, %.0.copyload.i.i.peel ; 2 uses
  store i64 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 %i.g
  store i64 %i.j, ptr %i.k, align 1
  %i.l = icmp ult i32 %.0101.lcssa.i, 8
  br i1 %i.l, label %.lr.ph126.i.1.peel, label %._crit_edge.i.peel

.lr.ph126.i.1.peel:                               ; preds = %.lr.ph126.i.peel
  %indvars.iv.next.i.peel = add nuw nsw i64 %i.g, 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.i.peel ; 2 uses
  %.0.copyload.i.i.1.peel = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %indvars.iv.next.i.peel
  %.0.copyload.i111.i.1.peel = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i111.i.1.peel, %.0.copyload.i.i.1.peel ; 2 uses
  store i64 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 %indvars.iv.next.i.peel
  store i64 %i.o, ptr %i.p, align 1
  br label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %.lr.ph126.i.peel, %.lr.ph126.i.1.peel, %.lr.ph131.i.peel
  %i.q = add i64 %.097.lcssa.i, -16               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  %i.t = icmp ugt i64 %i.q, 15
  br i1 %i.t, label %.lr.ph131.i.preheader.peel.newph, label %._crit_edge132.i

.lr.ph131.i.preheader.peel.newph:                 ; preds = %._crit_edge.i.peel
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph131.i

.lr.ph.i:                                         ; preds = %.preheader117.i, %.lr.ph.i
  %.0121.i = phi ptr [ %i.v, %.lr.ph.i ], [ %0, %.preheader117.i ] ; 2 uses
  %.093120.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %1, %.preheader117.i ] ; 2 uses
  %.097119.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %2, %.preheader117.i ]
  %.0101118.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.a, %.preheader117.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0121.i, i64 1 ; 2 uses
  %i.w = load i8, ptr %.0121.i, align 1, !tbaa !80
  %i.x = zext i32 %.0101118.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !80
  %i.aa = xor i8 %i.z, %i.w                       ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.093120.i, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.093120.i, align 1, !tbaa !80
  %i.ac = add i64 %.097119.i, -1                  ; 3 uses
  %i.ad = add i32 %.0101118.i, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph.i, label %.preheader116.i, !llvm.loop !3

.lr.ph131.i:                                      ; preds = %.lr.ph131.i.preheader.peel.newph, %.lr.ph131.i
  %.1130.i = phi ptr [ %i.ao, %.lr.ph131.i ], [ %i.s, %.lr.ph131.i.preheader.peel.newph ] ; 3 uses
  %.194129.i = phi ptr [ %i.an, %.lr.ph131.i ], [ %i.r, %.lr.ph131.i.preheader.peel.newph ] ; 3 uses
  %.198128.i = phi i64 [ %i.am, %.lr.ph131.i ], [ %i.q, %.lr.ph131.i.preheader.peel.newph ]
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %.0.copyload.i.i = load i64, ptr %4, align 1
  %.0.copyload.i111.i = load i64, ptr %.1130.i, align 1
  %i.ai = xor i64 %.0.copyload.i111.i, %.0.copyload.i.i ; 2 uses
  store i64 %i.ai, ptr %4, align 1
  store i64 %i.ai, ptr %.194129.i, align 1
  %.0.copyload.i.i.1 = load i64, ptr %i.u, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.1130.i, i64 8
  %.0.copyload.i111.i.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i111.i.1, %.0.copyload.i.i.1 ; 2 uses
  store i64 %i.ak, ptr %i.u, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.194129.i, i64 8
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = add i64 %.198128.i, -16                 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.194129.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1130.i, i64 16 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, 15
  br i1 %i.ap, label %.lr.ph131.i, label %._crit_edge132.i, !llvm.loop !499

._crit_edge132.i:                                 ; preds = %._crit_edge.i.peel, %.lr.ph131.i, %.preheader116.i
  %.1102.lcssa.i = phi i32 [ %.0101.lcssa.i, %.preheader116.i ], [ 0, %.lr.ph131.i ], [ 0, %._crit_edge.i.peel ] ; 8 uses
  %.198.lcssa.i = phi i64 [ %.097.lcssa.i, %.preheader116.i ], [ %i.q, %._crit_edge.i.peel ], [ %i.am, %.lr.ph131.i ] ; 10 uses
  %.194.lcssa.i = phi ptr [ %.093.lcssa.i, %.preheader116.i ], [ %i.r, %._crit_edge.i.peel ], [ %i.an, %.lr.ph131.i ] ; 6 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader116.i ], [ %i.s, %._crit_edge.i.peel ], [ %i.ao, %.lr.ph131.i ] ; 6 uses
  %.not109.i = icmp eq i64 %.198.lcssa.i, 0
  br i1 %.not109.i, label %CRYPTO_cfb128_encrypt.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge132.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %min.iters.check = icmp samesign ult i64 %.198.lcssa.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aq = add nsw i64 %.198.lcssa.i, -1           ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = xor i32 %.1102.lcssa.i, -1
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1102.lcssa.i to i64          ; 4 uses
  %i.ax = getelementptr i8, ptr %4, i64 %i.aw     ; 2 uses
  %i.ay = add nuw nsw i64 %.198.lcssa.i, %i.aw    ; 3 uses
  %i.az = getelementptr i8, ptr %4, i64 %i.ay     ; 2 uses
  %i.ba = getelementptr i8, ptr %.194.lcssa.i, i64 %i.aw ; 2 uses
  %i.bb = getelementptr i8, ptr %.194.lcssa.i, i64 %i.ay ; 2 uses
  %i.bc = getelementptr i8, ptr %.1.lcssa.i, i64 %i.aw ; 2 uses
  %i.bd = getelementptr i8, ptr %.1.lcssa.i, i64 %i.ay ; 2 uses
  %bound0 = icmp ult ptr %i.ax, %i.bb
  %bound1 = icmp ult ptr %i.ba, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %bound090 = icmp ult ptr %i.ax, %i.bd
  %bound191 = icmp ult ptr %i.bc, %i.az
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx = or i1 %found.conflict, %found.conflict92
  %bound093 = icmp ult ptr %i.ba, %i.bd
  %bound194 = icmp ult ptr %i.bc, %i.bb
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx, %found.conflict95
  br i1 %conflict.rdx96, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec102 = and i64 %.198.lcssa.i, 12           ; 3 uses
  %i.be = and i64 %.198.lcssa.i, 3
  %i.bf = trunc nuw nsw i64 %n.vec102 to i32
  %i.bg = add i32 %.1102.lcssa.i, %i.bf           ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 2 uses
  %i.bh = trunc i64 %index103 to i32
  %i.bi = add i32 %.1102.lcssa.i, %i.bh
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bj
  %wide.load104 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !80, !alias.scope !513
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %i.bj ; 2 uses
  %wide.load105 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !80, !alias.scope !514, !noalias !515
  %i.bm = xor <4 x i8> %wide.load105, %wide.load104 ; 2 uses
  store <4 x i8> %i.bm, ptr %i.bl, align 1, !tbaa !80, !alias.scope !514, !noalias !515
  %i.bn = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bj
  store <4 x i8> %i.bm, ptr %i.bn, align 1, !tbaa !80, !alias.scope !516, !noalias !513
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !504

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %.198.lcssa.i, %n.vec102
  br i1 %cmp.n107, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.299138.i.ph = phi i64 [ %.198.lcssa.i, %vector.scevcheck ], [ %.198.lcssa.i, %vector.memcheck ], [ %.198.lcssa.i, %iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.i.ph = phi i32 [ %.1102.lcssa.i, %vector.scevcheck ], [ %.1102.lcssa.i, %vector.memcheck ], [ %.1102.lcssa.i, %iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bp = add nsw i64 %.299138.i.ph, -1
  %i.bq = zext i32 %.3104137.i.ph to i64          ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 %i.bq ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !80
  %i.bv = xor i8 %i.bu, %i.bs                     ; 2 uses
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bq
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !80
  %i.bx = add i32 %.3104137.i.ph, 1               ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa179.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bx, %vec.epilog.scalar.ph.prol ]
  %.299138.i.unr = phi i64 [ %.299138.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bp, %vec.epilog.scalar.ph.prol ]
  %.3104137.i.unr = phi i32 [ %.3104137.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bx, %vec.epilog.scalar.ph.prol ]
  %i.by = icmp eq i64 %.299138.i.ph, 1
  br i1 %i.by, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138.i = phi i64 [ %i.ch, %vec.epilog.scalar.ph ], [ %.299138.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137.i = phi i32 [ %i.cp, %vec.epilog.scalar.ph ], [ %.3104137.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bz = zext i32 %.3104137.i to i64             ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %i.bz ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !80
  %i.ce = xor i8 %i.cd, %i.cb                     ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bz
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !80
  %i.cg = add i32 %.3104137.i, 1
  %i.ch = add nsw i64 %.299138.i, -2              ; 2 uses
  %i.ci = zext i32 %i.cg to i64                   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 %i.ci ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !80
  %i.cn = xor i8 %i.cm, %i.ck                     ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.ci
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !80
  %i.cp = add i32 %.3104137.i, 2                  ; 2 uses
  %.not110.i.1 = icmp eq i64 %i.ch, 0
  br i1 %.not110.i.1, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph, !llvm.loop !505

.preheader.i:                                     ; preds = %.lr.ph143.i, %.preheader114.i
  %.5106.lcssa.i = phi i32 [ %i.a, %.preheader114.i ], [ %i.dq, %.lr.ph143.i ] ; 4 uses
  %.3100.lcssa.i = phi i64 [ %2, %.preheader114.i ], [ %i.do, %.lr.ph143.i ] ; 3 uses
  %.295.lcssa.i = phi ptr [ %1, %.preheader114.i ], [ %i.dn, %.lr.ph143.i ] ; 4 uses
  %.2.lcssa.i = phi ptr [ %0, %.preheader114.i ], [ %i.dk, %.lr.ph143.i ] ; 4 uses
  %i.cq = icmp ugt i64 %.3100.lcssa.i, 15
  br i1 %i.cq, label %.lr.ph156.i.peel, label %._crit_edge157.i

.lr.ph156.i.peel:                                 ; preds = %.preheader.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %i.cr = icmp ult i32 %.5106.lcssa.i, 16
  br i1 %i.cr, label %.lr.ph150.i.peel, label %._crit_edge151.i.peel

.lr.ph150.i.peel:                                 ; preds = %.lr.ph156.i.peel
  %i.cs = zext nneg i32 %.5106.lcssa.i to i64     ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 %i.cs
  %.0.copyload.i112.i.peel = load i64, ptr %i.ct, align 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 %i.cs ; 2 uses
  %.0.copyload.i113.i.peel = load i64, ptr %i.cv, align 1
  %i.cw = xor i64 %.0.copyload.i113.i.peel, %.0.copyload.i112.i.peel
  store i64 %i.cw, ptr %i.cu, align 1
  store i64 %.0.copyload.i112.i.peel, ptr %i.cv, align 1
  %i.cx = icmp ult i32 %.5106.lcssa.i, 8
  br i1 %i.cx, label %.lr.ph150.i.1.peel, label %._crit_edge151.i.peel

.lr.ph150.i.1.peel:                               ; preds = %.lr.ph150.i.peel
  %indvars.iv.next182.i.peel = add nuw nsw i64 %i.cs, 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 %indvars.iv.next182.i.peel
  %.0.copyload.i112.i.1.peel = load i64, ptr %i.cy, align 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 %indvars.iv.next182.i.peel
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.i.peel ; 2 uses
  %.0.copyload.i113.i.1.peel = load i64, ptr %i.da, align 1
  %i.db = xor i64 %.0.copyload.i113.i.1.peel, %.0.copyload.i112.i.1.peel
  store i64 %i.db, ptr %i.cz, align 1
  store i64 %.0.copyload.i112.i.1.peel, ptr %i.da, align 1
  br label %._crit_edge151.i.peel

._crit_edge151.i.peel:                            ; preds = %.lr.ph150.i.peel, %.lr.ph150.i.1.peel, %.lr.ph156.i.peel
  %i.dc = add i64 %.3100.lcssa.i, -16             ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 16 ; 2 uses
  %i.df = icmp ugt i64 %i.dc, 15
  br i1 %i.df, label %.lr.ph156.i.preheader.peel.newph, label %._crit_edge157.i

.lr.ph156.i.preheader.peel.newph:                 ; preds = %._crit_edge151.i.peel
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156.i

.lr.ph143.i:                                      ; preds = %.preheader114.i, %.lr.ph143.i
  %.2142.i = phi ptr [ %i.dk, %.lr.ph143.i ], [ %0, %.preheader114.i ] ; 2 uses
  %.295141.i = phi ptr [ %i.dn, %.lr.ph143.i ], [ %1, %.preheader114.i ] ; 2 uses
  %.3100140.i = phi i64 [ %i.do, %.lr.ph143.i ], [ %2, %.preheader114.i ]
  %.5106139.i = phi i32 [ %i.dq, %.lr.ph143.i ], [ %i.a, %.preheader114.i ] ; 2 uses
  %i.dh = zext i32 %.5106139.i to i64
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !80
  %i.dk = getelementptr inbounds nuw i8, ptr %.2142.i, i64 1 ; 2 uses
  %i.dl = load i8, ptr %.2142.i, align 1, !tbaa !80 ; 2 uses
  %i.dm = xor i8 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %.295141.i, i64 1 ; 2 uses
  store i8 %i.dm, ptr %.295141.i, align 1, !tbaa !80
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !80
  %i.do = add i64 %.3100140.i, -1                 ; 3 uses
  %i.dp = add i32 %.5106139.i, 1
  %i.dq = and i32 %i.dp, 15                       ; 3 uses
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = icmp ne i64 %i.do, 0
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %.lr.ph143.i, label %.preheader.i, !llvm.loop !4

.lr.ph156.i:                                      ; preds = %.lr.ph156.i.preheader.peel.newph, %.lr.ph156.i
  %.3155.i = phi ptr [ %i.ea, %.lr.ph156.i ], [ %i.de, %.lr.ph156.i.preheader.peel.newph ] ; 3 uses
  %.396154.i = phi ptr [ %i.dz, %.lr.ph156.i ], [ %i.dd, %.lr.ph156.i.preheader.peel.newph ] ; 3 uses
  %.4153.i = phi i64 [ %i.dy, %.lr.ph156.i ], [ %i.dc, %.lr.ph156.i.preheader.peel.newph ]
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %.0.copyload.i112.i = load i64, ptr %.3155.i, align 1 ; 2 uses
  %.0.copyload.i113.i = load i64, ptr %4, align 1
  %i.du = xor i64 %.0.copyload.i113.i, %.0.copyload.i112.i
  store i64 %i.du, ptr %.396154.i, align 1
  store i64 %.0.copyload.i112.i, ptr %4, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.3155.i, i64 8
  %.0.copyload.i112.i.1 = load i64, ptr %i.dv, align 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.396154.i, i64 8
  %.0.copyload.i113.i.1 = load i64, ptr %i.dg, align 1
  %i.dx = xor i64 %.0.copyload.i113.i.1, %.0.copyload.i112.i.1
  store i64 %i.dx, ptr %i.dw, align 1
  store i64 %.0.copyload.i112.i.1, ptr %i.dg, align 1
  %i.dy = add i64 %.4153.i, -16                   ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.396154.i, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.3155.i, i64 16 ; 2 uses
  %i.eb = icmp ugt i64 %i.dy, 15
  br i1 %i.eb, label %.lr.ph156.i, label %._crit_edge157.i, !llvm.loop !506

._crit_edge157.i:                                 ; preds = %._crit_edge151.i.peel, %.lr.ph156.i, %.preheader.i
  %.6.lcssa.i = phi i32 [ %.5106.lcssa.i, %.preheader.i ], [ 0, %.lr.ph156.i ], [ 0, %._crit_edge151.i.peel ] ; 8 uses
  %.4.lcssa.i = phi i64 [ %.3100.lcssa.i, %.preheader.i ], [ %i.dc, %._crit_edge151.i.peel ], [ %i.dy, %.lr.ph156.i ] ; 10 uses
  %.396.lcssa.i = phi ptr [ %.295.lcssa.i, %.preheader.i ], [ %i.dd, %._crit_edge151.i.peel ], [ %i.dz, %.lr.ph156.i ] ; 6 uses
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader.i ], [ %i.de, %._crit_edge151.i.peel ], [ %i.ea, %.lr.ph156.i ] ; 6 uses
  %.not107.i = icmp eq i64 %.4.lcssa.i, 0
  br i1 %.not107.i, label %CRYPTO_cfb128_encrypt.exit, label %iter.check156

iter.check156:                                    ; preds = %._crit_edge157.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %min.iters.check128 = icmp samesign ult i64 %.4.lcssa.i, 4
  br i1 %min.iters.check128, label %vec.epilog.scalar.ph157.preheader, label %vector.scevcheck110

vector.scevcheck110:                              ; preds = %iter.check156
  %i.ec = add nsw i64 %.4.lcssa.i, -1             ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = xor i32 %.6.lcssa.i, -1
  %i.ef = icmp ult i32 %i.ee, %i.ed
  %i.eg = icmp ugt i64 %i.ec, 4294967295
  %i.eh = or i1 %i.ef, %i.eg
  br i1 %i.eh, label %vec.epilog.scalar.ph157.preheader, label %vector.memcheck129

vector.memcheck129:                               ; preds = %vector.scevcheck110
  %i.ei = zext i32 %.6.lcssa.i to i64             ; 4 uses
  %i.ej = getelementptr i8, ptr %.396.lcssa.i, i64 %i.ei ; 2 uses
  %i.ek = add nuw nsw i64 %.4.lcssa.i, %i.ei      ; 3 uses
  %i.el = getelementptr i8, ptr %.396.lcssa.i, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  %i.en = getelementptr i8, ptr %4, i64 %i.ek     ; 2 uses
  %i.eo = getelementptr i8, ptr %.3.lcssa.i, i64 %i.ei ; 2 uses
  %i.ep = getelementptr i8, ptr %.3.lcssa.i, i64 %i.ek ; 2 uses
  %bound0130 = icmp ult ptr %i.ej, %i.en
  %bound1131 = icmp ult ptr %i.em, %i.el
  %found.conflict132 = and i1 %bound0130, %bound1131
  %bound0133 = icmp ult ptr %i.ej, %i.ep
  %bound1134 = icmp ult ptr %i.eo, %i.el
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %found.conflict132, %found.conflict135
  %bound0137 = icmp ult ptr %i.em, %i.ep
  %bound1138 = icmp ult ptr %i.eo, %i.en
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  br i1 %conflict.rdx140, label %vec.epilog.scalar.ph157.preheader, label %vec.epilog.ph160

vec.epilog.ph160:                                 ; preds = %vector.memcheck129
  %n.vec161 = and i64 %.4.lcssa.i, 12             ; 3 uses
  %i.eq = and i64 %.4.lcssa.i, 3
  %i.er = trunc nuw nsw i64 %n.vec161 to i32
  %i.es = add i32 %.6.lcssa.i, %i.er              ; 2 uses
  br label %vec.epilog.vector.body162

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162, %vec.epilog.ph160
  %index163 = phi i64 [ 0, %vec.epilog.ph160 ], [ %index.next166, %vec.epilog.vector.body162 ] ; 2 uses
  %i.et = trunc i64 %index163 to i32
  %i.eu = add i32 %.6.lcssa.i, %i.et
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 %i.ev ; 2 uses
  %wide.load164 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !80, !alias.scope !517, !noalias !518
  %i.ex = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.ev
  %wide.load165 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !80, !alias.scope !518 ; 2 uses
  %i.ey = xor <4 x i8> %wide.load165, %wide.load164
  %i.ez = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.ev
  store <4 x i8> %i.ey, ptr %i.ez, align 1, !tbaa !80, !alias.scope !519, !noalias !520
  store <4 x i8> %wide.load165, ptr %i.ew, align 1, !tbaa !80, !alias.scope !517, !noalias !518
  %index.next166 = add nuw i64 %index163, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.fa, label %vec.epilog.middle.block167, label %vec.epilog.vector.body162, !llvm.loop !511

vec.epilog.middle.block167:                       ; preds = %vec.epilog.vector.body162
  %cmp.n168 = icmp eq i64 %.4.lcssa.i, %n.vec161
  br i1 %cmp.n168, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph157.preheader

vec.epilog.scalar.ph157.preheader:                ; preds = %iter.check156, %vector.scevcheck110, %vector.memcheck129, %vec.epilog.middle.block167
  %.5163.i.ph = phi i64 [ %.4.lcssa.i, %vector.scevcheck110 ], [ %.4.lcssa.i, %vector.memcheck129 ], [ %.4.lcssa.i, %iter.check156 ], [ %i.eq, %vec.epilog.middle.block167 ] ; 4 uses
  %.8162.i.ph = phi i32 [ %.6.lcssa.i, %vector.scevcheck110 ], [ %.6.lcssa.i, %vector.memcheck129 ], [ %.6.lcssa.i, %iter.check156 ], [ %i.es, %vec.epilog.middle.block167 ] ; 3 uses
  %xtraiter189 = and i64 %.5163.i.ph, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %vec.epilog.scalar.ph157.prol.loopexit, label %vec.epilog.scalar.ph157.prol

vec.epilog.scalar.ph157.prol:                     ; preds = %vec.epilog.scalar.ph157.preheader
  %i.fb = add nsw i64 %.5163.i.ph, -1
  %i.fc = zext i32 %.8162.i.ph to i64             ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !80
  %i.ff = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.fc
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !80  ; 2 uses
  %i.fh = xor i8 %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.fc
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !80
  store i8 %i.fg, ptr %i.fd, align 1, !tbaa !80
  %i.fj = add i32 %.8162.i.ph, 1                  ; 2 uses
  br label %vec.epilog.scalar.ph157.prol.loopexit

vec.epilog.scalar.ph157.prol.loopexit:            ; preds = %vec.epilog.scalar.ph157.prol, %vec.epilog.scalar.ph157.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph157.preheader ], [ %i.fj, %vec.epilog.scalar.ph157.prol ]
  %.5163.i.unr = phi i64 [ %.5163.i.ph, %vec.epilog.scalar.ph157.preheader ], [ %i.fb, %vec.epilog.scalar.ph157.prol ]
  %.8162.i.unr = phi i32 [ %.8162.i.ph, %vec.epilog.scalar.ph157.preheader ], [ %i.fj, %vec.epilog.scalar.ph157.prol ]
  %i.fk = icmp eq i64 %.5163.i.ph, 1
  br i1 %i.fk, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph157

vec.epilog.scalar.ph157:                          ; preds = %vec.epilog.scalar.ph157.prol.loopexit, %vec.epilog.scalar.ph157
  %.5163.i = phi i64 [ %i.ft, %vec.epilog.scalar.ph157 ], [ %.5163.i.unr, %vec.epilog.scalar.ph157.prol.loopexit ]
  %.8162.i = phi i32 [ %i.gb, %vec.epilog.scalar.ph157 ], [ %.8162.i.unr, %vec.epilog.scalar.ph157.prol.loopexit ] ; 3 uses
  %i.fl = zext i32 %.8162.i to i64                ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 %i.fl ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !80
  %i.fo = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.fl
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !80  ; 2 uses
  %i.fq = xor i8 %i.fp, %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.fl
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !80
  store i8 %i.fp, ptr %i.fm, align 1, !tbaa !80
  %i.fs = add i32 %.8162.i, 1
  %i.ft = add nsw i64 %.5163.i, -2                ; 2 uses
  %i.fu = zext i32 %i.fs to i64                   ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !80
  %i.fx = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.fu
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !80  ; 2 uses
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.fu
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !80
  store i8 %i.fy, ptr %i.fv, align 1, !tbaa !80
  %i.gb = add i32 %.8162.i, 2                     ; 2 uses
  %.not108.i.1 = icmp eq i64 %i.ft, 0
  br i1 %.not108.i.1, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph157, !llvm.loop !512

CRYPTO_cfb128_encrypt.exit:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph157.prol.loopexit, %vec.epilog.scalar.ph157, %vec.epilog.middle.block, %vec.epilog.middle.block167, %._crit_edge132.i, %._crit_edge157.i
  %storemerge.i = phi i32 [ %.1102.lcssa.i, %._crit_edge132.i ], [ %i.gb, %vec.epilog.scalar.ph157 ], [ %.6.lcssa.i, %._crit_edge157.i ], [ %i.es, %vec.epilog.middle.block167 ], [ %i.bg, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph157.prol.loopexit ], [ %.lcssa179.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cp, %vec.epilog.scalar.ph ]
  store i32 %storemerge.i, ptr %5, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq i32 %i.b, 0                   ; 2 uses
  %spec.select = select i1 %.not25, ptr %1, ptr %2 ; 4 uses
  %spec.select28 = select i1 %.not25, ptr %2, ptr %1 ; 4 uses
  %i.e = load ptr, ptr %spec.select, align 8, !tbaa !112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !113  ; 3 uses
  %i.h = sext i32 %i.g to i64                     ; 7 uses
  %i.i = load ptr, ptr %spec.select28, align 8, !tbaa !112 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select28, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !113  ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 7 uses
  %i.m = icmp ult i32 %i.g, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.l) ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.o = trunc i64 %i.am to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.b
  %.043.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.o, %._crit_edge.loopexit.i.i ] ; 3 uses
  br i1 %i.m, label %.preheader.i.i.preheader, label %bb.c

.preheader.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.p = sub nsw i64 %i.l, %i.h                   ; 3 uses
  %min.iters.check82 = icmp ult i64 %i.p, 4
  br i1 %min.iters.check82, label %.preheader.i.i.preheader98, label %vector.ph83

vector.ph83:                                      ; preds = %.preheader.i.i.preheader
  %n.vec84 = and i64 %i.p, -4                     ; 3 uses
  %i.q = add nsw i64 %n.vec84, %i.h
  %invariant.gep114 = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next91, %vector.body85 ] ; 2 uses
  %vec.phi87 = phi <2 x i64> [ zeroinitializer, %vector.ph83 ], [ %i.s, %vector.body85 ]
  %vec.phi88 = phi <2 x i64> [ zeroinitializer, %vector.ph83 ], [ %i.t, %vector.body85 ]
  %gep115 = getelementptr [8 x i8], ptr %invariant.gep114, i64 %index86 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %gep115, i64 16
  %wide.load89 = load <2 x i64>, ptr %gep115, align 8, !tbaa !96
  %wide.load90 = load <2 x i64>, ptr %i.r, align 8, !tbaa !96
  %i.s = or <2 x i64> %wide.load89, %vec.phi87    ; 2 uses
  %i.t = or <2 x i64> %wide.load90, %vec.phi88    ; 2 uses
  %index.next91 = add nuw i64 %index86, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.u, label %middle.block92, label %vector.body85, !llvm.loop !521

middle.block92:                                   ; preds = %vector.body85
  %bin.rdx93 = or <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx93) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.p, %n.vec84
  br i1 %cmp.n94, label %.loopexit, label %.preheader.i.i.preheader98

.preheader.i.i.preheader98:                       ; preds = %.preheader.i.i.preheader, %middle.block92
  %.04157.i.i.ph = phi i64 [ %i.h, %.preheader.i.i.preheader ], [ %i.q, %middle.block92 ]
  %.04256.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.v, %middle.block92 ]
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.04353.i.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.04452.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04452.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96   ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04452.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96   ; 3 uses
  %i.aa = icmp eq i64 %i.x, %i.z
  %.neg.i.i.i.i.i = sext i1 %i.aa to i64
  %i.ab = xor i64 %i.z, %i.x
  %i.ac = sub i64 %i.x, %i.z
  %i.ad = xor i64 %i.ac, %i.x
end_hunk_5
begin_hunk_6_@slhdsa_fors_pk_from_sig:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.fy = call i32 @SHA256_Init(ptr noundef nonnull %6) #36 ; 0 uses
  %i.fz = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.ga = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.gb = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef 22) #36 ; 0 uses
  %i.gc = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %i.f, i64 noundef 32) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.gd = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %6) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ge = add i32 %i.ft, -1
  %i.gf = lshr i32 %i.ge, 1
  %i.gg = call noundef i32 @llvm.bswap.i32(i32 %i.gf)
  store i32 %i.gg, ptr %i.ed, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ee, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.gh = call i32 @SHA256_Init(ptr noundef nonnull %5) #36 ; 0 uses
  %i.gi = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.gj = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.gk = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 22) #36 ; 0 uses
  %i.gl = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %i.f, i64 noundef 32) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.gm = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %5) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull readonly align 16 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %exitcond.not = icmp eq i64 %i.fn, 12
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !1467
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_thash_tk(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = call i32 @SHA256_Init(ptr noundef nonnull %4) #36 ; 0 uses
  %i.c = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.d = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.e = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %3, i64 noundef 22) #36 ; 0 uses
  %i.f = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 224) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.g = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_treehash(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = icmp ult i32 %3, 10
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = lshr exact i32 512, %3
  %i.e = icmp ult i32 %2, %i.d
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.h = lshr i32 %2, 8
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.g, i8 0, i64 13, i1 false)
  store i8 %i.i, ptr %i.j, align 1, !tbaa !80
  %i.k = trunc i32 %2 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 %i.k, ptr %i.l, align 1, !tbaa !80
  tail call void @slhdsa_wots_pk_gen(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.m = shl nuw nsw i32 %2, 1                    ; 2 uses
  %i.n = add nsw i32 %3, -1                       ; 2 uses
  call void @slhdsa_treehash(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %i.m, i32 noundef %i.n, ptr noundef %4, ptr noundef %5)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = or disjoint i32 %i.m, 1
  call void @slhdsa_treehash(ptr noundef nonnull %i.o, ptr noundef %1, i32 noundef %i.p, i32 noundef %i.n, ptr noundef %4, ptr noundef %5)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, i8 0, i64 7, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 2, ptr %i.r, align 1, !tbaa !80
  %i.s = trunc nuw nsw i32 %3 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.s, ptr %i.t, align 1, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  store i32 %i.v, ptr %i.u, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.w = call i32 @SHA256_Init(ptr noundef nonnull %6) #36 ; 0 uses
  %i.x = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef %4, i64 noundef 16) #36 ; 0 uses
  %i.y = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.z = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef %5, i64 noundef 22) #36 ; 0 uses
  %i.aa = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %i.b, i64 noundef 32) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ab = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %6) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_wots_pk_gen(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %5 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %6 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 9 uses
  %i.e = alloca [32 x i8], align 16               ; 10 uses
  %i.f = alloca [560 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 5, ptr %i.h, align 1, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(9) %3, i64 9, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 %i.j, ptr %i.k, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store i8 %i.m, ptr %i.n, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 21
  br label %bb.c

bb.b:                                             ; preds = %_ZL5chainPhPKhjjS1_S_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 1, ptr %i.s, align 1, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(9) %3, i64 9, i1 false)
  %i.t = load i8, ptr %i.i, align 1, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %i.t, ptr %i.u, align 4, !tbaa !80
  %i.v = load i8, ptr %i.l, align 1, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %i.v, ptr %i.w, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.x = call i32 @SHA256_Init(ptr noundef nonnull %6) #36 ; 0 uses
  %i.y = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.z = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.aa = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %i.d, i64 noundef 22) #36 ; 0 uses
  %i.ab = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %i.f, i64 noundef 560) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.ac = call i32 @SHA256_Final(ptr noundef nonnull %i.c, ptr noundef nonnull %6) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  ret void

bb.c:                                             ; preds = %bb.a, %_ZL5chainPhPKhjjS1_S_.exit
  %.012 = phi i64 [ 0, %bb.a ], [ %i.au, %_ZL5chainPhPKhjjS1_S_.exit ] ; 3 uses
  %i.ad = shl nuw nsw i64 %.012, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ad ; 3 uses
  %i.af = trunc nuw i64 %.012 to i8               ; 2 uses
  store i8 %i.af, ptr %i.o, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ag = call i32 @SHA256_Init(ptr noundef nonnull %5) #36 ; 0 uses
  %i.ah = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.ai = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.aj = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %i.e, i64 noundef 22) #36 ; 0 uses
  %i.ak = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.al = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %5) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  store i8 %i.af, ptr %i.p, align 1, !tbaa !80
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.013.i = phi i64 [ 0, %bb.c ], [ %i.at, %bb.d ] ; 2 uses
  %i.am = trunc nuw i64 %.013.i to i8
  store i8 %i.am, ptr %i.q, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.an = call i32 @SHA256_Init(ptr noundef nonnull %4) #36 ; 0 uses
  %i.ao = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.ap = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.aq = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 22) #36 ; 0 uses
  %i.ar = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull %i.ae, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.as = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.at = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, 15
  br i1 %exitcond.not.i, label %_ZL5chainPhPKhjjS1_S_.exit, label %bb.d, !llvm.loop !52

_ZL5chainPhPKhjjS1_S_.exit:                       ; preds = %bb.d
  %i.au = add nuw nsw i64 %.012, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, 35
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1468
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_xmss_sign(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = xor i32 %2, 1
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.a, ptr noundef %3, i32 noundef %i.b, i32 noundef 0, ptr noundef %4, ptr noundef %5)
  %i.c = lshr i32 %2, 1
  %i.d = xor i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.e, ptr noundef %3, i32 noundef %i.d, i32 noundef 1, ptr noundef %4, ptr noundef %5)
  %i.f = lshr i32 %2, 2
  %i.g = xor i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.h, ptr noundef %3, i32 noundef %i.g, i32 noundef 2, ptr noundef %4, ptr noundef %5)
  %i.i = lshr i32 %2, 3
  %i.j = xor i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.k, ptr noundef %3, i32 noundef %i.j, i32 noundef 3, ptr noundef %4, ptr noundef %5)
  %i.l = lshr i32 %2, 4
  %i.m = xor i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.n, ptr noundef %3, i32 noundef %i.m, i32 noundef 4, ptr noundef %4, ptr noundef %5)
  %i.o = lshr i32 %2, 5
  %i.p = xor i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.q, ptr noundef %3, i32 noundef %i.p, i32 noundef 5, ptr noundef %4, ptr noundef %5)
  %i.r = lshr i32 %2, 6
  %i.s = xor i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.t, ptr noundef %3, i32 noundef %i.s, i32 noundef 6, ptr noundef %4, ptr noundef %5)
  %i.u = lshr i32 %2, 7
  %i.v = xor i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.w, ptr noundef %3, i32 noundef %i.v, i32 noundef 7, ptr noundef %4, ptr noundef %5)
  %i.x = lshr i32 %2, 8                           ; 2 uses
  %i.y = xor i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.z, ptr noundef %3, i32 noundef %i.y, i32 noundef 8, ptr noundef %4, ptr noundef %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.ab = trunc i32 %i.x to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.aa, i8 0, i64 13, i1 false)
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !80
  %i.ad = trunc i32 %2 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !80
  tail call void @slhdsa_wots_sign(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_wots_sign(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %6 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %7 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %8 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.g = alloca [32 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %9 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.i = alloca [32 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [32 x i8], align 16               ; 14 uses
  %i.l = load i8, ptr %1, align 1, !tbaa !80      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !80    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !80    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.r = load <12 x i8>, ptr %i.q, align 1, !tbaa !80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.t = load i8, ptr %i.s, align 1, !tbaa !80    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.u, i8 0, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 5, ptr %i.v, align 1, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(9) %4, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = load i8, ptr %i.w, align 1, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.x, ptr %i.y, align 4, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 17 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 17 ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.ae = xor i8 %i.l, -1
  %i.af = lshr i8 %i.ae, 4
  %i.ag = and i8 %i.l, 15
  %i.ah = xor i8 %i.ag, 15
  %narrow = add nuw nsw i8 %i.af, %i.ah
  %i.ai = xor i8 %i.n, -1
  %i.aj = lshr i8 %i.ai, 4
  %narrow58 = add nuw nsw i8 %narrow, %i.aj
  %i.ak = and i8 %i.n, 15
  %i.al = xor i8 %i.ak, 15
  %narrow59 = add nuw nsw i8 %narrow58, %i.al
  %i.am = xor i8 %i.p, -1
  %i.an = lshr i8 %i.am, 4
  %narrow60 = add nuw nsw i8 %narrow59, %i.an
  %i.ao = and i8 %i.p, 15
  %i.ap = xor i8 %i.ao, 15
  %narrow61 = add nuw i8 %narrow60, %i.ap
  %i.aq = zext i8 %narrow61 to i16
  %i.ar = xor <12 x i8> %i.r, splat (i8 -1)
  %i.as = and <12 x i8> %i.r, splat (i8 15)
  %i.at = lshr <12 x i8> %i.ar, splat (i8 4)
  %i.au = xor <12 x i8> %i.as, splat (i8 15)
  %i.av = shufflevector <12 x i8> %i.at, <12 x i8> %i.au, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aw = zext nneg <24 x i8> %i.av to <24 x i16>
  %i.ax = xor i8 %i.t, -1
  %i.ay = lshr i8 %i.ax, 4
  %i.az = and i8 %i.t, 15
  %i.ba = xor i8 %i.az, 15
  %i.bb = call i16 @llvm.vector.reduce.add.v24i16(<24 x i16> %i.aw)
  %op.rdx = add nuw nsw i16 %i.bb, %i.aq
  %narrow64 = add nuw nsw i8 %i.ay, %i.ba
  %op.rdx62 = zext nneg i8 %narrow64 to i16
  %op.rdx63 = add nuw nsw i16 %op.rdx, %op.rdx62  ; 2 uses
  %i.bc = lshr i16 %op.rdx63, 8
  %i.bd = zext nneg i16 %i.bc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  store i8 32, ptr %i.ac, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.be = call i32 @SHA256_Init(ptr noundef nonnull %9) #36 ; 0 uses
  %i.bf = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.bg = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.bh = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %i.k, i64 noundef 22) #36 ; 0 uses
  %i.bi = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  %i.bj = call i32 @SHA256_Final(ptr noundef nonnull %i.i, ptr noundef nonnull %9) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  store i8 32, ptr %i.ad, align 1, !tbaa !80
  call fastcc void @_ZL5chainPhPKhjjS1_S_(ptr noundef nonnull %i.da, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef %i.bd, ptr noundef %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  %i.bk = getelementptr inbounds nuw i8, ptr %.05053, i64 48
  %i.bl = trunc i16 %op.rdx63 to i8               ; 2 uses
  %i.bm = lshr i8 %i.bl, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  store i8 33, ptr %i.ac, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.bn = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.bo = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.bp = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.bq = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.k, i64 noundef 22) #36 ; 0 uses
  %i.br = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
end_hunk_6
begin_hunk_7_@_ZL14aes_cbc_cipherP17evp_cipher_ctx_stPhPKhm:bb.a
  %.not21 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !372  ; 3 uses
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %CRYPTO_cbc128_encrypt.exit, label %.preheader51.i

.preheader51.i:                                   ; preds = %bb.d
  %i.n = icmp ugt i64 %3, 15
  br i1 %i.n, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader51.i, %.lr.ph.i
  %.055.i = phi ptr [ %.04553.i, %.lr.ph.i ], [ %i.j, %.preheader51.i ] ; 2 uses
  %.04354.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %.preheader51.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.v, %.lr.ph.i ], [ %1, %.preheader51.i ] ; 8 uses
  %.04752.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %.preheader51.i ]
  %.0.copyload.i.i.i = load i64, ptr %.04354.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %.055.i, align 1
  %i.o = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.o, ptr %.04553.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04553.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.04354.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  %.0.copyload.i7.1.i.i = load i64, ptr %i.r, align 1
  %i.s = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.s, ptr %i.p, align 1
  tail call void %i.l(ptr noundef nonnull %.04553.i, ptr noundef nonnull %.04553.i, ptr noundef nonnull %i.b) #36, !inline_history !1518
  %i.t = add i64 %.04752.i, -16                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04354.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04553.i, i64 16 ; 2 uses
  %i.w = icmp ugt i64 %i.t, 15
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.e, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader51.i
  %.0.lcssa77.i = phi ptr [ %.04553.i, %._crit_edge.i ], [ %i.j, %.preheader51.i ] ; 15 uses
  %.043.lcssa76.i = phi ptr [ %i.u, %._crit_edge.i ], [ %2, %.preheader51.i ] ; 8 uses
  %.045.lcssa75.i = phi ptr [ %i.v, %._crit_edge.i ], [ %1, %.preheader51.i ] ; 18 uses
  %.047.lcssa74.i = phi i64 [ %i.t, %._crit_edge.i ], [ %3, %.preheader51.i ] ; 14 uses
  %.045.lcssa75.i33 = ptrtoaddr ptr %.045.lcssa75.i to i64 ; 3 uses
  %.0.lcssa77.i35 = ptrtoaddr ptr %.0.lcssa77.i to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.047.lcssa74.i, 4
  br i1 %min.iters.check, label %.preheader50.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.043.lcssa76.i34 = ptrtoaddr ptr %.043.lcssa76.i to i64
  %i.x = sub i64 %.043.lcssa76.i34, %.045.lcssa75.i33
  %diff.check = icmp ugt i64 %i.x, -32
  %i.y = sub i64 %.0.lcssa77.i35, %.045.lcssa75.i33
  %diff.check36 = icmp ugt i64 %i.y, -32
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.preheader50.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %.047.lcssa74.i, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !80
  %wide.load38 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load39 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !80
  %wide.load40 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !80
  %i.ad = xor <16 x i8> %wide.load39, %wide.load
  %i.ae = xor <16 x i8> %wide.load40, %wide.load38
  %i.af = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %i.ad, ptr %i.af, align 1, !tbaa !80
  store <16 x i8> %i.ae, ptr %i.ag, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !1512

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec41 = and i64 %.047.lcssa74.i, 12          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %index42
  %wide.load43 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %index42
  %wide.load44 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !80
  %i.aj = xor <4 x i8> %wide.load44, %wide.load43
  %i.ak = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %index42
  store <4 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !80
  %index.next45 = add nuw i64 %index42, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1513

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.047.lcssa74.i, %n.vec41
  br i1 %cmp.n46, label %iter.check63, label %.preheader50.i.preheader

.preheader50.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.04159.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.047.lcssa74.i, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader50.i.prol.loopexit, label %.preheader50.i.prol

.preheader50.i.prol:                              ; preds = %.preheader50.i.preheader, %.preheader50.i.prol
  %.04159.i.prol = phi i64 [ %i.as, %.preheader50.i.prol ], [ %.04159.i.ph, %.preheader50.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader50.i.prol ], [ 0, %.preheader50.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %.04159.i.prol
  %i.an = load i8, ptr %i.am, align 1, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.04159.i.prol
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.04159.i.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !80
  %i.as = add nuw nsw i64 %.04159.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader50.i.prol.loopexit, label %.preheader50.i.prol, !llvm.loop !1514

.preheader50.i.prol.loopexit:                     ; preds = %.preheader50.i.prol, %.preheader50.i.preheader
  %.04159.i.unr = phi i64 [ %.04159.i.ph, %.preheader50.i.preheader ], [ %i.as, %.preheader50.i.prol ]
  %i.at = sub nsw i64 %.04159.i.ph, %.047.lcssa74.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %iter.check63, label %.preheader50.i

.preheader50.i:                                   ; preds = %.preheader50.i.prol.loopexit, %.preheader50.i
  %.04159.i = phi i64 [ %i.bw, %.preheader50.i ], [ %.04159.i.unr, %.preheader50.i.prol.loopexit ] ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %.04159.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.04159.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.04159.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !80
  %i.bb = add nuw nsw i64 %.04159.i, 1            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  %i.bg = xor i8 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.bb
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !80
  %i.bi = add nuw nsw i64 %.04159.i, 2            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.bi
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !80
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !80
  %i.bp = add nuw nsw i64 %.04159.i, 3            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !80
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !80
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.bp
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !80
  %i.bw = add nuw nsw i64 %.04159.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bw, %.047.lcssa74.i
  br i1 %exitcond.not.i.3, label %iter.check63, label %.preheader50.i, !llvm.loop !1515

iter.check63:                                     ; preds = %.preheader50.i.prol.loopexit, %.preheader50.i, %vec.epilog.middle.block
  %i.bx = sub nuw nsw i64 16, %.047.lcssa74.i     ; 2 uses
  %min.iters.check49 = icmp ugt i64 %.047.lcssa74.i, 8
  %i.by = sub i64 %.0.lcssa77.i35, %.045.lcssa75.i33
  %diff.check48 = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check49, i1 true, i1 %diff.check48
  br i1 %or.cond, label %.lr.ph61.i.preheader, label %vec.epilog.ph67

vec.epilog.ph67:                                  ; preds = %iter.check63
  %n.vec68 = and i64 %i.bx, 24                    ; 3 uses
  %i.bz = add nuw nsw i64 %.047.lcssa74.i, %n.vec68
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.047.lcssa74.i
  %wide.load71 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !80
  %i.cb = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.047.lcssa74.i
  store <8 x i8> %wide.load71, ptr %i.cb, align 1, !tbaa !80
  %i.cc = icmp eq i64 %n.vec68, 8
  br i1 %i.cc, label %vec.epilog.middle.block73, label %vec.epilog.vector.body69.1

vec.epilog.vector.body69.1:                       ; preds = %vec.epilog.ph67
  %i.cd = add nuw nsw i64 %.047.lcssa74.i, 8      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cd
  %wide.load71.1 = load <8 x i8>, ptr %i.ce, align 1, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cd
  store <8 x i8> %wide.load71.1, ptr %i.cf, align 1, !tbaa !80
  br label %vec.epilog.middle.block73

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body69.1, %vec.epilog.ph67
  %cmp.n74 = icmp eq i64 %i.bx, %n.vec68
  br i1 %cmp.n74, label %._crit_edge62.i, label %.lr.ph61.i.preheader

.lr.ph61.i.preheader:                             ; preds = %iter.check63, %vec.epilog.middle.block73
  %.14260.i.ph = phi i64 [ %.047.lcssa74.i, %iter.check63 ], [ %i.bz, %vec.epilog.middle.block73 ] ; 4 uses
  %i.cg = sub i64 0, %.14260.i.ph
  %xtraiter78 = and i64 %i.cg, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph61.i.prol.loopexit, label %.lr.ph61.i.prol

.lr.ph61.i.prol:                                  ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i.prol
  %.14260.i.prol = phi i64 [ %i.ck, %.lr.ph61.i.prol ], [ %.14260.i.ph, %.lr.ph61.i.preheader ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph61.i.prol ], [ 0, %.lr.ph61.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.14260.i.prol
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !80
  %i.cj = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.14260.i.prol
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !80
  %i.ck = add i64 %.14260.i.prol, 1               ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph61.i.prol.loopexit, label %.lr.ph61.i.prol, !llvm.loop !1516

.lr.ph61.i.prol.loopexit:                         ; preds = %.lr.ph61.i.prol, %.lr.ph61.i.preheader
  %.14260.i.unr = phi i64 [ %.14260.i.ph, %.lr.ph61.i.preheader ], [ %i.ck, %.lr.ph61.i.prol ]
  %i.cl = add i64 %.14260.i.ph, -13
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %._crit_edge62.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.prol.loopexit, %.lr.ph61.i
  %.14260.i = phi i64 [ %i.dc, %.lr.ph61.i ], [ %.14260.i.unr, %.lr.ph61.i.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.14260.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.14260.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !80
  %i.cq = add i64 %.14260.i, 1                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !80
  %i.cu = add i64 %.14260.i, 2                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !80
  %i.cx = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !80
  %i.cy = add i64 %.14260.i, 3                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !80
  %i.db = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1, !tbaa !80
  %i.dc = add i64 %.14260.i, 4                    ; 2 uses
  %exitcond67.not.i.3 = icmp eq i64 %i.dc, 16
  br i1 %exitcond67.not.i.3, label %._crit_edge62.i, label %.lr.ph61.i, !llvm.loop !1517

._crit_edge62.i:                                  ; preds = %.lr.ph61.i.prol.loopexit, %.lr.ph61.i, %vec.epilog.middle.block73
  tail call void %i.l(ptr noundef nonnull %.045.lcssa75.i, ptr noundef nonnull %.045.lcssa75.i, ptr noundef nonnull %i.b) #36, !inline_history !1518
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge62.i, %._crit_edge.i
  %.2.i = phi ptr [ %.045.lcssa75.i, %._crit_edge62.i ], [ %.04553.i, %._crit_edge.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(16) %.2.i, i64 16, i1 false)
  br label %CRYPTO_cbc128_encrypt.exit

bb.f:                                             ; preds = %bb.c
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef %i.l)
  br label %CRYPTO_cbc128_encrypt.exit

CRYPTO_cbc128_encrypt.exit:                       ; preds = %bb.e, %bb.d, %bb.f, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_ctr_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  tail call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.g)
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_ofb_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !372  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !82   ; 3 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i64 %3, 0
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.038.lcssa.i = phi i64 [ %3, %bb.a ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.g, %bb.a ], [ %i.v, %.lr.ph.i ]
  %i.k = icmp ugt i64 %.038.lcssa.i, 15
  br i1 %i.k, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.045.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %.03444.i = phi ptr [ %i.m, %.lr.ph.i ], [ %2, %bb.a ] ; 2 uses
  %.03643.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.03842.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.03444.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %.03444.i, align 1, !tbaa !80
  %i.o = zext i32 %.045.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !80
  %i.r = xor i8 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.03643.i, align 1, !tbaa !80
  %i.t = add i64 %.03842.i, -1                    ; 3 uses
  %i.u = add i32 %.045.i, 1
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne i64 %i.t, 0
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %.preheader.i, !llvm.loop !6

bb.b:                                             ; preds = %bb.b, %.lr.ph52.i
  %.13551.i = phi ptr [ %.034.lcssa.i, %.lr.ph52.i ], [ %i.af, %bb.b ] ; 3 uses
  %.13750.i = phi ptr [ %.036.lcssa.i, %.lr.ph52.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.13949.i = phi i64 [ %.038.lcssa.i, %.lr.ph52.i ], [ %i.ad, %bb.b ]
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #36, !inline_history !1519
  %.0.copyload.i.i.i = load i64, ptr %.13551.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %i.c, align 4
  %i.z = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.z, ptr %.13750.i, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.13551.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.ab, align 1
  %.0.copyload.i7.1.i.i = load i64, ptr %i.l, align 4
  %i.ac = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = add i64 %.13949.i, -16                  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.13551.i, i64 16 ; 2 uses
  %i.ag = icmp ugt i64 %i.ad, 15
  br i1 %i.ag, label %bb.b, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %.139.lcssa.i = phi i64 [ %.038.lcssa.i, %.preheader.i ], [ %i.ad, %bb.b ] ; 5 uses
  %.137.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.135.lcssa.i = phi ptr [ %.034.lcssa.i, %.preheader.i ], [ %i.af, %bb.b ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %.not.i = icmp eq i64 %.139.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ofb128_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #36, !inline_history !1519
  %xtraiter = and i64 %.139.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ah = add nsw i64 %.139.lcssa.i, -1
  %i.ai = zext i32 %.1.lcssa.i to i64             ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1, !tbaa !80
  %i.an = xor i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ai
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !80
  %i.ap = add i32 %.1.lcssa.i, 1                  ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %.258.i.unr = phi i32 [ %.1.lcssa.i, %bb.c ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %.24057.i.unr = phi i64 [ %.139.lcssa.i, %bb.c ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %i.aq = icmp eq i64 %.139.lcssa.i, 1
  br i1 %i.aq, label %CRYPTO_ofb128_encrypt.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258.i = phi i32 [ %i.bh, %.new ], [ %.258.i.unr, %.prol.loopexit ] ; 3 uses
  %.24057.i = phi i64 [ %i.az, %.new ], [ %.24057.i.unr, %.prol.loopexit ]
  %i.ar = zext i32 %.258.i to i64                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !80
  %i.aw = xor i8 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ar
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !80
  %i.ay = add i32 %.258.i, 1
  %i.az = add nsw i64 %.24057.i, -2               ; 2 uses
  %i.ba = zext i32 %i.ay to i64                   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !80
  %i.bf = xor i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ba
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !80
  %i.bh = add i32 %.258.i, 2                      ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.az, 0
  br i1 %.not41.i.1, label %CRYPTO_ofb128_encrypt.exit, label %.new, !llvm.loop !8

CRYPTO_ofb128_encrypt.exit:                       ; preds = %.prol.loopexit, %.new, %._crit_edge.i
  %.3.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bh, %.new ]
  store i32 %.3.i, ptr %i.d, align 8, !tbaa !82
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL16aes_gcm_init_keyP17evp_cipher_ctx_stPKhS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 %3) #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 21 uses
  %i.d = icmp ne ptr %2, null                     ; 2 uses
end_hunk_7
