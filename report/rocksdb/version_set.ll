Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo26UpdateFilesByCompactionPriERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE:bb.a

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.sroa.0166.0, i64 8
  %i.bx = shl i64 %i.bv, 1
  %scevgep968 = getelementptr i8, ptr %.sroa.0166.0, i64 %i.bx
  %bound0 = icmp ult ptr %scevgep, %i.br
  %bound1 = icmp ult ptr %i.bs, %scevgep968
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check970 = icmp ult i64 %i.bw, 16
  br i1 %min.iters.check970, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bw, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %index
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %index
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 192
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %wide.load = load <4 x ptr>, ptr %i.cf, align 8, !tbaa !347, !alias.scope !2096
  %wide.load971 = load <4 x ptr>, ptr %i.cg, align 8, !tbaa !347, !alias.scope !2096
  %wide.load972 = load <4 x ptr>, ptr %i.ch, align 8, !tbaa !347, !alias.scope !2096
  %wide.load973 = load <4 x ptr>, ptr %i.ci, align 8, !tbaa !347, !alias.scope !2096
  %i.cj = inttoptr <4 x i64> %vec.ind to <4 x ptr>
  %interleaved.vec = shufflevector <4 x ptr> %i.cj, <4 x ptr> %wide.load, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec, ptr %i.by, align 8, !tbaa !157
  %i.ck = inttoptr <4 x i64> %step.add to <4 x ptr>
  %interleaved.vec974 = shufflevector <4 x ptr> %i.ck, <4 x ptr> %wide.load971, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec974, ptr %i.ca, align 8, !tbaa !157
  %i.cl = inttoptr <4 x i64> %step.add.2 to <4 x ptr>
  %interleaved.vec975 = shufflevector <4 x ptr> %i.cl, <4 x ptr> %wide.load972, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec975, ptr %i.cc, align 8, !tbaa !157
  %i.cm = inttoptr <4 x i64> %step.add.3 to <4 x ptr>
  %interleaved.vec976 = shufflevector <4 x ptr> %i.cm, <4 x ptr> %wide.load973, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec976, ptr %i.ce, align 8, !tbaa !157
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !2064

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.co = and i64 %i.bv, 96
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !645

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec977 = and i64 %i.bw, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index978 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next982, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind979 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next983, %vec.epilog.vector.body ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %index978
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index978
  %wide.load980 = load <4 x ptr>, ptr %i.cq, align 8, !tbaa !347, !alias.scope !2096
  %i.cr = inttoptr <4 x i64> %vec.ind979 to <4 x ptr>
  %interleaved.vec981 = shufflevector <4 x ptr> %i.cr, <4 x ptr> %wide.load980, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec981, ptr %i.cp, align 8, !tbaa !157
  %index.next982 = add nuw i64 %index978, 4       ; 2 uses
  %vec.ind.next983 = add nuw <4 x i64> %vec.ind979, splat (i64 4)
  %i.cs = icmp eq i64 %index.next982, %n.vec977
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2065

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n984 = icmp eq i64 %i.bw, %n.vec977
  br i1 %cmp.n984, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.039406.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec977, %vec.epilog.middle.block ] ; 4 uses
  %i.ct = sub nsw i64 %i.bw, %.039406.ph
  %xtraiter1237 = and i64 %i.ct, 7                ; 2 uses
  %lcmp.mod1238.not = icmp eq i64 %xtraiter1237, 0
  br i1 %lcmp.mod1238.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.039406.prol = phi i64 [ %i.cy, %.lr.ph.prol ], [ %.039406.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter1239 = phi i64 [ %prol.iter1239.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.039406.prol ; 2 uses
  store i64 %.039406.prol, ptr %i.cu, align 8, !tbaa !2097
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.039406.prol
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !347
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !1053
  %i.cy = add nuw i64 %.039406.prol, 1            ; 2 uses
  %prol.iter1239.next = add i64 %prol.iter1239, 1 ; 2 uses
  %prol.iter1239.cmp.not = icmp eq i64 %prol.iter1239.next, %xtraiter1237
  br i1 %prol.iter1239.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2066

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.039406.unr = phi i64 [ %.039406.ph, %.lr.ph.preheader ], [ %i.cy, %.lr.ph.prol ]
  %i.cz = sub nsw i64 %.039406.ph, %i.bw
  %i.da = icmp ugt i64 %i.cz, -8
  br i1 %i.da, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit
  %i.db = ptrtoint ptr %.0.i.i.i.i.i.fr to i64
  %i.dc = ptrtoint ptr %.sroa.0166.0 to i64       ; 8 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 7 uses
  %i.de = ashr i64 %i.dd, 4                       ; 18 uses
  %i.df = load i8, ptr %i.i, align 1, !tbaa !2098
  switch i8 %i.df, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit [
    i8 0, label %bb.d
    i8 1, label %bb.s
    i8 2, label %bb.ah
    i8 3, label %bb.aw
    i8 4, label %bb.ci
  ]

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.039406 = phi i64 [ %i.et, %.lr.ph ], [ %.039406.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.039406 ; 2 uses
  store i64 %.039406, ptr %i.dg, align 8, !tbaa !2097
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.039406
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !347
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !1053
  %i.dk = add nuw i64 %.039406, 1                 ; 3 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.dk ; 2 uses
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !2097
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !347
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !1053
  %i.dp = add nuw i64 %.039406, 2                 ; 3 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.dp ; 2 uses
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !2097
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.dp
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !347
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !1053
  %i.du = add nuw i64 %.039406, 3                 ; 3 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.du ; 2 uses
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !2097
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !347
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !1053
  %i.dz = add nuw i64 %.039406, 4                 ; 3 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.dz ; 2 uses
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !2097
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.dz
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !347
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1053
  %i.ee = add nuw i64 %.039406, 5                 ; 3 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.ee ; 2 uses
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !2097
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !347
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !1053
  %i.ej = add nuw i64 %.039406, 6                 ; 3 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.ej ; 2 uses
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !2097
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ej
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !347
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.em, ptr %i.en, align 8, !tbaa !1053
  %i.eo = add nuw i64 %.039406, 7                 ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.eo ; 2 uses
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !2097
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !347
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.er, ptr %i.es, align 8, !tbaa !1053
  %i.et = add nuw i64 %.039406, 8                 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.et, %i.bw
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !2067

bb.d:                                             ; preds = %._crit_edge
  %spec.select = call i64 @llvm.umin.i64(i64 %i.de, i64 50) ; 7 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %spec.select ; 5 uses
  %i.ev = icmp ult i64 %i.de, 2
  br i1 %i.ev, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ew = add nsw i64 %spec.select, -2            ; 2 uses
  %i.ex = lshr i64 %i.ew, 1                       ; 3 uses
  %i.ey = add nsw i64 %spec.select, -1
  %i.ez = lshr i64 %i.ey, 1                       ; 2 uses
  %i.fa = and i64 %spec.select, 1
  %i.fb = icmp eq i64 %i.fa, 0
  %24 = or disjoint i64 %i.ew, 1                  ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %24
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.ex
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i, %bb.e
  %.010.i.i.i.i = phi i64 [ %i.ex, %bb.e ], [ %i.gk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i ] ; 8 uses
  %i.fe = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.010.i.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.fe, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !347 ; 2 uses
  %i.ff = icmp slt i64 %.010.i.i.i.i, %i.ez
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.045.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i, %bb.f ] ; 2 uses
  %i.fg = shl i64 %.045.i.i.i.i.i, 1              ; 2 uses
  %i.fh = add i64 %i.fg, 2                        ; 2 uses
  %i.fi = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.fh
  %i.fj = or disjoint i64 %i.fg, 1                ; 2 uses
  %i.fk = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1053
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !1042
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1053
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !1042
  %i.ft = icmp ugt i64 %i.fo, %i.fs
  %spec.select.i.i.i.i.i = select i1 %i.ft, i64 %i.fj, i64 %i.fh ; 4 uses
  %i.fu = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %spec.select.i.i.i.i.i
  %i.fv = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.045.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i64 16, i1 false), !tbaa.struct !1051
  %i.fw = icmp slt i64 %spec.select.i.i.i.i.i, %i.ez
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !2068

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.010.i.i.i.i, %bb.f ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.fx = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.ex
  %or.cond.i.i.i.i = select i1 %i.fb, i1 %i.fx, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi i64 [ %24, %bb.g ], [ %.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.fy = icmp sgt i64 %.1.i.i.i.i.i, %.010.i.i.i.i
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.h
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i, i64 128
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.06.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i, %bb.i ], [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.097.in.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i, 2 ; 4 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.097.i.i.i.i.i.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1053
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !1042
  %i.gf = load i64, ptr %i.fz, align 8, !tbaa !1042
  %i.gg = icmp ugt i64 %i.ge, %i.gf
  br i1 %i.gg, label %bb.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.06.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false), !tbaa.struct !1051
  %i.gi = icmp sgt i64 %.097.i.i.i.i.i.i, %.010.i.i.i.i
  br i1 %i.gi, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i, !llvm.loop !2069

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.h ], [ %.097.i.i.i.i.i.i, %bb.i ], [ %.06.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i.i, ptr %i.gj, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !347
  %.not.i.i.i.i67 = icmp eq i64 %.010.i.i.i.i, 0
  %i.gk = add nsw i64 %.010.i.i.i.i, -1
  br i1 %.not.i.i.i.i67, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i, label %bb.f, !llvm.loop !2070

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i, %bb.d
  %.not30.i.i.i = icmp ult ptr %i.eu, %.0.i.i.i.i.i.fr
  br i1 %.not30.i.i.i, label %.lr.ph.i.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i
  %i.gl = add nsw i64 %spec.select, -1
  %i.gm = lshr i64 %i.gl, 1
  %i.gn = icmp ugt i64 %i.de, 2
  %i.go = and i64 %spec.select, 1
  %i.gp = icmp eq i64 %i.go, 0                    ; 2 uses
  %i.gq = add nsw i64 %spec.select, -2            ; 3 uses
  %i.gr = ashr exact i64 %i.gq, 1                 ; 2 uses
  %25 = or disjoint i64 %i.gq, 1                  ; 3 uses
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %25 ; 2 uses
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.gr ; 2 uses
  br i1 %i.gn, label %.lr.ph.i.split.us.i.preheader.i, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.preheader.i:                  ; preds = %.lr.ph.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0166.0, i64 8
  br label %.lr.ph.i.split.us.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %bb.l, %.lr.ph.i.split.us.i.preheader.i
  %.sroa.0.031.i.us.i.i = phi ptr [ %i.ie, %bb.l ], [ %i.eu, %.lr.ph.i.split.us.i.preheader.i ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.us.i.i, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !1053 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 128 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !1042
  %i.gz = load ptr, ptr %i.gu, align 8, !tbaa !1053
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 128
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !1042
  %i.hc = icmp ugt i64 %i.gy, %i.hb
  br i1 %i.hc, label %.lr.ph.i.i25.i.preheader.us.i.i, label %bb.l

.lr.ph.i.i25.i.preheader.us.i.i:                  ; preds = %.lr.ph.i.split.us.i.i
  %.sroa.03.0.copyload.i13.i.us.i.i = load i64, ptr %.sroa.0.031.i.us.i.i, align 8, !tbaa !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.031.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i25.i.us.i.i

.lr.ph.i.i25.i.us.i.i:                            ; preds = %.lr.ph.i.i25.i.us.i.i, %.lr.ph.i.i25.i.preheader.us.i.i
  %.045.i.i26.i.us.i.i = phi i64 [ %spec.select.i.i27.i.us.i.i, %.lr.ph.i.i25.i.us.i.i ], [ 0, %.lr.ph.i.i25.i.preheader.us.i.i ] ; 2 uses
  %i.hd = shl i64 %.045.i.i26.i.us.i.i, 1         ; 2 uses
  %i.he = add i64 %i.hd, 2                        ; 2 uses
  %i.hf = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.he
  %i.hg = or disjoint i64 %i.hd, 1                ; 2 uses
  %i.hh = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !1053
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 128
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !1042
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1053
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 128
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !1042
  %i.hq = icmp ugt i64 %i.hl, %i.hp
  %spec.select.i.i27.i.us.i.i = select i1 %i.hq, i64 %i.hg, i64 %i.he ; 6 uses
  %i.hr = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %spec.select.i.i27.i.us.i.i
  %i.hs = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.045.i.i26.i.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 16, i1 false), !tbaa.struct !1051
  %i.ht = icmp slt i64 %spec.select.i.i27.i.us.i.i, %i.gm
  br i1 %i.ht, label %.lr.ph.i.i25.i.us.i.i, label %._crit_edge.i.i17.i.us.i.i, !llvm.loop !2068

._crit_edge.i.i17.i.us.i.i:                       ; preds = %.lr.ph.i.i25.i.us.i.i
  %i.hu = icmp eq i64 %spec.select.i.i27.i.us.i.i, %i.gr
  %or.cond.i.us.i.i = select i1 %i.gp, i1 %i.hu, i1 false
  br i1 %or.cond.i.us.i.i, label %.thread.i.i.us.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i17.i.us.i.i
  %.not.i19.i.us.i.i = icmp eq i64 %spec.select.i.i27.i.us.i.i, 0
  br i1 %.not.i19.i.us.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i, label %.lr.ph.i.i.i20.i.us.i.i.preheader

.thread.i.i.us.i.i:                               ; preds = %._crit_edge.i.i17.i.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i20.i.us.i.i.preheader

.lr.ph.i.i.i20.i.us.i.i.preheader:                ; preds = %.thread.i.i.us.i.i, %bb.j
  %.06.i.i.i21.i.us.i.i.ph = phi i64 [ %spec.select.i.i27.i.us.i.i, %bb.j ], [ %25, %.thread.i.i.us.i.i ]
  br label %.lr.ph.i.i.i20.i.us.i.i

.lr.ph.i.i.i20.i.us.i.i:                          ; preds = %.lr.ph.i.i.i20.i.us.i.i.preheader, %bb.k
  %.06.i.i.i21.i.us.i.i = phi i64 [ %.097.i.i1011.i.i.us.i.i, %bb.k ], [ %.06.i.i.i21.i.us.i.i.ph, %.lr.ph.i.i.i20.i.us.i.i.preheader ] ; 3 uses
  %.097.in.i.i.i22.i.us.i.i = add nsw i64 %.06.i.i.i21.i.us.i.i, -1
  %.097.i.i1011.i.i.us.i.i = lshr i64 %.097.in.i.i.i22.i.us.i.i, 1 ; 3 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.097.i.i1011.i.i.us.i.i ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !1053
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 128
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !1042
  %i.ia = load i64, ptr %i.gx, align 8, !tbaa !1042
  %i.ib = icmp ugt i64 %i.hz, %i.ia
  br i1 %i.ib, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i20.i.us.i.i
  %i.ic = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.06.i.i.i21.i.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i.us.i.i = icmp eq i64 %.097.i.i1011.i.i.us.i.i, 0
  br i1 %.not12.i.i.us.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i, label %.lr.ph.i.i.i20.i.us.i.i, !llvm.loop !2069

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i: ; preds = %bb.k, %.lr.ph.i.i.i20.i.us.i.i, %bb.j
  %.0.lcssa.i.i.i24.i.us.i.i = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %.06.i.i.i21.i.us.i.i, %.lr.ph.i.i.i20.i.us.i.i ]
  %i.id = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i24.i.us.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i13.i.us.i.i, ptr %i.id, align 8, !tbaa !533
  %.sroa.14.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %i.gw, ptr %.sroa.14.0..sroa_idx6.i, align 8, !tbaa !347
  br label %bb.l

bb.l:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i, %.lr.ph.i.split.us.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.us.i.i, i64 16 ; 2 uses
  %.not.i.us.i.i = icmp ult ptr %i.ie, %.0.i.i.i.i.i.fr
  br i1 %.not.i.us.i.i, label %.lr.ph.i.split.us.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, !llvm.loop !2071

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.if = icmp eq i64 %i.gq, 0
  %or.cond38.i.i.i = select i1 %i.gp, i1 %i.if, i1 false
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0166.0, i64 8 ; 3 uses
  %.pre15.i = load ptr, ptr %i.ig, align 8, !tbaa !1053 ; 2 uses
  br i1 %or.cond38.i.i.i, label %.lr.ph.i.split.split.us.i.i, label %.lr.ph.i.split.split.i.i

.lr.ph.i.split.split.us.i.i:                      ; preds = %.lr.ph.i.split.i.i, %bb.n
  %i.ih = phi ptr [ %i.iy, %bb.n ], [ %.pre15.i, %.lr.ph.i.split.i.i ] ; 2 uses
  %.sroa.0.031.i.us29.i.i = phi ptr [ %i.iz, %bb.n ], [ %i.eu, %.lr.ph.i.split.i.i ] ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.us29.i.i, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !1053 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 128 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !1042
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 128
  %i.in = load i64, ptr %i.im, align 8, !tbaa !1042
  %i.io = icmp ugt i64 %i.il, %i.in
  br i1 %i.io, label %._crit_edge.i.i17.thread.i.us.i.i, label %bb.n

._crit_edge.i.i17.thread.i.us.i.i:                ; preds = %.lr.ph.i.split.split.us.i.i
  %.sroa.03.0.copyload.i13.i.us30.i.i = load i64, ptr %.sroa.0.031.i.us29.i.i, align 8, !tbaa !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.031.i.us29.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i20.i.us34.i.i

.lr.ph.i.i.i20.i.us34.i.i:                        ; preds = %bb.m, %._crit_edge.i.i17.thread.i.us.i.i
  %.06.i.i.i21.i.us35.i.i = phi i64 [ %.097.i.i1011.i.i.us37.i.i, %bb.m ], [ %25, %._crit_edge.i.i17.thread.i.us.i.i ] ; 3 uses
  %.097.in.i.i.i22.i.us36.i.i = add nsw i64 %.06.i.i.i21.i.us35.i.i, -1
  %.097.i.i1011.i.i.us37.i.i = lshr i64 %.097.in.i.i.i22.i.us36.i.i, 1 ; 3 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.097.i.i1011.i.i.us37.i.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !1053
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 128
  %i.it = load i64, ptr %i.is, align 8, !tbaa !1042
  %i.iu = load i64, ptr %i.ik, align 8, !tbaa !1042
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.m, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i20.i.us34.i.i
  %i.iw = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.06.i.i.i21.i.us35.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iw, ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i.us38.i.i = icmp eq i64 %.097.i.i1011.i.i.us37.i.i, 0
  br i1 %.not12.i.i.us38.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i, label %.lr.ph.i.i.i20.i.us34.i.i, !llvm.loop !2069

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i: ; preds = %bb.m, %.lr.ph.i.i.i20.i.us34.i.i
  %.0.lcssa.i.i.i24.i.ph.us40.i.i = phi i64 [ 0, %bb.m ], [ %.06.i.i.i21.i.us35.i.i, %.lr.ph.i.i.i20.i.us34.i.i ]
  %i.ix = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i24.i.ph.us40.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i13.i.us30.i.i, ptr %i.ix, align 8, !tbaa !533
  %.sroa.14.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.ij, ptr %.sroa.14.0..sroa_idx4.i, align 8, !tbaa !347
  %.pre14.i = load ptr, ptr %i.ig, align 8, !tbaa !1053
  br label %bb.n

bb.n:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i, %.lr.ph.i.split.split.us.i.i
  %i.iy = phi ptr [ %.pre14.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i ], [ %i.ih, %.lr.ph.i.split.split.us.i.i ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.us29.i.i, i64 16 ; 2 uses
  %.not.i.us43.i.i = icmp ult ptr %i.iz, %.0.i.i.i.i.i.fr
  br i1 %.not.i.us43.i.i, label %.lr.ph.i.split.split.us.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, !llvm.loop !2071

.lr.ph.i.split.split.i.i:                         ; preds = %.lr.ph.i.split.i.i, %bb.o
  %i.ja = phi ptr [ %i.ji, %bb.o ], [ %.pre15.i, %.lr.ph.i.split.i.i ] ; 2 uses
  %.sroa.0.031.i.i.i = phi ptr [ %i.jj, %bb.o ], [ %i.eu, %.lr.ph.i.split.i.i ] ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i.i, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !1053 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 128
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !1042
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !1042
  %i.jh = icmp ugt i64 %i.je, %i.jg
  br i1 %i.jh, label %._crit_edge.i.i17.thread.i.i.i, label %bb.o

._crit_edge.i.i17.thread.i.i.i:                   ; preds = %.lr.ph.i.split.split.i.i
  %.sroa.03.0.copyload.i13.i.i.i = load i64, ptr %.sroa.0.031.i.i.i, align 8, !tbaa !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.031.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
  store i64 %.sroa.03.0.copyload.i13.i.i.i, ptr %.sroa.0166.0, align 8, !tbaa !533
  store ptr %i.jc, ptr %i.ig, align 8, !tbaa !347
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i17.thread.i.i.i, %.lr.ph.i.split.split.i.i
  %i.ji = phi ptr [ %i.jc, %._crit_edge.i.i17.thread.i.i.i ], [ %i.ja, %.lr.ph.i.split.split.i.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.jj, %.0.i.i.i.i.i.fr
  br i1 %.not.i.i.i, label %.lr.ph.i.split.split.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, !llvm.loop !2071

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.l, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i
  %i.jk = icmp ugt i64 %i.de, 1
  br i1 %i.jk, label %.lr.ph.i9.i.i, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit

.lr.ph.i9.i.i:                                    ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.jl, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i ], [ %i.eu, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i ] ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %.sroa.0.02.i.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i.i = load i64, ptr %i.jl, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i11.i.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i.i, align 8, !tbaa !347 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.jm, %i.dc                    ; 3 uses
  %i.jo = ashr exact i64 %i.jn, 4                 ; 3 uses
  %i.jp = add nsw i64 %i.jo, -1
  %i.jq = lshr i64 %i.jp, 1
  %i.jr = icmp sgt i64 %i.jo, 2
  br i1 %i.jr, label %.lr.ph.i.i.i26.i.i, label %._crit_edge.i.i.i13.i.i

.lr.ph.i.i.i26.i.i:                               ; preds = %.lr.ph.i9.i.i, %.lr.ph.i.i.i26.i.i
  %.045.i.i.i27.i.i = phi i64 [ %spec.select.i.i.i28.i.i, %.lr.ph.i.i.i26.i.i ], [ 0, %.lr.ph.i9.i.i ] ; 2 uses
  %i.js = shl i64 %.045.i.i.i27.i.i, 1            ; 2 uses
  %i.jt = add i64 %i.js, 2                        ; 2 uses
  %i.ju = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.jt
  %i.jv = or disjoint i64 %i.js, 1                ; 2 uses
  %i.jw = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !1053
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 128
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1042
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !1053
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 128
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !1042
  %i.kf = icmp ugt i64 %i.ka, %i.ke
  %spec.select.i.i.i28.i.i = select i1 %i.kf, i64 %i.jv, i64 %i.jt ; 4 uses
  %i.kg = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %spec.select.i.i.i28.i.i
  %i.kh = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.045.i.i.i27.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %i.kg, i64 16, i1 false), !tbaa.struct !1051
  %i.ki = icmp slt i64 %spec.select.i.i.i28.i.i, %i.jq
  br i1 %i.ki, label %.lr.ph.i.i.i26.i.i, label %._crit_edge.i.i.i13.i.i, !llvm.loop !2068

._crit_edge.i.i.i13.i.i:                          ; preds = %.lr.ph.i.i.i26.i.i, %.lr.ph.i9.i.i
  %.0.lcssa.i.i.i14.i.i = phi i64 [ 0, %.lr.ph.i9.i.i ], [ %spec.select.i.i.i28.i.i, %.lr.ph.i.i.i26.i.i ] ; 5 uses
  %i.kj = and i64 %i.jn, 16
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i13.i.i
  %i.kl = add nsw i64 %i.jo, -2
  %i.km = ashr exact i64 %i.kl, 1
  %i.kn = icmp eq i64 %.0.lcssa.i.i.i14.i.i, %i.km
  br i1 %i.kn, label %.thread.i.i25.i.i, label %bb.q

.thread.i.i25.i.i:                                ; preds = %bb.p
  %i.ko = shl nuw nsw i64 %.0.lcssa.i.i.i14.i.i, 1
  %i.kp = or disjoint i64 %i.ko, 1                ; 2 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.kp
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i14.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, ptr noundef nonnull align 8 dereferenceable(16) %i.kq, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.preheader.i.i16.i.i

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i13.i.i
  %.not.i.i15.i.i = icmp eq i64 %.0.lcssa.i.i.i14.i.i, 0
  br i1 %.not.i.i15.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i, label %.lr.ph.i.i.preheader.i.i16.i.i

.lr.ph.i.i.preheader.i.i16.i.i:                   ; preds = %bb.q, %.thread.i.i25.i.i
  %.1.i15.i.i17.i.i = phi i64 [ %i.kp, %.thread.i.i25.i.i ], [ %.0.lcssa.i.i.i14.i.i, %bb.q ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i12.i.i, i64 128
  br label %.lr.ph.i.i.i.i18.i.i

.lr.ph.i.i.i.i18.i.i:                             ; preds = %bb.r, %.lr.ph.i.i.preheader.i.i16.i.i
  %.06.i.i.i.i19.i.i = phi i64 [ %.097.i.i1011.i.i21.i.i, %bb.r ], [ %.1.i15.i.i17.i.i, %.lr.ph.i.i.preheader.i.i16.i.i ] ; 3 uses
  %.097.in.i.i.i.i20.i.i = add nsw i64 %.06.i.i.i.i19.i.i, -1
  %.097.i.i1011.i.i21.i.i = lshr i64 %.097.in.i.i.i.i20.i.i, 1 ; 3 uses
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.097.i.i1011.i.i21.i.i ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !1053
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !1042
  %i.ky = load i64, ptr %i.ks, align 8, !tbaa !1042
  %i.kz = icmp ugt i64 %i.kx, %i.ky
  br i1 %i.kz, label %bb.r, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i18.i.i
  %i.la = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.06.i.i.i.i19.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i24.i.i = icmp eq i64 %.097.i.i1011.i.i21.i.i, 0
  br i1 %.not12.i.i24.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i, label %.lr.ph.i.i.i.i18.i.i, !llvm.loop !2069

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i18.i.i, %bb.q
  %.0.lcssa.i.i.i.i23.i.i = phi i64 [ 0, %bb.q ], [ 0, %bb.r ], [ %.06.i.i.i.i19.i.i, %.lr.ph.i.i.i.i18.i.i ]
  %i.lb = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i.i23.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i.i, ptr %i.lb, align 8, !tbaa !533
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !347
  %i.lc = icmp sgt i64 %i.jn, 16
  br i1 %i.lc, label %.lr.ph.i9.i.i, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit, !llvm.loop !2072

bb.s:                                             ; preds = %._crit_edge
  %i.ld = icmp eq ptr %.sroa.0166.0, %.0.i.i.i.i.i.fr
  br i1 %i.ld, label %._crit_edge409, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.le = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.lf = shl nuw nsw i64 %i.le, 1
  %i.lg = xor i64 %i.lf, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_T0_T1_"(ptr %.sroa.0166.0, ptr %.0.i.i.i.i.i.fr, i64 noundef %i.lg)
  %i.lh = icmp sgt i64 %i.dd, 256
  br i1 %i.lh, label %.lr.ph.i.i.i.i, label %.preheader.i28.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t
  %i.li = getelementptr i8, ptr %.sroa.0166.0, i64 8
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0166.0, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.z ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0166.0, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.z ] ; 3 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0166.0, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.lj = getelementptr i8, ptr %.pn18.i.i.i.i, i64 24
  %.val2.i.i.i.i.i = load ptr, ptr %i.lj, align 8, !tbaa !1053 ; 2 uses
  %.val3.i.i.i.i.i = load ptr, ptr %i.li, align 8, !tbaa !1053
  %i.lk = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 40 ; 2 uses
  %.val2.val.i.i.i.i.i = load i64, ptr %i.lk, align 8, !tbaa !1054 ; 2 uses
  %i.ll = getelementptr i8, ptr %.val3.i.i.i.i.i, i64 40
  %.val3.val.i.i.i.i.i = load i64, ptr %i.ll, align 8, !tbaa !1054
  %i.lm = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i.i.i.i.i
  br i1 %i.lm, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr.i.i.i, i64 16, i1 false), !tbaa.struct !1051
  %i.ln = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 16
  br i1 %i.ln, label %bb.w, label %bb.x, !prof !923

bb.w:                                             ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0166.0, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.lo = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
end_hunk_0
begin_hunk_1_@_ZN7rocksdb18VersionStorageInfo26UpdateFilesByCompactionPriERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE:bb.a
  %i.sy = getelementptr inbounds i8, ptr %i.sx, i64 -8
  %.0.copyload.i18.i.i65.i = load i64, ptr %i.sy, align 1
  %i.sz = icmp ugt i64 %.0.copyload.i.i.i64.i, %.0.copyload.i18.i.i65.i
  br i1 %i.sz, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.thread.i, label %.critedge2.loopexit.i

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.i: ; preds = %.noexc71.i
  %i.ta = icmp slt i32 %i.st, 0
  br i1 %i.ta, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.thread.i, label %.critedge2.loopexit.i

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.thread.i: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.i, %bb.bh
  %i.tb = load ptr, ptr %.sroa.0116.2175.i, align 8, !tbaa !347 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !1060
  %i.te = add i64 %i.td, %.044176.i               ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 80
  %i.tg = load ptr, ptr %.sroa.0111.0188.i, align 8, !tbaa !347 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 80
  %i.ti = load ptr, ptr %i.tf, align 8, !tbaa !156 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 88
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !519 ; 2 uses
  %i.tl = load ptr, ptr %i.th, align 8, !tbaa !156 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 88
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !519 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.to = add i64 %i.tk, -8
  store ptr %i.ti, ptr %12, align 8
  store i64 %i.to, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.tp = add i64 %i.tn, -8
  store ptr %i.tl, ptr %13, align 8
  store i64 %i.tp, ptr %i.ad, align 8
  br i1 %.not.i.i.i.i.i.i.i.i.i142, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i74.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.thread.i
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i74.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZTWN7rocksdb10perf_levelE.exit.i.i.i74.i:        ; preds = %bb.bi, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.thread.i
  %i.tq = load i8, ptr %i.o, align 1, !tbaa !146
  %i.tr = icmp ugt i8 %i.tq, 1
  br i1 %i.tr, label %bb.bj, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i75.i

bb.bj:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i74.i
  br i1 %.not.i3.i.i.i.i.i.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i81.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZTHN7rocksdb12perf_contextE()
          to label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i81.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZTWN7rocksdb12perf_contextE.exit.i.i.i81.i:      ; preds = %bb.bk, %bb.bj
  %i.ts = load i64, ptr %i.p, align 8, !tbaa !148
  %i.tt = add i64 %i.ts, 1
  store i64 %i.tt, ptr %i.p, align 8, !tbaa !148
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i75.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i75.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i81.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i74.i
  %i.tu = load ptr, ptr %i.qm, align 8, !tbaa !151
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !153
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = invoke noundef i32 %i.ty(ptr noundef nonnull align 8 dereferenceable(8) %i.tv, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc84.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !35 ; 2 uses

.noexc84.i:                                       ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.bl, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.i

bb.bl:                                            ; preds = %.noexc84.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tk
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -8
  %.0.copyload.i.i.i77.i = load i64, ptr %i.uc, align 1 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tn
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 -8
  %.0.copyload.i18.i.i78.i = load i64, ptr %i.ue, align 1 ; 2 uses
  %i.uf = icmp ugt i64 %.0.copyload.i.i.i77.i, %.0.copyload.i18.i.i78.i
  br i1 %i.uf, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ug = icmp ult i64 %.0.copyload.i.i.i77.i, %.0.copyload.i18.i.i78.i
  %spec.select.i.i79.i = zext i1 %i.ug to i32
  br label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.i

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.i: ; preds = %bb.bm, %.noexc84.i
  %.1.i.i76.i = phi i32 [ %i.tz, %.noexc84.i ], [ %spec.select.i.i79.i, %bb.bm ]
  %i.uh = icmp sgt i32 %.1.i.i76.i, 0
  br i1 %i.uh, label %.critedge2.loopexit.i, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.thread.i

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.thread.i: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.i, %bb.bl
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0116.2175.i, i64 8 ; 3 uses
  %i.uj = load ptr, ptr %i.ql, align 8, !tbaa !603
  %i.uk = icmp eq ptr %i.ui, %i.uj
  br i1 %i.uk, label %.critedge2.loopexit.i, label %.lr.ph177.i, !llvm.loop !2080

.critedge2.loopexit.i:                            ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.thread.i, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.i, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.i, %bb.bh
  %.sroa.0116.2.lcssa.ph.i = phi ptr [ %.sroa.0116.2175.i, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.i ], [ %.sroa.0116.2175.i, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.i ], [ %i.ui, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.thread.i ], [ %.sroa.0116.2175.i, %bb.bh ]
  %.145.ph.i = phi i64 [ %.044176.i, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit72.i ], [ %i.te, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.i ], [ %i.te, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit85.thread.i ], [ %.044176.i, %bb.bh ]
  %i.ul = shl i64 %.145.ph.i, 10
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.critedge.i, %.preheader.i
  %.sroa.0116.2.lcssa.i = phi ptr [ %.sroa.0116.1.lcssa.ph.i, %.critedge.i ], [ %.sroa.0116.2.lcssa.ph.i, %.critedge2.loopexit.i ], [ %.sroa.0116.0187.i, %.preheader.i ]
  %.145.i = phi i64 [ 0, %.critedge.i ], [ %i.ul, %.critedge2.loopexit.i ], [ 0, %.preheader.i ]
  br i1 %or.cond16.i.not189.i, label %_ZN7rocksdb14FileTtlBooster13GetBoostScoreEPNS_12FileMetaDataE.exit.i, label %bb.bn

bb.bn:                                            ; preds = %.critedge2.i
  %i.um = load ptr, ptr %.sroa.0111.0188.i, align 8, !tbaa !347
  %i.un = invoke noundef i64 @_ZN7rocksdb12FileMetaData24TryGetOldestAncesterTimeEv(ptr noundef nonnull align 8 dereferenceable(417) %i.um)
          to label %.noexc87.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc87.i:                                       ; preds = %bb.bn
  %.not.i86.i = icmp ult i64 %i.un, %i.pq
  br i1 %.not.i86.i, label %bb.bo, label %_ZN7rocksdb14FileTtlBooster13GetBoostScoreEPNS_12FileMetaDataE.exit.i

bb.bo:                                            ; preds = %.noexc87.i
  %i.uo = sub nuw i64 %i.pq, %i.un                ; 2 uses
  %i.up = icmp ugt i64 %i.uo, %.sink29.i.i
  br i1 %i.up, label %bb.bp, label %_ZN7rocksdb14FileTtlBooster13GetBoostScoreEPNS_12FileMetaDataE.exit.i

bb.bp:                                            ; preds = %bb.bo
  %i.uq = sub nuw i64 %i.uo, %.sink29.i.i
  %i.ur = udiv i64 %i.uq, %.sink.i.i
  %i.us = add i64 %i.ur, 1
  br label %_ZN7rocksdb14FileTtlBooster13GetBoostScoreEPNS_12FileMetaDataE.exit.i

_ZN7rocksdb14FileTtlBooster13GetBoostScoreEPNS_12FileMetaDataE.exit.i: ; preds = %bb.bp, %bb.bo, %.noexc87.i, %.critedge2.i
  %i.ut = phi i64 [ 1, %.critedge2.i ], [ 1, %bb.bo ], [ 1, %.noexc87.i ], [ %i.us, %bb.bp ]
  %i.uu = load ptr, ptr %.sroa.0111.0188.i, align 8, !tbaa !347 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 128
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !1042
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !508
  %i.uz = and i64 %i.uy, 4611686018427387903      ; 5 uses
  %i.va = load i64, ptr %i.u, align 8, !tbaa !1059 ; 2 uses
  %i.vb = urem i64 %i.uz, %i.va                   ; 3 uses
  %i.vc = load ptr, ptr %18, align 8, !tbaa !1058
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vb
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i88.i = icmp eq ptr %i.ve, null
  br i1 %.not.i.i.i.i88.i, label %.loopexit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN7rocksdb14FileTtlBooster13GetBoostScoreEPNS_12FileMetaDataE.exit.i
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !273 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !533
  %i.vi = icmp eq i64 %i.uz, %i.vh
  br i1 %i.vi, label %.loopexit158.i, label %.lr.ph.i.i.i.i.i129

bb.br:                                            ; preds = %bb.bs
  %i.vj = icmp eq i64 %i.uz, %i.vm
  br i1 %i.vj, label %.loopexit158.i, label %.lr.ph.i.i.i.i.i129, !llvm.loop !36

.lr.ph.i.i.i.i.i129:                              ; preds = %bb.bq, %bb.br
  %.020.i.i.i.i.i = phi ptr [ %i.vk, %bb.br ], [ %i.vf, %bb.bq ]
  %i.vk = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.vk, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i129
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !533 ; 2 uses
  %i.vn = urem i64 %i.vm, %i.va
  %.not19.i.i.i.i.i = icmp eq i64 %i.vn, %i.vb
  br i1 %.not19.i.i.i.i.i, label %bb.br, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !36

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.bs
  br label %.loopexit.i.i.i, !llvm.loop !36

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i129, %..loopexit_crit_edge21.i.i.i.i.i, %_ZN7rocksdb14FileTtlBooster13GetBoostScoreEPNS_12FileMetaDataE.exit.i
  %i.vo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44
          to label %.noexc90.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc90.i:                                       ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.vo, align 8, !tbaa !273
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store i64 %i.uz, ptr %i.vp, align 8, !tbaa !1062
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  store i64 0, ptr %i.vq, align 8, !tbaa !1063
  %i.vr = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %18, i64 noundef %i.vb, i64 noundef %i.uz, ptr noundef nonnull %i.vo, i64 noundef 1)
          to label %.loopexit158.i unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc90.i
  %i.vs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.vo, i64 noundef 24) #42
  br label %.body.i

.loopexit158.i:                                   ; preds = %bb.br, %.noexc90.i, %bb.bq
  %.pn.i.i.i = phi ptr [ %i.vr, %.noexc90.i ], [ %i.vf, %bb.bq ], [ %i.vk, %bb.br ]
  %.1.i.i89.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.vt = udiv i64 %.145.i, %i.uw
  %i.vu = udiv i64 %i.vt, %i.ut
  store i64 %i.vu, ptr %.1.i.i89.i, align 8, !tbaa !533
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0111.0188.i, i64 8 ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.qj
  br i1 %i.vw, label %._crit_edge.i, label %.preheader.i

bb.bt:                                            ; preds = %._crit_edge.i
  %i.vx = add nsw i64 %spec.select131.i, -2       ; 2 uses
  %i.vy = lshr i64 %i.vx, 1                       ; 3 uses
  %i.vz = add nsw i64 %spec.select131.i, -1
  %i.wa = lshr i64 %i.vz, 1                       ; 2 uses
  %i.wb = and i64 %spec.select131.i, 1
  %i.wc = icmp eq i64 %i.wb, 0
  %26 = or disjoint i64 %i.vx, 1                  ; 2 uses
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %26
  %i.we = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.vy
  br label %bb.bu

bb.bu:                                            ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i.i.i", %bb.bt
  %.09.i.i.i.i.i = phi i64 [ %i.vy, %bb.bt ], [ %i.wx, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i.i.i" ] ; 8 uses
  %i.wf = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.09.i.i.i.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.wf, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i130 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !347
  %i.wg = icmp slt i64 %.09.i.i.i.i.i, %i.wa
  br i1 %i.wg, label %.lr.ph.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i135:                            ; preds = %bb.bu, %.noexc92.i
  %.040.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %.noexc92.i ], [ %.09.i.i.i.i.i, %bb.bu ] ; 2 uses
  %i.wh = shl i64 %.040.i.i.i.i.i.i, 1            ; 2 uses
  %i.wi = add i64 %i.wh, 2                        ; 2 uses
  %i.wj = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.wi
  %i.wk = or disjoint i64 %i.wh, 1                ; 2 uses
  %i.wl = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.wk
  %i.wm = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.wj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.wl)
          to label %.noexc92.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i135
  %spec.select.i.i.i.i.i.i = select i1 %i.wm, i64 %i.wk, i64 %i.wi ; 4 uses
  %i.wn = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %spec.select.i.i.i.i.i.i
  %i.wo = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.040.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wo, ptr noundef nonnull align 8 dereferenceable(16) %i.wn, i64 16, i1 false), !tbaa.struct !1051
  %i.wp = icmp slt i64 %spec.select.i.i.i.i.i.i, %i.wa
  br i1 %i.wp, label %.lr.ph.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !2081

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc92.i, %bb.bu
  %.0.lcssa.i.i.i.i.i.i131 = phi i64 [ %.09.i.i.i.i.i, %bb.bu ], [ %spec.select.i.i.i.i.i.i, %.noexc92.i ] ; 2 uses
  %i.wq = icmp eq i64 %.0.lcssa.i.i.i.i.i.i131, %i.vy
  %or.cond.i.i.i.i.i = select i1 %i.wc, i1 %i.wq, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.we, ptr noundef nonnull align 8 dereferenceable(16) %i.wd, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i64 [ %26, %bb.bv ], [ %.0.lcssa.i.i.i.i.i.i131, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.02.0.copyload.i.i.i.i.i, ptr %11, align 8
  store ptr %.sroa.4.0.copyload.i.i.i.i.i130, ptr %i.af, align 8
  %i.wr = icmp sgt i64 %.1.i.i.i.i.i.i, %.09.i.i.i.i.i
  br i1 %i.wr, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bw, %bb.bx
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0922.i.i.i.i.i.i.i, %bb.bx ], [ %.1.i.i.i.i.i.i, %bb.bw ] ; 3 uses
  %.0922.in.i.i.i.i.i.i.i = add nsw i64 %.021.i.i.i.i.i.i.i, -1
  %.0922.i.i.i.i.i.i.i = sdiv i64 %.0922.in.i.i.i.i.i.i.i, 2 ; 4 uses
  %i.ws = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.0922.i.i.i.i.i.i.i ; 2 uses
  %i.wt = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ws, ptr noundef nonnull readonly align 8 dereferenceable(16) %11)
          to label %.noexc93.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  br i1 %i.wt, label %bb.bx, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i.i.i"

bb.bx:                                            ; preds = %.noexc93.i
  %i.wu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.021.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wu, ptr noundef nonnull align 8 dereferenceable(16) %i.ws, i64 16, i1 false), !tbaa.struct !1051
  %i.wv = icmp sgt i64 %.0922.i.i.i.i.i.i.i, %.09.i.i.i.i.i
  br i1 %i.wv, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i.i.i", !llvm.loop !2082

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i.i.i": ; preds = %bb.bx, %.noexc93.i, %bb.bw
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %bb.bw ], [ %.021.i.i.i.i.i.i.i, %.noexc93.i ], [ %.0922.i.i.i.i.i.i.i, %bb.bx ]
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ww, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.not.i.i.i.i91.i = icmp eq i64 %.09.i.i.i.i.i, 0
  %i.wx = add nsw i64 %.09.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i91.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_RT0_.exit.i.i.i.i", label %bb.bu, !llvm.loop !2083

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_RT0_.exit.i.i.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_T0_SR_T1_T2_.exit.i.i.i.i.i", %._crit_edge.i
  %.not27.i.i.i.i = icmp ult ptr %i.qp, %.0.i.i.i.i.i.fr
  br i1 %.not27.i.i.i.i, label %.lr.ph.i.i.i.i133, label %"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_T0_.exit.i.i.i"

.lr.ph.i.i.i.i133:                                ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_RT0_.exit.i.i.i.i"
  %i.wy = add nsw i64 %spec.select131.i, -1
  %i.wz = lshr i64 %i.wy, 1
  %i.xa = icmp ugt i64 %i.de, 2
  %i.xb = and i64 %spec.select131.i, 1
  %i.xc = icmp eq i64 %i.xb, 0                    ; 2 uses
  %i.xd = add nsw i64 %spec.select131.i, -2       ; 3 uses
  %i.xe = ashr exact i64 %i.xd, 1                 ; 2 uses
  %27 = or disjoint i64 %i.xd, 1                  ; 3 uses
  %i.xf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %27 ; 2 uses
  %i.xg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.xe ; 2 uses
  br i1 %i.xa, label %.lr.ph.i.split.us.i.i.i, label %.lr.ph.i.split.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i133, %bb.ca
  %.sroa.0.028.i.us.i.i.i = phi ptr [ %i.xw, %bb.ca ], [ %i.qp, %.lr.ph.i.i.i.i133 ] ; 5 uses
  %i.xh = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0.028.i.us.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0166.0)
          to label %.noexc94.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94.i:                                       ; preds = %.lr.ph.i.split.us.i.i.i
  br i1 %i.xh, label %.lr.ph.i.i23.i.preheader.us.i.i.i, label %bb.ca

.lr.ph.i.i23.i.preheader.us.i.i.i:                ; preds = %.noexc94.i
  %.sroa.02.0.copyload.i12.i.us.i.i.i = load i64, ptr %.sroa.0.028.i.us.i.i.i, align 8, !tbaa !533 ; 2 uses
  %.sroa.4.0..sroa_idx.i13.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.us.i.i.i, i64 8
  %.sroa.4.0.copyload.i14.i.us.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i13.i.us.i.i.i, align 8, !tbaa !347 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.028.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i23.i.us.i.i.i

.lr.ph.i.i23.i.us.i.i.i:                          ; preds = %.noexc95.i, %.lr.ph.i.i23.i.preheader.us.i.i.i
  %.040.i.i24.i.us.i.i.i = phi i64 [ %spec.select.i.i25.i.us.i.i.i, %.noexc95.i ], [ 0, %.lr.ph.i.i23.i.preheader.us.i.i.i ] ; 2 uses
  %i.xi = shl i64 %.040.i.i24.i.us.i.i.i, 1       ; 2 uses
  %i.xj = add i64 %i.xi, 2                        ; 2 uses
  %i.xk = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.xj
  %i.xl = or disjoint i64 %i.xi, 1                ; 2 uses
  %i.xm = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.xl
  %i.xn = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.xk, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.xm)
          to label %.noexc95.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95.i:                                       ; preds = %.lr.ph.i.i23.i.us.i.i.i
  %spec.select.i.i25.i.us.i.i.i = select i1 %i.xn, i64 %i.xl, i64 %i.xj ; 6 uses
  %i.xo = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %spec.select.i.i25.i.us.i.i.i
  %i.xp = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.040.i.i24.i.us.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xp, ptr noundef nonnull align 8 dereferenceable(16) %i.xo, i64 16, i1 false), !tbaa.struct !1051
  %i.xq = icmp slt i64 %spec.select.i.i25.i.us.i.i.i, %i.wz
  br i1 %i.xq, label %.lr.ph.i.i23.i.us.i.i.i, label %._crit_edge.i.i15.i.us.i.i.i, !llvm.loop !2081

._crit_edge.i.i15.i.us.i.i.i:                     ; preds = %.noexc95.i
  %i.xr = icmp eq i64 %spec.select.i.i25.i.us.i.i.i, %i.xe
  %or.cond.i.us.i.i.i = select i1 %i.xc, i1 %i.xr, i1 false
  br i1 %or.cond.i.us.i.i.i, label %.thread.i.i.us.i.i.i, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i.i15.i.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.02.0.copyload.i12.i.us.i.i.i, ptr %9, align 8
  store ptr %.sroa.4.0.copyload.i14.i.us.i.i.i, ptr %i.ag, align 8
  %.not.i17.i.us.i.i.i = icmp eq i64 %spec.select.i.i25.i.us.i.i.i, 0
  br i1 %.not.i17.i.us.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.us.i.i.i", label %.lr.ph.i.i.i18.i.us.i.i.i.preheader

.thread.i.i.us.i.i.i:                             ; preds = %._crit_edge.i.i15.i.us.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xg, ptr noundef nonnull align 8 dereferenceable(16) %i.xf, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.02.0.copyload.i12.i.us.i.i.i, ptr %9, align 8
  store ptr %.sroa.4.0.copyload.i14.i.us.i.i.i, ptr %i.ag, align 8
  br label %.lr.ph.i.i.i18.i.us.i.i.i.preheader

.lr.ph.i.i.i18.i.us.i.i.i.preheader:              ; preds = %.thread.i.i.us.i.i.i, %bb.by
  %.021.i.i.i19.i.us.i.i.i.ph = phi i64 [ %spec.select.i.i25.i.us.i.i.i, %bb.by ], [ %27, %.thread.i.i.us.i.i.i ]
  br label %.lr.ph.i.i.i18.i.us.i.i.i

.lr.ph.i.i.i18.i.us.i.i.i:                        ; preds = %.lr.ph.i.i.i18.i.us.i.i.i.preheader, %bb.bz
  %.021.i.i.i19.i.us.i.i.i = phi i64 [ %.0922.i.i1011.i.i.us.i.i.i, %bb.bz ], [ %.021.i.i.i19.i.us.i.i.i.ph, %.lr.ph.i.i.i18.i.us.i.i.i.preheader ] ; 3 uses
  %.0922.in.i.i.i20.i.us.i.i.i = add nsw i64 %.021.i.i.i19.i.us.i.i.i, -1
  %.0922.i.i1011.i.i.us.i.i.i = lshr i64 %.0922.in.i.i.i20.i.us.i.i.i, 1 ; 3 uses
  %i.xs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.0922.i.i1011.i.i.us.i.i.i ; 2 uses
  %i.xt = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.xs, ptr noundef nonnull readonly align 8 dereferenceable(16) %9)
          to label %.noexc96.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc96.i:                                       ; preds = %.lr.ph.i.i.i18.i.us.i.i.i
  br i1 %i.xt, label %bb.bz, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.us.i.i.i"

bb.bz:                                            ; preds = %.noexc96.i
  %i.xu = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.021.i.i.i19.i.us.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xu, ptr noundef nonnull align 8 dereferenceable(16) %i.xs, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i.us.i.i.i = icmp eq i64 %.0922.i.i1011.i.i.us.i.i.i, 0
  br i1 %.not12.i.i.us.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.us.i.i.i", label %.lr.ph.i.i.i18.i.us.i.i.i, !llvm.loop !2082

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.us.i.i.i": ; preds = %bb.bz, %.noexc96.i, %bb.by
  %.0.lcssa.i.i.i22.i.us.i.i.i = phi i64 [ 0, %bb.by ], [ %.021.i.i.i19.i.us.i.i.i, %.noexc96.i ], [ 0, %bb.bz ]
  %i.xv = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i22.i.us.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xv, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.ca

bb.ca:                                            ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.us.i.i.i", %.noexc94.i
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.us.i.i.i, i64 16 ; 2 uses
  %.not.i.us.i.i.i = icmp ult ptr %i.xw, %.0.i.i.i.i.i.fr
  br i1 %.not.i.us.i.i.i, label %.lr.ph.i.split.us.i.i.i, label %"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_T0_.exit.i.i.i", !llvm.loop !2084

.lr.ph.i.split.i.i.i:                             ; preds = %.lr.ph.i.i.i.i133
  %i.xx = icmp eq i64 %i.xd, 0
  %or.cond35.i.i.i.i = select i1 %i.xc, i1 %i.xx, i1 false
  br i1 %or.cond35.i.i.i.i, label %.lr.ph.i.split.split.us.i.i.i, label %.lr.ph.i.split.split.i.i.i

.lr.ph.i.split.split.us.i.i.i:                    ; preds = %.lr.ph.i.split.i.i.i, %bb.cc
  %.sroa.0.028.i.us29.i.i.i = phi ptr [ %i.yd, %bb.cc ], [ %i.qp, %.lr.ph.i.split.i.i.i ] ; 5 uses
  %i.xy = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0.028.i.us29.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0166.0)
          to label %.noexc97.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97.i:                                       ; preds = %.lr.ph.i.split.split.us.i.i.i
  br i1 %i.xy, label %._crit_edge.i.i15.thread.i.us.i.i.i, label %bb.cc

._crit_edge.i.i15.thread.i.us.i.i.i:              ; preds = %.noexc97.i
  %.sroa.02.0.copyload.i12.i.us30.i.i.i = load i64, ptr %.sroa.0.028.i.us29.i.i.i, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i13.i.us31.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.us29.i.i.i, i64 8
  %.sroa.4.0.copyload.i14.i.us32.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i13.i.us31.i.i.i, align 8, !tbaa !347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.028.i.us29.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xg, ptr noundef nonnull align 8 dereferenceable(16) %i.xf, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.02.0.copyload.i12.i.us30.i.i.i, ptr %9, align 8
  store ptr %.sroa.4.0.copyload.i14.i.us32.i.i.i, ptr %i.ag, align 8
  br label %.lr.ph.i.i.i18.i.us34.i.i.i

.lr.ph.i.i.i18.i.us34.i.i.i:                      ; preds = %bb.cb, %._crit_edge.i.i15.thread.i.us.i.i.i
  %.021.i.i.i19.i.us35.i.i.i = phi i64 [ %.0922.i.i1011.i.i.us37.i.i.i, %bb.cb ], [ %27, %._crit_edge.i.i15.thread.i.us.i.i.i ] ; 3 uses
  %.0922.in.i.i.i20.i.us36.i.i.i = add nsw i64 %.021.i.i.i19.i.us35.i.i.i, -1
  %.0922.i.i1011.i.i.us37.i.i.i = lshr i64 %.0922.in.i.i.i20.i.us36.i.i.i, 1 ; 3 uses
  %i.xz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.0922.i.i1011.i.i.us37.i.i.i ; 2 uses
  %i.ya = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.xz, ptr noundef nonnull readonly align 8 dereferenceable(16) %9)
          to label %.noexc98.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98.i:                                       ; preds = %.lr.ph.i.i.i18.i.us34.i.i.i
  br i1 %i.ya, label %bb.cb, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.loopexit.us39.i.i.i"

bb.cb:                                            ; preds = %.noexc98.i
  %i.yb = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.021.i.i.i19.i.us35.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yb, ptr noundef nonnull align 8 dereferenceable(16) %i.xz, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i.us38.i.i.i = icmp eq i64 %.0922.i.i1011.i.i.us37.i.i.i, 0
  br i1 %.not12.i.i.us38.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.loopexit.us39.i.i.i", label %.lr.ph.i.i.i18.i.us34.i.i.i, !llvm.loop !2082

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.loopexit.us39.i.i.i": ; preds = %bb.cb, %.noexc98.i
  %.0.lcssa.i.i.i22.i.ph.us40.i.i.i = phi i64 [ 0, %bb.cb ], [ %.021.i.i.i19.i.us35.i.i.i, %.noexc98.i ]
  %i.yc = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i22.i.ph.us40.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yc, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.cc

bb.cc:                                            ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i.loopexit.us39.i.i.i", %.noexc97.i
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.us29.i.i.i, i64 16 ; 2 uses
  %.not.i.us43.i.i.i = icmp ult ptr %i.yd, %.0.i.i.i.i.i.fr
  br i1 %.not.i.us43.i.i.i, label %.lr.ph.i.split.split.us.i.i.i, label %"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_T0_.exit.i.i.i", !llvm.loop !2084

.lr.ph.i.split.split.i.i.i:                       ; preds = %.lr.ph.i.split.i.i.i, %bb.cd
  %.sroa.0.028.i.i.i.i = phi ptr [ %i.yf, %bb.cd ], [ %i.qp, %.lr.ph.i.split.i.i.i ] ; 5 uses
  %i.ye = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0.028.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0166.0)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99.i:                                       ; preds = %.lr.ph.i.split.split.i.i.i
  br i1 %i.ye, label %._crit_edge.i.i15.thread.i.i.i.i, label %bb.cd

._crit_edge.i.i15.thread.i.i.i.i:                 ; preds = %.noexc99.i
  %.sroa.02.0.copyload.i12.i.i.i.i = load i64, ptr %.sroa.0.028.i.i.i.i, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i14.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i13.i.i.i.i, align 8, !tbaa !347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.028.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.02.0.copyload.i12.i.i.i.i, ptr %9, align 8
  store ptr %.sroa.4.0.copyload.i14.i.i.i.i, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.i.i15.thread.i.i.i.i, %.noexc99.i
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i134 = icmp ult ptr %i.yf, %.0.i.i.i.i.i.fr
  br i1 %.not.i.i.i.i134, label %.lr.ph.i.split.split.i.i.i, label %"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_T0_.exit.i.i.i", !llvm.loop !2084

"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_T0_.exit.i.i.i": ; preds = %bb.cd, %bb.cc, %bb.ca, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_RT0_.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.yg = icmp ugt i64 %i.de, 1
  br i1 %i.yg, label %.lr.ph.i9.i.i.i, label %"_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISE_EESI_PNS2_11SystemClockEiimPS8_E3$_0EvT_SN_SN_T0_.exit.i"

.lr.ph.i9.i.i.i:                                  ; preds = %"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_T0_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i22.i.i.i"
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.yh, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i22.i.i.i" ], [ %i.qp, %"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_T0_.exit.i.i.i" ] ; 2 uses
  %i.yh = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i.i, i64 -16 ; 4 uses
  %.sroa.02.0.copyload.i.i10.i.i.i = load i64, ptr %i.yh, align 8, !tbaa !533 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i11.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i.i.i, align 8, !tbaa !347 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0166.0, i64 16, i1 false), !tbaa.struct !1051
  %i.yi = ptrtoint ptr %i.yh to i64
  %i.yj = sub i64 %i.yi, %i.dc                    ; 3 uses
  %i.yk = ashr exact i64 %i.yj, 4                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %18, ptr %8, align 8
  store ptr %i.pd, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.yl = add nsw i64 %i.yk, -1
  %i.ym = lshr i64 %i.yl, 1
  %i.yn = icmp sgt i64 %i.yk, 2
  br i1 %i.yn, label %.lr.ph.i.i.i26.i.i.i, label %._crit_edge.i.i.i13.i.i.i

.lr.ph.i.i.i26.i.i.i:                             ; preds = %.lr.ph.i9.i.i.i, %.noexc100.i
  %.040.i.i.i27.i.i.i = phi i64 [ %spec.select.i.i.i28.i.i.i, %.noexc100.i ], [ 0, %.lr.ph.i9.i.i.i ] ; 2 uses
  %i.yo = shl i64 %.040.i.i.i27.i.i.i, 1          ; 2 uses
  %i.yp = add i64 %i.yo, 2                        ; 2 uses
  %i.yq = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.yp
  %i.yr = or disjoint i64 %i.yo, 1                ; 2 uses
  %i.ys = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %i.yr
  %i.yt = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %8, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.yq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ys)
          to label %.noexc100.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100.i:                                      ; preds = %.lr.ph.i.i.i26.i.i.i
  %spec.select.i.i.i28.i.i.i = select i1 %i.yt, i64 %i.yr, i64 %i.yp ; 4 uses
  %i.yu = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %spec.select.i.i.i28.i.i.i
  %i.yv = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.040.i.i.i27.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yv, ptr noundef nonnull align 8 dereferenceable(16) %i.yu, i64 16, i1 false), !tbaa.struct !1051
  %i.yw = icmp slt i64 %spec.select.i.i.i28.i.i.i, %i.ym
  br i1 %i.yw, label %.lr.ph.i.i.i26.i.i.i, label %._crit_edge.i.i.i13.i.i.i, !llvm.loop !2081

._crit_edge.i.i.i13.i.i.i:                        ; preds = %.noexc100.i, %.lr.ph.i9.i.i.i
  %.0.lcssa.i.i.i14.i.i.i = phi i64 [ 0, %.lr.ph.i9.i.i.i ], [ %spec.select.i.i.i28.i.i.i, %.noexc100.i ] ; 5 uses
  %i.yx = and i64 %i.yj, 16
  %i.yy = icmp eq i64 %i.yx, 0
  br i1 %i.yy, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge.i.i.i13.i.i.i
  %i.yz = add nsw i64 %i.yk, -2
  %i.za = ashr exact i64 %i.yz, 1
  %i.zb = icmp eq i64 %.0.lcssa.i.i.i14.i.i.i, %i.za
  br i1 %i.zb, label %.thread.i.i25.i.i.i, label %bb.cf

.thread.i.i25.i.i.i:                              ; preds = %bb.ce
  %i.zc = shl nuw nsw i64 %.0.lcssa.i.i.i14.i.i.i, 1
  %i.zd = or disjoint i64 %i.zc, 1                ; 2 uses
  %i.ze = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %i.zd
  %i.zf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i14.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zf, ptr noundef nonnull align 8 dereferenceable(16) %i.ze, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.02.0.copyload.i.i10.i.i.i, ptr %7, align 8
  store ptr %.sroa.4.0.copyload.i.i12.i.i.i, ptr %i.ah, align 8
  br label %.lr.ph.i.i.i.i18.i.i.i.preheader

bb.cf:                                            ; preds = %bb.ce, %._crit_edge.i.i.i13.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.02.0.copyload.i.i10.i.i.i, ptr %7, align 8
  store ptr %.sroa.4.0.copyload.i.i12.i.i.i, ptr %i.ah, align 8
  %.not.i.i15.i.i.i = icmp eq i64 %.0.lcssa.i.i.i14.i.i.i, 0
  br i1 %.not.i.i15.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i22.i.i.i", label %.lr.ph.i.i.i.i18.i.i.i.preheader

.lr.ph.i.i.i.i18.i.i.i.preheader:                 ; preds = %bb.cf, %.thread.i.i25.i.i.i
  %.021.i.i.i.i19.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i.i.i, %bb.cf ], [ %i.zd, %.thread.i.i25.i.i.i ]
  br label %.lr.ph.i.i.i.i18.i.i.i

.lr.ph.i.i.i.i18.i.i.i:                           ; preds = %.lr.ph.i.i.i.i18.i.i.i.preheader, %bb.cg
  %.021.i.i.i.i19.i.i.i = phi i64 [ %.0922.i.i1011.i.i21.i.i.i, %bb.cg ], [ %.021.i.i.i.i19.i.i.i.ph, %.lr.ph.i.i.i.i18.i.i.i.preheader ] ; 3 uses
  %.0922.in.i.i.i.i20.i.i.i = add nsw i64 %.021.i.i.i.i19.i.i.i, -1
  %.0922.i.i1011.i.i21.i.i.i = lshr i64 %.0922.in.i.i.i.i20.i.i.i, 1 ; 3 uses
  %i.zg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0166.0, i64 %.0922.i.i1011.i.i21.i.i.i ; 2 uses
  %i.zh = invoke fastcc noundef zeroext i1 @"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %8, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.zg, ptr noundef nonnull readonly align 8 dereferenceable(16) %7)
          to label %.noexc101.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101.i:                                      ; preds = %.lr.ph.i.i.i.i18.i.i.i
  br i1 %i.zh, label %bb.cg, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i22.i.i.i"

bb.cg:                                            ; preds = %.noexc101.i
  %i.zi = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.021.i.i.i.i19.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zi, ptr noundef nonnull align 8 dereferenceable(16) %i.zg, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i24.i.i.i = icmp eq i64 %.0922.i.i1011.i.i21.i.i.i, 0
  br i1 %.not12.i.i24.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i22.i.i.i", label %.lr.ph.i.i.i.i18.i.i.i, !llvm.loop !2082

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i22.i.i.i": ; preds = %bb.cg, %.noexc101.i, %bb.cf
  %.0.lcssa.i.i.i.i23.i.i.i = phi i64 [ 0, %bb.cf ], [ %.021.i.i.i.i19.i.i.i, %.noexc101.i ], [ 0, %bb.cg ]
  %i.zj = getelementptr inbounds [16 x i8], ptr %.sroa.0166.0, i64 %.0.lcssa.i.i.i.i23.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zj, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.zk = icmp sgt i64 %i.yj, 16
  br i1 %i.zk, label %.lr.ph.i9.i.i.i, label %"_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISE_EESI_PNS2_11SystemClockEiimPS8_E3$_0EvT_SN_SN_T0_.exit.i", !llvm.loop !2085

"_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISE_EESI_PNS2_11SystemClockEiimPS8_E3$_0EvT_SN_SN_T0_.exit.i": ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_RT0_.exit.i22.i.i.i", %"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISG_EESK_PNS2_11SystemClockEiimPS8_E3$_0EEEvT_SQ_SQ_T0_.exit.i.i.i"
  %i.zl = load ptr, ptr %i.ai, align 8, !tbaa !536 ; 2 uses
  %.not.i.i.i132 = icmp eq ptr %i.zl, null
  br i1 %.not.i.i.i132, label %_ZN7rocksdb6StatusD2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %"_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISE_EESI_PNS2_11SystemClockEiimPS8_E3$_0EvT_SN_SN_T0_.exit.i"
  call void @_ZdaPv(ptr noundef nonnull %i.zl) #42
  br label %_ZN7rocksdb6StatusD2Ev.exit.i

_ZN7rocksdb6StatusD2Ev.exit.i:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %"_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEZNS3_26SortFileByOverlappingRatioERKNS2_21InternalKeyComparatorERKS6_IPNS2_12FileMetaDataESaISE_EESI_PNS2_11SystemClockEiimPS8_E3$_0EvT_SN_SN_T0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.zm = load ptr, ptr %i.v, align 8, !tbaa !1064 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.zm, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i102.i

.lr.ph.i.i.i.i102.i:                              ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i, %.lr.ph.i.i.i.i102.i
  %.06.i.i.i.i.i = phi ptr [ %i.zn, %.lr.ph.i.i.i.i102.i ], [ %i.zm, %_ZN7rocksdb6StatusD2Ev.exit.i ] ; 2 uses
  %i.zn = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !273 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #42
  %.not.i.i.i.i103.i = icmp eq ptr %i.zn, null
  br i1 %.not.i.i.i.i103.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i102.i, !llvm.loop !37

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i102.i, %_ZN7rocksdb6StatusD2Ev.exit.i
  %i.zo = load ptr, ptr %18, align 8, !tbaa !1058
  %i.zp = load i64, ptr %i.u, align 8, !tbaa !1059
  %i.zq = shl i64 %i.zp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.zo, i8 0, i64 %i.zq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.zr = load ptr, ptr %18, align 8, !tbaa !1058 ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.t
  br i1 %i.zs, label %_ZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EE.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.zt = load i64, ptr %i.u, align 8, !tbaa !1059
  %i.zu = shl i64 %i.zt, 3
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zu) #42
  br label %_ZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EE.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.split.split.us.i.i.i, %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i75.i, %bb.bk, %bb.bi, %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i62.i, %bb.bg, %bb.be, %.lr.ph.i.i.i.i.i.i135, %.lr.ph.i.i23.i.us.i.i.i, %.lr.ph.i.i.i18.i.us.i.i.i, %.lr.ph.i.i.i.i18.i.i.i, %.lr.ph.i.i.i26.i.i.i, %.lr.ph.i.i.i18.i.us34.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i, %bb.bc, %bb.ba, %.lr.ph.i.split.us.i.i.i, %.lr.ph.i.split.split.i.i.i, %.loopexit.i.i.i, %bb.bn
  %lpad.loopexit.split-lp1027 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vs, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %lpad.loopexit.split-lp1027, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.zv = load ptr, ptr %i.ai, align 8, !tbaa !536 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #44 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !511
  store ptr null, ptr %i.r, align 8, !tbaa !265
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !511
  store ptr null, ptr %2, align 8, !tbaa !708
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.t = add i64 %i.m, -16
  %i.u = sub i64 %i.t, %i.e                       ; 2 uses
  %i.v = lshr i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.w, 2305843009213693948      ; 3 uses
  %i.x = shl i64 %n.vec, 4                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  %wide.vec = load <8 x ptr>, ptr %next.gep35, align 8, !tbaa !511, !alias.scope !3300
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !511, !alias.scope !3299
  store <8 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !511, !alias.scope !3300
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader67

.lr.ph.i.i.i.preheader67:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader67, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader67 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader67 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ad = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !511, !alias.scope !3300
  store ptr null, ptr %i.ac, align 8, !tbaa !265, !alias.scope !3300
  store <2 x ptr> %i.ad, ptr %.012.i.i.i, align 8, !tbaa !511, !alias.scope !3299
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !708, !alias.scope !3300
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3293

_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.y, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 4 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ah = add i64 %i.d, -16
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check47 = icmp ult i64 %i.ai, 304
  br i1 %min.iters.check47, label %.lr.ph.i.i.i17.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -16                      ; 4 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = getelementptr i8, ptr %1, i64 8
  %i.ar = getelementptr i8, ptr %1, i64 %i.al
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.au = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ult ptr %i.aq, %i.av
  %bound149 = icmp ult ptr %i.at, %i.as
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  br i1 %conflict.rdx, label %.lr.ph.i.i.i17.preheader66, label %vector.ph51

vector.ph51:                                      ; preds = %vector.memcheck
  %n.vec52 = and i64 %i.ak, 2305843009213693948   ; 3 uses
  %i.aw = shl i64 %n.vec52, 4                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ag, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next61, %vector.body53 ] ; 2 uses
  %i.az = shl i64 %index54, 4                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.ag, i64 %i.az
  %next.gep56 = getelementptr i8, ptr %1, i64 %i.az ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  %wide.vec57 = load <8 x ptr>, ptr %next.gep56, align 8, !tbaa !511, !alias.scope !3302
  store <8 x ptr> %wide.vec57, ptr %next.gep55, align 8, !tbaa !511, !alias.scope !3301
  store <8 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !511, !alias.scope !3302
  %index.next61 = add nuw i64 %index54, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next61, %n.vec52
  br i1 %i.ba, label %middle.block62, label %vector.body53, !llvm.loop !3297

middle.block62:                                   ; preds = %vector.body53
  %cmp.n63 = icmp eq i64 %i.ak, %n.vec52
  br i1 %cmp.n63, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader66

.lr.ph.i.i.i17.preheader66:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block62
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block62 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ay, %middle.block62 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader66, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader66 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader66 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !511, !alias.scope !3302
  store ptr null, ptr %i.bb, align 8, !tbaa !265, !alias.scope !3302
  store <2 x ptr> %i.bc, ptr %.012.i.i.i18, align 8, !tbaa !511, !alias.scope !3301
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !708, !alias.scope !3302
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3298

_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block62, %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ax, %middle.block62 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !271
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #42
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !261
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !262
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #31 {
bb.a:
  %3 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %4 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %5 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %6 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %8 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %9 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i23 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i23, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEET_SL_SL_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph41, !llvm.loop !3303

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i26.lcssa = phi i64 [ %.fr.i23, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i26.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i26.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %10 = or disjoint i64 %i.l, 1                   ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %10
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.as, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.t, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !347 ; 2 uses
  %i.u = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !1053
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1053
  %i.ac = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 40
  %.val2.val.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !1054
  %i.ad = getelementptr i8, ptr %.val3.i.i.i.i.i, i64 40
  %.val3.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !1054
  %i.ae = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !1051
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3304

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ai, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %10, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %.sroa.4.0.copyload.i.i.i, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.g ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i.i.i.i ; 2 uses
  %.val16.val.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !1054
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !1053
  %i.an = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 40
  %.val2.val.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !1054
  %i.ao = icmp ult i64 %.val2.val.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.ao, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !1051
  %i.aq = icmp sgt i64 %.098.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i", !llvm.loop !3305

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %bb.f ], [ %.098.i.i.i.i.i, %bb.g ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.ar, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i, align 8, !tbaa !347
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.as = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !3306

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i"
  %i.at = icmp sgt i64 %.fr.i26.lcssa, 16
  br i1 %i.at, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i"
  %.sroa.0.02.i.i = phi ptr [ %i.au, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i" ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.au, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !347 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = lshr i64 %i.ay, 1
  %i.ba = icmp sgt i64 %i.ax, 2
  br i1 %i.ba, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i29.i
  %.041.i.i.i30.i = phi i64 [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bb = shl i64 %.041.i.i.i30.i, 1              ; 2 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bc
  %i.be = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val2.i.i.i.i31.i = load ptr, ptr %i.bg, align 8, !tbaa !1053
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %.val3.i.i.i.i32.i = load ptr, ptr %i.bh, align 8, !tbaa !1053
  %i.bi = getelementptr i8, ptr %.val2.i.i.i.i31.i, i64 40
  %.val2.val.i.i.i.i33.i = load i64, ptr %i.bi, align 8, !tbaa !1054
  %i.bj = getelementptr i8, ptr %.val3.i.i.i.i32.i, i64 40
  %.val3.val.i.i.i.i34.i = load i64, ptr %i.bj, align 8, !tbaa !1054
  %i.bk = icmp ult i64 %.val2.val.i.i.i.i33.i, %.val3.val.i.i.i.i34.i
  %spec.select.i.i.i35.i = select i1 %i.bk, i64 %i.be, i64 %i.bc ; 4 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i35.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !1051
  %i.bn = icmp slt i64 %spec.select.i.i.i35.i, %i.az
  br i1 %i.bn, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i, !llvm.loop !3304

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ] ; 5 uses
  %i.bo = and i64 %i.aw, 16
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.br
  br i1 %i.bs, label %.thread.i.i28.i, label %bb.i

.thread.i.i28.i:                                  ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i.i16.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i", label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.i, %.thread.i.i28.i
  %.1.i4.i.i17.i = phi i64 [ %i.bu, %.thread.i.i28.i ], [ %.0.lcssa.i.i.i14.i, %bb.i ]
  %i.bx = getelementptr i8, ptr %.sroa.4.0.copyload.i.i12.i, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i16.i
  %.07.i.i.i.i18.i = phi i64 [ %.1.i4.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ %.098.i.i56.i.i20.i, %bb.k ] ; 3 uses
  %.098.in.i.i.i.i19.i = add nsw i64 %.07.i.i.i.i18.i, -1
  %.098.i.i56.i.i20.i = lshr i64 %.098.in.i.i.i.i19.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i56.i.i20.i ; 2 uses
  %.val16.val.i.i.i.i21.i = load i64, ptr %i.bx, align 8, !tbaa !1054
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val2.i.i.i.i.i22.i = load ptr, ptr %i.bz, align 8, !tbaa !1053
  %i.ca = getelementptr i8, ptr %.val2.i.i.i.i.i22.i, i64 40
  %.val2.val.i.i.i.i.i23.i = load i64, ptr %i.ca, align 8, !tbaa !1054
  %i.cb = icmp ult i64 %.val2.val.i.i.i.i.i23.i, %.val16.val.i.i.i.i21.i
  br i1 %i.cb, label %bb.k, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i"

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i.i.i18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1051
  %.not7.i.i27.i = icmp eq i64 %.098.i.i56.i.i20.i, 0
  br i1 %.not7.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i", label %bb.j, !llvm.loop !3305

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.i ], [ %.07.i.i.i.i18.i, %bb.j ], [ 0, %bb.k ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i25.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cd, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i, align 8, !tbaa !347
  %i.ce = icmp sgt i64 %i.aw, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !3307

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2440 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02539 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.de, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02539, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2440, i64 -16 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1053
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !1053
  %i.cl = getelementptr i8, ptr %.val2.i.i.i, i64 40
  %.val2.val.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !1054 ; 3 uses
  %i.cm = getelementptr i8, ptr %.val3.i.i.i, i64 40
  %.val3.val.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !1054 ; 3 uses
  %i.cn = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i.i.i
  %i.co = getelementptr i8, ptr %storemerge2440, i64 -8
  %.val3.i27.i.i = load ptr, ptr %i.co, align 8, !tbaa !1053
  %i.cp = getelementptr i8, ptr %.val3.i27.i.i, i64 40
  %.val3.val.i29.i.i = load i64, ptr %i.cp, align 8, !tbaa !1054 ; 4 uses
  br i1 %i.cn, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph41
  %i.cq = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cr = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.q:                                             ; preds = %.lr.ph41
  %i.cs = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.ct = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader": ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader", %bb.x
  %.sroa.016.0.i.i = phi ptr [ %i.cy, %bb.x ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2440, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.val3.i.i18.i = load ptr, ptr %i.h, align 8, !tbaa !1053
  %i.cu = getelementptr i8, ptr %.val3.i.i18.i, i64 40
  %.val3.val.i.i19.i = load i64, ptr %i.cu, align 8, !tbaa !1054 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.cy, %bb.v ] ; 9 uses
  %i.cv = getelementptr i8, ptr %.sroa.016.1.i.i, i64 8
  %.val2.i.i20.i = load ptr, ptr %i.cv, align 8, !tbaa !1053
  %i.cw = getelementptr i8, ptr %.val2.i.i20.i, i64 40
  %.val2.val.i.i21.i = load i64, ptr %i.cw, align 8, !tbaa !1054
  %i.cx = icmp ult i64 %.val2.val.i.i21.i, %.val3.val.i.i19.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.v, label %.preheader.i.i, !llvm.loop !3308

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cz = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i12.i.i = load ptr, ptr %i.cz, align 8, !tbaa !1053
  %i.da = getelementptr i8, ptr %.val3.i12.i.i, i64 40
  %.val3.val.i14.i.i = load i64, ptr %i.da, align 8, !tbaa !1054
  %i.db = icmp ult i64 %.val3.val.i.i19.i, %.val3.val.i14.i.i
  br i1 %i.db, label %.preheader.i.i, label %bb.w, !llvm.loop !3309

bb.w:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.x, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEET_SL_SL_T0_.exit"

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i.i, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !3310

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEET_SL_SL_T0_.exit": ; preds = %bb.w
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_T0_T1_"(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2440, i64 noundef %i.cg)
  %i.dc = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.dd = sub i64 %i.dc, %i.a
  %.fr.i = freeze i64 %i.dd                       ; 2 uses
  %i.de = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.df = icmp sgt i64 %i.de, 16
  br i1 %i.df, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !3303

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #31 {
bb.a:
  %3 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %4 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %5 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %6 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %8 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %9 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i23 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i23, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEET_SL_SL_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph41, !llvm.loop !3311

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i26.lcssa = phi i64 [ %.fr.i23, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i26.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i26.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %10 = or disjoint i64 %i.l, 1                   ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %10
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.as, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.t, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !347 ; 2 uses
  %i.u = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !1053
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1053
  %i.ac = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 32
  %.val2.val.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !1055
  %i.ad = getelementptr i8, ptr %.val3.i.i.i.i.i, i64 32
  %.val3.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !1055
  %i.ae = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !1051
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3312

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ai, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %10, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %.sroa.4.0.copyload.i.i.i, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.g ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i.i.i.i ; 2 uses
  %.val16.val.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !1055
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !1053
  %i.an = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 32
  %.val2.val.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !1055
  %i.ao = icmp ult i64 %.val2.val.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.ao, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !1051
  %i.aq = icmp sgt i64 %.098.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i", !llvm.loop !3313

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %bb.f ], [ %.098.i.i.i.i.i, %bb.g ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.ar, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i, align 8, !tbaa !347
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.as = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !3314

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i"
  %i.at = icmp sgt i64 %.fr.i26.lcssa, 16
  br i1 %i.at, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i"
  %.sroa.0.02.i.i = phi ptr [ %i.au, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i" ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.au, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !347 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = lshr i64 %i.ay, 1
  %i.ba = icmp sgt i64 %i.ax, 2
  br i1 %i.ba, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i29.i
  %.041.i.i.i30.i = phi i64 [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bb = shl i64 %.041.i.i.i30.i, 1              ; 2 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bc
  %i.be = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val2.i.i.i.i31.i = load ptr, ptr %i.bg, align 8, !tbaa !1053
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %.val3.i.i.i.i32.i = load ptr, ptr %i.bh, align 8, !tbaa !1053
  %i.bi = getelementptr i8, ptr %.val2.i.i.i.i31.i, i64 32
  %.val2.val.i.i.i.i33.i = load i64, ptr %i.bi, align 8, !tbaa !1055
  %i.bj = getelementptr i8, ptr %.val3.i.i.i.i32.i, i64 32
  %.val3.val.i.i.i.i34.i = load i64, ptr %i.bj, align 8, !tbaa !1055
  %i.bk = icmp ult i64 %.val2.val.i.i.i.i33.i, %.val3.val.i.i.i.i34.i
  %spec.select.i.i.i35.i = select i1 %i.bk, i64 %i.be, i64 %i.bc ; 4 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i35.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !1051
  %i.bn = icmp slt i64 %spec.select.i.i.i35.i, %i.az
  br i1 %i.bn, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i, !llvm.loop !3312

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ] ; 5 uses
  %i.bo = and i64 %i.aw, 16
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.br
  br i1 %i.bs, label %.thread.i.i28.i, label %bb.i

.thread.i.i28.i:                                  ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i.i16.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i", label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.i, %.thread.i.i28.i
  %.1.i4.i.i17.i = phi i64 [ %i.bu, %.thread.i.i28.i ], [ %.0.lcssa.i.i.i14.i, %bb.i ]
  %i.bx = getelementptr i8, ptr %.sroa.4.0.copyload.i.i12.i, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i16.i
  %.07.i.i.i.i18.i = phi i64 [ %.1.i4.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ %.098.i.i56.i.i20.i, %bb.k ] ; 3 uses
  %.098.in.i.i.i.i19.i = add nsw i64 %.07.i.i.i.i18.i, -1
  %.098.i.i56.i.i20.i = lshr i64 %.098.in.i.i.i.i19.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i56.i.i20.i ; 2 uses
  %.val16.val.i.i.i.i21.i = load i64, ptr %i.bx, align 8, !tbaa !1055
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val2.i.i.i.i.i22.i = load ptr, ptr %i.bz, align 8, !tbaa !1053
  %i.ca = getelementptr i8, ptr %.val2.i.i.i.i.i22.i, i64 32
  %.val2.val.i.i.i.i.i23.i = load i64, ptr %i.ca, align 8, !tbaa !1055
  %i.cb = icmp ult i64 %.val2.val.i.i.i.i.i23.i, %.val16.val.i.i.i.i21.i
  br i1 %i.cb, label %bb.k, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i"

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i.i.i18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1051
  %.not7.i.i27.i = icmp eq i64 %.098.i.i56.i.i20.i, 0
  br i1 %.not7.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i", label %bb.j, !llvm.loop !3313

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.i ], [ %.07.i.i.i.i18.i, %bb.j ], [ 0, %bb.k ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i25.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cd, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i, align 8, !tbaa !347
  %i.ce = icmp sgt i64 %i.aw, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_T0_.exit", !llvm.loop !3315

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2440 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02539 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.de, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02539, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2440, i64 -16 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1053
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !1053
  %i.cl = getelementptr i8, ptr %.val2.i.i.i, i64 32
  %.val2.val.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !1055 ; 3 uses
  %i.cm = getelementptr i8, ptr %.val3.i.i.i, i64 32
  %.val3.val.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !1055 ; 3 uses
  %i.cn = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i.i.i
  %i.co = getelementptr i8, ptr %storemerge2440, i64 -8
  %.val3.i27.i.i = load ptr, ptr %i.co, align 8, !tbaa !1053
  %i.cp = getelementptr i8, ptr %.val3.i27.i.i, i64 32
  %.val3.val.i29.i.i = load i64, ptr %i.cp, align 8, !tbaa !1055 ; 4 uses
  br i1 %i.cn, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph41
  %i.cq = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cr = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.q:                                             ; preds = %.lr.ph41
  %i.cs = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"
end_hunk_2
begin_hunk_3_@"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_":bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !3322 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit

bb.m:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.cn, align 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.0.copyload.i18.i.i = load i64, ptr %i.cp, align 1 ; 2 uses
  %i.cq = icmp ugt i64 %.0.copyload.i.i.i, %.0.copyload.i18.i.i
  br i1 %i.cq, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = icmp ult i64 %.0.copyload.i.i.i, %.0.copyload.i18.i.i
  %spec.select.i.i = zext i1 %i.cr to i32
  br label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i, %bb.m, %bb.n
  %.1.i.i26 = phi i32 [ %i.ck, %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i ], [ %spec.select.i.i, %bb.n ], [ -1, %bb.m ]
  %i.cs = icmp slt i32 %.1.i.i26, 0
  br label %bb.w

bb.o:                                             ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit24
  %i.ct = load ptr, ptr %0, align 8, !tbaa !3325, !nonnull !561, !align !1326 ; 5 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1053
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !508
  %i.cx = and i64 %i.cw, 4611686018427387903      ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1059 ; 4 uses
  %i.da = urem i64 %i.cx, %i.cz                   ; 3 uses
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !1058 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i27, label %.loopexit.i.i33, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !273 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !533
  %i.dh = icmp eq i64 %i.cx, %i.dg
  br i1 %i.dh, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37, label %.lr.ph.i.i.i.i28

bb.q:                                             ; preds = %bb.r
  %i.di = icmp eq i64 %i.cx, %i.dl
  br i1 %i.di, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37, label %.lr.ph.i.i.i.i28, !llvm.loop !36

.lr.ph.i.i.i.i28:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i29 = phi ptr [ %i.dj, %bb.q ], [ %i.de, %bb.p ]
  %i.dj = load ptr, ptr %.020.i.i.i.i29, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i30 = icmp eq ptr %i.dj, null
  br i1 %.not18.i.i.i.i30, label %.loopexit.i.i33, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i28
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !533 ; 2 uses
  %i.dm = urem i64 %i.dl, %i.cz
  %.not19.i.i.i.i31 = icmp eq i64 %i.dm, %i.da
  br i1 %.not19.i.i.i.i31, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i32, !llvm.loop !36

..loopexit_crit_edge21.i.i.i.i32:                 ; preds = %bb.r
  br label %.loopexit.i.i33, !llvm.loop !36

.loopexit.i.i33:                                  ; preds = %.lr.ph.i.i.i.i28, %..loopexit_crit_edge21.i.i.i.i32, %bb.o
  %i.dn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44 ; 5 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !273
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.cx, ptr %i.do, align 8, !tbaa !1062
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 0, ptr %i.dp, align 8, !tbaa !1063
  %i.dq = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, i64 noundef %i.da, i64 noundef %i.cx, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i34

.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge: ; preds = %.loopexit.i.i33
  %.pre75 = load ptr, ptr %0, align 8, !tbaa !3325 ; 3 uses
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %.pre75, i64 8
  %.pre77 = load i64, ptr %.phi.trans.insert76, align 8, !tbaa !1059
  %.pre78 = load ptr, ptr %.pre75, align 8, !tbaa !1058
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i34: ; preds = %.loopexit.i.i33
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37: ; preds = %bb.q, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge, %bb.p
  %i.ds = phi ptr [ %.pre78, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge ], [ %i.db, %bb.p ], [ %i.db, %bb.q ]
  %i.dt = phi i64 [ %.pre77, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge ], [ %i.cz, %bb.p ], [ %i.cz, %bb.q ] ; 2 uses
  %i.du = phi ptr [ %.pre75, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge ], [ %i.ct, %bb.p ], [ %i.ct, %bb.q ]
  %.pn.i.i35 = phi ptr [ %i.dq, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge ], [ %i.de, %bb.p ], [ %i.dj, %bb.q ]
  %.1.i.i36 = getelementptr inbounds nuw i8, ptr %.pn.i.i35, i64 16
  %i.dv = load i64, ptr %.1.i.i36, align 8, !tbaa !533
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !1053
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !508
  %i.dz = and i64 %i.dy, 4611686018427387903      ; 5 uses
  %i.ea = urem i64 %i.dz, %i.dt                   ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i38, label %.loopexit.i.i44, label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !273 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !533
  %i.eg = icmp eq i64 %i.dz, %i.ef
  br i1 %i.eg, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48, label %.lr.ph.i.i.i.i39

bb.t:                                             ; preds = %bb.u
  %i.eh = icmp eq i64 %i.dz, %i.ek
  br i1 %i.eh, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48, label %.lr.ph.i.i.i.i39, !llvm.loop !36

.lr.ph.i.i.i.i39:                                 ; preds = %bb.s, %bb.t
  %.020.i.i.i.i40 = phi ptr [ %i.ei, %bb.t ], [ %i.ed, %bb.s ]
  %i.ei = load ptr, ptr %.020.i.i.i.i40, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i41 = icmp eq ptr %i.ei, null
  br i1 %.not18.i.i.i.i41, label %.loopexit.i.i44, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i39
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !533 ; 2 uses
  %i.el = urem i64 %i.ek, %i.dt
  %.not19.i.i.i.i42 = icmp eq i64 %i.el, %i.ea
  br i1 %.not19.i.i.i.i42, label %bb.t, label %..loopexit_crit_edge21.i.i.i.i43, !llvm.loop !36

..loopexit_crit_edge21.i.i.i.i43:                 ; preds = %bb.u
  br label %.loopexit.i.i44, !llvm.loop !36

.loopexit.i.i44:                                  ; preds = %.lr.ph.i.i.i.i39, %..loopexit_crit_edge21.i.i.i.i43, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37
  %i.em = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44 ; 5 uses
  store ptr null, ptr %i.em, align 8, !tbaa !273
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %i.dz, ptr %i.en, align 8, !tbaa !1062
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 0, ptr %i.eo, align 8, !tbaa !1063
  %i.ep = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.du, i64 noundef %i.ea, i64 noundef %i.dz, ptr noundef nonnull %i.em, i64 noundef 1)
          to label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48 unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i45

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i45: ; preds = %.loopexit.i.i44
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48: ; preds = %bb.t, %bb.s, %.loopexit.i.i44
  %.pn.i.i46 = phi ptr [ %i.ep, %.loopexit.i.i44 ], [ %i.ed, %bb.s ], [ %i.ei, %bb.t ]
  %.1.i.i47 = getelementptr inbounds nuw i8, ptr %.pn.i.i46, i64 16
  %i.er = load i64, ptr %.1.i.i47, align 8, !tbaa !533
  %i.es = icmp ult i64 %i.dv, %i.er
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  %i.et = icmp samesign ugt i8 %i.d, %i.h
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit
  %.0 = phi i1 [ %i.cs, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit ], [ %i.es, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48 ], [ %i.et, %bb.v ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #31 {
bb.a:
  %3 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %4 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %5 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %6 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %8 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %9 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i23 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i23, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEET_SM_SM_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph41, !llvm.loop !3327

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i26.lcssa = phi i64 [ %.fr.i23, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i26.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i26.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %10 = or disjoint i64 %i.l, 1                   ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %10
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.as, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.t, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !347 ; 2 uses
  %i.u = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !1053
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1053
  %i.ac = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 32
  %.val2.val.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !1055
  %i.ad = getelementptr i8, ptr %.val3.i.i.i.i.i, i64 32
  %.val3.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !1055
  %i.ae = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !1051
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3328

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ai, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %10, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %.sroa.4.0.copyload.i.i.i, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.g ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i.i.i.i ; 2 uses
  %.val16.val.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !1055
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !1053
  %i.an = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 32
  %.val2.val.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !1055
  %i.ao = icmp ult i64 %.val2.val.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.ao, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !1051
  %i.aq = icmp sgt i64 %.098.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i", !llvm.loop !3329

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %bb.f ], [ %.098.i.i.i.i.i, %bb.g ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.ar, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i, align 8, !tbaa !347
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.as = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i", label %bb.c, !llvm.loop !3330

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"
  %i.at = icmp sgt i64 %.fr.i26.lcssa, 16
  br i1 %i.at, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i"
  %.sroa.0.02.i.i = phi ptr [ %i.au, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i" ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.au, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !347 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = lshr i64 %i.ay, 1
  %i.ba = icmp sgt i64 %i.ax, 2
  br i1 %i.ba, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i29.i
  %.041.i.i.i30.i = phi i64 [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bb = shl i64 %.041.i.i.i30.i, 1              ; 2 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bc
  %i.be = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val2.i.i.i.i31.i = load ptr, ptr %i.bg, align 8, !tbaa !1053
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %.val3.i.i.i.i32.i = load ptr, ptr %i.bh, align 8, !tbaa !1053
  %i.bi = getelementptr i8, ptr %.val2.i.i.i.i31.i, i64 32
  %.val2.val.i.i.i.i33.i = load i64, ptr %i.bi, align 8, !tbaa !1055
  %i.bj = getelementptr i8, ptr %.val3.i.i.i.i32.i, i64 32
  %.val3.val.i.i.i.i34.i = load i64, ptr %i.bj, align 8, !tbaa !1055
  %i.bk = icmp ult i64 %.val2.val.i.i.i.i33.i, %.val3.val.i.i.i.i34.i
  %spec.select.i.i.i35.i = select i1 %i.bk, i64 %i.be, i64 %i.bc ; 4 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i35.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !1051
  %i.bn = icmp slt i64 %spec.select.i.i.i35.i, %i.az
  br i1 %i.bn, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i, !llvm.loop !3328

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ] ; 5 uses
  %i.bo = and i64 %i.aw, 16
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.br
  br i1 %i.bs, label %.thread.i.i28.i, label %bb.i

.thread.i.i28.i:                                  ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i.i16.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i", label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.i, %.thread.i.i28.i
  %.1.i4.i.i17.i = phi i64 [ %i.bu, %.thread.i.i28.i ], [ %.0.lcssa.i.i.i14.i, %bb.i ]
  %i.bx = getelementptr i8, ptr %.sroa.4.0.copyload.i.i12.i, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i16.i
  %.07.i.i.i.i18.i = phi i64 [ %.1.i4.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ %.098.i.i56.i.i20.i, %bb.k ] ; 3 uses
  %.098.in.i.i.i.i19.i = add nsw i64 %.07.i.i.i.i18.i, -1
  %.098.i.i56.i.i20.i = lshr i64 %.098.in.i.i.i.i19.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i56.i.i20.i ; 2 uses
  %.val16.val.i.i.i.i21.i = load i64, ptr %i.bx, align 8, !tbaa !1055
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val2.i.i.i.i.i22.i = load ptr, ptr %i.bz, align 8, !tbaa !1053
  %i.ca = getelementptr i8, ptr %.val2.i.i.i.i.i22.i, i64 32
  %.val2.val.i.i.i.i.i23.i = load i64, ptr %i.ca, align 8, !tbaa !1055
  %i.cb = icmp ult i64 %.val2.val.i.i.i.i.i23.i, %.val16.val.i.i.i.i21.i
  br i1 %i.cb, label %bb.k, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i"

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i.i.i18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1051
  %.not7.i.i27.i = icmp eq i64 %.098.i.i56.i.i20.i, 0
  br i1 %.not7.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i", label %bb.j, !llvm.loop !3329

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.i ], [ %.07.i.i.i.i18.i, %bb.j ], [ 0, %bb.k ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i25.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cd, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i, align 8, !tbaa !347
  %i.ce = icmp sgt i64 %i.aw, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !3331

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2440 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02539 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.de, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02539, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2440, i64 -16 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1053
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !1053
  %i.cl = getelementptr i8, ptr %.val2.i.i.i, i64 32
  %.val2.val.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !1055 ; 3 uses
  %i.cm = getelementptr i8, ptr %.val3.i.i.i, i64 32
  %.val3.val.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !1055 ; 3 uses
  %i.cn = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i.i.i
  %i.co = getelementptr i8, ptr %storemerge2440, i64 -8
  %.val3.i27.i.i = load ptr, ptr %i.co, align 8, !tbaa !1053
  %i.cp = getelementptr i8, ptr %.val3.i27.i.i, i64 32
  %.val3.val.i29.i.i = load i64, ptr %i.cp, align 8, !tbaa !1055 ; 4 uses
  br i1 %i.cn, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph41
  %i.cq = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cr = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.q:                                             ; preds = %.lr.ph41
  %i.cs = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"
end_hunk_3
