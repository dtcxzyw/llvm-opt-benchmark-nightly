Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4ncnnL22copy_make_border_imageIaEEvRKNS_3MatERS1_iiiT_:bb.a
  %prol.iter947.cmp.not = icmp eq i64 %prol.iter947.next, %xtraiter945
  br i1 %prol.iter947.cmp.not, label %.lr.ph481.prol.loopexit, label %.lr.ph481.prol, !llvm.loop !105

.lr.ph481.prol.loopexit:                          ; preds = %.lr.ph481.prol, %.lr.ph481.preheader
  %indvars.iv618.unr = phi i64 [ %indvars.iv618.ph, %.lr.ph481.preheader ], [ %indvars.iv.next619.prol, %.lr.ph481.prol ]
  %i.lx = sub nsw i64 %indvars.iv618.ph, %i.kv
  %i.ly = icmp ugt i64 %i.lx, -4
  br i1 %i.ly, label %._crit_edge482.loopexit, label %.lr.ph481

.preheader381:                                    ; preds = %._crit_edge490, %bb.f
  %i.lz = phi i32 [ %i.kn, %bb.f ], [ %i.ou, %._crit_edge490 ] ; 2 uses
  %.4343.lcssa = phi ptr [ %i.kq, %bb.f ], [ %i.oy, %._crit_edge490 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7, %bb.f ], [ %i.ov, %._crit_edge490 ] ; 3 uses
  %.0308.lcssa = phi i32 [ 0, %bb.f ], [ %2, %._crit_edge490 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !52
  %i.mc = add nsw i32 %i.mb, %2
  %i.md = icmp slt i32 %.0308.lcssa, %i.mc
  br i1 %i.md, label %.preheader380.lr.ph, label %._crit_edge511

.preheader380.lr.ph:                              ; preds = %.preheader381
  %i.me = icmp sgt i32 %3, 0
  %i.mf = sext i32 %3 to i64                      ; 2 uses
  %i.mg = sext i32 %i.b to i64                    ; 5 uses
  %i.mh = zext i32 %3 to i64                      ; 17 uses
  %min.iters.check843 = icmp ult i32 %3, 8
  %invariant.gep = getelementptr i8, ptr %.8.lcssa, i64 %i.mh
  %min.iters.check849 = icmp ult i32 %3, 32
  %i.mi = and i64 %i.mh, 24
  %n.vec851 = and i64 %i.mh, 2147483616           ; 4 uses
  %cmp.n860 = icmp eq i64 %n.vec851, %i.mh
  %min.epilog.iters.check864 = icmp eq i64 %i.mi, 0
  %n.vec867 = and i64 %i.mh, 2147483640           ; 3 uses
  %cmp.n874 = icmp eq i64 %n.vec867, %i.mh
  %xtraiter951 = and i64 %i.mh, 3                 ; 2 uses
  %lcmp.mod952.not = icmp eq i64 %xtraiter951, 0
  %i.mj = add nsw i64 %i.mg, -1
  br label %.preheader380

.lr.ph481:                                        ; preds = %.lr.ph481.prol.loopexit, %.lr.ph481
  %indvars.iv618 = phi i64 [ %indvars.iv.next619.3, %.lr.ph481 ], [ %indvars.iv618.unr, %.lr.ph481.prol.loopexit ] ; 6 uses
  %i.mk = sub nuw nsw i64 %i.kv, %indvars.iv618
  %i.ml = getelementptr inbounds nuw i8, ptr %.4343491, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !61
  %i.mn = getelementptr inbounds nuw i8, ptr %.8492, i64 %indvars.iv618
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !61
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %i.mo = sub nuw nsw i64 %i.kv, %indvars.iv.next619
  %i.mp = getelementptr inbounds nuw i8, ptr %.4343491, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !61
  %i.mr = getelementptr inbounds nuw i8, ptr %.8492, i64 %indvars.iv.next619
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !61
  %indvars.iv.next619.1 = add nuw nsw i64 %indvars.iv618, 2 ; 2 uses
  %i.ms = sub nuw nsw i64 %i.kv, %indvars.iv.next619.1
  %i.mt = getelementptr inbounds nuw i8, ptr %.4343491, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !61
  %i.mv = getelementptr inbounds nuw i8, ptr %.8492, i64 %indvars.iv.next619.1
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !61
  %indvars.iv.next619.2 = add nuw nsw i64 %indvars.iv618, 3 ; 2 uses
  %i.mw = sub nuw nsw i64 %i.kv, %indvars.iv.next619.2
  %i.mx = getelementptr inbounds nuw i8, ptr %.4343491, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !61
  %i.mz = getelementptr inbounds nuw i8, ptr %.8492, i64 %indvars.iv.next619.2
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !61
  %indvars.iv.next619.3 = add nuw nsw i64 %indvars.iv618, 4 ; 2 uses
  %exitcond622.not.3 = icmp eq i64 %indvars.iv.next619.3, %i.kv
  br i1 %exitcond622.not.3, label %._crit_edge482.loopexit, label %.lr.ph481, !llvm.loop !106

._crit_edge482.loopexit:                          ; preds = %.lr.ph481.prol.loopexit, %.lr.ph481, %vec.epilog.middle.block833, %middle.block819
  %.pre664 = load i32, ptr %i.km, align 4, !tbaa !51
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %._crit_edge482.loopexit, %.preheader384
  %i.na = phi i32 [ %i.lc, %.preheader384 ], [ %.pre664, %._crit_edge482.loopexit ] ; 4 uses
  %.0304.lcssa = phi i32 [ 0, %.preheader384 ], [ %3, %._crit_edge482.loopexit ] ; 4 uses
  %i.nb = icmp slt i32 %i.na, 12
  br i1 %i.nb, label %.preheader382, label %bb.g

.preheader382:                                    ; preds = %._crit_edge482
  %i.nc = add nsw i32 %i.na, %3
  %i.nd = icmp slt i32 %.0304.lcssa, %i.nc
  br i1 %i.nd, label %.lr.ph485.preheader, label %.loopexit383

.lr.ph485.preheader:                              ; preds = %.preheader382
  %i.ne = zext nneg i32 %.0304.lcssa to i64
  br label %.lr.ph485

.lr.ph485:                                        ; preds = %.lr.ph485.preheader, %.lr.ph485
  %indvars.iv623 = phi i64 [ %i.ne, %.lr.ph485.preheader ], [ %indvars.iv.next624, %.lr.ph485 ] ; 3 uses
  %i.nf = sub nsw i64 %indvars.iv623, %i.kt
  %i.ng = getelementptr inbounds i8, ptr %.4343491, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !61
  %i.ni = getelementptr inbounds nuw i8, ptr %.8492, i64 %indvars.iv623
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !61
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 3 uses
  %i.nj = load i32, ptr %i.km, align 4, !tbaa !51 ; 2 uses
  %i.nk = add nsw i32 %i.nj, %3
  %i.nl = sext i32 %i.nk to i64
  %i.nm = icmp slt i64 %indvars.iv.next624, %i.nl
  br i1 %i.nm, label %.lr.ph485, label %.loopexit383.loopexit, !llvm.loop !107

bb.g:                                             ; preds = %._crit_edge482
  %i.nn = getelementptr inbounds i8, ptr %.8492, i64 %i.kt
  %i.no = zext nneg i32 %i.na to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nn, ptr align 1 %.4343491, i64 %i.no, i1 false)
  %i.np = load i32, ptr %i.km, align 4, !tbaa !51 ; 2 uses
  %i.nq = add nsw i32 %i.np, %.0304.lcssa
  br label %.loopexit383

.loopexit383.loopexit:                            ; preds = %.lr.ph485
  %i.nr = trunc nsw i64 %indvars.iv.next624 to i32
  br label %.loopexit383

.loopexit383:                                     ; preds = %.loopexit383.loopexit, %.preheader382, %bb.g
  %i.ns = phi i32 [ %i.np, %bb.g ], [ %i.na, %.preheader382 ], [ %i.nj, %.loopexit383.loopexit ]
  %.2306 = phi i32 [ %i.nq, %bb.g ], [ %.0304.lcssa, %.preheader382 ], [ %i.nr, %.loopexit383.loopexit ] ; 3 uses
  %i.nt = icmp slt i32 %.2306, %i.b
  br i1 %i.nt, label %.lr.ph489.preheader, label %._crit_edge490

.lr.ph489.preheader:                              ; preds = %.loopexit383
  %i.nu = sext i32 %.2306 to i64                  ; 5 uses
  %i.nv = sub nsw i64 %i.ku, %i.nu
  %xtraiter948 = and i64 %i.nv, 1
  %lcmp.mod949.not = icmp eq i64 %xtraiter948, 0
  br i1 %lcmp.mod949.not, label %.lr.ph489.prol.loopexit, label %.lr.ph489.prol

.lr.ph489.prol:                                   ; preds = %.lr.ph489.preheader
  %i.nw = load i32, ptr %i.km, align 4, !tbaa !51
  %factor375.prol = shl i32 %i.nw, 1
  %.neg373.prol = sub i32 %3, %.2306
  %i.nx = add i32 %.neg373.prol, %factor375.prol
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr i8, ptr %.4343491, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nz, i64 -2
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !61
  %i.oc = getelementptr inbounds i8, ptr %.8492, i64 %i.nu
  store i8 %i.ob, ptr %i.oc, align 1, !tbaa !61
  %indvars.iv.next627.prol = add nsw i64 %i.nu, 1
  br label %.lr.ph489.prol.loopexit

.lr.ph489.prol.loopexit:                          ; preds = %.lr.ph489.prol, %.lr.ph489.preheader
  %indvars.iv626.unr = phi i64 [ %i.nu, %.lr.ph489.preheader ], [ %indvars.iv.next627.prol, %.lr.ph489.prol ]
  %i.od = icmp eq i64 %i.lb, %i.nu
  br i1 %i.od, label %._crit_edge490.loopexit, label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph489.prol.loopexit, %.lr.ph489
  %indvars.iv626 = phi i64 [ %indvars.iv.next627.1, %.lr.ph489 ], [ %indvars.iv626.unr, %.lr.ph489.prol.loopexit ] ; 4 uses
  %i.oe = load i32, ptr %i.km, align 4, !tbaa !51
  %factor375 = shl i32 %i.oe, 1
  %i.of = trunc nsw i64 %indvars.iv626 to i32
  %.neg373 = sub i32 %3, %i.of
  %i.og = add i32 %.neg373, %factor375
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr i8, ptr %.4343491, i64 %i.oh
  %i.oj = getelementptr i8, ptr %i.oi, i64 -2
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !61
  %i.ol = getelementptr inbounds i8, ptr %.8492, i64 %indvars.iv626
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !61
  %indvars.iv.next627 = add nsw i64 %indvars.iv626, 1 ; 2 uses
  %i.om = load i32, ptr %i.km, align 4, !tbaa !51
  %factor375.1 = shl i32 %i.om, 1
  %i.on = trunc nsw i64 %indvars.iv.next627 to i32
  %.neg373.1 = sub i32 %3, %i.on
  %i.oo = add i32 %.neg373.1, %factor375.1
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr i8, ptr %.4343491, i64 %i.op
  %i.or = getelementptr i8, ptr %i.oq, i64 -2
  %i.os = load i8, ptr %i.or, align 1, !tbaa !61
  %i.ot = getelementptr inbounds i8, ptr %.8492, i64 %indvars.iv.next627
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !61
  %indvars.iv.next627.1 = add nsw i64 %indvars.iv626, 2 ; 2 uses
  %exitcond630.not.1 = icmp eq i64 %indvars.iv.next627.1, %i.ku
  br i1 %exitcond630.not.1, label %._crit_edge490.loopexit, label %.lr.ph489, !llvm.loop !108

._crit_edge490.loopexit:                          ; preds = %.lr.ph489, %.lr.ph489.prol.loopexit
  %.pre665 = load i32, ptr %i.km, align 4, !tbaa !51
  br label %._crit_edge490

._crit_edge490:                                   ; preds = %._crit_edge490.loopexit, %.loopexit383
  %i.ou = phi i32 [ %.pre665, %._crit_edge490.loopexit ], [ %i.ns, %.loopexit383 ] ; 3 uses
  %i.ov = getelementptr inbounds i8, ptr %.8492, i64 %i.ku ; 2 uses
  %i.ow = sext i32 %i.ou to i64
  %i.ox = sub nsw i64 0, %i.ow
  %i.oy = getelementptr inbounds i8, ptr %.4343491, i64 %i.ox ; 2 uses
  %i.oz = add nuw nsw i32 %.0308493, 1            ; 2 uses
  %exitcond631.not = icmp eq i32 %i.oz, %2
  br i1 %exitcond631.not, label %.preheader381, label %.preheader384, !llvm.loop !109

.preheader380:                                    ; preds = %.preheader380.lr.ph, %._crit_edge507
  %indvar = phi i64 [ 0, %.preheader380.lr.ph ], [ %indvar.next, %._crit_edge507 ] ; 2 uses
  %i.pa = phi i32 [ %i.lz, %.preheader380.lr.ph ], [ %i.sh, %._crit_edge507 ]
  %.1309510 = phi i32 [ %.0308.lcssa, %.preheader380.lr.ph ], [ %i.sl, %._crit_edge507 ]
  %.9509 = phi ptr [ %.8.lcssa, %.preheader380.lr.ph ], [ %i.sk, %._crit_edge507 ] ; 14 uses
  %.5344508 = phi ptr [ %.4343.lcssa, %.preheader380.lr.ph ], [ %i.sj, %._crit_edge507 ] ; 15 uses
  br i1 %i.me, label %iter.check861, label %._crit_edge499

iter.check861:                                    ; preds = %.preheader380
  br i1 %min.iters.check843, label %.lr.ph498.preheader, label %vector.memcheck844

vector.memcheck844:                               ; preds = %iter.check861
  %i.pb = mul i64 %indvar, %i.mg
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.pb
  %i.pc = getelementptr i8, ptr %.5344508, i64 1
  %i.pd = getelementptr i8, ptr %.5344508, i64 %i.mh
  %i.pe = getelementptr i8, ptr %i.pd, i64 1
  %bound0845 = icmp ult ptr %.9509, %i.pe
  %bound1846 = icmp ult ptr %i.pc, %gep
  %found.conflict847 = and i1 %bound0845, %bound1846
  br i1 %found.conflict847, label %.lr.ph498.preheader, label %vector.main.loop.iter.check848

vector.main.loop.iter.check848:                   ; preds = %vector.memcheck844
  br i1 %min.iters.check849, label %vec.epilog.ph865, label %vector.body852

vector.body852:                                   ; preds = %vector.main.loop.iter.check848, %vector.body852
  %index853 = phi i64 [ %index.next858, %vector.body852 ], [ 0, %vector.main.loop.iter.check848 ] ; 3 uses
  %i.pf = sub nuw nsw i64 %i.mh, %index853
  %i.pg = getelementptr inbounds nuw i8, ptr %.5344508, i64 %i.pf ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -15
  %i.pi = getelementptr inbounds i8, ptr %i.pg, i64 -31
  %wide.load854 = load <16 x i8>, ptr %i.ph, align 1, !tbaa !61, !alias.scope !134
  %wide.load855 = load <16 x i8>, ptr %i.pi, align 1, !tbaa !61, !alias.scope !134
  %reverse856 = shufflevector <16 x i8> %wide.load854, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse857 = shufflevector <16 x i8> %wide.load855, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.pj = getelementptr inbounds nuw i8, ptr %.9509, i64 %index853 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store <16 x i8> %reverse856, ptr %i.pj, align 1, !tbaa !61, !alias.scope !135, !noalias !134
  store <16 x i8> %reverse857, ptr %i.pk, align 1, !tbaa !61, !alias.scope !135, !noalias !134
  %index.next858 = add nuw i64 %index853, 32      ; 2 uses
  %i.pl = icmp eq i64 %index.next858, %n.vec851
  br i1 %i.pl, label %middle.block859, label %vector.body852, !llvm.loop !113

middle.block859:                                  ; preds = %vector.body852
  br i1 %cmp.n860, label %._crit_edge499.loopexit, label %vec.epilog.iter.check862

vec.epilog.iter.check862:                         ; preds = %middle.block859
  br i1 %min.epilog.iters.check864, label %.lr.ph498.preheader, label %vec.epilog.ph865, !prof !133

vec.epilog.ph865:                                 ; preds = %vector.main.loop.iter.check848, %vec.epilog.iter.check862
  %vec.epilog.resume.val866 = phi i64 [ %n.vec851, %vec.epilog.iter.check862 ], [ 0, %vector.main.loop.iter.check848 ]
  br label %vec.epilog.vector.body868

vec.epilog.vector.body868:                        ; preds = %vec.epilog.vector.body868, %vec.epilog.ph865
  %index869 = phi i64 [ %vec.epilog.resume.val866, %vec.epilog.ph865 ], [ %index.next872, %vec.epilog.vector.body868 ] ; 3 uses
  %i.pm = sub nuw nsw i64 %i.mh, %index869
  %i.pn = getelementptr inbounds nuw i8, ptr %.5344508, i64 %i.pm
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 -7
  %wide.load870 = load <8 x i8>, ptr %i.po, align 1, !tbaa !61, !alias.scope !134
  %reverse871 = shufflevector <8 x i8> %wide.load870, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.pp = getelementptr inbounds nuw i8, ptr %.9509, i64 %index869
  store <8 x i8> %reverse871, ptr %i.pp, align 1, !tbaa !61, !alias.scope !135, !noalias !134
  %index.next872 = add nuw i64 %index869, 8       ; 2 uses
  %i.pq = icmp eq i64 %index.next872, %n.vec867
  br i1 %i.pq, label %vec.epilog.middle.block873, label %vec.epilog.vector.body868, !llvm.loop !114

vec.epilog.middle.block873:                       ; preds = %vec.epilog.vector.body868
  br i1 %cmp.n874, label %._crit_edge499.loopexit, label %.lr.ph498.preheader

.lr.ph498.preheader:                              ; preds = %iter.check861, %vector.memcheck844, %vec.epilog.iter.check862, %vec.epilog.middle.block873
  %indvars.iv632.ph = phi i64 [ 0, %iter.check861 ], [ 0, %vector.memcheck844 ], [ %n.vec851, %vec.epilog.iter.check862 ], [ %n.vec867, %vec.epilog.middle.block873 ] ; 3 uses
  br i1 %lcmp.mod952.not, label %.lr.ph498.prol.loopexit, label %.lr.ph498.prol

.lr.ph498.prol:                                   ; preds = %.lr.ph498.preheader, %.lr.ph498.prol
  %indvars.iv632.prol = phi i64 [ %indvars.iv.next633.prol, %.lr.ph498.prol ], [ %indvars.iv632.ph, %.lr.ph498.preheader ] ; 3 uses
  %prol.iter953 = phi i64 [ %prol.iter953.next, %.lr.ph498.prol ], [ 0, %.lr.ph498.preheader ]
  %i.pr = sub nuw nsw i64 %i.mh, %indvars.iv632.prol
  %i.ps = getelementptr inbounds nuw i8, ptr %.5344508, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !61
  %i.pu = getelementptr inbounds nuw i8, ptr %.9509, i64 %indvars.iv632.prol
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !61
  %indvars.iv.next633.prol = add nuw nsw i64 %indvars.iv632.prol, 1 ; 2 uses
  %prol.iter953.next = add i64 %prol.iter953, 1   ; 2 uses
  %prol.iter953.cmp.not = icmp eq i64 %prol.iter953.next, %xtraiter951
  br i1 %prol.iter953.cmp.not, label %.lr.ph498.prol.loopexit, label %.lr.ph498.prol, !llvm.loop !115

.lr.ph498.prol.loopexit:                          ; preds = %.lr.ph498.prol, %.lr.ph498.preheader
  %indvars.iv632.unr = phi i64 [ %indvars.iv632.ph, %.lr.ph498.preheader ], [ %indvars.iv.next633.prol, %.lr.ph498.prol ]
  %i.pv = sub nsw i64 %indvars.iv632.ph, %i.mh
  %i.pw = icmp ugt i64 %i.pv, -4
  br i1 %i.pw, label %._crit_edge499.loopexit, label %.lr.ph498

.lr.ph498:                                        ; preds = %.lr.ph498.prol.loopexit, %.lr.ph498
  %indvars.iv632 = phi i64 [ %indvars.iv.next633.3, %.lr.ph498 ], [ %indvars.iv632.unr, %.lr.ph498.prol.loopexit ] ; 6 uses
  %i.px = sub nuw nsw i64 %i.mh, %indvars.iv632
  %i.py = getelementptr inbounds nuw i8, ptr %.5344508, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !61
  %i.qa = getelementptr inbounds nuw i8, ptr %.9509, i64 %indvars.iv632
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !61
  %indvars.iv.next633 = add nuw nsw i64 %indvars.iv632, 1 ; 2 uses
  %i.qb = sub nuw nsw i64 %i.mh, %indvars.iv.next633
  %i.qc = getelementptr inbounds nuw i8, ptr %.5344508, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !61
  %i.qe = getelementptr inbounds nuw i8, ptr %.9509, i64 %indvars.iv.next633
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !61
  %indvars.iv.next633.1 = add nuw nsw i64 %indvars.iv632, 2 ; 2 uses
  %i.qf = sub nuw nsw i64 %i.mh, %indvars.iv.next633.1
  %i.qg = getelementptr inbounds nuw i8, ptr %.5344508, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !61
  %i.qi = getelementptr inbounds nuw i8, ptr %.9509, i64 %indvars.iv.next633.1
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !61
  %indvars.iv.next633.2 = add nuw nsw i64 %indvars.iv632, 3 ; 2 uses
  %i.qj = sub nuw nsw i64 %i.mh, %indvars.iv.next633.2
  %i.qk = getelementptr inbounds nuw i8, ptr %.5344508, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !61
  %i.qm = getelementptr inbounds nuw i8, ptr %.9509, i64 %indvars.iv.next633.2
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !61
  %indvars.iv.next633.3 = add nuw nsw i64 %indvars.iv632, 4 ; 2 uses
  %exitcond636.not.3 = icmp eq i64 %indvars.iv.next633.3, %i.mh
  br i1 %exitcond636.not.3, label %._crit_edge499.loopexit, label %.lr.ph498, !llvm.loop !116

._crit_edge499.loopexit:                          ; preds = %.lr.ph498.prol.loopexit, %.lr.ph498, %vec.epilog.middle.block873, %middle.block859
  %.pre666 = load i32, ptr %i.km, align 4, !tbaa !51
  br label %._crit_edge499

._crit_edge499:                                   ; preds = %._crit_edge499.loopexit, %.preheader380
  %i.qn = phi i32 [ %i.pa, %.preheader380 ], [ %.pre666, %._crit_edge499.loopexit ] ; 4 uses
  %.0300.lcssa = phi i32 [ 0, %.preheader380 ], [ %3, %._crit_edge499.loopexit ] ; 4 uses
  %i.qo = icmp slt i32 %i.qn, 12
  br i1 %i.qo, label %.preheader378, label %bb.h

.preheader378:                                    ; preds = %._crit_edge499
  %i.qp = add nsw i32 %i.qn, %3
  %i.qq = icmp slt i32 %.0300.lcssa, %i.qp
  br i1 %i.qq, label %.lr.ph502.preheader, label %.loopexit379

.lr.ph502.preheader:                              ; preds = %.preheader378
  %i.qr = zext nneg i32 %.0300.lcssa to i64
  br label %.lr.ph502

.lr.ph502:                                        ; preds = %.lr.ph502.preheader, %.lr.ph502
  %indvars.iv637 = phi i64 [ %i.qr, %.lr.ph502.preheader ], [ %indvars.iv.next638, %.lr.ph502 ] ; 3 uses
  %i.qs = sub nsw i64 %indvars.iv637, %i.mf
  %i.qt = getelementptr inbounds i8, ptr %.5344508, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !61
  %i.qv = getelementptr inbounds nuw i8, ptr %.9509, i64 %indvars.iv637
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !61
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1 ; 3 uses
  %i.qw = load i32, ptr %i.km, align 4, !tbaa !51 ; 2 uses
  %i.qx = add nsw i32 %i.qw, %3
  %i.qy = sext i32 %i.qx to i64
  %i.qz = icmp slt i64 %indvars.iv.next638, %i.qy
  br i1 %i.qz, label %.lr.ph502, label %.loopexit379.loopexit, !llvm.loop !117

bb.h:                                             ; preds = %._crit_edge499
  %i.ra = getelementptr inbounds i8, ptr %.9509, i64 %i.mf
  %i.rb = zext nneg i32 %i.qn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ra, ptr align 1 %.5344508, i64 %i.rb, i1 false)
  %i.rc = load i32, ptr %i.km, align 4, !tbaa !51 ; 2 uses
  %i.rd = add nsw i32 %i.rc, %.0300.lcssa
  br label %.loopexit379

.loopexit379.loopexit:                            ; preds = %.lr.ph502
  %i.re = trunc nsw i64 %indvars.iv.next638 to i32
  br label %.loopexit379

.loopexit379:                                     ; preds = %.loopexit379.loopexit, %.preheader378, %bb.h
  %i.rf = phi i32 [ %i.rc, %bb.h ], [ %i.qn, %.preheader378 ], [ %i.qw, %.loopexit379.loopexit ]
  %.2302 = phi i32 [ %i.rd, %bb.h ], [ %.0300.lcssa, %.preheader378 ], [ %i.re, %.loopexit379.loopexit ] ; 3 uses
  %i.rg = icmp slt i32 %.2302, %i.b
  br i1 %i.rg, label %.lr.ph506.preheader, label %._crit_edge507

.lr.ph506.preheader:                              ; preds = %.loopexit379
  %i.rh = sext i32 %.2302 to i64                  ; 5 uses
  %i.ri = sub nsw i64 %i.mg, %i.rh
  %xtraiter954 = and i64 %i.ri, 1
  %lcmp.mod955.not = icmp eq i64 %xtraiter954, 0
  br i1 %lcmp.mod955.not, label %.lr.ph506.prol.loopexit, label %.lr.ph506.prol

.lr.ph506.prol:                                   ; preds = %.lr.ph506.preheader
  %i.rj = load i32, ptr %i.km, align 4, !tbaa !51
  %factor374.prol = shl i32 %i.rj, 1
  %.neg372.prol = sub i32 %3, %.2302
  %i.rk = add i32 %.neg372.prol, %factor374.prol
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr i8, ptr %.5344508, i64 %i.rl
  %i.rn = getelementptr i8, ptr %i.rm, i64 -2
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !61
  %i.rp = getelementptr inbounds i8, ptr %.9509, i64 %i.rh
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !61
  %indvars.iv.next641.prol = add nsw i64 %i.rh, 1
  br label %.lr.ph506.prol.loopexit

.lr.ph506.prol.loopexit:                          ; preds = %.lr.ph506.prol, %.lr.ph506.preheader
  %indvars.iv640.unr = phi i64 [ %i.rh, %.lr.ph506.preheader ], [ %indvars.iv.next641.prol, %.lr.ph506.prol ]
  %i.rq = icmp eq i64 %i.mj, %i.rh
  br i1 %i.rq, label %._crit_edge507.loopexit, label %.lr.ph506

.lr.ph506:                                        ; preds = %.lr.ph506.prol.loopexit, %.lr.ph506
  %indvars.iv640 = phi i64 [ %indvars.iv.next641.1, %.lr.ph506 ], [ %indvars.iv640.unr, %.lr.ph506.prol.loopexit ] ; 4 uses
  %i.rr = load i32, ptr %i.km, align 4, !tbaa !51
  %factor374 = shl i32 %i.rr, 1
  %i.rs = trunc nsw i64 %indvars.iv640 to i32
  %.neg372 = sub i32 %3, %i.rs
  %i.rt = add i32 %.neg372, %factor374
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr i8, ptr %.5344508, i64 %i.ru
  %i.rw = getelementptr i8, ptr %i.rv, i64 -2
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !61
  %i.ry = getelementptr inbounds i8, ptr %.9509, i64 %indvars.iv640
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !61
  %indvars.iv.next641 = add nsw i64 %indvars.iv640, 1 ; 2 uses
  %i.rz = load i32, ptr %i.km, align 4, !tbaa !51
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22copy_make_border_imageItEEvRKNS_3MatERS1_iiiT_:bb.a
  %min.epilog.iters.check816 = icmp eq i64 %i.dq, 0
  br i1 %min.epilog.iters.check816, label %.lr.ph418.preheader, label %vec.epilog.ph817, !prof !68

vec.epilog.ph817:                                 ; preds = %vector.main.loop.iter.check802, %vec.epilog.iter.check814
  %vec.epilog.resume.val818 = phi i64 [ %n.vec805, %vec.epilog.iter.check814 ], [ 0, %vector.main.loop.iter.check802 ]
  %n.vec819 = and i64 %i.dp, -4                   ; 3 uses
  %i.du = add nsw i64 %n.vec819, %i.do
  %invariant.gep1635 = getelementptr [2 x i8], ptr %.1336421, i64 %i.do
  br label %vec.epilog.vector.body822

vec.epilog.vector.body822:                        ; preds = %vec.epilog.vector.body822, %vec.epilog.ph817
  %index823 = phi i64 [ %vec.epilog.resume.val818, %vec.epilog.ph817 ], [ %index.next824, %vec.epilog.vector.body822 ] ; 2 uses
  %gep1636 = getelementptr [2 x i8], ptr %invariant.gep1635, i64 %index823
  store <4 x i16> %broadcast.splat821, ptr %gep1636, align 2, !tbaa !67
  %index.next824 = add nuw i64 %index823, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next824, %n.vec819
  br i1 %i.dv, label %vec.epilog.middle.block825, label %vec.epilog.vector.body822, !llvm.loop !154

vec.epilog.middle.block825:                       ; preds = %vec.epilog.vector.body822
  %cmp.n826 = icmp eq i64 %i.dp, %n.vec819
  br i1 %cmp.n826, label %._crit_edge419, label %.lr.ph418.preheader

.lr.ph418.preheader:                              ; preds = %iter.check813, %vec.epilog.iter.check814, %vec.epilog.middle.block825
  %indvars.iv584.ph = phi i64 [ %i.do, %iter.check813 ], [ %i.dr, %vec.epilog.iter.check814 ], [ %i.du, %vec.epilog.middle.block825 ]
  br label %.lr.ph418

.lr.ph418:                                        ; preds = %.lr.ph418.preheader, %.lr.ph418
  %indvars.iv584 = phi i64 [ %indvars.iv.next585, %.lr.ph418 ], [ %indvars.iv584.ph, %.lr.ph418.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds [2 x i8], ptr %.1336421, i64 %indvars.iv584
  store i16 %5, ptr %i.dw, align 2, !tbaa !67
  %indvars.iv.next585 = add nsw i64 %indvars.iv584, 1 ; 2 uses
  %exitcond588.not = icmp eq i64 %indvars.iv.next585, %i.af
  br i1 %exitcond588.not, label %._crit_edge419, label %.lr.ph418, !llvm.loop !155

._crit_edge419:                                   ; preds = %.lr.ph418, %middle.block811, %vec.epilog.middle.block825, %.loopexit401
  %i.dx = sext i32 %i.dm to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %.0339420, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds [2 x i8], ptr %.1336421, i64 %i.af ; 2 uses
  %i.ea = add nuw nsw i32 %.1333422, 1            ; 3 uses
  %i.eb = load i32, ptr %i.y, align 8, !tbaa !52
  %i.ec = add nsw i32 %i.eb, %2
  %i.ed = icmp slt i32 %i.ea, %i.ec
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ed, label %.preheader402, label %.preheader398, !llvm.loop !156

.loopexit399:                                     ; preds = %._crit_edge428.us, %.preheader397.preheader, %.preheader398, %bb.a
  %.1340 = phi ptr [ %i.e, %bb.a ], [ %.0339.lcssa, %.preheader398 ], [ %.0339.lcssa, %.preheader397.preheader ], [ %.0339.lcssa, %._crit_edge428.us ] ; 14 uses
  %.3338 = phi ptr [ %i.f, %bb.a ], [ %.1336.lcssa, %.preheader398 ], [ %scevgep589, %.preheader397.preheader ], [ %i.bh, %._crit_edge428.us ] ; 4 uses
  %.3338946 = ptrtoaddr ptr %.3338 to i64
  %.1340947 = ptrtoaddr ptr %.1340 to i64
  %i.ee = icmp eq i32 %4, 1
  br i1 %i.ee, label %.preheader396, label %.loopexit388

.preheader396:                                    ; preds = %.loopexit399
  %i.ef = icmp sgt i32 %2, 0
  br i1 %i.ef, label %.preheader395.lr.ph, label %.preheader392

.preheader395.lr.ph:                              ; preds = %.preheader396
  %i.eg = icmp sgt i32 %3, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ei = sext i32 %3 to i64                      ; 9 uses
  %i.ej = sext i32 %i.b to i64                    ; 4 uses
  %wide.trip.count599 = zext i32 %3 to i64        ; 6 uses
  %i.ek = shl nsw i64 %i.ej, 1
  %i.el = shl nsw i64 %i.ei, 1
  %i.em = add i64 %i.el, %.3338946
  %i.en = sub i64 %i.em, %.1340947
  %smax948 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %i.eo = zext nneg i32 %smax948 to i64
  %min.iters.check977 = icmp ult i32 %3, 4
  %min.iters.check979 = icmp ult i32 %3, 16
  %i.ep = and i64 %wide.trip.count599, 12
  %n.vec981 = and i64 %wide.trip.count599, 2147483632 ; 4 uses
  %cmp.n988 = icmp eq i64 %n.vec981, %wide.trip.count599
  %min.epilog.iters.check992 = icmp eq i64 %i.ep, 0
  %n.vec995 = and i64 %wide.trip.count599, 2147483644 ; 3 uses
  %cmp.n1002 = icmp eq i64 %n.vec995, %wide.trip.count599
  %invariant.op1641 = add i64 %i.en, -1
  br label %.preheader395

.preheader395:                                    ; preds = %.preheader395.lr.ph, %._crit_edge443
  %indvar944 = phi i64 [ 0, %.preheader395.lr.ph ], [ %indvar.next945, %._crit_edge443 ] ; 2 uses
  %.0323445 = phi i32 [ 0, %.preheader395.lr.ph ], [ %i.hx, %._crit_edge443 ]
  %.4444 = phi ptr [ %.3338, %.preheader395.lr.ph ], [ %i.hw, %._crit_edge443 ] ; 15 uses
  br i1 %i.eg, label %iter.check989, label %._crit_edge435

iter.check989:                                    ; preds = %.preheader395
  %.pre = load i16, ptr %.1340, align 2, !tbaa !67 ; 3 uses
  br i1 %min.iters.check977, label %.lr.ph434.preheader, label %vector.main.loop.iter.check978

vector.main.loop.iter.check978:                   ; preds = %iter.check989
  br i1 %min.iters.check979, label %vec.epilog.ph993, label %vector.ph980

vector.ph980:                                     ; preds = %vector.main.loop.iter.check978
  %broadcast.splatinsert982 = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat983 = shufflevector <8 x i16> %broadcast.splatinsert982, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body984

vector.body984:                                   ; preds = %vector.ph980, %vector.body984
  %index985 = phi i64 [ 0, %vector.ph980 ], [ %index.next986, %vector.body984 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %index985 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <8 x i16> %broadcast.splat983, ptr %i.eq, align 2, !tbaa !67
  store <8 x i16> %broadcast.splat983, ptr %i.er, align 2, !tbaa !67
  %index.next986 = add nuw i64 %index985, 16      ; 2 uses
  %i.es = icmp eq i64 %index.next986, %n.vec981
  br i1 %i.es, label %middle.block987, label %vector.body984, !llvm.loop !157

middle.block987:                                  ; preds = %vector.body984
  br i1 %cmp.n988, label %._crit_edge435, label %vec.epilog.iter.check990

vec.epilog.iter.check990:                         ; preds = %middle.block987
  br i1 %min.epilog.iters.check992, label %.lr.ph434.preheader, label %vec.epilog.ph993, !prof !68

vec.epilog.ph993:                                 ; preds = %vector.main.loop.iter.check978, %vec.epilog.iter.check990
  %vec.epilog.resume.val994 = phi i64 [ %n.vec981, %vec.epilog.iter.check990 ], [ 0, %vector.main.loop.iter.check978 ]
  %broadcast.splatinsert996 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat997 = shufflevector <4 x i16> %broadcast.splatinsert996, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body998

vec.epilog.vector.body998:                        ; preds = %vec.epilog.vector.body998, %vec.epilog.ph993
  %index999 = phi i64 [ %vec.epilog.resume.val994, %vec.epilog.ph993 ], [ %index.next1000, %vec.epilog.vector.body998 ] ; 2 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %index999
  store <4 x i16> %broadcast.splat997, ptr %i.et, align 2, !tbaa !67
  %index.next1000 = add nuw i64 %index999, 4      ; 2 uses
  %i.eu = icmp eq i64 %index.next1000, %n.vec995
  br i1 %i.eu, label %vec.epilog.middle.block1001, label %vec.epilog.vector.body998, !llvm.loop !158

vec.epilog.middle.block1001:                      ; preds = %vec.epilog.vector.body998
  br i1 %cmp.n1002, label %._crit_edge435, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %iter.check989, %vec.epilog.iter.check990, %vec.epilog.middle.block1001
  %indvars.iv596.ph = phi i64 [ 0, %iter.check989 ], [ %n.vec981, %vec.epilog.iter.check990 ], [ %n.vec995, %vec.epilog.middle.block1001 ]
  br label %.lr.ph434

.preheader392:                                    ; preds = %._crit_edge443, %.preheader396
  %.4.lcssa = phi ptr [ %.3338, %.preheader396 ], [ %i.hw, %._crit_edge443 ] ; 3 uses
  %.0323.lcssa = phi i32 [ 0, %.preheader396 ], [ %2, %._crit_edge443 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !52
  %i.ex = add nsw i32 %i.ew, %2
  %i.ey = icmp slt i32 %.0323.lcssa, %i.ex
  br i1 %i.ey, label %.preheader391.lr.ph, label %.preheader392.._crit_edge462_crit_edge

.preheader392.._crit_edge462_crit_edge:           ; preds = %.preheader392
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.pre711 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !51 ; 2 uses
  %.pre714 = sext i32 %.pre711 to i64
  br label %._crit_edge462

.preheader391.lr.ph:                              ; preds = %.preheader392
  %.4.lcssa1042 = ptrtoaddr ptr %.4.lcssa to i64
  %i.ez = icmp sgt i32 %3, 0
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.fb = sext i32 %3 to i64                      ; 9 uses
  %i.fc = sext i32 %i.b to i64                    ; 4 uses
  %wide.trip.count618 = zext i32 %3 to i64        ; 6 uses
  %i.fd = shl nsw i64 %i.fb, 1
  %smax1038 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %i.fe = zext nneg i32 %smax1038 to i64          ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 1                ; 2 uses
  %i.fg = shl nsw i64 %i.fc, 1
  %i.fh = add i64 %i.ff, %.4.lcssa1042
  %min.iters.check1071 = icmp ult i32 %3, 4
  %min.iters.check1073 = icmp ult i32 %3, 16
  %i.fi = and i64 %wide.trip.count618, 12
  %n.vec1075 = and i64 %wide.trip.count618, 2147483632 ; 4 uses
  %cmp.n1082 = icmp eq i64 %n.vec1075, %wide.trip.count618
  %min.epilog.iters.check1086 = icmp eq i64 %i.fi, 0
  %n.vec1089 = and i64 %wide.trip.count618, 2147483644 ; 3 uses
  %cmp.n1096 = icmp eq i64 %n.vec1089, %wide.trip.count618
  br label %.preheader391

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %.lr.ph434
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %.lr.ph434 ], [ %indvars.iv596.ph, %.lr.ph434.preheader ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %indvars.iv596
  store i16 %.pre, ptr %i.fj, align 2, !tbaa !67
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge435, label %.lr.ph434, !llvm.loop !159

._crit_edge435:                                   ; preds = %.lr.ph434, %middle.block987, %vec.epilog.middle.block1001, %.preheader395
  %.0319.lcssa = phi i32 [ 0, %.preheader395 ], [ %3, %middle.block987 ], [ %3, %vec.epilog.middle.block1001 ], [ %3, %.lr.ph434 ] ; 4 uses
  %i.fk = load i32, ptr %i.eh, align 4, !tbaa !51 ; 8 uses
  %i.fl = icmp slt i32 %i.fk, 12
  br i1 %i.fl, label %.preheader393, label %bb.c

.preheader393:                                    ; preds = %._crit_edge435
  %i.fm = add nsw i32 %i.fk, %3                   ; 6 uses
  %i.fn = icmp slt i32 %.0319.lcssa, %i.fm
  br i1 %i.fn, label %iter.check963, label %.loopexit394

iter.check963:                                    ; preds = %.preheader393
  %i.fo = zext nneg i32 %.0319.lcssa to i64       ; 6 uses
  %wide.trip.count607 = zext nneg i32 %i.fm to i64 ; 4 uses
  %i.fp = sub nsw i64 %wide.trip.count607, %i.eo  ; 7 uses
  %min.iters.check949 = icmp ult i64 %i.fp, 4
  br i1 %min.iters.check949, label %.lr.ph438.preheader, label %vector.memcheck950

vector.memcheck950:                               ; preds = %iter.check963
  %i.fq = mul i64 %indvar944, %i.ek
  %.reass1642 = add i64 %i.fq, %invariant.op1641
  %diff.check951 = icmp ult i64 %.reass1642, 31
  br i1 %diff.check951, label %.lr.ph438.preheader, label %vector.main.loop.iter.check952

vector.main.loop.iter.check952:                   ; preds = %vector.memcheck950
  %min.iters.check953 = icmp ult i64 %i.fp, 16
  br i1 %min.iters.check953, label %vec.epilog.ph967, label %vector.ph954

vector.ph954:                                     ; preds = %vector.main.loop.iter.check952
  %i.fr = and i64 %i.fp, 12
  %n.vec955 = and i64 %i.fp, -16                  ; 4 uses
  %i.fs = add nsw i64 %n.vec955, %i.fo
  br label %vector.body956

vector.body956:                                   ; preds = %vector.ph954, %vector.body956
  %index957 = phi i64 [ 0, %vector.ph954 ], [ %index.next960, %vector.body956 ] ; 2 uses
  %i.ft = add nuw i64 %index957, %i.fo            ; 2 uses
  %i.fu = sub nsw i64 %i.ft, %i.ei
  %i.fv = getelementptr inbounds [2 x i8], ptr %.1340, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load958 = load <8 x i16>, ptr %i.fv, align 2, !tbaa !67
  %wide.load959 = load <8 x i16>, ptr %i.fw, align 2, !tbaa !67
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %i.ft ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <8 x i16> %wide.load958, ptr %i.fx, align 2, !tbaa !67
  store <8 x i16> %wide.load959, ptr %i.fy, align 2, !tbaa !67
  %index.next960 = add nuw i64 %index957, 16      ; 2 uses
  %i.fz = icmp eq i64 %index.next960, %n.vec955
  br i1 %i.fz, label %middle.block961, label %vector.body956, !llvm.loop !160

middle.block961:                                  ; preds = %vector.body956
  %cmp.n962 = icmp eq i64 %i.fp, %n.vec955
  br i1 %cmp.n962, label %.loopexit394, label %vec.epilog.iter.check964

vec.epilog.iter.check964:                         ; preds = %middle.block961
  %min.epilog.iters.check966 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check966, label %.lr.ph438.preheader, label %vec.epilog.ph967, !prof !68

vec.epilog.ph967:                                 ; preds = %vector.main.loop.iter.check952, %vec.epilog.iter.check964
  %vec.epilog.resume.val968 = phi i64 [ %n.vec955, %vec.epilog.iter.check964 ], [ 0, %vector.main.loop.iter.check952 ]
  %n.vec969 = and i64 %i.fp, -4                   ; 3 uses
  %i.ga = add nsw i64 %n.vec969, %i.fo
  br label %vec.epilog.vector.body970

vec.epilog.vector.body970:                        ; preds = %vec.epilog.vector.body970, %vec.epilog.ph967
  %index971 = phi i64 [ %vec.epilog.resume.val968, %vec.epilog.ph967 ], [ %index.next973, %vec.epilog.vector.body970 ] ; 2 uses
  %i.gb = add nuw i64 %index971, %i.fo            ; 2 uses
  %i.gc = sub nsw i64 %i.gb, %i.ei
  %i.gd = getelementptr inbounds [2 x i8], ptr %.1340, i64 %i.gc
  %wide.load972 = load <4 x i16>, ptr %i.gd, align 2, !tbaa !67
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %i.gb
  store <4 x i16> %wide.load972, ptr %i.ge, align 2, !tbaa !67
  %index.next973 = add nuw i64 %index971, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next973, %n.vec969
  br i1 %i.gf, label %vec.epilog.middle.block974, label %vec.epilog.vector.body970, !llvm.loop !161

vec.epilog.middle.block974:                       ; preds = %vec.epilog.vector.body970
  %cmp.n975 = icmp eq i64 %i.fp, %n.vec969
  br i1 %cmp.n975, label %.loopexit394, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %iter.check963, %vector.memcheck950, %vec.epilog.iter.check964, %vec.epilog.middle.block974
  %indvars.iv604.ph = phi i64 [ %i.fo, %iter.check963 ], [ %i.fo, %vector.memcheck950 ], [ %i.fs, %vec.epilog.iter.check964 ], [ %i.ga, %vec.epilog.middle.block974 ] ; 4 uses
  %i.gg = sub nsw i64 %wide.trip.count607, %indvars.iv604.ph
  %xtraiter1581 = and i64 %i.gg, 3                ; 2 uses
  %lcmp.mod1582.not = icmp eq i64 %xtraiter1581, 0
  br i1 %lcmp.mod1582.not, label %.lr.ph438.prol.loopexit, label %.lr.ph438.prol

.lr.ph438.prol:                                   ; preds = %.lr.ph438.preheader, %.lr.ph438.prol
  %indvars.iv604.prol = phi i64 [ %indvars.iv.next605.prol, %.lr.ph438.prol ], [ %indvars.iv604.ph, %.lr.ph438.preheader ] ; 3 uses
  %prol.iter1583 = phi i64 [ %prol.iter1583.next, %.lr.ph438.prol ], [ 0, %.lr.ph438.preheader ]
  %i.gh = sub nsw i64 %indvars.iv604.prol, %i.ei
  %i.gi = getelementptr inbounds [2 x i8], ptr %.1340, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !67
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %indvars.iv604.prol
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !67
  %indvars.iv.next605.prol = add nuw nsw i64 %indvars.iv604.prol, 1 ; 2 uses
  %prol.iter1583.next = add i64 %prol.iter1583, 1 ; 2 uses
  %prol.iter1583.cmp.not = icmp eq i64 %prol.iter1583.next, %xtraiter1581
  br i1 %prol.iter1583.cmp.not, label %.lr.ph438.prol.loopexit, label %.lr.ph438.prol, !llvm.loop !162

.lr.ph438.prol.loopexit:                          ; preds = %.lr.ph438.prol, %.lr.ph438.preheader
  %indvars.iv604.unr = phi i64 [ %indvars.iv604.ph, %.lr.ph438.preheader ], [ %indvars.iv.next605.prol, %.lr.ph438.prol ]
  %i.gl = sub nsw i64 %indvars.iv604.ph, %wide.trip.count607
  %i.gm = icmp ugt i64 %i.gl, -4
  br i1 %i.gm, label %.loopexit394, label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.prol.loopexit, %.lr.ph438
  %indvars.iv604 = phi i64 [ %indvars.iv.next605.3, %.lr.ph438 ], [ %indvars.iv604.unr, %.lr.ph438.prol.loopexit ] ; 6 uses
  %i.gn = sub nsw i64 %indvars.iv604, %i.ei
  %i.go = getelementptr inbounds [2 x i8], ptr %.1340, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !67
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %indvars.iv604
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !67
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1 ; 2 uses
  %i.gr = sub nsw i64 %indvars.iv.next605, %i.ei
  %i.gs = getelementptr inbounds [2 x i8], ptr %.1340, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !67
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %indvars.iv.next605
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !67
  %indvars.iv.next605.1 = add nuw nsw i64 %indvars.iv604, 2 ; 2 uses
  %i.gv = sub nsw i64 %indvars.iv.next605.1, %i.ei
  %i.gw = getelementptr inbounds [2 x i8], ptr %.1340, i64 %i.gv
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !67
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %indvars.iv.next605.1
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !67
  %indvars.iv.next605.2 = add nuw nsw i64 %indvars.iv604, 3 ; 2 uses
  %i.gz = sub nsw i64 %indvars.iv.next605.2, %i.ei
  %i.ha = getelementptr inbounds [2 x i8], ptr %.1340, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !67
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.4444, i64 %indvars.iv.next605.2
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !67
  %indvars.iv.next605.3 = add nuw nsw i64 %indvars.iv604, 4 ; 2 uses
  %exitcond608.not.3 = icmp eq i64 %indvars.iv.next605.3, %wide.trip.count607
  br i1 %exitcond608.not.3, label %.loopexit394, label %.lr.ph438, !llvm.loop !163

bb.c:                                             ; preds = %._crit_edge435
  %i.hd = getelementptr inbounds [2 x i8], ptr %.4444, i64 %i.ei
  %i.he = shl nuw i32 %i.fk, 1
  %i.hf = zext i32 %i.he to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hd, ptr align 2 %.1340, i64 %i.hf, i1 false)
  %i.hg = load i32, ptr %i.eh, align 4, !tbaa !51 ; 2 uses
  %i.hh = add nsw i32 %i.hg, %.0319.lcssa
  br label %.loopexit394

.loopexit394:                                     ; preds = %.lr.ph438.prol.loopexit, %.lr.ph438, %middle.block961, %vec.epilog.middle.block974, %.preheader393, %bb.c
  %i.hi = phi i32 [ %i.hg, %bb.c ], [ %i.fk, %.preheader393 ], [ %i.fk, %middle.block961 ], [ %i.fk, %vec.epilog.middle.block974 ], [ %i.fk, %.lr.ph438 ], [ %i.fk, %.lr.ph438.prol.loopexit ]
  %.2321 = phi i32 [ %i.hh, %bb.c ], [ %.0319.lcssa, %.preheader393 ], [ %i.fm, %middle.block961 ], [ %i.fm, %vec.epilog.middle.block974 ], [ %i.fm, %.lr.ph438 ], [ %i.fm, %.lr.ph438.prol.loopexit ] ; 2 uses
  %i.hj = icmp slt i32 %.2321, %i.b
  br i1 %i.hj, label %iter.check923, label %._crit_edge443

iter.check923:                                    ; preds = %.loopexit394
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr [2 x i8], ptr %.1340, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -2
  %i.hn = sext i32 %.2321 to i64                  ; 6 uses
  %.pre708 = load i16, ptr %i.hm, align 2, !tbaa !67 ; 3 uses
  %i.ho = sub nsw i64 %i.ej, %i.hn                ; 7 uses
  %min.iters.check911 = icmp ult i64 %i.ho, 4
  br i1 %min.iters.check911, label %vec.epilog.scalar.ph925.preheader, label %vector.main.loop.iter.check912

vector.main.loop.iter.check912:                   ; preds = %iter.check923
  %min.iters.check913 = icmp ult i64 %i.ho, 16
  br i1 %min.iters.check913, label %vec.epilog.ph927, label %vector.ph914

vector.ph914:                                     ; preds = %vector.main.loop.iter.check912
  %i.hp = and i64 %i.ho, 12
  %n.vec915 = and i64 %i.ho, -16                  ; 4 uses
  %i.hq = add nsw i64 %n.vec915, %i.hn
  %broadcast.splatinsert916 = insertelement <8 x i16> poison, i16 %.pre708, i64 0
  %broadcast.splat917 = shufflevector <8 x i16> %broadcast.splatinsert916, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep1637 = getelementptr [2 x i8], ptr %.4444, i64 %i.hn
  br label %vector.body918

vector.body918:                                   ; preds = %vector.ph914, %vector.body918
  %index919 = phi i64 [ 0, %vector.ph914 ], [ %index.next920, %vector.body918 ] ; 2 uses
  %gep1638 = getelementptr [2 x i8], ptr %invariant.gep1637, i64 %index919 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %gep1638, i64 16
  store <8 x i16> %broadcast.splat917, ptr %gep1638, align 2, !tbaa !67
  store <8 x i16> %broadcast.splat917, ptr %i.hr, align 2, !tbaa !67
  %index.next920 = add nuw i64 %index919, 16      ; 2 uses
  %i.hs = icmp eq i64 %index.next920, %n.vec915
  br i1 %i.hs, label %middle.block921, label %vector.body918, !llvm.loop !164

middle.block921:                                  ; preds = %vector.body918
  %cmp.n922 = icmp eq i64 %i.ho, %n.vec915
  br i1 %cmp.n922, label %._crit_edge443, label %vec.epilog.iter.check924

vec.epilog.iter.check924:                         ; preds = %middle.block921
  %min.epilog.iters.check926 = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check926, label %vec.epilog.scalar.ph925.preheader, label %vec.epilog.ph927, !prof !68

vec.epilog.ph927:                                 ; preds = %vector.main.loop.iter.check912, %vec.epilog.iter.check924
  %vec.epilog.resume.val928 = phi i64 [ %n.vec915, %vec.epilog.iter.check924 ], [ 0, %vector.main.loop.iter.check912 ]
  %n.vec929 = and i64 %i.ho, -4                   ; 3 uses
  %i.ht = add nsw i64 %n.vec929, %i.hn
  %broadcast.splatinsert930 = insertelement <4 x i16> poison, i16 %.pre708, i64 0
  %broadcast.splat931 = shufflevector <4 x i16> %broadcast.splatinsert930, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep1639 = getelementptr [2 x i8], ptr %.4444, i64 %i.hn
  br label %vec.epilog.vector.body932

vec.epilog.vector.body932:                        ; preds = %vec.epilog.vector.body932, %vec.epilog.ph927
  %index933 = phi i64 [ %vec.epilog.resume.val928, %vec.epilog.ph927 ], [ %index.next934, %vec.epilog.vector.body932 ] ; 2 uses
  %gep1640 = getelementptr [2 x i8], ptr %invariant.gep1639, i64 %index933
  store <4 x i16> %broadcast.splat931, ptr %gep1640, align 2, !tbaa !67
  %index.next934 = add nuw i64 %index933, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next934, %n.vec929
  br i1 %i.hu, label %vec.epilog.middle.block935, label %vec.epilog.vector.body932, !llvm.loop !165

vec.epilog.middle.block935:                       ; preds = %vec.epilog.vector.body932
  %cmp.n936 = icmp eq i64 %i.ho, %n.vec929
  br i1 %cmp.n936, label %._crit_edge443, label %vec.epilog.scalar.ph925.preheader

vec.epilog.scalar.ph925.preheader:                ; preds = %iter.check923, %vec.epilog.iter.check924, %vec.epilog.middle.block935
  %indvars.iv609.ph = phi i64 [ %i.hn, %iter.check923 ], [ %i.hq, %vec.epilog.iter.check924 ], [ %i.ht, %vec.epilog.middle.block935 ]
  br label %vec.epilog.scalar.ph925

vec.epilog.scalar.ph925:                          ; preds = %vec.epilog.scalar.ph925.preheader, %vec.epilog.scalar.ph925
  %indvars.iv609 = phi i64 [ %indvars.iv.next610, %vec.epilog.scalar.ph925 ], [ %indvars.iv609.ph, %vec.epilog.scalar.ph925.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds [2 x i8], ptr %.4444, i64 %indvars.iv609
  store i16 %.pre708, ptr %i.hv, align 2, !tbaa !67
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22copy_make_border_imageItEEvRKNS_3MatERS1_iiiT_:bb.a
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %.4343491, i64 %i.ra
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !67
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv652
  store i16 %i.rc, ptr %i.rd, align 2, !tbaa !67
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1 ; 2 uses
  %i.re = sub nuw nsw i64 %i.ow, %indvars.iv.next653
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %.4343491, i64 %i.re
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !67
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv.next653
  store i16 %i.rg, ptr %i.rh, align 2, !tbaa !67
  %indvars.iv.next653.1 = add nuw nsw i64 %indvars.iv652, 2 ; 2 uses
  %i.ri = sub nuw nsw i64 %i.ow, %indvars.iv.next653.1
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %.4343491, i64 %i.ri
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !67
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv.next653.1
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !67
  %indvars.iv.next653.2 = add nuw nsw i64 %indvars.iv652, 3 ; 2 uses
  %i.rm = sub nuw nsw i64 %i.ow, %indvars.iv.next653.2
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %.4343491, i64 %i.rm
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !67
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv.next653.2
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !67
  %indvars.iv.next653.3 = add nuw nsw i64 %indvars.iv652, 4 ; 2 uses
  %exitcond656.not.3 = icmp eq i64 %indvars.iv.next653.3, %i.ow
  br i1 %exitcond656.not.3, label %._crit_edge482, label %.lr.ph481, !llvm.loop !196

._crit_edge482:                                   ; preds = %.lr.ph481.prol.loopexit, %.lr.ph481, %middle.block1291, %vec.epilog.middle.block1305, %.preheader384
  %.0304.lcssa = phi i32 [ 0, %.preheader384 ], [ %3, %middle.block1291 ], [ %3, %vec.epilog.middle.block1305 ], [ %3, %.lr.ph481 ], [ %3, %.lr.ph481.prol.loopexit ] ; 4 uses
  %i.rq = icmp slt i32 %i.pk, 12
  br i1 %i.rq, label %.preheader382, label %bb.g

.preheader382:                                    ; preds = %._crit_edge482
  %i.rr = add nsw i32 %i.pk, %3                   ; 6 uses
  %i.rs = icmp slt i32 %.0304.lcssa, %i.rr
  br i1 %i.rs, label %iter.check1253, label %.loopexit383

iter.check1253:                                   ; preds = %.preheader382
  %i.rt = zext nneg i32 %.0304.lcssa to i64       ; 6 uses
  %wide.trip.count663 = zext nneg i32 %i.rr to i64 ; 4 uses
  %i.ru = sub nsw i64 %wide.trip.count663, %i.oz  ; 7 uses
  %min.iters.check1239 = icmp ult i64 %i.ru, 4
  br i1 %min.iters.check1239, label %.lr.ph485.preheader, label %vector.memcheck1240

vector.memcheck1240:                              ; preds = %iter.check1253
  %i.rv = mul nsw i64 %indvar1200, %i.ox
  %i.rw = add i64 %i.pb, %i.rv
  %i.rx = add i64 %i.pa, %.43434911237
  %.neg1560 = sub i64 %i.oy, %i.rx
  %i.ry = add i64 %.neg1560, %i.rw
  %i.rz = add i64 %i.ry, -1
  %diff.check1241 = icmp ult i64 %i.rz, 31
  br i1 %diff.check1241, label %.lr.ph485.preheader, label %vector.main.loop.iter.check1242

vector.main.loop.iter.check1242:                  ; preds = %vector.memcheck1240
  %min.iters.check1243 = icmp ult i64 %i.ru, 16
  br i1 %min.iters.check1243, label %vec.epilog.ph1257, label %vector.ph1244

vector.ph1244:                                    ; preds = %vector.main.loop.iter.check1242
  %i.sa = and i64 %i.ru, 12
  %n.vec1245 = and i64 %i.ru, -16                 ; 4 uses
  %i.sb = add nsw i64 %n.vec1245, %i.rt
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.ph1244, %vector.body1246
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1250, %vector.body1246 ] ; 2 uses
  %i.sc = add nuw i64 %index1247, %i.rt           ; 2 uses
  %i.sd = sub nsw i64 %i.sc, %i.ou
  %i.se = getelementptr inbounds [2 x i8], ptr %.4343491, i64 %i.sd ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %wide.load1248 = load <8 x i16>, ptr %i.se, align 2, !tbaa !67
  %wide.load1249 = load <8 x i16>, ptr %i.sf, align 2, !tbaa !67
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %i.sc ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store <8 x i16> %wide.load1248, ptr %i.sg, align 2, !tbaa !67
  store <8 x i16> %wide.load1249, ptr %i.sh, align 2, !tbaa !67
  %index.next1250 = add nuw i64 %index1247, 16    ; 2 uses
  %i.si = icmp eq i64 %index.next1250, %n.vec1245
  br i1 %i.si, label %middle.block1251, label %vector.body1246, !llvm.loop !197

middle.block1251:                                 ; preds = %vector.body1246
  %cmp.n1252 = icmp eq i64 %i.ru, %n.vec1245
  br i1 %cmp.n1252, label %.loopexit383, label %vec.epilog.iter.check1254

vec.epilog.iter.check1254:                        ; preds = %middle.block1251
  %min.epilog.iters.check1256 = icmp eq i64 %i.sa, 0
  br i1 %min.epilog.iters.check1256, label %.lr.ph485.preheader, label %vec.epilog.ph1257, !prof !68

vec.epilog.ph1257:                                ; preds = %vector.main.loop.iter.check1242, %vec.epilog.iter.check1254
  %vec.epilog.resume.val1258 = phi i64 [ %n.vec1245, %vec.epilog.iter.check1254 ], [ 0, %vector.main.loop.iter.check1242 ]
  %n.vec1259 = and i64 %i.ru, -4                  ; 3 uses
  %i.sj = add nsw i64 %n.vec1259, %i.rt
  br label %vec.epilog.vector.body1260

vec.epilog.vector.body1260:                       ; preds = %vec.epilog.vector.body1260, %vec.epilog.ph1257
  %index1261 = phi i64 [ %vec.epilog.resume.val1258, %vec.epilog.ph1257 ], [ %index.next1263, %vec.epilog.vector.body1260 ] ; 2 uses
  %i.sk = add nuw i64 %index1261, %i.rt           ; 2 uses
  %i.sl = sub nsw i64 %i.sk, %i.ou
  %i.sm = getelementptr inbounds [2 x i8], ptr %.4343491, i64 %i.sl
  %wide.load1262 = load <4 x i16>, ptr %i.sm, align 2, !tbaa !67
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %i.sk
  store <4 x i16> %wide.load1262, ptr %i.sn, align 2, !tbaa !67
  %index.next1263 = add nuw i64 %index1261, 4     ; 2 uses
  %i.so = icmp eq i64 %index.next1263, %n.vec1259
  br i1 %i.so, label %vec.epilog.middle.block1264, label %vec.epilog.vector.body1260, !llvm.loop !198

vec.epilog.middle.block1264:                      ; preds = %vec.epilog.vector.body1260
  %cmp.n1265 = icmp eq i64 %i.ru, %n.vec1259
  br i1 %cmp.n1265, label %.loopexit383, label %.lr.ph485.preheader

.lr.ph485.preheader:                              ; preds = %iter.check1253, %vector.memcheck1240, %vec.epilog.iter.check1254, %vec.epilog.middle.block1264
  %indvars.iv660.ph = phi i64 [ %i.rt, %iter.check1253 ], [ %i.rt, %vector.memcheck1240 ], [ %i.sb, %vec.epilog.iter.check1254 ], [ %i.sj, %vec.epilog.middle.block1264 ] ; 4 uses
  %i.sp = sub nsw i64 %wide.trip.count663, %indvars.iv660.ph
  %xtraiter1593 = and i64 %i.sp, 3                ; 2 uses
  %lcmp.mod1594.not = icmp eq i64 %xtraiter1593, 0
  br i1 %lcmp.mod1594.not, label %.lr.ph485.prol.loopexit, label %.lr.ph485.prol

.lr.ph485.prol:                                   ; preds = %.lr.ph485.preheader, %.lr.ph485.prol
  %indvars.iv660.prol = phi i64 [ %indvars.iv.next661.prol, %.lr.ph485.prol ], [ %indvars.iv660.ph, %.lr.ph485.preheader ] ; 3 uses
  %prol.iter1595 = phi i64 [ %prol.iter1595.next, %.lr.ph485.prol ], [ 0, %.lr.ph485.preheader ]
  %i.sq = sub nsw i64 %indvars.iv660.prol, %i.ou
  %i.sr = getelementptr inbounds [2 x i8], ptr %.4343491, i64 %i.sq
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !67
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv660.prol
  store i16 %i.ss, ptr %i.st, align 2, !tbaa !67
  %indvars.iv.next661.prol = add nuw nsw i64 %indvars.iv660.prol, 1 ; 2 uses
  %prol.iter1595.next = add i64 %prol.iter1595, 1 ; 2 uses
  %prol.iter1595.cmp.not = icmp eq i64 %prol.iter1595.next, %xtraiter1593
  br i1 %prol.iter1595.cmp.not, label %.lr.ph485.prol.loopexit, label %.lr.ph485.prol, !llvm.loop !199

.lr.ph485.prol.loopexit:                          ; preds = %.lr.ph485.prol, %.lr.ph485.preheader
  %indvars.iv660.unr = phi i64 [ %indvars.iv660.ph, %.lr.ph485.preheader ], [ %indvars.iv.next661.prol, %.lr.ph485.prol ]
  %i.su = sub nsw i64 %indvars.iv660.ph, %wide.trip.count663
  %i.sv = icmp ugt i64 %i.su, -4
  br i1 %i.sv, label %.loopexit383, label %.lr.ph485

.lr.ph485:                                        ; preds = %.lr.ph485.prol.loopexit, %.lr.ph485
  %indvars.iv660 = phi i64 [ %indvars.iv.next661.3, %.lr.ph485 ], [ %indvars.iv660.unr, %.lr.ph485.prol.loopexit ] ; 6 uses
  %i.sw = sub nsw i64 %indvars.iv660, %i.ou
  %i.sx = getelementptr inbounds [2 x i8], ptr %.4343491, i64 %i.sw
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !67
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv660
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !67
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %i.ta = sub nsw i64 %indvars.iv.next661, %i.ou
  %i.tb = getelementptr inbounds [2 x i8], ptr %.4343491, i64 %i.ta
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !67
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv.next661
  store i16 %i.tc, ptr %i.td, align 2, !tbaa !67
  %indvars.iv.next661.1 = add nuw nsw i64 %indvars.iv660, 2 ; 2 uses
  %i.te = sub nsw i64 %indvars.iv.next661.1, %i.ou
  %i.tf = getelementptr inbounds [2 x i8], ptr %.4343491, i64 %i.te
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !67
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv.next661.1
  store i16 %i.tg, ptr %i.th, align 2, !tbaa !67
  %indvars.iv.next661.2 = add nuw nsw i64 %indvars.iv660, 3 ; 2 uses
  %i.ti = sub nsw i64 %indvars.iv.next661.2, %i.ou
  %i.tj = getelementptr inbounds [2 x i8], ptr %.4343491, i64 %i.ti
  %i.tk = load i16, ptr %i.tj, align 2, !tbaa !67
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %.8492, i64 %indvars.iv.next661.2
  store i16 %i.tk, ptr %i.tl, align 2, !tbaa !67
  %indvars.iv.next661.3 = add nuw nsw i64 %indvars.iv660, 4 ; 2 uses
  %exitcond664.not.3 = icmp eq i64 %indvars.iv.next661.3, %wide.trip.count663
  br i1 %exitcond664.not.3, label %.loopexit383, label %.lr.ph485, !llvm.loop !200

bb.g:                                             ; preds = %._crit_edge482
  %i.tm = getelementptr inbounds [2 x i8], ptr %.8492, i64 %i.ou
  %i.tn = shl nuw i32 %i.pk, 1
  %i.to = zext i32 %i.tn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tm, ptr align 2 %.4343491, i64 %i.to, i1 false)
  %i.tp = load i32, ptr %i.on, align 4, !tbaa !51 ; 2 uses
  %i.tq = add nsw i32 %i.tp, %.0304.lcssa
  br label %.loopexit383

.loopexit383:                                     ; preds = %.lr.ph485.prol.loopexit, %.lr.ph485, %middle.block1251, %vec.epilog.middle.block1264, %.preheader382, %bb.g
  %i.tr = phi i32 [ %i.tp, %bb.g ], [ %i.pk, %.preheader382 ], [ %i.pk, %middle.block1251 ], [ %i.pk, %vec.epilog.middle.block1264 ], [ %i.pk, %.lr.ph485 ], [ %i.pk, %.lr.ph485.prol.loopexit ] ; 4 uses
  %.2306 = phi i32 [ %i.tq, %bb.g ], [ %.0304.lcssa, %.preheader382 ], [ %i.rr, %middle.block1251 ], [ %i.rr, %vec.epilog.middle.block1264 ], [ %i.rr, %.lr.ph485 ], [ %i.rr, %.lr.ph485.prol.loopexit ] ; 4 uses
  %i.ts = icmp slt i32 %.2306, %i.b
  br i1 %i.ts, label %iter.check1216, label %._crit_edge490

iter.check1216:                                   ; preds = %.loopexit383
  %factor375 = shl i32 %i.tr, 1                   ; 3 uses
  %invariant.op = add i32 %3, %factor375          ; 7 uses
  %i.tt = sext i32 %.2306 to i64                  ; 11 uses
  %i.tu = sub nsw i64 %i.ov, %i.tt                ; 7 uses
  %min.iters.check1202 = icmp ult i64 %i.tu, 4
  br i1 %min.iters.check1202, label %vec.epilog.scalar.ph1218.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check1216
  %i.tv = xor i64 %i.tt, -1
  %i.tw = add nsw i64 %i.tv, %i.ov                ; 2 uses
  %i.tx = add i32 %3, %factor375
  %i.ty = sub i32 %i.tx, %.2306                   ; 2 uses
  %i.tz = trunc i64 %i.tw to i32
  %i.ua = sub i32 %i.ty, %i.tz
  %i.ub = icmp sgt i32 %i.ua, %i.ty
  %i.uc = icmp ugt i64 %i.tw, 4294967295
  %i.ud = or i1 %i.ub, %i.uc
  br i1 %i.ud, label %vec.epilog.scalar.ph1218.preheader, label %vector.memcheck1203

vector.memcheck1203:                              ; preds = %vector.scevcheck
  %i.ue = mul i64 %indvar1200, %i.ox              ; 2 uses
  %i.uf = shl nsw i64 %i.tt, 1
  %i.ug = getelementptr i8, ptr %.7, i64 %i.ue
  %i.uh = getelementptr i8, ptr %i.ug, i64 %i.uf
  %i.ui = getelementptr i8, ptr %i.pj, i64 %i.ue
  %i.uj = add i32 %3, %factor375
  %i.uk = sub i32 %i.uj, %.2306
  %i.ul = sext i32 %i.uk to i64                   ; 2 uses
  %i.um = add nsw i64 %i.tt, %i.ul
  %i.un = shl nsw i64 %i.um, 1
  %.reass1654 = add i64 %i.un, %invariant.op1653
  %i.uo = getelementptr i8, ptr %.4343491, i64 %.reass1654
  %i.up = shl nsw i64 %i.ul, 1
  %i.uq = getelementptr i8, ptr %.4343491, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 -2
  %bound0 = icmp ult ptr %i.uh, %i.ur
  %bound1 = icmp ult ptr %i.uo, %i.ui
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph1218.preheader, label %vector.main.loop.iter.check1204

vector.main.loop.iter.check1204:                  ; preds = %vector.memcheck1203
  %min.iters.check1205 = icmp ult i64 %i.tu, 16
  br i1 %min.iters.check1205, label %vec.epilog.ph1220, label %vector.ph1206

vector.ph1206:                                    ; preds = %vector.main.loop.iter.check1204
  %i.us = and i64 %i.tu, 12
  %n.vec1207 = and i64 %i.tu, -16                 ; 4 uses
  %i.ut = add nsw i64 %n.vec1207, %i.tt
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.ph1206, %vector.body1208
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1213, %vector.body1208 ] ; 2 uses
  %i.uu = add i64 %index1209, %i.tt               ; 2 uses
  %i.uv = trunc nsw i64 %i.uu to i32
  %i.uw = sub i32 %invariant.op, %i.uv
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr [2 x i8], ptr %.4343491, i64 %i.ux ; 2 uses
  %i.uz = getelementptr i8, ptr %i.uy, i64 -18
  %i.va = getelementptr i8, ptr %i.uy, i64 -34
  %wide.load1210 = load <8 x i16>, ptr %i.uz, align 2, !tbaa !67, !alias.scope !249
  %wide.load1211 = load <8 x i16>, ptr %i.va, align 2, !tbaa !67, !alias.scope !249
  %reverse = shufflevector <8 x i16> %wide.load1210, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1212 = shufflevector <8 x i16> %wide.load1211, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.vb = getelementptr inbounds [2 x i8], ptr %.8492, i64 %i.uu ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  store <8 x i16> %reverse, ptr %i.vb, align 2, !tbaa !67, !alias.scope !250, !noalias !249
  store <8 x i16> %reverse1212, ptr %i.vc, align 2, !tbaa !67, !alias.scope !250, !noalias !249
  %index.next1213 = add nuw i64 %index1209, 16    ; 2 uses
  %i.vd = icmp eq i64 %index.next1213, %n.vec1207
  br i1 %i.vd, label %middle.block1214, label %vector.body1208, !llvm.loop !204

middle.block1214:                                 ; preds = %vector.body1208
  %cmp.n1215 = icmp eq i64 %i.tu, %n.vec1207
  br i1 %cmp.n1215, label %._crit_edge490, label %vec.epilog.iter.check1217

vec.epilog.iter.check1217:                        ; preds = %middle.block1214
  %min.epilog.iters.check1219 = icmp eq i64 %i.us, 0
  br i1 %min.epilog.iters.check1219, label %vec.epilog.scalar.ph1218.preheader, label %vec.epilog.ph1220, !prof !68

vec.epilog.ph1220:                                ; preds = %vector.main.loop.iter.check1204, %vec.epilog.iter.check1217
  %vec.epilog.resume.val1221 = phi i64 [ %n.vec1207, %vec.epilog.iter.check1217 ], [ 0, %vector.main.loop.iter.check1204 ]
  %n.vec1222 = and i64 %i.tu, -4                  ; 3 uses
  %i.ve = add nsw i64 %n.vec1222, %i.tt
  br label %vec.epilog.vector.body1223

vec.epilog.vector.body1223:                       ; preds = %vec.epilog.vector.body1223, %vec.epilog.ph1220
  %index1224 = phi i64 [ %vec.epilog.resume.val1221, %vec.epilog.ph1220 ], [ %index.next1227, %vec.epilog.vector.body1223 ] ; 2 uses
  %i.vf = add i64 %index1224, %i.tt               ; 2 uses
  %i.vg = trunc nsw i64 %i.vf to i32
  %i.vh = sub i32 %invariant.op, %i.vg
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr [2 x i8], ptr %.4343491, i64 %i.vi
  %i.vk = getelementptr i8, ptr %i.vj, i64 -10
  %wide.load1225 = load <4 x i16>, ptr %i.vk, align 2, !tbaa !67, !alias.scope !249
  %reverse1226 = shufflevector <4 x i16> %wide.load1225, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.vl = getelementptr inbounds [2 x i8], ptr %.8492, i64 %i.vf
  store <4 x i16> %reverse1226, ptr %i.vl, align 2, !tbaa !67, !alias.scope !250, !noalias !249
  %index.next1227 = add nuw i64 %index1224, 4     ; 2 uses
  %i.vm = icmp eq i64 %index.next1227, %n.vec1222
  br i1 %i.vm, label %vec.epilog.middle.block1228, label %vec.epilog.vector.body1223, !llvm.loop !205

vec.epilog.middle.block1228:                      ; preds = %vec.epilog.vector.body1223
  %cmp.n1229 = icmp eq i64 %i.tu, %n.vec1222
  br i1 %cmp.n1229, label %._crit_edge490, label %vec.epilog.scalar.ph1218.preheader

vec.epilog.scalar.ph1218.preheader:               ; preds = %iter.check1216, %vector.scevcheck, %vector.memcheck1203, %vec.epilog.iter.check1217, %vec.epilog.middle.block1228
  %indvars.iv665.ph = phi i64 [ %i.tt, %iter.check1216 ], [ %i.tt, %vector.scevcheck ], [ %i.tt, %vector.memcheck1203 ], [ %i.ut, %vec.epilog.iter.check1217 ], [ %i.ve, %vec.epilog.middle.block1228 ] ; 4 uses
  %i.vn = sub i64 %i.ov, %indvars.iv665.ph
  %xtraiter1596 = and i64 %i.vn, 3                ; 2 uses
  %lcmp.mod1597.not = icmp eq i64 %xtraiter1596, 0
  br i1 %lcmp.mod1597.not, label %vec.epilog.scalar.ph1218.prol.loopexit, label %vec.epilog.scalar.ph1218.prol

vec.epilog.scalar.ph1218.prol:                    ; preds = %vec.epilog.scalar.ph1218.preheader, %vec.epilog.scalar.ph1218.prol
  %indvars.iv665.prol = phi i64 [ %indvars.iv.next666.prol, %vec.epilog.scalar.ph1218.prol ], [ %indvars.iv665.ph, %vec.epilog.scalar.ph1218.preheader ] ; 3 uses
  %prol.iter1598 = phi i64 [ %prol.iter1598.next, %vec.epilog.scalar.ph1218.prol ], [ 0, %vec.epilog.scalar.ph1218.preheader ]
  %i.vo = trunc nsw i64 %indvars.iv665.prol to i32
  %.reass.prol = sub i32 %invariant.op, %i.vo
  %i.vp = sext i32 %.reass.prol to i64
  %i.vq = getelementptr [2 x i8], ptr %.4343491, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 -4
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !67
  %i.vt = getelementptr inbounds [2 x i8], ptr %.8492, i64 %indvars.iv665.prol
  store i16 %i.vs, ptr %i.vt, align 2, !tbaa !67
  %indvars.iv.next666.prol = add nsw i64 %indvars.iv665.prol, 1 ; 2 uses
  %prol.iter1598.next = add i64 %prol.iter1598, 1 ; 2 uses
  %prol.iter1598.cmp.not = icmp eq i64 %prol.iter1598.next, %xtraiter1596
  br i1 %prol.iter1598.cmp.not, label %vec.epilog.scalar.ph1218.prol.loopexit, label %vec.epilog.scalar.ph1218.prol, !llvm.loop !206

vec.epilog.scalar.ph1218.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1218.prol, %vec.epilog.scalar.ph1218.preheader
  %indvars.iv665.unr = phi i64 [ %indvars.iv665.ph, %vec.epilog.scalar.ph1218.preheader ], [ %indvars.iv.next666.prol, %vec.epilog.scalar.ph1218.prol ]
  %i.vu = sub i64 %indvars.iv665.ph, %i.ov
  %i.vv = icmp ugt i64 %i.vu, -4
  br i1 %i.vv, label %._crit_edge490, label %vec.epilog.scalar.ph1218

vec.epilog.scalar.ph1218:                         ; preds = %vec.epilog.scalar.ph1218.prol.loopexit, %vec.epilog.scalar.ph1218
  %indvars.iv665 = phi i64 [ %indvars.iv.next666.3, %vec.epilog.scalar.ph1218 ], [ %indvars.iv665.unr, %vec.epilog.scalar.ph1218.prol.loopexit ] ; 6 uses
  %i.vw = trunc nsw i64 %indvars.iv665 to i32
  %.reass = sub i32 %invariant.op, %i.vw
  %i.vx = sext i32 %.reass to i64
  %i.vy = getelementptr [2 x i8], ptr %.4343491, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 -4
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !67
  %i.wb = getelementptr inbounds [2 x i8], ptr %.8492, i64 %indvars.iv665
  store i16 %i.wa, ptr %i.wb, align 2, !tbaa !67
  %indvars.iv.next666 = add nsw i64 %indvars.iv665, 1 ; 2 uses
  %i.wc = trunc nsw i64 %indvars.iv.next666 to i32
  %.reass.1 = sub i32 %invariant.op, %i.wc
  %i.wd = sext i32 %.reass.1 to i64
  %i.we = getelementptr [2 x i8], ptr %.4343491, i64 %i.wd
  %i.wf = getelementptr i8, ptr %i.we, i64 -4
  %i.wg = load i16, ptr %i.wf, align 2, !tbaa !67
  %i.wh = getelementptr inbounds [2 x i8], ptr %.8492, i64 %indvars.iv.next666
  store i16 %i.wg, ptr %i.wh, align 2, !tbaa !67
  %indvars.iv.next666.1 = add nsw i64 %indvars.iv665, 2 ; 2 uses
  %i.wi = trunc nsw i64 %indvars.iv.next666.1 to i32
  %.reass.2 = sub i32 %invariant.op, %i.wi
  %i.wj = sext i32 %.reass.2 to i64
  %i.wk = getelementptr [2 x i8], ptr %.4343491, i64 %i.wj
  %i.wl = getelementptr i8, ptr %i.wk, i64 -4
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !67
  %i.wn = getelementptr inbounds [2 x i8], ptr %.8492, i64 %indvars.iv.next666.1
  store i16 %i.wm, ptr %i.wn, align 2, !tbaa !67
  %indvars.iv.next666.2 = add nsw i64 %indvars.iv665, 3 ; 2 uses
  %i.wo = trunc nsw i64 %indvars.iv.next666.2 to i32
  %.reass.3 = sub i32 %invariant.op, %i.wo
  %i.wp = sext i32 %.reass.3 to i64
  %i.wq = getelementptr [2 x i8], ptr %.4343491, i64 %i.wp
  %i.wr = getelementptr i8, ptr %i.wq, i64 -4
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !67
  %i.wt = getelementptr inbounds [2 x i8], ptr %.8492, i64 %indvars.iv.next666.2
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !67
  %indvars.iv.next666.3 = add nsw i64 %indvars.iv665, 4 ; 2 uses
  %exitcond669.not.3 = icmp eq i64 %indvars.iv.next666.3, %i.ov
  br i1 %exitcond669.not.3, label %._crit_edge490, label %vec.epilog.scalar.ph1218, !llvm.loop !207

._crit_edge490:                                   ; preds = %vec.epilog.scalar.ph1218.prol.loopexit, %vec.epilog.scalar.ph1218, %middle.block1214, %vec.epilog.middle.block1228, %.loopexit383
  %i.wu = getelementptr inbounds [2 x i8], ptr %.8492, i64 %i.ov ; 2 uses
  %i.wv = sext i32 %i.tr to i64
  %i.ww = sub nsw i64 0, %i.wv
  %i.wx = getelementptr inbounds [2 x i8], ptr %.4343491, i64 %i.ww ; 2 uses
  %i.wy = add nuw nsw i32 %.0308493, 1            ; 2 uses
  %exitcond670.not = icmp eq i32 %i.wy, %2
  %indvar.next1201 = add i64 %indvar1200, 1
  br i1 %exitcond670.not, label %.preheader381, label %.preheader384, !llvm.loop !208

.preheader380:                                    ; preds = %.preheader380.lr.ph, %._crit_edge507
  %indvar1321 = phi i64 [ 0, %.preheader380.lr.ph ], [ %indvar.next1322, %._crit_edge507 ] ; 4 uses
  %i.wz = phi i32 [ %i.qh, %.preheader380.lr.ph ], [ %i.aao, %._crit_edge507 ] ; 8 uses
  %.1309512 = phi i32 [ %.0308.lcssa, %.preheader380.lr.ph ], [ %i.adu, %._crit_edge507 ]
  %.9511 = phi ptr [ %.8.lcssa, %.preheader380.lr.ph ], [ %i.adt, %._crit_edge507 ] ; 24 uses
  %.5344510 = phi ptr [ %.4343.lcssa, %.preheader380.lr.ph ], [ %i.ads, %._crit_edge507 ] ; 28 uses
  %.53445101362 = ptrtoaddr ptr %.5344510 to i64
  br i1 %i.qm, label %iter.check1417, label %._crit_edge499

iter.check1417:                                   ; preds = %.preheader380
  br i1 %min.iters.check1399, label %.lr.ph498.preheader, label %vector.memcheck1400

vector.memcheck1400:                              ; preds = %iter.check1417
  %i.xa = mul i64 %indvar1321, %i.qw
  %i.xb = getelementptr i8, ptr %i.qx, i64 %i.xa
  %i.xc = getelementptr i8, ptr %.5344510, i64 2
  %i.xd = getelementptr i8, ptr %.5344510, i64 %i.qv
  %i.xe = getelementptr i8, ptr %i.xd, i64 2
  %bound01401 = icmp ult ptr %.9511, %i.xe
  %bound11402 = icmp ult ptr %i.xc, %i.xb
  %found.conflict1403 = and i1 %bound01401, %bound11402
  br i1 %found.conflict1403, label %.lr.ph498.preheader, label %vector.main.loop.iter.check1404

vector.main.loop.iter.check1404:                  ; preds = %vector.memcheck1400
  br i1 %min.iters.check1405, label %vec.epilog.ph1421, label %vector.body1408

vector.body1408:                                  ; preds = %vector.main.loop.iter.check1404, %vector.body1408
  %index1409 = phi i64 [ %index.next1414, %vector.body1408 ], [ 0, %vector.main.loop.iter.check1404 ] ; 3 uses
  %i.xf = sub nuw nsw i64 %i.qp, %index1409
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %.5344510, i64 %i.xf ; 2 uses
  %i.xh = getelementptr inbounds i8, ptr %i.xg, i64 -14
  %i.xi = getelementptr inbounds i8, ptr %i.xg, i64 -30
  %wide.load1410 = load <8 x i16>, ptr %i.xh, align 2, !tbaa !67, !alias.scope !251
  %wide.load1411 = load <8 x i16>, ptr %i.xi, align 2, !tbaa !67, !alias.scope !251
  %reverse1412 = shufflevector <8 x i16> %wide.load1410, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1413 = shufflevector <8 x i16> %wide.load1411, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
end_hunk_2
