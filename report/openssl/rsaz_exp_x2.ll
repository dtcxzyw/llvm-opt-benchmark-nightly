Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsaz_exp_x2?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ossl_rsaz_mod_exp_avx512_x2:bb.a
  %i.nn = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 3
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !11
  %i.no = lshr i64 %.08.i39.i130, 24
  %i.np = trunc i64 %i.no to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 4
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !11
  %i.nr = lshr i64 %.08.i39.i130, 32
  %i.ns = trunc i64 %i.nr to i8
  %i.nt = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 5
  store i8 %i.ns, ptr %i.nq, align 1, !tbaa !11
  %i.nu = lshr i64 %.08.i39.i130, 40
  %i.nv = trunc i64 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 6
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !11
  %i.nx = lshr i64 %.08.i39.i130, 48
  %i.ny = trunc i64 %i.nx to i8
  %i.nz = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 7
  store i8 %i.ny, ptr %i.nw, align 1, !tbaa !11
  %i.oa = lshr i64 %.08.i39.i130, 56
  %i.ob = trunc nuw i64 %i.oa to i8
  %i.oc = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 8
  store i8 %i.ob, ptr %i.nz, align 1, !tbaa !11
  %i.od = add nsw i32 %.047.i40.i131, -8
  %i.oe = icmp sgt i32 %.047.i40.i131, 8
  br i1 %i.oe, label %.lr.ph.i38.i129, label %from_words52.exit143, !llvm.loop !17

from_words52.exit143:                             ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129, %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134, %bb.p, %bb.q
  %i.of = lshr exact i32 %12, 6                   ; 3 uses
  %i.og = zext nneg i32 %i.of to i64              ; 6 uses
  %i.oh = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %0, ptr noundef %3, i32 noundef %i.of) #7 ; 2 uses
  %i.oi = sub i64 0, %i.oh
  %i.oj = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.oi) #9, !srcloc !27 ; 2 uses
  %i.ok = add i64 %i.oh, -1
  %i.ol = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ok) #9, !srcloc !27 ; 2 uses
  %min.iters.check = icmp ult i32 %12, 256
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %from_words52.exit143
  %n.vec = and i64 %i.og, 67108860                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.oj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.ol, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.om, align 8, !tbaa !9
  %wide.load197 = load <2 x i64>, ptr %i.on, align 8, !tbaa !9
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %wide.load198 = load <2 x i64>, ptr %i.oo, align 8, !tbaa !9
  %wide.load199 = load <2 x i64>, ptr %i.op, align 8, !tbaa !9
  %i.oq = and <2 x i64> %wide.load, %broadcast.splat
  %i.or = and <2 x i64> %wide.load197, %broadcast.splat
  %i.os = and <2 x i64> %wide.load198, %broadcast.splat196
  %i.ot = and <2 x i64> %wide.load199, %broadcast.splat196
  %i.ou = or <2 x i64> %i.os, %i.oq
  %i.ov = or <2 x i64> %i.ot, %i.or
  store <2 x i64> %i.ou, ptr %i.om, align 8, !tbaa !9
  store <2 x i64> %i.ov, ptr %i.on, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ow = icmp eq i64 %index.next, %n.vec
  br i1 %i.ow, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.og
  br i1 %cmp.n, label %.lr.ph.i.i146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %from_words52.exit143, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %from_words52.exit143 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.pe, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !9
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !9
  %i.pb = and i64 %i.oy, %i.oj
  %i.pc = and i64 %i.pa, %i.ol
  %i.pd = or i64 %i.pc, %i.pb
  store i64 %i.pd, ptr %i.ox, align 8, !tbaa !9
  %i.pe = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.pe, %i.og
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i146, label %scalar.ph, !llvm.loop !22

.lr.ph.i.i146:                                    ; preds = %scalar.ph, %middle.block
  %i.pf = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %6, ptr noundef %9, i32 noundef %i.of) #7 ; 2 uses
  %i.pg = sub i64 0, %i.pf
  %i.ph = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.pg) #9, !srcloc !27 ; 2 uses
  %i.pi = add i64 %i.pf, -1
  %i.pj = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.pi) #9, !srcloc !27 ; 2 uses
  %min.iters.check201 = icmp ult i32 %12, 256
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.i.i146
  %n.vec203 = and i64 %i.og, 67108860             ; 3 uses
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %i.ph, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert206 = insertelement <2 x i64> poison, i64 %i.pj, i64 0
  %broadcast.splat207 = shufflevector <2 x i64> %broadcast.splatinsert206, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph202
  %index209 = phi i64 [ 0, %vector.ph202 ], [ %index.next214, %vector.body208 ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index209 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 2 uses
  %wide.load210 = load <2 x i64>, ptr %i.pk, align 8, !tbaa !9
  %wide.load211 = load <2 x i64>, ptr %i.pl, align 8, !tbaa !9
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index209 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %wide.load212 = load <2 x i64>, ptr %i.pm, align 8, !tbaa !9
  %wide.load213 = load <2 x i64>, ptr %i.pn, align 8, !tbaa !9
  %i.po = and <2 x i64> %wide.load210, %broadcast.splat205
  %i.pp = and <2 x i64> %wide.load211, %broadcast.splat205
  %i.pq = and <2 x i64> %wide.load212, %broadcast.splat207
  %i.pr = and <2 x i64> %wide.load213, %broadcast.splat207
  %i.ps = or <2 x i64> %i.pq, %i.po
  %i.pt = or <2 x i64> %i.pr, %i.pp
  store <2 x i64> %i.ps, ptr %i.pk, align 8, !tbaa !9
  store <2 x i64> %i.pt, ptr %i.pl, align 8, !tbaa !9
  %index.next214 = add nuw i64 %index209, 4       ; 2 uses
  %i.pu = icmp eq i64 %index.next214, %n.vec203
  br i1 %i.pu, label %middle.block215, label %vector.body208, !llvm.loop !23

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %n.vec203, %i.og
  br i1 %cmp.n216, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %.lr.ph.i.i146, %middle.block215
  %.09.i.i147.ph = phi i64 [ 0, %.lr.ph.i.i146 ], [ %n.vec203, %middle.block215 ]
  br label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %scalar.ph200
  %.09.i.i147 = phi i64 [ %i.qc, %scalar.ph200 ], [ %.09.i.i147.ph, %scalar.ph200.preheader ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i147 ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !9
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i147
  %i.py = load i64, ptr %i.px, align 8, !tbaa !9
  %i.pz = and i64 %i.pw, %i.ph
  %i.qa = and i64 %i.py, %i.pj
  %i.qb = or i64 %i.qa, %i.pz
  store i64 %i.qb, ptr %i.pv, align 8, !tbaa !9
  %i.qc = add nuw i64 %.09.i.i147, 1              ; 2 uses
  %exitcond.not.i.i148 = icmp eq i64 %i.qc, %i.og
  br i1 %exitcond.not.i.i148, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200, !llvm.loop !24

RSAZ_mod_exp_x2_ifma256.exit.thread:              ; preds = %scalar.ph200, %middle.block215, %bb.g, %bb.d, %bb.c
  %.0113.ph = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %middle.block215 ], [ 1, %scalar.ph200 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.w, i64 noundef %i.v) #7
  call void @CRYPTO_free(ptr noundef nonnull %i.w, ptr noundef nonnull @.str, i32 noundef 321) #7
  br label %bn_reduce_once_in_place.exit149

bn_reduce_once_in_place.exit149:                  ; preds = %bb.b, %bb.a, %RSAZ_mod_exp_x2_ifma256.exit.thread
  %.0113156 = phi i32 [ %.0113.ph, %RSAZ_mod_exp_x2_ifma256.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0113156
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @ossl_rsaz_avx512ifma_eligible() local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @to_words52(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 -33554428, 33554429) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 103
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.050 = phi ptr [ %i.j, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.03349 = phi i32 [ %i.h, %.lr.ph ], [ %1, %bb.a ]
  %.03548 = phi ptr [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.03647 = phi i32 [ %i.i, %.lr.ph ], [ %3, %bb.a ] ; 2 uses
  %.0.copyload = load i64, ptr %.03548, align 1
  %i.b = and i64 %.0.copyload, 4503599627370495
  store i64 %i.b, ptr %.050, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %.03548, i64 6
  %.0.copyload3 = load i64, ptr %i.c, align 1
  %i.d = lshr i64 %.0.copyload3, 4
  %i.e = and i64 %i.d, 4503599627370495
  %i.f = getelementptr inbounds nuw i8, ptr %.050, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %.03548, i64 13 ; 2 uses
  %i.h = add nsw i32 %.03349, -2                  ; 2 uses
  %i.i = add nsw i32 %.03647, -104                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.050, i64 16 ; 2 uses
  %i.k = icmp samesign ugt i32 %.03647, 207
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.036.lcssa = phi i32 [ %3, %bb.a ], [ %i.i, %.lr.ph ] ; 10 uses
  %.035.lcssa = phi ptr [ %2, %bb.a ], [ %i.g, %.lr.ph ] ; 19 uses
  %.033.lcssa = phi i32 [ %1, %bb.a ], [ %i.h, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %.lr.ph ] ; 6 uses
  %i.l = icmp sgt i32 %.036.lcssa, 52
  br i1 %i.l, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %._crit_edge
  %i.m = getelementptr i8, ptr %.035.lcssa, i64 6
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr i8, ptr %.035.lcssa, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.o, 16
  %i.t = shl nuw nsw i64 %i.r, 8
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = getelementptr i8, ptr %.035.lcssa, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = getelementptr i8, ptr %.035.lcssa, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.y, 16
  %i.ad = shl nuw nsw i64 %i.ab, 8
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %.035.lcssa, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %.035.lcssa, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.ai, 16
  %i.an = shl nuw nsw i64 %i.al, 8
  %i.ao = load i8, ptr %.035.lcssa, align 1, !tbaa !11
  %i.ap = zext i8 %i.ao to i64
  %.masked61 = and i64 %i.am, 4503599627304960
  %.masked = or disjoint i64 %.masked61, %i.an
  %i.aq = or disjoint i64 %.masked, %i.ap
  store i64 %i.aq, ptr %.0.lcssa, align 8, !tbaa !9
  %i.ar = add nsw i32 %.036.lcssa, -45
  %i.as = lshr i32 %i.ar, 3                       ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 4 uses
  %xtraiter80 = and i64 %i.at, 3                  ; 3 uses
  %i.au = add nsw i32 %i.as, -1
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %.epil.preheader79, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter85 = and i64 %i.at, 536870908
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.preheader.new
  %indvars.iv.i37 = phi i64 [ %i.at, %.preheader.preheader.new ], [ %indvars.iv.next.i39.3, %bb.b ] ; 5 uses
  %.08.i38 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bt, %bb.b ]
  %niter86 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter86.next.3, %bb.b ]
  %i.aw = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %i.ax = getelementptr i8, ptr %i.aw, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl i64 %.08.i38, 16
  %i.bb = shl nuw nsw i64 %i.az, 8
  %i.bc = or disjoint i64 %i.ba, %i.bb
  %i.bd = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bc, %i.bg
  %i.bi = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %i.bj = getelementptr i8, ptr %i.bi, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl i64 %i.bh, 16
  %i.bn = shl nuw nsw i64 %i.bl, 8
  %i.bo = or disjoint i64 %i.bm, %i.bn
  %i.bp = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %i.bq = getelementptr i8, ptr %i.bp, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bo, %i.bs            ; 3 uses
  %indvars.iv.next.i39.3 = add nsw i64 %indvars.iv.i37, -4 ; 2 uses
  %niter86.next.3 = add i64 %niter86, 4           ; 2 uses
  %niter86.ncmp.3.not = icmp eq i64 %niter86.next.3, %unroll_iter85
  br i1 %niter86.ncmp.3.not, label %get_digit.exit40.unr-lcssa, label %bb.b, !llvm.loop !31

get_digit.exit40.unr-lcssa:                       ; preds = %bb.b
  %lcmp.mod82.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod82.not, label %get_digit.exit40, label %.epil.preheader79

.epil.preheader79:                                ; preds = %get_digit.exit40.unr-lcssa, %.preheader.preheader
  %indvars.iv.i37.epil.init = phi i64 [ %i.at, %.preheader.preheader ], [ %indvars.iv.next.i39.3, %get_digit.exit40.unr-lcssa ]
  %.08.i38.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bt, %get_digit.exit40.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter80, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader79
  %indvars.iv.i37.epil = phi i64 [ %indvars.iv.i37.epil.init, %.epil.preheader79 ], [ %indvars.iv.next.i39.epil, %bb.c ] ; 2 uses
  %.08.i38.epil = phi i64 [ %.08.i38.epil.init, %.epil.preheader79 ], [ %i.bz, %bb.c ]
  %epil.iter81 = phi i64 [ 0, %.epil.preheader79 ], [ %epil.iter81.next, %bb.c ]
  %i.bu = shl i64 %.08.i38.epil, 8
  %i.bv = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37.epil
  %i.bw = getelementptr i8, ptr %i.bv, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bu, %i.by            ; 2 uses
  %indvars.iv.next.i39.epil = add nsw i64 %indvars.iv.i37.epil, -1
  %epil.iter81.next = add i64 %epil.iter81, 1     ; 2 uses
  %epil.iter81.cmp.not = icmp eq i64 %epil.iter81.next, %xtraiter80
  br i1 %epil.iter81.cmp.not, label %get_digit.exit40, label %bb.c, !llvm.loop !32

get_digit.exit40:                                 ; preds = %bb.c, %get_digit.exit40.unr-lcssa
  %.lcssa = phi i64 [ %i.bt, %get_digit.exit40.unr-lcssa ], [ %i.bz, %bb.c ]
  %i.ca = lshr i64 %.lcssa, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.cd = add nsw i32 %.033.lcssa, -2
  br label %bb.h

bb.d:                                             ; preds = %._crit_edge
  %i.ce = icmp sgt i32 %.036.lcssa, 0
  br i1 %i.ce, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.cf = add nuw nsw i32 %.036.lcssa, 7
  %i.cg = lshr i32 %i.cf, 3
  %i.ch = zext nneg i32 %i.cg to i64              ; 7 uses
  %4 = getelementptr i8, ptr %.035.lcssa, i64 %i.ch
  %5 = getelementptr i8, ptr %4, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !11
  %7 = zext i8 %6 to i64                          ; 2 uses
  %8 = icmp ugt i32 %.036.lcssa, 8
  br i1 %8, label %.new, label %get_digit.exit44

.new:                                             ; preds = %bb.e
  %9 = shl nuw nsw i64 %7, 8
  %10 = getelementptr i8, ptr %.035.lcssa, i64 %i.ch
  %11 = getelementptr i8, ptr %10, i64 -2
  %12 = load i8, ptr %11, align 1, !tbaa !11
  %13 = zext i8 %12 to i64
  %14 = or disjoint i64 %9, %13                   ; 2 uses
  %15 = icmp ugt i32 %.036.lcssa, 16
  br i1 %15, label %bb.f, label %get_digit.exit44

bb.f:                                             ; preds = %.new
  %i.ci = shl nuw nsw i64 %14, 8
  %i.cj = getelementptr i8, ptr %.035.lcssa, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 -3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %i.cm = zext i8 %i.cl to i64
  %i.cn = or disjoint i64 %i.ci, %i.cm            ; 2 uses
  %16 = icmp ugt i32 %.036.lcssa, 24
  br i1 %16, label %get_digit.exit44.unr-lcssa, label %get_digit.exit44

get_digit.exit44.unr-lcssa:                       ; preds = %bb.f
  %17 = shl nuw nsw i64 %i.cn, 8
  %18 = getelementptr i8, ptr %.035.lcssa, i64 %i.ch
  %19 = getelementptr i8, ptr %18, i64 -4
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = zext i8 %20 to i64
  %22 = or disjoint i64 %17, %21                  ; 2 uses
  %23 = icmp ugt i32 %.036.lcssa, 32
  br i1 %23, label %.epil.preheader, label %get_digit.exit44

.epil.preheader:                                  ; preds = %get_digit.exit44.unr-lcssa
  %24 = shl i64 %22, 8
  %25 = getelementptr i8, ptr %.035.lcssa, i64 %i.ch
  %26 = getelementptr i8, ptr %25, i64 -5
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = zext i8 %27 to i64
  %29 = or disjoint i64 %24, %28                  ; 2 uses
  %30 = icmp ugt i32 %.036.lcssa, 40
  br i1 %30, label %bb.g, label %get_digit.exit44

bb.g:                                             ; preds = %.epil.preheader
  %i.co = shl i64 %29, 8
  %i.cp = getelementptr i8, ptr %.035.lcssa, i64 %i.ch
  %i.cq = getelementptr i8, ptr %i.cp, i64 -6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = zext i8 %i.cr to i64
  %i.ct = or disjoint i64 %i.co, %i.cs            ; 2 uses
  %31 = icmp ugt i32 %.036.lcssa, 48
  br i1 %31, label %32, label %get_digit.exit44

32:                                               ; preds = %bb.g
  %33 = shl i64 %i.ct, 8
  %34 = getelementptr i8, ptr %.035.lcssa, i64 %i.ch
  %35 = getelementptr i8, ptr %34, i64 -7
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = zext i8 %36 to i64
  %38 = or disjoint i64 %33, %37
  br label %get_digit.exit44

get_digit.exit44:                                 ; preds = %32, %bb.g, %.epil.preheader, %get_digit.exit44.unr-lcssa, %bb.f, %.new, %bb.e
  %.lcssa72 = phi i64 [ %7, %bb.e ], [ %14, %.new ], [ %i.cn, %bb.f ], [ %22, %get_digit.exit44.unr-lcssa ], [ %29, %.epil.preheader ], [ %i.ct, %bb.g ], [ %38, %32 ]
  store i64 %.lcssa72, ptr %.0.lcssa, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.cv = add nsw i32 %.033.lcssa, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %get_digit.exit44, %get_digit.exit40
  %.134 = phi i32 [ %i.cd, %get_digit.exit40 ], [ %i.cv, %get_digit.exit44 ], [ %.033.lcssa, %bb.d ]
  %.1 = phi ptr [ %i.cc, %get_digit.exit40 ], [ %i.cu, %get_digit.exit44 ], [ %.0.lcssa, %bb.d ]
  %i.cw = sext i32 %.134 to i64
  %i.cx = shl nsw i64 %i.cw, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.1, i8 0, i64 %i.cx, i1 false)
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ossl_rsaz_amm52x20_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x20_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x30_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x30_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x40_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x40_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i64 @bn_sub_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @ossl_rsaz_amm52x20_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x20_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x30_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x30_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x40_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x40_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_extract_multiplier_2x20_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x20_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x30_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x30_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x40_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x40_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{null}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !10, !28, !29}
!22 = distinct !{!22, !10, !29, !28}
!23 = distinct !{!23, !10, !28, !29}
!24 = distinct !{!24, !10, !29, !28}
!25 = !{!"any pointer", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{i64 787271}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !12}
end_hunk_0
