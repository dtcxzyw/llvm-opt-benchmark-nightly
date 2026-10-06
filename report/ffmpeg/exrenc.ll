Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/exrenc?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@encode_frame:bb.a

.critedge3.i.i:                                   ; preds = %bb.ci, %.lr.ph89.i.i, %.critedge.thread.i.i
  %.2.lcssa.i.i = phi i64 [ %.lcssa117.i.i, %.critedge.thread.i.i ], [ %i.yt, %bb.ci ], [ %.288.i.i, %.lr.ph89.i.i ] ; 13 uses
  %.lcssa80.i.i = phi i64 [ %i.ym, %.critedge.thread.i.i ], [ %i.yu, %bb.ci ], [ %i.yo, %.lr.ph89.i.i ] ; 5 uses
  %i.yx = add nsw i64 %.06898.i.i, 1              ; 2 uses
  %i.yy = add nsw i64 %.2.lcssa.i.i, %i.yx        ; 6 uses
  %.not77.i.i = icmp slt i64 %i.yy, %i.sb
  br i1 %.not77.i.i, label %bb.cj, label %rle_compress.exit.thread.i

bb.cj:                                            ; preds = %.critedge3.i.i
  %i.yz = trunc i64 %.2.lcssa.i.i to i8
  %i.za = sub i8 0, %i.yz
  %i.zb = getelementptr inbounds i8, ptr %i.xo, i64 %.06898.i.i
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !82
  %.not103.i.i = icmp eq i64 %.2.lcssa.i.i, 0
  br i1 %.not103.i.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.cj
  %i.zc = getelementptr i8, ptr %i.xq, i64 %.07097.i.i ; 20 uses
  %i.zd = getelementptr i8, ptr %i.xo, i64 %i.yx  ; 20 uses
  %min.iters.check644 = icmp ult i64 %.2.lcssa.i.i, 4
  br i1 %min.iters.check644, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ze = add i64 %i.xr, %.06898.i.i
  %i.zf = add i64 %.07097.i.i, %i.xs
  %i.zg = sub i64 %i.zf, %i.ze
  %diff.check = icmp ugt i64 %i.zg, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check645 = icmp ult i64 %.2.lcssa.i.i, 32
  br i1 %min.iters.check645, label %vec.epilog.ph, label %vector.ph646

vector.ph646:                                     ; preds = %vector.main.loop.iter.check
  %i.zh = and i64 %.2.lcssa.i.i, 28
  %n.vec647 = and i64 %.2.lcssa.i.i, -32          ; 9 uses
  %i.zi = getelementptr i8, ptr %i.zc, i64 16
  %wide.load650 = load <16 x i8>, ptr %i.zc, align 1, !tbaa !82
  %wide.load651 = load <16 x i8>, ptr %i.zi, align 1, !tbaa !82
  %i.zj = getelementptr i8, ptr %i.zd, i64 16
  store <16 x i8> %wide.load650, ptr %i.zd, align 1, !tbaa !82
  store <16 x i8> %wide.load651, ptr %i.zj, align 1, !tbaa !82
  %i.zk = icmp eq i64 %n.vec647, 32
  br i1 %i.zk, label %middle.block653, label %vector.body648.1

vector.body648.1:                                 ; preds = %vector.ph646
  %i.zl = getelementptr i8, ptr %i.zc, i64 32
  %i.zm = getelementptr i8, ptr %i.zc, i64 48
  %wide.load650.1 = load <16 x i8>, ptr %i.zl, align 1, !tbaa !82
  %wide.load651.1 = load <16 x i8>, ptr %i.zm, align 1, !tbaa !82
  %i.zn = getelementptr i8, ptr %i.zd, i64 32
  %i.zo = getelementptr i8, ptr %i.zd, i64 48
  store <16 x i8> %wide.load650.1, ptr %i.zn, align 1, !tbaa !82
  store <16 x i8> %wide.load651.1, ptr %i.zo, align 1, !tbaa !82
  %i.zp = icmp eq i64 %n.vec647, 64
  br i1 %i.zp, label %middle.block653, label %vector.body648.2

vector.body648.2:                                 ; preds = %vector.body648.1
  %i.zq = getelementptr i8, ptr %i.zc, i64 64
  %i.zr = getelementptr i8, ptr %i.zc, i64 80
  %wide.load650.2 = load <16 x i8>, ptr %i.zq, align 1, !tbaa !82
  %wide.load651.2 = load <16 x i8>, ptr %i.zr, align 1, !tbaa !82
  %i.zs = getelementptr i8, ptr %i.zd, i64 64
  %i.zt = getelementptr i8, ptr %i.zd, i64 80
  store <16 x i8> %wide.load650.2, ptr %i.zs, align 1, !tbaa !82
  store <16 x i8> %wide.load651.2, ptr %i.zt, align 1, !tbaa !82
  %i.zu = icmp eq i64 %n.vec647, 96
  br i1 %i.zu, label %middle.block653, label %vector.body648.3

vector.body648.3:                                 ; preds = %vector.body648.2
  %i.zv = getelementptr i8, ptr %i.zc, i64 96
  %i.zw = getelementptr i8, ptr %i.zc, i64 112
  %wide.load650.3 = load <16 x i8>, ptr %i.zv, align 1, !tbaa !82
  %wide.load651.3 = load <16 x i8>, ptr %i.zw, align 1, !tbaa !82
  %i.zx = getelementptr i8, ptr %i.zd, i64 96
  %i.zy = getelementptr i8, ptr %i.zd, i64 112
  store <16 x i8> %wide.load650.3, ptr %i.zx, align 1, !tbaa !82
  store <16 x i8> %wide.load651.3, ptr %i.zy, align 1, !tbaa !82
  %i.zz = icmp eq i64 %n.vec647, 128
  br i1 %i.zz, label %middle.block653, label %vector.body648.4

vector.body648.4:                                 ; preds = %vector.body648.3
  %i.aaa = getelementptr i8, ptr %i.zc, i64 128
  %i.aab = getelementptr i8, ptr %i.zc, i64 144
  %wide.load650.4 = load <16 x i8>, ptr %i.aaa, align 1, !tbaa !82
  %wide.load651.4 = load <16 x i8>, ptr %i.aab, align 1, !tbaa !82
  %i.aac = getelementptr i8, ptr %i.zd, i64 128
  %i.aad = getelementptr i8, ptr %i.zd, i64 144
  store <16 x i8> %wide.load650.4, ptr %i.aac, align 1, !tbaa !82
  store <16 x i8> %wide.load651.4, ptr %i.aad, align 1, !tbaa !82
  %i.aae = icmp eq i64 %n.vec647, 160
  br i1 %i.aae, label %middle.block653, label %vector.body648.5

vector.body648.5:                                 ; preds = %vector.body648.4
  %i.aaf = getelementptr i8, ptr %i.zc, i64 160
  %i.aag = getelementptr i8, ptr %i.zc, i64 176
  %wide.load650.5 = load <16 x i8>, ptr %i.aaf, align 1, !tbaa !82
  %wide.load651.5 = load <16 x i8>, ptr %i.aag, align 1, !tbaa !82
  %i.aah = getelementptr i8, ptr %i.zd, i64 160
  %i.aai = getelementptr i8, ptr %i.zd, i64 176
  store <16 x i8> %wide.load650.5, ptr %i.aah, align 1, !tbaa !82
  store <16 x i8> %wide.load651.5, ptr %i.aai, align 1, !tbaa !82
  %i.aaj = icmp eq i64 %n.vec647, 192
  br i1 %i.aaj, label %middle.block653, label %vector.body648.6

vector.body648.6:                                 ; preds = %vector.body648.5
  %i.aak = getelementptr i8, ptr %i.zc, i64 192
  %i.aal = getelementptr i8, ptr %i.zc, i64 208
  %wide.load650.6 = load <16 x i8>, ptr %i.aak, align 1, !tbaa !82
  %wide.load651.6 = load <16 x i8>, ptr %i.aal, align 1, !tbaa !82
  %i.aam = getelementptr i8, ptr %i.zd, i64 192
  %i.aan = getelementptr i8, ptr %i.zd, i64 208
  store <16 x i8> %wide.load650.6, ptr %i.aam, align 1, !tbaa !82
  store <16 x i8> %wide.load651.6, ptr %i.aan, align 1, !tbaa !82
  br label %middle.block653

middle.block653:                                  ; preds = %vector.body648.6, %vector.body648.5, %vector.body648.4, %vector.body648.3, %vector.body648.2, %vector.body648.1, %vector.ph646
  %cmp.n654 = icmp eq i64 %.2.lcssa.i.i, %n.vec647
  br i1 %cmp.n654, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block653
  %min.epilog.iters.check = icmp eq i64 %i.zh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec647, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec655 = and i64 %.2.lcssa.i.i, -4           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index656 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next658, %vec.epilog.vector.body ] ; 3 uses
  %i.aao = getelementptr i8, ptr %i.zc, i64 %index656
  %wide.load657 = load <4 x i8>, ptr %i.aao, align 1, !tbaa !82
  %i.aap = getelementptr i8, ptr %i.zd, i64 %index656
  store <4 x i8> %wide.load657, ptr %i.aap, align 1, !tbaa !82
  %index.next658 = add nuw i64 %index656, 4       ; 2 uses
  %i.aaq = icmp eq i64 %index.next658, %n.vec655
  br i1 %i.aaq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n659 = icmp eq i64 %.2.lcssa.i.i, %n.vec655
  br i1 %cmp.n659, label %.loopexit.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec647, %vec.epilog.iter.check ], [ %n.vec655, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter714 = and i64 %.2.lcssa.i.i, 3         ; 2 uses
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aar = getelementptr i8, ptr %i.zc, i64 %indvars.iv.i.i.prol
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !82
  %i.aat = getelementptr i8, ptr %i.zd, i64 %indvars.iv.i.i.prol
  store i8 %i.aas, ptr %i.aat, align 1, !tbaa !82
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter714
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !53

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.aau = sub i64 %indvars.iv.i.i.ph, %.2.lcssa.i.i
  %i.aav = icmp ugt i64 %i.aau, -4
  br i1 %i.aav, label %.loopexit.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.aaw = getelementptr i8, ptr %i.zc, i64 %indvars.iv.i.i
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !82
  %i.aay = getelementptr i8, ptr %i.zd, i64 %indvars.iv.i.i
  store i8 %i.aax, ptr %i.aay, align 1, !tbaa !82
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.zc, i64 %indvars.iv.next.i.i
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !82
  %i.abb = getelementptr i8, ptr %i.zd, i64 %indvars.iv.next.i.i
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !82
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.abc = getelementptr i8, ptr %i.zc, i64 %indvars.iv.next.i.i.1
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !82
  %i.abe = getelementptr i8, ptr %i.zd, i64 %indvars.iv.next.i.i.1
  store i8 %i.abd, ptr %i.abe, align 1, !tbaa !82
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.abf = getelementptr i8, ptr %i.zc, i64 %indvars.iv.next.i.i.2
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !82
  %i.abh = getelementptr i8, ptr %i.zd, i64 %indvars.iv.next.i.i.2
  store i8 %i.abg, ptr %i.abh, align 1, !tbaa !82
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond105.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %.2.lcssa.i.i
  br i1 %exitcond105.not.i.i.3, label %.loopexit.i.i, label %vec.epilog.scalar.ph, !llvm.loop !54

.loopexit.i.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block653, %vec.epilog.middle.block, %bb.cj, %bb.ch
  %.171.i.i = phi i64 [ %.lcssa79.i.i, %bb.ch ], [ %.lcssa80.i.i, %bb.cj ], [ %.lcssa80.i.i, %middle.block653 ], [ %.lcssa80.i.i, %vec.epilog.middle.block ], [ %.lcssa80.i.i, %vec.epilog.scalar.ph ], [ %.lcssa80.i.i, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.169.i.i = phi i64 [ %i.yg, %bb.ch ], [ %i.yy, %bb.cj ], [ %i.yy, %middle.block653 ], [ %i.yy, %vec.epilog.middle.block ], [ %i.yy, %vec.epilog.scalar.ph ], [ %i.yy, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.abi = icmp slt i64 %.171.i.i, %i.rz
  br i1 %i.abi, label %.preheader.i.i, label %rle_compress.exit.i, !llvm.loop !55

rle_compress.exit.thread.i:                       ; preds = %.critedge3.i.i, %bb.cg, %.loopexit.i
  %i.abj = getelementptr inbounds nuw i8, ptr %i.rt, i64 48
  br label %bb.ck

rle_compress.exit.i:                              ; preds = %.loopexit.i.i
  %i.abk = getelementptr inbounds nuw i8, ptr %i.rt, i64 48 ; 2 uses
  store i64 %.169.i.i, ptr %i.abk, align 8, !tbaa !107
  %i.abl = icmp sgt i64 %.169.i.i, 0
  %.not95.i = icmp slt i64 %.169.i.i, %i.rz
  %or.cond.i339 = and i1 %i.abl, %.not95.i
  br i1 %or.cond.i339, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %rle_compress.exit.i, %rle_compress.exit.thread.i
  %i.abm = phi ptr [ %i.abj, %rle_compress.exit.thread.i ], [ %i.abk, %rle_compress.exit.i ]
  %i.abn = load ptr, ptr %i.rt, align 8, !tbaa !98
  %i.abo = load ptr, ptr %i.sc, align 8, !tbaa !96
  store ptr %i.abo, ptr %i.rt, align 8, !tbaa !98
  store ptr %i.abn, ptr %i.sc, align 8, !tbaa !96
  %i.abp = load i32, ptr %i.si, align 8, !tbaa !108
  %i.abq = load i32, ptr %i.sd, align 8, !tbaa !109
  store i32 %i.abq, ptr %i.si, align 8, !tbaa !108
  store i32 %i.abp, ptr %i.sd, align 8, !tbaa !109
  store i64 %i.rz, ptr %i.abm, align 8, !tbaa !107
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %rle_compress.exit.i
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %i.abr = load i32, ptr %i.ri, align 4, !tbaa !93
  %i.abs = sext i32 %i.abr to i64
  %.not96.i = icmp slt i64 %indvars.iv.next135.i, %i.abs
  br i1 %.not96.i, label %bb.ca, label %encode_scanline_rle.exit, !llvm.loop !56

bb.cm:                                            ; preds = %bytestream2_put_byte.exit, %bytestream2_put_byte.exit
  %i.abt = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !40
  %.not127152.i = icmp sgt i32 %i.abv, 0
  br i1 %.not127152.i, label %.lr.ph158.i, label %encode_scanline_rle.exit

.lr.ph158.i:                                      ; preds = %bb.cm
  %i.abw = load i32, ptr %i.abt, align 4, !tbaa !84
  %i.abx = icmp eq i32 %i.abw, 1
  %i.aby = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.abz = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.acb = select i1 %i.abx, i64 1, i64 2
  %i.acc = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.c, i64 1112 ; 3 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ct, %.lr.ph158.i
  %indvars.iv176.i = phi i64 [ 0, %.lr.ph158.i ], [ %indvars.iv.next177.i, %bb.ct ] ; 3 uses
  %indvars.iv173.i = phi i32 [ 0, %.lr.ph158.i ], [ %indvars.iv.next174.i, %bb.ct ] ; 3 uses
  %i.ach = load ptr, ptr %i.aby, align 8, !tbaa !41
  %i.aci = getelementptr inbounds nuw [56 x i8], ptr %i.ach, i64 %indvars.iv176.i ; 11 uses
  %i.acj = load i32, ptr %i.abz, align 8, !tbaa !38 ; 6 uses
  %i.ack = load i32, ptr %i.aca, align 4, !tbaa !93 ; 3 uses
  %i.acl = trunc nuw nsw i64 %indvars.iv176.i to i32 ; 3 uses
  %i.acm = mul nsw i32 %i.acj, %i.acl
  %i.acn = sub nsw i32 %i.ack, %i.acm
  %..i = call i32 @llvm.smin.i32(i32 %i.acj, i32 %i.acn) ; 3 uses
  %i.aco = load i32, ptr %i.by, align 8, !tbaa !34
  %i.acp = sext i32 %i.aco to i64
  %i.acq = shl nsw i64 %i.acp, %i.acb
  %i.acr = load i32, ptr %i.acc, align 8, !tbaa !94
  %i.acs = sext i32 %i.acr to i64
  %i.act = mul nsw i64 %i.acq, %i.acs
  %i.acu = sext i32 %..i to i64
  %i.acv = mul nsw i64 %i.act, %i.acu             ; 12 uses
  %i.acw = ashr exact i64 %i.acv, 1
  %i.acx = add nsw i64 %i.acw, %i.acv             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.acy = getelementptr inbounds nuw i8, ptr %i.aci, i64 16 ; 7 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aci, i64 24 ; 3 uses
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.acy, ptr noundef nonnull %i.acz, i64 noundef %i.acv) #7
  %i.ada = load ptr, ptr %i.acy, align 8, !tbaa !96
  %.not.i341 = icmp eq ptr %i.ada, null
  br i1 %.not.i341, label %.critedge.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aci, i64 32 ; 5 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aci, i64 40
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.adb, ptr noundef nonnull %i.adc, i64 noundef %i.acv) #7
  %i.add = load ptr, ptr %i.adb, align 8, !tbaa !97
  %.not124.i = icmp eq ptr %i.add, null
  br i1 %.not124.i, label %.critedge.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aci, i64 8 ; 3 uses
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.aci, ptr noundef nonnull %i.ade, i64 noundef %i.acx) #7
  %i.adf = load ptr, ptr %i.aci, align 8, !tbaa !98
  %.not125.i = icmp eq ptr %i.adf, null
  br i1 %.not125.i, label %.critedge.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.adg = load i32, ptr %i.abt, align 4, !tbaa !84
  switch i32 %i.adg, label %.loopexit.i342 [
    i32 2, label %.preheader.i360
    i32 1, label %.preheader131.i
  ]

.preheader131.i:                                  ; preds = %bb.cq
  %i.adh = icmp sgt i32 %..i, 0
  br i1 %i.adh, label %.lr.ph141.i, label %.loopexit.i342

.lr.ph141.i:                                      ; preds = %.preheader131.i
  %i.adi = load i32, ptr %i.acc, align 8, !tbaa !94 ; 5 uses
  %i.adj = load i32, ptr %i.by, align 8, !tbaa !34 ; 3 uses
  %i.adk = icmp sgt i32 %i.adj, 0
  %i.adl = shl i32 %i.adi, 1                      ; 2 uses
  br i1 %i.adk, label %.lr.ph141.split.i, label %.loopexit.i342

.lr.ph141.split.i:                                ; preds = %.lr.ph141.i
  %i.adm = icmp sgt i32 %i.adi, 0
  %i.adn = load ptr, ptr %i.acd, align 8, !tbaa !36
  %i.ado = load ptr, ptr %i.acy, align 8, !tbaa !96
  br i1 %i.adm, label %.lr.ph138.preheader.i, label %.loopexit.i342

.lr.ph138.preheader.i:                            ; preds = %.lr.ph141.split.i
  %i.adp = load i32, ptr %i.abz, align 8, !tbaa !38
  %i.adq = mul nsw i32 %i.adp, %i.acl
  %i.adr = sext i32 %i.adq to i64
  %wide.trip.count165.i = zext nneg i32 %i.adj to i64
  %wide.trip.count.i354 = zext nneg i32 %i.adi to i64 ; 2 uses
  %factor.op.mul.i353 = mul i32 %i.adl, %i.adj
  %i.ads = mul i32 %i.acj, %indvars.iv173.i
  %i.adt = add i32 %i.ack, %i.ads
  %i.adu = call i32 @llvm.smin.i32(i32 %i.acj, i32 %i.adt)
  %smin = sext i32 %i.adu to i64
  %xtraiter = and i64 %wide.trip.count.i354, 1
  %i.adv = icmp eq i32 %i.adi, 1
  %unroll_iter = and i64 %wide.trip.count.i354, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod697 = trunc i32 %i.adi to i1
  br label %.lr.ph138.i

.preheader.i360:                                  ; preds = %bb.cq
  %i.adw = icmp sgt i32 %..i, 0
  br i1 %i.adw, label %.lr.ph151.i, label %.loopexit.i342

.lr.ph151.i:                                      ; preds = %.preheader.i360
  %i.adx = load i32, ptr %i.by, align 8, !tbaa !34 ; 2 uses
  %i.ady = icmp sgt i32 %i.adx, 0
  br i1 %i.ady, label %.lr.ph151.split.preheader.i, label %.loopexit.i342

.lr.ph151.split.preheader.i:                      ; preds = %.lr.ph151.i
  %i.adz = mul i32 %i.acj, %indvars.iv173.i
  %i.aea = add i32 %i.ack, %i.adz
  %smin.i = call i32 @llvm.smin.i32(i32 %i.acj, i32 %i.aea)
  br label %.lr.ph151.split.i

.lr.ph151.split.i:                                ; preds = %._crit_edge149.i, %.lr.ph151.split.preheader.i
  %i.aeb = phi i32 [ %i.aef, %._crit_edge149.i ], [ %i.adx, %.lr.ph151.split.preheader.i ] ; 3 uses
  %.0118150.i = phi i32 [ %i.aeg, %._crit_edge149.i ], [ 0, %.lr.ph151.split.preheader.i ] ; 3 uses
  %i.aec = icmp sgt i32 %i.aeb, 0
  br i1 %i.aec, label %.lr.ph148.i, label %._crit_edge149.i

.lr.ph148.i:                                      ; preds = %.lr.ph151.split.i
  %i.aed = load i32, ptr %i.acc, align 8, !tbaa !94
  %factor.op.mul144.i = shl i32 %i.aeb, 2
  %factor.op.mul145.i = mul i32 %factor.op.mul144.i, %.0118150.i
  %.reass.reass.i = mul i32 %factor.op.mul145.i, %i.aed
  %i.aee = sext i32 %.reass.reass.i to i64
  br label %bb.cr

._crit_edge149.i:                                 ; preds = %bb.cr, %.lr.ph151.split.i
  %i.aef = phi i32 [ %i.aeb, %.lr.ph151.split.i ], [ %i.aff, %bb.cr ]
  %i.aeg = add nuw nsw i32 %.0118150.i, 1         ; 2 uses
  %exitcond175.not.i = icmp eq i32 %i.aeg, %smin.i
  br i1 %exitcond175.not.i, label %.loopexit.i342, label %.lr.ph151.split.i, !llvm.loop !57

bb.cr:                                            ; preds = %bb.cr, %.lr.ph148.i
  %indvars.iv170.i = phi i64 [ 0, %.lr.ph148.i ], [ %indvars.iv.next171.i, %bb.cr ] ; 3 uses
  %i.aeh = load ptr, ptr %i.acd, align 8, !tbaa !36
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %indvars.iv170.i
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !82
  %i.aek = load ptr, ptr %i.acy, align 8, !tbaa !96
  %i.ael = getelementptr inbounds i8, ptr %i.aek, i64 %i.aee
  %i.aem = load i32, ptr %i.acc, align 8, !tbaa !94 ; 2 uses
  %i.aen = trunc nuw nsw i64 %indvars.iv170.i to i32
  %i.aeo = shl i32 %i.aen, 2
  %i.aep = mul i32 %i.aeo, %i.aem
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds i8, ptr %i.ael, i64 %i.aeq
  %i.aes = zext i8 %i.aej to i64                  ; 2 uses
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aes
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !99
  %i.aev = load i32, ptr %i.abz, align 8, !tbaa !38
  %i.aew = mul nsw i32 %i.aev, %i.acl
  %i.aex = add nsw i32 %i.aew, %.0118150.i
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.aes
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !100
  %i.afa = mul nsw i32 %i.aex, %i.aez
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr inbounds i8, ptr %i.aeu, i64 %i.afb
  %i.afd = shl nsw i32 %i.aem, 2
  %i.afe = sext i32 %i.afd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aer, ptr align 1 %i.afc, i64 %i.afe, i1 false)
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
end_hunk_0
