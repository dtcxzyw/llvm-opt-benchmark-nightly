Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL8unfilterPhPKhjjj:bb.a
  %i.xx = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.0600857.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !35
  %i.ya = lshr i8 %i.xz, 1
  %i.yb = add i8 %i.ya, %i.xw
  %i.yc = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.xu
  store i8 %i.yb, ptr %i.yc, align 1, !tbaa !35
  %i.yd = add i64 %.12856.i, 2                    ; 2 uses
  %i.ye = add nuw i64 %.0600857.i, 2
  %.not632.i.1 = icmp eq i64 %i.yd, %i.n
  br i1 %.not632.i.1, label %.loopexit, label %.lr.ph858.i, !llvm.loop !925

bb.g:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.02789, null
  br i1 %.not.i, label %.preheader733.i, label %bb.h

.preheader733.i:                                  ; preds = %bb.g
  br i1 %.not625821.i, label %.preheader731.i, label %iter.check556

iter.check556:                                    ; preds = %.preheader733.i
  %brmerge735 = select i1 %min.iters.check543, i1 true, i1 %found.conflict542
  br i1 %brmerge735, label %.lr.ph823.i.preheader, label %vector.main.loop.iter.check544

vector.main.loop.iter.check544:                   ; preds = %iter.check556
  br i1 %min.iters.check545, label %vec.epilog.ph560, label %vector.body548

vector.body548:                                   ; preds = %vector.main.loop.iter.check544, %vector.body548
  %index549 = phi i64 [ %index.next552, %vector.body548 ], [ 0, %vector.main.loop.iter.check544 ] ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.fl, i64 %index549 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %wide.load550 = load <16 x i8>, ptr %i.yf, align 1, !tbaa !35, !alias.scope !982
  %wide.load551 = load <16 x i8>, ptr %i.yg, align 1, !tbaa !35, !alias.scope !982
  %i.yh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index549 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  store <16 x i8> %wide.load550, ptr %i.yh, align 1, !tbaa !35, !alias.scope !983, !noalias !982
  store <16 x i8> %wide.load551, ptr %i.yi, align 1, !tbaa !35, !alias.scope !983, !noalias !982
  %index.next552 = add nuw i64 %index549, 32      ; 2 uses
  %i.yj = icmp eq i64 %index.next552, %n.vec547
  br i1 %i.yj, label %middle.block553, label %vector.body548, !llvm.loop !929

middle.block553:                                  ; preds = %vector.body548
  br i1 %cmp.n554, label %.preheader731.i, label %vec.epilog.iter.check558

vec.epilog.iter.check558:                         ; preds = %middle.block553
  br i1 %min.epilog.iters.check559, label %.lr.ph823.i.preheader, label %vec.epilog.ph560, !prof !90

vec.epilog.ph560:                                 ; preds = %vector.main.loop.iter.check544, %vec.epilog.iter.check558
  %vec.epilog.resume.val555 = phi i64 [ %n.vec547, %vec.epilog.iter.check558 ], [ 0, %vector.main.loop.iter.check544 ]
  br label %vec.epilog.vector.body562

vec.epilog.vector.body562:                        ; preds = %vec.epilog.vector.body562, %vec.epilog.ph560
  %index563 = phi i64 [ %vec.epilog.resume.val555, %vec.epilog.ph560 ], [ %index.next565, %vec.epilog.vector.body562 ] ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.fl, i64 %index563
  %wide.load564 = load <4 x i8>, ptr %i.yk, align 1, !tbaa !35, !alias.scope !982
  %i.yl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index563
  store <4 x i8> %wide.load564, ptr %i.yl, align 1, !tbaa !35, !alias.scope !983, !noalias !982
  %index.next565 = add nuw i64 %index563, 4       ; 2 uses
  %i.ym = icmp eq i64 %index.next565, %n.vec561
  br i1 %i.ym, label %vec.epilog.middle.block566, label %vec.epilog.vector.body562, !llvm.loop !930

vec.epilog.middle.block566:                       ; preds = %vec.epilog.vector.body562
  br i1 %cmp.n567, label %.preheader731.i, label %.lr.ph823.i.preheader

.lr.ph823.i.preheader:                            ; preds = %iter.check556, %vec.epilog.iter.check558, %vec.epilog.middle.block566
  %.22822.i.ph = phi i64 [ 0, %iter.check556 ], [ %n.vec561, %vec.epilog.middle.block566 ], [ %n.vec547, %vec.epilog.iter.check558 ] ; 3 uses
  br i1 %lcmp.mod676.not, label %.lr.ph823.i.prol.loopexit, label %.lr.ph823.i.prol

.lr.ph823.i.prol:                                 ; preds = %.lr.ph823.i.preheader, %.lr.ph823.i.prol
  %.22822.i.prol = phi i64 [ %i.yq, %.lr.ph823.i.prol ], [ %.22822.i.ph, %.lr.ph823.i.preheader ] ; 3 uses
  %prol.iter677 = phi i64 [ %prol.iter677.next, %.lr.ph823.i.prol ], [ 0, %.lr.ph823.i.preheader ]
  %i.yn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.22822.i.prol
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !35
  %i.yp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.22822.i.prol
  store i8 %i.yo, ptr %i.yp, align 1, !tbaa !35
  %i.yq = add nuw nsw i64 %.22822.i.prol, 1       ; 2 uses
  %prol.iter677.next = add i64 %prol.iter677, 1   ; 2 uses
  %prol.iter677.cmp.not = icmp eq i64 %prol.iter677.next, %xtraiter675
  br i1 %prol.iter677.cmp.not, label %.lr.ph823.i.prol.loopexit, label %.lr.ph823.i.prol, !llvm.loop !931

.lr.ph823.i.prol.loopexit:                        ; preds = %.lr.ph823.i.prol, %.lr.ph823.i.preheader
  %.22822.i.unr = phi i64 [ %.22822.i.ph, %.lr.ph823.i.preheader ], [ %i.yq, %.lr.ph823.i.prol ]
  %i.yr = sub nsw i64 %.22822.i.ph, %i.d
  %i.ys = icmp ugt i64 %i.yr, -4
  br i1 %i.ys, label %.preheader731.i, label %.lr.ph823.i

bb.h:                                             ; preds = %bb.g
  switch i32 %i.c, label %iter.check636 [
    i32 8, label %.preheader737.i
    i32 6, label %.preheader739.i
    i32 4, label %.preheader741.i
    i32 3, label %.preheader743.i
    i32 2, label %.preheader745.i
    i32 1, label %.preheader747.i
    i32 0, label %.loopexit736.i
  ]

iter.check636:                                    ; preds = %bb.h
  br i1 %min.iters.check621, label %.lr.ph816.i.preheader, label %vector.memcheck609

vector.memcheck609:                               ; preds = %iter.check636
  %scevgep613 = getelementptr i8, ptr %.02789, i64 %i.d
  %bound0617 = icmp ult ptr %0, %scevgep613
  %bound1618 = icmp ult ptr %.02789, %scevgep610
  %found.conflict619 = and i1 %bound0617, %bound1618
  %conflict.rdx620 = or i1 %found.conflict616, %found.conflict619
  br i1 %conflict.rdx620, label %.lr.ph816.i.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %vector.memcheck609
  br i1 %min.iters.check623, label %vec.epilog.ph640, label %vector.body626

vector.body626:                                   ; preds = %vector.main.loop.iter.check622, %vector.body626
  %index627 = phi i64 [ %index.next632, %vector.body626 ], [ 0, %vector.main.loop.iter.check622 ] ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.fl, i64 %index627 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %wide.load628 = load <16 x i8>, ptr %i.yt, align 1, !tbaa !35, !alias.scope !984
  %wide.load629 = load <16 x i8>, ptr %i.yu, align 1, !tbaa !35, !alias.scope !984
  %i.yv = getelementptr inbounds nuw i8, ptr %.02789, i64 %index627 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %wide.load630 = load <16 x i8>, ptr %i.yv, align 1, !tbaa !35, !alias.scope !985
  %wide.load631 = load <16 x i8>, ptr %i.yw, align 1, !tbaa !35, !alias.scope !985
  %i.yx = add <16 x i8> %wide.load630, %wide.load628
  %i.yy = add <16 x i8> %wide.load631, %wide.load629
  %i.yz = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index627 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  store <16 x i8> %i.yx, ptr %i.yz, align 1, !tbaa !35, !alias.scope !986, !noalias !987
  store <16 x i8> %i.yy, ptr %i.za, align 1, !tbaa !35, !alias.scope !986, !noalias !987
  %index.next632 = add nuw i64 %index627, 32      ; 2 uses
  %i.zb = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.zb, label %middle.block633, label %vector.body626, !llvm.loop !936

middle.block633:                                  ; preds = %vector.body626
  br i1 %cmp.n634, label %.loopexit736.i, label %vec.epilog.iter.check638

vec.epilog.iter.check638:                         ; preds = %middle.block633
  br i1 %min.epilog.iters.check639, label %.lr.ph816.i.preheader, label %vec.epilog.ph640, !prof !90

vec.epilog.ph640:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check638
  %vec.epilog.resume.val635 = phi i64 [ %n.vec625, %vec.epilog.iter.check638 ], [ 0, %vector.main.loop.iter.check622 ]
  br label %vec.epilog.vector.body642

vec.epilog.vector.body642:                        ; preds = %vec.epilog.vector.body642, %vec.epilog.ph640
  %index643 = phi i64 [ %vec.epilog.resume.val635, %vec.epilog.ph640 ], [ %index.next646, %vec.epilog.vector.body642 ] ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.fl, i64 %index643
  %wide.load644 = load <4 x i8>, ptr %i.zc, align 1, !tbaa !35, !alias.scope !984
  %i.zd = getelementptr inbounds nuw i8, ptr %.02789, i64 %index643
  %wide.load645 = load <4 x i8>, ptr %i.zd, align 1, !tbaa !35, !alias.scope !985
  %i.ze = add <4 x i8> %wide.load645, %wide.load644
  %i.zf = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index643
  store <4 x i8> %i.ze, ptr %i.zf, align 1, !tbaa !35, !alias.scope !986, !noalias !987
  %index.next646 = add nuw i64 %index643, 4       ; 2 uses
  %i.zg = icmp eq i64 %index.next646, %n.vec641
  br i1 %i.zg, label %vec.epilog.middle.block647, label %vec.epilog.vector.body642, !llvm.loop !937

vec.epilog.middle.block647:                       ; preds = %vec.epilog.vector.body642
  br i1 %cmp.n648, label %.loopexit736.i, label %.lr.ph816.i.preheader

.lr.ph816.i.preheader:                            ; preds = %iter.check636, %vector.memcheck609, %vec.epilog.iter.check638, %vec.epilog.middle.block647
  %.19815.i.ph = phi i64 [ 0, %iter.check636 ], [ 0, %vector.memcheck609 ], [ %n.vec625, %vec.epilog.iter.check638 ], [ %n.vec641, %vec.epilog.middle.block647 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph816.i.prol.loopexit, label %.lr.ph816.i.prol

.lr.ph816.i.prol:                                 ; preds = %.lr.ph816.i.preheader, %.lr.ph816.i.prol
  %.19815.i.prol = phi i64 [ %i.zn, %.lr.ph816.i.prol ], [ %.19815.i.ph, %.lr.ph816.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph816.i.prol ], [ 0, %.lr.ph816.i.preheader ]
  %i.zh = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.19815.i.prol
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !35
  %i.zj = getelementptr inbounds nuw i8, ptr %.02789, i64 %.19815.i.prol
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !35
  %i.zl = add i8 %i.zk, %i.zi
  %i.zm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.19815.i.prol
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !35
  %i.zn = add nuw nsw i64 %.19815.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph816.i.prol.loopexit, label %.lr.ph816.i.prol, !llvm.loop !938

.lr.ph816.i.prol.loopexit:                        ; preds = %.lr.ph816.i.prol, %.lr.ph816.i.preheader
  %.19815.i.unr = phi i64 [ %.19815.i.ph, %.lr.ph816.i.preheader ], [ %i.zn, %.lr.ph816.i.prol ]
  %i.zo = sub nsw i64 %.19815.i.ph, %i.d
  %i.zp = icmp ugt i64 %i.zo, -4
  br i1 %i.zp, label %.loopexit736.i, label %.lr.ph816.i

.preheader747.i:                                  ; preds = %bb.h
  br i1 %.not628749.i, label %.loopexit736.i, label %.lr.ph.i

.preheader745.i:                                  ; preds = %bb.h
  br i1 %i.q, label %.lr.ph758.i, label %.loopexit736.i

.preheader743.i:                                  ; preds = %bb.h
  br i1 %i.r, label %.lr.ph767.i, label %.loopexit736.i

.preheader741.i:                                  ; preds = %bb.h
  br i1 %i.s, label %.lr.ph778.i, label %.loopexit736.i

.preheader739.i:                                  ; preds = %bb.h
  br i1 %i.t, label %.lr.ph793.i, label %.loopexit736.i

.preheader737.i:                                  ; preds = %bb.h
  br i1 %i.u, label %.lr.ph812.i, label %.loopexit736.i

.lr.ph812.i:                                      ; preds = %.preheader737.i, %.lr.ph812.i
  %.13795.i = phi i64 [ %i.aat, %.lr.ph812.i ], [ 0, %.preheader737.i ] ; 4 uses
  %i.zq = phi <8 x i8> [ %i.aas, %.lr.ph812.i ], [ zeroinitializer, %.preheader737.i ] ; 3 uses
  %i.zr = phi <8 x i8> [ %i.zx, %.lr.ph812.i ], [ zeroinitializer, %.preheader737.i ] ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.02789, i64 %.13795.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.13795.i
  %i.zu = zext <8 x i8> %i.zr to <8 x i16>        ; 2 uses
  %i.zv = zext <8 x i8> %i.zq to <8 x i16>
  %i.zw = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.13795.i
  %i.zx = load <8 x i8>, ptr %i.zs, align 1, !tbaa !35 ; 3 uses
  %i.zy = load <8 x i8>, ptr %i.zt, align 1, !tbaa !35
  %i.zz = zext <8 x i8> %i.zx to <8 x i16>        ; 2 uses
  %i.aaa = sub nsw <8 x i16> %i.zz, %i.zu
  %i.aab = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aaa, i1 false) ; 2 uses
  %i.aac = zext <8 x i8> %i.zq to <8 x i32>
  %i.aad = zext <8 x i8> %i.zr to <8 x i32>
  %i.aae = sub nsw <8 x i32> %i.aac, %i.aad
  %i.aaf = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.aae, i1 true) ; 2 uses
  %i.aag = shl nuw nsw <8 x i16> %i.zu, splat (i16 1)
  %i.aah = sub nsw <8 x i16> %i.zv, %i.aag
  %i.aai = add nsw <8 x i16> %i.aah, %i.zz
  %i.aaj = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aai, i1 false)
  %i.aak = zext <8 x i16> %i.aab to <8 x i32>
  %i.aal = icmp samesign ult <8 x i32> %i.aaf, %i.aak
  %i.aam = select <8 x i1> %i.aal, <8 x i8> %i.zx, <8 x i8> %i.zq
  %i.aan = zext <8 x i16> %i.aab to <8 x i32>
  %i.aao = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aaf, <8 x i32> %i.aan)
  %i.aap = zext <8 x i16> %i.aaj to <8 x i32>
  %i.aaq = icmp samesign ugt <8 x i32> %i.aao, %i.aap
  %i.aar = select <8 x i1> %i.aaq, <8 x i8> %i.zr, <8 x i8> %i.aam
  %i.aas = add <8 x i8> %i.zy, %i.aar             ; 2 uses
  store <8 x i8> %i.aas, ptr %i.zw, align 1, !tbaa !35
  %i.aat = add nuw nsw i64 %.13795.i, 8           ; 3 uses
  %5 = or disjoint i64 %i.aat, 7
  %i.aau = icmp samesign ult i64 %5, %i.n
  br i1 %i.aau, label %.lr.ph812.i, label %.loopexit736.i, !llvm.loop !939

.lr.ph793.i:                                      ; preds = %.preheader739.i, %.lr.ph793.i
  %.14780.i = phi i64 [ %i.ada, %.lr.ph793.i ], [ 0, %.preheader739.i ] ; 7 uses
  %i.aav = phi <4 x i8> [ %i.acu, %.lr.ph793.i ], [ zeroinitializer, %.preheader739.i ] ; 3 uses
  %i.aaw = phi <4 x i8> [ %i.aca, %.lr.ph793.i ], [ zeroinitializer, %.preheader739.i ] ; 3 uses
  %i.aax = phi <2 x i8> [ %i.aby, %.lr.ph793.i ], [ zeroinitializer, %.preheader739.i ] ; 2 uses
  %i.aay = phi <2 x i8> [ %i.abi, %.lr.ph793.i ], [ zeroinitializer, %.preheader739.i ] ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.02789, i64 %.14780.i
  %i.aba = add nuw nsw i64 %.14780.i, 4           ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.14780.i
  %i.abd = zext <4 x i8> %i.aaw to <4 x i16>
  %i.abe = zext <4 x i8> %i.aav to <4 x i16>
  %i.abf = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.aba
  %i.abg = zext <2 x i8> %i.aay to <2 x i32>      ; 3 uses
  %i.abh = zext <2 x i8> %i.aax to <2 x i32>      ; 2 uses
  %i.abi = load <2 x i8>, ptr %i.abb, align 1, !tbaa !35 ; 3 uses
  %i.abj = load <2 x i8>, ptr %i.abf, align 1, !tbaa !35
  %i.abk = zext <2 x i8> %i.abi to <2 x i32>      ; 2 uses
  %i.abl = sub nsw <2 x i32> %i.abk, %i.abg
  %i.abm = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.abl, i1 true) ; 2 uses
  %i.abn = sub nsw <2 x i32> %i.abh, %i.abg
  %i.abo = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.abn, i1 true) ; 2 uses
  %i.abp = shl nuw nsw <2 x i32> %i.abg, splat (i32 1)
  %i.abq = sub nsw <2 x i32> %i.abh, %i.abp
  %i.abr = add nsw <2 x i32> %i.abq, %i.abk
  %i.abs = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.abr, i1 true)
  %i.abt = icmp samesign ult <2 x i32> %i.abo, %i.abm
  %i.abu = select <2 x i1> %i.abt, <2 x i8> %i.abi, <2 x i8> %i.aax
  %i.abv = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.abo, <2 x i32> %i.abm)
  %i.abw = icmp samesign ult <2 x i32> %i.abs, %i.abv
  %i.abx = select <2 x i1> %i.abw, <2 x i8> %i.aay, <2 x i8> %i.abu
  %i.aby = add <2 x i8> %i.abj, %i.abx            ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.14780.i
  %i.aca = load <4 x i8>, ptr %i.aaz, align 1, !tbaa !35 ; 4 uses
  %i.acb = load <4 x i8>, ptr %i.abc, align 1, !tbaa !35
  %i.acc = zext <4 x i8> %i.aca to <4 x i16>
  %i.acd = zext <4 x i8> %i.aca to <4 x i32>
  %i.ace = zext <4 x i8> %i.aaw to <4 x i32>      ; 2 uses
  %i.acf = sub nsw <4 x i32> %i.acd, %i.ace
  %i.acg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.acf, i1 true) ; 2 uses
  %i.ach = zext <4 x i8> %i.aav to <4 x i32>
  %i.aci = sub nsw <4 x i32> %i.ach, %i.ace
  %i.acj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aci, i1 true) ; 2 uses
  %i.ack = shl nuw nsw <4 x i16> %i.abd, splat (i16 1)
  %i.acl = sub nsw <4 x i16> %i.abe, %i.ack
  %i.acm = add nsw <4 x i16> %i.acl, %i.acc
  %i.acn = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %i.acm, i1 false)
  %i.aco = icmp samesign ult <4 x i32> %i.acj, %i.acg
  %i.acp = select <4 x i1> %i.aco, <4 x i8> %i.aca, <4 x i8> %i.aav
  %i.acq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.acj, <4 x i32> %i.acg)
  %i.acr = zext <4 x i16> %i.acn to <4 x i32>
  %i.acs = icmp samesign ugt <4 x i32> %i.acq, %i.acr
  %i.act = select <4 x i1> %i.acs, <4 x i8> %i.aaw, <4 x i8> %i.acp
  %i.acu = add <4 x i8> %i.acb, %i.act            ; 2 uses
  store <4 x i8> %i.acu, ptr %i.abz, align 1, !tbaa !35
  %i.acv = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aba
  %i.acw = extractelement <2 x i8> %i.aby, i64 0
  store i8 %i.acw, ptr %i.acv, align 1, !tbaa !35
  %i.acx = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.14780.i
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 5
  %i.acz = extractelement <2 x i8> %i.aby, i64 1
  store i8 %i.acz, ptr %i.acy, align 1, !tbaa !35
  %i.ada = add nuw nsw i64 %.14780.i, 6           ; 2 uses
  %i.adb = add nuw nsw i64 %.14780.i, 11
  %i.adc = icmp samesign ult i64 %i.adb, %i.n
  br i1 %i.adc, label %.lr.ph793.i, label %.loopexit736.i, !llvm.loop !940

.lr.ph778.i:                                      ; preds = %.preheader741.i, %.lr.ph778.i
  %.15769.i = phi i64 [ %i.aef, %.lr.ph778.i ], [ 0, %.preheader741.i ] ; 4 uses
  %i.add = phi <4 x i8> [ %i.aee, %.lr.ph778.i ], [ zeroinitializer, %.preheader741.i ] ; 3 uses
  %i.ade = phi <4 x i8> [ %i.adk, %.lr.ph778.i ], [ zeroinitializer, %.preheader741.i ] ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.02789, i64 %.15769.i
  %i.adg = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.15769.i
  %i.adh = zext <4 x i8> %i.ade to <4 x i16>
  %i.adi = zext <4 x i8> %i.add to <4 x i16>
  %i.adj = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.15769.i
  %i.adk = load <4 x i8>, ptr %i.adf, align 1, !tbaa !35 ; 4 uses
  %i.adl = load <4 x i8>, ptr %i.adg, align 1, !tbaa !35
  %i.adm = zext <4 x i8> %i.adk to <4 x i16>
  %i.adn = zext <4 x i8> %i.adk to <4 x i32>
  %i.ado = zext <4 x i8> %i.ade to <4 x i32>      ; 2 uses
  %i.adp = sub nsw <4 x i32> %i.adn, %i.ado
  %i.adq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.adp, i1 true) ; 2 uses
  %i.adr = zext <4 x i8> %i.add to <4 x i32>
  %i.ads = sub nsw <4 x i32> %i.adr, %i.ado
  %i.adt = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ads, i1 true) ; 2 uses
  %i.adu = shl nuw nsw <4 x i16> %i.adh, splat (i16 1)
  %i.adv = sub nsw <4 x i16> %i.adi, %i.adu
  %i.adw = add nsw <4 x i16> %i.adv, %i.adm
  %i.adx = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %i.adw, i1 false)
  %i.ady = icmp samesign ult <4 x i32> %i.adt, %i.adq
  %i.adz = select <4 x i1> %i.ady, <4 x i8> %i.adk, <4 x i8> %i.add
  %i.aea = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.adt, <4 x i32> %i.adq)
  %i.aeb = zext <4 x i16> %i.adx to <4 x i32>
  %i.aec = icmp samesign ugt <4 x i32> %i.aea, %i.aeb
  %i.aed = select <4 x i1> %i.aec, <4 x i8> %i.ade, <4 x i8> %i.adz
  %i.aee = add <4 x i8> %i.aed, %i.adl            ; 2 uses
  store <4 x i8> %i.aee, ptr %i.adj, align 1, !tbaa !35
  %i.aef = add nuw nsw i64 %.15769.i, 4           ; 3 uses
  %6 = or disjoint i64 %i.aef, 3
  %i.aeg = icmp samesign ult i64 %6, %i.n
  br i1 %i.aeg, label %.lr.ph778.i, label %.loopexit736.i, !llvm.loop !941

.lr.ph767.i:                                      ; preds = %.preheader743.i, %.lr.ph767.i
  %.0558766.i = phi i8 [ %i.agb, %.lr.ph767.i ], [ 0, %.preheader743.i ] ; 2 uses
  %.0559765.i = phi i8 [ %i.aem, %.lr.ph767.i ], [ 0, %.preheader743.i ] ; 2 uses
  %.16760.i = phi i64 [ %i.agi, %.lr.ph767.i ], [ 0, %.preheader743.i ] ; 7 uses
  %i.aeh = phi <2 x i8> [ %i.afk, %.lr.ph767.i ], [ zeroinitializer, %.preheader743.i ] ; 3 uses
  %i.aei = phi <2 x i8> [ %i.aeq, %.lr.ph767.i ], [ zeroinitializer, %.preheader743.i ] ; 3 uses
  %i.aej = add nuw nsw i64 %.16760.i, 2           ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.02789, i64 %.16760.i
  %i.ael = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.aej
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !35 ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.16760.i
  %i.aeo = zext <2 x i8> %i.aei to <2 x i16>
  %i.aep = zext <2 x i8> %i.aeh to <2 x i16>
  %i.aeq = load <2 x i8>, ptr %i.aek, align 1, !tbaa !35 ; 4 uses
  %i.aer = load <2 x i8>, ptr %i.aen, align 1, !tbaa !35
  %i.aes = zext <2 x i8> %i.aeq to <2 x i16>
  %i.aet = zext <2 x i8> %i.aeq to <2 x i32>
  %i.aeu = zext <2 x i8> %i.aei to <2 x i32>      ; 2 uses
  %i.aev = sub nsw <2 x i32> %i.aet, %i.aeu
  %i.aew = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.aev, i1 true) ; 2 uses
  %i.aex = zext <2 x i8> %i.aeh to <2 x i32>
  %i.aey = sub nsw <2 x i32> %i.aex, %i.aeu
  %i.aez = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.aey, i1 true) ; 2 uses
  %i.afa = shl nuw nsw <2 x i16> %i.aeo, splat (i16 1)
  %i.afb = sub nsw <2 x i16> %i.aep, %i.afa
  %i.afc = add nsw <2 x i16> %i.afb, %i.aes
  %i.afd = tail call <2 x i16> @llvm.abs.v2i16(<2 x i16> %i.afc, i1 false)
  %i.afe = icmp samesign ult <2 x i32> %i.aez, %i.aew
  %i.aff = select <2 x i1> %i.afe, <2 x i8> %i.aeq, <2 x i8> %i.aeh
  %i.afg = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.aez, <2 x i32> %i.aew)
  %i.afh = zext <2 x i16> %i.afd to <2 x i32>
  %i.afi = icmp samesign ugt <2 x i32> %i.afg, %i.afh
  %i.afj = select <2 x i1> %i.afi, <2 x i8> %i.aei, <2 x i8> %i.aff
  %i.afk = add <2 x i8> %i.afj, %i.aer            ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.aej
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !35
  %i.afn = zext i8 %i.aem to i32                  ; 2 uses
  %i.afo = zext i8 %.0559765.i to i32             ; 3 uses
  %i.afp = sub nsw i32 %i.afn, %i.afo
  %i.afq = tail call i32 @llvm.abs.i32(i32 %i.afp, i1 true) ; 2 uses
  %i.afr = zext i8 %.0558766.i to i32             ; 2 uses
  %i.afs = sub nsw i32 %i.afr, %i.afo
  %i.aft = tail call i32 @llvm.abs.i32(i32 %i.afs, i1 true) ; 2 uses
  %i.afu = shl nuw nsw i32 %i.afo, 1
  %i.afv = sub nsw i32 %i.afr, %i.afu
  %i.afw = add nsw i32 %i.afv, %i.afn
  %i.afx = tail call i32 @llvm.abs.i32(i32 %i.afw, i1 true)
  %i.afy = icmp samesign ult i32 %i.aft, %i.afq
  %.032.i679.i = select i1 %i.afy, i8 %i.aem, i8 %.0558766.i
  %.0.in.i680.i = tail call i32 @llvm.umin.i32(i32 %i.aft, i32 %i.afq)
  %i.afz = icmp samesign ult i32 %i.afx, %.0.in.i680.i
  %i.aga = select i1 %i.afz, i8 %.0559765.i, i8 %.032.i679.i
  %i.agb = add i8 %i.aga, %i.afm                  ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.16760.i
  %i.agd = extractelement <2 x i8> %i.afk, i64 0
  store i8 %i.agd, ptr %i.agc, align 1, !tbaa !35
  %i.age = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.16760.i
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 1
  %i.agg = extractelement <2 x i8> %i.afk, i64 1
  store i8 %i.agg, ptr %i.agf, align 1, !tbaa !35
  %i.agh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aej
  store i8 %i.agb, ptr %i.agh, align 1, !tbaa !35
  %i.agi = add nuw nsw i64 %.16760.i, 3           ; 2 uses
  %i.agj = add nuw nsw i64 %.16760.i, 5
  %i.agk = icmp samesign ult i64 %i.agj, %i.n
  br i1 %i.agk, label %.lr.ph767.i, label %.loopexit736.i, !llvm.loop !942

.lr.ph758.i:                                      ; preds = %.preheader745.i, %.lr.ph758.i
  %.17753.i = phi i64 [ %i.ahr, %.lr.ph758.i ], [ 0, %.preheader745.i ] ; 5 uses
  %i.agl = phi <2 x i8> [ %i.ahl, %.lr.ph758.i ], [ zeroinitializer, %.preheader745.i ] ; 3 uses
  %i.agm = phi <2 x i8> [ %i.agr, %.lr.ph758.i ], [ zeroinitializer, %.preheader745.i ] ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.02789, i64 %.17753.i
  %i.ago = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.17753.i
  %i.agp = zext <2 x i8> %i.agm to <2 x i16>
  %i.agq = zext <2 x i8> %i.agl to <2 x i16>
  %i.agr = load <2 x i8>, ptr %i.agn, align 1, !tbaa !35 ; 4 uses
  %i.ags = load <2 x i8>, ptr %i.ago, align 1, !tbaa !35
  %i.agt = zext <2 x i8> %i.agr to <2 x i16>
  %i.agu = zext <2 x i8> %i.agr to <2 x i32>
  %i.agv = zext <2 x i8> %i.agm to <2 x i32>      ; 2 uses
  %i.agw = sub nsw <2 x i32> %i.agu, %i.agv
  %i.agx = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.agw, i1 true) ; 2 uses
  %i.agy = zext <2 x i8> %i.agl to <2 x i32>
  %i.agz = sub nsw <2 x i32> %i.agy, %i.agv
  %i.aha = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.agz, i1 true) ; 2 uses
  %i.ahb = shl nuw nsw <2 x i16> %i.agp, splat (i16 1)
  %i.ahc = sub nsw <2 x i16> %i.agq, %i.ahb
  %i.ahd = add nsw <2 x i16> %i.ahc, %i.agt
  %i.ahe = tail call <2 x i16> @llvm.abs.v2i16(<2 x i16> %i.ahd, i1 false)
  %i.ahf = icmp samesign ult <2 x i32> %i.aha, %i.agx
  %i.ahg = select <2 x i1> %i.ahf, <2 x i8> %i.agr, <2 x i8> %i.agl
  %i.ahh = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.aha, <2 x i32> %i.agx)
  %i.ahi = zext <2 x i16> %i.ahe to <2 x i32>
  %i.ahj = icmp samesign ugt <2 x i32> %i.ahh, %i.ahi
  %i.ahk = select <2 x i1> %i.ahj, <2 x i8> %i.agm, <2 x i8> %i.ahg
  %i.ahl = add <2 x i8> %i.ahk, %i.ags            ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.17753.i
  %i.ahn = extractelement <2 x i8> %i.ahl, i64 0
  store i8 %i.ahn, ptr %i.ahm, align 1, !tbaa !35
  %i.aho = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.17753.i
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 1
  %i.ahq = extractelement <2 x i8> %i.ahl, i64 1
  store i8 %i.ahq, ptr %i.ahp, align 1, !tbaa !35
  %i.ahr = add nuw nsw i64 %.17753.i, 2           ; 3 uses
  %7 = or disjoint i64 %i.ahr, 1
  %i.ahs = icmp samesign ult i64 %7, %i.n
  br i1 %i.ahs, label %.lr.ph758.i, label %.loopexit736.i, !llvm.loop !943

.lr.ph.i:                                         ; preds = %.preheader747.i, %.lr.ph.i
  %.0552752.i = phi i8 [ %i.ail, %.lr.ph.i ], [ 0, %.preheader747.i ] ; 2 uses
  %.0553751.i = phi i8 [ %i.ahu, %.lr.ph.i ], [ 0, %.preheader747.i ] ; 2 uses
  %.18750.i = phi i64 [ %i.ain, %.lr.ph.i ], [ 0, %.preheader747.i ] ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.02789, i64 %.18750.i
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !35 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.18750.i
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !35
  %i.ahx = zext i8 %i.ahu to i32                  ; 2 uses
  %i.ahy = zext i8 %.0553751.i to i32             ; 3 uses
  %i.ahz = sub nsw i32 %i.ahx, %i.ahy
  %i.aia = tail call i32 @llvm.abs.i32(i32 %i.ahz, i1 true) ; 2 uses
  %i.aib = zext i8 %.0552752.i to i32             ; 2 uses
  %i.aic = sub nsw i32 %i.aib, %i.ahy
  %i.aid = tail call i32 @llvm.abs.i32(i32 %i.aic, i1 true) ; 2 uses
  %i.aie = shl nuw nsw i32 %i.ahy, 1
  %i.aif = sub nsw i32 %i.aib, %i.aie
  %i.aig = add nsw i32 %i.aif, %i.ahx
  %i.aih = tail call i32 @llvm.abs.i32(i32 %i.aig, i1 true)
  %i.aii = icmp samesign ult i32 %i.aid, %i.aia
  %.032.i685.i = select i1 %i.aii, i8 %i.ahu, i8 %.0552752.i
  %.0.in.i686.i = tail call i32 @llvm.umin.i32(i32 %i.aid, i32 %i.aia)
  %i.aij = icmp samesign ult i32 %i.aih, %.0.in.i686.i
  %i.aik = select i1 %i.aij, i8 %.0553751.i, i8 %.032.i685.i
  %i.ail = add i8 %i.aik, %i.ahw                  ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.18750.i
  store i8 %i.ail, ptr %i.aim, align 1, !tbaa !35
  %i.ain = add nuw nsw i64 %.18750.i, 1           ; 2 uses
  %.not628.i = icmp eq i64 %i.ain, %i.n
  br i1 %.not628.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !944

.lr.ph816.i:                                      ; preds = %.lr.ph816.i.prol.loopexit, %.lr.ph816.i
  %.19815.i = phi i64 [ %i.ajp, %.lr.ph816.i ], [ %.19815.i.unr, %.lr.ph816.i.prol.loopexit ] ; 7 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.19815.i
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !35
  %i.aiq = getelementptr inbounds nuw i8, ptr %.02789, i64 %.19815.i
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !35
  %i.ais = add i8 %i.air, %i.aip
  %i.ait = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.19815.i
  store i8 %i.ais, ptr %i.ait, align 1, !tbaa !35
  %i.aiu = add nuw nsw i64 %.19815.i, 1           ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !35
  %i.aix = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.aiu
  %i.aiy = load i8, ptr %i.aix, align 1, !tbaa !35
  %i.aiz = add i8 %i.aiy, %i.aiw
  %i.aja = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aiu
  store i8 %i.aiz, ptr %i.aja, align 1, !tbaa !35
  %i.ajb = add nuw nsw i64 %.19815.i, 2           ; 3 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ajb
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !35
  %i.aje = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.ajb
  %i.ajf = load i8, ptr %i.aje, align 1, !tbaa !35
  %i.ajg = add i8 %i.ajf, %i.ajd
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ajb
  store i8 %i.ajg, ptr %i.ajh, align 1, !tbaa !35
  %i.aji = add nuw nsw i64 %.19815.i, 3           ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.aji
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !35
  %i.ajl = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.aji
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !35
  %i.ajn = add i8 %i.ajm, %i.ajk
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.aji
  store i8 %i.ajn, ptr %i.ajo, align 1, !tbaa !35
  %i.ajp = add nuw nsw i64 %.19815.i, 4           ; 2 uses
  %.not627.i.3 = icmp eq i64 %i.ajp, %i.d
  br i1 %.not627.i.3, label %.loopexit736.i, label %.lr.ph816.i, !llvm.loop !945

.loopexit736.i:                                   ; preds = %.lr.ph758.i, %.lr.ph767.i, %.lr.ph778.i, %.lr.ph793.i, %.lr.ph812.i, %.lr.ph816.i.prol.loopexit, %.lr.ph816.i, %middle.block633, %vec.epilog.middle.block647, %.preheader737.i, %.preheader739.i, %.preheader741.i, %.preheader743.i, %.preheader745.i, %.preheader747.i, %bb.h
  %.20.i = phi i64 [ %i.d, %.lr.ph816.i.prol.loopexit ], [ %i.aat, %.lr.ph812.i ], [ %i.ada, %.lr.ph793.i ], [ %i.d, %middle.block633 ], [ 0, %.preheader747.i ], [ %i.agi, %.lr.ph767.i ], [ 0, %bb.h ], [ 0, %.preheader737.i ], [ 0, %.preheader739.i ], [ 0, %.preheader741.i ], [ 0, %.preheader743.i ], [ 0, %.preheader745.i ], [ %i.aef, %.lr.ph778.i ], [ %i.d, %vec.epilog.middle.block647 ], [ %i.d, %.lr.ph816.i ], [ %i.ahr, %.lr.ph758.i ] ; 8 uses
  %.not629818.i = icmp eq i64 %.20.i, %i.n
  br i1 %.not629818.i, label %.loopexit, label %iter.check593

iter.check593:                                    ; preds = %.loopexit736.i
  %i.ajq = sub i64 %i.dl, %.20.i                  ; 7 uses
  %min.iters.check577 = icmp ult i64 %i.ajq, 4
  br i1 %min.iters.check577, label %.lr.ph820.i.preheader, label %vector.memcheck569

vector.memcheck569:                               ; preds = %iter.check593
  %.reass = add i64 %indvars.iv, %invariant.op
  %diff.check570 = icmp ult i64 %.reass, 15
  %conflict.rdx572 = or i1 %diff.check570, %diff.check571
  %i.ajr = sub i64 %.02789416, %i.fc
  %diff.check573 = icmp ugt i64 %i.ajr, -16
  %conflict.rdx574 = or i1 %conflict.rdx572, %diff.check573
  %i.ajs = sub i64 %.02789416, %i.fd
  %diff.check575 = icmp ugt i64 %i.ajs, -16
  %conflict.rdx576 = or i1 %conflict.rdx574, %diff.check575
  br i1 %conflict.rdx576, label %.lr.ph820.i.preheader, label %vector.main.loop.iter.check578

vector.main.loop.iter.check578:                   ; preds = %vector.memcheck569
  %min.iters.check579 = icmp ult i64 %i.ajq, 16
  br i1 %min.iters.check579, label %vec.epilog.ph597, label %vector.ph580

vector.ph580:                                     ; preds = %vector.main.loop.iter.check578
  %i.ajt = and i64 %i.ajq, 12
  %n.vec581 = and i64 %i.ajq, -16                 ; 4 uses
  %i.aju = add i64 %.20.i, %n.vec581
  br label %vector.body582

vector.body582:                                   ; preds = %vector.ph580, %vector.body582
  %index583 = phi i64 [ 0, %vector.ph580 ], [ %index.next588, %vector.body582 ] ; 2 uses
  %i.ajv = add i64 %.20.i, %index583              ; 4 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ajv
  %wide.load584 = load <16 x i8>, ptr %i.ajw, align 1, !tbaa !35
  %i.ajx = sub i64 %i.ajv, %i.d                   ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ajx
  %wide.load585 = load <16 x i8>, ptr %i.ajy, align 1, !tbaa !35 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.ajv
  %wide.load586 = load <16 x i8>, ptr %i.ajz, align 1, !tbaa !35 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.ajx
  %wide.load587 = load <16 x i8>, ptr %i.aka, align 1, !tbaa !35 ; 2 uses
  %i.akb = zext <16 x i8> %wide.load586 to <16 x i32> ; 2 uses
  %i.akc = zext <16 x i8> %wide.load587 to <16 x i32> ; 3 uses
  %i.akd = sub nsw <16 x i32> %i.akb, %i.akc
  %i.ake = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.akd, i1 true) ; 2 uses
  %i.akf = zext <16 x i8> %wide.load585 to <16 x i32> ; 2 uses
  %i.akg = sub nsw <16 x i32> %i.akf, %i.akc
  %i.akh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.akg, i1 true) ; 2 uses
  %i.aki = add nuw nsw <16 x i32> %i.akb, %i.akf
  %i.akj = shl nuw nsw <16 x i32> %i.akc, splat (i32 1)
  %i.akk = sub nsw <16 x i32> %i.aki, %i.akj
  %i.akl = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.akk, i1 true)
  %i.akm = icmp samesign ult <16 x i32> %i.akh, %i.ake
  %i.akn = select <16 x i1> %i.akm, <16 x i8> %wide.load586, <16 x i8> %wide.load585
  %i.ako = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.akh, <16 x i32> %i.ake)
  %i.akp = icmp samesign ult <16 x i32> %i.akl, %i.ako
  %i.akq = select <16 x i1> %i.akp, <16 x i8> %wide.load587, <16 x i8> %i.akn
  %i.akr = add <16 x i8> %i.akq, %wide.load584
  %i.aks = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ajv
  store <16 x i8> %i.akr, ptr %i.aks, align 1, !tbaa !35
  %index.next588 = add nuw i64 %index583, 16      ; 2 uses
  %i.akt = icmp eq i64 %index.next588, %n.vec581
  br i1 %i.akt, label %middle.block589, label %vector.body582, !llvm.loop !946

middle.block589:                                  ; preds = %vector.body582
  %cmp.n590 = icmp eq i64 %i.ajq, %n.vec581
  br i1 %cmp.n590, label %.loopexit, label %vec.epilog.iter.check595

vec.epilog.iter.check595:                         ; preds = %middle.block589
  %min.epilog.iters.check596 = icmp eq i64 %i.ajt, 0
  br i1 %min.epilog.iters.check596, label %.lr.ph820.i.preheader, label %vec.epilog.ph597, !prof !83

vec.epilog.ph597:                                 ; preds = %vector.main.loop.iter.check578, %vec.epilog.iter.check595
  %vec.epilog.resume.val591 = phi i64 [ %n.vec581, %vec.epilog.iter.check595 ], [ 0, %vector.main.loop.iter.check578 ]
  %n.vec598 = and i64 %i.ajq, -4                  ; 3 uses
  %i.aku = add i64 %.20.i, %n.vec598
  br label %vec.epilog.vector.body599

vec.epilog.vector.body599:                        ; preds = %vec.epilog.vector.body599, %vec.epilog.ph597
  %index600 = phi i64 [ %vec.epilog.resume.val591, %vec.epilog.ph597 ], [ %index.next605, %vec.epilog.vector.body599 ] ; 2 uses
  %i.akv = add i64 %.20.i, %index600              ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.akv
  %wide.load601 = load <4 x i8>, ptr %i.akw, align 1, !tbaa !35
  %i.akx = sub i64 %i.akv, %i.d                   ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.akx
  %wide.load602 = load <4 x i8>, ptr %i.aky, align 1, !tbaa !35 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.akv
  %wide.load603 = load <4 x i8>, ptr %i.akz, align 1, !tbaa !35 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.akx
  %wide.load604 = load <4 x i8>, ptr %i.ala, align 1, !tbaa !35 ; 2 uses
  %i.alb = zext <4 x i8> %wide.load603 to <4 x i32> ; 2 uses
  %i.alc = zext <4 x i8> %wide.load604 to <4 x i32> ; 3 uses
  %i.ald = sub nsw <4 x i32> %i.alb, %i.alc
  %i.ale = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ald, i1 true) ; 2 uses
  %i.alf = zext <4 x i8> %wide.load602 to <4 x i32> ; 2 uses
  %i.alg = sub nsw <4 x i32> %i.alf, %i.alc
  %i.alh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.alg, i1 true) ; 2 uses
  %i.ali = add nuw nsw <4 x i32> %i.alb, %i.alf
  %i.alj = shl nuw nsw <4 x i32> %i.alc, splat (i32 1)
  %i.alk = sub nsw <4 x i32> %i.ali, %i.alj
  %i.all = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.alk, i1 true)
  %i.alm = icmp samesign ult <4 x i32> %i.alh, %i.ale
  %i.aln = select <4 x i1> %i.alm, <4 x i8> %wide.load603, <4 x i8> %wide.load602
  %i.alo = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.alh, <4 x i32> %i.ale)
  %i.alp = icmp samesign ult <4 x i32> %i.all, %i.alo
  %i.alq = select <4 x i1> %i.alp, <4 x i8> %wide.load604, <4 x i8> %i.aln
  %i.alr = add <4 x i8> %i.alq, %wide.load601
  %i.als = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.akv
  store <4 x i8> %i.alr, ptr %i.als, align 1, !tbaa !35
  %index.next605 = add nuw i64 %index600, 4       ; 2 uses
  %i.alt = icmp eq i64 %index.next605, %n.vec598
  br i1 %i.alt, label %vec.epilog.middle.block606, label %vec.epilog.vector.body599, !llvm.loop !947

vec.epilog.middle.block606:                       ; preds = %vec.epilog.vector.body599
  %cmp.n607 = icmp eq i64 %i.ajq, %n.vec598
  br i1 %cmp.n607, label %.loopexit, label %.lr.ph820.i.preheader

.lr.ph820.i.preheader:                            ; preds = %iter.check593, %vector.memcheck569, %vec.epilog.iter.check595, %vec.epilog.middle.block606
  %.21819.i.ph = phi i64 [ %.20.i, %iter.check593 ], [ %.20.i, %vector.memcheck569 ], [ %i.aju, %vec.epilog.iter.check595 ], [ %i.aku, %vec.epilog.middle.block606 ]
  br label %.lr.ph820.i

.lr.ph820.i:                                      ; preds = %.lr.ph820.i.preheader, %.lr.ph820.i
  %.21819.i = phi i64 [ %i.amt, %.lr.ph820.i ], [ %.21819.i.ph, %.lr.ph820.i.preheader ] ; 5 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.21819.i
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !35
  %i.alw = sub i64 %.21819.i, %i.d                ; 2 uses
end_hunk_0
