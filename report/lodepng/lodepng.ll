Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL8unfilterPhPKhjjj:bb.a
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !35
  %i.xy = lshr i8 %i.xx, 1
  %i.xz = add i8 %i.xy, %i.xu
  %i.ya = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.xs
  store i8 %i.xz, ptr %i.ya, align 1, !tbaa !35
  %i.yb = add i64 %.12856.i, 2                    ; 2 uses
  %i.yc = add nuw i64 %.0600857.i, 2
  %.not632.i.1 = icmp eq i64 %i.yb, %i.n
  br i1 %.not632.i.1, label %.loopexit, label %.lr.ph858.i, !llvm.loop !925

bb.g:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.02789, null
  br i1 %.not.i, label %.preheader733.i, label %bb.h

.preheader733.i:                                  ; preds = %bb.g
  br i1 %.not625821.i, label %.preheader731.i, label %iter.check646

iter.check646:                                    ; preds = %.preheader733.i
  %brmerge844 = select i1 %min.iters.check630, i1 true, i1 %found.conflict634
  br i1 %brmerge844, label %.lr.ph823.i.preheader, label %vector.main.loop.iter.check635

vector.main.loop.iter.check635:                   ; preds = %iter.check646
  br i1 %min.iters.check636, label %vec.epilog.ph650, label %vector.body639

vector.body639:                                   ; preds = %vector.main.loop.iter.check635, %vector.body639
  %index640 = phi i64 [ %index.next643, %vector.body639 ], [ 0, %vector.main.loop.iter.check635 ] ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index640 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %wide.load641 = load <16 x i8>, ptr %i.yd, align 1, !tbaa !35, !alias.scope !982
  %wide.load642 = load <16 x i8>, ptr %i.ye, align 1, !tbaa !35, !alias.scope !982
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ff, i64 %index640 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  store <16 x i8> %wide.load641, ptr %i.yf, align 1, !tbaa !35, !alias.scope !983, !noalias !982
  store <16 x i8> %wide.load642, ptr %i.yg, align 1, !tbaa !35, !alias.scope !983, !noalias !982
  %index.next643 = add nuw i64 %index640, 32      ; 2 uses
  %i.yh = icmp eq i64 %index.next643, %n.vec638
  br i1 %i.yh, label %middle.block644, label %vector.body639, !llvm.loop !929

middle.block644:                                  ; preds = %vector.body639
  br i1 %cmp.n645, label %.preheader731.i, label %vec.epilog.iter.check647

vec.epilog.iter.check647:                         ; preds = %middle.block644
  br i1 %min.epilog.iters.check649, label %.lr.ph823.i.preheader, label %vec.epilog.ph650, !prof !90

vec.epilog.ph650:                                 ; preds = %vector.main.loop.iter.check635, %vec.epilog.iter.check647
  %vec.epilog.resume.val651 = phi i64 [ %n.vec638, %vec.epilog.iter.check647 ], [ 0, %vector.main.loop.iter.check635 ]
  br label %vec.epilog.vector.body653

vec.epilog.vector.body653:                        ; preds = %vec.epilog.vector.body653, %vec.epilog.ph650
  %index654 = phi i64 [ %vec.epilog.resume.val651, %vec.epilog.ph650 ], [ %index.next656, %vec.epilog.vector.body653 ] ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index654
  %wide.load655 = load <4 x i8>, ptr %i.yi, align 1, !tbaa !35, !alias.scope !982
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %index654
  store <4 x i8> %wide.load655, ptr %i.yj, align 1, !tbaa !35, !alias.scope !983, !noalias !982
  %index.next656 = add nuw i64 %index654, 4       ; 2 uses
  %i.yk = icmp eq i64 %index.next656, %n.vec652
  br i1 %i.yk, label %vec.epilog.middle.block657, label %vec.epilog.vector.body653, !llvm.loop !930

vec.epilog.middle.block657:                       ; preds = %vec.epilog.vector.body653
  br i1 %cmp.n658, label %.preheader731.i, label %.lr.ph823.i.preheader

.lr.ph823.i.preheader:                            ; preds = %iter.check646, %vec.epilog.iter.check647, %vec.epilog.middle.block657
  %.22822.i.ph = phi i64 [ 0, %iter.check646 ], [ %n.vec652, %vec.epilog.middle.block657 ], [ %n.vec638, %vec.epilog.iter.check647 ] ; 3 uses
  br i1 %lcmp.mod785.not, label %.lr.ph823.i.prol.loopexit, label %.lr.ph823.i.prol

.lr.ph823.i.prol:                                 ; preds = %.lr.ph823.i.preheader, %.lr.ph823.i.prol
  %.22822.i.prol = phi i64 [ %i.yo, %.lr.ph823.i.prol ], [ %.22822.i.ph, %.lr.ph823.i.preheader ] ; 3 uses
  %prol.iter786 = phi i64 [ %prol.iter786.next, %.lr.ph823.i.prol ], [ 0, %.lr.ph823.i.preheader ]
  %i.yl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.22822.i.prol
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !35
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.22822.i.prol
  store i8 %i.ym, ptr %i.yn, align 1, !tbaa !35
  %i.yo = add nuw nsw i64 %.22822.i.prol, 1       ; 2 uses
  %prol.iter786.next = add i64 %prol.iter786, 1   ; 2 uses
  %prol.iter786.cmp.not = icmp eq i64 %prol.iter786.next, %xtraiter784
  br i1 %prol.iter786.cmp.not, label %.lr.ph823.i.prol.loopexit, label %.lr.ph823.i.prol, !llvm.loop !931

.lr.ph823.i.prol.loopexit:                        ; preds = %.lr.ph823.i.prol, %.lr.ph823.i.preheader
  %.22822.i.unr = phi i64 [ %.22822.i.ph, %.lr.ph823.i.preheader ], [ %i.yo, %.lr.ph823.i.prol ]
  %i.yp = sub nsw i64 %.22822.i.ph, %i.d
  %i.yq = icmp ugt i64 %i.yp, -4
  br i1 %i.yq, label %.preheader731.i, label %.lr.ph823.i

bb.h:                                             ; preds = %bb.g
  switch i32 %i.c, label %iter.check744 [
    i32 8, label %.preheader737.i
    i32 6, label %.preheader739.i
    i32 4, label %.preheader741.i
    i32 3, label %.preheader743.i
    i32 2, label %.preheader745.i
    i32 1, label %.preheader747.i
    i32 0, label %.loopexit736.i
  ]

iter.check744:                                    ; preds = %bb.h
  br i1 %min.iters.check722, label %.lr.ph816.i.preheader, label %vector.memcheck723

vector.memcheck723:                               ; preds = %iter.check744
  %i.yr = getelementptr i8, ptr %.02789, i64 %i.d
  %bound0727 = icmp ult ptr %0, %i.yr
  %bound1728 = icmp ult ptr %.02789, %scevgep721
  %found.conflict729 = and i1 %bound0727, %bound1728
  %conflict.rdx730 = or i1 %found.conflict726, %found.conflict729
  br i1 %conflict.rdx730, label %.lr.ph816.i.preheader, label %vector.main.loop.iter.check731

vector.main.loop.iter.check731:                   ; preds = %vector.memcheck723
  br i1 %min.iters.check732, label %vec.epilog.ph748, label %vector.body735

vector.body735:                                   ; preds = %vector.main.loop.iter.check731, %vector.body735
  %index736 = phi i64 [ %index.next741, %vector.body735 ], [ 0, %vector.main.loop.iter.check731 ] ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index736 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %wide.load737 = load <16 x i8>, ptr %i.ys, align 1, !tbaa !35, !alias.scope !984
  %wide.load738 = load <16 x i8>, ptr %i.yt, align 1, !tbaa !35, !alias.scope !984
  %i.yu = getelementptr inbounds nuw i8, ptr %.02789, i64 %index736 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %wide.load739 = load <16 x i8>, ptr %i.yu, align 1, !tbaa !35, !alias.scope !985
  %wide.load740 = load <16 x i8>, ptr %i.yv, align 1, !tbaa !35, !alias.scope !985
  %i.yw = add <16 x i8> %wide.load739, %wide.load737
  %i.yx = add <16 x i8> %wide.load740, %wide.load738
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ff, i64 %index736 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  store <16 x i8> %i.yw, ptr %i.yy, align 1, !tbaa !35, !alias.scope !986, !noalias !987
  store <16 x i8> %i.yx, ptr %i.yz, align 1, !tbaa !35, !alias.scope !986, !noalias !987
  %index.next741 = add nuw i64 %index736, 32      ; 2 uses
  %i.za = icmp eq i64 %index.next741, %n.vec734
  br i1 %i.za, label %middle.block742, label %vector.body735, !llvm.loop !936

middle.block742:                                  ; preds = %vector.body735
  br i1 %cmp.n743, label %.loopexit736.i, label %vec.epilog.iter.check745

vec.epilog.iter.check745:                         ; preds = %middle.block742
  br i1 %min.epilog.iters.check747, label %.lr.ph816.i.preheader, label %vec.epilog.ph748, !prof !90

vec.epilog.ph748:                                 ; preds = %vector.main.loop.iter.check731, %vec.epilog.iter.check745
  %vec.epilog.resume.val749 = phi i64 [ %n.vec734, %vec.epilog.iter.check745 ], [ 0, %vector.main.loop.iter.check731 ]
  br label %vec.epilog.vector.body751

vec.epilog.vector.body751:                        ; preds = %vec.epilog.vector.body751, %vec.epilog.ph748
  %index752 = phi i64 [ %vec.epilog.resume.val749, %vec.epilog.ph748 ], [ %index.next755, %vec.epilog.vector.body751 ] ; 4 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index752
  %wide.load753 = load <4 x i8>, ptr %i.zb, align 1, !tbaa !35, !alias.scope !984
  %i.zc = getelementptr inbounds nuw i8, ptr %.02789, i64 %index752
  %wide.load754 = load <4 x i8>, ptr %i.zc, align 1, !tbaa !35, !alias.scope !985
  %i.zd = add <4 x i8> %wide.load754, %wide.load753
  %i.ze = getelementptr inbounds nuw i8, ptr %i.ff, i64 %index752
  store <4 x i8> %i.zd, ptr %i.ze, align 1, !tbaa !35, !alias.scope !986, !noalias !987
  %index.next755 = add nuw i64 %index752, 4       ; 2 uses
  %i.zf = icmp eq i64 %index.next755, %n.vec750
  br i1 %i.zf, label %vec.epilog.middle.block756, label %vec.epilog.vector.body751, !llvm.loop !937

vec.epilog.middle.block756:                       ; preds = %vec.epilog.vector.body751
  br i1 %cmp.n757, label %.loopexit736.i, label %.lr.ph816.i.preheader

.lr.ph816.i.preheader:                            ; preds = %iter.check744, %vector.memcheck723, %vec.epilog.iter.check745, %vec.epilog.middle.block756
  %.19815.i.ph = phi i64 [ 0, %iter.check744 ], [ 0, %vector.memcheck723 ], [ %n.vec734, %vec.epilog.iter.check745 ], [ %n.vec750, %vec.epilog.middle.block756 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph816.i.prol.loopexit, label %.lr.ph816.i.prol

.lr.ph816.i.prol:                                 ; preds = %.lr.ph816.i.preheader, %.lr.ph816.i.prol
  %.19815.i.prol = phi i64 [ %i.zm, %.lr.ph816.i.prol ], [ %.19815.i.ph, %.lr.ph816.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph816.i.prol ], [ 0, %.lr.ph816.i.preheader ]
  %i.zg = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.19815.i.prol
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !35
  %i.zi = getelementptr inbounds nuw i8, ptr %.02789, i64 %.19815.i.prol
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !35
  %i.zk = add i8 %i.zj, %i.zh
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.19815.i.prol
  store i8 %i.zk, ptr %i.zl, align 1, !tbaa !35
  %i.zm = add nuw nsw i64 %.19815.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph816.i.prol.loopexit, label %.lr.ph816.i.prol, !llvm.loop !938

.lr.ph816.i.prol.loopexit:                        ; preds = %.lr.ph816.i.prol, %.lr.ph816.i.preheader
  %.19815.i.unr = phi i64 [ %.19815.i.ph, %.lr.ph816.i.preheader ], [ %i.zm, %.lr.ph816.i.prol ]
  %i.zn = sub nsw i64 %.19815.i.ph, %i.d
  %i.zo = icmp ugt i64 %i.zn, -4
  br i1 %i.zo, label %.loopexit736.i, label %.lr.ph816.i

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
  %.13795.i = phi i64 [ %i.aad, %.lr.ph812.i ], [ 0, %.preheader737.i ] ; 4 uses
  %i.zp = phi <8 x i8> [ %i.aac, %.lr.ph812.i ], [ zeroinitializer, %.preheader737.i ] ; 2 uses
  %i.zq = phi <8 x i8> [ %i.zu, %.lr.ph812.i ], [ zeroinitializer, %.preheader737.i ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.02789, i64 %.13795.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.13795.i
  %5 = zext <8 x i8> %i.zq to <8 x i32>           ; 3 uses
  %6 = zext <8 x i8> %i.zp to <8 x i32>           ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.13795.i
  %i.zu = load <8 x i8>, ptr %i.zr, align 1, !tbaa !35 ; 3 uses
  %i.zv = load <8 x i8>, ptr %i.zs, align 1, !tbaa !35
  %7 = zext <8 x i8> %i.zu to <8 x i32>           ; 2 uses
  %8 = sub nsw <8 x i32> %7, %5
  %9 = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %8, i1 true) ; 2 uses
  %i.zw = sub nsw <8 x i32> %6, %5
  %i.zx = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.zw, i1 true) ; 2 uses
  %10 = shl nuw nsw <8 x i32> %5, splat (i32 1)
  %11 = sub nsw <8 x i32> %6, %10
  %12 = add nsw <8 x i32> %11, %7
  %13 = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %12, i1 true)
  %i.zy = icmp samesign ult <8 x i32> %i.zx, %9
  %i.zz = select <8 x i1> %i.zy, <8 x i8> %i.zu, <8 x i8> %i.zp
  %i.aaa = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.zx, <8 x i32> %9)
  %14 = icmp samesign ult <8 x i32> %13, %i.aaa
  %i.aab = select <8 x i1> %14, <8 x i8> %i.zq, <8 x i8> %i.zz
  %i.aac = add <8 x i8> %i.zv, %i.aab             ; 2 uses
  store <8 x i8> %i.aac, ptr %i.zt, align 1, !tbaa !35
  %i.aad = add nuw nsw i64 %.13795.i, 8           ; 3 uses
  %i.aae = or disjoint i64 %i.aad, 7
  %i.aaf = icmp samesign ult i64 %i.aae, %i.n
  br i1 %i.aaf, label %.lr.ph812.i, label %.loopexit736.i, !llvm.loop !939

.lr.ph793.i:                                      ; preds = %.preheader739.i, %.lr.ph793.i
  %.14780.i = phi i64 [ %i.aca, %.lr.ph793.i ], [ 0, %.preheader739.i ] ; 7 uses
  %i.aag = phi <4 x i8> [ %i.abu, %.lr.ph793.i ], [ zeroinitializer, %.preheader739.i ] ; 2 uses
  %i.aah = phi <4 x i8> [ %i.abj, %.lr.ph793.i ], [ zeroinitializer, %.preheader739.i ] ; 2 uses
  %i.aai = phi <2 x i8> [ %i.abh, %.lr.ph793.i ], [ zeroinitializer, %.preheader739.i ] ; 2 uses
  %i.aaj = phi <2 x i8> [ %i.aar, %.lr.ph793.i ], [ zeroinitializer, %.preheader739.i ] ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.02789, i64 %.14780.i
  %i.aal = add nuw nsw i64 %.14780.i, 4           ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.14780.i
  %15 = zext <4 x i8> %i.aah to <4 x i32>         ; 3 uses
  %16 = zext <4 x i8> %i.aag to <4 x i32>         ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.aal
  %i.aap = zext <2 x i8> %i.aaj to <2 x i32>      ; 3 uses
  %i.aaq = zext <2 x i8> %i.aai to <2 x i32>      ; 2 uses
  %i.aar = load <2 x i8>, ptr %i.aam, align 1, !tbaa !35 ; 3 uses
  %i.aas = load <2 x i8>, ptr %i.aao, align 1, !tbaa !35
  %i.aat = zext <2 x i8> %i.aar to <2 x i32>      ; 2 uses
  %i.aau = sub nsw <2 x i32> %i.aat, %i.aap
  %i.aav = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.aau, i1 true) ; 2 uses
  %i.aaw = sub nsw <2 x i32> %i.aaq, %i.aap
  %i.aax = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.aaw, i1 true) ; 2 uses
  %i.aay = shl nuw nsw <2 x i32> %i.aap, splat (i32 1)
  %i.aaz = sub nsw <2 x i32> %i.aaq, %i.aay
  %i.aba = add nsw <2 x i32> %i.aaz, %i.aat
  %i.abb = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.aba, i1 true)
  %i.abc = icmp samesign ult <2 x i32> %i.aax, %i.aav
  %i.abd = select <2 x i1> %i.abc, <2 x i8> %i.aar, <2 x i8> %i.aai
  %i.abe = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.aax, <2 x i32> %i.aav)
  %i.abf = icmp samesign ult <2 x i32> %i.abb, %i.abe
  %i.abg = select <2 x i1> %i.abf, <2 x i8> %i.aaj, <2 x i8> %i.abd
  %i.abh = add <2 x i8> %i.aas, %i.abg            ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.14780.i
  %i.abj = load <4 x i8>, ptr %i.aak, align 1, !tbaa !35 ; 3 uses
  %i.abk = load <4 x i8>, ptr %i.aan, align 1, !tbaa !35
  %i.abl = zext <4 x i8> %i.abj to <4 x i32>      ; 2 uses
  %i.abm = sub nsw <4 x i32> %i.abl, %15
  %i.abn = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abm, i1 true) ; 2 uses
  %i.abo = sub nsw <4 x i32> %16, %15
  %i.abp = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abo, i1 true) ; 2 uses
  %17 = shl nuw nsw <4 x i32> %15, splat (i32 1)
  %18 = sub nsw <4 x i32> %16, %17
  %19 = add nsw <4 x i32> %18, %i.abl
  %20 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %19, i1 true)
  %i.abq = icmp samesign ult <4 x i32> %i.abp, %i.abn
  %i.abr = select <4 x i1> %i.abq, <4 x i8> %i.abj, <4 x i8> %i.aag
  %i.abs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.abp, <4 x i32> %i.abn)
  %21 = icmp samesign ult <4 x i32> %20, %i.abs
  %i.abt = select <4 x i1> %21, <4 x i8> %i.aah, <4 x i8> %i.abr
  %i.abu = add <4 x i8> %i.abk, %i.abt            ; 2 uses
  store <4 x i8> %i.abu, ptr %i.abi, align 1, !tbaa !35
  %i.abv = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.aal
  %i.abw = extractelement <2 x i8> %i.abh, i64 0
  store i8 %i.abw, ptr %i.abv, align 1, !tbaa !35
  %i.abx = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.14780.i
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 5
  %i.abz = extractelement <2 x i8> %i.abh, i64 1
  store i8 %i.abz, ptr %i.aby, align 1, !tbaa !35
  %i.aca = add nuw nsw i64 %.14780.i, 6           ; 2 uses
  %i.acb = add nuw nsw i64 %.14780.i, 11
  %i.acc = icmp samesign ult i64 %i.acb, %i.n
  br i1 %i.acc, label %.lr.ph793.i, label %.loopexit736.i, !llvm.loop !940

.lr.ph778.i:                                      ; preds = %.preheader741.i, %.lr.ph778.i
  %.15769.i = phi i64 [ %i.acu, %.lr.ph778.i ], [ 0, %.preheader741.i ] ; 4 uses
  %i.acd = phi <4 x i8> [ %i.act, %.lr.ph778.i ], [ zeroinitializer, %.preheader741.i ] ; 2 uses
  %i.ace = phi <4 x i8> [ %i.aci, %.lr.ph778.i ], [ zeroinitializer, %.preheader741.i ] ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.02789, i64 %.15769.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.15769.i
  %22 = zext <4 x i8> %i.ace to <4 x i32>         ; 3 uses
  %23 = zext <4 x i8> %i.acd to <4 x i32>         ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.15769.i
  %i.aci = load <4 x i8>, ptr %i.acf, align 1, !tbaa !35 ; 3 uses
  %i.acj = load <4 x i8>, ptr %i.acg, align 1, !tbaa !35
  %i.ack = zext <4 x i8> %i.aci to <4 x i32>      ; 2 uses
  %i.acl = sub nsw <4 x i32> %i.ack, %22
  %i.acm = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.acl, i1 true) ; 2 uses
  %i.acn = sub nsw <4 x i32> %23, %22
  %i.aco = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.acn, i1 true) ; 2 uses
  %24 = shl nuw nsw <4 x i32> %22, splat (i32 1)
  %25 = sub nsw <4 x i32> %23, %24
  %26 = add nsw <4 x i32> %25, %i.ack
  %27 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %26, i1 true)
  %i.acp = icmp samesign ult <4 x i32> %i.aco, %i.acm
  %i.acq = select <4 x i1> %i.acp, <4 x i8> %i.aci, <4 x i8> %i.acd
  %i.acr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aco, <4 x i32> %i.acm)
  %28 = icmp samesign ult <4 x i32> %27, %i.acr
  %i.acs = select <4 x i1> %28, <4 x i8> %i.ace, <4 x i8> %i.acq
  %i.act = add <4 x i8> %i.acs, %i.acj            ; 2 uses
  store <4 x i8> %i.act, ptr %i.ach, align 1, !tbaa !35
  %i.acu = add nuw nsw i64 %.15769.i, 4           ; 3 uses
  %i.acv = or disjoint i64 %i.acu, 3
  %i.acw = icmp samesign ult i64 %i.acv, %i.n
  br i1 %i.acw, label %.lr.ph778.i, label %.loopexit736.i, !llvm.loop !941

.lr.ph767.i:                                      ; preds = %.preheader743.i, %.lr.ph767.i
  %.0558766.i = phi i8 [ %i.aeg, %.lr.ph767.i ], [ 0, %.preheader743.i ] ; 2 uses
  %.0559765.i = phi i8 [ %i.adc, %.lr.ph767.i ], [ 0, %.preheader743.i ] ; 2 uses
  %.16760.i = phi i64 [ %i.aen, %.lr.ph767.i ], [ 0, %.preheader743.i ] ; 7 uses
  %i.acx = phi <2 x i8> [ %i.adp, %.lr.ph767.i ], [ zeroinitializer, %.preheader743.i ] ; 2 uses
  %i.acy = phi <2 x i8> [ %i.ade, %.lr.ph767.i ], [ zeroinitializer, %.preheader743.i ] ; 2 uses
  %i.acz = add nuw nsw i64 %.16760.i, 2           ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.02789, i64 %.16760.i
  %i.adb = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.acz
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !35 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.16760.i
  %29 = zext <2 x i8> %i.acy to <2 x i32>         ; 3 uses
  %30 = zext <2 x i8> %i.acx to <2 x i32>         ; 2 uses
  %i.ade = load <2 x i8>, ptr %i.ada, align 1, !tbaa !35 ; 3 uses
  %i.adf = load <2 x i8>, ptr %i.add, align 1, !tbaa !35
  %i.adg = zext <2 x i8> %i.ade to <2 x i32>      ; 2 uses
  %i.adh = sub nsw <2 x i32> %i.adg, %29
  %i.adi = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.adh, i1 true) ; 2 uses
  %i.adj = sub nsw <2 x i32> %30, %29
  %i.adk = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.adj, i1 true) ; 2 uses
  %31 = shl nuw nsw <2 x i32> %29, splat (i32 1)
  %32 = sub nsw <2 x i32> %30, %31
  %33 = add nsw <2 x i32> %32, %i.adg
  %34 = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %33, i1 true)
  %i.adl = icmp samesign ult <2 x i32> %i.adk, %i.adi
  %i.adm = select <2 x i1> %i.adl, <2 x i8> %i.ade, <2 x i8> %i.acx
  %i.adn = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.adk, <2 x i32> %i.adi)
  %35 = icmp samesign ult <2 x i32> %34, %i.adn
  %i.ado = select <2 x i1> %35, <2 x i8> %i.acy, <2 x i8> %i.adm
  %i.adp = add <2 x i8> %i.ado, %i.adf            ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.acz
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !35
  %i.ads = zext i8 %i.adc to i32                  ; 2 uses
  %i.adt = zext i8 %.0559765.i to i32             ; 3 uses
  %i.adu = sub nsw i32 %i.ads, %i.adt
  %i.adv = tail call i32 @llvm.abs.i32(i32 %i.adu, i1 true) ; 2 uses
  %i.adw = zext i8 %.0558766.i to i32             ; 2 uses
  %i.adx = sub nsw i32 %i.adw, %i.adt
  %i.ady = tail call i32 @llvm.abs.i32(i32 %i.adx, i1 true) ; 2 uses
  %i.adz = shl nuw nsw i32 %i.adt, 1
  %i.aea = sub nsw i32 %i.adw, %i.adz
  %i.aeb = add nsw i32 %i.aea, %i.ads
  %i.aec = tail call i32 @llvm.abs.i32(i32 %i.aeb, i1 true)
  %i.aed = icmp samesign ult i32 %i.ady, %i.adv
  %.032.i679.i = select i1 %i.aed, i8 %i.adc, i8 %.0558766.i
  %.0.in.i680.i = tail call i32 @llvm.umin.i32(i32 %i.ady, i32 %i.adv)
  %i.aee = icmp samesign ult i32 %i.aec, %.0.in.i680.i
  %i.aef = select i1 %i.aee, i8 %.0559765.i, i8 %.032.i679.i
  %i.aeg = add i8 %i.aef, %i.adr                  ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.16760.i
  %i.aei = extractelement <2 x i8> %i.adp, i64 0
  store i8 %i.aei, ptr %i.aeh, align 1, !tbaa !35
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.16760.i
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 1
  %i.ael = extractelement <2 x i8> %i.adp, i64 1
  store i8 %i.ael, ptr %i.aek, align 1, !tbaa !35
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.acz
  store i8 %i.aeg, ptr %i.aem, align 1, !tbaa !35
  %i.aen = add nuw nsw i64 %.16760.i, 3           ; 2 uses
  %i.aeo = add nuw nsw i64 %.16760.i, 5
  %i.aep = icmp samesign ult i64 %i.aeo, %i.n
  br i1 %i.aep, label %.lr.ph767.i, label %.loopexit736.i, !llvm.loop !942

.lr.ph758.i:                                      ; preds = %.preheader745.i, %.lr.ph758.i
  %.17753.i = phi i64 [ %i.afl, %.lr.ph758.i ], [ 0, %.preheader745.i ] ; 5 uses
  %i.aeq = phi <2 x i8> [ %i.aff, %.lr.ph758.i ], [ zeroinitializer, %.preheader745.i ] ; 2 uses
  %i.aer = phi <2 x i8> [ %i.aeu, %.lr.ph758.i ], [ zeroinitializer, %.preheader745.i ] ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.02789, i64 %.17753.i
  %i.aet = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.17753.i
  %36 = zext <2 x i8> %i.aer to <2 x i32>         ; 3 uses
  %37 = zext <2 x i8> %i.aeq to <2 x i32>         ; 2 uses
  %i.aeu = load <2 x i8>, ptr %i.aes, align 1, !tbaa !35 ; 3 uses
  %i.aev = load <2 x i8>, ptr %i.aet, align 1, !tbaa !35
  %i.aew = zext <2 x i8> %i.aeu to <2 x i32>      ; 2 uses
  %i.aex = sub nsw <2 x i32> %i.aew, %36
  %i.aey = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.aex, i1 true) ; 2 uses
  %i.aez = sub nsw <2 x i32> %37, %36
  %i.afa = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.aez, i1 true) ; 2 uses
  %38 = shl nuw nsw <2 x i32> %36, splat (i32 1)
  %39 = sub nsw <2 x i32> %37, %38
  %40 = add nsw <2 x i32> %39, %i.aew
  %41 = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %40, i1 true)
  %i.afb = icmp samesign ult <2 x i32> %i.afa, %i.aey
  %i.afc = select <2 x i1> %i.afb, <2 x i8> %i.aeu, <2 x i8> %i.aeq
  %i.afd = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.afa, <2 x i32> %i.aey)
  %42 = icmp samesign ult <2 x i32> %41, %i.afd
  %i.afe = select <2 x i1> %42, <2 x i8> %i.aer, <2 x i8> %i.afc
  %i.aff = add <2 x i8> %i.afe, %i.aev            ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.17753.i
  %i.afh = extractelement <2 x i8> %i.aff, i64 0
  store i8 %i.afh, ptr %i.afg, align 1, !tbaa !35
  %i.afi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.17753.i
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 1
  %i.afk = extractelement <2 x i8> %i.aff, i64 1
  store i8 %i.afk, ptr %i.afj, align 1, !tbaa !35
  %i.afl = add nuw nsw i64 %.17753.i, 2           ; 3 uses
  %i.afm = or disjoint i64 %i.afl, 1
  %i.afn = icmp samesign ult i64 %i.afm, %i.n
  br i1 %i.afn, label %.lr.ph758.i, label %.loopexit736.i, !llvm.loop !943

.lr.ph.i:                                         ; preds = %.preheader747.i, %.lr.ph.i
  %.0552752.i = phi i8 [ %i.agg, %.lr.ph.i ], [ 0, %.preheader747.i ] ; 2 uses
  %.0553751.i = phi i8 [ %i.afp, %.lr.ph.i ], [ 0, %.preheader747.i ] ; 2 uses
  %.18750.i = phi i64 [ %i.agi, %.lr.ph.i ], [ 0, %.preheader747.i ] ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.02789, i64 %.18750.i
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !35 ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.18750.i
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !35
  %i.afs = zext i8 %i.afp to i32                  ; 2 uses
  %i.aft = zext i8 %.0553751.i to i32             ; 3 uses
  %i.afu = sub nsw i32 %i.afs, %i.aft
  %i.afv = tail call i32 @llvm.abs.i32(i32 %i.afu, i1 true) ; 2 uses
  %i.afw = zext i8 %.0552752.i to i32             ; 2 uses
  %i.afx = sub nsw i32 %i.afw, %i.aft
  %i.afy = tail call i32 @llvm.abs.i32(i32 %i.afx, i1 true) ; 2 uses
  %i.afz = shl nuw nsw i32 %i.aft, 1
  %i.aga = sub nsw i32 %i.afw, %i.afz
  %i.agb = add nsw i32 %i.aga, %i.afs
  %i.agc = tail call i32 @llvm.abs.i32(i32 %i.agb, i1 true)
  %i.agd = icmp samesign ult i32 %i.afy, %i.afv
  %.032.i685.i = select i1 %i.agd, i8 %i.afp, i8 %.0552752.i
  %.0.in.i686.i = tail call i32 @llvm.umin.i32(i32 %i.afy, i32 %i.afv)
  %i.age = icmp samesign ult i32 %i.agc, %.0.in.i686.i
  %i.agf = select i1 %i.age, i8 %.0553751.i, i8 %.032.i685.i
  %i.agg = add i8 %i.agf, %i.afr                  ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.18750.i
  store i8 %i.agg, ptr %i.agh, align 1, !tbaa !35
  %i.agi = add nuw nsw i64 %.18750.i, 1           ; 2 uses
  %.not628.i = icmp eq i64 %i.agi, %i.n
  br i1 %.not628.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !944

.lr.ph816.i:                                      ; preds = %.lr.ph816.i.prol.loopexit, %.lr.ph816.i
  %.19815.i = phi i64 [ %i.ahk, %.lr.ph816.i ], [ %.19815.i.unr, %.lr.ph816.i.prol.loopexit ] ; 7 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.19815.i
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !35
  %i.agl = getelementptr inbounds nuw i8, ptr %.02789, i64 %.19815.i
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !35
  %i.agn = add i8 %i.agm, %i.agk
  %i.ago = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.19815.i
  store i8 %i.agn, ptr %i.ago, align 1, !tbaa !35
  %i.agp = add nuw nsw i64 %.19815.i, 1           ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.agp
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !35
  %i.ags = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.agp
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !35
  %i.agu = add i8 %i.agt, %i.agr
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.agp
  store i8 %i.agu, ptr %i.agv, align 1, !tbaa !35
  %i.agw = add nuw nsw i64 %.19815.i, 2           ; 3 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.agw
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !35
  %i.agz = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.agw
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !35
  %i.ahb = add i8 %i.aha, %i.agy
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.agw
  store i8 %i.ahb, ptr %i.ahc, align 1, !tbaa !35
  %i.ahd = add nuw nsw i64 %.19815.i, 3           ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ahd
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !35
  %i.ahg = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.ahd
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !35
  %i.ahi = add i8 %i.ahh, %i.ahf
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ahd
  store i8 %i.ahi, ptr %i.ahj, align 1, !tbaa !35
  %i.ahk = add nuw nsw i64 %.19815.i, 4           ; 2 uses
  %.not627.i.3 = icmp eq i64 %i.ahk, %i.d
  br i1 %.not627.i.3, label %.loopexit736.i, label %.lr.ph816.i, !llvm.loop !945

.loopexit736.i:                                   ; preds = %.lr.ph758.i, %.lr.ph767.i, %.lr.ph778.i, %.lr.ph793.i, %.lr.ph812.i, %.lr.ph816.i.prol.loopexit, %.lr.ph816.i, %middle.block742, %vec.epilog.middle.block756, %.preheader737.i, %.preheader739.i, %.preheader741.i, %.preheader743.i, %.preheader745.i, %.preheader747.i, %bb.h
  %.20.i = phi i64 [ %i.d, %.lr.ph816.i.prol.loopexit ], [ %i.aad, %.lr.ph812.i ], [ %i.aca, %.lr.ph793.i ], [ %i.d, %middle.block742 ], [ 0, %.preheader747.i ], [ %i.aen, %.lr.ph767.i ], [ 0, %bb.h ], [ 0, %.preheader737.i ], [ 0, %.preheader739.i ], [ 0, %.preheader741.i ], [ 0, %.preheader743.i ], [ 0, %.preheader745.i ], [ %i.acu, %.lr.ph778.i ], [ %i.d, %vec.epilog.middle.block756 ], [ %i.d, %.lr.ph816.i ], [ %i.afl, %.lr.ph758.i ] ; 8 uses
  %.not629818.i = icmp eq i64 %.20.i, %i.n
  br i1 %.not629818.i, label %.loopexit, label %iter.check690

iter.check690:                                    ; preds = %.loopexit736.i
  %i.ahl = sub i64 %i.dl, %.20.i                  ; 7 uses
  %min.iters.check668 = icmp ult i64 %i.ahl, 4
  br i1 %min.iters.check668, label %.lr.ph820.i.preheader, label %vector.memcheck669

vector.memcheck669:                               ; preds = %iter.check690
  %.reass = add i64 %indvars.iv, %invariant.op
  %diff.check670 = icmp ult i64 %.reass, 15
  %conflict.rdx672 = or i1 %diff.check670, %diff.check671
  %i.ahm = add i64 %i.fb, %i.a
  %i.ahn = sub i64 %.02789476, %i.ahm
  %diff.check673 = icmp ugt i64 %i.ahn, -16
  %conflict.rdx674 = or i1 %conflict.rdx672, %diff.check673
  %i.aho = add i64 %i.dk, %i.fb
  %i.ahp = sub i64 %.02789476, %i.aho
  %diff.check675 = icmp ugt i64 %i.ahp, -16
  %conflict.rdx676 = or i1 %conflict.rdx674, %diff.check675
  br i1 %conflict.rdx676, label %.lr.ph820.i.preheader, label %vector.main.loop.iter.check677

vector.main.loop.iter.check677:                   ; preds = %vector.memcheck669
  %min.iters.check678 = icmp ult i64 %i.ahl, 16
  br i1 %min.iters.check678, label %vec.epilog.ph694, label %vector.ph679

vector.ph679:                                     ; preds = %vector.main.loop.iter.check677
  %i.ahq = and i64 %i.ahl, 12
  %n.vec680 = and i64 %i.ahl, -16                 ; 4 uses
  %i.ahr = add i64 %.20.i, %n.vec680
  br label %vector.body681

vector.body681:                                   ; preds = %vector.ph679, %vector.body681
  %index682 = phi i64 [ 0, %vector.ph679 ], [ %index.next687, %vector.body681 ] ; 2 uses
  %i.ahs = add i64 %.20.i, %index682              ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ahs
  %wide.load683 = load <16 x i8>, ptr %i.aht, align 1, !tbaa !35
  %i.ahu = sub i64 %i.ahs, %i.d                   ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ahu
  %wide.load684 = load <16 x i8>, ptr %i.ahv, align 1, !tbaa !35 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.ahs
  %wide.load685 = load <16 x i8>, ptr %i.ahw, align 1, !tbaa !35 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.ahu
  %wide.load686 = load <16 x i8>, ptr %i.ahx, align 1, !tbaa !35 ; 2 uses
  %i.ahy = zext <16 x i8> %wide.load685 to <16 x i32> ; 2 uses
  %i.ahz = zext <16 x i8> %wide.load686 to <16 x i32> ; 3 uses
  %i.aia = sub nsw <16 x i32> %i.ahy, %i.ahz
  %i.aib = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aia, i1 true) ; 2 uses
  %i.aic = zext <16 x i8> %wide.load684 to <16 x i32> ; 2 uses
  %i.aid = sub nsw <16 x i32> %i.aic, %i.ahz
  %i.aie = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aid, i1 true) ; 2 uses
  %i.aif = add nuw nsw <16 x i32> %i.ahy, %i.aic
  %i.aig = shl nuw nsw <16 x i32> %i.ahz, splat (i32 1)
  %i.aih = sub nsw <16 x i32> %i.aif, %i.aig
  %i.aii = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aih, i1 true)
  %i.aij = icmp samesign ult <16 x i32> %i.aie, %i.aib
  %i.aik = select <16 x i1> %i.aij, <16 x i8> %wide.load685, <16 x i8> %wide.load684
  %i.ail = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.aie, <16 x i32> %i.aib)
  %i.aim = icmp samesign ult <16 x i32> %i.aii, %i.ail
  %i.ain = select <16 x i1> %i.aim, <16 x i8> %wide.load686, <16 x i8> %i.aik
  %i.aio = add <16 x i8> %i.ain, %wide.load683
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ahs
  store <16 x i8> %i.aio, ptr %i.aip, align 1, !tbaa !35
  %index.next687 = add nuw i64 %index682, 16      ; 2 uses
  %i.aiq = icmp eq i64 %index.next687, %n.vec680
  br i1 %i.aiq, label %middle.block688, label %vector.body681, !llvm.loop !946

middle.block688:                                  ; preds = %vector.body681
  %cmp.n689 = icmp eq i64 %i.ahl, %n.vec680
  br i1 %cmp.n689, label %.loopexit, label %vec.epilog.iter.check691

vec.epilog.iter.check691:                         ; preds = %middle.block688
  %min.epilog.iters.check693 = icmp eq i64 %i.ahq, 0
  br i1 %min.epilog.iters.check693, label %.lr.ph820.i.preheader, label %vec.epilog.ph694, !prof !83

vec.epilog.ph694:                                 ; preds = %vector.main.loop.iter.check677, %vec.epilog.iter.check691
  %vec.epilog.resume.val695 = phi i64 [ %n.vec680, %vec.epilog.iter.check691 ], [ 0, %vector.main.loop.iter.check677 ]
  %n.vec696 = and i64 %i.ahl, -4                  ; 3 uses
  %i.air = add i64 %.20.i, %n.vec696
  br label %vec.epilog.vector.body697

vec.epilog.vector.body697:                        ; preds = %vec.epilog.vector.body697, %vec.epilog.ph694
  %index698 = phi i64 [ %vec.epilog.resume.val695, %vec.epilog.ph694 ], [ %index.next703, %vec.epilog.vector.body697 ] ; 2 uses
  %i.ais = add i64 %.20.i, %index698              ; 4 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ais
  %wide.load699 = load <4 x i8>, ptr %i.ait, align 1, !tbaa !35
  %i.aiu = sub i64 %i.ais, %i.d                   ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.aiu
  %wide.load700 = load <4 x i8>, ptr %i.aiv, align 1, !tbaa !35 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.ais
  %wide.load701 = load <4 x i8>, ptr %i.aiw, align 1, !tbaa !35 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.02789, i64 %i.aiu
  %wide.load702 = load <4 x i8>, ptr %i.aix, align 1, !tbaa !35 ; 2 uses
  %i.aiy = zext <4 x i8> %wide.load701 to <4 x i32> ; 2 uses
  %i.aiz = zext <4 x i8> %wide.load702 to <4 x i32> ; 3 uses
  %i.aja = sub nsw <4 x i32> %i.aiy, %i.aiz
  %i.ajb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aja, i1 true) ; 2 uses
  %i.ajc = zext <4 x i8> %wide.load700 to <4 x i32> ; 2 uses
  %i.ajd = sub nsw <4 x i32> %i.ajc, %i.aiz
  %i.aje = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ajd, i1 true) ; 2 uses
  %i.ajf = add nuw nsw <4 x i32> %i.aiy, %i.ajc
  %i.ajg = shl nuw nsw <4 x i32> %i.aiz, splat (i32 1)
  %i.ajh = sub nsw <4 x i32> %i.ajf, %i.ajg
  %i.aji = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ajh, i1 true)
  %i.ajj = icmp samesign ult <4 x i32> %i.aje, %i.ajb
  %i.ajk = select <4 x i1> %i.ajj, <4 x i8> %wide.load701, <4 x i8> %wide.load700
  %i.ajl = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aje, <4 x i32> %i.ajb)
  %i.ajm = icmp samesign ult <4 x i32> %i.aji, %i.ajl
  %i.ajn = select <4 x i1> %i.ajm, <4 x i8> %wide.load702, <4 x i8> %i.ajk
  %i.ajo = add <4 x i8> %i.ajn, %wide.load699
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ais
  store <4 x i8> %i.ajo, ptr %i.ajp, align 1, !tbaa !35
  %index.next703 = add nuw i64 %index698, 4       ; 2 uses
  %i.ajq = icmp eq i64 %index.next703, %n.vec696
  br i1 %i.ajq, label %vec.epilog.middle.block704, label %vec.epilog.vector.body697, !llvm.loop !947

vec.epilog.middle.block704:                       ; preds = %vec.epilog.vector.body697
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag:bb.a
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !1077

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !35
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !216
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !1077

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !35
  store i8 %i.au, ptr %1, align 1, !tbaa !35
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !217   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #34
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #35
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !1077

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !35
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !1077

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !35
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !1077

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !35
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !218
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #33
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !217
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !216
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8, !tbaa !218
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i9 @llvm.bitreverse.i9(i9) #25

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #25

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn }
attributes #35 = { builtin allocsize(0) }

!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{!4, !34}
!5 = distinct !{!5, !34}
!6 = distinct !{!6, !34}
!7 = distinct !{!7, !34}
!8 = distinct !{!8, !34}
!9 = distinct !{!9, !34}
!10 = distinct !{!10, !34}
!11 = distinct !{!11, !34}
!12 = distinct !{!12, !34}
!13 = distinct !{!13, !34}
!14 = distinct !{!14, !34}
!15 = distinct !{null}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"long", !20, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"any pointer", !20, i64 0}
!27 = !{!"p1 omnipotent char", !26, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!21, !21, i64 0}
!30 = !{!"p1 _ZTS7BPMNode", !26, i64 0}
!31 = !{!"_ZTS7BPMNode", !21, i64 0, !21, i64 4, !30, i64 8, !21, i64 16}
!32 = !{!31, !21, i64 0}
!33 = !{!31, !21, i64 4}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!20, !20, i64 0}
!36 = !{!"any p2 pointer", !26, i64 0}
!37 = !{!"p2 _ZTS7BPMNode", !36, i64 0}
!38 = !{!"_ZTS8BPMLists", !21, i64 0, !30, i64 8, !21, i64 16, !21, i64 20, !37, i64 24, !21, i64 32, !37, i64 40, !37, i64 48}
!39 = !{!38, !21, i64 32}
!40 = !{!38, !21, i64 0}
!41 = !{!38, !21, i64 20}
!42 = !{!38, !21, i64 16}
!43 = !{!38, !30, i64 8}
!44 = !{!38, !37, i64 24}
!45 = !{!38, !37, i64 40}
!46 = !{!38, !37, i64 48}
!47 = !{!30, !30, i64 0}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!31, !21, i64 16}
!51 = !{!31, !30, i64 8}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"_ZTS8ucvector", !27, i64 0, !24, i64 8, !24, i64 16}
!54 = !{!53, !27, i64 0}
!55 = !{!53, !24, i64 8}
!56 = !{!53, !24, i64 16}
!57 = !{!"_ZTS25LodePNGDecompressSettings", !21, i64 0, !21, i64 4, !24, i64 8, !26, i64 16, !26, i64 24, !26, i64 32}
!58 = !{!57, !24, i64 8}
!59 = !{!"p1 int", !26, i64 0}
!60 = !{!"p1 short", !26, i64 0}
!61 = !{!"_ZTS11HuffmanTree", !59, i64 0, !59, i64 8, !21, i64 16, !21, i64 20, !27, i64 24, !60, i64 32}
!62 = !{!61, !27, i64 24}
!63 = !{!61, !60, i64 32}
!64 = !{!61, !59, i64 8}
!65 = !{!61, !21, i64 20}
!66 = !{!61, !21, i64 16}
!67 = !{!"short", !20, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!61, !59, i64 0}
!70 = !{!"p1 _ZTS8ucvector", !26, i64 0}
!71 = !{!"_ZTS16LodePNGBitWriter", !70, i64 0, !20, i64 8}
!72 = !{!71, !70, i64 0}
!73 = !{!71, !20, i64 8}
!74 = !{!"_ZTS23LodePNGCompressSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !26, i64 24, !26, i64 32, !26, i64 40}
!75 = !{!74, !21, i64 0}
!76 = !{!"_ZTS4Hash", !59, i64 0, !60, i64 8, !59, i64 16, !59, i64 24, !60, i64 32, !60, i64 40}
!77 = !{!76, !59, i64 0}
!78 = !{!76, !59, i64 16}
!79 = !{!76, !60, i64 8}
!80 = !{!76, !60, i64 40}
!81 = !{!76, !59, i64 24}
!82 = !{!76, !60, i64 32}
!83 = !{!"branch_weights", i32 4, i32 12}
!84 = !{!74, !21, i64 16}
!85 = !{!74, !21, i64 20}
!86 = !{!"_ZTS8uivector", !59, i64 0, !24, i64 8, !24, i64 16}
!87 = !{!86, !59, i64 0}
!88 = !{!86, !24, i64 8}
!89 = !{!86, !24, i64 16}
!90 = !{!"branch_weights", i32 4, i32 28}
!91 = !{!"_ZTS16LodePNGColorType", !20, i64 0}
!92 = !{!"_ZTS16LodePNGColorMode", !91, i64 0, !21, i64 4, !27, i64 8, !24, i64 16, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36}
!93 = !{!92, !91, i64 0}
!94 = !{!92, !21, i64 4}
!95 = !{!92, !27, i64 8}
!96 = !{!92, !24, i64 16}
!97 = !{!92, !21, i64 24}
!98 = !{!"p2 omnipotent char", !36, i64 0}
!99 = !{!"_ZTS11LodePNGTime", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!100 = !{!"_ZTS11LodePNGInfo", !21, i64 0, !21, i64 4, !21, i64 8, !92, i64 16, !21, i64 56, !21, i64 60, !21, i64 64, !21, i64 68, !24, i64 72, !98, i64 80, !98, i64 88, !24, i64 96, !98, i64 104, !98, i64 112, !98, i64 120, !98, i64 128, !21, i64 136, !27, i64 144, !21, i64 152, !21, i64 156, !99, i64 160, !21, i64 184, !21, i64 188, !21, i64 192, !21, i64 196, !21, i64 200, !21, i64 204, !21, i64 208, !21, i64 212, !21, i64 216, !21, i64 220, !21, i64 224, !21, i64 228, !21, i64 232, !21, i64 236, !21, i64 240, !21, i64 244, !21, i64 248, !21, i64 252, !27, i64 256, !27, i64 264, !21, i64 272, !21, i64 276, !21, i64 280, !21, i64 284, !21, i64 288, !21, i64 292, !21, i64 296, !21, i64 300, !21, i64 304, !21, i64 308, !21, i64 312, !21, i64 316, !21, i64 320, !21, i64 324, !21, i64 328, !21, i64 332, !21, i64 336, !21, i64 340, !21, i64 344, !21, i64 348, !21, i64 352, !21, i64 356, !21, i64 360, !21, i64 364, !21, i64 368, !20, i64 376, !20, i64 400}
!101 = !{!100, !98, i64 80}
!102 = !{!100, !24, i64 72}
!103 = !{!100, !98, i64 88}
!104 = !{!100, !24, i64 96}
!105 = !{!100, !98, i64 104}
!106 = !{!100, !98, i64 112}
!107 = !{!100, !98, i64 120}
!108 = !{!100, !98, i64 128}
!109 = !{!100, !21, i64 252}
!110 = !{!100, !27, i64 256}
!111 = !{!100, !27, i64 264}
!112 = !{!100, !21, i64 272}
!113 = !{!100, !21, i64 136}
!114 = !{!100, !27, i64 144}
!115 = !{!100, !21, i64 152}
!116 = !{!100, !21, i64 8}
!117 = !{!100, !21, i64 0}
!118 = !{!100, !21, i64 4}
!119 = !{!100, !21, i64 184}
!120 = !{!100, !21, i64 200}
!121 = !{!100, !21, i64 208}
!122 = !{!100, !21, i64 244}
!123 = !{!92, !21, i64 28}
!124 = !{!92, !21, i64 32}
!125 = !{!92, !21, i64 36}
!126 = !{!"_ZTS9ColorTree", !20, i64 0, !21, i64 128}
!127 = !{!126, !21, i64 128}
!128 = !{!"p1 _ZTS9ColorTree", !26, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"_ZTS17LodePNGColorStats", !21, i64 0, !21, i64 4, !67, i64 8, !67, i64 10, !67, i64 12, !21, i64 16, !21, i64 20, !20, i64 24, !21, i64 1048, !24, i64 1056, !21, i64 1064, !21, i64 1068}
!131 = !{!130, !21, i64 16}
!132 = !{!130, !21, i64 20}
!133 = !{!130, !21, i64 1048}
!134 = !{!130, !24, i64 1056}
!135 = !{!130, !21, i64 1064}
!136 = !{!130, !21, i64 1068}
!137 = !{!130, !21, i64 0}
!138 = !{!130, !67, i64 8}
!139 = !{!130, !67, i64 10}
!140 = !{!130, !67, i64 12}
!141 = !{!130, !21, i64 4}
!142 = !{!"_ZTS22LodePNGDecoderSettings", !57, i64 0, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !24, i64 64, !24, i64 72}
!143 = !{!"_ZTS21LodePNGFilterStrategy", !20, i64 0}
!144 = !{!"_ZTS22LodePNGEncoderSettings", !74, i64 0, !21, i64 48, !21, i64 52, !143, i64 56, !27, i64 64, !21, i64 72, !21, i64 76, !21, i64 80}
!145 = !{!"_ZTS12LodePNGState", !142, i64 0, !144, i64 80, !92, i64 168, !100, i64 208, !21, i64 632}
!146 = !{!145, !21, i64 632}
!147 = !{!100, !21, i64 20}
!148 = !{!100, !91, i64 16}
!149 = !{!145, !21, i64 40}
!150 = !{!100, !21, i64 204}
!151 = !{!100, !21, i64 248}
!152 = !{!100, !21, i64 276}
!153 = !{!100, !21, i64 280}
!154 = !{!100, !21, i64 284}
!155 = !{!100, !21, i64 288}
!156 = !{!100, !21, i64 292}
!157 = !{!100, !24, i64 32}
!158 = !{!100, !21, i64 56}
end_hunk_1
