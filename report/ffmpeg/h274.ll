Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h274?download=true
inline.NumInlined: 11
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ff_h274_apply_film_grain:bb.a
  %i.axd = add nsw i32 %i.axc, %i.axa
  %i.axe = sext i8 %i.awz to i32
  %i.axf = add nsw i32 %i.axd, %i.axe
  %i.axg = lshr i32 %i.axf, 2
  %i.axh = trunc i32 %i.axg to i8
  store i8 %i.axh, ptr %i.aii, align 1, !tbaa !10
  %i.axi = shl nsw i32 %i.axa, 1
  %i.axj = sext i8 %i.awv to i32
  %i.axk = add nsw i32 %i.axb, %i.axj
  %i.axl = add nsw i32 %i.axk, %i.axi
  %i.axm = lshr i32 %i.axl, 2
  %i.axn = trunc i32 %i.axm to i8
  store i8 %i.axn, ptr %i.aww, align 1, !tbaa !10
  %i.axo = getelementptr inbounds i8, ptr %i.akm, i64 -2
  %i.axp = load i8, ptr %i.axo, align 1, !tbaa !10
  %i.axq = getelementptr inbounds i8, ptr %i.akm, i64 -1 ; 2 uses
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !10
  %i.axs = load i8, ptr %i.akm, align 1, !tbaa !10
  %i.axt = load i8, ptr %i.akz, align 1, !tbaa !10
  %i.axu = sext i8 %i.axr to i32                  ; 2 uses
  %i.axv = sext i8 %i.axs to i32                  ; 2 uses
  %i.axw = shl nsw i32 %i.axv, 1
  %i.axx = add nsw i32 %i.axw, %i.axu
  %i.axy = sext i8 %i.axt to i32
  %i.axz = add nsw i32 %i.axx, %i.axy
  %i.aya = lshr i32 %i.axz, 2
  %i.ayb = trunc i32 %i.aya to i8
  store i8 %i.ayb, ptr %i.akm, align 1, !tbaa !10
  %i.ayc = shl nsw i32 %i.axu, 1
  %i.ayd = sext i8 %i.axp to i32
  %i.aye = add nsw i32 %i.axv, %i.ayd
  %i.ayf = add nsw i32 %i.aye, %i.ayc
  %i.ayg = lshr i32 %i.ayf, 2
  %i.ayh = trunc i32 %i.ayg to i8
  store i8 %i.ayh, ptr %i.axq, align 1, !tbaa !10
  %i.ayi = getelementptr inbounds i8, ptr %i.amq, i64 -2
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !10
  %i.ayk = getelementptr inbounds i8, ptr %i.amq, i64 -1 ; 2 uses
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !10
  %i.aym = load i8, ptr %i.amq, align 1, !tbaa !10
  %i.ayn = load i8, ptr %i.and, align 1, !tbaa !10
  %i.ayo = sext i8 %i.ayl to i32                  ; 2 uses
  %i.ayp = sext i8 %i.aym to i32                  ; 2 uses
  %i.ayq = shl nsw i32 %i.ayp, 1
  %i.ayr = add nsw i32 %i.ayq, %i.ayo
  %i.ays = sext i8 %i.ayn to i32
  %i.ayt = add nsw i32 %i.ayr, %i.ays
  %i.ayu = lshr i32 %i.ayt, 2
  %i.ayv = trunc i32 %i.ayu to i8
  store i8 %i.ayv, ptr %i.amq, align 1, !tbaa !10
  %i.ayw = shl nsw i32 %i.ayo, 1
  %i.ayx = sext i8 %i.ayj to i32
  %i.ayy = add nsw i32 %i.ayp, %i.ayx
  %i.ayz = add nsw i32 %i.ayy, %i.ayw
  %i.aza = lshr i32 %i.ayz, 2
  %i.azb = trunc i32 %i.aza to i8
  store i8 %i.azb, ptr %i.ayk, align 1, !tbaa !10
  %i.azc = getelementptr inbounds i8, ptr %i.aou, i64 -2
  %i.azd = load i8, ptr %i.azc, align 1, !tbaa !10
  %i.aze = getelementptr inbounds i8, ptr %i.aou, i64 -1 ; 2 uses
  %i.azf = load i8, ptr %i.aze, align 1, !tbaa !10
  %i.azg = load i8, ptr %i.aou, align 1, !tbaa !10
  %i.azh = load i8, ptr %i.aph, align 1, !tbaa !10
  %i.azi = sext i8 %i.azf to i32                  ; 2 uses
  %i.azj = sext i8 %i.azg to i32                  ; 2 uses
  %i.azk = shl nsw i32 %i.azj, 1
  %i.azl = add nsw i32 %i.azk, %i.azi
  %i.azm = sext i8 %i.azh to i32
  %i.azn = add nsw i32 %i.azl, %i.azm
  %i.azo = lshr i32 %i.azn, 2
  %i.azp = trunc i32 %i.azo to i8
  store i8 %i.azp, ptr %i.aou, align 1, !tbaa !10
  %i.azq = shl nsw i32 %i.azi, 1
  %i.azr = sext i8 %i.azd to i32
  %i.azs = add nsw i32 %i.azj, %i.azr
  %i.azt = add nsw i32 %i.azs, %i.azq
  %i.azu = lshr i32 %i.azt, 2
  %i.azv = trunc i32 %i.azu to i8
  store i8 %i.azv, ptr %i.aze, align 1, !tbaa !10
  %i.azw = getelementptr inbounds i8, ptr %i.aqy, i64 -2
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !10
  %i.azy = getelementptr inbounds i8, ptr %i.aqy, i64 -1 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !10
  %i.baa = load i8, ptr %i.aqy, align 1, !tbaa !10
  %i.bab = load i8, ptr %i.arl, align 1, !tbaa !10
  %i.bac = sext i8 %i.azz to i32                  ; 2 uses
  %i.bad = sext i8 %i.baa to i32                  ; 2 uses
  %i.bae = shl nsw i32 %i.bad, 1
  %i.baf = add nsw i32 %i.bae, %i.bac
  %i.bag = sext i8 %i.bab to i32
  %i.bah = add nsw i32 %i.baf, %i.bag
  %i.bai = lshr i32 %i.bah, 2
  %i.baj = trunc i32 %i.bai to i8
  store i8 %i.baj, ptr %i.aqy, align 1, !tbaa !10
  %i.bak = shl nsw i32 %i.bac, 1
  %i.bal = sext i8 %i.azx to i32
  %i.bam = add nsw i32 %i.bad, %i.bal
  %i.ban = add nsw i32 %i.bam, %i.bak
  %i.bao = lshr i32 %i.ban, 2
  %i.bap = trunc i32 %i.bao to i8
  store i8 %i.bap, ptr %i.azy, align 1, !tbaa !10
  %i.baq = getelementptr inbounds i8, ptr %i.atc, i64 -2
  %i.bar = load i8, ptr %i.baq, align 1, !tbaa !10
  %i.bas = getelementptr inbounds i8, ptr %i.atc, i64 -1 ; 2 uses
  %i.bat = load i8, ptr %i.bas, align 1, !tbaa !10
  %i.bau = load i8, ptr %i.atc, align 1, !tbaa !10
  %i.bav = load i8, ptr %i.atp, align 1, !tbaa !10
  %i.baw = sext i8 %i.bat to i32                  ; 2 uses
  %i.bax = sext i8 %i.bau to i32                  ; 2 uses
  %i.bay = shl nsw i32 %i.bax, 1
  %i.baz = add nsw i32 %i.bay, %i.baw
  %i.bba = sext i8 %i.bav to i32
  %i.bbb = add nsw i32 %i.baz, %i.bba
  %i.bbc = lshr i32 %i.bbb, 2
  %i.bbd = trunc i32 %i.bbc to i8
  store i8 %i.bbd, ptr %i.atc, align 1, !tbaa !10
  %i.bbe = shl nsw i32 %i.baw, 1
  %i.bbf = sext i8 %i.bar to i32
  %i.bbg = add nsw i32 %i.bax, %i.bbf
  %i.bbh = add nsw i32 %i.bbg, %i.bbe
  %i.bbi = lshr i32 %i.bbh, 2
  %i.bbj = trunc i32 %i.bbi to i8
  store i8 %i.bbj, ptr %i.bas, align 1, !tbaa !10
  br label %generate.exit.us

generate.exit.us:                                 ; preds = %.preheader.us.preheader, %bb.u, %init_slice.exit.us
  br i1 %i.ds, label %bb.i, label %.critedge2.us, !llvm.loop !52

.critedge2.us:                                    ; preds = %generate.exit.us, %bb.i
  br i1 %i.dp, label %bb.h, label %.critedge.us, !llvm.loop !53

.critedge.us:                                     ; preds = %.critedge2.us, %bb.h
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 16 ; 2 uses
  %i.bbk = trunc nuw i64 %indvars.iv.next170 to i32
  %i.bbl = icmp sgt i32 %i.ca, %i.bbk
  br i1 %i.bbl, label %bb.g, label %._crit_edge.us, !llvm.loop !54

.preheader120.us:                                 ; preds = %bb.h
  %i.bbm = mul nsw i64 %i.dq, %i.cn
  %i.bbn = getelementptr inbounds i8, ptr %i.cc, i64 %i.bbm
  %i.bbo = mul nsw i64 %i.dq, %i.ci
  %i.bbp = getelementptr inbounds i8, ptr %i.ce, i64 %i.bbo
  br label %bb.i

._crit_edge.us:                                   ; preds = %.critedge.us
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 16 ; 2 uses
  %i.bbq = icmp samesign ult i64 %indvars.iv.next173, %i.cp
  br i1 %i.bbq, label %.preheader121.us, label %.lr.ph145, !llvm.loop !55

.lr.ph145:                                        ; preds = %._crit_edge.us
  %wide.trip.count.i = zext nneg i32 %i.ca to i64
  %i.bbr = sext i32 %i.cd to i64                  ; 2 uses
  %i.bbs = sext i32 %i.cf to i64                  ; 2 uses
  %wide.trip.count178 = zext nneg i32 %i.cb to i64
  %i.bbt = add nsw i64 %i.cp, -1                  ; 2 uses
  %i.bbu = mul nsw i64 %i.bbt, %i.bbr
  %i.bbv = getelementptr i8, ptr %i.cc, i64 %i.bbu
  %scevgep = getelementptr i8, ptr %i.bbv, i64 %i.co
  %i.bbw = mul nsw i64 %i.bbt, %i.bbs
  %i.bbx = getelementptr i8, ptr %i.ce, i64 %i.bbw
  %scevgep203 = getelementptr i8, ptr %i.bbx, i64 %i.co
  %min.iters.check = icmp ult i32 %i.ca, 4
  %bound0 = icmp ult ptr %i.cc, %scevgep203
  %bound1 = icmp ult ptr %i.ce, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bby = or i32 %i.cf, %i.cd
  %i.bbz = icmp slt i32 %i.bby, 0
  %i.bca = or i1 %found.conflict, %i.bbz
  %min.iters.check205 = icmp ult i32 %i.ca, 16
  %i.bcb = and i64 %i.co, 12
  %n.vec = and i64 %i.co, 2147483632              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.co
  %min.epilog.iters.check = icmp eq i64 %i.bcb, 0
  %n.vec207 = and i64 %i.co, 2147483644           ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec207, %i.co
  %xtraiter327 = and i64 %i.co, 1
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  %i.bcc = add nsw i64 %i.co, -1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph145, %add_8x8_clip_c.exit.loopexit
  %indvars.iv175 = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next176, %add_8x8_clip_c.exit.loopexit ] ; 3 uses
  %i.bcd = mul nsw i64 %indvars.iv175, %i.bbr
  %i.bce = getelementptr inbounds i8, ptr %i.cc, i64 %i.bcd ; 5 uses
  %i.bcf = mul nsw i64 %indvars.iv175, %i.bbs
  %i.bcg = getelementptr inbounds i8, ptr %i.ce, i64 %i.bcf ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bca
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check205, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %index
  %wide.load = load <16 x i8>, ptr %i.bch, align 1, !tbaa !10, !alias.scope !74
  %i.bci = zext <16 x i8> %wide.load to <16 x i32>
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bce, i64 %index ; 2 uses
  %wide.load206 = load <16 x i8>, ptr %i.bcj, align 1, !tbaa !10, !alias.scope !75, !noalias !74
  %i.bck = sext <16 x i8> %wide.load206 to <16 x i32>
  %i.bcl = add nsw <16 x i32> %i.bck, %i.bci      ; 3 uses
  %4 = icmp ugt <16 x i32> %i.bcl, splat (i32 255)
  %5 = icmp sgt <16 x i32> %i.bcl, splat (i32 -1)
  %6 = sext <16 x i1> %5 to <16 x i8>
  %i.bcm = trunc nuw <16 x i32> %i.bcl to <16 x i8>
  %7 = select <16 x i1> %4, <16 x i8> %6, <16 x i8> %i.bcm
  store <16 x i8> %7, ptr %i.bcj, align 1, !tbaa !10, !alias.scope !75, !noalias !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bcn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bcn, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %add_8x8_clip_c.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next211, %vec.epilog.vector.body ] ; 3 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %index208
  %wide.load209 = load <4 x i8>, ptr %i.bco, align 1, !tbaa !10, !alias.scope !74
  %i.bcp = zext <4 x i8> %wide.load209 to <4 x i32>
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bce, i64 %index208 ; 2 uses
  %wide.load210 = load <4 x i8>, ptr %i.bcq, align 1, !tbaa !10, !alias.scope !75, !noalias !74
  %i.bcr = sext <4 x i8> %wide.load210 to <4 x i32>
  %i.bcs = add nsw <4 x i32> %i.bcr, %i.bcp       ; 3 uses
  %8 = icmp ugt <4 x i32> %i.bcs, splat (i32 255)
  %9 = icmp sgt <4 x i32> %i.bcs, splat (i32 -1)
  %10 = sext <4 x i1> %9 to <4 x i8>
  %i.bct = trunc nuw <4 x i32> %i.bcs to <4 x i8>
  %11 = select <4 x i1> %8, <4 x i8> %10, <4 x i8> %i.bct
  store <4 x i8> %11, ptr %i.bcq, align 1, !tbaa !10, !alias.scope !75, !noalias !74
  %index.next211 = add nuw i64 %index208, 4       ; 2 uses
  %i.bcu = icmp eq i64 %index.next211, %n.vec207
  br i1 %i.bcu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n212, label %add_8x8_clip_c.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec207, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  br i1 %lcmp.mod328.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %indvars.iv.i.ph
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !10
  %i.bcx = zext i8 %i.bcw to i32
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bce, i64 %indvars.iv.i.ph ; 2 uses
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !10
  %i.bda = sext i8 %i.bcz to i32
  %i.bdb = add nsw i32 %i.bda, %i.bcx             ; 3 uses
  %12 = icmp ugt i32 %i.bdb, 255
  %isnotneg.i.i.prol = icmp sgt i32 %i.bdb, -1
  %13 = sext i1 %isnotneg.i.i.prol to i8
  %i.bdc = trunc nuw i32 %i.bdb to i8
  %.0.i.i.prol = select i1 %12, i8 %13, i8 %i.bdc
  store i8 %.0.i.i.prol, ptr %i.bcy, align 1, !tbaa !10
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bdd = icmp eq i64 %indvars.iv.i.ph, %i.bcc
  br i1 %i.bdd, label %add_8x8_clip_c.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %indvars.iv.i
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !10
  %i.bdg = zext i8 %i.bdf to i32
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bce, i64 %indvars.iv.i ; 2 uses
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !10
  %i.bdj = sext i8 %i.bdi to i32
  %i.bdk = add nsw i32 %i.bdj, %i.bdg             ; 3 uses
  %14 = icmp ugt i32 %i.bdk, 255
  %isnotneg.i.i = icmp sgt i32 %i.bdk, -1
  %15 = sext i1 %isnotneg.i.i to i8
  %i.bdl = trunc nuw i32 %i.bdk to i8
  %.0.i.i = select i1 %14, i8 %15, i8 %i.bdl
  store i8 %.0.i.i, ptr %i.bdh, align 1, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %indvars.iv.next.i
  %i.bdn = load i8, ptr %i.bdm, align 1, !tbaa !10
  %i.bdo = zext i8 %i.bdn to i32
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bce, i64 %indvars.iv.next.i ; 2 uses
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !10
  %i.bdr = sext i8 %i.bdq to i32
  %i.bds = add nsw i32 %i.bdr, %i.bdo             ; 3 uses
  %16 = icmp ugt i32 %i.bds, 255
  %isnotneg.i.i.1 = icmp sgt i32 %i.bds, -1
  %17 = sext i1 %isnotneg.i.i.1 to i8
  %i.bdt = trunc nuw i32 %i.bds to i8
  %.0.i.i.1 = select i1 %16, i8 %17, i8 %i.bdt
  store i8 %.0.i.i.1, ptr %i.bdp, align 1, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %add_8x8_clip_c.exit.loopexit, label %.lr.ph.i, !llvm.loop !61

add_8x8_clip_c.exit.loopexit:                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count178
  br i1 %exitcond179.not, label %.loopexit123, label %iter.check, !llvm.loop !62

.loopexit123:                                     ; preds = %add_8x8_clip_c.exit.loopexit, %.preheader121.lr.ph, %.loopexit125, %bb.e
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next181, 3
  br i1 %exitcond183.not, label %.loopexit127, label %bb.c, !llvm.loop !63

.loopexit127:                                     ; preds = %.loopexit123, %bb.b, %bb.a
  %.0101 = phi i32 [ -1163346256, %bb.b ], [ -1163346256, %bb.a ], [ 0, %.loopexit123 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ff_h274_hash_freep(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @av_free(ptr noundef nonnull %i.c) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @av_freep(ptr noundef nonnull %0) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @ff_h274_hash_init(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 3
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not27 = icmp eq i32 %i.d, %1
  br i1 %.not27, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.f) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 %1, ptr %i.c, align 8, !tbaa !33
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @av_mallocz(i64 noundef 16) #7 ; 4 uses
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %1, ptr %i.g, align 8, !tbaa !33
  store ptr %i.g, ptr %0, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.f, %bb.h
  %.0 = phi ptr [ %i.c, %bb.f ], [ %i.c, %bb.c ], [ %i.g, %bb.h ]
  %i.h = icmp eq i32 %1, 0
  br i1 %i.h, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %.not28 = icmp eq ptr %i.j, null
  br i1 %.not28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = tail call ptr @av_md5_alloc() #7         ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !32
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.g, %bb.a, %bb.l
  %.020 = phi i32 [ 0, %bb.l ], [ -12, %bb.g ], [ -22, %bb.a ], [ -12, %bb.k ]
  ret i32 %.020
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare ptr @av_md5_alloc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_h274_hash_verify(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i8, ptr %i.f, align 4, !tbaa !85
  %i.h = zext i8 %i.g to i32
  %.not = icmp eq i32 %i.e, %i.h
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %i.k = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.j) #7 ; 5 uses
  %.not66 = icmp eq ptr %i.k, null
  br i1 %.not66, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !87
  %.not93 = icmp eq i8 %i.m, 0
  br i1 %.not93, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 8 uses
  %.not67 = icmp eq i64 %indvars.iv, 0
  br i1 %.not67, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.n, align 1, !tbaa !88
  %i.t = zext nneg i8 %i.s to i32
  %i.u = ashr i32 %3, %i.t
  %i.v = load i8, ptr %i.o, align 2, !tbaa !89
  %i.w = zext nneg i8 %i.v to i32
  %i.x = ashr i32 %4, %i.w
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.y = phi i32 [ %i.u, %bb.e ], [ %3, %bb.d ]   ; 9 uses
  %i.z = phi i32 [ %i.x, %bb.e ], [ %4, %bb.d ]   ; 7 uses
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !91
  %i.ad = add nsw i32 %i.ac, -1                   ; 6 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9  ; 3 uses
  %i.ai = load i32, ptr %0, align 8, !tbaa !33
  switch i32 %i.ai, label %select.unfold [
    i32 0, label %bb.f
    i32 1, label %bb.h
    i32 2, label %bb.j
end_hunk_0
begin_hunk_1_@ff_h274_hash_verify:bb.a
  %.02636.us.us.i = phi i32 [ %i.cq, %._crit_edge.split.us.us.us.i ], [ 0, %.preheader.us.us.preheader.i ] ; 3 uses
  %.02735.us.us.i = phi i32 [ %.lcssa110, %._crit_edge.split.us.us.us.i ], [ 0, %.preheader.us.us.preheader.i ] ; 2 uses
  %.02933.us.us.i = phi ptr [ %i.cp, %._crit_edge.split.us.us.us.i ], [ %i.af, %.preheader.us.us.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02735.us.us.i, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.02636.us.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi112 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bn = xor <4 x i32> %broadcast.splat, %vec.ind ; 2 uses
  %i.bo = xor <4 x i32> %broadcast.splat, %step.add ; 2 uses
  %i.bp = and <4 x i32> %i.bn, splat (i32 255)
  %i.bq = and <4 x i32> %i.bo, splat (i32 255)
  %i.br = lshr <4 x i32> %i.bn, splat (i32 8)
  %i.bs = lshr <4 x i32> %i.bo, splat (i32 8)
  %i.bt = xor <4 x i32> %i.br, %i.bp
  %i.bu = xor <4 x i32> %i.bs, %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %.02933.us.us.i, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %wide.load = load <4 x i8>, ptr %i.bv, align 1, !tbaa !10
  %wide.load113 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !10
  %i.bx = zext <4 x i8> %wide.load to <4 x i32>
  %i.by = zext <4 x i8> %wide.load113 to <4 x i32>
  %i.bz = xor <4 x i32> %i.bt, %i.bx
  %i.ca = xor <4 x i32> %i.bu, %i.by
  %i.cb = add <4 x i32> %i.bz, %vec.phi           ; 2 uses
  %i.cc = add <4 x i32> %i.ca, %vec.phi112        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cc, %i.cb
  %i.ce = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %indvars.iv.i79.ph = phi i64 [ 0, %.preheader.us.us.i ], [ %n.vec, %middle.block ]
  %.131.us.us.us.i.ph = phi i32 [ %.02735.us.us.i, %.preheader.us.us.i ], [ %i.ce, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i80, %scalar.ph ], [ %indvars.iv.i79.ph, %scalar.ph.preheader ] ; 3 uses
  %.131.us.us.us.i = phi i32 [ %i.co, %scalar.ph ], [ %.131.us.us.us.i.ph, %scalar.ph.preheader ]
  %i.cf = trunc nuw nsw i64 %indvars.iv.i79 to i32
  %i.cg = xor i32 %.02636.us.us.i, %i.cf          ; 2 uses
  %i.ch = and i32 %i.cg, 255
  %i.ci = lshr i32 %i.cg, 8
  %i.cj = xor i32 %i.ci, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %.02933.us.us.i, i64 %indvars.iv.i79
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !10
  %i.cm = zext i8 %i.cl to i32
  %i.cn = xor i32 %i.cj, %i.cm
  %i.co = add i32 %i.cn, %.131.us.us.us.i         ; 2 uses
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next.i80, %wide.trip.count.i78
  br i1 %exitcond51.not.i, label %._crit_edge.split.us.us.us.i, label %scalar.ph, !llvm.loop !80

._crit_edge.split.us.us.us.i:                     ; preds = %scalar.ph, %middle.block
  %.lcssa110 = phi i32 [ %i.ce, %middle.block ], [ %i.co, %scalar.ph ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.02933.us.us.i, i64 %i.bk
  %i.cq = add nuw nsw i32 %.02636.us.us.i, 1      ; 2 uses
  %exitcond52.not.i = icmp eq i32 %i.cq, %i.z
  br i1 %exitcond52.not.i, label %verify_plane_checksum.exit, label %.preheader.us.us.i, !llvm.loop !81

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us43.i
  %.02636.us.i = phi i32 [ %i.eq, %._crit_edge.split.us43.i ], [ 0, %.preheader.us.i.preheader ] ; 4 uses
  %.02735.us.i = phi i32 [ %.lcssa, %._crit_edge.split.us43.i ], [ 0, %.preheader.us.i.preheader ] ; 2 uses
  %.02933.us.i = phi ptr [ %i.ep, %._crit_edge.split.us43.i ], [ %i.af, %.preheader.us.i.preheader ] ; 4 uses
  br i1 %i.bl, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %.032.us41.i = phi i32 [ %i.dy, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 4 uses
  %.131.us42.i = phi i32 [ %i.dx, %.preheader.us.i.new ], [ %.02735.us.i, %.preheader.us.i ]
  %niter = phi i32 [ %niter.next.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.cr = xor i32 %.032.us41.i, %.02636.us.i      ; 2 uses
  %i.cs = and i32 %i.cr, 255
  %i.ct = lshr i32 %i.cr, 8
  %i.cu = xor i32 %i.ct, %i.cs                    ; 2 uses
  %i.cv = shl i32 %.032.us41.i, %i.ad
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %.02933.us.i, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !10
  %i.cz = zext i8 %i.cy to i32
  %i.da = xor i32 %i.cu, %i.cz
  %i.db = add i32 %i.da, %.131.us42.i
  %i.dc = getelementptr i8, ptr %i.cx, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.de = zext i8 %i.dd to i32
  %i.df = xor i32 %i.cu, %i.de
  %i.dg = add i32 %i.db, %i.df
  %i.dh = or disjoint i32 %.032.us41.i, 1         ; 2 uses
  %i.di = xor i32 %i.dh, %.02636.us.i             ; 2 uses
  %i.dj = and i32 %i.di, 255
  %i.dk = lshr i32 %i.di, 8
  %i.dl = xor i32 %i.dk, %i.dj                    ; 2 uses
  %i.dm = shl i32 %i.dh, %i.ad
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %.02933.us.i, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i32
  %i.dr = xor i32 %i.dl, %i.dq
  %i.ds = add i32 %i.dr, %i.dg
  %i.dt = getelementptr i8, ptr %i.do, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !10
  %i.dv = zext i8 %i.du to i32
  %i.dw = xor i32 %i.dl, %i.dv
  %i.dx = add i32 %i.ds, %i.dw                    ; 3 uses
  %i.dy = add nuw nsw i32 %.032.us41.i, 2         ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us43.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !82

._crit_edge.split.us43.i.unr-lcssa:               ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.split.us43.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us43.i.unr-lcssa, %.preheader.us.i
  %.032.us41.i.epil.init = phi i32 [ 0, %.preheader.us.i ], [ %i.dy, %._crit_edge.split.us43.i.unr-lcssa ] ; 2 uses
  %.131.us42.i.epil.init = phi i32 [ %.02735.us.i, %.preheader.us.i ], [ %i.dx, %._crit_edge.split.us43.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod120)
  %i.dz = xor i32 %.032.us41.i.epil.init, %.02636.us.i ; 2 uses
  %i.ea = and i32 %i.dz, 255
  %i.eb = lshr i32 %i.dz, 8
  %i.ec = xor i32 %i.eb, %i.ea                    ; 2 uses
  %i.ed = shl i32 %.032.us41.i.epil.init, %i.ad
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %.02933.us.i, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !10
  %i.eh = zext i8 %i.eg to i32
  %i.ei = xor i32 %i.ec, %i.eh
  %i.ej = add i32 %i.ei, %.131.us42.i.epil.init
  %i.ek = getelementptr i8, ptr %i.ef, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !10
  %i.em = zext i8 %i.el to i32
  %i.en = xor i32 %i.ec, %i.em
  %i.eo = add i32 %i.ej, %i.en
  br label %._crit_edge.split.us43.i

._crit_edge.split.us43.i:                         ; preds = %._crit_edge.split.us43.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.dx, %._crit_edge.split.us43.i.unr-lcssa ], [ %i.eo, %.epil.preheader ] ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %.02933.us.i, i64 %i.bk
  %i.eq = add nuw nsw i32 %.02636.us.i, 1         ; 2 uses
  %exitcond49.not.i = icmp eq i32 %i.eq, %i.z
  br i1 %exitcond49.not.i, label %verify_plane_checksum.exit, label %.preheader.us.i, !llvm.loop !81

verify_plane_checksum.exit:                       ; preds = %._crit_edge.split.us43.i, %._crit_edge.split.us.us.us.i, %bb.j, %.preheader.lr.ph.i
  %.027.lcssa.i = phi i32 [ 0, %bb.j ], [ 0, %.preheader.lr.ph.i ], [ %.lcssa110, %._crit_edge.split.us.us.us.i ], [ %.lcssa, %._crit_edge.split.us43.i ]
  %.not.i75 = icmp eq i32 %.027.lcssa.i, %i.bh
  br i1 %.not.i75, label %select.unfold, label %.loopexit

select.unfold:                                    ; preds = %verify_plane_checksum.exit, %verify_plane_crc.exit, %verify_plane_md5.exit, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.er = load i8, ptr %i.l, align 8, !tbaa !87
  %i.es = zext i8 %i.er to i64
  %i.et = icmp samesign ult i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %bb.d, label %.loopexit, !llvm.loop !83

.loopexit:                                        ; preds = %select.unfold, %verify_plane_checksum.exit, %verify_plane_crc.exit, %verify_plane_md5.exit, %.preheader, %bb.c, %bb.b, %bb.a
  %.060 = phi i32 [ -22, %bb.a ], [ -22, %bb.b ], [ -22, %bb.c ], [ 0, %.preheader ], [ 0, %select.unfold ], [ -1094995529, %verify_plane_checksum.exit ], [ -1094995529, %verify_plane_crc.exit ], [ -1094995529, %verify_plane_md5.exit ]
  ret i32 %.060
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @av_md5_init(ptr noundef) local_unnamed_addr #2

declare void @av_md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_md5_final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p2 omnipotent char", !12, i64 0}
!14 = !{!"AVRational", !6, i64 0, !6, i64 4}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p2 _ZTS11AVBufferRef", !12, i64 0}
!17 = !{!"p2 _ZTS15AVFrameSideData", !12, i64 0}
!18 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !11, i64 16}
!21 = !{!"AVFrame", !5, i64 0, !5, i64 64, !13, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !14, i64 124, !15, i64 136, !15, i64 144, !14, i64 152, !6, i64 160, !11, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !16, i64 248, !6, i64 256, !17, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !18, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !11, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!22 = !{!21, !6, i64 116}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"p1 _ZTS15H274HashContext", !11, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 _ZTS5AVMD5", !11, i64 0}
!31 = !{!"H274HashContext", !6, i64 0, !30, i64 8}
!32 = !{!31, !30, i64 8}
!33 = !{!31, !6, i64 0}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !25, !26, !27}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25, !26, !27}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25, !27, !26}
!45 = distinct !{!45, !25, !27, !26}
!46 = distinct !{!46, !25, !27, !26}
!47 = distinct !{!47, !25, !27, !26}
!48 = distinct !{!48, !25, !27, !26}
!49 = distinct !{!49, !25, !27, !26}
!50 = distinct !{!50, !25, !27, !26}
!51 = distinct !{!51, !25, !27, !26}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !25, !27, !26}
!60 = distinct !{!60, !25, !27, !26}
!61 = distinct !{!61, !25, !27}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 12, !10, i64 24, i64 6, !10, i64 30, i64 3, !10, i64 33, i64 768, !10, i64 801, i64 768, !10, i64 1570, i64 9216, !10}
!65 = !{!"AVFilmGrainH274Params", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !5, i64 24, !5, i64 30, !5, i64 33, !5, i64 801, !5, i64 1570}
!66 = !{!65, !6, i64 0}
!67 = !{!"AVFilmGrainParams", !6, i64 0, !15, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !5, i64 56}
!68 = !{!67, !15, i64 8}
!69 = !{!21, !6, i64 104}
!70 = !{!21, !6, i64 108}
!71 = !{!"short", !5, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!65, !6, i64 8}
!74 = !{!57}
!75 = !{!58}
!76 = !{!"branch_weights", i32 4, i32 12}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25, !27, !26}
!80 = distinct !{!80, !25, !26, !27}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !25}
!84 = !{!"H274SEIPictureHash", !6, i64 0, !5, i64 4, !5, i64 52}
!85 = !{!84, !5, i64 52}
!86 = !{!"AVPixFmtDescriptor", !23, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !15, i64 16, !5, i64 24, !23, i64 104}
!87 = !{!86, !5, i64 8}
!88 = !{!86, !5, i64 9}
!89 = !{!86, !5, i64 10}
!90 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!91 = !{!90, !6, i64 4}
end_hunk_1
